uint64_t sub_1974509B0(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  *(&v147 + 1) = a2;
  *&v147 = a1;
  v146 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  v11 = *(v5[4] + 72);
  if (a5)
  {
    if (a5 == 1)
    {
      v13 = *(a4 + 72);
      v12 = *(a4 + 80);
    }

    else
    {
      v17 = *(v5[4] + 72);

      v13 = sub_19750A588();
      v12 = v18;
    }
  }

  else
  {
    v14 = *(v5[4] + 72);

    v15 = [a4 entityName];
    v13 = sub_1975217BC();
    v12 = v16;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_124;
  }

  v19 = sub_1973F4028(v13, v12);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_125:

    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    if (a5)
    {
      if (a5 == 1)
      {
        v117 = *(a4 + 72);
        v119 = *(a4 + 80);
      }

      else
      {
        v117 = sub_19750A588();
        v119 = v118;
      }
    }

    else
    {
      v121 = [a4 entityName];
      v117 = sub_1975217BC();
      v119 = v122;
    }

    MEMORY[0x19A8DFF80](v117, v119);

    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197523F30);
    BYTE8(v152) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v152 = v6;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v123 = [*(v6 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v124 = [v123 description];
    v125 = sub_1975217BC();
    v127 = v126;

    MEMORY[0x19A8DFF80](v125, v127);

    goto LABEL_152;
  }

  v148 = *(*(v11 + 56) + 8 * v19);

  v23 = *(v6 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  MEMORY[0x1EEE9AC00](v25, v26);

  os_unfair_lock_lock(v23 + 4);
  sub_19751E8A8(&v155);
  os_unfair_lock_unlock(v23 + 4);
  v27 = v155;

  if (!v27)
  {
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v152 = v155;
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197523F60);
    v155 = v147;
    LOBYTE(v156) = a3;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197523F90);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v120 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v120);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v155 = v6;
    sub_19752235C();
    goto LABEL_152;
  }

  if (a3 > 2u)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        swift_beginAccess();
        v35 = v27[7];
        if (*(v35 + 16))
        {
          v36 = v27[7];

          v37 = sub_197403C30(a4, a5);
          if (v38)
          {
            v39 = *(*(v35 + 56) + 8 * v37);

            if (*(v39 + 16))
            {
              v40 = sub_1973F4028(v147, *(&v147 + 1));
              if (v41)
              {
                sub_197404860(*(v39 + 56) + 32 * v40, &v155);

LABEL_110:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
                goto LABEL_111;
              }
            }
          }
        }

        else
        {
        }

        v155 = 0u;
        v156 = 0u;
        goto LABEL_110;
      }

LABEL_119:
      swift_beginAccess();
      v111 = v27[5];
      if (*(v111 + 16))
      {
        v112 = v27[5];

        v113 = sub_197403C30(a4, a5);
        if (v114)
        {
          v115 = *(*(v111 + 56) + 8 * v113);

          if (*(v115 + 16))
          {
            sub_1973F4028(v147, *(&v147 + 1));
            if (v116)
            {

              __break(1u);
LABEL_124:

              goto LABEL_125;
            }
          }
        }
      }

      *&v152 = 0;
      *(&v152 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v154 = v152;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *(&v152 + 1) = *(&v147 + 1);
      LOBYTE(v153) = 3;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v152 = a4;
      BYTE8(v152) = a5;
      sub_19752235C();
      goto LABEL_152;
    }

    swift_beginAccess();
    v59 = v27[6];
    if (*(v59 + 16))
    {
      v60 = v27[6];

      v61 = sub_197403C30(a4, a5);
      if (v62)
      {
        v63 = *(*(v59 + 56) + 8 * v61);

        if (*(v63 + 16))
        {
          v64 = sub_1973F4028(v147, *(&v147 + 1));
          if (v65)
          {
            a4 = *(*(v63 + 56) + 8 * v64);

            if (a4 >> 62)
            {
              v66 = sub_1975220EC();
              if (v66)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v66 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v66)
              {
LABEL_50:
                *&v152 = MEMORY[0x1E69E7CC0];
                sub_197411CB8(0, v66 & ~(v66 >> 63), 0);
                if ((v66 & 0x8000000000000000) == 0)
                {
                  v67 = 0;
                  v68 = v152;
                  do
                  {
                    if ((a4 & 0xC000000000000001) != 0)
                    {
                      v69 = MEMORY[0x19A8E0960](v67, a4);
                    }

                    else
                    {
                      v69 = *(a4 + 8 * v67 + 32);
                    }

                    *&v152 = v68;
                    v71 = *(v68 + 16);
                    v70 = *(v68 + 24);
                    if (v71 >= v70 >> 1)
                    {
                      v73 = v69;
                      sub_197411CB8((v70 > 1), v71 + 1, 1);
                      v69 = v73;
                      v68 = v152;
                    }

                    ++v67;
                    *(v68 + 16) = v71 + 1;
                    v72 = v68 + 16 * v71;
                    *(v72 + 32) = v69;
                    *(v72 + 40) = 0;
                  }

                  while (v66 != v67);

                  return v68;
                }

                __break(1u);
                goto LABEL_119;
              }
            }

            return MEMORY[0x1E69E7CC0];
          }
        }
      }
    }

    *&v152 = 0;
    *(&v152 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v154 = v152;
    MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
    *(&v152 + 1) = *(&v147 + 1);
    LOBYTE(v153) = 4;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v152 = a4;
    BYTE8(v152) = a5;
    sub_19752235C();
    goto LABEL_152;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      swift_beginAccess();
      v28 = v27[4];
      if (*(v28 + 16))
      {
        v29 = v27[4];

        v30 = sub_197403C30(a4, a5);
        if (v31)
        {
          v32 = *(*(v28 + 56) + 8 * v30);

          if (*(v32 + 16))
          {
            v33 = sub_1973F4028(v147, *(&v147 + 1));
            if (v34)
            {
              sub_197404860(*(v32 + 56) + 32 * v33, &v155);

LABEL_89:
              sub_197413B20(&v155, &v152);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
              if (swift_dynamicCast())
              {
                sub_1973FE5EC(&v155, &qword_1EAF2AF20, &unk_19752F320);

                goto LABEL_91;
              }

              sub_197413B20(&v155, &v152);
              if (!*(&v153 + 1))
              {
                goto LABEL_153;
              }

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_154;
              }

              *&v152 = v10;
              v105 = v10;
              if (swift_conformsToProtocol2())
              {
                v105 = v10;
                if (v10)
                {
                  v105 = v10;
                  do
                  {
                    sub_1973F732C(v105, &v152);
                    v105 = v152;
                    if (swift_conformsToProtocol2())
                    {
                      v106 = v105 == 0;
                    }

                    else
                    {
                      v106 = 1;
                    }
                  }

                  while (!v106);
                }
              }

              v107 = swift_conformsToProtocol2();
              if (v107)
              {
                v108 = v105 == 0;
              }

              else
              {
                v108 = 1;
              }

              if (!v108)
              {
                v151 = 0;
                sub_19746C600(v105, v149, v150, &v151, v10, v105, v107);
                sub_19744D0E0(v149, v150);

                swift_beginAccess();
                v109 = v151;
                if (v151)
                {
                  sub_1973FE5EC(&v155, &qword_1EAF2AF20, &unk_19752F320);
                  return v109;
                }

                v152 = v155;
                v153 = v156;
LABEL_111:
                swift_dynamicCast();
                return v157;
              }

              *&v152 = 0;
              *(&v152 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197524210);
              sub_197413B20(&v155, &v152);
              v144 = sub_1975217CC();
              MEMORY[0x19A8DFF80](v144);

              MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197524230);
              MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
              while (1)
              {
LABEL_152:
                sub_1975223EC();
                __break(1u);
LABEL_153:
                sub_1973FE5EC(&v152, &qword_1EAF2AF20, &unk_19752F320);
LABEL_154:
                *&v152 = 0;
                *(&v152 + 1) = 0xE000000000000000;
                sub_1975221EC();

                sub_197413B20(&v155, &v152);
                v143 = sub_1975217CC();
                MEMORY[0x19A8DFF80](v143);

                MEMORY[0x19A8DFF80](0xD000000000000012, 0x80000001975241F0);
                MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
              }
            }
          }
        }
      }

      v155 = 0u;
      v156 = 0u;
      goto LABEL_89;
    }

    swift_beginAccess();
    v74 = v27[3];
    if (*(v74 + 16))
    {
      v75 = v27[3];

      v76 = sub_197403C30(a4, a5);
      if (v77)
      {
        v78 = *(*(v74 + 56) + 8 * v76);

        if (*(v78 + 16))
        {
          v79 = sub_1973F4028(v147, *(&v147 + 1));
          if (v80)
          {
            v81 = *(*(v78 + 56) + 8 * v79);

            v82 = sub_1975215EC();
            swift_beginAccess();
            v83 = v148[12];
            if (*(v83 + 16))
            {
              v84 = a5;
              v85 = sub_1973F4028(v147, *(&v147 + 1));
              if (v86)
              {
                v87 = *(*(v83 + 56) + 8 * v85);
                swift_endAccess();
                type metadata accessor for Schema.CompositeAttribute();
                v88 = swift_dynamicCastClass();
                if (v88)
                {
                  v89 = v88;

                  v90 = sub_19746C608(v82, v89);
                  *&v152 = v10;
                  v91 = v10;
                  if (swift_conformsToProtocol2())
                  {
                    v91 = v10;
                    if (v10)
                    {
                      v91 = v10;
                      do
                      {
                        sub_1973F732C(v91, &v152);
                        v91 = v152;
                        if (swift_conformsToProtocol2())
                        {
                          v92 = v91 == 0;
                        }

                        else
                        {
                          v92 = 1;
                        }
                      }

                      while (!v92);
                    }
                  }

                  v93 = dynamic_cast_existential_2_conditional(v91);
                  if (v93)
                  {
                    v95 = *(*(v93 - 8) + 64);
                    v96 = MEMORY[0x1EEE9AC00](v93, v94);
                    sub_19746CA90(v96, v90, v89);
                    if (swift_dynamicCast())
                    {

                      return v152;
                    }

                    *&v152 = 0;
                    *(&v152 + 1) = 0xE000000000000000;
                    sub_1975221EC();

                    *&v152 = 0xD000000000000020;
                    *(&v152 + 1) = 0x80000001975241A0;
                    v136 = sub_197522B8C();
                    MEMORY[0x19A8DFF80](v136);

                    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
                    v137 = [v90 description];
                    v138 = sub_1975217BC();
                    v140 = v139;

                    MEMORY[0x19A8DFF80](v138, v140);
                  }

                  goto LABEL_152;
                }

LABEL_144:
                *&v152 = 0;
                *(&v152 + 1) = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
                BYTE8(v154) = v84;
                sub_19752235C();
                MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
                MEMORY[0x19A8DFF80](v147, *(&v147 + 1));
                MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
                *&v154 = v148;
                type metadata accessor for Schema.Entity();
                sub_19752235C();
                goto LABEL_152;
              }
            }

            else
            {
              v84 = a5;
            }

            swift_endAccess();
            goto LABEL_144;
          }
        }
      }
    }

    *&v152 = 0;
    *(&v152 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x80000001975240F0);
    if (a5)
    {
      if (a5 == 1)
      {
        v128 = *(a4 + 72);
        v130 = *(a4 + 80);
      }

      else
      {
        v128 = sub_19750A588();
        v130 = v129;
      }
    }

    else
    {
      v141 = [a4 entityName];
      v128 = sub_1975217BC();
      v130 = v142;
    }

    MEMORY[0x19A8DFF80](v128, v130);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v147, *(&v147 + 1));
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    *&v154 = a4;
    BYTE8(v154) = a5;
    sub_19752235C();
    goto LABEL_152;
  }

  v145 = a5;
  swift_beginAccess();
  v42 = v148[12];
  if (!*(v42 + 16) || (v43 = sub_1973F4028(v147, *(&v147 + 1)), (v44 & 1) == 0))
  {
    swift_endAccess();
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    MEMORY[0x19A8DFF80](v147, *(&v147 + 1));
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    BYTE8(v152) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197524010);
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v152 = v148;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_152;
  }

  v45 = *(*(v42 + 56) + 8 * v43);
  swift_endAccess();
  *&v155 = v10;
  v46 = v10;
  if (swift_conformsToProtocol2())
  {
    v46 = v10;
    if (v10)
    {
      v46 = v10;
      do
      {
        sub_1973F732C(v46, &v155);
        v46 = v155;
        if (swift_conformsToProtocol2())
        {
          v47 = v46 == 0;
        }

        else
        {
          v47 = 1;
        }
      }

      while (!v47);
    }
  }

  if ((*(v45 + 120) & 0x40) != 0)
  {
    swift_beginAccess();
    v98 = v27[2];
    v99 = *(v98 + 16);

    if (v99)
    {

      v100 = sub_197403C30(a4, v145);
      if (v101)
      {
        v102 = *(*(v98 + 56) + 8 * v100);

        if (*(v102 + 16))
        {
          v103 = sub_1973F4028(v147, *(&v147 + 1));
          if (v104)
          {
            sub_197404860(*(v102 + 56) + 32 * v103, &v155);

            sub_1974028B8(&v155, &v152);
            goto LABEL_111;
          }
        }
      }
    }

    goto LABEL_141;
  }

  v48 = swift_conformsToProtocol2();
  if (!v48 || !v46)
  {
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;

    sub_1975221EC();
    v152 = v155;
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197524050);
    swift_beginAccess();
    v132 = v148[2];
    v131 = v148[3];

    MEMORY[0x19A8DFF80](v132, v131);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v147, *(&v147 + 1));
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
    goto LABEL_152;
  }

  v49 = v48;
  swift_beginAccess();
  v50 = v27[2];
  v51 = *(v50 + 16);

  if (!v51)
  {
    goto LABEL_141;
  }

  v52 = v49;

  v53 = sub_197403C30(a4, v145);
  if ((v54 & 1) == 0 || (v55 = *(*(v50 + 56) + 8 * v53), , , !*(v55 + 16)) || (v56 = sub_1973F4028(v147, *(&v147 + 1)), (v57 & 1) == 0))
  {

LABEL_141:
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v152 = v155;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524080);
    swift_beginAccess();
    v134 = v148[2];
    v133 = v148[3];

    MEMORY[0x19A8DFF80](v134, v133);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v147, *(&v147 + 1));
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975240A0);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v135 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v135);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_152;
  }

  sub_197404860(*(v55 + 56) + 32 * v56, &v155);

  sub_197404860(&v155, &v152);
  if (!swift_dynamicCast())
  {
    sub_197404860(&v155, &v152);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v155);

LABEL_91:

      return v149;
    }

    *&v152 = 0;
    *(&v152 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x80000001975240C0);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](544370464, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_152;
  }

  v151 = 0;
  sub_19746CD08(v46, v149, v150, &v151, v10, v46, v52);
  sub_19744D0E0(v149, v150);

  swift_beginAccess();
  v58 = v151;
  if (!v151)
  {
    sub_1974028B8(&v155, &v152);
    goto LABEL_111;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_7(&v155);
  return v58;
}

uint64_t sub_197452724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v6 = *a2;
  LOBYTE(v7) = v2;
  v6 = sub_1974309B4(&v6);
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  swift_dynamicCast();
  return v5;
}

uint64_t sub_19745279C()
{
  type metadata accessor for SwiftDataGlobals();
  v0 = swift_allocObject();
  result = sub_1974527FC();
  qword_1ED7CE5B8 = v0;
  return result;
}

uint64_t sub_1974527FC()
{
  *(v0 + 16) = 0;
  v1 = objc_opt_self();
  v2 = [v1 processInfo];
  v3 = [v2 processName];

  v4 = sub_1975217BC();
  v6 = v5;

  if (v4 == 0x777777617244 && v6 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_19752282C();
  }

  *(v0 + 16) = v8 & 1;
  v9 = [v1 processInfo];
  v10 = [v9 processName];

  v11 = sub_1975217BC();
  v13 = v12;

  if (v11 == 0x6473706974 && v13 == 0xE500000000000000)
  {

    v14 = 1;
  }

  else
  {
    v14 = sub_19752282C();
  }

  *(v0 + 17) = v14 & 1;
  return v0;
}

uint64_t sub_197452990()
{
  result = sub_19752178C();
  qword_1ED7C8628 = result;
  return result;
}

uint64_t sub_1974529C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_197452A0C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2B908, &qword_19752FBE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197452A84(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  sub_197434244(a2, a2, a3, a3, v26);
  sub_1973FFCAC(v26, v23);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if (!swift_dynamicCast())
  {
    v15 = sub_1973FE074(a2, a3);
    v16 = *(v15 + 16);
    *(v15 + 16) = a1;

    sub_197434244(a2, a2, a3, a3, v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1Tm_2(v23, v24);
    v19 = sub_1973FE71C(v17, v18);
    v20 = *(v19 + 16);
    *(v19 + 16) = a1;

    sub_1974CB414(a2, v4, a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1Tm_3(v26);
    v14 = v23;
    return __swift_destroy_boxed_opaque_existential_1Tm_3(v14);
  }

  v8 = sub_197512E44();
  v9 = *(v8 + 16);
  *(v8 + 16) = a1;

  v10 = *(v22 + 40);

  v11 = sub_1975214CC();
  if (v11)
  {
    v12 = v11;
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      sub_1974CB1F8(v12, v3, v10, a2, v12, a3, v13);

      v14 = v26;
      return __swift_destroy_boxed_opaque_existential_1Tm_3(v14);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm_3(v26);
}

uint64_t sub_197452CB8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_19752180C();
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_19752180C();
  if (*(v0 + 24))
  {
    v5 = *(v0 + 16);
    sub_197522A7C();
    sub_19752180C();
  }

  else
  {
    sub_197522A7C();
  }

  v6 = *(v0 + 33);
  sub_197522A7C();
  *(v0 + 32);
  sub_19752180C();
}

void sub_197452DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PersistentModel.persistentModelID.getter(a3, a4, &v23);
  v5 = v23;
  v6 = v24;
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v23);
  v8 = v23;
  v9 = v24;
  if (v6)
  {
    if (v6 != 1)
    {
      sub_1974028C8(v23, v24);
      v21 = v5;
LABEL_18:
      v22 = 2;
      goto LABEL_19;
    }

    v10 = v5[3];
    if (!v10)
    {
      sub_1974028C8(v23, v24);
      v21 = v5;
      v22 = 1;
      goto LABEL_19;
    }

    v11 = v5[2];
    v12 = v5[3];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = [v5 storeIdentifier];
    v11 = sub_1975217BC();
    v10 = v18;

    if (!v9)
    {
LABEL_5:
      v13 = [v8 storeIdentifier];
      v14 = sub_1975217BC();
      v16 = v15;

      if (v11 != v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v9 != 1)
  {
    sub_1974028C8(v5, v6);

    v21 = v8;
    goto LABEL_18;
  }

  v16 = v8[3];
  if (v16)
  {
    v19 = v8[2];
    v20 = v8[3];

    if (v11 != v19)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (v10 == v16)
    {
LABEL_13:
      sub_1974028C8(v5, v6);
      sub_1974028C8(v8, v9);

      return;
    }

LABEL_12:
    if ((sub_19752282C() & 1) == 0)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197528420);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x8000000197528440);
      sub_19752235C();
      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      sub_1975223EC();
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

  sub_1974028C8(v5, v6);

  v21 = v8;
  v22 = 1;
LABEL_19:

  sub_1974028C8(v21, v22);
}

uint64_t sub_1974530DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    result = swift_beginAccess();
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *v14;

      v16 = sub_197521FFC();
      v17 = swift_conformsToProtocol2();
      if (v17)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        sub_1975221EC();

        v19 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v19);

        result = sub_1975223EC();
        __break(1u);
      }

      else
      {
        sub_1974CA0EC(v16, a2, v6, a1, a3, a4, v16, a5, a6, v17);
      }
    }
  }

  return result;
}

