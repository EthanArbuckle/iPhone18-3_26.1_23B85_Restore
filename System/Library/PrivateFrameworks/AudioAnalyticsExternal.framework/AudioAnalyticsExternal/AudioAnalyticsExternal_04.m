uint64_t sub_223A19F58()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_223A19FC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-v5];
  sub_223A20B70();
  sub_223A20A30();
  *(v0 + 16) = sub_223A20B60();
  v17[15] = 0;
  sub_223A20610();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DE0, &unk_223A24660);
  v8 = *(v7 + 52);
  v9 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v11 = MEMORY[0x277D841D0];
  v12 = *(v3 + 32);
  v12(v10 + *(*v10 + *MEMORY[0x277D841D0] + 16), v6, v2);
  *(v0 + 24) = v10;
  v17[14] = 0;
  sub_223A20610();
  v13 = *(v7 + 52);
  v14 = (*(v7 + 48) + 3) & 0x1FFFFFFFCLL;
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v12(v15 + *(*v15 + *v11 + 16), v6, v2);
  *(v1 + 32) = v15;
  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_223A1A2D8()
{
  sub_223A1A3B0(319, &qword_281333708);
  if (v0 <= 0x3F)
  {
    sub_223A1A3B0(319, &qword_2813344B8);
    if (v1 <= 0x3F)
    {
      sub_223A1A3B0(319, &qword_281333710);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_223A1A3B0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_223A20600();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_223A1A424()
{
  sub_223A1A3B0(319, &qword_2813344B8);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_223A1A4B0()
{
  v0 = *(type metadata accessor for TailspinOptions(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  return v2;
}

uint64_t sub_223A1A504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  return v1;
}

uint64_t sub_223A1A540()
{
  v1 = v0;
  sub_223A21700();
  MEMORY[0x223DF0390](0xD000000000000015, 0x8000000223A26BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  if (v19)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v19)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v2, v3);

  MEMORY[0x223DF0390](0xD00000000000001ALL, 0x8000000223A26BE0);
  v4 = type metadata accessor for TailspinOptions(0);
  v5 = v0 + v4[5];
  sub_223A205F0();
  if (v19)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v19)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v6, v7);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A26C00);
  v8 = v1 + v4[6];
  sub_223A205F0();
  if (v19)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v19)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v9, v10);

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A26C20);
  if (*(v1 + v4[7]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v1 + v4[7]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v11, v12);

  MEMORY[0x223DF0390](0xD000000000000021, 0x8000000223A26C40);
  if (*(v1 + v4[8]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v4[8]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v13, v14);

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A26C70);
  v15 = v1 + v4[9];
  sub_223A205F0();
  if (v19)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v19)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v16, v17);

  return 0;
}

uint64_t sub_223A1A7C8()
{
  v1 = v0;
  sub_223A21700();
  MEMORY[0x223DF0390](0xD000000000000011, 0x8000000223A26B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  sub_223A205F0();
  v2 = sub_223A218E0();
  MEMORY[0x223DF0390](v2);

  MEMORY[0x223DF0390](0xD000000000000018, 0x8000000223A26B20);
  v3 = type metadata accessor for OverloadOptions(0);
  v4 = v0 + v3[5];
  sub_223A205F0();
  v5 = sub_223A218E0();
  MEMORY[0x223DF0390](v5);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A26B40);
  v6 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  if (v15)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v15)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v7, v8);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A26B60);
  v9 = v3[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  sub_223A205F0();
  MEMORY[0x223DF0390]();

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A26B80);
  v10 = v1 + v3[8];
  sub_223A205F0();
  MEMORY[0x223DF0390]();

  MEMORY[0x223DF0390](0xD000000000000015, 0x8000000223A26BA0);
  v11 = v1 + v3[9];
  sub_223A205F0();
  if (v15)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v15)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v12, v13);

  return 0;
}

uint64_t sub_223A1AAA0()
{
  sub_223A20610();
  v0 = type metadata accessor for OverloadOptions(0);
  v1 = v0[5];
  sub_223A20610();
  v2 = v0[6];
  sub_223A20610();
  v3 = v0[7];
  sub_223A20610();
  v4 = v0[8];
  sub_223A20610();
  v5 = v0[9];
  return sub_223A20610();
}

uint64_t sub_223A1AC48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_223A1ACA4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_223A1AD18(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223A1AD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_223A1ADE8@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v3;
  return result;
}

char *TailspinWorker.__allocating_init(with:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return TailspinWorker.init(with:)(a1);
}

