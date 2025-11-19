uint64_t sub_21AEFC9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AMLScoringPipelineContext();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t AMLScoringPipeline.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[19] = AssociatedTypeWitness;
  sub_21AEA7C90(AssociatedTypeWitness);
  v4[20] = v6;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  v9 = type metadata accessor for AMLCandidateWithFeatures();
  v4[22] = v9;
  sub_21AEA7C90(v9);
  v4[23] = v10;
  v12 = *(v11 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_getTupleTypeMetadata2();
  v13 = sub_21AF09B7C();
  v4[28] = v13;
  v14 = *(v13 - 8);
  v4[29] = v14;
  v15 = *(v14 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21AEFCC18, 0, 0);
}

uint64_t sub_21AEFCC18()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(v6 + *(type metadata accessor for AMLScoringPipelineContext() + 36));
  v8 = sub_21AF098EC();
  v55 = v8;
  v9 = (*(v4 + 32))(v5, v4);
  v0[10] = AssociatedTypeWitness;
  v0[11] = v3;
  swift_getExtendedExistentialTypeMetadata();
  v10 = sub_21AF0989C();
  v56 = v10;
  if (v10 == sub_21AF0992C())
  {

LABEL_10:
    v34 = v0[30];
    v33 = v0[31];
    v35 = v0[25];
    v36 = v0[26];
    v37 = v0[24];
    v38 = v0[21];

    v39 = v0[1];

    return v39(v8);
  }

  else
  {
    v47 = v0[27];
    v41 = v9 + 32;
    v42 = v0 + 2;
    v48 = (v0[29] + 32);
    v11 = v0[23];
    v45 = v0[22];
    v46 = (v0[20] + 16);
    v43 = (v11 + 8);
    v44 = (v11 + 16);
    while (1)
    {
      v12 = sub_21AF0990C();
      sub_21AF098BC();
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v0[22];
      v14 = v0[15];
      sub_21AEE15E0(v41 + 40 * v10, v42);
      sub_21AF0996C();
      v15 = v0[5];
      v16 = v0[6];
      sub_21AEAF9B0(v42, v15);
      v50 = (*(v16 + 32))(v14, v49, v15, v16);
      sub_21AEA79F0(v42);
      v0[13] = v49;
      v17 = sub_21AF0997C();
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x21CEE4AC0](v17, WitnessTable);
      v0[14] = v0[12];
      sub_21AF09D9C();
      sub_21AF09D6C();
      sub_21AF09D8C();
      while (1)
      {
        v20 = v0[30];
        v19 = v0[31];
        v22 = v0[27];
        v21 = v0[28];
        sub_21AF09D7C();
        (*v48)(v19, v20, v21);
        if (sub_21AEA766C(v19, 1, v22) == 1)
        {
          break;
        }

        v54 = v0[31];
        v23 = v0[25];
        v24 = v0[26];
        v52 = v0[24];
        v26 = v0[21];
        v25 = v0[22];
        v51 = v0[19];
        v27 = *v54;
        v53 = *(v47 + 48);
        sub_21AF0999C();
        v28 = *&v24[*(v45 + 28)];
        swift_getObjectType();
        v29 = [v50 featuresAtIndex_];
        v30 = MLFeatureProvider.merging(other:uniquingKeysWith:)();
        swift_unknownObjectRelease();
        (*v46)(v26, v24, v51);
        sub_21AEA8470(v26, v30, v51, v23);
        (*v44)(v52, v23, v25);
        sub_21AF0994C();
        v31 = *v43;
        (*v43)(v23, v25);
        v31(v24, v25);
        v31(&v54[v53], v25);
      }

      v32 = v0[7];

      swift_unknownObjectRelease();
      v10 = v56;
      if (v56 == sub_21AF0992C())
      {

        v8 = v55;
        goto LABEL_10;
      }
    }

    result = sub_21AF09C7C();
    __break(1u);
  }

  return result;
}