uint64_t sub_197453290(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = *a1;
  if (*(v4 + 48) == 1)
  {
    v10 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    sub_197446EF8(v10, a4, v24);
    if (!v25 || (v11 = __swift_project_boxed_opaque_existential_1Tm_5(v24, v25), MEMORY[0x1EEE9AC00](v11, v12), v21 = *(v7 + 232), v22 = *(v7 + 240), sub_19752193C(), __swift_destroy_boxed_opaque_existential_1Tm_7(v24), !v23))
    {
      v18 = v4[2];

      v19 = sub_19743055C(0, v10, a4);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
      v24[0] = v19;

      sub_1973FCF28(v24, a1);
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
    if (*(v4 + 48) == 1)
    {
      sub_197453618();
    }

    v13 = v4[2];
    v25 = v10;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(v24);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1Tm_1, a2, v10);
  }

  else
  {
    v15 = v4[2];
    v25 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    v16 = v25;
    v17 = __swift_allocate_boxed_opaque_existential_1Tm_1(v24);
    (*(*(v16 - 8) + 16))(v17, a2, v16);
  }

  sub_1973FCF28(v24, a1);
LABEL_10:
}

uint64_t sub_19745352C(uint64_t *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  return sub_197453554(a1, v1[2], v1[3], v1[4]) & 1;
}

uint64_t sub_197453554(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  PersistentModel.persistentModelID.getter(a4, AssociatedConformanceWitness, &v13);
  v7 = v13;
  v8 = v14;
  if (v14)
  {
    if (v14 == 1)
    {
      v9 = *(v13 + 33);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v10 = v13;
    v11 = [v13 isTemporaryID];
    v8 = 0;
    v9 = v11;
    v7 = v10;
  }

  sub_1974028C8(v7, v8);
  return v9;
}

uint64_t sub_197453618()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(sub_197512E44() + 16);

  v122 = v3;
  if (!v3)
  {
    while (1)
    {
LABEL_148:
      sub_1975223EC();
      __break(1u);
    }
  }

  v4 = *(v2 + 232);
  v5 = *(v2 + 240);
  type metadata accessor for Schema.Entity();
  v6 = sub_1973FDF38(v4, v5);
  v7 = v0[3];
  v8 = *(v1 + 32);
  sub_1974ADEAC(v1[3], *(v1 + 32));
  v121 = v1;
  if (v8 == 255)
  {
    if (qword_1EAF2AC88 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_138;
  }

  sub_1974A1014(v7, v8);
LABEL_8:
  swift_beginAccess();
  v119 = v6;
  v18 = *(v6 + 88);
  if ((v18 & 0xC000000000000001) != 0)
  {
    if (v18 < 0)
    {
      v19 = *(v6 + 88);
    }

    v20 = *(v6 + 88);

    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_19751E7F8(&qword_1ED7C91A8, type metadata accessor for Schema.Relationship);
    sub_197521C1C();
    v18 = v137;
    v21 = v138;
    v22 = v139;
    v23 = v140;
    v24 = v141;
  }

  else
  {
    v25 = -1 << *(v18 + 32);
    v21 = v18 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v18 + 56);
    v28 = *(v6 + 88);

    v23 = 0;
  }

  v6 = (v22 + 64) >> 6;
  v120 = v6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v18 < 0)
        {
          v33 = sub_19752212C();
          if (!v33)
          {
            goto LABEL_129;
          }

          *&v125 = v33;
          type metadata accessor for Schema.Relationship();
          swift_dynamicCast();
          v32 = v131;
          v31 = v23;
          v123 = v24;
          if (!v131)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v29 = v23;
          v30 = v24;
          v31 = v23;
          if (!v24)
          {
            while (1)
            {
              v31 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              if (v31 >= v6)
              {
                goto LABEL_129;
              }

              v30 = *(v21 + 8 * v31);
              ++v29;
              if (v30)
              {
                goto LABEL_22;
              }
            }

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
LABEL_137:
            __break(1u);
LABEL_138:
            swift_once();
LABEL_5:
            v9 = sub_19752157C();
            __swift_project_value_buffer(v9, qword_1EAF33DD0);

            v10 = sub_19752155C();
            v11 = sub_197521DDC();

            if (os_log_type_enabled(v10, v11))
            {
              v12 = swift_slowAlloc();
              v13 = swift_slowAlloc();
              *&v131 = v13;
              *v12 = 136315138;
              *&v125 = v121;

              v14 = sub_1975217CC();
              v16 = sub_197462310(v14, v15, &v131);

              *(v12 + 4) = v16;
              _os_log_impl(&dword_1973F2000, v10, v11, "This backing data has no persistent identifier but is attempting to flip relationships? %s", v12, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm_7(v13);
              v17 = v13;
              v1 = v121;
              MEMORY[0x19A8E1B50](v17, -1, -1);
              MEMORY[0x19A8E1B50](v12, -1, -1);
            }

            goto LABEL_8;
          }

LABEL_22:
          v123 = (v30 - 1) & v30;
          v32 = *(*(v18 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));

          if (!v32)
          {
            goto LABEL_129;
          }
        }

        swift_beginAccess();
        v124 = v32;
        v34 = *(v32 + 48);
        if (!v34)
        {
          *&v131 = 0;
          *(&v131 + 1) = 0xE000000000000000;
          sub_1975221EC();
          swift_beginAccess();
          v112 = *(v119 + 16);
          v111 = *(v119 + 24);

          *&v136[0] = v112;
          *(&v136[0] + 1) = v111;
          MEMORY[0x19A8DFF80](46, 0xE100000000000000);
          swift_beginAccess();
          v113 = *(v32 + 16);
          v114 = *(v124 + 24);

          MEMORY[0x19A8DFF80](v113, v114);

          MEMORY[0x19A8DFF80](0xD000000000000019, 0x800000019752B1D0);
          goto LABEL_148;
        }

        v35 = v1[2];
        v36 = *(v35 + 24);
        v37 = *(v36 + 16);

        if (v37 && (v38 = sub_1973F7814(v34), (v39 & 1) != 0))
        {
          v40 = *(*(v36 + 56) + 8 * v38);
          swift_beginAccess();
          if ((v40 & 0x8000000000000000) != 0)
          {
            goto LABEL_131;
          }

          v41 = *(v35 + 32);
          if (v40 >= *(v41 + 16))
          {
            goto LABEL_133;
          }

          sub_197413B20(v41 + 32 * v40 + 32, &v131);
        }

        else
        {
          v131 = 0u;
          v132 = 0u;
        }

        if (!*(&v132 + 1))
        {

          v54 = &qword_1EAF2AF20;
          v55 = &unk_19752F320;
          goto LABEL_49;
        }

        sub_1974028B8(&v131, v136);
        sub_197404860(v136, &v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
        if (!swift_dynamicCast())
        {
          break;
        }

        v42 = v21;
        v43 = v18;
        v44 = v1;
        v1 = v125;
        v6 = BYTE8(v125);
        v45 = v126;
        v46 = v44[2];
        *(&v132 + 1) = swift_getObjectType();
        *&v131 = v45;
        v47 = *(v46 + 24);
        v48 = *(v47 + 16);

        swift_unknownObjectRetain();
        if (!v48 || (v49 = sub_1973F7814(v34), (v50 & 1) == 0))
        {
          *&v125 = 0;
          *(&v125 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527BD0);
          v130[0] = v34;
          sub_19752202C();
          sub_19752235C();
          goto LABEL_148;
        }

        v51 = *(*(v47 + 56) + 8 * v49);
        swift_beginAccess();
        v52 = *(v46 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v46 + 32) = v52;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v52 = sub_19751C104(v52);
          *(v46 + 32) = v52;
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_132;
          }
        }

        if (v51 >= v52[2])
        {
          goto LABEL_134;
        }

        sub_1973F7958(&v131, &v52[4 * v51 + 4]);
        *(v46 + 32) = v52;
        swift_endAccess();

        sub_1974028C8(v1, v6);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm_7(v136);
        sub_1973FE5EC(&v131, &qword_1EAF2AF20, &unk_19752F320);

        v23 = v31;
        v24 = v123;
        v6 = v120;
        v1 = v121;
        v18 = v43;
        v21 = v42;
      }

      sub_197404860(v136, v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
      if (swift_dynamicCast())
      {
        break;
      }

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v125 = 0u;
      sub_1973FE5EC(&v125, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_197404860(v136, v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2C4E0, &qword_197534B50);
      if (swift_dynamicCast())
      {
        v70 = v34;
        sub_19743099C(&v125, &v131);
        v71 = v1[3];
        v72 = *(v1 + 32);
        sub_1974ADEAC(v71, *(v1 + 32));
        if (v72 == 255)
        {
          *&v125 = 0;
          *(&v125 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000045, 0x800000019752B2F0);
          v130[0] = v1;
          sub_1975227FC();
          goto LABEL_148;
        }

        if (*(v124 + 168) == 1)
        {
          v73 = __swift_project_boxed_opaque_existential_1Tm_5(&v131, *(&v132 + 1));
          *(&v126 + 1) = &type metadata for PersistentIdentifier;
          sub_197428988(*v73, v73[1], *(v73 + 16), v71, v72, &v125);
          sub_1974A1014(v71, v72);
        }

        else
        {
          v74 = __swift_project_boxed_opaque_existential_1Tm_5(&v131, *(&v132 + 1));
          *(&v126 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
          v75 = sub_197450578(*v74, v74[1], *(v74 + 16), v71, v72);
          sub_1974A1014(v71, v72);
          *&v125 = v75;
        }

        __swift_destroy_boxed_opaque_existential_1Tm_7(v136);
        sub_1974028B8(&v125, v136);
        __swift_destroy_boxed_opaque_existential_1Tm_7(&v131);
        v34 = v70;
      }

      else
      {
        *&v127 = 0;
        v125 = 0u;
        v126 = 0u;
        sub_1973FE5EC(&v125, &qword_1EAF2C4E8, &qword_197534B58);
      }

      sub_197404860(v136, &v131);
      v118 = v18;
      if (swift_dynamicCast())
      {
        v76 = v34;
        v77 = v125;
        v78 = BYTE8(v125);
        swift_beginAccess();
        v79 = *(v124 + 64);
        *&v131 = v79;
        if (swift_conformsToProtocol2() && v79)
        {
          do
          {
            sub_1973F732C(v79, &v131);
            v79 = v131;
            if (swift_conformsToProtocol2())
            {
              v80 = v79 == 0;
            }

            else
            {
              v80 = 1;
            }
          }

          while (!v80);
        }

        if (swift_conformsToProtocol2())
        {
          v81 = v79 == 0;
        }

        else
        {
          v81 = 1;
        }

        if (v81)
        {
          *&v131 = 0;
          *(&v131 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000013, 0x800000019752B2D0);
          *&v125 = v124;
          type metadata accessor for Schema.Relationship();
          sub_19752235C();
          goto LABEL_148;
        }

        v82 = sub_197515578(v79, v77, v78, v124);
        v83 = v1[2];
        *(&v132 + 1) = swift_getObjectType();
        *&v131 = v82;

        swift_unknownObjectRetain();
        sub_1973FCF28(&v131, v76);

        sub_1974028C8(v77, v78);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm_7(v136);
        v23 = v31;
        v24 = v123;
        v18 = v118;
      }

      else
      {
        v84 = v34;
        sub_197404860(v136, &v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        if (!swift_dynamicCast())
        {
          *&v131 = 0;
          *(&v131 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x800000019752B210);
          sub_19752235C();
          goto LABEL_148;
        }

        v85 = v125;
        swift_beginAccess();
        v86 = *(v124 + 64);
        *&v131 = v86;
        if (swift_conformsToProtocol2() && v86)
        {
          do
          {
            sub_1973F732C(v86, &v131);
            v86 = v131;
            if (swift_conformsToProtocol2())
            {
              v87 = v86 == 0;
            }

            else
            {
              v87 = 1;
            }
          }

          while (!v87);
        }

        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
        v89 = *v86;
        if (*v86 - 2048 >= 0xFFFFFFFFFFFFF801)
        {
          v90 = sub_19752147C();
          v91 = v90 < 0x800 && v90 == v89;
          v92 = v91;
          v93 = v89 - 515;
          v89 = *v86;
          if (v93 >= 2 && !v92)
          {
            if (v89 - 512 >= 3)
            {
              v96 = 0;
              goto LABEL_95;
            }

LABEL_92:
            v95 = 8;
            if (v89 - 512 < 3)
            {
              v95 = 1;
            }

            goto LABEL_94;
          }
        }

        if (v89 <= 0x7FF)
        {
          goto LABEL_92;
        }

        v95 = 8;
LABEL_94:
        v96 = v86[v95];
LABEL_95:
        v97 = *v88;
        if (*v88 - 2048 >= 0xFFFFFFFFFFFFF801 && ((v98 = sub_19752147C(), v98 < 0x800) ? (v99 = v98 == v97) : (v99 = 0), !v99 ? (v100 = 0) : (v100 = 1), (v101 = v97 - 515, v97 = *v88, v101 >= 2) ? (v102 = v100 == 0) : (v102 = 0), v102))
        {
          if (v97 - 512 >= 3)
          {
            v18 = v118;
            v105 = v124;
            if (v96)
            {
              goto LABEL_148;
            }

            goto LABEL_119;
          }
        }

        else if (v97 > 0x7FF)
        {
          v103 = 8;
          goto LABEL_111;
        }

        v103 = 8;
        if (v97 - 512 < 3)
        {
          v103 = 1;
        }

LABEL_111:
        v104 = v88[v103];
        v105 = v124;
        if (v96)
        {
          v18 = v118;
          if (!v104 || v96 != v104)
          {
            goto LABEL_148;
          }
        }

        else
        {
          v18 = v118;
          if (v104)
          {
            goto LABEL_148;
          }
        }

LABEL_119:
        sub_1975214DC();
        if (v106 < 0)
        {
          goto LABEL_136;
        }

        if (!v106)
        {
          *&v131 = 0;
          *(&v131 + 1) = 0xE000000000000000;
          sub_1975221EC();

          *&v131 = 0xD00000000000001BLL;
          *(&v131 + 1) = 0x800000019752B270;
          v116 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v116);

          MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
          *&v125 = *(v105 + 48);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDB8, &unk_197534B60);
          v117 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v117);

          goto LABEL_148;
        }

        v107 = sub_1975214DC();
        if (v108 < 1)
        {
          goto LABEL_137;
        }

        v109 = *v107;
        if (!swift_conformsToProtocol2() || !v109)
        {
          *&v131 = 0;
          *(&v131 + 1) = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000015, 0x800000019752B290);
          v115 = sub_197522B8C();
          MEMORY[0x19A8DFF80](v115);

          MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x800000019752B2B0);
          *&v125 = v105;
          type metadata accessor for Schema.Relationship();
          sub_19752235C();
          goto LABEL_148;
        }

        sub_197454944(v109, v105, v122, v85, v1, v84, v109);

        __swift_destroy_boxed_opaque_existential_1Tm_7(v136);
        v23 = v31;
        v24 = v123;
      }
    }

    v133 = v127;
    v134 = v128;
    v135 = v129;
    v131 = v125;
    v132 = v126;
    v56 = v1[2];
    v57 = v127;
    v58 = v34;
    v59 = __swift_project_boxed_opaque_existential_1Tm_5(&v131 + 1, v127);
    *(&v126 + 1) = v57;
    boxed_opaque_existential_1Tm_1 = __swift_allocate_boxed_opaque_existential_1Tm_1(&v125);
    v61 = v59;
    v62 = v58;
    (*(*(v57 - 8) + 16))(boxed_opaque_existential_1Tm_1, v61, v57);
    v63 = *(v56 + 24);
    v64 = *(v63 + 16);

    if (!v64 || (v65 = sub_1973F7814(v62), (v66 & 1) == 0))
    {
      v130[0] = 0;
      v130[1] = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527BD0);
      sub_19752202C();
      sub_19752235C();
      goto LABEL_148;
    }

    v67 = *(*(v63 + 56) + 8 * v65);
    swift_beginAccess();
    v68 = *(v56 + 32);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 32) = v68;
    if (v69)
    {
      if ((v67 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_47;
    }

    v68 = sub_19751C104(v68);
    *(v56 + 32) = v68;
    if ((v67 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_47:
    if (v67 >= v68[2])
    {
      goto LABEL_135;
    }

    sub_1973F7958(&v125, &v68[4 * v67 + 4]);
    *(v56 + 32) = v68;
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm_7(v136);
    sub_1973FE5EC(&v125, &qword_1EAF2AF20, &unk_19752F320);

    v54 = &qword_1EAF2B600;
    v55 = &qword_19752EA58;
LABEL_49:
    sub_1973FE5EC(&v131, v54, v55);
    v23 = v31;
    v24 = v123;
  }

  __break(1u);
LABEL_129:
  sub_1973FF47C();

  *(v1 + 48) = 0;
  return result;
}

uint64_t sub_197454944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v12 = *a5;
  v13 = sub_1975215CC();
  v27 = v13;
  v14 = *(a4 + 16);
  if (v14)
  {
    v23 = v9;
    v15 = (a4 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v15 += 16;
      v24 = v16;
      v25 = v17;
      sub_1974028EC(v16, v17);
      v18 = *(v12 + 232);
      v19 = *(v12 + 240);
      v24 = sub_197454AB4(a7, &v24, a2);
      sub_197521AAC();
      sub_197521A7C();
      sub_1974028C8(v16, v17);
      --v14;
    }

    while (v14);
    v20 = v27;
    v9 = v23;
  }

  else
  {
    v20 = v13;
  }

  v21 = v9[2];
  v26 = sub_197521AAC();
  v24 = v20;

  sub_1973FCF28(&v24, a6);
}

uint64_t sub_197454AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a2 + 8))
  {
    if (v5 == 1 && (v4[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![v4 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v6 = sub_19752157C();
  __swift_project_value_buffer(v6, qword_1EAF33DD0);
  sub_1974028EC(v4, v5);

  v7 = sub_19752155C();
  v8 = sub_197521DDC();
  sub_1974028C8(v4, v5);

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315394;
    sub_1974028EC(v4, v5);
    v11 = sub_1975217CC();
    v13 = sub_197462310(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_beginAccess();
    v14 = *(a3 + 16);
    v15 = *(a3 + 24);

    v16 = sub_197462310(v14, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1973F2000, v7, v8, "%%@ is attempting to flip a captured a temporary persistentIdentifier for %s on %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v10, -1, -1);
    MEMORY[0x19A8E1B50](v9, -1, -1);
  }

LABEL_11:
  v20 = v4;
  LOBYTE(v21) = v5;
  v20 = sub_1974309B4(&v20);
  v21 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  swift_dynamicCast();
  return v19;
}

uint64_t sub_197454D38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if (*(a1 + 112))
  {
    result = swift_beginAccess();
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *v14;

      v16 = sub_197521FFC();
      v17 = swift_conformsToProtocol2();
      if (v17)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        sub_1975221EC();

        v19 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v19);

        result = sub_1975223EC();
        __break(1u);
      }

      else
      {
        sub_1974C877C(v16, a2, v6, a1, a3, a4, v16, a5, a6, v17);
      }
    }
  }

  return result;
}

void sub_197454EEC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (*(v3 + 16))
  {
    v8 = *(v3 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      __break(1u);
      goto LABEL_24;
    }

    v8 = Strong;
  }

  v10 = *(v8 + 16);

  v11 = *(v10 + 72);

  v12 = sub_1973F7AAC();
  if (*(v11 + 16))
  {
    sub_1973F4028(v12, v13);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      return;
    }

    if (PersistentModel.modelContext.getter(a2, a3))
    {

      v16 = PersistentModel.modelContext.getter(a2, a3);
      if (!v16 || (v17 = v16, , v17 != v4))
      {
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000049, 0x80000001975264A0);
        PersistentModel.persistentModelID.getter(a2, a3, &v34);
        v18 = v34;
        v19 = v35;
        sub_19752235C();
        sub_1974028C8(v18, v19);
        MEMORY[0x19A8DFF80](0xD000000000000015, 0x80000001975264F0);
        v20 = PersistentModel.modelContext.getter(a2, a3);
        if (v20)
        {
          v34 = v20;
          type metadata accessor for ModelContext(0);
          sub_19752235C();

          MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197526510);
          v34 = v4;
          sub_19752235C();
          v22 = v32;
          v21 = v33;
          if (qword_1EAF2ACC0 != -1)
          {
            swift_once();
          }

          v23 = sub_19752157C();
          __swift_project_value_buffer(v23, qword_1EAF33DE8);

          v24 = sub_19752155C();
          v25 = sub_197521DDC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v32 = v27;
            *v26 = 136315138;
            v28 = sub_197462310(v22, v21, &v32);

            *(v26 + 4) = v28;
            _os_log_impl(&dword_1973F2000, v24, v25, "%s", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v27);
            MEMORY[0x19A8E1B50](v27, -1, -1);
            MEMORY[0x19A8E1B50](v26, -1, -1);
          }

          else
          {
          }

          return;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    sub_197407130();
    if ((sub_1973FE6F0(a2, a3) & 1) == 0)
    {
      PersistentModel.persistentModelID.getter(a2, a3, &v32);
      v29 = v32;
      v30 = v33;
      v34 = v32;
      v35 = v33;
      sub_1974553C8(a1, &v34, a2, a3);
      sub_1974028C8(v29, v30);
      v31 = swift_allocObject();
      v31[2] = a2;
      v31[3] = a3;
      v31[4] = v4;
      v31[5] = a1;

      swift_unknownObjectRetain();
      sub_197455A10(0, sub_197456F20, v31, a2, a3);

      sub_197457A40(0, a2, a3);
    }
  }

  else
  {
  }
}