uint64_t static TailspinWorker.initialize(config:)()
{
  v0 = sub_223A20860();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A20BE0();
  if (*(v5 + 16))
  {
    (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v6 = sub_223A20820();
    (*(v1 + 8))(v4, v0);
  }

  else
  {

    v6 = 0;
  }

  swift_beginAccess();
  qword_281334130 = v6;
}

Swift::Bool __swiftcall TailspinWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

void TailspinWorker.process(message:)(uint64_t a1)
{
  v4 = sub_223A21040();
  v148 = *(v4 - 8);
  v149 = v4;
  v5 = *(v148 + 64);
  MEMORY[0x28223BE20](v4);
  v146 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_223A21090();
  v145 = *(v147 - 8);
  v7 = *(v145 + 64);
  MEMORY[0x28223BE20](v147);
  v144 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223A20D20();
  v142 = *(v9 - 8);
  v143 = v9;
  v10 = *(v142 + 64);
  MEMORY[0x28223BE20](v9);
  v141 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DE8, &unk_223A24898);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v129 - v13;
  v15 = sub_223A20850();
  v152 = *(v15 - 8);
  v153 = v15;
  v16 = *(v152 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v150 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v129 - v19;
  v21 = sub_223A20680();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = v1;
  if (sub_223A1BFD8())
  {
    v140 = v2;
    v26 = sub_223A20C40();
    if (*(v26 + 16) && (v27 = sub_2239CDC74(0x79745F6575737369, 0xEA00000000006570), (v28 & 1) != 0))
    {
      (*(v22 + 16))(v25, *(v26 + 56) + *(v22 + 72) * v27, v21);

      if ((*(v22 + 88))(v25, v21) == *MEMORY[0x277CEF860])
      {
        (*(v22 + 96))(v25, v21);
        v30 = *v25;
        v29 = v25[1];

        sub_223A20830();
        v32 = v152;
        v31 = v153;
        if ((*(v152 + 48))(v14, 1, v153) == 1)
        {
          sub_2239CDCEC(v14, &qword_27D0A4DE8, &unk_223A24898);

          v33 = sub_223A20FB0();
          v34 = sub_223A21500();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = v29;
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v38 = v30;
            v39 = v37;
            aBlock[0] = v37;
            *v36 = 136380675;
            v40 = sub_2239E1910(v38, v35, aBlock);

            *(v36 + 4) = v40;
            _os_log_impl(&dword_2239C7000, v33, v34, "Unrecognized issueType. { issueType = %{private}s }", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v39);
            MEMORY[0x223DF1300](v39, -1, -1);
            MEMORY[0x223DF1300](v36, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          *&v139 = v30;
          v138 = a1;
          v41 = v20;
          (*(v32 + 32))(v20, v14, v31);
          v42 = sub_223A1C420();
          if (*(v42 + 16) && (v43 = sub_2239F6CB8(v20), (v44 & 1) != 0))
          {
            v45 = v43;

            v139 = *(*(v42 + 56) + 16 * v45);
            v46 = v139;
            swift_unknownObjectRetain();

            ObjectType = swift_getObjectType();
            v48 = *(&v139 + 1);
            v49 = *(*(&v139 + 1) + 24);
            v50 = (v49)(ObjectType, *(&v139 + 1));
            if ((v50 & 0x100000000) != 0 || (v51 = *(v48 + 32), v137 = v50, v52 = *(v51(ObjectType, v48) + 16), , , sub_223A20F10(), , LODWORD(aBlock[0]) <= v137))
            {
              sub_223A21410();
              v77 = v76;
              v137 = *(v48 + 32);
              v78 = v137(ObjectType, v48);
              v79 = *(v78 + 24);
              v80 = *(v78 + 32);

              v81 = 0.0;
              if (!v80)
              {
                v81 = v79;
              }

              if (v49(ObjectType, v48) <= v77 - v81 && ((*(v48 + 16))(v138, &v151[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session], ObjectType, v48) & 1) != 0)
              {
                v82 = v48;
                v83 = ObjectType;
                swift_unknownObjectRetain();
                v84 = sub_223A20FB0();
                v85 = sub_223A21500();
                swift_unknownObjectRelease();
                if (os_log_type_enabled(v84, v85))
                {
                  v86 = swift_slowAlloc();
                  v133 = v86;
                  v135 = swift_slowAlloc();
                  aBlock[0] = v135;
                  *v86 = 136380675;
                  v87 = *(v82 + 56);
                  v88 = v150;
                  LODWORD(v134) = v85;
                  v87(v83, v82);
                  v89 = sub_223A20840();
                  v136 = v82;
                  v91 = v90;
                  (*(v152 + 8))(v88, v153);
                  v92 = sub_2239E1910(v89, v91, aBlock);
                  v82 = v136;

                  v93 = v133;
                  *(v133 + 4) = v92;
                  v94 = v93;
                  _os_log_impl(&dword_2239C7000, v84, v134, "Preconditions met. Submitting tailspin request. { case=%{private}s }", v93, 0xCu);
                  v95 = v135;
                  __swift_destroy_boxed_opaque_existential_0(v135);
                  MEMORY[0x223DF1300](v95, -1, -1);
                  MEMORY[0x223DF1300](v94, -1, -1);
                }

                v96 = v137(v83, v82);
                sub_223A21410();
                *(v96 + 24) = v97;
                *(v96 + 32) = 0;

                v98 = v83;
                v99 = v138;
                v133 = sub_223A1C484(v138, v41);
                v132 = v100;
                v136 = v41;
                if (qword_281333380 != -1)
                {
                  swift_once();
                }

                v101 = qword_281335A60;
                v150 = qword_281335A60;
                v135 = (*(v82 + 64))(v98, v82);
                v134 = v102;
                v137 = v103;
                v131 = v104;
                v130 = *&v151[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_requestQueue];
                v129 = swift_allocObject();
                *(v129 + 16) = v139;
                *&v139 = *(v101 + 56);
                v105 = v141;
                v106 = v142;
                v107 = v143;
                (*(v142 + 16))(v141, v99, v143);
                v108 = (*(v106 + 80) + 24) & ~*(v106 + 80);
                v109 = (v10 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
                v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF8;
                v111 = (v110 + 39) & 0xFFFFFFFFFFFFFFF8;
                v112 = swift_allocObject();
                v151 = v46;
                v113 = v112;
                *(v112 + 16) = v150;
                (*(v106 + 32))(v112 + v108, v105, v107);
                v114 = (v113 + v109);
                v115 = v132;
                *v114 = v133;
                v114[1] = v115;
                v116 = (v113 + v110);
                v117 = v135;
                v118 = v134;
                *v116 = v135;
                v116[1] = v118;
                v119 = v137;
                v120 = v131;
                v116[2] = v137;
                v116[3] = v120;
                v121 = v130;
                *(v113 + v111) = v130;
                v122 = (v113 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8));
                v123 = v129;
                *v122 = sub_223A1D680;
                v122[1] = v123;
                aBlock[4] = sub_223A1D688;
                aBlock[5] = v113;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_2239EC158;
                aBlock[3] = &block_descriptor_5;
                v124 = _Block_copy(aBlock);
                swift_unknownObjectRetain();

                sub_2239E9D54(v117);
                sub_2239E9D54(v119);
                v125 = v121;

                v126 = v144;
                sub_223A21050();
                aBlock[10] = MEMORY[0x277D84F90];
                sub_2239CA260(&qword_27D0A48C8, MEMORY[0x277D85198]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
                sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
                v127 = v146;
                v128 = v149;
                sub_223A21640();
                MEMORY[0x223DF0640](0, v126, v127, v124);
                _Block_release(v124);

                sub_2239E9D64(v135);
                sub_2239E9D64(v137);
                swift_unknownObjectRelease();
                (*(v148 + 8))(v127, v128);
                (*(v145 + 8))(v126, v147);
                (*(v152 + 8))(v136, v153);
              }

              else
              {
                (*(v152 + 8))(v41, v153);
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v53 = v48;
              swift_unknownObjectRetain();
              v54 = sub_223A20FB0();
              v55 = sub_223A21500();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                v136 = v41;
                v57 = v56;
                v151 = swift_slowAlloc();
                aBlock[0] = v151;
                *v57 = 136380931;
                v58 = v53;
                v59 = *(v53 + 56);
                v60 = v150;
                v59(ObjectType, v58);
                v61 = sub_223A20840();
                v63 = v62;
                v64 = *(v32 + 8);
                v65 = v60;
                v66 = v153;
                v64(v65, v153);
                v67 = sub_2239E1910(v61, v63, aBlock);

                *(v57 + 4) = v67;
                *(v57 + 12) = 1024;
                *(v57 + 14) = v137;
                _os_log_impl(&dword_2239C7000, v54, v55, "TailspinCase limited by maxNumSuccesfulRequests. { case=%{private}s, maxNumSuccesfulRequests=%u }", v57, 0x12u);
                v68 = v151;
                __swift_destroy_boxed_opaque_existential_0(v151);
                MEMORY[0x223DF1300](v68, -1, -1);
                MEMORY[0x223DF1300](v57, -1, -1);
                swift_unknownObjectRelease();

                v64(v136, v66);
              }

              else
              {

                swift_unknownObjectRelease();
                (*(v32 + 8))(v41, v153);
              }
            }
          }

          else
          {

            v69 = sub_223A20FB0();
            v70 = sub_223A21500();

            if (os_log_type_enabled(v69, v70))
            {
              v71 = v29;
              v72 = swift_slowAlloc();
              v73 = v41;
              v74 = swift_slowAlloc();
              aBlock[0] = v74;
              *v72 = 136380675;
              v75 = sub_2239E1910(v139, v71, aBlock);

              *(v72 + 4) = v75;
              _os_log_impl(&dword_2239C7000, v69, v70, "TailspinCase for this issue is not enabled. { issueType=%{private}s }", v72, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v74);
              MEMORY[0x223DF1300](v74, -1, -1);
              MEMORY[0x223DF1300](v72, -1, -1);

              (*(v32 + 8))(v73, v31);
            }

            else
            {

              (*(v32 + 8))(v41, v31);
            }
          }
        }
      }

      else
      {
        (*(v22 + 8))(v25, v21);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_223A1BFD8()
{
  v1 = type metadata accessor for TailspinOptions(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A20E00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223A20E10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A20CC0() != 7 || sub_223A20C20() != 6)
  {
    return 0;
  }

  v26 = v4;
  v27 = v1;
  (*(v11 + 104))(v14, *MEMORY[0x277CEFA20], v10);
  sub_223A20DF0();
  sub_223A20DC0();
  sub_223A20DD0();
  sub_223A20DE0();
  sub_223A20DB0();
  sub_223A20BA0();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  if ((sub_223A1C8EC() & 1) == 0)
  {
    v20 = v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions;
    swift_beginAccess();
    v21 = v27;
    if (*(v20 + *(v27 + 28)) != 1)
    {
      return 1;
    }

    v22 = v26;
    sub_223A1E328(v20, v26);
    v23 = *(v21 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
    sub_223A205F0();
    sub_2239CC9A8(v22);
    if (v28 & 1) != 0 || (*(v20 + *(v21 + 32)))
    {
      return 1;
    }

    v15 = sub_223A20FB0();
    v16 = sub_223A214C0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v25 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session + 24));
      *(v17 + 4) = sub_223A20950();

      v19 = "Ignoring overload: Audio Captures enabled. { reporterID=%lld }";
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  v15 = sub_223A20FB0();
  v16 = sub_223A214C0();
  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_13;
  }

  v17 = swift_slowAlloc();
  *v17 = 134217984;
  v18 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session + 24));
  *(v17 + 4) = sub_223A20950();

  v19 = "Ignoring overload: Sysdiagnose in progress. { reporterID=%lld }";
LABEL_6:
  _os_log_impl(&dword_2239C7000, v15, v16, v19, v17, 0xCu);
  MEMORY[0x223DF1300](v17, -1, -1);

  return 0;
}

unint64_t sub_223A1C420()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases;
  if (*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases);
  }

  else
  {
    v2 = sub_223A1CE54();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_223A1C484(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v2 = sub_223A20850();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_223A203C0();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v31);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20D00();
  sub_223A203A0();
  v11 = sub_223A20C30();
  if (v12)
  {
    v13 = v12;
    v30 = v11;
  }

  else
  {
    v30 = sub_223A20D30();
    v13 = v14;
  }

  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v16 = sub_223A211F0();
  [v15 setDateFormat_];

  v17 = sub_223A20390();
  v18 = [v15 stringFromDate_];

  v19 = sub_223A21220();
  v21 = v20;

  (*(v3 + 16))(v6, v29, v2);
  v22 = (*(v3 + 88))(v6, v2);
  v23 = *MEMORY[0x277CEF8A0];
  v28 = v7;
  if (v22 == v23 || v22 == *MEMORY[0x277CEF890] || v22 == *MEMORY[0x277CEF898])
  {
    goto LABEL_11;
  }

  if (v22 != *MEMORY[0x277CEF888])
  {
    (*(v3 + 8))(v6, v2);
LABEL_11:
    v24 = 0xE600000000000000;
    v25 = 0x686374696C67;
    goto LABEL_12;
  }

  v24 = 0xE800000000000000;
  v25 = 0x65646F63656D6974;
LABEL_12:
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_223A21700();

  v32 = 0x5F6F69647561;
  v33 = 0xE600000000000000;
  MEMORY[0x223DF0390](v25, v24);

  MEMORY[0x223DF0390](0x5F65636172745FLL, 0xE700000000000000);
  MEMORY[0x223DF0390](v19, v21);

  MEMORY[0x223DF0390](95, 0xE100000000000000);
  MEMORY[0x223DF0390](v30, v13);

  MEMORY[0x223DF0390](0x6970736C6961742ELL, 0xE90000000000006ELL);

  v26 = v32;
  (*(v28 + 8))(v10, v31);
  return v26;
}

uint64_t sub_223A1C834(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *((*(a2 + 32))(ObjectType, a2) + 16);

  sub_223A1D948();
  sub_223A20F00();
}

uint64_t sub_223A1C8EC()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15[0] = 0;
  if ([objc_opt_self() isInProgressWithDestination:&v14 error:v15])
  {
    v0 = v14;
    v1 = v15[0];
  }

  else
  {
    v2 = v15[0];
    v3 = sub_223A202A0();

    swift_willThrow();
    v4 = v3;
    v5 = sub_223A20FB0();
    v6 = sub_223A214E0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136380675;
      swift_getErrorValue();
      v9 = sub_223A21920();
      v11 = sub_2239E1910(v9, v10, v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2239C7000, v5, v6, "isSysdiagnoseInProgress failed. { error=%{private}s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DF1300](v8, -1, -1);
      MEMORY[0x223DF1300](v7, -1, -1);
    }

    else
    {
    }

    v0 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t static TailspinWorker.enabledCaseNames.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_281334130 = a1;
}

uint64_t sub_223A1CBB4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_281334130 = v1;
}

uint64_t TailspinWorker.isStarted.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t TailspinWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TailspinWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_223A1CE54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DF8, &qword_223A249A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C08, &unk_223A23900);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v49 = v0;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_223A234C0;
  v3 = v50 + v2;
  v4 = (v50 + v2 + *(v0 + 48));
  v5 = *MEMORY[0x277CEF8A0];
  v6 = sub_223A20850();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v3, v5, v6);
  v8 = type metadata accessor for HALOverloadCase(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *v4 = sub_223A0B2B4(0, 0, 1);
  v4[1] = &off_2837035D0;
  v48 = v1;
  v11 = (v3 + v1 + *(v0 + 48));
  v12 = *MEMORY[0x277CEF890];
  v7();
  v13 = type metadata accessor for PHASEIssueCase();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (v7)(v16 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_name, v12, v6);
  v17 = (v16 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest);
  *v17 = sub_223A10B78;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0;
  v18 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_state;
  type metadata accessor for TailspinCaseState();
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4938, &unk_223A22B80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v19 + 16) = v20;
  *(v19 + 24) = 0;
  *(v19 + 32) = 1;
  *(v16 + v18) = v19;
  *(v16 + 16) = 1;
  *(v16 + 20) = 0;
  *(v16 + 24) = 0;
  *v11 = v16;
  v11[1] = &off_283703768;
  v21 = 2 * v1;
  v22 = v3 + 2 * v1;
  v23 = v3;
  v24 = (v22 + *(v49 + 48));
  v25 = *MEMORY[0x277CEF898];
  v7();
  v26 = type metadata accessor for SiriTTSCase();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  (v7)(v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_name, v25, v6);
  v30 = (v29 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest);
  *v30 = sub_223A157A8;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = 0;
  v31 = OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_state;
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v32 + 16) = v33;
  *(v32 + 24) = 0;
  *(v32 + 32) = 1;
  *(v29 + v31) = v32;
  *(v29 + 16) = 1;
  *(v29 + 20) = 0;
  *(v29 + 24) = 0;
  *v24 = v29;
  v24[1] = &off_2837038C0;
  v34 = (v23 + v21 + v48 + *(v49 + 48));
  v35 = *MEMORY[0x277CEF888];
  v7();
  v36 = type metadata accessor for HALTimecodeIssueCase();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  (v7)(v39 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_name, v35, v6);
  v40 = (v39 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest);
  *v40 = sub_223A0F298;
  v40[1] = 0;
  v40[2] = 0;
  v40[3] = 0;
  v41 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_state;
  v42 = swift_allocObject();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v42 + 16) = v43;
  *(v42 + 24) = 0;
  *(v42 + 32) = 1;
  *(v39 + v41) = v42;
  sub_223A20F90();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 28) = 1;
  *(v39 + 32) = 0;
  *v34 = v39;
  v34[1] = &off_283703720;
  v44 = sub_223A0A250(v50);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_beginAccess();
  v45 = qword_281334130;
  if (qword_281334130)
  {

    v46 = sub_223A1E168(v44, v45);

    return v46;
  }

  return v44;
}