uint64_t AMLScoringPipelineContext.candidates.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*AMLScoringPipelineContext.candidates.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_21AEFD238(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_21AEA766C(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21AEFD374(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_21AEA75BC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21AEFD568(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_21AED1894(v3, v8);
        sub_21AED1894(v4, v7);
        v5 = MEMORY[0x21CEE4E60](v8, v7);
        sub_21AED18F0(v7);
        sub_21AED18F0(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t AMLPartitionCompositeKey.hash(into:)()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    do
    {
      sub_21AED1894(v2, v4);
      sub_21AF09C0C();
      result = sub_21AED18F0(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t AMLPartitionCompositeKey.hashValue.getter()
{
  v1 = *v0;
  sub_21AF09EFC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_21AED1894(v3, v5);
      sub_21AF09C0C();
      sub_21AED18F0(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_21AF09F1C();
}

uint64_t sub_21AEFD718()
{
  v2 = *v0;
  sub_21AF09EFC();
  AMLPartitionCompositeKey.hash(into:)();
  return sub_21AF09F1C();
}

uint64_t sub_21AEFD764()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_21AEFD770(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21AEFD7D4(v4);
}

uint64_t sub_21AEFD79C()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_21AEFD7D4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t AMLProportionalAllocationSelector.__allocating_init(partitionBy:partitionAllocationFeatureNames:maxSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  AMLProportionalAllocationSelector.init(partitionBy:partitionAllocationFeatureNames:maxSuggestions:)(a1, a2, a3, a4, a5 & 1);
  return v10;
}

uint64_t *AMLProportionalAllocationSelector.init(partitionBy:partitionAllocationFeatureNames:maxSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *v5;
  v5[5] = 0;
  *(v5 + 48) = 1;
  type metadata accessor for AMLCandidateSelectorIdentifier();
  swift_allocObject();
  v5[7] = AMLCandidateSelectorIdentifier.init(name:)(0xD000000000000021, 0x800000021AF0D6A0);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  *(v5 + 48) = a5 & 1;
  return v5;
}

uint64_t sub_21AEFDA00(uint64_t a1, uint64_t a2)
{
  v3[81] = v2;
  v3[80] = a2;
  v4 = *v2;
  v3[82] = *v2;
  v3[83] = *(v4 + 88);
  v5 = type metadata accessor for AMLCandidateWithFeatures();
  v3[84] = v5;
  v6 = *(v5 - 8);
  v3[85] = v6;
  v3[86] = *(v6 + 64);
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21AEFDB28, 0, 0);
}

uint64_t sub_21AEFDB28()
{
  v204 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 640);
  sub_21AF0997C();
  swift_getTupleTypeMetadata2();
  sub_21AF098EC();
  v199 = sub_21AF0974C();
  sub_21AEA7574(&qword_27CD3DD10, &qword_21AF0D6F0);
  v3 = sub_21AF0974C();
  v4 = sub_21AF0989C();
  v200 = v4;
  if (v4 == sub_21AF0992C())
  {
    v5 = 0;
    v6 = 0;
LABEL_3:
    v198 = v6;
    if (qword_27CD3D2C0 != -1)
    {
      goto LABEL_96;
    }

    while (1)
    {
      v7 = sub_21AF096CC();
      sub_21AEA7958(v7, qword_27CD3EC20);
      v8 = sub_21AF096AC();
      v9 = sub_21AF09AAC();
      v196 = v5;
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = sub_21AEB39C8();
        *&v202 = v11;
        *v10 = 136315138;

        v12 = sub_21AF0973C();
        v14 = v13;

        v15 = sub_21AECFFFC(v12, v14, &v202);

        *(v10 + 4) = v15;
        _os_log_impl(&dword_21AE94000, v8, v9, "partition allocations: %s", v10, 0xCu);
        sub_21AEA79F0(v11);
        sub_21AEAFB90();
        sub_21AEAFB90();
      }

      *&v202 = sub_21AEFF224(v16, sub_21AEACDA8, sub_21AEF7B2C);
      sub_21AEFF2F0(&v202);
      v88 = *(v0 + 648);

      v5 = v202;
      if (*(v88 + 48))
      {
        v89 = *(v0 + 672);
        v90 = *(v0 + 640);
        v91 = sub_21AF0992C();
      }

      else
      {
        v91 = *(v88 + 40);
      }

      v93 = sub_21AF096AC();
      v94 = sub_21AF09AAC();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = sub_21AEB39C8();
        *&v202 = v96;
        *v95 = 136315138;
        v97 = sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
        v98 = MEMORY[0x21CEE4B10](v5, v97);
        v100 = sub_21AECFFFC(v98, v99, &v202);

        *(v95 + 4) = v100;
        _os_log_impl(&dword_21AE94000, v93, v94, "partition allocations normalized and sorted: %s", v95, 0xCu);
        sub_21AEA79F0(v96);
        sub_21AEAFB90();
        sub_21AEAFB90();
      }

      v189 = v0 + 280;
      v101 = *(v0 + 672);
      sub_21AF098EC();
      v102 = 0;
      v201 = sub_21AF098EC();
      v103 = *(v5 + 16);
      v104 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v102 == v103)
        {
          goto LABEL_68;
        }

        if (v102 >= *(v5 + 16))
        {
          goto LABEL_91;
        }

        sub_21AF0011C(v5 + 32 + 48 * v102, v0 + 16, &qword_27CD3DC00, &unk_21AF0D420);
        v105 = *(v0 + 40);
        v106 = *(v0 + 56);
        v202 = *(v0 + 16);
        v203 = *(v0 + 32);
        if (!v105)
        {
LABEL_68:

          v121 = sub_21AF096AC();
          v122 = sub_21AF09AAC();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = sub_21AEB39C8();
            *&v202 = v124;
            *v123 = 136315138;

            v125 = sub_21AEA7574(&qword_27CD3D6F8, &qword_21AF0C4F8);
            v126 = MEMORY[0x21CEE4B10](v104, v125);
            v128 = v127;

            v129 = sub_21AECFFFC(v126, v128, &v202);

            *(v123 + 4) = v129;
            _os_log_impl(&dword_21AE94000, v121, v122, "allocations counts: %s", v123, 0xCu);
            sub_21AEA79F0(v124);
            sub_21AEAFB90();
            sub_21AEAFB90();
          }

          v130 = *(v104 + 16);
          v131 = v0 + 280;
          if (v130)
          {
            v132 = v104 + 32;

            do
            {
              sub_21AF0011C(v132, v0 + 64, &qword_27CD3D6F8, &qword_21AF0C4F8);
              v133 = *(v0 + 80);
              *v131 = *(v0 + 64);
              *(v131 + 16) = v133;
              v134 = *(v0 + 104);
              *(v131 + 32) = *(v0 + 96);
              sub_21AF0978C();
              v135 = *(v0 + 600);
              if (v135)
              {
                v136 = *(v0 + 672);
                *(v0 + 616) = v135;

                swift_getWitnessTable();
                sub_21AF09A3C();
                v137 = *(v0 + 448);
                v138 = *(v0 + 456);
                v139 = *(v0 + 464);
                *(v0 + 472) = *(v0 + 440);
                *(v0 + 480) = v137;
                *(v0 + 488) = v138;
                *(v0 + 496) = v139;
                sub_21AF09BBC();
                swift_unknownObjectRetain();
                swift_getWitnessTable();
                *(v0 + 624) = sub_21AF0998C();
                sub_21AF0050C();
                sub_21AF0993C();
                sub_21AED1894(v131, v0 + 320);
                swift_bridgeObjectRetain_n();
                swift_unknownObjectRetain();
                v140 = sub_21AF096AC();
                v141 = sub_21AF09AAC();
                v187 = v130;
                if (os_log_type_enabled(v140, v141))
                {
                  v182 = *(v0 + 672);
                  v142 = sub_21AEB39C8();
                  v143 = sub_21AEB39C8();
                  *&v202 = v143;
                  *v142 = 134218498;
                  *(v142 + 4) = sub_21AF09BAC();
                  swift_unknownObjectRelease();
                  *(v142 + 12) = 2080;
                  v144 = sub_21AF09BDC();
                  v146 = v145;
                  sub_21AED18F0(v0 + 320);
                  v147 = sub_21AECFFFC(v144, v146, &v202);

                  *(v142 + 14) = v147;
                  *(v142 + 22) = 2048;
                  v148 = sub_21AF0992C();

                  *(v142 + 24) = v148;

                  _os_log_impl(&dword_21AE94000, v140, v141, "Adding %ld candidates from partition %s with %ld candidates", v142, 0x20u);
                  sub_21AEA79F0(v143);
                  sub_21AEAFB90();
                  sub_21AEAFB90();
                }

                else
                {
                  swift_bridgeObjectRelease_n();
                  swift_unknownObjectRelease();

                  sub_21AED18F0(v0 + 320);
                }

                v183 = v132;
                v149 = *(v0 + 672);
                *(v0 + 632) = v135;
                sub_21AF09BAC();
                sub_21AF09A5C();
                v150 = *(v0 + 504);
                v151 = *(v0 + 512);
                v152 = *(v0 + 520);
                v153 = *(v0 + 528);
                sub_21AED1894(v189, v0 + 360);
                swift_unknownObjectRetain();
                v154 = sub_21AF096AC();
                v155 = sub_21AF09AAC();
                if (os_log_type_enabled(v154, v155))
                {
                  v156 = *(v0 + 672);
                  v157 = swift_slowAlloc();
                  v194 = sub_21AEB39C8();
                  *&v202 = v194;
                  *v157 = 134218242;
                  *(v157 + 4) = sub_21AF09BAC();
                  swift_unknownObjectRelease();
                  *(v157 + 12) = 2080;
                  v158 = sub_21AF09BDC();
                  v192 = v153;
                  v159 = v152;
                  v160 = v151;
                  v162 = v161;
                  sub_21AED18F0(v0 + 360);
                  v163 = sub_21AECFFFC(v158, v162, &v202);

                  *(v157 + 14) = v163;
                  _os_log_impl(&dword_21AE94000, v154, v155, "Adding %ld candidates from partition %s to remaining candidates", v157, 0x16u);
                  sub_21AEA79F0(v194);
                  sub_21AEAFB90();
                  sub_21AEAFB90();

                  v164 = v192;
                }

                else
                {
                  swift_unknownObjectRelease();

                  sub_21AED18F0(v0 + 360);
                  v164 = v153;
                  v159 = v152;
                  v160 = v151;
                }

                v130 = v187;
                *(v0 + 536) = v150;
                *(v0 + 544) = v160;
                *(v0 + 552) = v159;
                *(v0 + 560) = v164;
                sub_21AF0993C();
                swift_unknownObjectRelease();
                v131 = v0 + 280;
                sub_21AED18F0(v189);
                v132 = v183;
              }

              else
              {
                sub_21AED18F0(v131);
              }

              v132 += 48;
              --v130;
            }

            while (v130);
          }

          *(v0 + 608) = v201;

          sub_21AF0050C();
          sub_21AF0993C();

          v165 = sub_21AF096AC();
          v166 = sub_21AF09AAC();
          if (os_log_type_enabled(v165, v166))
          {
            v167 = *(v0 + 664);
            v168 = *(v0 + 656);
            v169 = swift_slowAlloc();
            *v169 = 134218240;
            v170 = *(v168 + 80);
            *(v169 + 4) = sub_21AE96680();

            *(v169 + 12) = 2048;
            v171 = sub_21AE96680();

            *(v169 + 14) = v171;

            _os_log_impl(&dword_21AE94000, v165, v166, "Allocated candidates = %ld Remaining Candidates = %ld", v169, 0x16u);
            sub_21AEAFB90();
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v172 = *(v0 + 712);
          v173 = *(v0 + 704);
          v174 = *(v0 + 696);

          sub_21AE9678C(v196);
          sub_21AE9678C(v198);

          v175 = *(v0 + 8);
          sub_21AF0053C();

          __asm { BRAA            X2, X16 }
        }

        *(v0 + 400) = v202;
        *(v0 + 416) = v203;
        *(v0 + 424) = v105;
        v107 = *(v106 + 16);
        if (v107)
        {
          v108 = (v106 + 32);
          v109 = 1.0;
          do
          {
            v110 = *v108++;
            v109 = v109 * v110;
            --v107;
          }

          while (v107);
        }

        else
        {
          v109 = 1.0;
        }

        v111 = round(v109 * v91);
        if ((*&v111 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v111 <= -9.22337204e18)
        {
          goto LABEL_93;
        }

        if (v111 >= 9.22337204e18)
        {
          goto LABEL_94;
        }

        v112 = v111;
        sub_21AED1894(v0 + 400, v0 + 112);
        *(v0 + 152) = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = *(v104 + 16);
          sub_21AEAD04C();
          sub_21AEAC94C();
          v104 = v119;
        }

        v113 = *(v104 + 16);
        v114 = v104;
        if (v113 >= *(v104 + 24) >> 1)
        {
          sub_21AEAC94C();
          v114 = v120;
        }

        ++v102;
        sub_21AED18F0(v0 + 400);
        *(v114 + 16) = v113 + 1;
        v104 = v114;
        v115 = (v114 + 48 * v113);
        v117 = *(v0 + 128);
        v116 = *(v0 + 144);
        v115[2] = *(v0 + 112);
        v115[3] = v117;
        v115[4] = v116;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      swift_once();
    }
  }

  v5 = 0;
  v6 = 0;
  v178 = *(v0 + 688);
  v17 = *(v0 + 680);
  v179 = *(v0 + 672);
  v190 = *(v0 + 656);
  v191 = (v17 + 16);
  v184 = v17;
  v180 = (v17 + 8);
  v181 = *(v0 + 648);
  v186 = v181[2];
  v188 = (v17 + 32);
  v185 = v181[3];
  while (1)
  {
    v195 = v3;
    v18 = *(v0 + 672);
    v19 = *(v0 + 640);
    v20 = sub_21AF0990C();
    sub_21AF098BC();
    v197 = v5;
    v198 = v6;
    if (v20)
    {
      v5 = *(v184 + 16);
      (v5)(*(v0 + 712), *(v0 + 640) + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v4, *(v0 + 672));
    }

    else
    {
      v82 = *(v0 + 672);
      v83 = *(v0 + 640);
      result = sub_21AF09C7C();
      if (v178 != 8)
      {
        __break(1u);
        return result;
      }

      v85 = result;
      v86 = *(v0 + 712);
      v87 = *(v0 + 672);
      *(v0 + 568) = v85;
      v5 = *v191;
      (*v191)(v86, v0 + 568, v87);
      swift_unknownObjectRelease();
    }

    v21 = *(v0 + 712);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 672);
    v25 = *(v0 + 664);
    v26 = *(v0 + 640);
    sub_21AF0996C();
    (*v188)(v22, v21, v24);
    v186(&v202, v22);
    v27 = v202;
    *(v0 + 576) = v202;
    sub_21AF00090();
    v193 = v27;

    sub_21AF09C1C();
    v28 = swift_allocObject();
    v29 = *(v190 + 80);
    *(v28 + 16) = v29;
    *(v28 + 24) = v25;
    sub_21AE9678C(v197);
    (v5)(v23, v22, v24);
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v25;
    v30[4] = sub_21AF000E4;
    v30[5] = v28;
    sub_21AE9678C(v198);
    swift_isUniquelyReferenced_nonNull_native();
    *&v202 = v199;
    v31 = sub_21AED064C(v0 + 160);
    if (__OFADD__(*(v199 + 16), (v32 & 1) == 0))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v33 = v31;
    v34 = v32;
    sub_21AF09D4C();
    v35 = sub_21AF09D0C();
    v5 = v202;
    if (v35)
    {
      v36 = sub_21AED064C(v0 + 160);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_45;
      }

      v33 = v36;
    }

    if ((v34 & 1) == 0)
    {
      v38 = v30[5];
      *(v0 + 584) = (v30[4])();
      sub_21AED1894(v0 + 160, v0 + 200);
      sub_21AF09D3C();
    }

    v39 = *(v0 + 696);
    v199 = v5;
    v40 = *(v5 + 56) + 8 * v33;
    sub_21AF0994C();
    sub_21AED18F0(v0 + 160);
    v41 = v181[4];
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = *(*(v0 + 704) + *(v179 + 28));
      v44 = (v41 + 40);
      v45 = MEMORY[0x277D84F90];
      do
      {
        v46 = *(v44 - 1);
        v47 = *v44;

        v48 = sub_21AF097BC();

        v49 = [v43 featureValueForName_];

        if (v49)
        {
          [v49 doubleValue];
          v51 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = *(v45 + 16);
            v56 = sub_21AEAD04C();
            sub_21AEACA34(v56, v57, v58, v45);
            v45 = v59;
          }

          v5 = *(v45 + 16);
          v52 = *(v45 + 24);
          v53 = (v5 + 1);
          if (v5 >= v52 >> 1)
          {
            sub_21AF00560(v52);
            v45 = v60;
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = *(v45 + 16);
            v62 = sub_21AEAD04C();
            sub_21AEACA34(v62, v63, v64, v45);
            v45 = v65;
          }

          v5 = *(v45 + 16);
          v54 = *(v45 + 24);
          v53 = (v5 + 1);
          v51 = 0;
          if (v5 >= v54 >> 1)
          {
            sub_21AF00560(v54);
            v45 = v66;
          }
        }

        *(v45 + 16) = v53;
        *(v45 + 8 * v5 + 32) = v51;
        v44 += 2;
        --v42;
      }

      while (v42);
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    *(v0 + 592) = v193;
    sub_21AF09C1C();
    swift_isUniquelyReferenced_nonNull_native();
    *&v202 = v195;
    v67 = sub_21AED064C(v0 + 240);
    if (__OFADD__(v195[2], (v68 & 1) == 0))
    {
      goto LABEL_90;
    }

    v69 = v67;
    v70 = v68;
    sub_21AEA7574(&qword_27CD3DD20, &qword_21AF0D6F8);
    v71 = sub_21AF09D0C();
    v3 = v202;
    if (v71)
    {
      break;
    }

    if ((v70 & 1) == 0)
    {
LABEL_35:
      v3[(v69 >> 6) + 8] |= 1 << v69;
      sub_21AED1894(v0 + 240, v3[6] + 40 * v69);
      *(v3[7] + 8 * v69) = v45;
      v74 = v3[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_95;
      }

      v3[2] = v76;
      goto LABEL_39;
    }

LABEL_38:
    v77 = v3[7];
    v78 = *(v77 + 8 * v69);
    *(v77 + 8 * v69) = v45;

LABEL_39:
    v79 = *(v0 + 704);
    v80 = *(v0 + 672);
    v81 = *(v0 + 640);
    sub_21AED18F0(v0 + 240);
    (*v180)(v79, v80);
    v4 = v200;
    v6 = sub_21AF000EC;
    v5 = sub_21AF000E4;
    if (v200 == sub_21AF0992C())
    {
      goto LABEL_3;
    }
  }

  v72 = sub_21AED064C(v0 + 240);
  if ((v70 & 1) == (v73 & 1))
  {
    v69 = v72;
    if ((v70 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

LABEL_45:
  sub_21AF0053C();

  return sub_21AF09E7C();
}

uint64_t sub_21AEFEE6C()
{
  type metadata accessor for AMLCandidateWithFeatures();

  return sub_21AF098EC();
}

uint64_t sub_21AEFEEA0(uint64_t a1, uint64_t a2)
{
  sub_21AF0011C(a1, v7, &qword_27CD3DC00, &unk_21AF0D420);
  v3 = v8;
  sub_21AED18F0(v7);
  sub_21AF0011C(a2, v7, &qword_27CD3DC00, &unk_21AF0D420);
  v4 = v8;
  sub_21AED18F0(v7);
  v5 = sub_21AEFEF50(v3, v4);

  return v5 & 1;
}

uint64_t sub_21AEFEF50(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *AMLProportionalAllocationSelector.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  return v0;
}

uint64_t AMLProportionalAllocationSelector.__deallocating_deinit()
{
  AMLProportionalAllocationSelector.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_21AEFF024(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21AEFF0BC;

  return sub_21AEFDA00(v6, a2);
}

uint64_t sub_21AEFF0BC(uint64_t a1)
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

uint64_t sub_21AEFF224(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v3, a1);

  sub_21AE96764();
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_21AEFF2F0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21AEFBDA0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_21AEFF35C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21AEFF35C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEFF5D0(v7, v8, a1, v4);
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
    return sub_21AEFF460(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AEFF460(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 48 * a3);
    v6 = result - a3;
    while (2)
    {
      v23 = a3;
      v17 = v6;
      v18 = v5;
      do
      {
        sub_21AF0011C(v5, v22, &qword_27CD3DC00, &unk_21AF0D420);
        v7 = v5 - 3;
        sub_21AF0011C((v5 - 3), v21, &qword_27CD3DC00, &unk_21AF0D420);
        sub_21AF0011C(v22, v19, &qword_27CD3DC00, &unk_21AF0D420);
        v8 = v20;
        sub_21AED18F0(v19);
        sub_21AF0011C(v21, v19, &qword_27CD3DC00, &unk_21AF0D420);
        v9 = v20;
        sub_21AED18F0(v19);
        v10 = sub_21AEFEF50(v8, v9);

        sub_21AF004A4(v21);
        result = sub_21AF004A4(v22);
        if ((v10 & 1) == 0)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = v5[1];
        v11 = v5[2];
        v13 = *v5;
        v14 = *(v5 - 2);
        *v5 = *v7;
        v5[1] = v14;
        v5[2] = *(v5 - 1);
        *v7 = v13;
        *(v5 - 2) = v12;
        v5 -= 3;
        v7[2] = v11;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v23 + 1;
      v5 = v18 + 3;
      v6 = v17 - 1;
      if (v23 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AEFF5D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_93:
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_95;
    }

    goto LABEL_129;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &qword_27CD3DC00;
  while (1)
  {
    v8 = v5;
    v9 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v105 = v6;
      v10 = *a3;
      sub_21AF0011C(*a3 + 48 * v9, v120, v7, &unk_21AF0D420);
      sub_21AF0011C(v10 + 48 * v8, v119, v7, &unk_21AF0D420);
      v11 = v121;
      LODWORD(v115) = sub_21AEFEEA0(v120, v119);
      v121 = v11;
      if (v11)
      {
        sub_21AF004A4(v119);
        sub_21AF004A4(v120);
LABEL_103:

        return;
      }

      sub_21AF004A4(v119);
      sub_21AF004A4(v120);
      v112 = 48 * v8;
      v12 = v10 + 48 * v8 + 96;
      v107 = v8;
      v13 = (v8 + 2);
      while (1)
      {
        v14 = v13;
        v15 = (v9 + 1);
        if (v15 >= v4)
        {
          break;
        }

        sub_21AF0011C(v12, v120, v7, &unk_21AF0D420);
        sub_21AF0011C(v12 - 48, v119, v7, &unk_21AF0D420);
        sub_21AF0011C(v120, v117, v7, &unk_21AF0D420);
        v16 = v4;
        v17 = v118;
        sub_21AED18F0(v117);
        sub_21AF0011C(v119, v117, v7, &unk_21AF0D420);
        v6 = v15;
        v18 = v118;
        sub_21AED18F0(v117);
        v19 = sub_21AEFEF50(v17, v18) & 1;
        v9 = v6;

        v4 = v16;

        sub_21AF004A4(v119);
        sub_21AF004A4(v120);
        v12 += 48;
        v13 = v14 + 1;
        if ((v115 & 1) != v19)
        {
          goto LABEL_10;
        }
      }

      v9 = v4;
LABEL_10:
      if (v115)
      {
        if (v9 < v107)
        {
          goto LABEL_128;
        }

        if (v107 >= v9)
        {
          v6 = v105;
          v8 = v107;
          goto LABEL_25;
        }

        if (v4 >= v14)
        {
          v20 = v14;
        }

        else
        {
          v20 = v4;
        }

        v21 = 48 * v20 - 48;
        v22 = v9;
        v23 = v107;
        v6 = v105;
        v24 = v112;
        do
        {
          if (v23 != --v22)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_133;
            }

            v26 = (v25 + v24);
            v27 = (v25 + v21);
            v28 = *v26;
            v29 = v26[1];
            v30 = v26[2];
            v32 = v27[1];
            v31 = v27[2];
            *v26 = *v27;
            v26[1] = v32;
            v26[2] = v31;
            v27[1] = v29;
            v27[2] = v30;
            *v27 = v28;
          }

          ++v23;
          v21 -= 48;
          v24 += 48;
        }

        while (v23 < v22);
      }

      else
      {
        v6 = v105;
      }

      v8 = v107;
    }

LABEL_25:
    v33 = a3[1];
    if (v9 < v33)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_125;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_41:
    if (v9 < v8)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v93 = *(v6 + 2);
      sub_21AEAC638();
      v6 = v94;
    }

    v47 = *(v6 + 2);
    v48 = v47 + 1;
    if (v47 >= *(v6 + 3) >> 1)
    {
      sub_21AEAC638();
      v6 = v95;
    }

    *(v6 + 2) = v48;
    v49 = v6 + 32;
    v50 = &v6[16 * v47 + 32];
    *v50 = v8;
    *(v50 + 1) = v9;
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v115 = v9;
    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        v52 = &v49[16 * v48 - 16];
        v53 = &v6[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v6 + 4);
          v55 = *(v6 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_61:
          if (v57)
          {
            goto LABEL_111;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_114;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_119;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v48 < 2)
        {
          goto LABEL_113;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_76:
        if (v72)
        {
          goto LABEL_116;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v79 < v71)
        {
          goto LABEL_90;
        }

LABEL_83:
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v83 = v7;
        v84 = &v49[16 * v51 - 16];
        v85 = *v84;
        v86 = v49;
        v87 = v51;
        v88 = &v49[16 * v51];
        v89 = *(v88 + 1);
        v90 = v121;
        sub_21AEFFD60((*a3 + 48 * *v84), (*a3 + 48 * *v88), (*a3 + 48 * v89), v114);
        v121 = v90;
        if (v90)
        {
          goto LABEL_103;
        }

        if (v89 < v85)
        {
          goto LABEL_106;
        }

        v91 = v6;
        v6 = *(v6 + 2);
        if (v87 > v6)
        {
          goto LABEL_107;
        }

        *v84 = v85;
        *(v84 + 1) = v89;
        if (v87 >= v6)
        {
          goto LABEL_108;
        }

        v48 = (v6 - 1);
        sub_21AEFBE04(v88 + 16, &v6[-v87 - 1], v88);
        *(v91 + 2) = v6 - 1;
        v92 = v6 > 2;
        v6 = v91;
        v49 = v86;
        v7 = v83;
        if (!v92)
        {
          goto LABEL_90;
        }
      }

      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_109;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_110;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_112;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_115;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_123;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_90:
    v5 = v115;
    v4 = a3[1];
    if (v115 >= v4)
    {
      goto LABEL_93;
    }
  }

  v34 = &v8[a4];
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v8)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v6 = sub_21AEFBBF8(v6);
LABEL_95:
    v96 = v6 + 16;
    v97 = *(v6 + 2);
    while (v97 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_132;
      }

      v98 = v6;
      v99 = &v6[16 * v97];
      v6 = *v99;
      v100 = &v96[2 * v97];
      v101 = *(v100 + 1);
      v102 = v121;
      sub_21AEFFD60((*a3 + 48 * *v99), (*a3 + 48 * *v100), (*a3 + 48 * v101), v115);
      v121 = v102;
      if (v102)
      {
        break;
      }

      if (v101 < v6)
      {
        goto LABEL_120;
      }

      if (v97 - 2 >= *v96)
      {
        goto LABEL_121;
      }

      *v99 = v6;
      *(v99 + 1) = v101;
      v103 = *v96 - v97;
      if (*v96 < v97)
      {
        goto LABEL_122;
      }

      v97 = *v96 - 1;
      sub_21AEFBE04(v100 + 16, v103, v100);
      *v96 = v97;
      v6 = v98;
    }

    goto LABEL_103;
  }

  if (v9 == v34)
  {
    goto LABEL_41;
  }

  v106 = v6;
  v108 = v8;
  v35 = *a3;
  v36 = (*a3 + 48 * v9);
  v37 = &v8[-v9];
  v110 = v34;
LABEL_34:
  v113 = v36;
  v115 = v9;
  v111 = v37;
  while (1)
  {
    sub_21AF0011C(v36, v120, v7, &unk_21AF0D420);
    v38 = v36 - 3;
    sub_21AF0011C((v36 - 3), v119, v7, &unk_21AF0D420);
    sub_21AF0011C(v120, v117, v7, &unk_21AF0D420);
    v39 = v118;
    sub_21AED18F0(v117);
    sub_21AF0011C(v119, v117, v7, &unk_21AF0D420);
    v40 = v118;
    sub_21AED18F0(v117);
    v41 = sub_21AEFEF50(v39, v40);

    sub_21AF004A4(v119);
    sub_21AF004A4(v120);
    if ((v41 & 1) == 0)
    {
LABEL_39:
      v9 = (v115 + 1);
      v36 = v113 + 3;
      v37 = v111 - 1;
      if (v115 + 1 == v110)
      {
        v9 = v110;
        v6 = v106;
        v8 = v108;
        goto LABEL_41;
      }

      goto LABEL_34;
    }

    if (!v35)
    {
      break;
    }

    v43 = v36[1];
    v42 = v36[2];
    v44 = *v36;
    v45 = *(v36 - 2);
    *v36 = *v38;
    v36[1] = v45;
    v36[2] = *(v36 - 1);
    *v38 = v44;
    *(v36 - 2) = v43;
    v36 -= 3;
    v38[2] = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_39;
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
}

uint64_t sub_21AEFFD60(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_21AEFABE8(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      sub_21AF0011C(v6, v42, &qword_27CD3DC00, &unk_21AF0D420);
      sub_21AF0011C(v4, v41, &qword_27CD3DC00, &unk_21AF0D420);
      sub_21AF0011C(v42, v39, &qword_27CD3DC00, &unk_21AF0D420);
      v13 = v40;
      sub_21AED18F0(v39);
      sub_21AF0011C(v41, v39, &qword_27CD3DC00, &unk_21AF0D420);
      v14 = v40;
      sub_21AED18F0(v39);
      v15 = sub_21AEFEF50(v13, v14);

      sub_21AF004A4(v41);
      sub_21AF004A4(v42);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 48;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
      v5 = v12;
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 48;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *v16;
    v19 = *(v16 + 2);
    *(v7 + 1) = *(v16 + 1);
    *(v7 + 2) = v19;
    *v7 = v18;
    goto LABEL_13;
  }

  sub_21AEFABE8(a2, (a3 - a2) / 48, a4);
  v20 = &v4[48 * v9];
  v43 = v7;
LABEL_15:
  v21 = (v6 - 48);
  v22 = v5 - 48;
  v23 = v20 - 48;
  while (1)
  {
    v10 = v23 + 48;
    if (v23 + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    v25 = v22;
    v26 = v4;
    sub_21AF0011C(v23, v42, &qword_27CD3DC00, &unk_21AF0D420);
    v27 = v21;
    sub_21AF0011C(v21, v41, &qword_27CD3DC00, &unk_21AF0D420);
    sub_21AF0011C(v42, v39, &qword_27CD3DC00, &unk_21AF0D420);
    v28 = v40;
    sub_21AED18F0(v39);
    sub_21AF0011C(v41, v39, &qword_27CD3DC00, &unk_21AF0D420);
    v29 = v40;
    sub_21AED18F0(v39);
    v30 = sub_21AEFEF50(v28, v29);

    sub_21AF004A4(v41);
    sub_21AF004A4(v42);
    v5 = v25;
    if (v30)
    {
      v20 = v23 + 48;
      v17 = v25 + 48 == v6;
      v33 = v27;
      v6 = v27;
      v4 = v26;
      v7 = v43;
      if (!v17)
      {
        v34 = *v33;
        v35 = *(v33 + 2);
        *(v25 + 1) = *(v33 + 1);
        *(v25 + 2) = v35;
        *v25 = v34;
        v6 = v33;
      }

      goto LABEL_15;
    }

    if (v23 + 48 != v25 + 48)
    {
      v31 = *v23;
      v32 = *(v23 + 2);
      *(v25 + 1) = *(v23 + 1);
      *(v25 + 2) = v32;
      *v25 = v31;
    }

    v22 = v25 - 48;
    v23 -= 48;
    v21 = v27;
    v4 = v26;
    v7 = v43;
  }

LABEL_28:
  v36 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v36])
  {
    memmove(v6, v4, 48 * v36);
  }

  return 1;
}