uint64_t sub_197455388()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1974553C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 8);
  sub_197440AC4();
  v11 = PersistentModel.modelContext.getter(a3, a4);
  if (v11)
  {
    if (v11 != v4)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x8000000197527A50);
      sub_1975227FC();
      MEMORY[0x19A8DFF80](0xD000000000000015, 0x80000001975264F0);
      type metadata accessor for ModelContext(0);
      sub_19752235C();
      MEMORY[0x19A8DFF80](0xD000000000000021, 0x8000000197527A90);
      sub_19752235C();
      sub_1975223EC();
      __break(1u);
      return;
    }

    sub_1974339E4(a1, v4, a3, a4);
  }

  else
  {
    sub_1974339E4(a1, v4, a3, a4);
  }

  sub_1974556E8(1, a3, a4);
  sub_197440D38(a1, a3, a4);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1974327FC(v18, a1, a4);
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v4 + 50) = 1;
  if ((*(v4 + 58) & 1) == 0 && *(v4 + 59) != 1)
  {
    swift_beginAccess();
    v12 = *(v4 + 40);
    if (v12)
    {
      v13 = v12;
      if ([v13 groupsByEvent])
      {
        type metadata accessor for ModelContext(0);
        sub_197521DBC();
      }
    }

    *(v5 + 58) = 1;
  }

  *(v5 + 48) = 1;
  swift_beginAccess();
  if (*(v5 + 64))
  {
    swift_beginAccess();
    sub_19751C33C(v9, v10, &v16);
    v14 = v16;
    v15 = v17;
    swift_endAccess();
    sub_1974A1014(v14, v15);
  }
}

uint64_t sub_1974556E8(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1973FE074(a2, a3);
  v9 = *(v8 + 24);
  if (a1)
  {
    *(v8 + 24) = v9 | 2;

    sub_197434244(a2, a2, a3, a3, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v11 + 32))(&v14, v10, v11);
    v12 = v14;
    LOBYTE(v10) = v15;
    sub_197455808(a2, v4, v14, v15, a2, a3);
    sub_1974A1014(v12, v10);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    *(v8 + 24) = v9 & 0xFFFFFFFD;
  }
}

void *sub_197455808(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = result;
  v12 = *result;
  if ((*result - 2048) < 0xFFFFFFFFFFFFF801 || ((result = sub_19752147C(), result < 0x800) ? (v13 = result == v12) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), v12 - 515 >= 2 ? (v15 = v14 == 0) : (v15 = 0), !v15))
  {
    if (v11[1])
    {
      v16 = v11[1];
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_197434244(a5, v16, a6, result, &v24);
        v17 = v26;
        v18 = v27;
        v19 = __swift_project_boxed_opaque_existential_1(&v24, v26);
        v29 = v17;
        v30 = v18;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
        (*(*(v17 - 8) + 16))(boxed_opaque_existential_1Tm, v19, v17);
        __swift_destroy_boxed_opaque_existential_1(&v24);
        v21 = v29;
        v23 = v30;
        __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
        v24 = a3;
        v25 = a4;
        v22 = *(v18 + 40);
        sub_1974ADEAC(a3, a4);
        v22(&v24, v21, v23);
        sub_197455808(v16, a2, a3, a4, a5, a6);
        return __swift_destroy_boxed_opaque_existential_1(v28);
      }
    }
  }

  return result;
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

uint64_t sub_197455A10(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CD0];
  v7 = swift_allocObject();
  swift_unknownObjectRetain();
  v8 = sub_197433F80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  *(v7 + 16) = v8;
  v9 = v7 + 16;
  v10 = v8[2];
  v11 = v8[3];
  if (v10 >= v11 >> 1)
  {
    v27 = v8[2];
    v8 = sub_197433F80((v11 > 1), v10 + 1, 1, v8);
    v10 = v27;
    *v9 = v8;
  }

  sub_19743F3E4(v10, v5, (v7 + 16), a4, a5);
  *v9 = v8;
  swift_beginAccess();
  while (1)
  {
    swift_beginAccess();
    v15 = *v9;
    if (!*(*v9 + 16))
    {
      break;
    }

    v16 = *v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = v15[2];
      if (!v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = sub_19751C2B0(v15);
      v17 = v15[2];
      if (!v17)
      {
LABEL_11:
        __break(1u);
        break;
      }
    }

    v18 = v17 - 1;
    v19 = &v15[2 * v18];
    v20 = v19[4];
    v21 = v19[5];
    v15[2] = v18;
    *v9 = v15;
    swift_endAccess();
    v22 = *(v6 + 16);
    ObjectType = swift_getObjectType();
    PersistentModel.persistentModelID.getter(ObjectType, v21, &v37);
    v24 = v37;
    v25 = v38;
    LOBYTE(v22) = sub_197455CE4(v37, v38, v22);
    sub_1974028C8(v24, v25);
    if (v22)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = swift_getObjectType();
      sub_197416DAC(v12, v20, v21, v6, a1 & 1, v7, a2, a3, a4, v12, a5, v21);
      PersistentModel.persistentModelID.getter(ObjectType, v21, &v33);
      v13 = v33;
      v14 = v34;
      swift_beginAccess();
      sub_19742AE44(&v35, v13, v14);
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_1974028C8(v35, v36);
    }
  }

  swift_endAccess();
}