uint64_t TailspinWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2239CC9A8(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases);

  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session));

  return v0;
}

uint64_t TailspinWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2239CC9A8(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases);

  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session));

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_223A1D590@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_223A1D61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TailspinOptions(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_223A1D688()
{
  v1 = *(sub_223A20D20() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_223A17A10(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t type metadata accessor for TailspinWorker()
{
  result = qword_281334108;
  if (!qword_281334108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A1D7EC()
{
  result = sub_223A20BC0();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for TailspinOptions(319);
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_223A20FC0();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_223A1D948()
{
  result = qword_27D0A4DF0;
  if (!qword_27D0A4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4DF0);
  }

  return result;
}

unint64_t *sub_223A1D99C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_223A1DDD0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_223A1DA38(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v46 = sub_223A20850();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v46);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v35 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C10, &unk_223A249B0);
  result = sub_223A217C0();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v37 = v8 + 16;
  v38 = result;
  v44 = v8 + 32;
  v17 = result + 64;
  v36 = a4;
  v39 = v8;
  v18 = v46;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v41 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v43 = *(v8 + 72);
    v24 = v40;
    (*(v8 + 16))(v40, v23 + v43 * v22, v18);
    v47 = *(a4[7] + 16 * v22);
    v42 = *(v8 + 32);
    v42(v45, v24, v18);
    v14 = v38;
    v25 = *(v38 + 40);
    sub_2239CA260(&qword_27D0A4A20, MEMORY[0x277CEF8A8]);
    swift_unknownObjectRetain();
    result = sub_223A21190();
    v26 = -1 << *(v14 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v8 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v8 = v39;
LABEL_26:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v42)(*(v14 + 48) + v29 * v43, v45, v46);
    *(*(v14 + 56) + 16 * v29) = v47;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v15 = v41;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_223A1DDD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v45 = a4;
  v38 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4E00, &qword_223A249A8);
  v5 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v7 = &v36 - v6;
  v8 = sub_223A20850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = 0;
  v47 = a3;
  v14 = 0;
  v15 = *(a3 + 64);
  v37 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v42 = v7;
  v43 = v9 + 16;
  v39 = (v9 + 8);
  v40 = v19;
  v41 = v13;
LABEL_5:
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_12:
    v23 = v47;
    v24 = *(v9 + 72);
    v25 = *(v9 + 16);
    v26 = v13;
    v27 = v20 | (v14 << 6);
    v25(v26, v47[6] + v24 * v27, v8);
    v28 = v23[7];
    v48 = v27;
    v49 = *(v28 + 16 * v27);
    v29 = v42;
    (v25)(v42);
    v30 = v45;
    v31 = v49;
    *(v29 + *(v44 + 48)) = v49;
    v32 = *(v30 + 16);
    *&v49 = v31;
    swift_unknownObjectRetain_n();
    v33 = v32 + 1;
    do
    {
      if (!--v33)
      {
        sub_2239CDCEC(v29, &qword_27D0A4E00, &qword_223A249A8);
        swift_unknownObjectRelease();
        v13 = v41;
        result = (*v39)(v41, v8);
        v19 = v40;
        v18 = v50;
        goto LABEL_5;
      }

      v34 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      sub_2239CA260(&qword_27D0A4A28, MEMORY[0x277CEF8A8]);
      v30 += v24;
    }

    while ((sub_223A211E0() & 1) == 0);
    sub_2239CDCEC(v29, &qword_27D0A4E00, &qword_223A249A8);
    swift_unknownObjectRelease();
    v13 = v41;
    result = (*v39)(v41, v8);
    *(v38 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v35 = __OFADD__(v46++, 1);
    v19 = v40;
    v18 = v50;
    if (v35)
    {
      __break(1u);
      return sub_223A1DA38(v38, v36, v46, v47);
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_223A1DA38(v38, v36, v46, v47);
    }

    v22 = *(v37 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v50 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223A1E168(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_223A1D99C(v13, v7, a1, a2);
      MEMORY[0x223DF1300](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_223A1DDD0((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_223A1E328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TailspinOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223A1E38C()
{
  result = sub_223A1F014();
  if ((result & 1) == 0)
  {
    v1 = sub_223A20FB0();
    v2 = sub_223A214E0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2239C7000, v1, v2, "Tailspin not configured for verbosity. Performing setup again.", v3, 2u);
      MEMORY[0x223DF1300](v3, -1, -1);
    }

    return sub_223A1E454();
  }

  return result;
}

uint64_t sub_223A1E454()
{
  v0 = sub_223A20FB0();
  v1 = sub_223A214D0();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2239C7000, v0, v1, "Performing tailspin setup.", v2, 2u);
    MEMORY[0x223DF1300](v2, -1, -1);
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_223A20A90();
  sub_223A20A70();

  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_223A20A90();
  sub_223A20A70();

  notify_post("com.apple.da.tasking_changed");
  sub_223A1FA08(0);
  sub_223A1EC3C();
  v5 = tailspin_config_create_with_config();
  if (sub_223A208C0())
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
    sub_223A205E0();
    swift_endAccess();
    if (v24 == 1)
    {
      v6 = sub_223A20FB0();
      v7 = sub_223A21500();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2239C7000, v6, v7, "Enabling hwtrace integration.", v8, 2u);
        MEMORY[0x223DF1300](v8, -1, -1);
      }

      tailspin_cputrace_enabled_set_with_options();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4E08, &qword_223A24A18);
      sub_223A205E0();
      swift_endAccess();
      v9 = sub_223A20FB0();
      v10 = sub_223A21500();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v24;
        _os_log_impl(&dword_2239C7000, v9, v10, "Requesting hwtrace memory carveout. { sizeMB=%llu }", v11, 0xCu);
        MEMORY[0x223DF1300](v11, -1, -1);
      }

      if (sub_223A1FB84(0x200uLL))
      {
        v12 = sub_223A20FB0();
        v13 = sub_223A21500();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_2239C7000, v12, v13, "Successfully obtained hwtrace carveout.", v14, 2u);
          MEMORY[0x223DF1300](v14, -1, -1);
        }
      }
    }
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205E0();
  swift_endAccess();
  if (v24 == 1)
  {
    tailspin_sampling_option_set();
    v15 = sub_223A20FB0();
    v16 = sub_223A21500();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2239C7000, v15, v16, "Enabling cswitch sampling.", v17, 2u);
      MEMORY[0x223DF1300](v17, -1, -1);
    }
  }

  v18 = tailspin_config_apply_sync();
  v19 = sub_223A20FB0();
  if (v18)
  {
    v20 = sub_223A214D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Successfully applied tailspin configuration.";
LABEL_22:
      _os_log_impl(&dword_2239C7000, v19, v20, v22, v21, 2u);
      MEMORY[0x223DF1300](v21, -1, -1);
    }
  }

  else
  {
    v20 = sub_223A214E0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Failed to apply tailspin configuration. Exiting early.";
      goto LABEL_22;
    }
  }

  MEMORY[0x223DF1430](v5);
  return v18;
}