unint64_t sub_21AF00090()
{
  result = qword_27CD3DD18;
  if (!qword_27CD3DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3DD18);
  }

  return result;
}

uint64_t sub_21AF000E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21AEFEE6C();
}

uint64_t sub_21AF000EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_21AF0011C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_21AEA7574(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_21AF00188()
{
  result = qword_27CD3DD28[0];
  if (!qword_27CD3DD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD3DD28);
  }

  return result;
}

uint64_t sub_21AF001E8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21AF00228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of AMLProportionalAllocationSelector.select(context:candidates:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21AEC82B8;

  return v10(a1, a2);
}

uint64_t sub_21AF004A4(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3DC00, &unk_21AF0D420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF0050C()
{

  return swift_getWitnessTable();
}

void sub_21AF00560(unint64_t a1@<X8>)
{

  sub_21AEACA34(a1 > 1, v1, 1, v2);
}

void sub_21AF00584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_21AF0926C();
  }

  v4 = *(a3 + 16);
  v5 = sub_21AEC76A0();
  v8 = v6;
  v7(v5);
}

unint64_t sub_21AF005F0(void *a1)
{
  if (a1[2])
  {
    sub_21AEA7574(&qword_27CD3DF40, &unk_21AF0CDD0);
    sub_21AEEF478();
    v2 = sub_21AF09DDC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = a1[8];
  sub_21AF05808();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (a1[6] + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (a1[7] + v13);
    v27 = *v17;
    v28 = v17[1];

    swift_dynamicCast();
    sub_21AEAF9F4(&v29, v31);
    sub_21AEAF9F4(v31, v32);
    sub_21AEAF9F4(v32, &v30);
    result = sub_21AED0594();
    v18 = result;
    if (v19)
    {
      v20 = (v2[6] + 16 * result);
      v21 = v20[1];
      *v20 = v16;
      v20[1] = v15;

      v22 = (v2[7] + 32 * v18);
      sub_21AEA79F0(v22);
      result = sub_21AEAF9F4(&v30, v22);
      v10 = v11;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v2[6] + 16 * result);
      *v23 = v16;
      v23[1] = v15;
      result = sub_21AEAF9F4(&v30, (v2[7] + 32 * result));
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v2[2] = v26;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v2;
    }

    v6 = a1[v11 + 8];
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_21AF00820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_21AF05954();
  v13 = v12;
  if (v12[2])
  {
    sub_21AEA7574(&qword_27CD3DF48, &qword_21AF0D858);
    sub_21AEEF478();
    v14 = sub_21AF09DDC();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v13[8];
  sub_21AF05808();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;

  v21 = 0;
  while (v18)
  {
    v22 = v21;
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = v23 | (v22 << 6);
    v25 = (v13[6] + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    v39 = *(v13[7] + 8 * v24);

    sub_21AEA7574(&qword_27CD3DF50, &qword_21AF0C9A8);
    sub_21AEA7574(&qword_27CD3DF58, &qword_21AF0D860);
    swift_dynamicCast();
    v28 = sub_21AED0594();
    v29 = v28;
    if (v30)
    {
      v31 = (v14[6] + 16 * v28);
      v32 = v31[1];
      *v31 = v27;
      v31[1] = v26;

      v33 = v14[7];
      v34 = *(v33 + 8 * v29);
      *(v33 + 8 * v29) = a12;

      v21 = v22;
    }

    else
    {
      if (v14[2] >= v14[3])
      {
        goto LABEL_17;
      }

      *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v28;
      v35 = (v14[6] + 16 * v28);
      *v35 = v27;
      v35[1] = v26;
      *(v14[7] + 8 * v28) = a12;
      v36 = v14[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_18;
      }

      v14[2] = v38;
      v21 = v22;
    }
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      sub_21AF05938();
      return;
    }

    v18 = v13[v22 + 8];
    ++v21;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void AMLRawSignalsDonationStatus.init(metadataDonationId:rawSignalsDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  v11 = sub_21AF097BC();

  [v8 initWithMetadataDonationId:v9 rawSignalsDonationId:v10 configurationDonationId:v11 group:a7];

  sub_21AF05924();
}

id AMLRawSignalsDonationStatus.init(metadataDonationId:rawSignalsDonationId:configurationDonationId:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = (v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_metadataDonationId);
  *v8 = a1;
  v8[1] = a2;
  v9 = (v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_rawSignalsDonationId);
  *v9 = a3;
  v9[1] = a4;
  v10 = (v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_configurationDonationId);
  *v10 = a5;
  v10[1] = a6;
  *(v7 + OBJC_IVAR___AMLRawSignalsDonationStatus_group) = a7;
  v12.super_class = AMLRawSignalsDonationStatus;
  return objc_msgSendSuper2(&v12, sel_init);
}

void AMLRawSignalsDonationStatus.copy(with:)()
{
  sub_21AEC7AE8();
  v2 = v1;
  v3 = [v0 metadataDonationId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v4 = [v0 rawSignalsDonationId];
  v5 = sub_21AF097CC();
  v7 = v6;

  v8 = [v0 configurationDonationId];
  v9 = sub_21AF097CC();
  v11 = v10;

  v12 = [v0 group];
  v13 = objc_allocWithZone(AMLRawSignalsDonationStatus);
  v14 = sub_21AEB3AA8();
  v16 = sub_21AF04F5C(v14, v15, v5, v7, v9, v11, v12);
  v2[3] = type metadata accessor for AMLRawSignalsDonationStatus(v16);
  *v2 = v16;
  sub_21AEC79F0();
}

void sub_21AF01190(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_21AF097CC();
  sub_21AEB3AC0();
  v7 = a1;
  v6 = sub_21AEB3AA8();
  a4(v6);
}

id sub_21AF01338(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_21AF097BC();

  return v3;
}

void AMLRawSignalsConfiguration.init(bundleIdentifier:modelName:versionId:expirationPolicy:rawSignalsDescription:)()
{
  sub_21AEC7AE8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_21AF097BC();

  if (v5)
  {
    v7 = sub_21AF097BC();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_21AF097BC();

  [v8 initWithBundleIdentifier:v6 modelName:v7 versionId:v9 expirationPolicy:v3 rawSignalsDescription:v1];

  sub_21AEC79F0();
}

{
  sub_21AEC7AE8();
  v18 = v0;
  v2 = v1;
  v19 = v3;
  v5 = v4;
  v6 = sub_21AF0942C();
  v7 = sub_21AEA7C90(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21AF097BC();

  if (v5)
  {
    v15 = sub_21AF097BC();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_21AF097BC();

  sub_21AF0941C();
  sub_21AF0940C();
  (*(v9 + 8))(v13, v6);
  v17 = sub_21AF097BC();

  [v18 initWithBundleIdentifier:v14 modelName:v15 versionId:v16 expirationPolicy:v19 rawSignalsDescription:v2 configurationId:v17];

  sub_21AEC79F0();
}

id sub_21AF016F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, void *a8)
{
  v10 = sub_21AF097BC();

  if (a4)
  {
    v11 = sub_21AF097BC();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_21AF097BC();

  v14 = sub_21AF097BC();

  v15 = [v12 initWithBundleIdentifier:v10 modelName:v11 versionId:v13 expirationPolicy:a7 rawSignalsDescription:a8 configurationId:v14];

  return v15;
}

id sub_21AF01810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_modelName);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_bundleIdentifier);
  *v12 = a1;
  v12[1] = a2;
  *v11 = a3;
  v11[1] = a4;
  v13 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_versionId);
  *v13 = a5;
  v13[1] = a6;
  *(v10 + OBJC_IVAR___AMLRawSignalsConfiguration_expirationPolicy) = a7;
  *(v10 + OBJC_IVAR___AMLRawSignalsConfiguration_rawSignalsDescription) = a8;
  v14 = (v10 + OBJC_IVAR___AMLRawSignalsConfiguration_configurationId);
  *v14 = a9;
  v14[1] = a10;
  v16.super_class = AMLRawSignalsConfiguration;
  return objc_msgSendSuper2(&v16, sel_init);
}

id AMLRawSignalsConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for AMLRawSignalsConfiguration(a1);
  v6 = [v3 bundleIdentifier];
  v7 = sub_21AF097CC();
  v19 = v8;
  v20 = v7;

  v18 = sub_21AEEF25C(v3);
  v10 = v9;
  v11 = [v3 versionId];
  v12 = sub_21AF097CC();
  v14 = v13;

  LODWORD(v11) = [v3 expirationPolicy];
  v15 = [v3 rawSignalsDescription];
  v16 = [v3 configurationId];
  sub_21AF097CC();

  result = sub_21AF016F0(v20, v19, v18, v10, v12, v14, v11, v15);
  a2[3] = v5;
  *a2 = result;
  return result;
}

Swift::Void __swiftcall AMLRawSignalsConfiguration.encode(with:)(NSCoder with)
{
  v3 = [v1 bundleIdentifier];
  if (!v3)
  {
    sub_21AF097CC();
    v3 = sub_21AF097BC();
  }

  v4 = sub_21AEEF370();
  sub_21AEEF320();

  sub_21AEEF25C(v1);
  if (v5)
  {
    sub_21AF097BC();
  }

  v6 = sub_21AEEF3FC();
  sub_21AEEF320();
  swift_unknownObjectRelease();

  v7 = [v1 versionId];
  if (!v7)
  {
    sub_21AF097CC();
    v7 = sub_21AF097BC();
  }

  v8 = sub_21AF05888();
  sub_21AEEF320();

  v9 = [v1 expirationPolicy];
  v10 = sub_21AEEF370();
  [(objc_class *)with.super.isa encodeInt32:v9 forKey:v10];

  v11 = [v1 rawSignalsDescription];
  v12 = sub_21AF097BC();
  sub_21AEEF320();

  v13 = [v1 configurationId];
  if (!v13)
  {
    sub_21AF097CC();
    v13 = sub_21AF097BC();
  }

  v14 = sub_21AEEF3A4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id AMLRawSignalsConfiguration.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_modelName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = sub_21AEEF370();
  v5 = sub_21AF058B0();
  v7 = [v5 v6];

  if (v7)
  {
    sub_21AF09B9C();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v8, v9, v10, v11, v12, v13, v14, v15, v85, v90, v95, v100, v106.receiver, v106.super_class, v107, v108, v109, v110, v111);
  if (!v16)
  {

LABEL_39:
    sub_21AEA7990(v112, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_44;
  }

  if ((sub_21AF057B8() & 1) == 0)
  {

LABEL_44:
    v82 = *(v3 + 1);

    type metadata accessor for AMLRawSignalsConfiguration(v83);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = v107;
  v17 = v108;
  v19 = sub_21AEEF3FC();
  v20 = sub_21AF058B0();
  v22 = [v20 v21];

  if (v22)
  {
    sub_21AF09B9C();
    v23 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v23, v24, v25, v26, v27, v28, v29, v30, v86, v91, v96, v101, v106.receiver, v106.super_class, v107, v108, v109, v110, v111);
  if (!v31)
  {

LABEL_38:

    goto LABEL_39;
  }

  if ((sub_21AF057B8() & 1) == 0)
  {

LABEL_43:

    goto LABEL_44;
  }

  v32 = v108;
  v102 = v18;
  v33 = sub_21AF05888();
  v34 = sub_21AF058B0();
  v36 = [v34 v35];

  if (v36)
  {
    sub_21AF09B9C();
    v37 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v37, v38, v39, v40, v41, v42, v43, v44, v87, v92, v107, v102, v106.receiver, v106.super_class, v107, v108, v109, v110, v111);
  if (!v45)
  {

LABEL_37:

    goto LABEL_38;
  }

  if ((sub_21AF057B8() & 1) == 0)
  {

LABEL_42:

    goto LABEL_43;
  }

  v46 = v108;
  v47 = sub_21AF097BC();
  v48 = sub_21AF058B0();
  v50 = [v48 v49];

  if (v50)
  {
    sub_21AF09B9C();
    v51 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v51, v52, v53, v54, v55, v56, v57, v58, v88, v107, v97, v103, v106.receiver, v106.super_class, v107, v108, v109, v110, v111);
  if (!v59)
  {

LABEL_36:

    goto LABEL_37;
  }

  type metadata accessor for AMLFeaturesSpecification(0);
  if ((sub_21AF057B8() & 1) == 0)
  {

LABEL_41:

    goto LABEL_42;
  }

  v60 = sub_21AEEF3A4();
  v61 = sub_21AF058B0();
  v63 = [v61 v62];

  if (v63)
  {
    sub_21AF09B9C();
    v64 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v64, v65, v66, v67, v68, v69, v70, v71, v107, v93, v98, v104, v106.receiver, v106.super_class, v107, v108, v109, v110, v111);
  if (!v72)
  {

    goto LABEL_36;
  }

  if ((sub_21AF057B8() & 1) == 0)
  {

    goto LABEL_41;
  }

  v73 = v107;
  v74 = v108;
  v75 = sub_21AEEF370();
  v76 = [a1 decodeInt32ForKey_];

  v77 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_bundleIdentifier];
  *v77 = v105;
  *(v77 + 1) = v17;
  v78 = *(v3 + 1);
  *v3 = v99;
  *(v3 + 1) = v32;

  v79 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_versionId];
  *v79 = v94;
  *(v79 + 1) = v46;
  *&v1[OBJC_IVAR___AMLRawSignalsConfiguration_expirationPolicy] = v76;
  *&v1[OBJC_IVAR___AMLRawSignalsConfiguration_rawSignalsDescription] = v89;
  v80 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_configurationId];
  *v80 = v73;
  v80[1] = v74;
  v106.receiver = v1;
  v106.super_class = AMLRawSignalsConfiguration;
  v81 = objc_msgSendSuper2(&v106, sel_init);

  return v81;
}

id AMLRawSignalsDonation.init(rawSignalsConfiguration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRawSignalsConfiguration_];

  return v2;
}

id AMLRawSignalsDonation.init(rawSignalsConfiguration:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(v1 + OBJC_IVAR___AMLRawSignalsDonation_rawSignalsConfiguration) = a1;
  v4.super_class = AMLRawSignalsDonation;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AMLRawSignalsDonation.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 rawSignalsConfiguration];
  v4 = [objc_allocWithZone(AMLRawSignalsDonation) initWithRawSignalsConfiguration_];

  result = type metadata accessor for AMLRawSignalsDonation(v5);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_21AF02440(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_21AEAF9B0(v8, v8[3]);
  v6 = sub_21AF09E3C();
  sub_21AEA79F0(v8);
  return v6;
}

Swift::Void __swiftcall AMLRawSignalsDonation.encode(with:)(NSCoder with)
{
  v3 = [v1 rawSignalsConfiguration];
  sub_21AF058C8();
  v4 = sub_21AF097BC();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id AMLRawSignalsDonation.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  sub_21AF058C8();
  v4 = sub_21AF097BC();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_21AEA7990(v14, &qword_27CD3D330, &unk_21AF0C420);
LABEL_9:
    sub_21AEB371C(*v3, *(v3 + 1), *(v3 + 2));
    type metadata accessor for AMLRawSignalsDonation(v8);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for AMLRawSignalsConfiguration(v6);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLRawSignalsDonation_rawSignalsConfiguration] = v11;
  v10.receiver = v1;
  v10.super_class = AMLRawSignalsDonation;
  v7 = objc_msgSendSuper2(&v10, sel_init);

  return v7;
}