uint64_t sub_197455CA8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197455CE4(void *a1, unsigned __int8 a2, uint64_t a3)
{
  v85 = sub_1975212CC();
  v6 = *(v85 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v85, v8);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v10 = *(a3 + 40);
  sub_197522A5C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8();
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  v11 = sub_197522A9C();
  v12 = a3 + 56;
  v13 = -1 << *(a3 + 32);
  v14 = v11 & ~v13;
  if (((*(a3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v86 = ~v13;
  v82 = (v6 + 8);
  v83 = a3 + 56;
  v81 = a3;
  while (1)
  {
    v16 = *(a3 + 48) + 16 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    if (!*(v16 + 8))
    {
      if (!a2)
      {
        sub_19744CC00(0, &qword_1ED7C8630, 0x1E69E58C0);
        sub_1974028EC(a1, 0);
        sub_1974028EC(v17, 0);
        v15 = sub_197521F3C();
        sub_1974028C8(a1, 0);
        sub_1974028C8(v17, 0);
        if (v15)
        {
          return 1;
        }

        goto LABEL_10;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v24 = swift_allocObject();
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v17, 0);
      v25 = [v17 persistentStore];
      if (v25 && (v26 = v25, v27 = [v25 identifier], v26, v27))
      {
        v28 = sub_1975217BC();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      *(v24 + 16) = v28;
      *(v24 + 24) = v30;
      *(v24 + 33) = [v17 isTemporaryID];
      *(v24 + 32) = 1;
      v48 = [v17 URIRepresentation];
      v49 = v84;
      sub_19752127C();

      v50 = sub_19752123C();
      v52 = v51;
      (*v82)(v49, v85);
      *(v24 + 56) = v50;
      *(v24 + 64) = v52;
      v53 = [v17 entityName];
      v54 = sub_1975217BC();
      v56 = v55;

      *(v24 + 72) = v54;
      *(v24 + 80) = v56;
      v12 = v83;
      v38 = a2;
      goto LABEL_51;
    }

    if (v18 != 1)
    {
      if (a2 == 2)
      {
        sub_1974028EC(a1, 2);
        sub_1974028EC(v17, 2);
        v31 = sub_19750A470();
        v33 = v32;
        if (v31 == sub_19750A470() && v33 == v34)
        {
        }

        else
        {
          v36 = sub_19752282C();

          if ((v36 & 1) == 0)
          {
            v37 = 2;
            LOBYTE(v18) = 2;
LABEL_70:
            sub_1974028C8(a1, v37);
            sub_1974028C8(v17, v18);
            goto LABEL_10;
          }
        }

        v74 = sub_19750A588();
        v76 = v75;
        if (v74 == sub_19750A588() && v76 == v77)
        {

          a2 = 2;
          LOBYTE(v18) = 2;
          goto LABEL_85;
        }

        v71 = sub_19752282C();

        sub_1974028C8(a1, 2);
        v72 = v17;
        v73 = 2;
        goto LABEL_77;
      }

      type metadata accessor for PersistentIdentifierImplementation();
      v24 = swift_allocObject();
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      sub_1974028EC(a1, a2);
      sub_1974028EC(v17, 2);
      *(v24 + 56) = sub_19750A470();
      *(v24 + 64) = v46;
      *(v24 + 72) = sub_19750A588();
      *(v24 + 80) = v47;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 256;
      v38 = a2;
      if (!a2)
      {
        goto LABEL_44;
      }

LABEL_51:
      if (v38 == 1)
      {
        sub_1974028EC(a1, 1);
        v39 = a1;
      }

      else
      {
        type metadata accessor for PersistentIdentifierImplementation();
        v39 = swift_allocObject();
        *(v39 + 40) = 0;
        *(v39 + 48) = 0;
        *(v39 + 56) = sub_19750A470();
        *(v39 + 64) = v57;
        *(v39 + 72) = sub_19750A588();
        *(v39 + 80) = v58;
        *(v39 + 16) = 0;
        *(v39 + 24) = 0;
        *(v39 + 32) = 256;
      }

      goto LABEL_56;
    }

    if (a2 != 1)
    {
      break;
    }

    v19 = v17[7] == a1[7] && v17[8] == a1[8];
    if (v19 || (sub_19752282C() & 1) != 0)
    {
      v20 = v17[9] == a1[9] && v17[10] == a1[10];
      if (v20 || (sub_19752282C() & 1) != 0)
      {
        v21 = v17[3];
        v22 = a1[3];
        if (v21)
        {
          if (v22)
          {
            v23 = v17[2] == a1[2] && v21 == v22;
            if (v23 || (sub_19752282C() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v22)
        {
          return 1;
        }
      }
    }

LABEL_10:
    v14 = (v14 + 1) & v86;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1974028EC(v17, 1);
  sub_1974028EC(a1, a2);
  sub_1974028EC(v17, 1);
  v24 = v17;
  v38 = a2;
  if (a2)
  {
    goto LABEL_51;
  }

LABEL_44:
  type metadata accessor for PersistentIdentifierImplementation();
  v39 = swift_allocObject();
  *(v39 + 40) = 0;
  *(v39 + 48) = 0;
  v40 = [a1 persistentStore];
  if (v40 && (v41 = v40, v42 = [v40 identifier], v41, v42))
  {
    v43 = sub_1975217BC();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  *(v39 + 16) = v43;
  *(v39 + 24) = v45;
  *(v39 + 33) = [a1 isTemporaryID];
  *(v39 + 32) = 1;
  v59 = [a1 URIRepresentation];
  v60 = v84;
  sub_19752127C();

  v61 = sub_19752123C();
  v63 = v62;
  (*v82)(v60, v85);
  *(v39 + 56) = v61;
  *(v39 + 64) = v63;
  v64 = [a1 entityName];
  v65 = sub_1975217BC();
  v67 = v66;

  *(v39 + 72) = v65;
  *(v39 + 80) = v67;
  a3 = v81;
  v12 = v83;
LABEL_56:
  if ((*(v24 + 56) != *(v39 + 56) || *(v24 + 64) != *(v39 + 64)) && (sub_19752282C() & 1) == 0 || (*(v24 + 72) != *(v39 + 72) || *(v24 + 80) != *(v39 + 80)) && (sub_19752282C() & 1) == 0)
  {
LABEL_67:

LABEL_69:

    v37 = a2;
    goto LABEL_70;
  }

  v68 = *(v24 + 24);
  v69 = *(v39 + 24);
  if (!v68)
  {

    if (!v69)
    {
      goto LABEL_84;
    }

    goto LABEL_69;
  }

  if (!v69)
  {
    goto LABEL_67;
  }

  if (*(v24 + 16) != *(v39 + 16) || v68 != v69)
  {
    v70 = *(v39 + 24);
    v71 = sub_19752282C();

    sub_1974028C8(a1, a2);
    v72 = v17;
    v73 = v18;
LABEL_77:
    sub_1974028C8(v72, v73);
    if (v71)
    {
      return 1;
    }

    goto LABEL_10;
  }

LABEL_84:

LABEL_85:
  sub_1974028C8(a1, a2);
  sub_1974028C8(v17, v18);
  return 1;
}

uint64_t sub_197456578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  if (swift_dynamicCast())
  {
    v21 = *a4;
    sub_197521FFC();
    v23 = sub_1974178DC(v22);
    v24 = swift_conformsToProtocol2();
    if (v24)
    {
      v25 = v23 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      sub_197456824(v23, v30, a1, a4, a5, a6 & 1, a7, a8, a9, a10, a11, a12, a13, v23, a14, a15, a16, v24);
      return swift_unknownObjectRelease();
    }

    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000032, 0x8000000197526460);
    v28 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v28);
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000018, 0x80000001975260B0);
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);

    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975260D0);
    sub_19752235C();
  }

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197456824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(sub_1973FE074(a13, a17) + 112);

  if (v20 == 1)
  {
    sub_1974258A4(a13, a17);
  }

  sub_197434244(a13, a13, a17, a17, v36);
  sub_197413BF4(v36, v35);
  v21 = swift_allocObject();
  *(v21 + 16) = a11;
  *(v21 + 24) = a12;
  *(v21 + 32) = a15;
  *(v21 + 40) = a16;
  *(v21 + 48) = a17;
  *(v21 + 56) = a18;
  sub_197434908(v35, v21 + 64);
  *(v21 + 104) = a5;
  v29 = a6 & 1;
  *(v21 + 112) = v29;
  v30 = a7;
  *(v21 + 120) = a7;
  *(v21 + 128) = a8;
  *(v21 + 136) = a9;
  *(v21 + 144) = a10;
  sub_197413BF4(v36, v34);
  v22 = swift_allocObject();
  *(v22 + 16) = a11;
  *(v22 + 24) = a12;
  *(v22 + 32) = a15;
  *(v22 + 40) = a16;
  *(v22 + 48) = a17;
  *(v22 + 56) = a18;
  sub_197434908(v34, v22 + 64);
  *(v22 + 104) = a5;
  *(v22 + 112) = v29;
  *(v22 + 120) = a7;
  *(v22 + 128) = a8;
  *(v22 + 136) = a9;
  *(v22 + 144) = a10;
  sub_197413BF4(v36, v33);
  v23 = swift_allocObject();
  *(v23 + 16) = a11;
  *(v23 + 24) = a12;
  *(v23 + 32) = a15;
  *(v23 + 40) = a16;
  *(v23 + 48) = a17;
  *(v23 + 56) = a18;
  sub_197434908(v33, v23 + 64);
  *(v23 + 104) = a5;
  *(v23 + 112) = v29;
  *(v23 + 120) = a7;
  *(v23 + 128) = a8;
  *(v23 + 136) = a9;
  *(v23 + 144) = a10;
  sub_197413BF4(v36, v32);
  v24 = swift_allocObject();
  *(v24 + 16) = a11;
  *(v24 + 24) = a12;
  *(v24 + 32) = a15;
  *(v24 + 40) = a16;
  *(v24 + 48) = a17;
  *(v24 + 56) = a18;
  sub_197434908(v32, v24 + 64);
  *(v24 + 104) = a5;
  *(v24 + 112) = v29;
  *(v24 + 120) = v30;
  *(v24 + 128) = a8;
  *(v24 + 136) = a9;
  *(v24 + 144) = a10;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_1974CE198(a3, a4, sub_1974AE05C, v21, sub_197456DB0, v22, sub_1974AE074, v23, sub_1974AE0E4, v24, a13, a13, a14);

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_197456B7C(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = *a1;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(*(v19 + *MEMORY[0x1E69E77B0] + 8) + 16);
  result = (*(v21 + 80))(a1, v22, a14, v20, v21);
  if (result)
  {
    v24 = result;
    swift_beginAccess();
    v25 = *(a3 + 16);

    PersistentModel.persistentModelID.getter(v22, a14, &v35);
    v26 = v35;
    v27 = v36;
    v28 = sub_197455CE4(v35, v36, v25);

    sub_1974028C8(v26, v27);
    if ((v28 & 1) == 0)
    {
      if (a4)
      {
        swift_beginAccess();
        v29 = *(a5 + 16);
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + 16) = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_197433F80(0, v29[2] + 1, 1, v29);
          *(a5 + 16) = v29;
        }

        v31 = v29[2];
        v32 = v29[3];
        if (v31 >= v32 >> 1)
        {
          v33 = v29[2];
          v29 = sub_197433F80((v32 > 1), v31 + 1, 1, v29);
          v31 = v33;
          *(a5 + 16) = v29;
        }

        sub_19743F3E4(v31, v24, (a5 + 16), v22, a14);
        *(a5 + 16) = v29;
        swift_endAccess();
      }

      swift_unknownObjectRetain();
      a6(a8, v24, a14);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_197456E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  sub_197456F2C(a1, a2, a5, a6, ObjectType, a7, a3);
  PersistentModel.persistentModelID.getter(ObjectType, a3, &v19);
  v14 = v19;
  LOBYTE(a5) = v20;
  v17 = v19;
  v18 = v20;
  v15 = sub_197457910(&v17);
  sub_1974028C8(v14, a5);
  if (!v15)
  {
    return sub_197454EEC(a2, ObjectType, a3);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_197456F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_beginAccess();
  v15 = *(a1 + 112);
  if (v15)
  {
    result = swift_beginAccess();
    v16 = *(a1 + 48);
    if (v16)
    {
      v26 = a3;
      v27 = a4;
      v28 = a5;
      v17 = *v15;

      v18 = sub_197521FFC();
      v19 = *v16;
      v20 = sub_197521FFC();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        v22 = v18 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = v21;
        v24 = swift_conformsToProtocol2();
        if (v24)
        {
          v25 = v20 == 0;
        }

        else
        {
          v25 = 1;
        }

        if (!v25)
        {
          sub_1974570C0(v18, v20, a2, v26, a1, v27, v28, v18, v20, a6, a7, v23, v24);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1974570C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = a3;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x80000001975274B0);
    *&v33[0] = a3;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v27 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v27);

LABEL_8:
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v34 = a4;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x80000001975274B0);
    *&v33[0] = a4;
    sub_1975227FC();
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    v28 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v28);

    goto LABEL_8;
  }

  v19 = *&v33[0];
  if (sub_1973FE6F0(a8, a12))
  {
    sub_1974258A4(a8, a12);
  }

  sub_197434244(a8, a8, a12, a12, &v34);
  sub_1973FFC48(&v34, v33);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a10;
  v20[5] = a11;
  v20[6] = a12;
  v20[7] = a13;
  sub_197402778(v33, (v20 + 8));
  v21 = v19;
  v20[13] = v19;
  sub_1973FFC48(&v34, v32);
  v29 = a8;
  v22 = a6;
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a7;
  v23[4] = a10;
  v23[5] = a11;
  v23[6] = a12;
  v23[7] = a13;
  sub_197402778(v32, (v23 + 8));
  v23[13] = v19;
  sub_1973FFC48(&v34, v31);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = a7;
  v24[4] = a10;
  v24[5] = a11;
  v24[6] = a12;
  v24[7] = a13;
  sub_197402778(v31, (v24 + 8));
  v24[13] = v19;
  sub_1973FFC48(&v34, v30);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = a7;
  v25[4] = a10;
  v25[5] = a11;
  v25[6] = a12;
  v25[7] = a13;
  sub_197402778(v30, (v25 + 8));
  v25[13] = v21;
  swift_unknownObjectRetain_n();
  sub_1974CE944(a5, sub_1974C17F0, v20, sub_1974C1848, v23, sub_1974C1860, v24, sub_197457524, v25, v22, a9, v29, a10, a13, a12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return __swift_destroy_boxed_opaque_existential_0Tm(&v34);
}

void sub_19745753C(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *a1;
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v13 = *(v12 + 88);
  v26 = v11;
  v14 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
  v15 = *(*(v14 + 16) + 16);
  WitnessTable = swift_getWitnessTable();
  v31 = a9;
  v25 = swift_getWitnessTable();
  v13(&v28, a1, v14, v15);
  if (v28)
  {
    v16 = v28;
  }

  else
  {
    v16 = sub_1975215CC();
  }

  v32 = v16;

  v17 = PersistentModel.persistentModelID.getter(v15, a9, &v28);
  v18 = v28;
  v19 = v29;
  v28 = v16;
  MEMORY[0x1EEE9AC00](v17, v20);
  v24 = *(v26 + *MEMORY[0x1E69E77B0]);
  v21 = sub_19752196C();

  if (v21)
  {

    sub_1974028C8(v18, v19);
  }

  else
  {
    v28 = a3;
    swift_unknownObjectRetain();
    sub_197521A7C();
    v22 = a2[3];
    v23 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v22);
    v28 = v32;
    (*(v23 + 136))(a1, &v28, v14, v15, v25, v22, v23);
    sub_1974028C8(v18, v19);
  }
}

uint64_t sub_1974577F4(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a1;
  PersistentModel.persistentModelID.getter(a7, a11, &v18);
  v14 = v18;
  v15 = v19;
  sub_1974028EC(a2, a3);
  v16 = sub_19742291C(v14, v15, a2, a3);
  sub_1974028C8(a2, a3);
  sub_1974028C8(v14, v15);
  return v16 & 1;
}

uint64_t sub_197457910(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = sub_197403C30(v2, v3);
    if (v8)
    {
      sub_19742FE50(*(v5 + 56) + 32 * v7, &v11);

      LOBYTE(v6) = *(&v11 + 1) != 1;
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    LOBYTE(v6) = 0;
  }

  v11 = xmmword_19752EA60;
  v12 = 0;
  v13 = 0;
LABEL_7:
  if ((v6 & 1) == 0)
  {
    sub_1974050A8(&v11, &qword_1EAF2B640, &unk_19752F160);
    return 0;
  }

LABEL_9:
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1974050A8(&v11, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    return Strong;
  }

  return 0;
}

uint64_t sub_197457A40(char a1, uint64_t a2, uint64_t a3)
{
  *(sub_1973FE074(a2, a3) + 80) = a1;

  v8 = 0;
  if ((a1 & 1) == 0)
  {
    if (PersistentModel.modelContext.getter(a2, a3))
    {

      v7 = *(sub_1973FE074(a2, a3) + 24);

      if ((v7 & 0x3F) == 0)
      {
        v8 = 1;
      }
    }
  }

  return sub_197457AEC(a2, v8, v3, a2, a2, a3, a3);
}

uint64_t sub_197457AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_197434244(a4, a5, a6, a7, v16);
  sub_1973FFCAC(v16, v15);
  swift_getExtendedExistentialTypeMetadata();
  type metadata accessor for _KKMDBackingData();
  if (swift_dynamicCast())
  {
    sub_197430254(a2 & 1);
  }

  v11 = sub_1975214CC();
  if (v11)
  {
    v12 = v11;
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      sub_197457AEC(v12, a2 & 1, a3, a4, v12, a6, v13);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm_3(v16);
}

uint64_t sub_197457C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v19 = a5;
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v18 = *(*(a1 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v12)))));
      swift_unknownObjectRetain();
      v19(&v18, a2, a3, a4);
      if (v5)
      {
        break;
      }

      v12 &= v12 - 1;
      result = swift_unknownObjectRelease();
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_197457D6C(__int128 *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v17 = *a1;
  v5 = *a1;
  ObjectType = swift_getObjectType();
  sub_1974556E8(0, ObjectType, *(&v17 + 1));
  if (sub_19745805C(ObjectType, *(&v17 + 1)) & 1) != 0 || (sub_197442A30(ObjectType, *(&v17 + 1)))
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v18, v5, *(&v17 + 1));
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  else
  {
    if (sub_19744377C(ObjectType, *(&v17 + 1)))
    {
      sub_1974A7F6C(0, ObjectType, *(&v17 + 1));
      swift_beginAccess();
      sub_1974580E0(v5, *(&v17 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1974327FC(v18, v5, *(&v17 + 1));
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_197458088(1, ObjectType, *(&v17 + 1));
    }

    v8 = *a4;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_197442AD4(0, *(v8 + 2) + 1, 1, v8);
      *a4 = v8;
    }

    v10 = *(v8 + 2);
    v11 = *(v8 + 3);
    v12 = v10 + 1;
    if (v10 >= v11 >> 1)
    {
      v16 = v10 + 1;
      v13 = v8;
      v14 = *(v8 + 2);
      v15 = sub_197442AD4((v11 > 1), v10 + 1, 1, v13);
      v10 = v14;
      v12 = v16;
      v8 = v15;
      *a4 = v15;
    }

    *(v8 + 2) = v12;
    *&v8[16 * v10 + 32] = v17;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v18, v5, *(&v17 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1974580E0(v5, *(&v17 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
    return sub_197432360(0, ObjectType, *(&v17 + 1));
  }
}

uint64_t sub_19745805C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 3) & 1;
}

uint64_t sub_197458088(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 16;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFEF | v5;
}

uint64_t sub_1974580E0(uint64_t a1, uint64_t a2)
{
  v30 = *v2;
  v4 = *(*v2 + 40);
  sub_197522A5C();
  ObjectType = swift_getObjectType();
  PersistentModel.persistentModelID.getter(ObjectType, a2, &v32);
  v6 = v32;
  if (v33)
  {
    if (v33 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_1974028EC(v6, 1);
      sub_197452CB8();
      sub_1974028C8(v6, 1);
      sub_1974028C8(v6, 1);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_1974028EC(v6, 2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
      sub_1974028C8(v6, 2);
      sub_1974028C8(v6, 2);
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_1974028EC(v6, 0);
    sub_197521F4C();
    sub_1974028C8(v6, 0);
    sub_1974028C8(v6, 0);
  }

  v7 = sub_197522A9C();
  v8 = -1 << *(v30 + 32);
  v9 = v7 & ~v8;
  if (((*(v30 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v27 = v2;
  v28 = ~v8;
  v29 = a2;
  while (1)
  {
    v10 = (*(v30 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = swift_getObjectType();
    swift_unknownObjectRetain();
    v31 = v11;
    PersistentModel.persistentModelID.getter(v13, v11, &v34);
    v14 = v34;
    LOBYTE(v11) = v35;
    PersistentModel.persistentModelID.getter(ObjectType, a2, &v32);
    v15 = v32;
    v16 = v33;
    v17 = sub_19742291C(v14, v11, v32, v33);
    sub_1974028C8(v15, v16);
    sub_1974028C8(v14, v11);
    if ((v17 & 1) == 0)
    {
      swift_unknownObjectRelease();
      a2 = v29;
      goto LABEL_9;
    }

    v18 = PersistentModel.modelContext.getter(v13, v31);
    a2 = v29;
    v19 = PersistentModel.modelContext.getter(ObjectType, v29);
    swift_unknownObjectRelease();
    if (!v18)
    {
      break;
    }

    if (!v19)
    {
      goto LABEL_16;
    }

    if (v18 == v19)
    {
      goto LABEL_19;
    }

LABEL_9:
    v9 = (v9 + 1) & v28;
    if (((*(v30 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (v19)
  {
LABEL_16:

    goto LABEL_9;
  }

LABEL_19:
  v21 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v27;
  v34 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_19747FCD8();
    v23 = v34;
  }

  v24 = (v23[6] + 16 * v9);
  v25 = *v24;
  v26 = v24[1];
  sub_19745845C(v9);
  result = v25;
  *v27 = v34;
  return result;
}

unint64_t sub_19745845C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_19752207C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v14 = *v12;
        v13 = v12[1];
        sub_197522A5C();
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        PersistentModel.persistentModelID.getter(ObjectType, v13, &v38);
        v16 = v38;
        if (v39)
        {
          if (v39 != 1)
          {
            MEMORY[0x19A8E1190](2);
            sub_1974028EC(v16, 2);
            sub_19750A470();
            sub_19752180C();

            sub_19750A588();
            sub_19752180C();
            sub_1974028C8(v16, 2);
            sub_1974028C8(v16, 2);

            goto LABEL_15;
          }

          MEMORY[0x19A8E1190](1);
          v17 = *(v16 + 56);
          v18 = *(v16 + 64);
          sub_1974028EC(v16, 1);
          sub_19752180C();
          v19 = *(v16 + 72);
          v20 = *(v16 + 80);
          sub_19752180C();
          if (*(v16 + 24))
          {
            v37 = v2;
            v21 = v3;
            v22 = v10;
            v23 = v7;
            v24 = v4;
            v25 = *(v16 + 16);
            sub_197522A7C();
            v4 = v24;
            v7 = v23;
            v10 = v22;
            v3 = v21;
            v2 = v37;
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v28 = *(v16 + 33);
          sub_197522A7C();
          *(v16 + 32);
          sub_19752180C();

          sub_1974028C8(v16, 1);
          v26 = v16;
          v27 = 1;
        }

        else
        {
          MEMORY[0x19A8E1190](0);
          sub_1974028EC(v16, 0);
          sub_197521F4C();
          sub_1974028C8(v16, 0);
          v26 = v16;
          v27 = 0;
        }

        sub_1974028C8(v26, v27);
LABEL_15:
        v29 = sub_197522A9C();
        swift_unknownObjectRelease();
        v30 = v29 & v7;
        if (v2 >= v10)
        {
          if (v30 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v30 >= v10)
        {
          goto LABEL_20;
        }

        if (v2 >= v30)
        {
LABEL_20:
          v31 = *(v3 + 48);
          v32 = (v31 + 16 * v2);
          v33 = (v31 + 16 * v6);
          if (v2 != v6 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v34 = *(v3 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v36;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_197458844(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47[3] = a5;
  v47[4] = a6;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v47);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm_0, a4, a5);
  swift_beginAccess();
  v10 = *(a1 + 16);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = -1 << *(*(a1 + 16) + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  v42 = a1;
  v17 = (63 - v14) >> 6;
  v46 = *(a1 + 16);

  v18 = 0;
  while (1)
  {
    v19 = v16;
    v20 = v18;
    if (!v16)
    {
      break;
    }

LABEL_12:
    v22 = (*(v46 + 56) + ((v20 << 10) | (16 * __clz(__rbit64(v19)))));
    v23 = *v22;
    v24 = v22[1];
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 48);
    swift_unknownObjectRetain();
    v43 = ObjectType;
    v27 = *(v26(ObjectType, v24) + 72);

    if (a3)
    {
      if (a3 == 1)
      {
        v28 = a2[9];
        v29 = a2[10];
      }

      else
      {
        v28 = sub_19750A588();
        v29 = v32;
      }
    }

    else
    {
      v30 = [a2 entityName];
      v28 = sub_1975217BC();
      v29 = v31;
    }

    v33 = (v19 - 1) & v19;
    if (*(v27 + 16))
    {
      sub_1973F4028(v28, v29);
      v35 = v34;

      if (v35)
      {

        v36 = (*(v24 + 40))(v43, v24);
        sub_197458C2C();
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
        return v36;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v18 = v20;
    v16 = v33;
  }

  v21 = v18;
  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_22;
    }

    v19 = *(v12 + 8 * v20);
    ++v21;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197527900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
  sub_19752235C();
  MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
  v38 = *(v42 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  v39 = sub_19752160C();
  v41 = v40;

  MEMORY[0x19A8DFF80](v39, v41);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197458C34(uint64_t a1)
{
  swift_beginAccess();
  sub_19743B4F0(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t sub_197458C84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B440, &qword_19752D600);
  v7 = v5;
  v48 = a2;
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
    v46 = v2;
    v47 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v25 = 16 * (v22 | (v10 << 6));
      v26 = *(v7 + 48) + v25;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v7 + 56) + v25;
      v30 = *v29;
      v49 = *(v29 + 8);
      if ((v48 & 1) == 0)
      {
        sub_1974028EC(v27, v28);
        sub_1974028EC(v30, v49);
      }

      v31 = *(v9 + 40);
      sub_197522A5C();
      if (v28)
      {
        if (v28 == 1)
        {
          MEMORY[0x19A8E1190](1);
          v32 = *(v27 + 56);
          v33 = *(v27 + 64);
          sub_19752180C();
          v34 = *(v27 + 72);
          v35 = *(v27 + 80);
          sub_19752180C();
          if (*(v27 + 24))
          {
            v45 = *(v27 + 16);
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          v36 = *(v27 + 33);
          sub_197522A7C();
          v7 = v47;
          *(v27 + 32);
          sub_19752180C();
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
          sub_19752180C();

          v7 = v47;
        }
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v37 = -1 << *(v9 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v16 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v18 = v30;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v16 + 8 * v39);
          if (v43 != -1)
          {
            v17 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v38) & ~*(v16 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v18 = v30;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v19 = 16 * v17;
      v20 = *(v9 + 48) + v19;
      *v20 = v27;
      *(v20 + 8) = v28;
      v21 = *(v9 + 56) + v19;
      *v21 = v18;
      *(v21 + 8) = v49;
      ++*(v9 + 16);
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_43;
    }

    v44 = 1 << *(v7 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v11, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v44;
    }

    *(v7 + 16) = 0;
  }

LABEL_43:
  *v3 = v9;
  return result;
}

uint64_t sub_1974590C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v95 = a7;
  v96 = a6;
  v106 = a5;
  v108 = a3;
  v109 = a4;
  v102 = *a4;
  v9 = *(v102 + 80);
  v104 = sub_197521F5C();
  v100 = *(v104 - 8);
  v10 = *(v100 + 64);
  v12 = MEMORY[0x1EEE9AC00](v104, v11);
  v105 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v99 = &v91 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v91 - v19;
  v103 = v9;
  v21 = *(v9 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x1EEE9AC00](v18, v23);
  v97 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v98 = &v91 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v101 = &v91 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v91 - v33;
  v35 = *a1;
  v36 = *(a1 + 8);
  v37 = *a2;
  v38 = *(a2 + 8);
  v107 = *a1;
  if (v38)
  {
    if (v38 == 1 && (v37[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![v37 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v39 = sub_19752157C();
  __swift_project_value_buffer(v39, qword_1EAF33DD0);
  sub_1974028EC(v35, v36);
  sub_1974028EC(v37, v38);
  v40 = sub_19752155C();
  v41 = sub_197521DDC();
  sub_1974028C8(v35, v36);
  sub_1974028C8(v37, v38);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v94 = v34;
    v43 = v37;
    v44 = v42;
    v92 = swift_slowAlloc();
    v117[0] = v92;
    *v44 = 136315650;
    *&v114 = v35;
    BYTE8(v114) = v36;
    sub_1974028EC(v35, v36);
    v45 = sub_1975217CC();
    v93 = v20;
    v47 = v21;
    v48 = sub_197462310(v45, v46, v117);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    *&v114 = v43;
    BYTE8(v114) = v38;
    sub_1974028EC(v43, v38);
    v49 = sub_1975217CC();
    v51 = sub_197462310(v49, v50, v117);

    *(v44 + 14) = v51;
    *(v44 + 22) = 2080;
    v21 = v47;
    v35 = v107;
    *&v114 = v95;
    swift_getMetatypeMetadata();
    v52 = sub_1975217CC();
    v54 = sub_197462310(v52, v53, v117);

    *(v44 + 24) = v54;
    v20 = v93;
    _os_log_impl(&dword_1973F2000, v40, v41, "PersistentIdentifier %s was remapped to a temporary identifier during save: %s. This is a fatal logic error in %s", v44, 0x20u);
    v55 = v92;
    swift_arrayDestroy();
    MEMORY[0x19A8E1B50](v55, -1, -1);
    v56 = v44;
    v37 = v43;
    v34 = v94;
    MEMORY[0x19A8E1B50](v56, -1, -1);
  }

LABEL_11:
  v57 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  v58 = v108;
  swift_beginAccess();
  v59 = *(v58 + v57);
  v60 = *(v59 + 16);
  if (v60)
  {

    v61 = sub_197403C30(v35, v36);
    if (v62)
    {
      sub_19742FE50(*(v59 + 56) + 32 * v61, &v114);

      LOBYTE(v60) = *(&v114 + 1) != 1;
      if (v114)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    LOBYTE(v60) = 0;
  }

  v114 = xmmword_19752EA60;
  v115 = 0;
  v116 = 0;
LABEL_17:
  if ((v60 & 1) == 0)
  {
    sub_1974050A8(&v114, &qword_1EAF2B640, &unk_19752F160);
    goto LABEL_21;
  }

LABEL_19:
  Strong = swift_unknownObjectWeakLoadStrong();
  v64 = *(&v114 + 1);
  sub_1974050A8(&v114, &qword_1EAF2B640, &unk_19752F160);
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v94 = v34;
    v66 = v37;
    v93 = ObjectType;
    *&v114 = v37;
    BYTE8(v114) = v38;
    sub_197459C60(&v114, ObjectType, v64);
    v114 = xmmword_19752EA60;
    v115 = 0;
    v116 = 0;
    v95 = v21;
    swift_beginAccess();
    v67 = v20;
    v68 = v36;
    v69 = v107;
    sub_1974028EC(v107, v68);
    v70 = v69;
    v36 = v68;
    v20 = v67;
    sub_197433D4C(&v114, v70, v36);
    swift_endAccess();
    *(&v114 + 1) = 0;
    swift_unknownObjectWeakInit();
    *(&v114 + 1) = v64;
    swift_unknownObjectWeakAssign();
    sub_1974028EC(v66, v38);
    swift_unknownObjectRetain();
    v37 = v66;
    v34 = v94;
    PersistentModel.persistentModelID.getter(v93, v64, &v110);
    swift_unknownObjectRelease();
    v115 = v110;
    v116 = v111;
    swift_beginAccess();
    v21 = v95;
    sub_197433D4C(&v114, v37, v38);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

LABEL_21:
  v71 = *(v109 + 5);
  *&v114 = v37;
  BYTE8(v114) = v38;
  sub_1974028EC(v37, v38);
  v72 = v37;
  v73 = sub_197405108();
  v74 = v103;
  sub_19752167C();
  sub_1974028C8(v114, SBYTE8(v114));
  v75 = v21[6];
  if (v75(v20, 1, v74) == 1)
  {
    LODWORD(v108) = v38;
    v95 = v72;
    v76 = v74;
    v94 = *(v100 + 8);
    (v94)(v20, v104);
    v77 = v96;
    swift_beginAccess();
    v78 = *(v77 + 32);
    v79 = v107;
    v110 = v107;
    LOBYTE(v111) = v36;
    sub_1974028EC(v107, v36);

    v80 = v99;
    v100 = v73;
    sub_19752167C();
    v81 = v80;

    sub_1974028C8(v110, v111);
    if (v75(v80, 1, v76))
    {
      (v94)(v80, v104);
      v110 = 0;
      v111 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000041, 0x8000000197527870);
      v112 = v79;
      v113 = v36;
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v112 = v95;
      v113 = v108;
      sub_19752235C();
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      v82 = v21[2];
      v83 = v97;
      v82(v97, v81, v76);
      (v94)(v81, v104);
      v84 = v95;
      v110 = v95;
      v85 = v108;
      LOBYTE(v111) = v108;
      v86 = v98;
      (*(*(v102 + 88) + 40))(&v110, *(v109 + 2), v76);
      v109 = v21[1];
      v109(v83, v76);
      v87 = v101;
      (v21[4])(v101, v86, v76);
      v88 = v105;
      v82(v105, v87, v76);
      (v21[7])(v88, 0, 1, v76);
      v110 = v84;
      LOBYTE(v111) = v85;
      sub_1974028EC(v84, v85);
      sub_19752166C();
      sub_19752168C();
      return (v109)(v87, v76);
    }
  }

  else
  {
    (v21[4])(v34, v20, v74);
    v90 = v105;
    (v21[2])(v105, v34, v74);
    (v21[7])(v90, 0, 1, v74);
    *&v114 = v72;
    BYTE8(v114) = v38;
    sub_1974028EC(v72, v38);
    sub_19752166C();
    sub_19752168C();
    return (v21[1])(v34, v74);
  }

  return result;
}

uint64_t sub_197459C60(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  sub_197434244(a2, a2, a3, a3, v14);
  v8 = v15;
  v9 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v12 = v6;
  v13 = v7;
  v10 = *(v9 + 40);
  sub_1974028EC(v6, v7);
  v10(&v12, v8, v9);
  sub_197459D98(a2, v3, v6, v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1Tm_3(v14);
}

void sub_197459D38(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 24);
  *(v1 + 24) = v2;
  v5 = *(v1 + 32);
  *(v1 + 32) = v3;
  sub_1974A1014(v4, v5);
}

void *sub_197459D98(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = result;
  v12 = *result;
  if ((*result - 2048) < 0xFFFFFFFFFFFFF801 || ((result = sub_19752147C(), result < 0x800) ? (v13 = result == v12) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), v12 - 515 >= 2 ? (v15 = v14 == 0) : (v15 = 0), !v15))
  {
    if (v11[1])
    {
      v16 = v11[1];
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_197434244(a5, v16, a6, result, &v24);
        v17 = v26;
        v18 = v27;
        v19 = __swift_project_boxed_opaque_existential_1Tm_2(&v24, v26);
        v29 = v17;
        v30 = v18;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
        (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
        __swift_destroy_boxed_opaque_existential_1Tm_3(&v24);
        v21 = v29;
        v23 = v30;
        __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
        v24 = a3;
        v25 = a4;
        v22 = *(v18 + 40);
        sub_1974028EC(a3, a4);
        v22(&v24, v21, v23);
        sub_197459D98(v16, a2, a3, a4, a5, a6);
        return __swift_destroy_boxed_opaque_existential_1Tm_3(v28);
      }
    }
  }

  return result;
}

double sub_197459F50@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_197403C30(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747B580();
      v12 = v14;
    }

    sub_1974028C8(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    sub_197433E8C(*(v12 + 56) + 32 * v9, a3);
    sub_197439D60(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_19752EA60;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_19745A004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1974B786C();
}

void *sub_19745A024@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

SwiftData::Schema::Version __swiftcall Schema.Version.init(_:_:_:)(Swift::Int a1, Swift::Int a2, Swift::Int a3)
{
  if ((a2 | a1 | a3) < 0)
  {
    __break(1u);
  }

  else
  {
    *v3 = a1;
    v3[1] = a2;
    v3[2] = a3;
  }

  result.patch = a3;
  result.minor = a2;
  result.major = a1;
  return result;
}

uint64_t Schema.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_197530990;
  *(v1 + 32) = 0x616D65686353;
  *(v1 + 40) = 0xE600000000000000;
  sub_1975221EC();

  if (qword_1ED7C9B38 != -1)
  {
    swift_once();
  }

  v2 = Schema.Version.description.getter();
  MEMORY[0x19A8DFF80](v2);

  *(v1 + 48) = 0xD000000000000017;
  *(v1 + 56) = 0x80000001975285A0;
  sub_1975221EC();

  v20 = *(v0 + 16);
  v21 = *(v0 + 32);
  v3 = Schema.Version.description.getter();
  MEMORY[0x19A8DFF80](v3);

  *(v1 + 64) = 0xD000000000000011;
  *(v1 + 72) = 0x80000001975285C0;
  *(v1 + 80) = 0x7365697469746E65;
  *(v1 + 88) = 0xE90000000000003ALL;
  v5 = *(v0 + 64);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v18 = *(v0 + 64);
    }

    result = sub_1975220EC();
    v6 = result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_20:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
      sub_19745B2D4(&qword_1EAF2ACA0, &qword_1EAF2AE60, &qword_19752C0E0);
      v19 = sub_1975216CC();

      return v19;
    }
  }

  if (v6 >= 1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        MEMORY[0x19A8E0960](v7, v5);
        v8 = Schema.Entity.debugDescription.getter();
        MEMORY[0x19A8DFF80](v8);

        v10 = *(v1 + 16);
        v9 = *(v1 + 24);
        if (v10 >= v9 >> 1)
        {
          v1 = sub_19741E330((v9 > 1), v10 + 1, 1, v1);
        }

        ++v7;
        swift_unknownObjectRelease();
        *(v1 + 16) = v10 + 1;
        v11 = v1 + 16 * v10;
        *(v11 + 32) = 32;
        *(v11 + 40) = 0xE100000000000000;
      }

      while (v6 != v7);
    }

    else
    {
      v12 = (v5 + 32);
      do
      {
        v13 = *v12;

        v14 = Schema.Entity.debugDescription.getter();
        MEMORY[0x19A8DFF80](v14);

        v16 = *(v1 + 16);
        v15 = *(v1 + 24);
        if (v16 >= v15 >> 1)
        {
          v1 = sub_19741E330((v15 > 1), v16 + 1, 1, v1);
        }

        *(v1 + 16) = v16 + 1;
        v17 = v1 + 16 * v16;
        *(v17 + 32) = 32;
        *(v17 + 40) = 0xE100000000000000;
        ++v12;
        --v6;
      }

      while (v6);
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t Schema.Entity.debugDescription.getter()
{
  v1 = v0;
  v83 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19752D100;
  v3 = 0xE000000000000000;
  sub_1975221EC();

  v86 = 0x2D20797469746E45;
  v87 = 0xEF203A656D616E20;
  swift_beginAccess();
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x19A8DFF80](v4, v5);

  *(v2 + 32) = 0x2D20797469746E45;
  *(v2 + 40) = 0xEF203A656D616E20;
  sub_1975221EC();

  v86 = 0x6572657075732020;
  v87 = 0xEF203A797469746ELL;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = *(v7 + 16);
    v3 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x19A8DFF80](v8, v3);

  v9 = v87;
  *(v2 + 48) = v86;
  *(v2 + 56) = v9;
  strcpy((v2 + 64), "  subentities:");
  *(v2 + 79) = -18;
  swift_beginAccess();
  v10 = v1[4];
  v81 = v1;
  if ((v10 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_1973FA628(&qword_1EAF2B670, v11, type metadata accessor for Schema.Entity);
    sub_197521C1C();
    v10 = v86;
    v12 = v87;
    v13 = v88;
    v14 = v89;
    v15 = v90;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v10 + 56);

    v14 = 0;
  }

  v80 = v13;
  v19 = (v13 + 64) >> 6;
  v82 = v12;
  if (v10 < 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v20 = v14;
    v21 = v15;
    v22 = v14;
    if (!v15)
    {
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          v15 = 0;
          goto LABEL_24;
        }

        v21 = *(v12 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

LABEL_15:
    v23 = (v21 - 1) & v21;
    v8 = *(*(v10 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v8)
    {
      break;
    }

    while (1)
    {
      v25 = v10;
      v84[0] = 0;
      v84[1] = 0xE000000000000000;
      MEMORY[0x19A8DFF80](538976288, 0xE400000000000000);
      v85 = v8;
      sub_19752235C();
      v27 = *(v2 + 16);
      v26 = *(v2 + 24);
      v13 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v2 = sub_19741E330((v26 > 1), v27 + 1, 1, v2);
      }

      *(v2 + 16) = v13;
      v28 = v2 + 16 * v27;
      *(v28 + 32) = 0;
      *(v28 + 40) = 0xE000000000000000;
      v14 = v22;
      v15 = v23;
      v10 = v25;
      v12 = v82;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_17:
      v24 = sub_19752212C();
      if (v24)
      {
        v85 = v24;
        swift_dynamicCast();
        v8 = v84[0];
        v22 = v14;
        v23 = v15;
        if (v84[0])
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

LABEL_24:
  sub_197416DA8(v10, v12, v80, v14, v15);
  v8 = *(v2 + 16);
  v20 = *(v2 + 24);
  v13 = v8 + 1;
  if (v8 < v20 >> 1)
  {
    goto LABEL_25;
  }

LABEL_57:
  v2 = sub_19741E330((v20 > 1), v13, 1, v2);
LABEL_25:
  v29 = v81;
  *(v2 + 16) = v13;
  v30 = v2 + 16 * v8;
  *(v30 + 32) = 0xD000000000000013;
  *(v30 + 40) = 0x80000001975293D0;
  swift_beginAccess();
  v31 = v81[8];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v31 + 32;

    do
    {
      sub_1973FA430(v33, v84);
      MEMORY[0x19A8DFF80](538976288, 0xE400000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      sub_19752235C();
      __swift_destroy_boxed_opaque_existential_1Tm_5(v84);
      v35 = *(v2 + 16);
      v34 = *(v2 + 24);
      if (v35 >= v34 >> 1)
      {
        v2 = sub_19741E330((v34 > 1), v35 + 1, 1, v2);
      }

      *(v2 + 16) = v35 + 1;
      v36 = v2 + 16 * v35;
      *(v36 + 32) = 0;
      *(v36 + 40) = 0xE000000000000000;
      v33 += 40;
      --v32;
    }

    while (v32);

    v29 = v81;
  }

  v38 = *(v2 + 16);
  v37 = *(v2 + 24);
  if (v38 >= v37 >> 1)
  {
    v2 = sub_19741E330((v37 > 1), v38 + 1, 1, v2);
  }

  *(v2 + 16) = v38 + 1;
  v39 = v2 + 16 * v38;
  *(v39 + 32) = 0xD000000000000016;
  *(v39 + 40) = 0x80000001975293F0;
  swift_beginAccess();
  v40 = v29[9];
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = v40 + 32;

    do
    {
      sub_1973FA430(v42, v84);
      MEMORY[0x19A8DFF80](538976288, 0xE400000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      sub_19752235C();
      __swift_destroy_boxed_opaque_existential_1Tm_5(v84);
      v44 = *(v2 + 16);
      v43 = *(v2 + 24);
      if (v44 >= v43 >> 1)
      {
        v2 = sub_19741E330((v43 > 1), v44 + 1, 1, v2);
      }

      *(v2 + 16) = v44 + 1;
      v45 = v2 + 16 * v44;
      *(v45 + 32) = 0;
      *(v45 + 40) = 0xE000000000000000;
      v42 += 40;
      --v41;
    }

    while (v41);

    v29 = v81;
  }

  v47 = *(v2 + 16);
  v46 = *(v2 + 24);
  if (v47 >= v46 >> 1)
  {
    v2 = sub_19741E330((v46 > 1), v47 + 1, 1, v2);
  }

  *(v2 + 16) = v47 + 1;
  v48 = v2 + 16 * v47;
  *(v48 + 32) = 0xD000000000000018;
  *(v48 + 40) = 0x8000000197529410;
  swift_beginAccess();
  v49 = v29[20];
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = v29[20];

    v52 = 32;
    v53 = MEMORY[0x1E69E6158];
    do
    {
      v54 = *(v49 + v52);

      v56 = MEMORY[0x19A8E0100](v55, v53);
      v58 = v57;

      MEMORY[0x19A8DFF80](v56, v58);

      v60 = *(v2 + 16);
      v59 = *(v2 + 24);
      if (v60 >= v59 >> 1)
      {
        v2 = sub_19741E330((v59 > 1), v60 + 1, 1, v2);
      }

      *(v2 + 16) = v60 + 1;
      v61 = v2 + 16 * v60;
      *(v61 + 32) = 538976288;
      *(v61 + 40) = 0xE400000000000000;
      v52 += 8;
      --v50;
    }

    while (v50);

    v29 = v81;
  }

  v63 = *(v2 + 16);
  v62 = *(v2 + 24);
  if (v63 >= v62 >> 1)
  {
    v2 = sub_19741E330((v62 > 1), v63 + 1, 1, v2);
  }

  *(v2 + 16) = v63 + 1;
  v64 = v2 + 16 * v63;
  *(v64 + 32) = 0x656369646E692020;
  *(v64 + 40) = 0xEA00000000003A73;
  swift_beginAccess();
  v65 = v29[21];
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = v29[21];

    v68 = 32;
    v69 = MEMORY[0x1E69E6158];
    do
    {
      v70 = *(v65 + v68);

      v72 = MEMORY[0x19A8E0100](v71, v69);
      v74 = v73;

      MEMORY[0x19A8DFF80](v72, v74);

      v76 = *(v2 + 16);
      v75 = *(v2 + 24);
      if (v76 >= v75 >> 1)
      {
        v2 = sub_19741E330((v75 > 1), v76 + 1, 1, v2);
      }

      *(v2 + 16) = v76 + 1;
      v77 = v2 + 16 * v76;
      *(v77 + 32) = 538976288;
      *(v77 + 40) = 0xE400000000000000;
      v68 += 8;
      --v66;
    }

    while (v66);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  sub_19745B31C(&qword_1EAF2ACA0, &qword_1EAF2AE60, &qword_19752C0E0);
  v78 = sub_1975216CC();

  return v78;
}

uint64_t Schema.Attribute.Option.debugDescription.getter()
{
  v1 = *v0;
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[37];
  if (v0[32] == 1)
  {
    MEMORY[0x19A8DFF80](0x657571696E75, 0xE600000000000000);
  }

  if (v4)
  {
    MEMORY[0x19A8DFF80](0x6C616E7265747865, 0xEF656761726F7453);
  }

  if (v1)
  {
    sub_1975221EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
    v10 = sub_1975217CC();
    MEMORY[0x19A8DFF80](v10);

    MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197529D30);

    if (!v5)
    {
LABEL_7:
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197529D10);
  if (v6)
  {
LABEL_8:
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197529CF0);
  }

LABEL_9:
  if (v7)
  {
    MEMORY[0x19A8DFF80](0x6867696C746F7073, 0xE900000000000074);
  }

  if (v8)
  {
    MEMORY[0x19A8DFF80](0x6172656D65687065, 0xE90000000000006CLL);
  }

  return 0;
}

uint64_t sub_19745AFC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_19745B044()
{
  v1 = v0;
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  sub_1975221EC();
  v18 = 0;
  v19 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD000000000000012, 0x8000000197529A30);
  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x19A8DFF80](v2, v3);

  MEMORY[0x19A8DFF80](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  swift_beginAccess();
  v4 = v0[6];

  v6 = MEMORY[0x19A8E0100](v5, &type metadata for Schema.Attribute.Option);
  v8 = v7;

  MEMORY[0x19A8DFF80](v6, v8);

  MEMORY[0x19A8DFF80](0x5465756C6176202CLL, 0xED0000203A657079);
  swift_beginAccess();
  v9 = v1[7];
  v10 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v10);

  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197529A50);
  swift_beginAccess();
  sub_197413B20((v1 + 8), &v14);
  if (v15)
  {
    sub_1974028B8(&v14, &v16);
  }

  else
  {
    v17 = MEMORY[0x1E69E6158];
    *&v16 = 7104878;
    *(&v16 + 1) = 0xE300000000000000;
  }

  sub_19752235C();
  __swift_destroy_boxed_opaque_existential_1Tm_6(&v16);
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197529A70);
  swift_beginAccess();
  v11 = v1[14];
  *&v14 = v1[13];
  *(&v14 + 1) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
  v12 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v12);

  return v18;
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19745B2D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_19745B31C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Schema.Relationship.debugDescription.getter()
{
  v1 = v0;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197529C70);
  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x19A8DFF80](v2, v3);

  MEMORY[0x19A8DFF80](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  swift_beginAccess();
  v4 = v0[7];

  v6 = MEMORY[0x19A8E0100](v5, &type metadata for Schema.Relationship.Option);
  v8 = v7;

  MEMORY[0x19A8DFF80](v6, v8);

  MEMORY[0x19A8DFF80](0x5465756C6176202CLL, 0xED0000203A657079);
  swift_beginAccess();
  v9 = v1[8];
  v10 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v10);

  MEMORY[0x19A8DFF80](0x6E6974736564202CLL, 0xEF203A6E6F697461);
  swift_beginAccess();
  v11 = v1[9];
  v12 = v1[10];

  MEMORY[0x19A8DFF80](v11, v12);

  MEMORY[0x19A8DFF80](0x737265766E69202CLL, 0xEF203A656D614E65);
  swift_beginAccess();
  if (v1[13])
  {
    v13 = v1[12];
    v14 = v1[13];
  }

  else
  {
    v14 = 0xE400000000000000;
    v13 = 1818848800;
  }

  MEMORY[0x19A8DFF80](v13, v14);

  MEMORY[0x19A8DFF80](0xD000000000000012, 0x8000000197529C90);
  swift_beginAccess();
  v17 = v1[14];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BDB8, &unk_197534B60);
  v15 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v15);

  return 0;
}

uint64_t Schema.CompositeAttribute.debugDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19752F3D0;
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  sub_1975221EC();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197529B70);
  swift_beginAccess();
  v3 = v0[2];
  v4 = v0[3];

  MEMORY[0x19A8DFF80](v3, v4);

  MEMORY[0x19A8DFF80](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  swift_beginAccess();
  v5 = v0[6];

  v7 = MEMORY[0x19A8E0100](v6, &type metadata for Schema.Attribute.Option);
  v9 = v8;

  MEMORY[0x19A8DFF80](v7, v9);

  MEMORY[0x19A8DFF80](0x5465756C6176202CLL, 0xED0000203A657079);
  swift_beginAccess();
  v10 = v1[7];
  v11 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v11);

  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197529A50);
  swift_beginAccess();
  sub_197413B20((v1 + 8), &v22);
  if (v23)
  {
    sub_1974028B8(&v22, &v24);
  }

  else
  {
    v25 = MEMORY[0x1E69E6158];
    *&v24 = 7104878;
    *(&v24 + 1) = 0xE300000000000000;
  }

  sub_19752235C();
  __swift_destroy_boxed_opaque_existential_1Tm_6(&v24);
  v12 = v27;
  *(v2 + 32) = v26;
  *(v2 + 40) = v12;
  *(v2 + 48) = 0xD000000000000011;
  *(v2 + 56) = 0x8000000197529B90;
  result = swift_beginAccess();
  v14 = v1[16];
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_15:
    *&v22 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
    sub_19745BA20();
    v21 = sub_1975216CC();

    return v21;
  }

  result = sub_1975220EC();
  v15 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v15 >= 1)
  {

    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x19A8E0960](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      MEMORY[0x19A8DFF80](0x2020202020202020, 0xE800000000000000);
      v26 = v17;
      type metadata accessor for Schema.Attribute();
      sub_19752235C();
      v18 = v22;
      v20 = *(v2 + 16);
      v19 = *(v2 + 24);
      if (v20 >= v19 >> 1)
      {
        v2 = sub_19741E330((v19 > 1), v20 + 1, 1, v2);
      }

      ++v16;

      *(v2 + 16) = v20 + 1;
      *(v2 + 16 * v20 + 32) = v18;
    }

    while (v15 != v16);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_19745BA20()
{
  result = qword_1EAF2ACA0;
  if (!qword_1EAF2ACA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AE60, &qword_19752C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2ACA0);
  }

  return result;
}

uint64_t ModelContext.init(_:)(uint64_t a1)
{
  v1 = sub_19740B6EC(a1);

  return v1;
}

BOOL sub_19745BB80()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = (v1 + 64);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v2 += 40;
  }

  while (v4 != 1);
  return v3 != 0;
}

uint64_t Schema.entity<A>(for:)()
{
  v1 = *(v0 + 72);
  v2 = sub_1973F7AAC();
  if (*(v1 + 16))
  {
    v4 = sub_1973F4028(v2, v3);
    v6 = v5;

    if (v6)
    {
      if (*(*(*(v1 + 56) + 8 * v4) + 144))
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        if (ObjCClassFromMetadata == swift_getObjCClassFromMetadata())
        {
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_19745BD24()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t sub_19745BE24()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 96);
}

BOOL sub_19745BE7C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (swift_conformsToProtocol2())
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

void *ModelContainer.deinit()
{
  v1 = v0;
  v2 = sub_19752158C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1975215AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[8];

  if (_SD_is_mainqueue_context())
  {
    v15 = MEMORY[0x19A8E1370]();
    if (v14)
    {
      v16 = v15;
      v17 = MEMORY[0x19A8E1370]();
      sub_19740E3D0(1);
      sub_1974B033C();
      if (_SD_get_current_context_tsd())
      {
        v18 = swift_retain_n();

        v19 = sub_1974BEE44(v14);

        if (v19)
        {
        }
      }

      objc_autoreleasePoolPop(v17);
      v15 = v16;
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    sub_19744CC00(0, &qword_1ED7C6F98, 0x1E69E9610);
    v35 = v3;
    v34 = sub_197521E0C();
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    aBlock[4] = sub_19745C5E0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974529C8;
    aBlock[3] = &block_descriptor_2;
    v22 = _Block_copy(aBlock);

    sub_19752159C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_197413D04(&qword_1ED7C6FA8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2ADC0, &unk_19752D120);
    sub_19745C57C();
    sub_19752205C();
    v23 = v34;
    MEMORY[0x19A8E0540](0, v13, v7, v22);
    _Block_release(v22);

    (*(v35 + 8))(v7, v2);
    v20 = (*(v9 + 8))(v13, v8);
  }

  v24 = MEMORY[0x19A8E1370](v20);
  sub_19745C32C(v1);
  objc_autoreleasePoolPop(v24);

  v25 = v1[2];

  v26 = v1[5];

  v27 = v1[6];

  v28 = v1[7];

  v29 = v1[8];

  v30 = v1[9];

  v31 = v1[10];

  return v1;
}

uint64_t sub_19745C2C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t ModelContainer.__deallocating_deinit()
{
  ModelContainer.deinit();

  return swift_deallocClassInstance();
}

void sub_19745C32C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 64);
  *(a1 + 64) = 0;

  swift_beginAccess();
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v23 = MEMORY[0x1E69E7CC0];

    sub_19740D630(0, v6, 0);
    v7 = v23;
    v8 = v5 + 32;
    do
    {
      sub_197404790(v8, v21, &qword_1EAF2AF38, &qword_19752C6A8);
      *&v20[16] = v22;
      v19[1] = v21[1];
      *v20 = v21[2];
      v18 = *&v20[8];
      v19[0] = v21[0];
      sub_197414BEC(v19);
      v23 = v7;
      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        sub_19740D630((v9 > 1), v10 + 1, 1);
        v7 = v23;
      }

      v7[2] = v10 + 1;
      *&v7[2 * v10 + 4] = v18;
      v8 += 56;
      --v6;
    }

    while (v6);

    v2 = v1;
  }

  v11 = v7[2];
  if (v11)
  {
    v12 = v7 + 4;
    type metadata accessor for DefaultStore(0);
    do
    {
      v13 = *v12;
      if (swift_dynamicCastClass())
      {
        swift_unknownObjectRetain();
        sub_19745C5E8();
        swift_unknownObjectRelease();
      }

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED7CE678;
  v15 = MEMORY[0x1E69E7CC0];
  *&v21[0] = MEMORY[0x1E69E7CC0];
  v16 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v16 + 4);
  sub_19745CCBC(v14, v21, a1);
  os_unfair_lock_unlock(v16 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {

    v17 = *(a1 + 48);
    *(a1 + 48) = v15;
  }
}

unint64_t sub_19745C57C()
{
  result = qword_1ED7C6FA0;
  if (!qword_1ED7C6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2ADC0, &unk_19752D120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C6FA0);
  }

  return result;
}

void sub_19745C5E8()
{
  aBlock[12] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);

  os_unfair_lock_lock(v1 + 4);
  sub_19745C9C0(aBlock);
  os_unfair_lock_unlock(v1 + 4);
  v2 = aBlock[0];

  v3 = 1 << v2[32];
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 8);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = *(*(v2 + 7) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
      v10 = *(v9 + 24);

      sub_19744A4E8();

      v11 = *(v9 + 16);
      v12 = swift_allocObject();
      v12[2] = sub_1974715C8;
      v12[3] = v9;
      aBlock[4] = sub_1974715D8;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_197472418;
      aBlock[3] = &block_descriptor_113;
      v13 = _Block_copy(aBlock);

      v14 = v11;

      [v14 performBlockAndWait_];

      _Block_release(v13);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        break;
      }

      v5 &= v5 - 1;
      v15 = [objc_opt_self() defaultCenter];
      [v15 removeObserver_];

      v7 = v8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
  }

  while (1)
  {
LABEL_5:
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v8 + 64];
    ++v7;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v16 = *(v25 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store);
  if (v16)
  {
    v17 = *(v25 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
    v18 = v16;
    v19 = [v17 persistentStoreCoordinator];
    aBlock[0] = 0;
    v20 = [v19 removePersistentStore:v18 error:aBlock];

    if (v20)
    {
      v21 = aBlock[0];
    }

    else
    {
      v22 = aBlock[0];
      v23 = sub_1975211DC();

      swift_willThrow();
    }
  }

  else
  {
  }

  v24 = *MEMORY[0x1E69E9840];
}

void *sub_19745C9C0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_19745CA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = sub_19745CA90(MEMORY[0x1E69E7CC0]);
  v7 = *(a1 + v4);
  *(a1 + v4) = v6;

  *a2 = v5;
  return result;
}

unint64_t sub_19745CA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B9A0, &qword_19752FD38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2B458, &unk_19752FD40);
    v9 = sub_19752245C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1974047F8(v11, v7, &qword_1EAF2B9A0, &qword_19752FD38);
      result = sub_197404D0C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_19752135C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_19745CC78(uint64_t a1)
{
  v2 = MEMORY[0x19A8E1370]();
  if (a1)
  {
    v3 = v2;
    sub_1974B0664();
    v2 = v3;
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_19745CCBC(uint64_t a1, void *a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(*(a1 + 24) + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v7 - 1;
    v25 = a2;
    while (1)
    {
      if (v9)
      {
        v10 = v9 - 1;
      }

      else
      {
        if (v8)
        {
          return result;
        }

        v10 = 0;
        v8 = 1;
      }

      v11 = *(a1 + 24);
      if (v9 >= v11[2])
      {
        break;
      }

      sub_19740C00C(&v11[2 * v9 + 4], v24);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        MEMORY[0x19A8E00D0](v14);
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1975219FC();
        }

        sub_197521A4C();
        if (v13 == a3)
        {
          swift_beginAccess();
          v15 = *(a1 + 24);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a1 + 24) = v15;
          if ((result & 1) == 0)
          {
            result = sub_19751C0F0(v15);
            v15 = result;
          }

          if (v9 >= v15[2])
          {
            goto LABEL_26;
          }

          result = swift_weakAssign();
          *(a1 + 24) = v15;
          v16 = v15[2];
          if (v9 >= v16)
          {
            goto LABEL_27;
          }

          v17 = v10;
          v18 = v8;
          v19 = a3;
          v20 = v16 - 1;
          sub_19740FE8C(&v15[2 * v9 + 4]);
          swift_arrayInitWithTakeFrontToBack();
          v15[2] = v20;
          a3 = v19;
          v8 = v18;
          v10 = v17;
          *(a1 + 24) = v15;
          swift_endAccess();

          a2 = v25;
        }

        else
        {
        }
      }

      else
      {
        swift_beginAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 24) = v11;
        if ((result & 1) == 0)
        {
          result = sub_19751C0F0(v11);
          v11 = result;
          *(a1 + 24) = result;
        }

        v21 = v11[2];
        if (v9 >= v21)
        {
          goto LABEL_25;
        }

        v22 = v21 - 1;
        sub_19740FE8C(&v11[2 * v9 + 4]);
        a2 = v25;
        swift_arrayInitWithTakeFrontToBack();
        v11[2] = v22;
        *(a1 + 24) = v11;
        swift_endAccess();
      }

      result = sub_19740FE8C(v24);
      v9 = v10;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t DefaultStore.__deallocating_deinit()
{
  DefaultStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DefaultStore.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_19740C044(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL, &qword_1EAF2AE78, &qword_19752C290);

  sub_19740AB48(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration, type metadata accessor for ModelConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore__managedObjectContextFactory));
  v3 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);

  v4 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier);

  return v0;
}