uint64_t sub_223A1E9CC()
{
  v0 = sub_223A20FB0();
  v1 = sub_223A214D0();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2239C7000, v0, v1, "Performing tailspin teardown.", v2, 2u);
    MEMORY[0x223DF1300](v2, -1, -1);
  }

  v3 = sub_223A20AB0();
  MEMORY[0x223DEFB80](0xD000000000000011, 0x8000000223A26EE0, 0x6C7070612E6D6F63, 0xEC00000061642E65, v3, v4);

  v5 = sub_223A20AB0();
  MEMORY[0x223DEFB80](0xD000000000000018, 0x8000000223A26F00, 0x6C7070612E6D6F63, 0xEC00000061642E65, v5, v6);

  sub_223A1FEF0();
  notify_post("com.apple.da.tasking_changed");
  if (sub_223A208C0() & 1) != 0 && (sub_223A1FB84(0))
  {
    v7 = sub_223A20FB0();
    v8 = sub_223A214E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2239C7000, v7, v8, "Successfully reset hwtrace carveout. { sizeMB=0 }", v9, 2u);
      MEMORY[0x223DF1300](v9, -1, -1);
    }
  }

  v10 = tailspin_config_create_with_default_config();
  v11 = tailspin_config_apply_sync();
  if (v11)
  {
    MEMORY[0x223DF1430](v10);
  }

  else
  {
    v12 = sub_223A20FB0();
    v13 = sub_223A214E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2239C7000, v12, v13, "Failed to apply the defualt system tailspin configuration. Exiting early.", v14, 2u);
      MEMORY[0x223DF1300](v14, -1, -1);
    }
  }

  return v11;
}