uint64_t sub_21AF02730()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration];
  v3 = *&v0[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration];
  v4 = *&v0[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration + 8];
  v5 = v2[2];
  if (v4)
  {
    v6 = v3;
    v7 = v2[2];
  }

  else
  {
    v6 = sub_21AF027F4(v1);
    v9 = v8;
    v10 = *v2;
    v11 = v2[1];
    v12 = v2[2];
    *v2 = v6;
    v2[1] = v13;
    v2[2] = v8;

    v9;
    sub_21AEB371C(v10, v11, v12);
  }

  sub_21AEB383C(v3, v4, v5);
  return v6;
}

uint64_t sub_21AF027F4(void *a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21AF093FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [a1 rawSignalsConfiguration];
  v36[0] = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v36];

  v10 = v36[0];
  if (v9)
  {
    v11 = sub_21AF0932C();
    v13 = v12;

    if (MEMORY[0x21CEE45A0](v11, v13) > 0)
    {
      goto LABEL_10;
    }

    sub_21AEA7900(v11, v13);
  }

  else
  {
    v14 = v10;
    v15 = sub_21AF0927C();

    swift_willThrow();
    if (qword_27CD3D290 != -1)
    {
      swift_once();
    }

    v16 = sub_21AF096CC();
    sub_21AEA7958(v16, qword_27CD3EBA0);
    v17 = v15;
    v18 = sub_21AF096AC();
    v19 = sub_21AF09A9C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_21AE94000, v18, v19, "Encountered error while archiving RawSignalsConfig: %@", v20, 0xCu);
      sub_21AEA7990(v21, &qword_27CD3DF30, &qword_21AF0C0F0);
      MEMORY[0x21CEE5A20](v21, -1, -1);
      MEMORY[0x21CEE5A20](v20, -1, -1);
    }

    else
    {
    }
  }

  v11 = 0;
  v13 = 0xF000000000000000;