void sub_19745D110(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *v3;
  v5 = v3[2];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a3];
  v7 = *(v4 + 88);
  v8 = *(v4 + 104);
  sub_197522B4C();
  v9 = sub_19752178C();

  [v5 setValue:v6 forKey:v9];
}

BOOL sub_19745D250(void *a1, uint64_t *a2)
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

uint64_t sub_19745D2E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19745D320()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19745D35C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1975217BC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_19745D388@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_19745D3FC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_19745D438()
{
  MEMORY[0x19A8E1BE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19745D474()
{
  sub_1974028C8(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19745D4C0()
{
  sub_1974028C8(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19745D504()
{
  sub_1974028C8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void sub_19745D560(uint64_t *a1)
{
  v1 = *a1;

  sub_197480890();
}

uint64_t sub_19745D58C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_19745D614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditingState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    Descriptor = type metadata accessor for FetchDescriptor();
    v13 = *(*(Descriptor - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, Descriptor);
  }
}

uint64_t sub_19745D708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EditingState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = *(a4 + 16);
    v13 = *(a4 + 24);
    Descriptor = type metadata accessor for FetchDescriptor();
    v15 = *(*(Descriptor - 8) + 56);
    v16 = a1 + *(a4 + 36);

    return v15(v16, a2, a2, Descriptor);
  }
}

uint64_t sub_19745D808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EditingState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v13 = *(a3 + 16);
    sub_19752139C();
    v10 = sub_197521F5C();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      return (*(v11 + 48))(a1 + *(a3 + 36), a2, v10);
    }

    else
    {
      v12 = *(a1 + *(a3 + 40));
      if (v12 >= 2)
      {
        return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_19745D95C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for EditingState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v13 = *(a4 + 16);
    sub_19752139C();
    result = sub_197521F5C();
    v12 = *(result - 8);
    if (*(v12 + 84) == a3)
    {
      return (*(v12 + 56))(a1 + *(a4 + 36), a2, a2, result);
    }

    else
    {
      *(a1 + *(a4 + 40)) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19745DAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19752135C();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19745DB6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19752135C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_19745DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  Descriptor = type metadata accessor for FetchDescriptor();
  v9 = *(Descriptor - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, Descriptor);
  }

  else
  {
    v12 = type metadata accessor for EditingState();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_19745DD1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  Descriptor = type metadata accessor for FetchDescriptor();
  v11 = *(Descriptor - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, Descriptor);
  }

  else
  {
    v14 = type metadata accessor for EditingState();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 40);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_19745DE24()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[8] != 1)
  {

    v2 = v0[9];

    v3 = v0[10];

    v4 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_19745DE8C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19745DEDC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

id sub_19745DF38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_19745DF90(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1974AFBF4(v2);
}

uint64_t sub_19745DFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 63);
  return result;
}

uint64_t sub_19745E008(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 63) = v2;
  return result;
}

uint64_t sub_19745E04C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  return sub_197404E70(v3 + v4, a2);
}

uint64_t sub_19745E0AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_19745E104(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_19740E114();
}

uint64_t sub_19745E16C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19745E1B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  type metadata accessor for _InitialBackingData();

  return swift_getWitnessTable();
}