uint64_t sub_223A1EC3C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin____lazy_storage___verboseConfig;
  result = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin____lazy_storage___verboseConfig);
  if (!result)
  {
    v3 = tailspin_config_create_with_default_config();
    v4 = v3;
    sub_223A1F6C0(&v4);
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_223A1EC94()
{
  v1 = sub_223A1EC3C();
  MEMORY[0x223DF1430](v1);
  v2 = *(v0 + 2);

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_systemUtility];

  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_cSwitchSamplingPreference;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v8 = *(*(v7 - 8) + 8);
  v8(&v0[v6], v7);
  v8(&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_hwtracePreference], v7);
  v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_hwtraceCarveoutPreference;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4E08, &qword_223A24A18);
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VerboseTailspin()
{
  result = qword_281333210;
  if (!qword_281333210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223A1EE6C()
{
  v0 = sub_223A20FC0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_223A1A3B0(319, &qword_2813344B8);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_223A1A3B0(319, &qword_281333700);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_223A1EFB8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_223A1F408();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_223A1F014()
{
  v0 = tailspin_config_create_with_current_state();
  if (v0)
  {
    v1 = v0;
    sub_223A1EC3C();
    v2 = tailspin_config_create_with_config();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
    sub_223A205E0();
    swift_endAccess();
    v3 = 1;
    tailspin_sampling_option_set();
    swift_beginAccess();
    sub_223A205E0();
    swift_endAccess();
    tailspin_cputrace_enabled_set_with_options();
    v4 = tailspin_config_copy_description();
    v5 = sub_223A21220();
    v7 = v6;

    v8 = tailspin_config_copy_description();
    v9 = sub_223A21220();
    v11 = v10;

    if (v5 != v9 || v7 != v11)
    {
      v3 = sub_223A218F0();
    }

    v12 = sub_223A1F2DC();
    v13 = sub_223A20FB0();
    v14 = sub_223A21500();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = v3 & 1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v12 & 1;
      _os_log_impl(&dword_2239C7000, v13, v14, "Verifying tailspin configuration. { isPreferredConfig=%{BOOL}d, diagnosticsDisabled=%{BOOL}d }", v15, 0xEu);
      MEMORY[0x223DF1300](v15, -1, -1);
    }

    v16 = v3 & v12;
    MEMORY[0x223DF1430](v2);
    MEMORY[0x223DF1430](v1);
  }

  else
  {
    v17 = sub_223A20FB0();
    v18 = sub_223A214E0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2239C7000, v17, v18, "Unable to retrieve current tailspin state.", v19, 2u);
      MEMORY[0x223DF1300](v19, -1, -1);
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_223A1F2DC()
{
  sub_223A20A60();
  sub_223A20A40();

  if (v4 == 2 || (v4 & 1) != 0 || (sub_223A20A60(), sub_223A20A40(), , v3 == 2) || (v3 & 1) != 0)
  {
    v0 = 0;
  }

  else
  {
    v2 = sub_223A20084();
    v0 = v2 ^ 1;
    if (v2 == 2)
    {
      v0 = 0;
    }
  }

  return v0 & 1;
}

unint64_t sub_223A1F408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD0, &unk_223A24A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B70;
  v1 = *MEMORY[0x277D82CC0];
  *(inited + 32) = sub_223A21220();
  *(inited + 40) = v2;
  sub_2239DC698();
  *(inited + 48) = sub_223A21580();
  v3 = *MEMORY[0x277D82D18];
  *(inited + 56) = sub_223A21220();
  *(inited + 64) = v4;
  *(inited + 72) = sub_223A21580();
  v5 = sub_223A0A14C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD8, &unk_223A245C0);
  swift_arrayDestroy();
  v6 = *MEMORY[0x277D82D20];
  v7 = sub_223A21220();
  v9 = v8;
  v10 = sub_223A21580();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_223A132C8(v10, v7, v9, isUniquelyReferenced_nonNull_native);

  return v5;
}

uint64_t sub_223A1F548()
{
  v1 = sub_223A20FC0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  *(v0 + 16) = 0;
  sub_223A20F90();
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_systemUtility;
  sub_223A207F0();
  sub_223A20F90();
  *(v0 + v3) = sub_223A207E0();
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin____lazy_storage___verboseConfig) = 0;
  sub_223A20610();
  sub_223A20610();
  sub_223A20610();
  return v0;
}