LABEL_10:
  v24 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  swift_initStackObject();
  if (v13 >> 60 == 15)
  {

    v25 = 0xD000000000000018;
  }

  else
  {
    v33 = "Signals Donation";
    v34 = ".rawSignals.spotlightConfig";
    v35 = v2;
    v26 = [a1 rawSignalsConfiguration];
    v27 = [v26 bundleIdentifier];

    v28 = sub_21AF097CC();
    v30 = v29;

    sub_21AF093DC();
    v25 = sub_21AEA9420(v11, v13, 0xD00000000000002BLL, v33 | 0x8000000000000000, 0xD000000000000013, v34 | 0x8000000000000000, v28, v30, v6, 0xD000000000000019, 0x800000021AF10F10, 16718, 0xE200000000000000, v24);

    sub_21AEB37D4(v11, v13);
    (*(v3 + 8))(v6, v35);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t sub_21AF02C44(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:0 error:v22];
  v2 = v22[0];
  if (v1)
  {
    sub_21AF0932C();

    v3 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v3) <= 0)
    {
      v4 = sub_21AEB3AB4();
      sub_21AEA7900(v4, v5);
    }
  }

  else
  {
    v6 = v2;
    v7 = sub_21AF0927C();

    swift_willThrow();
    if (qword_27CD3D290 != -1)
    {
      swift_once();
    }

    v8 = sub_21AF096CC();
    sub_21AEA7958(v8, qword_27CD3EBA0);
    v9 = v7;
    v10 = sub_21AF096AC();
    v11 = sub_21AF09A9C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_21AE94000, v10, v11, "Encountered error while archiving RawSignals Donation: %@", v12, 0xCu);
      sub_21AEA7990(v13, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  sub_21AEB3AB4();
  sub_21AF02E8C();
  v17 = v16;
  v18 = sub_21AEB3AB4();
  sub_21AEB37D4(v18, v19);
  v20 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_21AF02E8C()
{
  sub_21AEC7AE8();
  v1 = v0;
  v213 = v2;
  v211 = v3;
  v189 = v4;
  v220 = *MEMORY[0x277D85DE8];
  v204 = sub_21AF093FC();
  v5 = sub_21AEA7C90(v204);
  v203 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21AF0969C();
  v12 = sub_21AEA7C90(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v199 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v187 - v19;
  v210 = objc_opt_self();
  v21 = sub_21AEF750C([v210 mainBundle]);
  v23 = v22;
  LODWORD(v212) = sub_21AF09B0C();
  if (qword_2812288D0 != -1)
  {
    swift_once();
  }

  v214 = v10;
  v24 = qword_281228910;
  if (qword_2812288D8 != -1)
  {
    swift_once();
  }

  v25 = sub_21AEA7958(v11, qword_281228918);
  isa = v14[2].isa;
  v196 = v25;
  v190 = v14 + 2;
  v195 = isa;
  (isa)(v20);
  v194 = sub_21AEA7574(&unk_27CD3D810, &qword_21AF0C598);
  v27 = swift_allocObject();
  v209 = xmmword_21AF0C580;
  *(v27 + 16) = xmmword_21AF0C580;
  v28 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  v29 = sub_21AEB37E8();
  *(v27 + 64) = v29;
  if (v23)
  {
    v30 = v21;
  }

  else
  {
    v30 = 0x6E776F6E6B6E55;
  }

  v31 = 0xE700000000000000;
  if (v23)
  {
    v31 = v23;
  }

  v192 = v30;
  *(v27 + 32) = v30;
  *(v27 + 40) = v31;
  v191 = v31;
  v208 = v23;

  v32 = [v1 rawSignalsConfiguration];
  v33 = [v32 configurationId];

  v34 = sub_21AF097CC();
  v215 = v1;
  v36 = v35;

  *(v27 + 96) = v28;
  *(v27 + 104) = v29;
  v197 = v29;
  *(v27 + 72) = v34;
  *(v27 + 80) = v36;
  v37 = v215;
  sub_21AEB3A6C();
  v187 = 53;
  sub_21AF0967C();

  v38 = v14[1].isa;
  v39 = sub_21AEB3980();
  v193 = v40;
  (v40)(v39);
  v41 = v214;
  sub_21AF093DC();
  v206 = sub_21AF02730();
  v207 = v42;

  v44 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  inited = swift_initStackObject();
  v46 = v211;
  v201 = v11;
  v200 = v14 + 1;
  v198 = v24;
  v205 = v44;
  v202 = inited;
  if (v211 >> 60 == 15)
  {
    v47 = 0x800000021AF0F390;
    v212 = 0xD000000000000014;
    v48 = v213;
  }

  else
  {
    v49 = v41;
    v188 = "featuresMetadataKey";
    v212 = "spotlightBundleIdentifier";
    v50 = v189;
    sub_21AEA78A8(v189, v211);
    v51 = [v37 rawSignalsConfiguration];
    v52 = [v51 bundleIdentifier];

    v187 = sub_21AF097CC();
    v54 = v53;

    v48 = v213;
    v55 = [v213 sessionId];
    v56 = sub_21AF097CC();
    v58 = v57;

    v212 = sub_21AEA9420(v50, v46, 0xD000000000000012, v188 | 0x8000000000000000, 0xD00000000000002ALL, v212 | 0x8000000000000000, 0x800000021AF10EA0, v54, v49, 0xD000000000000010, 0x800000021AF10EA0, v56, v58, v44);
    v47 = v59;
    sub_21AEB37D4(v50, v46);
  }

  v60 = sub_21AEF750C([v210 mainBundle]);
  v62 = v61;
  v63 = sub_21AEB3760(v48);
  v211 = v47;
  if (!v63)
  {
    v69 = v47;
    sub_21AEA7574(&unk_27CD3D820, &qword_21AF0C5A0);
    v70 = swift_initStackObject();
    *(v70 + 16) = v209;
    *(v70 + 32) = 0x72756769666E6F63;
    *(v70 + 40) = 0xEF64496E6F697461;
    v71 = sub_21AF05990();
    v72 = [v71 configurationId];

    v73 = sub_21AF097CC();
    v75 = v74;

    *(v70 + 48) = v73;
    *(v70 + 56) = v75;
    *(v70 + 64) = 0xD000000000000012;
    *(v70 + 72) = 0x800000021AF0EB20;
    *(v70 + 80) = v212;
    *(v70 + 88) = v47;

    v76 = sub_21AF0974C();
    if (v62)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v218 = v76;
      sub_21AF05204();
      v76 = v218;
    }

    v77 = sub_21AEB3AD8();
    v78 = sub_21AF097CC();
    v80 = v79;

    v81 = sub_21AF005F0(v76);

    v82 = objc_allocWithZone(AMLFeaturesDonationMetadata);
    v83 = sub_21AEE0BB4(v78, v80, v81);
    if (v83)
    {
LABEL_34:
      v114 = objc_opt_self();
      *&v218 = 0;
      v115 = [v114 archivedDataWithRootObject:v83 requiringSecureCoding:1 error:&v218];
      v116 = v218;
      if (v115)
      {
        v117 = sub_21AF0932C();
        v119 = v118;

        v120 = sub_21AEB3980();
        if (MEMORY[0x21CEE45A0](v120) > 0)
        {
LABEL_43:
          v141 = dispatch_group_create();
          v210 = v141;
          v208 = v119;
          v190 = v117;
          v189 = v83;
          if (v119 >> 60 != 15)
          {
            v142 = v141;
            v188 = "contentCreationDate";
            v213 = "s for itemId: %{public}s";
            v143 = sub_21AEB3980();
            sub_21AEA78A8(v143, v144);
            v145 = [v215 rawSignalsConfiguration];
            v146 = [v145 bundleIdentifier];

            v187 = sub_21AF097CC();
            v148 = v147;

            v149 = [v83 v69[83]];
            v150 = sub_21AF097CC();
            v152 = v151;

            v189 = v152;
            v190 = v142;
            v187 = 0x800000021AF0F420;
            v188 = v150;
            v186 = v214;
            v153 = sub_21AEB3980();
            sub_21AEA9420(v153, v154, v155, v156, v157, v158, v187, v148, v186, 0xD000000000000011, v187, v188, v189, v190);
            v159 = sub_21AEB3980();
            sub_21AEB37D4(v159, v160);
          }

          v161 = v207;
          v162 = v205;
          v163 = v196;
          v164 = v195;
          v165 = objc_allocWithZone(AMLRawSignalsDonationStatus);
          v166 = v162;
          sub_21AEB398C();
          v213 = sub_21AF04F5C(v167, v168, v169, v170, v171, v161, v166);
          sub_21AF09AFC();
          v172 = v199;
          v173 = v163;
          v174 = v201;
          v164(v199, v173, v201);
          v175 = swift_allocObject();
          *(v175 + 16) = v209;
          v176 = MEMORY[0x277D837D0];
          v177 = v197;
          *(v175 + 56) = MEMORY[0x277D837D0];
          *(v175 + 64) = v177;
          v178 = v191;
          *(v175 + 32) = v192;
          *(v175 + 40) = v178;
          v179 = [v215 rawSignalsConfiguration];
          v180 = [v179 configurationId];

          v181 = sub_21AF097CC();
          v183 = v182;

          *(v175 + 96) = v176;
          *(v175 + 104) = v177;
          *(v175 + 72) = v181;
          *(v175 + 80) = v183;
          sub_21AEB3A6C();
          v191 = 56;
          sub_21AF0967C();

          v184 = v189;

          sub_21AEB37D4(v190, v208);

          v193(v172, v174);
          (*(v203 + 8))(v214, v204);
LABEL_46:
          v185 = *MEMORY[0x277D85DE8];
          sub_21AEC79F0();
          return;
        }

        v121 = sub_21AEB3980();
        sub_21AEA7900(v121, v122);
      }

      else
      {
        v123 = v116;
        v124 = sub_21AF0927C();

        swift_willThrow();
        if (qword_2812288C8 != -1)
        {
          sub_21AEAFA7C();
        }

        v125 = sub_21AF096CC();
        sub_21AEA7958(v125, qword_2812288F8);
        v126 = v215;
        v127 = v124;
        v128 = sub_21AF096AC();
        v129 = sub_21AF09A9C();

        if (os_log_type_enabled(v128, v129))
        {
          swift_slowAlloc();
          v130 = sub_21AEB3A1C();
          v131 = sub_21AEB39C8();
          *&v218 = v131;
          *v124 = 136315394;
          v132 = [v126 (v46 + 3031)];
          v133 = [v132 bundleIdentifier];

          v134 = sub_21AF097CC();
          v136 = v135;

          v137 = sub_21AECFFFC(v134, v136, &v218);

          *(v124 + 1) = v137;
          *(v124 + 6) = 2112;
          v138 = v124;
          v139 = _swift_stdlib_bridgeErrorToNSError();
          *(v124 + 14) = v139;
          *v130 = v139;
          sub_21AF058E4(&dword_21AE94000, v140, v129, "Encountered error from bundle: %s while archiving AMLFeaturesDonationMetadata: %@");
          sub_21AEA7990(v130, &qword_27CD3DF30, &qword_21AF0C0F0);
          v69 = &property descriptor for AMLProportionalAllocationSelector.identifier;
          sub_21AEAFB90();
          sub_21AEA79F0(v131);
          sub_21AEAFB90();
          sub_21AEAFB90();
        }

        else
        {
        }
      }

      v117 = 0;
      v119 = 0xF000000000000000;
      goto LABEL_43;
    }

LABEL_20:

    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v84 = sub_21AF096CC();
    sub_21AEA7958(v84, qword_2812288F8);
    v85 = v215;
    v86 = sub_21AF096AC();
    v87 = sub_21AF09A9C();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = sub_21AEB39C8();
      *&v218 = v89;
      *v88 = 136315138;
      v90 = [v85 (v46 + 3031)];
      v91 = [v90 bundleIdentifier];

      v92 = sub_21AF097CC();
      v94 = v93;

      v95 = sub_21AECFFFC(v92, v94, &v218);

      *(v88 + 4) = v95;
      _os_log_impl(&dword_21AE94000, v86, v87, "Donation Metadata is nil from bundleId: %s", v88, 0xCu);
      sub_21AEA79F0(v89);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v96 = v214;
    v97 = v207;
    v98 = v205;
    objc_allocWithZone(AMLRawSignalsDonationStatus);
    sub_21AEB398C();
    v213 = sub_21AF04F5C(v99, v100, v101, v102, v103, v97, v98);
    (*(v203 + 8))(v96, v204);
    goto LABEL_46;
  }

  v64 = sub_21AEB3760(v48);
  v65 = sub_21AF05990();
  v66 = [v65 configurationId];

  v67 = sub_21AF097CC();
  v219 = MEMORY[0x277D837D0];
  *&v218 = v67;
  *(&v218 + 1) = v68;
  if (!v64)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v219)
  {
    sub_21AEAF9F4(&v218, v217);
    swift_isUniquelyReferenced_nonNull_native();
    sub_21AEB3A94();
    sub_21AF05048();
    v64 = v216;
    v69 = 0xD000000000000012;
  }

  else
  {
    sub_21AEA7990(&v218, &qword_27CD3D330, &unk_21AF0C420);
    v104 = sub_21AED0594();
    v69 = 0xD000000000000012;
    if (v105)
    {
      v106 = v104;
      swift_isUniquelyReferenced_nonNull_native();
      v216 = v64;
      v107 = *(v64 + 24);
      sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
      sub_21AF09D0C();
      v64 = v216;
      v108 = *(*(v216 + 48) + 16 * v106 + 8);

      sub_21AEAF9F4((*(v64 + 56) + 32 * v106), v217);
      sub_21AF09D2C();
    }

    else
    {
      memset(v217, 0, sizeof(v217));
    }

    sub_21AEA7990(v217, &qword_27CD3D330, &unk_21AF0C420);
  }

  v219 = MEMORY[0x277D837D0];
  *&v218 = v212;
  *(&v218 + 1) = v47;
  if (!v64)
  {
    goto LABEL_48;
  }

  sub_21AEAF9F4(&v218, v217);

  swift_isUniquelyReferenced_nonNull_native();
  sub_21AEB3A94();
  sub_21AF05048();
  v109 = v216;
  if (!v62)
  {
    goto LABEL_33;
  }

  v219 = MEMORY[0x277D837D0];
  *&v218 = v60;
  *(&v218 + 1) = v62;
  if (v216)
  {
    sub_21AEAF9F4(&v218, v217);
    swift_isUniquelyReferenced_nonNull_native();
    v216 = v109;
    sub_21AF05048();
    v109 = v216;
LABEL_33:
    v110 = sub_21AEB3AD8();
    v111 = sub_21AF097CC();
    v113 = v112;

    objc_allocWithZone(AMLFeaturesDonationMetadata);

    v83 = sub_21AEE0BB4(v111, v113, v109);

    if (v83)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

LABEL_49:
  __break(1u);
}

void sub_21AF0419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_21AF05954();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  v29 = v28;
  a12 = *MEMORY[0x277D85DE8];
  v30 = objc_opt_self();
  a11 = 0;
  v31 = [v30 archivedDataWithRootObject:v29 requiringSecureCoding:0 error:&a11];
  v32 = a11;
  if (v31)
  {
    sub_21AF0932C();

    v33 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v33) <= 0)
    {
      v34 = sub_21AEB3AB4();
      sub_21AEA7900(v34, v35);
    }
  }

  else
  {
    v36 = v32;
    v37 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v38 = sub_21AF096CC();
    sub_21AEA7958(v38, qword_2812288F8);
    v39 = v27;
    v40 = v37;
    v41 = sub_21AF096AC();
    v42 = sub_21AF09A9C();

    if (os_log_type_enabled(v41, v42))
    {
      swift_slowAlloc();
      v43 = sub_21AEB3A1C();
      v54 = sub_21AEB39C8();
      a11 = v54;
      *v37 = 136315394;
      v44 = [v39 rawSignalsConfiguration];
      v45 = [v44 bundleIdentifier];

      v46 = sub_21AF097CC();
      v48 = v47;

      sub_21AECFFFC(v46, v48, &a11);

      sub_21AF05970();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v49;
      *v43 = v49;
      sub_21AF058E4(&dword_21AE94000, v50, v42, "Encountered error from bundle: %s while archiving FeaturesDonation: %@");
      sub_21AEA7990(v43, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEA79F0(v54);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  sub_21AEB3AB4();
  sub_21AF02E8C();
  v51 = sub_21AEB3AB4();
  sub_21AEB37D4(v51, v52);
  v53 = *MEMORY[0x277D85DE8];
  sub_21AF05938();
}

void sub_21AF04510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_21AF05954();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  a12 = *MEMORY[0x277D85DE8];
  v28 = objc_opt_self();
  sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  sub_21AEEF478();
  v29 = sub_21AF0987C();
  a11 = 0;
  v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:0 error:&a11];

  v31 = a11;
  if (v30)
  {
    sub_21AF0932C();

    v32 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v32) <= 0)
    {
      v33 = sub_21AEB3AB4();
      sub_21AEA7900(v33, v34);
    }
  }

  else
  {
    v35 = v31;
    v36 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C();
    }

    v37 = sub_21AF096CC();
    sub_21AEA7958(v37, qword_2812288F8);
    v38 = v27;
    v39 = v36;
    v40 = sub_21AF096AC();
    v41 = sub_21AF09A9C();

    if (os_log_type_enabled(v40, v41))
    {
      swift_slowAlloc();
      v42 = sub_21AEB3A1C();
      v53 = sub_21AEB39C8();
      a11 = v53;
      *v36 = 136315394;
      v43 = [v38 rawSignalsConfiguration];
      v44 = [v43 bundleIdentifier];

      v45 = sub_21AF097CC();
      v47 = v46;

      sub_21AECFFFC(v45, v47, &a11);

      sub_21AF05970();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v48;
      *v42 = v48;
      sub_21AF058E4(&dword_21AE94000, v49, v41, "Encountered error from bundle: %s while archiving features dictionary donation: %@");
      sub_21AEA7990(v42, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEA79F0(v53);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  sub_21AEB3AB4();
  sub_21AF02E8C();
  v50 = sub_21AEB3AB4();
  sub_21AEB37D4(v50, v51);
  v52 = *MEMORY[0x277D85DE8];
  sub_21AF05938();
}

uint64_t AMLRawSignalsConfiguration.description.getter()
{
  v1 = v0;
  sub_21AF09C5C();
  sub_21AF05918();
  MEMORY[0x21CEE4A70]();
  v2 = [v0 bundleIdentifier];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  MEMORY[0x21CEE4A70](0x6C65646F6D09090ALL, 0xEE00203A656D614ELL);
  v4 = sub_21AEEF25C(v1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 7104878;
    v6 = 0xE300000000000000;
  }

  MEMORY[0x21CEE4A70](v4, v6);

  MEMORY[0x21CEE4A70](0x697372657609090ALL, 0xEE00203A64496E6FLL);
  v7 = [v1 versionId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v8 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v8);

  sub_21AF05918();
  MEMORY[0x21CEE4A70]();
  [v1 expirationPolicy];
  v9 = sub_21AF09E1C();
  MEMORY[0x21CEE4A70](v9);

  sub_21AF05918();
  MEMORY[0x21CEE4A70]();
  v10 = [v1 rawSignalsDescription];
  v11 = [v10 description];
  v12 = sub_21AF097CC();
  v14 = v13;

  MEMORY[0x21CEE4A70](v12, v14);

  sub_21AF05918();
  MEMORY[0x21CEE4A70](0xD000000000000014);
  v15 = [v1 configurationId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v16 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v16);

  return 0;
}

id sub_21AF04C34(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21AF097BC();

  return v5;
}

uint64_t AMLRawSignalsDonation.description.getter()
{
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD000000000000031, 0x800000021AF10CC0);
  v1 = [v0 rawSignalsConfiguration];
  v2 = [v1 description];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  return 0;
}