uint64_t sub_19745E20C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19745E220(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_19745E238()
{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19745E274()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19745E2D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_19745E308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(a3 + 16);
  sub_19752139C();
  v6 = sub_197521F5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 40));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_19745E3D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = *(a4 + 16);
  sub_19752139C();
  result = sub_197521F5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 40)) = (a2 - 1);
  return result;
}

uint64_t sub_19745E494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19752132C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19745E550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_19752132C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19745E6C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_19745E6E0@<X0>(uint64_t a1@<X8>)
{
  result = HistoryChange.changedPersistentIdentifier.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_19745E728@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_19745E758(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Schema.Entity.superentity.setter(v4);
}

uint64_t sub_19745E784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_19745E7D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_19745E8DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_19745E92C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_19745E97C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_19745E9CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_19745EA14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_19745EA58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_197413B20(v3 + 64, a2);
}

uint64_t sub_19745EAA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_19745EAF0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

uint64_t sub_19745EB34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *a2 = *(v3 + 104);
  a2[1] = v4;
}

void sub_19745EB84(uint64_t a1@<X8>)
{
  strcpy(a1, "Schema.Index");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

__n128 sub_19745EBB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19745EBD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  result = sub_197505FEC();
  *a3 = result;
  return result;
}

uint64_t sub_19745EC5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  result = sub_197506028();
  *a3 = result;
  return result;
}

uint64_t sub_19745EDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745EE5C()
{
  swift_getWitnessTable();

  return sub_197521C3C();
}