uint64_t sub_223A1F6C0(uint64_t *a1)
{
  v1 = *a1;
  tailspin_oncore_sampling_period_set();
  tailspin_full_sampling_period_set();
  tailspin_buffer_size_set();
  tailspin_enabled_set();
  tailspin_sampling_option_set();
  tailspin_sampling_option_set();
  tailspin_kdbg_filter_clear();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();

  return tailspin_kdbg_filter_subclass_set();
}

uint64_t sub_223A1FA08(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  sub_223A20A60();
  sub_223A20A40();

  if (!v6)
  {
    sub_2239DC6E4(MEMORY[0x277D84F90]);
  }

  v7 = MEMORY[0x277D839B0];
  LOBYTE(v6) = a1 & 1;
  sub_2239DA0A8(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_223A1301C(v5, 0xD000000000000015, 0x8000000223A26F80, isUniquelyReferenced_nonNull_native);
  v3 = sub_223A21100();

  sub_223A20A90();
  sub_223A20A70();
}

uint64_t sub_223A1FB84(unint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = sub_223A20FC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = *MEMORY[0x277CD2898];
  v14 = IOServiceMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(v13, v14);
  if (!MatchingService)
  {
    sub_223A20F90();
    v21 = sub_223A20FB0();
    v22 = sub_223A214E0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2239C7000, v21, v22, "Failed to find AppleProcessorTrace service.", v23, 2u);
      MEMORY[0x223DF1300](v23, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    goto LABEL_15;
  }

  connect = 0;
  v16 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  if (v16)
  {
    v17 = v16;
    sub_223A20F90();
    v18 = sub_223A20FB0();
    v19 = sub_223A214E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_2239C7000, v18, v19, "Failed to open IOService connection { ret=%d }", v20, 8u);
      MEMORY[0x223DF1300](v20, -1, -1);
    }

    (*(v3 + 8))(v10, v2);
    goto LABEL_15;
  }

  if (a1 >> 54)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (a1 >> 44)
  {
    goto LABEL_19;
  }

  input = a1 << 20;
  v24 = IOConnectCallScalarMethod(connect, 7u, &input, 1u, 0, 0);
  if (!v24)
  {
    result = 1;
    goto LABEL_16;
  }

  v25 = v24;
  sub_223A20F90();
  v26 = sub_223A20FB0();
  v27 = sub_223A214E0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v25;
    _os_log_impl(&dword_2239C7000, v26, v27, "Failed to call RequestBuffer command. { ret=%d }", v28, 8u);
    MEMORY[0x223DF1300](v28, -1, -1);
  }

  (*(v3 + 8))(v12, v2);