uint64_t static AMLRawSignalsDonation.decodeModelData(from:)()
{
  sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
  sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21AF0D840;
  *(v1 + 32) = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
  *(v1 + 40) = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  v2 = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
  *(v1 + 48) = v2;
  *(v1 + 56) = type metadata accessor for AMLRawSignalsDonation(v2);
  v3 = type metadata accessor for AMLFeaturesSpecification(0);
  *(v1 + 64) = v3;
  *(v1 + 72) = type metadata accessor for AMLRawSignalsConfiguration(v3);
  *(v1 + 80) = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  *(v1 + 88) = sub_21AEA7B80(0, &qword_27CD3DE28, 0x277CBFED0);
  sub_21AF09ABC();

  if (!v0)
  {
    if (v5[3])
    {
      sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
      if (swift_dynamicCast())
      {
        return v5[5];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21AEA7990(v5, &qword_27CD3D330, &unk_21AF0C420);
      return 0;
    }
  }

  return result;
}

id sub_21AF04F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  v11 = sub_21AF097BC();

  v12 = [v7 initWithMetadataDonationId:v9 rawSignalsDonationId:v10 configurationDonationId:v11 group:a7];

  return v12;
}

_OWORD *sub_21AF05048()
{
  v5 = sub_21AF05828();
  sub_21AF05774(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_21AF09E7C();
    __break(1u);
    return result;
  }

  sub_21AF05900();
  sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
  if (sub_21AF057D8())
  {
    sub_21AF0590C();
    sub_21AED0594();
    sub_21AF057F8();
    if (!v9)
    {
      goto LABEL_14;
    }

    v4 = v8;
  }

  if (v3)
  {
    sub_21AEA79F0((*(*v2 + 56) + 32 * v4));
    sub_21AEC76A0();
    sub_21AF05924();

    return sub_21AEAF9F4(v10, v11);
  }

  else
  {
    v14 = sub_21AEE9FB8();
    sub_21AF05618(v14, v15, v1, v0, v16);
    sub_21AF05924();
  }
}