uint64_t sub_19745EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745EF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745F00C()
{
  swift_getWitnessTable();

  return sub_197521C3C();
}

uint64_t sub_19745F090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_19745F114()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void _keyDestructor(uint64_t a1)
{
  if (a1)
  {
    _Destroy_SwiftDataContextThreadLocalState();
  }
}

uint64_t sub_19745F22C(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (qword_1ED7C74B0 != -1)
  {
    result = swift_once();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_beginAccess();
  v4 = off_1ED7C74B8;
  if (!*(off_1ED7C74B8 + 2))
  {
    return swift_endAccess();
  }

  v5 = sub_19749EDE0(v3);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = v4[7] + 16 * v5;
  v9 = *v7;
  v8 = *(v7 + 8);
  swift_endAccess();
  v10[0] = a2;

  v9(v10);
}

void sub_19745F314(void *a1, uint64_t a2)
{
  v5 = a1;
  v4 = MEMORY[0x19A8E1370]();
  sub_19745F22C(a1, a2);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_19745F384()
{
  v1 = v0;
  v2 = sub_19752158C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1975215AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = CFRunLoopGetMain();
  CFRunLoopObserverInvalidate(*(v0 + 16));
  CFRunLoopRemoveObserver(v14, *(v0 + 16), *(v0 + 24));
  v15 = *(v0 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = v15;
  if (pthread_main_np() == 1)
  {
    sub_19745F708(v17);
  }

  else
  {
    sub_19744CBB8(0, &qword_1ED7C6F98, 0x1E69E9610);
    v26 = v17;
    v25 = sub_197521E0C();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_19745FEC4;
    *(v18 + 24) = v16;
    aBlock[4] = sub_19745FECC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974529C8;
    aBlock[3] = &block_descriptor;
    v23 = _Block_copy(aBlock);
    v24 = v8;

    sub_19752159C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_19745FE3C(&qword_1ED7C6FA8, MEMORY[0x1E69E7F60]);
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2ADC0, &unk_19752D120);
    sub_19745C57C();
    sub_19752205C();
    v20 = v23;
    v21 = v25;
    MEMORY[0x19A8E0540](0, v13, v7, v23);

    _Block_release(v20);

    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v13, v24);
  }

  return v1;
}

uint64_t sub_19745F708(uint64_t a1)
{
  if (qword_1ED7C74B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_19749EDE0(a1);
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = off_1ED7C74B8;
    v9 = off_1ED7C74B8;
    off_1ED7C74B8 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747A224();
      v6 = v9;
    }

    v7 = *(v6[7] + 16 * v4 + 8);

    sub_19749F884(v4, v6);
    off_1ED7C74B8 = v6;
  }

  return swift_endAccess();
}

uint64_t sub_19745F7FC()
{
  sub_19745F384();

  return swift_deallocClassInstance();
}

uint64_t sub_19745F87C(CFOptionFlags a1, uint64_t a2, uint64_t a3)
{
  sub_19744CBB8(0, &qword_1ED7C8630, 0x1E69E58C0);
  v6 = [objc_opt_self() mainRunLoop];
  v7 = sub_197521F3C();

  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  result = CFRunLoopObserverCreate(0, a1, 1u, 0, sub_19745F314, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (qword_1ED7C74B0 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  swift_beginAccess();

  v10 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = off_1ED7C74B8;
  off_1ED7C74B8 = 0x8000000000000000;
  sub_19747C9E8(sub_1974602D0, v9, v10, isUniquelyReferenced_nonNull_native);

  off_1ED7C74B8 = v14;
  result = swift_endAccess();
  if (*MEMORY[0x1E695E8D0])
  {
    v12 = *MEMORY[0x1E695E8D0];
    v13 = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(v13, v10, v12);

    _s8ObserverCMa();
    result = swift_allocObject();
    *(result + 16) = v10;
    *(result + 24) = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_19745FA6C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_19752141C();
}

uint64_t sub_19745FAB8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_19752140C();
}

uint64_t sub_19745FB10()
{
  sub_197522A5C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_19752140C();
  return sub_197522A9C();
}

void *sub_19745FBA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_19745FBCC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_19745FC7C(uint64_t a1, id *a2)
{
  v3 = sub_1975217AC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_19745FCFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1975217BC();
  v2 = sub_19752178C();

  *a1 = v2;
  return result;
}

uint64_t sub_19745FD40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1975213FC();
}

uint64_t sub_19745FE3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19745FE84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_197506D08(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_19745FECC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
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

uint64_t sub_19745FF84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_19752178C();

  *a2 = v5;
  return result;
}

uint64_t sub_19745FFCC(uint64_t a1)
{
  v2 = sub_19745FE3C(&qword_1EAF2AE28, type metadata accessor for Name);
  v3 = sub_19745FE3C(&qword_1EAF2AE30, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_197460088(uint64_t a1)
{
  v2 = sub_19745FE3C(&qword_1EAF2AE38, type metadata accessor for NSValueTransformerName);
  v3 = sub_19745FE3C(&qword_1EAF2AE40, type metadata accessor for NSValueTransformerName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_197460144()
{
  v1 = *v0;
  v2 = sub_1975217BC();
  v3 = MEMORY[0x19A8DFFD0](v2);

  return v3;
}

uint64_t sub_197460180()
{
  v1 = *v0;
  sub_1975217BC();
  sub_19752180C();
}

uint64_t sub_1974601D4()
{
  v1 = *v0;
  sub_1975217BC();
  sub_197522A5C();
  sub_19752180C();
  v2 = sub_197522A9C();

  return v2;
}

uint64_t sub_197460248(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1975217BC();
  v6 = v5;
  if (v4 == sub_1975217BC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_19752282C();
  }

  return v9 & 1;
}

uint64_t sub_1974602D0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_197460344(uint64_t a1, int a2)
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

uint64_t sub_197460364(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1974603A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1974603C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t ModelConfiguration.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ModelConfiguration.groupAppContainerIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ModelConfiguration.cloudKitContainerIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ModelConfiguration() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ModelConfiguration.groupContainer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModelConfiguration() + 32);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
}

uint64_t ModelConfiguration.cloudKitDatabase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ModelConfiguration() + 36);
  v4 = *(v3 + 1);
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
}

uint64_t ModelConfiguration.schema.getter()
{
  v1 = *(v0 + *(type metadata accessor for ModelConfiguration() + 40));
}

uint64_t ModelConfiguration.schema.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModelConfiguration() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void static ModelConfiguration.GroupContainer.automatic.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static ModelConfiguration.GroupContainer.identifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t ModelConfiguration.init(isStoredInMemoryOnly:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ModelConfiguration();
  v14 = v13;
  v15 = v13[10];
  *(a2 + v13[15]) = 0;
  v16 = (a2 + v13[5]);
  *v16 = 0x746C7561666564;
  v16[1] = 0xE700000000000000;
  *(a2 + v15) = 0;
  *(a2 + v13[11]) = 1;
  v17 = a2 + v13[8];
  *v17 = 1;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  v18 = a2 + v13[9];
  *v18 = 1;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(a2 + v13[13]) = 0;
  v19 = v13[12];
  if (a1)
  {
    *(a2 + v19) = 1;
    *(a2 + v13[14]) = 0;
    sub_19752122C();
    v20 = (a2 + v14[6]);
    *v20 = 0;
    v20[1] = 0;
  }

  else
  {
    *(a2 + v19) = 0;
    *(a2 + v13[14]) = 1;
    v21 = &v12[*(v4 + 48)];
    v22 = &v12[*(v4 + 64)];
    LOWORD(v42) = 1;
    v43 = 0;
    v44 = 0;
    *v21 = sub_197461664(v12, &v42);
    v21[1] = v23;
    *v22 = v24;
    *(v22 + 1) = v25;
    sub_197462C38(v12, v9, &qword_1EAF2AE48, &unk_19752C0B0);
    v26 = *&v9[*(v4 + 48) + 8];

    v27 = *&v9[*(v4 + 64) + 8];

    v28 = sub_1975212CC();
    v29 = *(v28 - 8);
    (*(v29 + 32))(a2, v9, v28);
    v42 = 0x746C7561666564;
    v43 = 0xE700000000000000;
    MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
    sub_19752125C();

    sub_197462CA0(v12, v9, &qword_1EAF2AE48, &unk_19752C0B0);
    v30 = &v9[*(v4 + 48)];
    v31 = *v30;
    v32 = *(v30 + 1);
    v33 = *&v9[*(v4 + 64) + 8];

    v34 = (a2 + v14[6]);
    *v34 = v31;
    v34[1] = v32;
    (*(v29 + 8))(v9, v28);
  }

  v35 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  v37 = v36;

  result = 0;
  v39 = 0;
  if ((v37 & 1) == 0)
  {
    result = sub_1974A98BC();
  }

  v40 = (a2 + v14[7]);
  *v40 = result;
  v40[1] = v39;
  return result;
}

void ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, char *a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a4;
  v80 = a5;
  v77 = a1;
  v78 = a3;
  v76 = a8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v11 = *(*(v75 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v75, v12);
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v74 = &v72 - v16;
  v17 = *a6;
  v18 = a6[1];
  v20 = *(a6 + 1);
  v19 = *(a6 + 2);
  v21 = *a7;
  v22 = a7[1];
  v24 = *(a7 + 1);
  v23 = *(a7 + 2);
  v25 = type metadata accessor for ModelConfiguration();
  v26 = v18;
  v28 = v76;
  v27 = v77;
  v29 = v25;
  v30 = v23;
  *(v76 + v29[15]) = 0;
  if (a2)
  {
    v31 = v27;
  }

  else
  {
    v31 = 0x746C7561666564;
  }

  if (a2)
  {
    v32 = a2;
  }

  else
  {
    v32 = 0xE700000000000000;
  }

  v33 = v29[10];
  v34 = (v28 + v29[5]);
  *v34 = v31;
  v34[1] = v32;
  *(v28 + v33) = v78;
  LOBYTE(v34) = v79;
  *(v28 + v29[11]) = v80;
  v35 = v28 + v29[8];
  *v35 = v17;
  *(v35 + 1) = v26;
  *(v35 + 8) = v20;
  *(v35 + 16) = v19;
  v36 = v28 + v29[9];
  v80 = v21;
  *v36 = v21;
  *(v36 + 1) = v22;
  v78 = v24;
  *(v36 + 8) = v24;
  *(v36 + 16) = v30;
  *(v28 + v29[13]) = 0;
  v37 = v29[12];
  v81 = v30;
  if (v34)
  {
    v38 = v20;
    *(v28 + v37) = 1;
    *(v28 + v29[14]) = 0;

    sub_19752122C();
    v39 = (v28 + v29[6]);
    *v39 = 0;
    v39[1] = 0;
    if (v19)
    {
      v40 = v19;
      if (qword_1EAF2ACF8 != -1)
      {
        swift_once();
      }

      v41 = sub_19752157C();
      __swift_project_value_buffer(v41, qword_1EAF33E38);

      v42 = sub_19752155C();
      v43 = sub_197521DDC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v82 = v45;
        *v44 = 136315138;
        v46 = sub_197462310(v38, v40, &v82);

        *(v44 + 4) = v46;
        _os_log_impl(&dword_1973F2000, v42, v43, "An in-memory store cannot be used with a Group Container - ignoring provided identifier: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x19A8E1B50](v45, -1, -1);
        MEMORY[0x19A8E1B50](v44, -1, -1);
      }

      else
      {
      }

      if (!v80)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    *(v28 + v37) = 0;
    *(v28 + v29[14]) = 1;
    v48 = v74;
    v47 = v75;
    v49 = &v74[*(v75 + 48)];
    v50 = &v74[*(v75 + 64)];
    LOBYTE(v82) = v17;
    BYTE1(v82) = v26;
    v83 = v20;
    v84 = v19;
    v51 = v31;

    *v49 = sub_197461664(v48, &v82);
    v49[1] = v52;
    *v50 = v53;
    *(v50 + 1) = v54;
    v55 = v73;
    sub_197462C38(v48, v73, &qword_1EAF2AE48, &unk_19752C0B0);
    v56 = *(v55 + *(v47 + 48) + 8);

    v57 = *(v55 + *(v47 + 64) + 8);

    v58 = sub_1975212CC();
    v59 = *(v58 - 8);
    (*(v59 + 32))(v28, v55, v58);
    v82 = v51;
    v83 = v32;

    MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
    sub_19752125C();

    sub_197462CA0(v48, v55, &qword_1EAF2AE48, &unk_19752C0B0);
    v60 = (v55 + *(v47 + 48));
    v61 = *v60;
    v62 = v60[1];
    v63 = *(v55 + *(v47 + 64) + 8);

    v64 = (v28 + v29[6]);
    *v64 = v61;
    v64[1] = v62;
    (*(v59 + 8))(v55, v58);
  }

  if (!v80)
  {
LABEL_21:
    v71 = (v28 + v29[7]);
    *v71 = v78;
    if (v81)
    {
      v71[1] = v81;
    }

    else
    {
      v71[1] = 0;
    }

    return;
  }

LABEL_15:

  v65 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  v67 = v66;

  if (v67)
  {
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v68 = sub_1974A98BC();
  }

  v70 = (v28 + v29[7]);
  *v70 = v68;
  v70[1] = v69;
}

uint64_t ModelConfiguration.init(for:isStoredInMemoryOnly:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE48, &unk_19752C0B0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v44 - v13;
  *&v45 = 1;
  type metadata accessor for Schema();
  *(&v45 + 1) = 0;
  v46 = 0;
  swift_allocObject();
  v15 = Schema.init(_:version:)(a1, &v45);
  v16 = type metadata accessor for ModelConfiguration();
  v17 = v16;
  v18 = v16[10];
  *(a3 + v16[15]) = 0;
  v19 = (a3 + v16[5]);
  *v19 = 0x746C7561666564;
  v19[1] = 0xE700000000000000;
  *(a3 + v18) = v15;
  *(a3 + v16[11]) = 1;
  v20 = a3 + v16[8];
  *v20 = 1;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v21 = a3 + v16[9];
  *v21 = 1;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  *(a3 + v16[13]) = 0;
  v22 = v16[12];
  if (a2)
  {
    *(a3 + v22) = 1;
    *(a3 + v16[14]) = 0;
    sub_19752122C();
    v23 = (a3 + v17[6]);
    *v23 = 0;
    v23[1] = 0;
  }

  else
  {
    *(a3 + v22) = 0;
    *(a3 + v16[14]) = 1;
    v24 = &v14[*(v6 + 48)];
    v25 = &v14[*(v6 + 64)];
    LOWORD(v45) = 1;
    *(&v45 + 1) = 0;
    v46 = 0;
    *v24 = sub_197461664(v14, &v45);
    v24[1] = v26;
    *v25 = v27;
    *(v25 + 1) = v28;
    sub_197462C38(v14, v11, &qword_1EAF2AE48, &unk_19752C0B0);
    v29 = *&v11[*(v6 + 48) + 8];

    v30 = *&v11[*(v6 + 64) + 8];

    v31 = sub_1975212CC();
    v32 = *(v31 - 8);
    (*(v32 + 32))(a3, v11, v31);
    *&v45 = 0x746C7561666564;
    *(&v45 + 1) = 0xE700000000000000;
    MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
    sub_19752125C();

    sub_197462CA0(v14, v11, &qword_1EAF2AE48, &unk_19752C0B0);
    v33 = &v11[*(v6 + 48)];
    v34 = *v33;
    v35 = *(v33 + 1);
    v36 = *&v11[*(v6 + 64) + 8];

    v37 = (a3 + v17[6]);
    *v37 = v34;
    v37[1] = v35;
    (*(v32 + 8))(v11, v31);
  }

  v38 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  v40 = v39;

  result = 0;
  v42 = 0;
  if ((v40 & 1) == 0)
  {
    result = sub_1974A98BC();
  }

  v43 = (a3 + v17[7]);
  *v43 = result;
  v43[1] = v42;
  return result;
}

uint64_t sub_197461664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE70, &qword_19752C268);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v31[-v12 - 8];
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v31[-v16 - 8];
  v18 = *(a2 + 1);
  v19 = &v31[*(v15 + 48) - 8 - v16];
  v31[0] = *a2;
  v31[1] = v18;
  v32 = *(a2 + 8);
  *v19 = sub_1974A18AC(&v31[-v16 - 8], 0, v31);
  *(v19 + 1) = v20;
  v21 = [objc_opt_self() processInfo];
  sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
  LOBYTE(v19) = v22;

  if (v19)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1974A98BC();
  }

  sub_197462C38(v17, v13, &qword_1EAF2AE70, &qword_19752C268);
  v23 = *&v13[*(v4 + 48) + 8];

  v24 = sub_1975212CC();
  v25 = *(v24 - 8);
  (*(v25 + 32))(a1, v13, v24);
  sub_197462CA0(v17, v9, &qword_1EAF2AE70, &qword_19752C268);
  v26 = &v9[*(v4 + 48)];
  v27 = *v26;
  v28 = *(v26 + 1);
  (*(v25 + 8))(v9, v24);
  return v27;
}

uint64_t ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:isDocument:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unsigned __int8 *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v39 = *a6;
  v37 = a6[1];
  v15 = *(a6 + 2);
  v38 = *(a6 + 1);
  v16 = type metadata accessor for ModelConfiguration();
  v17 = v16;
  *(a8 + v16[15]) = 0;
  v18 = 0x746C7561666564;
  if (a2)
  {
    v18 = a1;
  }

  v19 = 0xE700000000000000;
  if (a2)
  {
    v19 = a2;
  }

  v20 = v16[10];
  v21 = (a8 + v16[5]);
  *v21 = v18;
  v21[1] = v19;
  *(a8 + v20) = a3;
  v22 = sub_1975212CC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a8, a4, v22);
  *(a8 + v17[14]) = 0;
  sub_19752128C();
  v24 = sub_19752188C();

  *(a8 + v17[12]) = v24 & 1;
  *(a8 + v17[11]) = a5;
  v25 = (a8 + v17[6]);
  *v25 = 0;
  v25[1] = 0;
  v26 = a8 + v17[8];
  *v26 = 256;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  if (a7)
  {
    (*(v23 + 8))(a4, v22);

    *(a8 + v17[13]) = 1;
    v28 = a8 + v17[9];
    *v28 = 256;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    v29 = (a8 + v17[7]);
LABEL_7:
    *v29 = 0;
    v29[1] = 0;
    return result;
  }

  *(a8 + v17[13]) = 0;
  v30 = a8 + v17[9];
  *v30 = v39;
  *(v30 + 1) = v37;
  *(v30 + 8) = v38;
  *(v30 + 16) = v15;
  if (v39)
  {
    v31 = [objc_opt_self() processInfo];
    sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
    v33 = v32;

    if (v33)
    {
      v34 = 0;
      v15 = 0;
    }

    else
    {
      v34 = sub_1974A98BC();
      v15 = v36;
    }

    result = (*(v23 + 8))(a4, v22);
    v29 = (a8 + v17[7]);
    *v29 = v34;
  }

  else
  {
    v35 = *(v23 + 8);

    result = v35(a4, v22);
    v29 = (a8 + v17[7]);
    if (!v15)
    {
      goto LABEL_7;
    }

    *v29 = v38;
  }

  v29[1] = v15;
  return result;
}