LABEL_15:
  result = 0;
LABEL_16:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_223A1FEF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  sub_223A20A60();
  sub_223A20A40();

  if (*&v4[0])
  {
    if (*(*&v4[0] + 16) && (v1 = sub_2239CDC74(0xD000000000000015, 0x8000000223A26F80), (v2 & 1) != 0))
    {
      sub_2239D17A8(*(*&v4[0] + 56) + 32 * v1, v4);
      sub_223A201A8(v4);
      sub_223A1289C(0xD000000000000015, 0x8000000223A26F80, v4);
      sub_223A201A8(v4);
      v3 = sub_223A21100();

      sub_223A20A90();
      sub_223A20A70();
    }

    else
    {

      memset(v4, 0, sizeof(v4));
      return sub_223A201A8(v4);
    }
  }

  return result;
}

uint64_t sub_223A20084()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  sub_223A20A60();
  sub_223A20A40();

  if (!v4[0])
  {
    return 2;
  }

  if (!*(v4[0] + 16) || (v0 = sub_2239CDC74(0xD000000000000015, 0x8000000223A26F80), (v1 & 1) == 0))
  {

    return 2;
  }

  sub_2239D17A8(*(v4[0] + 56) + 32 * v0, v4);

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_223A201A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B0, &qword_223A22C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}