void sub_21AF05134()
{
  v5 = sub_21AF05858();
  sub_21AF05774(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  sub_21AF05900();
  sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
  if (sub_21AF057D8())
  {
    sub_21AF0590C();
    sub_21AED0594();
    sub_21AF057F8();
    if (!v9)
    {
      goto LABEL_12;
    }

    v4 = v8;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    sub_21AF05924();
  }

  else
  {
    v10 = sub_21AEE9FB8();
    sub_21AF0565C(v10, v11, v0, v1, v12);
    sub_21AF05924();
  }
}

uint64_t sub_21AF05204()
{
  sub_21AEC7AE8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_21AED0594();
  sub_21AF05774(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_21AEA7574(&qword_27CD3DF38, &qword_21AF0D850);
  if ((sub_21AF09D0C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_21AED0594();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_21AF09E7C();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    sub_21AEC79F0();
  }

  else
  {
    sub_21AF05688(v16, v5, v3, v9, v7, v21);
    sub_21AEC79F0();
  }
}

void sub_21AF05348()
{
  v5 = sub_21AF05828();
  sub_21AF05774(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_12:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  sub_21AF05900();
  sub_21AEA7574(&qword_27CD3DF70, &qword_21AF0CE90);
  if (sub_21AF057D8())
  {
    sub_21AF0590C();
    sub_21AED0594();
    sub_21AF057F8();
    if (!v9)
    {
      goto LABEL_12;
    }

    v4 = v8;
  }

  if (v3)
  {
    v10 = (*(*v2 + 56) + (v4 << 6));
    v11 = v0[1];
    *v10 = *v0;
    v10[1] = v11;
    v12 = v0[3];
    v10[2] = v0[2];
    v10[3] = v12;
    sub_21AF05924();
  }

  else
  {
    v13 = sub_21AEE9FB8();
    sub_21AF056D4(v13, v14, v1, v0, v15);
    sub_21AF05924();
  }
}

uint64_t sub_21AF0543C()
{
  sub_21AEC7AE8();
  v6 = v5;
  v8 = v7;
  v9 = sub_21AF05858();
  sub_21AF05774(v9, v10);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_21AF09E7C();
    __break(1u);
    return result;
  }

  sub_21AF05900();
  sub_21AEA7574(v8, v6);
  if (sub_21AF057D8())
  {
    sub_21AF0590C();
    sub_21AED0594();
    sub_21AF057F8();
    if (!v13)
    {
      goto LABEL_14;
    }

    v4 = v12;
  }

  if (v3)
  {
    v14 = *(*v2 + 56);
    v15 = *(v14 + 8 * v4);
    *(v14 + 8 * v4) = v1;
    sub_21AEC79F0();
  }

  else
  {
    v18 = sub_21AEE9FB8();
    sub_21AF0565C(v18, v19, v0, v1, v20);
    sub_21AEC79F0();
  }
}

void sub_21AF0551C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_21AED0608(a2);
  sub_21AF05774(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  sub_21AEA7574(&qword_27CD3DF80, &qword_21AF0CE98);
  if ((sub_21AF09D0C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_21AED0608(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    *(*(*v3 + 56) + 8 * v12) = a1;
    sub_21AF05924();
  }

  else
  {
    sub_21AF05924();

    sub_21AF05710(v17, v18, v19, v20);
  }
}

_OWORD *sub_21AF05618(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_21AF05788(a1, a2, a3, a4, a5);
  result = sub_21AEAF9F4(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_21AF0565C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_21AF05788(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_21AF058DC(v6, v11);
  }
}

unint64_t sub_21AF05688(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_21AF056D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_21AF05788(a1, a2, a3, a4, a5);
  v8 = (v7 + (v5 << 6));
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = v9[3];
  v8[2] = v9[2];
  v8[3] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_21AF058DC(v6, v14);
  }
}

unint64_t sub_21AF05710(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_21AF05788(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t sub_21AF057B8()
{

  return swift_dynamicCast();
}

uint64_t sub_21AF057D8()
{

  return sub_21AF09D0C();
}

unint64_t sub_21AF05828()
{
  v2 = *v0;

  return sub_21AED0594();
}

unint64_t sub_21AF05858()
{
  v2 = *v0;

  return sub_21AED0594();
}

uint64_t sub_21AF05888()
{

  return sub_21AF097BC();
}

void sub_21AF058E4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

id sub_21AF05970()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2112;

  return v1;
}

id sub_21AF05990()
{
  v2 = *(v0 - 296);

  return [v2 rawSignalsConfiguration];
}

uint64_t AMLDropDuplicateCandidatesSelector.select(context:candidates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = *(a4 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v5[11] = v11;
  v12 = type metadata accessor for AMLCandidateWithFeatures();
  v5[12] = v12;
  v13 = sub_21AF09B7C();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v16 = *(v11 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v18 = *(v12 - 8);
  v5[22] = v18;
  v5[23] = *(v18 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21AF05C48, 0, 0);
}

uint64_t sub_21AF05C48()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  swift_getTupleTypeMetadata2();
  sub_21AF098EC();
  swift_getAssociatedConformanceWitness();
  sub_21AF0974C();
  sub_21AF063E8();
  v6 = sub_21AF0989C();
  v82 = v6;
  sub_21AF063E8();
  if (v6 != sub_21AF0992C())
  {
    v7 = v0[22];
    v60 = v0[23];
    v8 = v0[18];
    v78 = (v7 + 16);
    v9 = (v7 + 32);
    v76 = (v8 + 16);
    v62 = (v0[6] + 40);
    v63 = (v0[9] + 8);
    v70 = (v7 + 8);
    v68 = v7;
    v69 = (v8 + 8);
    v61 = (v0[14] + 8);
    v67 = (v7 + 32);
    do
    {
      v10 = v0[12];
      v11 = v0[4];
      v12 = sub_21AF0990C();
      sub_21AF098BC();
      if (v12)
      {
        v72 = *(v68 + 16);
        v72(v0[26], v0[4] + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v6, v0[12]);
      }

      else
      {
        v46 = v0[12];
        v47 = v0[4];
        result = sub_21AF09C7C();
        if (v60 != 8)
        {
          __break(1u);
          return result;
        }

        v49 = result;
        v50 = v0[26];
        v51 = v0[12];
        v0[2] = v49;
        v72 = *v78;
        (*v78)(v50, (v0 + 2), v51);
        swift_unknownObjectRelease();
      }

      v14 = v0[25];
      v13 = v0[26];
      v15 = v0[21];
      v16 = v0[17];
      v18 = v0[11];
      v17 = v0[12];
      v19 = v0[4];
      sub_21AF0996C();
      v20 = *v9;
      (*v9)(v14, v13, v17);
      v21 = *v76;
      v22 = sub_21AF063E8();
      v21(v22);
      sub_21AF063E8();
      sub_21AF0978C();
      v23 = sub_21AEA766C(v16, 1, v17);
      v80 = v0[25];
      v25 = v0[11];
      v24 = v0[12];
      if (v23 == 1)
      {
        v26 = v0[21];
        v27 = v0[19];
        v28 = v0[15];
        (*v61)(v0[17], v0[13]);
        (v21)(v27, v26, v25);
        v72(v28, v80, v24);
        sub_21AEA75BC(v28, 0, 1, v24);
        sub_21AF0977C();
        sub_21AF0979C();
        (*v69)(v26, v25);
        (*v70)(v80, v24);
      }

      else
      {
        v30 = v0[20];
        v29 = v0[21];
        v31 = v0[17];
        v73 = v0[16];
        v64 = v0[10];
        v32 = v0[8];
        v65 = v32;
        v66 = v0[24];
        v34 = v0[5];
        v33 = v0[6];
        v20();
        (v21)(v30, v29, v25);
        (*v62)(v34, v33);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 16))(v66, v80, v65, AssociatedConformanceWitness);
        v37 = v0[24];
        v36 = v0[25];
        v39 = v0[20];
        v38 = v0[21];
        v40 = v0[16];
        v42 = v0[11];
        v41 = v0[12];
        (*v63)(v0[10], v0[8]);
        sub_21AEA75BC(v40, 0, 1, v41);
        sub_21AF0977C();
        sub_21AF0979C();
        v43 = *v70;
        (*v70)(v37, v41);
        (*v69)(v38, v42);
        v43(v36, v41);
      }

      v44 = v0[12];
      v45 = v0[4];
      v6 = v82;
      v9 = v67;
    }

    while (v82 != sub_21AF0992C());
  }

  v53 = v0[25];
  v52 = v0[26];
  v54 = v0[24];
  v55 = v0[21];
  v71 = v0[20];
  v74 = v0[19];
  v75 = v0[17];
  v77 = v0[16];
  v57 = v0[11];
  v56 = v0[12];
  v79 = v0[15];
  v81 = v0[10];
  v0[3] = sub_21AF0976C();
  sub_21AF0975C();
  swift_getWitnessTable();
  v58 = sub_21AF0998C();

  v59 = v0[1];

  return v59(v58);
}

uint64_t AMLCandidateSourceIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLCandidateSourceIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLCandidateSourceIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0x74616469646E6143;
    v2[3] = 0xEF656372756F5365;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD000000000000024;
    *(v6 + 8) = 0x800000021AF10F30;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLCandidateSourceIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t MLFeatureProvider.merging(other:uniquingKeysWith:)()
{
  v1 = sub_21AEAD0E0();
  swift_getObjectType();
  v2 = sub_21AEAD0E0();
  sub_21AF06F3C(v2, v1);
  v3 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  result = sub_21AF07524();
  if (v0)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF066D4()
{
  v42 = sub_21AF0948C();
  v0 = sub_21AEA7C90(v42);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  sub_21AEC7554();
  v7 = v6 - v5;
  v41 = sub_21AF0945C();
  v8 = sub_21AEA7C90(v41);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21AEC7554();
  v15 = v14 - v13;
  v16 = sub_21AF094BC();
  v17 = sub_21AEA7C90(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_21AEC7554();
  v24 = v23 - v22;
  sub_21AF094AC();
  sub_21AF0944C();
  sub_21AF0947C();
  if (qword_27CD3D2B8 != -1)
  {
    sub_21AF08564();
  }

  v25 = qword_27CD3EC18;
  v26 = sub_21AF0946C();
  v27 = sub_21AF08584();
  [v27 v28];

  v29 = sub_21AF0943C();
  v30 = sub_21AF08584();
  [v30 v31];

  v32 = sub_21AF0949C();
  v33 = sub_21AF08584();
  [v33 v34];

  [v25 setDateStyle_];
  [v25 setTimeStyle_];
  v35 = sub_21AF0939C();
  v36 = sub_21AF08584();
  v38 = [v36 v37];

  v39 = sub_21AF097CC();
  (*(v2 + 8))(v7, v42);
  (*(v10 + 8))(v15, v41);
  (*(v19 + 8))(v24, v16);
  return v39;
}

uint64_t sub_21AF069A0()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EC00);
  sub_21AEA7958(v0, qword_27CD3EC00);
  return sub_21AF096BC();
}

id sub_21AF06A20()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_27CD3EC18 = result;
  return result;
}

uint64_t Date.localizedDescription(date:time:in:locale:using:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CD3D2B8 != -1)
  {
    sub_21AF08564();
  }

  v4 = qword_27CD3EC18;
  v5 = sub_21AF0946C();
  [v4 setCalendar_];

  v6 = sub_21AF0943C();
  [v4 setLocale_];

  v7 = sub_21AF0949C();
  [v4 setTimeZone_];

  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v8 = sub_21AF0939C();
  v9 = [v4 stringFromDate_];

  v10 = sub_21AF097CC();
  return v10;
}

unint64_t MLFeatureProvider.customDescription.getter()
{
  v1 = v0;
  v2 = [v0 featureNames];
  v3 = sub_21AF099DC();

  v4 = sub_21AF06E58(v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(v6 - 1);
      v9 = *v6;

      v10 = sub_21AF097BC();
      v11 = [v1 featureValueForName_];

      if (v11)
      {
        v29 = v8;
        v30 = v9;
        MEMORY[0x21CEE4A70](8250, 0xE200000000000000);
        v12 = [v11 description];
        v13 = sub_21AF097CC();
        v15 = v14;

        MEMORY[0x21CEE4A70](v13, v15);

        v16 = v29;
        v17 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AF085B4();
          v7 = v21;
        }

        v18 = *(v7 + 16);
        v19 = v18 + 1;
        if (v18 >= *(v7 + 24) >> 1)
        {
          sub_21AF08590();
          v7 = v22;
        }
      }

      else
      {
        v31 = v9;
        MEMORY[0x21CEE4A70](0x6C696E203ALL, 0xE500000000000000);
        v16 = v8;
        v17 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AF085B4();
          v7 = v23;
        }

        v18 = *(v7 + 16);
        v19 = v18 + 1;
        if (v18 >= *(v7 + 24) >> 1)
        {
          sub_21AF08590();
          v7 = v24;
        }
      }

      *(v7 + 16) = v19;
      v20 = v7 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
  sub_21AF0760C();
  v25 = sub_21AF097AC();
  v27 = v26;

  MEMORY[0x21CEE4A70](v25, v27);

  MEMORY[0x21CEE4A70](32010, 0xE200000000000000);

  return 0xD000000000000016;
}

uint64_t sub_21AF06E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_21AEACC54();
  sub_21AEF79F8(&v8, (v4 + 4), v1, a1);
  v6 = v5;

  sub_21AE96764();
  if (v6 != v1)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v8 = v4;
  sub_21AF07980(&v8);
  return v8;
}

uint64_t sub_21AF06F3C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_21AF07750(a1, sub_21AF07718, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

Swift::Double __swiftcall MLFeatureProvider.doubleFeatureValue(featureName:withDefaultValue:)(Swift::String featureName, Swift::Double withDefaultValue)
{
  v3 = [objc_opt_self() featureValueWithDouble_];
  v4 = sub_21AF097BC();
  v5 = [v2 featureValueForName_];

  if (!v5)
  {
    v5 = v3;
  }

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

Swift::String __swiftcall MLFeatureProvider.stringFeatureValue(featureName:withDefaultValue:)(Swift::String featureName, Swift::String withDefaultValue)
{
  sub_21AF07670();

  v3 = sub_21AF07168();
  v4 = sub_21AF097BC();
  v5 = [v2 featureValueForName_];

  if (!v5)
  {
    v5 = v3;
  }

  v6 = [v5 stringValue];

  v7 = sub_21AF097CC();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

id sub_21AF07168()
{
  v0 = sub_21AF097BC();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v1;
}

uint64_t sub_21AF071CC()
{
  v42 = sub_21AF0948C();
  v0 = sub_21AEA7C90(v42);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  sub_21AEC7554();
  v7 = v6 - v5;
  v41 = sub_21AF0945C();
  v8 = sub_21AEA7C90(v41);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_21AEC7554();
  v15 = v14 - v13;
  v16 = sub_21AF094BC();
  v17 = sub_21AEA7C90(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_21AEC7554();
  v24 = v23 - v22;
  sub_21AF094AC();
  sub_21AF0944C();
  sub_21AF0947C();
  if (qword_27CD3D2B8 != -1)
  {
    sub_21AF08564();
  }

  v25 = qword_27CD3EC18;
  v26 = sub_21AF0946C();
  v27 = sub_21AF08584();
  [v27 v28];

  v29 = sub_21AF0943C();
  v30 = sub_21AF08584();
  [v30 v31];

  v32 = sub_21AF0949C();
  v33 = sub_21AF08584();
  [v33 v34];

  [v25 setDateStyle_];
  [v25 setTimeStyle_];
  v35 = sub_21AF0939C();
  v36 = sub_21AF08584();
  v38 = [v36 v37];

  v39 = sub_21AF097CC();
  (*(v2 + 8))(v7, v42);
  (*(v10 + 8))(v15, v41);
  (*(v19 + 8))(v24, v16);
  return v39;
}

id sub_21AF07498()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_21AF074F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21AF07524()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21AF0971C();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_21AF0927C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_21AF0760C()
{
  result = qword_27CD3DA20;
  if (!qword_27CD3DA20)
  {
    sub_21AEAF7F0(&qword_27CD3D880, &qword_21AF0C650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3DA20);
  }

  return result;
}

unint64_t sub_21AF07670()
{
  result = qword_27CD3DF88;
  if (!qword_27CD3DF88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD3DF88);
  }

  return result;
}

uint64_t sub_21AF076D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21AEA784C(a4, a1);

  return a2;
}

uint64_t sub_21AF07718@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AF076D8((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21AF07750(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_21AF08380(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    sub_21AF083BC(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_21AE96764();
    }

    v8 = v29;
    sub_21AEAF9F4(v30, v28);
    v9 = *a5;
    v11 = sub_21AED0594();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
        sub_21AF09D1C();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_21AEE1018(v14, a4 & 1);
      v16 = *a5;
      v17 = sub_21AED0594();
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        sub_21AEA784C(v28, v27);
        sub_21AEA79F0(v28);

        v20 = (v19[7] + 32 * v11);
        sub_21AEA79F0(v20);
        sub_21AEAF9F4(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    sub_21AEAF9F4(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AF07980(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21AEFBDD0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_21AF079EC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_21AF079EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AF07BA8(v7, v8, a1, v4);
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
    return sub_21AF07AE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AF07AE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21AF09E4C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AF07BA8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21AF09E4C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21AF09E4C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21AF09E4C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_21AEAC638();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_21AEAC638();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_21AF081DC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_21AF080B0(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_21AF080B0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_21AF081DC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AF081DC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21AE9676C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21AF09E4C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_21AE9676C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21AF09E4C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_21AF08380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_21AF083BC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_21AEA784C(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_21AEAF9F4(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_21AF084FC(v19);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF084FC(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D840, &qword_21AF0C5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF08564()
{

  return swift_once();
}

void sub_21AF08590()
{

  sub_21AEAC554();
}

void sub_21AF085B4()
{
  v2 = *(v0 + 16) + 1;

  sub_21AEAC554();
}

uint64_t sub_21AF085D8()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EC20);
  sub_21AEA7958(v0, qword_27CD3EC20);
  return sub_21AF096BC();
}

uint64_t dispatch thunk of AMLCandidateSource.get(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21AEC82B8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AMLCandidateSourceWithExtractedFeatures.get(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21AF088B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21AF088B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AMLPipeline.requestID(context:)()
{
  v0 = sub_21AF0942C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF0941C();
  v5 = sub_21AF0940C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t AMLPipeline.description.getter(uint64_t a1, uint64_t a2)
{
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD000000000000016, 0x800000021AF11010);
  (*(*(*(a2 + 8) + 8) + 16))(a1, *(*(a2 + 8) + 8));
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_21AF09E2C();

  return 0;
}

uint64_t dispatch thunk of AMLPipeline.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21AF088B4;

  return v13(a1, a2, a3, a4);
}

uint64_t AMLCandidateSelectorIdentifier.__allocating_init(name:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLCandidateSelectorIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLCandidateSelectorIdentifier.init(name:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000011;
    v2[3] = 0x800000021AF11030;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v6 = 0xD000000000000027;
    *(v6 + 8) = 0x800000021AF0EC80;
    *(v6 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLCandidateSelectorIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t dispatch thunk of AMLCandidateSelector.select(context:candidates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_21AEC82B8;

  return v13(a1, a2, a3, a4);
}

void sub_21AF090C8(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = [a1 interactionCount];
  v7 = 2048;
  v8 = [a1 totalInteractionCount];
  _os_log_debug_impl(&dword_21AE94000, a2, OS_LOG_TYPE_DEBUG, "shareInformationForPhotoId is (%lu/%lu)", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_21AF0918C(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [a1 localizedDescription];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_21AE94000, a2, OS_LOG_TYPE_ERROR, "Encountered error when unarchiving model data: %@ Description: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}