uint64_t ModelConfiguration.hash(into:)()
{
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);

  return sub_1975216BC();
}

uint64_t ModelConfiguration.hashValue.getter()
{
  sub_197522A5C();
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197461CC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1975212CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_197461D30()
{
  sub_197522A5C();
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t sub_197461DB8()
{
  sub_197522A5C();
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC8, MEMORY[0x1E6968FB0]);
  sub_1975216BC();
  return sub_197522A9C();
}

uint64_t ModelConfiguration.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19752C0A0;
  *(v1 + 32) = 0xD000000000000012;
  *(v1 + 40) = 0x800000019752C0A0;
  *v22 = 0x203A656D616ELL;
  *&v22[8] = 0xE600000000000000;
  v2 = type metadata accessor for ModelConfiguration();
  MEMORY[0x19A8DFF80](*(v0 + v2[5]), *(v0 + v2[5] + 8));
  *(v1 + 48) = 0x203A656D616ELL;
  *(v1 + 56) = *&v22[8];
  sub_1975212CC();
  sub_197415898(&qword_1EAF2ACC8, MEMORY[0x1E6968FB0]);
  v3 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v3);

  *(v1 + 64) = 0x203A6C7275;
  *(v1 + 72) = 0xE500000000000000;
  strcpy(v22, "allowsSave: ");
  v22[13] = 0;
  *&v22[14] = -5120;
  if (*(v0 + v2[11]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v2[11]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x19A8DFF80](v4, v5);

  v6 = *&v22[8];
  *(v1 + 80) = *v22;
  *(v1 + 88) = v6;
  sub_1975221EC();

  *v22 = 0xD000000000000016;
  *&v22[8] = 0x8000000197523850;
  if (*(v0 + v2[12]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v2[12]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x19A8DFF80](v7, v8);

  v9 = *&v22[8];
  *(v1 + 96) = *v22;
  *(v1 + 104) = v9;
  *v22 = 0;
  *&v22[8] = 0xE000000000000000;
  sub_1975221EC();
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD000000000000012, 0x8000000197523870);
  v10 = v0 + v2[9];
  v11 = *(v10 + 1);
  v22[0] = *v10;
  v22[1] = v11;
  *&v22[8] = *(v10 + 8);
  sub_19752235C();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  sub_1975221EC();

  *v22 = 0xD00000000000001DLL;
  *&v22[8] = 0x8000000197523890;
  v12 = (v0 + v2[7]);
  v13 = v12[1];
  v23 = *v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE58, &unk_19752F390);
  v14 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v14);

  *(v1 + 128) = 0xD00000000000001DLL;
  *(v1 + 136) = 0x8000000197523890;
  *v22 = 0;
  *&v22[8] = 0xE000000000000000;
  sub_1975221EC();
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x80000001975238B0);
  v15 = v0 + v2[8];
  v16 = *(v15 + 1);
  v22[0] = *v15;
  v22[1] = v16;
  *&v22[8] = *(v15 + 8);
  sub_19752235C();
  *(v1 + 144) = 0;
  *(v1 + 152) = 0xE000000000000000;
  sub_1975221EC();

  *v22 = 0xD00000000000001DLL;
  *&v22[8] = 0x80000001975238D0;
  v17 = (v0 + v2[6]);
  v18 = v17[1];
  v23 = *v17;

  v19 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v19);

  *(v1 + 160) = 0xD00000000000001DLL;
  *(v1 + 168) = 0x80000001975238D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE60, &qword_19752C0E0);
  sub_19745BA20();
  v20 = sub_1975216CC();

  return v20;
}

uint64_t sub_1974622B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t (*sub_1974622E8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_12;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_197462310(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1974623DC(v11, 0, 0, 1, a1, a2);
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
    sub_197404860(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1974623DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1974624E8(a5, a6);
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
    result = sub_19752227C();
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

uint64_t sub_1974624E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_197462534(a1, a2);
  sub_197462664(&unk_1F0BA51A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_197462534(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_197462750(v5, 0);
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

  result = sub_19752227C();
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
        v10 = sub_19752187C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_197462750(v10, 0);
        result = sub_1975221DC();
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

uint64_t sub_197462664(uint64_t result)
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

  result = sub_1974627C4(result, v12, 1, v3);
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

void *sub_197462750(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE68, &qword_19752C260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1974627C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE68, &qword_19752C260);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t _s9SwiftData18ModelConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1975212CC();
  sub_197415898(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0]);
  if ((sub_19752173C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = type metadata accessor for ModelConfiguration();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_29;
  }

  v10 = v4[10];
  v11 = *(a2 + v10);
  if (*(a1 + v10))
  {
    if (!v11)
    {
      goto LABEL_29;
    }

    v12 = *(a2 + v10);

    v14 = _s9SwiftData6SchemaC2eeoiySbAC_ACtFZ_0(v13, v11);

    if ((v14 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v11)
  {
    goto LABEL_29;
  }

  v15 = v4[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v19)
  {
    goto LABEL_29;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v25)
  {
    goto LABEL_29;
  }

  if (*(a1 + v4[12]) == *(a2 + v4[12]))
  {
    v26 = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
    return v26 & 1;
  }

LABEL_29:
  v26 = 0;
  return v26 & 1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_197462B78(uint64_t a1, unsigned int a2)
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

uint64_t sub_197462BD4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_197462C38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_197462CA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_197462D20()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1EAF33E08);
  __swift_project_value_buffer(v0, qword_1EAF33E08);
  return sub_19752156C();
}

uint64_t sub_197462DA0()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1EAF33E20);
  __swift_project_value_buffer(v0, qword_1EAF33E20);
  return sub_19752156C();
}

uint64_t sub_197462E74()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1EAF33E38);
  __swift_project_value_buffer(v0, qword_1EAF33E38);
  return sub_19752156C();
}

uint64_t sub_197462F64()
{
  v0 = sub_19752157C();
  __swift_allocate_value_buffer(v0, qword_1ED7CE5A0);
  __swift_project_value_buffer(v0, qword_1ED7CE5A0);
  return sub_19752156C();
}

uint64_t DefaultStore.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void sub_197463070(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197471480(&qword_1ED7C6D40, &qword_1ED7C9B98, 0x1E695D6D8);
    sub_197521C1C();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_19752212C())
        {
          break;
        }

        sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_1973FF47C();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DefaultStore.erase()()
{
  v2 = sub_197521DFC();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27 - v14;
  v16 = sub_1975212CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19745C5E8();
  v22 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription);
  if (!v22)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_7:
    sub_19740C044(v15, &qword_1EAF2AE78, &qword_19752C290);
    return;
  }

  v28 = v2;
  v23 = [v22 URL];
  if (v23)
  {
    v24 = v23;
    sub_19752127C();

    (*(v17 + 56))(v12, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v12, 1, 1, v16);
  }

  sub_19746F6B4(v12, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  (*(v17 + 32))(v21, v15, v16);
  v25 = [*(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
  sub_197521DEC();
  sub_197521EBC();
  if (v1)
  {
  }

  v26 = v28;

  (*(v29 + 8))(v6, v26);
  (*(v17 + 8))(v21, v16);
}

uint64_t sub_1974635F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_197463644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_19752135C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v10 + 16);
  v39 = a1;
  v15(v14, a1, v9);
  v16 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v43 = a2;
  v44 = v14;
  v40 = sub_1974722A8;
  v41 = &v42;

  os_unfair_lock_lock(v16 + 4);
  sub_197472328(v46);
  if (v4)
  {
    os_unfair_lock_unlock(v16 + 4);
    __break(1u);
    goto LABEL_11;
  }

  v38 = 0;
  os_unfair_lock_unlock(v16 + 4);
  v17 = v46[0];

  if (!v17)
  {
LABEL_11:
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v45 = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v33 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v33);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v18 = *(v17 + 16);
  v19 = (v39 + *(type metadata accessor for EditingState() + 20));
  v20 = v19[1];
  if (v20)
  {
    v37 = a3;
    v21 = a4;
    v22 = v10;
    v23 = a2;
    v24 = v14;
    v25 = v9;
    v26 = *v19;
    v27 = v18;
    v9 = v25;
    v14 = v24;
    a2 = v23;
    v10 = v22;
    a4 = v21;
    a3 = v37;
    v20 = sub_19752178C();
  }

  else
  {
    v28 = v18;
  }

  [v18 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v29, v30);
  v31 = v38;
  *(&v36 - 6) = v39;
  *(&v36 - 5) = a2;
  *(&v36 - 4) = v18;
  *(&v36 - 3) = a3;
  v34 = a4;
  v35 = v17;
  sub_197521E5C();
  if (v31)
  {

    return (*(v10 + 8))(v14, v9);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
    return v46[3];
  }
}

uint64_t sub_197463A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_19752135C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v7);
  v13 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v36 = a2;
  v37 = v12;
  v33 = sub_197472290;
  v34 = &v35;

  os_unfair_lock_lock(v13 + 4);
  sub_197472310(v39);
  if (v4)
  {
    os_unfair_lock_unlock(v13 + 4);
    __break(1u);
    goto LABEL_8;
  }

  os_unfair_lock_unlock(v13 + 4);
  v14 = v39[0];

  if (!v14)
  {
LABEL_8:
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v38 = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v26 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v26);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v32 = v7;
  v15 = *(v14 + 16);
  v16 = (a1 + *(type metadata accessor for EditingState() + 20));
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = v15;
    v17 = sub_19752178C();
  }

  else
  {
    v20 = v15;
  }

  [v15 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v29 - 6) = a1;
  *(&v29 - 5) = a2;
  v24 = v30;
  v23 = v31;
  *(&v29 - 4) = v15;
  *(&v29 - 3) = v24;
  v27 = v23;
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  sub_197521E5C();

  (*(v8 + 8))(v12, v32);
  return v39[3];
}

uint64_t sub_197463DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v7 = sub_19752135C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 16);
  v37 = a1;
  v13(v12, a1, v7);
  v14 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v41 = a2;
  v42 = v12;
  v38 = sub_197472278;
  v39 = &v40;

  os_unfair_lock_lock(v14 + 4);
  sub_1974722F8(v43);
  if (v4)
  {
    os_unfair_lock_unlock(v14 + 4);
    __break(1u);
    goto LABEL_8;
  }

  os_unfair_lock_unlock(v14 + 4);
  v15 = v43[0];

  if (!v15)
  {
LABEL_8:
    v43[0] = 0;
    v43[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v43[3] = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v31 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v31);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v16 = *(v15 + 16);
  v17 = (v37 + *(type metadata accessor for EditingState() + 20));
  v18 = v17[1];
  if (v18)
  {
    v34 = 0;
    v19 = v8;
    v20 = a2;
    v21 = v12;
    v22 = v7;
    v23 = *v17;
    v24 = v16;
    v7 = v22;
    v12 = v21;
    a2 = v20;
    v8 = v19;
    v18 = sub_19752178C();
  }

  else
  {
    v25 = v16;
  }

  [v16 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v26, v27);
  *(&v34 - 6) = v37;
  *(&v34 - 5) = a2;
  v29 = v35;
  v28 = v36;
  *(&v34 - 4) = v16;
  *(&v34 - 3) = v29;
  v32 = v28;
  v33 = v15;
  sub_197521E5C();

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_197464164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v7 = sub_19752135C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v7);
  v13 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v36 = a2;
  v37 = v12;
  v33 = sub_197471334;
  v34 = &v35;

  os_unfair_lock_lock(v13 + 4);
  sub_1974722E0(v39);
  if (v4)
  {
    os_unfair_lock_unlock(v13 + 4);
    __break(1u);
    goto LABEL_8;
  }

  os_unfair_lock_unlock(v13 + 4);
  v14 = v39[0];

  if (!v14)
  {
LABEL_8:
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v38 = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v26 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v26);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v32 = v7;
  v15 = *(v14 + 16);
  v16 = (a1 + *(type metadata accessor for EditingState() + 20));
  v17 = v16[1];
  if (v17)
  {
    v18 = *v16;
    v19 = v15;
    v17 = sub_19752178C();
  }

  else
  {
    v20 = v15;
  }

  [v15 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v29 - 6) = a1;
  *(&v29 - 5) = a2;
  v24 = v30;
  v23 = v31;
  *(&v29 - 4) = v15;
  *(&v29 - 3) = v24;
  v27 = v23;
  v28 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF50, &unk_19752C6C0);
  sub_197521E5C();

  (*(v8 + 8))(v12, v32);
  return v39[3];
}

uint64_t sub_197464510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v31 = a3;
  v33 = a7;
  v34 = a5;
  v32 = a4;
  v10 = sub_19752135C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10);
  v16 = *(a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v39 = a2;
  v40 = v15;
  v36 = sub_1974722C0;
  v37 = &v38;

  os_unfair_lock_lock(v16 + 4);
  sub_197472340(v41);
  if (v7)
  {
    os_unfair_lock_unlock(v16 + 4);
    __break(1u);
    goto LABEL_8;
  }

  os_unfair_lock_unlock(v16 + 4);
  v17 = v41[0];

  if (!v17)
  {
LABEL_8:
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000069, 0x8000000197524390);
    v41[3] = a2;
    type metadata accessor for DefaultStore(0);
    sub_19752235C();
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8]);
    v28 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v28);

    MEMORY[0x19A8DFF80](0x746F6E2064696420, 0xE90000000000002ELL);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v35 = v10;
  v18 = *(v17 + 16);
  v19 = (a1 + *(type metadata accessor for EditingState() + 20));
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = v18;
    v20 = sub_19752178C();
  }

  else
  {
    v23 = v18;
  }

  [v18 setTransactionAuthor_];

  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v30 - 8) = v34;
  *(&v30 - 7) = a1;
  *(&v30 - 6) = a2;
  *(&v30 - 5) = v18;
  v26 = v32;
  *(&v30 - 4) = v31;
  *(&v30 - 3) = v26;
  v29 = v17;
  sub_197521E5C();

  return (*(v11 + 8))(v15, v35);
}

void *sub_1974648B8(uint64_t a1, uint64_t a2, void *a3, void *(*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState() + 24)) != 1)
  {
    goto LABEL_7;
  }

  v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
  if (*(v11 + *(type metadata accessor for ModelConfiguration() + 48)) != 1)
  {
    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v30 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v30];

      if ((v14 & 1) == 0)
      {
        v29 = v30;
        sub_1975211DC();

        result = swift_willThrow();
LABEL_14:
        v28 = *MEMORY[0x1E69E9840];
        return result;
      }

      v15 = v30;
    }

LABEL_7:
    result = a4(v32, a6);
    if (!v6)
    {
      v17 = [a3 queryGenerationToken];
      [a3 reset];
      if (v17)
      {
        v30 = 0;
        if ([a3 setQueryGenerationFromToken:v17 error:&v30])
        {
          v18 = v30;
        }

        else
        {
          v19 = v30;
          v20 = sub_1975211DC();

          swift_willThrow();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_19752C280;
          v30 = 0;
          v31 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
          v22 = [v17 description];
          v23 = sub_1975217BC();
          v25 = v24;

          MEMORY[0x19A8DFF80](v23, v25);

          MEMORY[0x19A8DFF80](10, 0xE100000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
          sub_19752235C();
          v26 = v30;
          v27 = v31;
          *(v21 + 56) = MEMORY[0x1E69E6158];
          *(v21 + 32) = v26;
          *(v21 + 40) = v27;
          sub_197522A3C();
        }
      }

      result = v32[0];
    }

    goto LABEL_14;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_197464C98(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState() + 24)) != 1)
  {
    goto LABEL_7;
  }

  v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
  if (*(v11 + *(type metadata accessor for ModelConfiguration() + 48)) != 1)
  {
    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v29 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v29];

      if ((v14 & 1) == 0)
      {
        v27 = v29;
        sub_1975211DC();

        swift_willThrow();
LABEL_14:
        v28 = *MEMORY[0x1E69E9840];
        return;
      }

      v15 = v29;
    }

LABEL_7:
    a4(a6);
    if (!v6)
    {
      v16 = [a3 queryGenerationToken];
      [a3 reset];
      if (v16)
      {
        v29 = 0;
        if ([a3 setQueryGenerationFromToken:v16 error:&v29])
        {
          v17 = v29;
        }

        else
        {
          v18 = v29;
          v19 = sub_1975211DC();

          swift_willThrow();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_19752C280;
          v29 = 0;
          v30 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
          v21 = [v16 description];
          v22 = sub_1975217BC();
          v24 = v23;

          MEMORY[0x19A8DFF80](v22, v24);

          MEMORY[0x19A8DFF80](10, 0xE100000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
          sub_19752235C();
          v25 = v29;
          v26 = v30;
          *(v20 + 56) = MEMORY[0x1E69E6158];
          *(v20 + 32) = v25;
          *(v20 + 40) = v26;
          sub_197522A3C();
        }
      }
    }

    goto LABEL_14;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
}

void *sub_19746506C(uint64_t a1, uint64_t a2, void *a3, void *(*a4)(void *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + *(type metadata accessor for EditingState() + 24)) != 1)
  {
    goto LABEL_7;
  }

  v11 = a2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
  if (*(v11 + *(type metadata accessor for ModelConfiguration() + 48)) != 1)
  {
    v12 = [a3 queryGenerationToken];
    if (v12)
    {
    }

    else
    {
      v13 = [objc_opt_self() currentQueryGenerationToken];
      v30 = 0;
      v14 = [a3 setQueryGenerationFromToken:v13 error:&v30];

      if ((v14 & 1) == 0)
      {
        v29 = v30;
        sub_1975211DC();

        result = swift_willThrow();
LABEL_14:
        v28 = *MEMORY[0x1E69E9840];
        return result;
      }

      v15 = v30;
    }

LABEL_7:
    result = a4(v32, a6);
    if (!v6)
    {
      v17 = [a3 queryGenerationToken];
      [a3 reset];
      if (v17)
      {
        v30 = 0;
        if ([a3 setQueryGenerationFromToken:v17 error:&v30])
        {
          v18 = v30;
        }

        else
        {
          v19 = v30;
          v20 = sub_1975211DC();

          swift_willThrow();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_19752C280;
          v30 = 0;
          v31 = 0xE000000000000000;
          sub_1975221EC();
          MEMORY[0x19A8DFF80](0xD000000000000036, 0x8000000197524400);
          v22 = [v17 description];
          v23 = sub_1975217BC();
          v25 = v24;

          MEMORY[0x19A8DFF80](v23, v25);

          MEMORY[0x19A8DFF80](10, 0xE100000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
          sub_19752235C();
          v26 = v30;
          v27 = v31;
          *(v21 + 56) = MEMORY[0x1E69E6158];
          *(v21 + 32) = v26;
          *(v21 + 40) = v27;
          sub_197522A3C();
        }
      }

      result = v32[0];
    }

    goto LABEL_14;
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000005BLL, 0x8000000197524440);
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}