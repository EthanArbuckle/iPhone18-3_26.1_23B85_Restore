uint64_t storeEnumTagSinglePayload for LimitedAvailabilityTableRowContent.IndirectOutputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized LimitedAvailabilityTableRowContentStorage.Child.content.getter()
{
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LimitedAvailabilityTableRowContent();
  return *AGGraphGetValue();
}

uint64_t assignWithCopy for Toolbar.UpdateContext(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 2)
  {
    if (v4 == 2)
    {
      outlined destroy of PushTarget(a1);
      v6 = *(a2 + 9);
      *a1 = *a2;
      *(a1 + 9) = v6;
      goto LABEL_9;
    }

    swift_unknownObjectWeakCopyAssign();
LABEL_8:
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = v7;
    goto LABEL_9;
  }

  if (v4 != 2)
  {
    swift_unknownObjectWeakCopyInit();
    goto LABEL_8;
  }

  v5 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v5;
LABEL_9:
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 11);

  return a1;
}

uint64_t assignWithTake for Toolbar.UpdateContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 2)
  {
    if (v4 != 2)
    {
      swift_unknownObjectWeakTakeInit();
LABEL_8:
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 != 2)
    {
      swift_unknownObjectWeakTakeAssign();
      goto LABEL_8;
    }

    outlined destroy of PushTarget(a1);
  }

  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
LABEL_9:
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

_DWORD *__swift_memcpy7_1(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Toolbar.BarContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
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

uint64_t storeEnumTagSinglePayload for Toolbar.BarContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for Toolbar.PlatformVended(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v5 = a2[1];
    v6 = a2[2];
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    v8 = a2[3];
    v7 = a2[4];
    *(a1 + 3) = v8;
    *(a1 + 4) = v7;
    v9 = a2[6];
    v10 = a3[11];
    v156 = &a1[v10];
    v157 = (a2 + v10);
    *(a1 + 5) = a2[5];
    *(a1 + 6) = v9;
    v11 = type metadata accessor for ToolbarStorage.Item(0);
    v12 = *(v11 - 8);
    __dsta = *(v12 + 48);
    v13 = v4;
    v14 = v5;

    v15 = v8;
    v16 = v7;

    if (__dsta(v157, 1, v11))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
      memcpy(v156, v157, *(*(v17 - 8) + 64));
      v18 = a1;
LABEL_72:
      v135 = a3[13];
      *&v18[a3[12]] = *(a2 + a3[12]);
      v136 = *(a2 + v135);
      *&v18[v135] = v136;

      v137 = v136;
      return v18;
    }

    v149 = v12;
    v150 = v11;
    *v156 = *v157;
    *(v156 + 1) = v157[1];
    *(v156 + 1) = *(v157 + 1);
    v19 = v157[5];
    *(v156 + 4) = v157[4];
    *(v156 + 5) = v19;
    v20 = v157[7];
    *(v156 + 6) = v157[6];
    *(v156 + 7) = v20;
    v21 = v157[11];

    if (v21)
    {
      v22 = v157[12];
      *(v156 + 11) = v21;
      *(v156 + 12) = v22;
      (**(v21 - 8))((v156 + 64), (v157 + 8), v21);
      *(v156 + 13) = v157[13];
    }

    else
    {
      v23 = *(v157 + 5);
      *(v156 + 4) = *(v157 + 4);
      *(v156 + 5) = v23;
      *(v156 + 6) = *(v157 + 6);
    }

    if (*(v157 + 152) == 1)
    {
      v24 = *(v157 + 17);
      *(v156 + 136) = v24;
      (**(v24 - 8))((v156 + 112), (v157 + 14));
      v156[152] = 1;
    }

    else
    {
      v25 = *(v157 + 8);
      *(v156 + 7) = *(v157 + 7);
      *(v156 + 8) = v25;
      *(v156 + 137) = *(v157 + 137);
    }

    *(v156 + 153) = *(v157 + 153);
    *(v156 + 20) = v157[20];
    v156[168] = *(v157 + 168);
    *(v156 + 169) = *(v157 + 169);
    *(v156 + 22) = v157[22];
    v26 = *(v157 + 13);
    *(v156 + 13) = v26;
    v27 = v26;
    v28 = **(v26 - 8);

    v28(v156 + 184, v157 + 23, v27);
    v29 = v157[29];
    *(v156 + 28) = v157[28];
    *(v156 + 29) = v29;
    *(v156 + 30) = v157[30];
    *(v156 + 31) = v157[31];
    *(v156 + 16) = *(v157 + 16);
    v30 = v157[34];
    v31 = v157[35];
    *(v156 + 34) = v30;
    *(v156 + 35) = v31;
    v32 = v150[17];
    __dst = &v156[v32];
    v33 = v157 + v32;
    v34 = type metadata accessor for PlatformItemList.Item();
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);

    v37 = v30;
    v38 = v31;
    if (v36(v33, 1, v34))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(__dst, v33, *(*(v39 - 8) + 64));
      v18 = a1;
      v40 = v156;
      v42 = v149;
      v41 = v150;
LABEL_71:
      swift_weakCopyInit();
      v40[v41[19]] = *(v157 + v41[19]);
      v40[v41[20]] = *(v157 + v41[20]);
      v40[v41[21]] = *(v157 + v41[21]);
      (*(v42 + 56))(v40, 0, 1, v41);
      goto LABEL_72;
    }

    v147 = v35;
    v43 = *v33;
    v44 = *(v33 + 1);
    v45 = __dst;
    *__dst = *v33;
    *(__dst + 1) = v44;
    v46 = *(v33 + 3);
    *(__dst + 2) = *(v33 + 2);
    *(__dst + 3) = v46;
    __dst[32] = v33[32];
    v47 = *(v33 + 6);
    *(__dst + 5) = *(v33 + 5);
    *(__dst + 6) = v47;
    __dst[56] = v33[56];
    v48 = *(v33 + 24);
    v49 = v43;
    v50 = v44;

    if (v48 >> 1 == 4294967294)
    {
      v51 = *(v33 + 13);
      *(__dst + 12) = *(v33 + 12);
      *(__dst + 13) = v51;
      *(__dst + 14) = *(v33 + 14);
      *(__dst + 235) = *(v33 + 235);
      v52 = *(v33 + 9);
      *(__dst + 8) = *(v33 + 8);
      *(__dst + 9) = v52;
      v53 = *(v33 + 11);
      *(__dst + 10) = *(v33 + 10);
      *(__dst + 11) = v53;
      v54 = *(v33 + 5);
      *(__dst + 4) = *(v33 + 4);
      *(__dst + 5) = v54;
      v55 = *(v33 + 7);
      *(__dst + 6) = *(v33 + 6);
      *(__dst + 7) = v55;
      v56 = *(v33 + 33);
      if (v56)
      {
LABEL_15:
        *(__dst + 32) = *(v33 + 32);
        *(__dst + 33) = v56;
        v57 = *(v33 + 34);

        if (v57 >= 2)
        {
          v58 = v57;
        }

        *(__dst + 34) = v57;
        *(__dst + 70) = *(v33 + 70);
        __dst[284] = v33[284];
        *(__dst + 285) = *(v33 + 285);
        v59 = *(v33 + 37);
        *(__dst + 36) = *(v33 + 36);
        *(__dst + 37) = v59;

LABEL_26:
        v70 = *(v33 + 42);
        v148 = v34;
        if (v70 >> 2 == 0xFFFFFFFF)
        {
          v71 = *(v33 + 24);
          *(__dst + 23) = *(v33 + 23);
          *(__dst + 24) = v71;
          *(__dst + 50) = *(v33 + 50);
          v72 = *(v33 + 20);
          *(__dst + 19) = *(v33 + 19);
          *(__dst + 20) = v72;
          v73 = *(v33 + 22);
          *(__dst + 21) = *(v33 + 21);
          *(__dst + 22) = v73;
        }

        else
        {
          v74 = *(v33 + 38);
          v75 = *(v33 + 39);
          v76 = *(v33 + 41);
          v78 = *(v33 + 43);
          v77 = *(v33 + 44);
          v79 = *(v33 + 45);
          v139 = *(v33 + 46);
          v140 = *(v33 + 47);
          v80 = *(v33 + 49);
          v142 = *(v33 + 48);
          v145 = *(v33 + 50);
          v81 = *(v33 + 40);
          outlined copy of PlatformItemList.Item.SystemItem(v74, v75, v81, v76, v70, v78, v77, v79, v139, v140, v142, v80, v145);
          *(__dst + 38) = v74;
          *(__dst + 39) = v75;
          *(__dst + 40) = v81;
          *(__dst + 41) = v76;
          *(__dst + 42) = v70;
          *(__dst + 43) = v78;
          *(__dst + 44) = v77;
          *(__dst + 45) = v79;
          *(__dst + 46) = v139;
          *(__dst + 47) = v140;
          v34 = v148;
          *(__dst + 48) = v142;
          *(__dst + 49) = v80;
          v45 = __dst;
          *(__dst + 50) = v145;
        }

        v82 = *(v33 + 52);
        if (v82 == 1)
        {
          v83 = *(v33 + 456);
          *(v45 + 55) = *(v33 + 440);
          *(v45 + 57) = v83;
          *(v45 + 472) = v33[472];
          v84 = *(v33 + 424);
          *(v45 + 51) = *(v33 + 408);
          *(v45 + 53) = v84;
        }

        else
        {
          *(v45 + 102) = *(v33 + 102);
          *(v45 + 412) = v33[412];
          if (v82)
          {
            v85 = *(v33 + 53);
            v45[52] = v82;
            v45[53] = v85;
          }

          else
          {
            *(v45 + 26) = *(v33 + 26);
          }

          v86 = *(v33 + 54);
          if (v86)
          {
            v87 = *(v33 + 55);
            v45[54] = v86;
            v45[55] = v87;
          }

          else
          {
            *(v45 + 27) = *(v33 + 27);
          }

          v88 = *(v33 + 56);
          if (v88)
          {
            v89 = *(v33 + 57);
            v45[56] = v88;
            v45[57] = v89;
          }

          else
          {
            *(v45 + 28) = *(v33 + 28);
          }

          v45[58] = *(v33 + 58);
          *(v45 + 472) = v33[472];
        }

        v90 = *(v33 + 61);
        v45[60] = *(v33 + 60);
        v45[61] = v90;
        v45[62] = *(v33 + 62);
        *(v45 + 504) = v33[504];
        v91 = *(v33 + 64);

        if (v91)
        {
          v92 = *(v33 + 65);
          v45[64] = v91;
          v45[65] = v92;
        }

        else
        {
          *(v45 + 32) = *(v33 + 32);
        }

        *(v45 + 528) = v33[528];
        if (!*(v33 + 102))
        {
          memcpy(v45 + 67, v33 + 536, 0x130uLL);
          goto LABEL_56;
        }

        v45[67] = *(v33 + 67);
        v45[68] = *(v33 + 68);
        *(v45 + 552) = v33[552];
        v45[70] = *(v33 + 70);
        *(v45 + 568) = v33[568];
        *(v45 + 36) = *(v33 + 36);
        *(v45 + 592) = v33[592];
        v93 = v45 + 75;
        v94 = v33 + 600;
        v95 = *(v33 + 78);

        if (v95)
        {
          if (v95 == 1)
          {
            v96 = *(v33 + 616);
            *v93 = *v94;
            *(v45 + 77) = v96;
            *(v45 + 79) = *(v33 + 632);
LABEL_52:
            v45[81] = *(v33 + 81);
            *(v45 + 656) = v33[656];
            v98 = v45 + 83;
            v99 = v33 + 664;
            v100 = *(v33 + 97);
            if (v100 == 1)
            {
              v101 = *(v33 + 776);
              *(v45 + 95) = *(v33 + 760);
              *(v45 + 97) = v101;
              *(v45 + 99) = *(v33 + 792);
              *(v45 + 808) = v33[808];
              v102 = *(v33 + 712);
              *(v45 + 87) = *(v33 + 696);
              *(v45 + 89) = v102;
              v103 = *(v33 + 744);
              *(v45 + 91) = *(v33 + 728);
              *(v45 + 93) = v103;
              v104 = *(v33 + 680);
              *v98 = *v99;
              *(v45 + 85) = v104;
            }

            else
            {
              *v98 = *v99;
              *(v45 + 672) = v33[672];
              v45[85] = *(v33 + 85);
              *(v45 + 688) = v33[688];
              *(v45 + 689) = *(v33 + 689);
              *(v45 + 691) = v33[691];
              *(v45 + 692) = v33[692];
              v45[87] = *(v33 + 87);
              v105 = *(v33 + 45);
              *(v45 + 44) = *(v33 + 44);
              *(v45 + 45) = v105;
              v45[92] = *(v33 + 92);
              *(v45 + 372) = *(v33 + 372);
              *(v45 + 47) = *(v33 + 47);
              *(v45 + 768) = v33[768];
              v45[97] = v100;
              *(v45 + 49) = *(v33 + 49);
              v45[100] = *(v33 + 100);
              *(v45 + 808) = v33[808];
            }

            v45[102] = *(v33 + 102);
            v45[103] = *(v33 + 103);
            v45[104] = *(v33 + 104);

LABEL_56:
            v106 = v45 + 105;
            v107 = v33 + 840;
            v108 = *(v33 + 108);
            if (v108)
            {
              if (v108 == 1)
              {
                v109 = *(v33 + 856);
                *v106 = *v107;
                *(v45 + 107) = v109;
                *(v45 + 109) = *(v33 + 872);
                v45[111] = *(v33 + 111);
LABEL_64:
                v113 = *(v33 + 112);
                v45[112] = v113;
                v45[113] = *(v33 + 113);
                v45[114] = *(v33 + 114);
                v45[115] = *(v33 + 115);
                v45[116] = *(v33 + 116);
                v45[117] = *(v33 + 117);
                v45[118] = *(v33 + 118);
                *(v45 + 476) = *(v33 + 476);
                *(v45 + 954) = v33[954];
                v114 = *(v34 + 112);
                v146 = v45 + v114;
                v115 = &v33[v114];
                v116 = type metadata accessor for CommandOperation();
                v117 = *(v116 - 8);
                v143 = *(v117 + 48);
                v118 = v113;

                if (v143(v115, 1, v116))
                {
                  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                  memcpy(v146, v115, *(*(v119 - 8) + 64));
                  v18 = a1;
                  v40 = v156;
                  v42 = v149;
                  v41 = v150;
                  v120 = v147;
                }

                else
                {
                  v141 = v117;
                  v144 = v116;
                  *v146 = *v115;
                  v121 = *(v116 + 20);
                  v122 = &v146[v121];
                  v123 = &v115[v121];
                  v124 = *&v115[v121];
                  v125 = *&v115[v121 + 8];
                  v126 = v115[v121 + 16];
                  outlined copy of Text.Storage(v124, v125, v126);
                  *v122 = v124;
                  *(v122 + 1) = v125;
                  v122[16] = v126;
                  *(v122 + 3) = *(v123 + 3);
                  v127 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v128 = type metadata accessor for UUID();
                  v129 = *(*(v128 - 8) + 16);

                  v129(&v122[v127], &v123[v127], v128);
                  v130 = *(v144 + 24);
                  v131 = &v146[v130];
                  v132 = &v115[v130];
                  if (*v132)
                  {
                    v133 = *(v132 + 1);
                    *v131 = *v132;
                    *(v131 + 1) = v133;
                  }

                  else
                  {
                    *v131 = *v132;
                  }

                  v18 = a1;
                  v40 = v156;
                  v41 = v150;
                  v120 = v147;
                  (*(v141 + 56))(v146, 0, 1, v144);
                  v42 = v149;
                }

                __dst[v148[29]] = v33[v148[29]];
                __dst[v148[30]] = v33[v148[30]];
                __dst[v148[31]] = v33[v148[31]];
                __dst[v148[32]] = v33[v148[32]];
                __dst[v148[33]] = v33[v148[33]];
                *&__dst[v148[34]] = *&v33[v148[34]];
                v134 = *(v120 + 56);

                v134(__dst, 0, 1, v148);
                goto LABEL_71;
              }

              v45[108] = v108;
              v45[109] = *(v33 + 109);
              (**(v108 - 8))(v106, v107);
            }

            else
            {
              v110 = *(v33 + 856);
              *v106 = *v107;
              *(v45 + 107) = v110;
              v45[109] = *(v33 + 109);
            }

            v111 = *(v33 + 110);
            if (v111)
            {
              v112 = *(v33 + 111);
              v45[110] = v111;
              v45[111] = v112;
            }

            else
            {
              *(v45 + 55) = *(v33 + 55);
            }

            goto LABEL_64;
          }

          v45[78] = v95;
          v45[79] = *(v33 + 79);
          (**(v95 - 8))((v45 + 75), (v33 + 600), v95);
        }

        else
        {
          v97 = *(v33 + 616);
          *v93 = *v94;
          *(v45 + 77) = v97;
          v45[79] = *(v33 + 79);
        }

        v45[80] = *(v33 + 80);

        goto LABEL_52;
      }
    }

    else
    {
      v60 = v33[72];
      if (v60 == 255)
      {
        *(__dst + 8) = *(v33 + 8);
        __dst[72] = v33[72];
      }

      else
      {
        v61 = *(v33 + 8);
        outlined copy of GraphicsImage.Contents(v61, v33[72]);
        *(__dst + 8) = v61;
        __dst[72] = v60;
        v48 = *(v33 + 24);
      }

      *(__dst + 10) = *(v33 + 10);
      *(__dst + 88) = *(v33 + 88);
      __dst[104] = v33[104];
      *(__dst + 108) = *(v33 + 108);
      *(__dst + 121) = *(v33 + 121);
      *(__dst + 136) = *(v33 + 136);
      *(__dst + 152) = *(v33 + 152);
      *(__dst + 84) = *(v33 + 84);
      __dst[170] = v33[170];
      __dst[171] = v33[171];
      if (v48 >> 1 == 0xFFFFFFFF)
      {
        v62 = *(v33 + 12);
        *(__dst + 11) = *(v33 + 11);
        *(__dst + 12) = v62;
      }

      else
      {
        v63 = *(v33 + 22);
        v64 = *(v33 + 23);
        v65 = *(v33 + 25);
        outlined copy of AccessibilityImageLabel(v63, v64, v48);
        *(__dst + 22) = v63;
        *(__dst + 23) = v64;
        *(__dst + 24) = v48;
        *(__dst + 25) = v65;
      }

      v66 = *(v33 + 27);
      *(__dst + 26) = *(v33 + 26);
      *(__dst + 27) = v66;
      *(__dst + 112) = *(v33 + 112);
      *(__dst + 57) = *(v33 + 57);
      __dst[232] = v33[232];
      v67 = *(v33 + 30);
      *(__dst + 30) = v67;
      *(__dst + 124) = *(v33 + 124);
      __dst[250] = v33[250];
      swift_unknownObjectRetain();

      v68 = v67;
      v56 = *(v33 + 33);
      if (v56)
      {
        goto LABEL_15;
      }
    }

    v69 = *(v33 + 17);
    *(__dst + 16) = *(v33 + 16);
    *(__dst + 17) = v69;
    *(__dst + 18) = *(v33 + 18);
    goto LABEL_26;
  }

  v18 = &v4[(v3 + 16) & ~v3];

  return v18;
}

void *initializeWithCopy for Toolbar.PlatformVended(void *a1, uint64_t a2, int *a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  a1[4] = v6;
  a1[5] = v7;
  v8 = a3[11];
  v155 = a1 + v8;
  v9 = (a2 + v8);
  a1[6] = *(a2 + 48);
  v10 = type metadata accessor for ToolbarStorage.Item(0);
  v149 = *(v10 - 8);
  __dsta = *(v149 + 48);
  v11 = v3;
  v12 = v4;

  v13 = v5;
  v14 = v6;

  if (!__dsta(v9, 1, v10))
  {
    v148 = v10;
    *v155 = *v9;
    *(v155 + 1) = *(v9 + 1);
    *(v155 + 1) = *(v9 + 1);
    v16 = *(v9 + 5);
    *(v155 + 4) = *(v9 + 4);
    *(v155 + 5) = v16;
    v17 = *(v9 + 7);
    *(v155 + 6) = *(v9 + 6);
    *(v155 + 7) = v17;
    v18 = *(v9 + 11);

    if (v18)
    {
      v19 = *(v9 + 12);
      *(v155 + 11) = v18;
      *(v155 + 12) = v19;
      (**(v18 - 8))((v155 + 64), (v9 + 64), v18);
      *(v155 + 13) = *(v9 + 13);
    }

    else
    {
      v20 = *(v9 + 5);
      *(v155 + 4) = *(v9 + 4);
      *(v155 + 5) = v20;
      *(v155 + 6) = *(v9 + 6);
    }

    if (v9[152] == 1)
    {
      v21 = *(v9 + 136);
      *(v155 + 136) = v21;
      (**(v21 - 8))((v155 + 112), (v9 + 112));
      v155[152] = 1;
    }

    else
    {
      v22 = *(v9 + 8);
      *(v155 + 7) = *(v9 + 7);
      *(v155 + 8) = v22;
      *(v155 + 137) = *(v9 + 137);
    }

    *(v155 + 153) = *(v9 + 153);
    *(v155 + 20) = *(v9 + 20);
    v155[168] = v9[168];
    *(v155 + 169) = *(v9 + 169);
    *(v155 + 22) = *(v9 + 22);
    v23 = *(v9 + 13);
    *(v155 + 13) = v23;
    v24 = v23;
    v25 = **(v23 - 8);

    v25(v155 + 184, v9 + 184, v24);
    v26 = *(v9 + 29);
    *(v155 + 28) = *(v9 + 28);
    *(v155 + 29) = v26;
    *(v155 + 30) = *(v9 + 30);
    *(v155 + 31) = *(v9 + 31);
    *(v155 + 16) = *(v9 + 16);
    v27 = *(v9 + 34);
    v28 = *(v9 + 35);
    *(v155 + 34) = v27;
    *(v155 + 35) = v28;
    v29 = v148[17];
    __dst = &v155[v29];
    v147 = v9;
    v30 = &v9[v29];
    v31 = type metadata accessor for PlatformItemList.Item();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);

    v34 = v27;
    v35 = v28;
    if (v33(v30, 1, v31))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(__dst, v30, *(*(v36 - 8) + 64));
      v37 = v155;
      v38 = v9;
      v39 = v148;
LABEL_66:
      swift_weakCopyInit();
      v37[v39[19]] = v38[v39[19]];
      v37[v39[20]] = v38[v39[20]];
      v37[v39[21]] = v38[v39[21]];
      (*(v149 + 56))(v37, 0, 1, v39);
      goto LABEL_67;
    }

    v145 = v32;
    v40 = *v30;
    v41 = *(v30 + 1);
    v42 = __dst;
    *__dst = *v30;
    *(__dst + 1) = v41;
    v43 = *(v30 + 3);
    *(__dst + 2) = *(v30 + 2);
    *(__dst + 3) = v43;
    __dst[32] = v30[32];
    v44 = *(v30 + 6);
    *(__dst + 5) = *(v30 + 5);
    *(__dst + 6) = v44;
    __dst[56] = v30[56];
    v45 = *(v30 + 24);
    v46 = v40;
    v47 = v41;

    if (v45 >> 1 == 4294967294)
    {
      v48 = *(v30 + 13);
      *(__dst + 12) = *(v30 + 12);
      *(__dst + 13) = v48;
      *(__dst + 14) = *(v30 + 14);
      *(__dst + 235) = *(v30 + 235);
      v49 = *(v30 + 9);
      *(__dst + 8) = *(v30 + 8);
      *(__dst + 9) = v49;
      v50 = *(v30 + 11);
      *(__dst + 10) = *(v30 + 10);
      *(__dst + 11) = v50;
      v51 = *(v30 + 5);
      *(__dst + 4) = *(v30 + 4);
      *(__dst + 5) = v51;
      v52 = *(v30 + 7);
      *(__dst + 6) = *(v30 + 6);
      *(__dst + 7) = v52;
      v53 = *(v30 + 33);
      if (v53)
      {
LABEL_13:
        *(__dst + 32) = *(v30 + 32);
        *(__dst + 33) = v53;
        v54 = *(v30 + 34);

        if (v54 >= 2)
        {
          v55 = v54;
        }

        *(__dst + 34) = v54;
        *(__dst + 70) = *(v30 + 70);
        __dst[284] = v30[284];
        *(__dst + 285) = *(v30 + 285);
        v56 = *(v30 + 37);
        *(__dst + 36) = *(v30 + 36);
        *(__dst + 37) = v56;

LABEL_24:
        v67 = *(v30 + 42);
        v146 = v31;
        if (v67 >> 2 == 0xFFFFFFFF)
        {
          v68 = *(v30 + 24);
          *(__dst + 23) = *(v30 + 23);
          *(__dst + 24) = v68;
          *(__dst + 50) = *(v30 + 50);
          v69 = *(v30 + 20);
          *(__dst + 19) = *(v30 + 19);
          *(__dst + 20) = v69;
          v70 = *(v30 + 22);
          *(__dst + 21) = *(v30 + 21);
          *(__dst + 22) = v70;
        }

        else
        {
          v71 = *(v30 + 38);
          v72 = *(v30 + 39);
          v73 = *(v30 + 41);
          v75 = *(v30 + 43);
          v74 = *(v30 + 44);
          v76 = *(v30 + 45);
          v138 = *(v30 + 46);
          v139 = *(v30 + 47);
          v77 = *(v30 + 49);
          v140 = *(v30 + 48);
          v143 = *(v30 + 50);
          v78 = *(v30 + 40);
          outlined copy of PlatformItemList.Item.SystemItem(v71, v72, v78, v73, v67, v75, v74, v76, v138, v139, v140, v77, v143);
          *(__dst + 38) = v71;
          *(__dst + 39) = v72;
          *(__dst + 40) = v78;
          *(__dst + 41) = v73;
          *(__dst + 42) = v67;
          *(__dst + 43) = v75;
          *(__dst + 44) = v74;
          *(__dst + 45) = v76;
          *(__dst + 46) = v138;
          *(__dst + 47) = v139;
          v31 = v146;
          *(__dst + 48) = v140;
          v42 = __dst;
          *(__dst + 49) = v77;
          *(__dst + 50) = v143;
        }

        v79 = *(v30 + 52);
        if (v79 == 1)
        {
          v80 = *(v30 + 456);
          *(v42 + 55) = *(v30 + 440);
          *(v42 + 57) = v80;
          *(v42 + 472) = v30[472];
          v81 = *(v30 + 424);
          *(v42 + 51) = *(v30 + 408);
          *(v42 + 53) = v81;
          goto LABEL_37;
        }

        *(v42 + 102) = *(v30 + 102);
        *(v42 + 412) = v30[412];
        if (v79)
        {
          v82 = *(v30 + 53);
          v42[52] = v79;
          v42[53] = v82;

          v83 = *(v30 + 54);
          if (v83)
          {
            goto LABEL_31;
          }
        }

        else
        {
          *(v42 + 26) = *(v30 + 26);
          v83 = *(v30 + 54);
          if (v83)
          {
LABEL_31:
            v84 = *(v30 + 55);
            v42[54] = v83;
            v42[55] = v84;

            v85 = *(v30 + 56);
            if (v85)
            {
LABEL_32:
              v86 = *(v30 + 57);
              v42[56] = v85;
              v42[57] = v86;

LABEL_36:
              v42[58] = *(v30 + 58);
              *(v42 + 472) = v30[472];
LABEL_37:
              v87 = *(v30 + 61);
              v42[60] = *(v30 + 60);
              v42[61] = v87;
              v42[62] = *(v30 + 62);
              *(v42 + 504) = v30[504];
              v88 = *(v30 + 64);

              if (v88)
              {
                v89 = *(v30 + 65);
                v42[64] = v88;
                v42[65] = v89;
              }

              else
              {
                *(v42 + 32) = *(v30 + 32);
              }

              *(v42 + 528) = v30[528];
              if (!*(v30 + 102))
              {
                memcpy(v42 + 67, v30 + 536, 0x130uLL);
                goto LABEL_52;
              }

              v42[67] = *(v30 + 67);
              v42[68] = *(v30 + 68);
              *(v42 + 552) = v30[552];
              v42[70] = *(v30 + 70);
              *(v42 + 568) = v30[568];
              *(v42 + 36) = *(v30 + 36);
              *(v42 + 592) = v30[592];
              v90 = v42 + 75;
              v91 = v30 + 600;
              v92 = *(v30 + 78);

              if (v92)
              {
                if (v92 == 1)
                {
                  v93 = *(v30 + 616);
                  *v90 = *v91;
                  *(v42 + 77) = v93;
                  *(v42 + 79) = *(v30 + 632);
LABEL_48:
                  v42[81] = *(v30 + 81);
                  *(v42 + 656) = v30[656];
                  v95 = v42 + 83;
                  v96 = v30 + 664;
                  v97 = *(v30 + 97);
                  if (v97 == 1)
                  {
                    v98 = *(v30 + 776);
                    *(v42 + 95) = *(v30 + 760);
                    *(v42 + 97) = v98;
                    *(v42 + 99) = *(v30 + 792);
                    *(v42 + 808) = v30[808];
                    v99 = *(v30 + 712);
                    *(v42 + 87) = *(v30 + 696);
                    *(v42 + 89) = v99;
                    v100 = *(v30 + 744);
                    *(v42 + 91) = *(v30 + 728);
                    *(v42 + 93) = v100;
                    v101 = *(v30 + 680);
                    *v95 = *v96;
                    *(v42 + 85) = v101;
                  }

                  else
                  {
                    *v95 = *v96;
                    *(v42 + 672) = v30[672];
                    v42[85] = *(v30 + 85);
                    *(v42 + 688) = v30[688];
                    *(v42 + 689) = *(v30 + 689);
                    *(v42 + 691) = v30[691];
                    *(v42 + 692) = v30[692];
                    v42[87] = *(v30 + 87);
                    v102 = *(v30 + 45);
                    *(v42 + 44) = *(v30 + 44);
                    *(v42 + 45) = v102;
                    v42[92] = *(v30 + 92);
                    *(v42 + 372) = *(v30 + 372);
                    *(v42 + 47) = *(v30 + 47);
                    *(v42 + 768) = v30[768];
                    v42[97] = v97;
                    *(v42 + 49) = *(v30 + 49);
                    v42[100] = *(v30 + 100);
                    *(v42 + 808) = v30[808];
                  }

                  v42[102] = *(v30 + 102);
                  v42[103] = *(v30 + 103);
                  v42[104] = *(v30 + 104);

LABEL_52:
                  v103 = v42 + 105;
                  v104 = v30 + 840;
                  v105 = *(v30 + 108);
                  if (v105)
                  {
                    if (v105 == 1)
                    {
                      v106 = *(v30 + 856);
                      *v103 = *v104;
                      *(v42 + 107) = v106;
                      *(v42 + 109) = *(v30 + 872);
                      v42[111] = *(v30 + 111);
LABEL_59:
                      v110 = *(v30 + 112);
                      v42[112] = v110;
                      v42[113] = *(v30 + 113);
                      v42[114] = *(v30 + 114);
                      v42[115] = *(v30 + 115);
                      v42[116] = *(v30 + 116);
                      v42[117] = *(v30 + 117);
                      v42[118] = *(v30 + 118);
                      *(v42 + 476) = *(v30 + 476);
                      *(v42 + 954) = v30[954];
                      v111 = *(v31 + 112);
                      v144 = v42 + v111;
                      v112 = &v30[v111];
                      v113 = type metadata accessor for CommandOperation();
                      v114 = *(v113 - 8);
                      v141 = *(v114 + 48);
                      v115 = v110;

                      if (v141(v112, 1, v113))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(v144, v112, *(*(v116 - 8) + 64));
                        v37 = v155;
                        v38 = v147;
                        v39 = v148;
                        v117 = v145;
                      }

                      else
                      {
                        v142 = v114;
                        *v144 = *v112;
                        v118 = v113;
                        v119 = *(v113 + 20);
                        v120 = &v144[v119];
                        v121 = &v112[v119];
                        v122 = *&v112[v119];
                        v123 = *&v112[v119 + 8];
                        v124 = v112[v119 + 16];
                        outlined copy of Text.Storage(*v121, *(v121 + 1), v121[16]);
                        *v120 = v122;
                        *(v120 + 1) = v123;
                        v120[16] = v124;
                        *(v120 + 3) = *(v121 + 3);
                        v125 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v126 = type metadata accessor for UUID();
                        v127 = *(*(v126 - 8) + 16);

                        v127(&v120[v125], &v121[v125], v126);
                        v128 = *(v118 + 24);
                        v129 = &v144[v128];
                        v130 = &v112[v128];
                        v131 = v118;
                        if (*v130)
                        {
                          v132 = *(v130 + 1);
                          *v129 = *v130;
                          *(v129 + 1) = v132;
                        }

                        else
                        {
                          *v129 = *v130;
                        }

                        v37 = v155;
                        v38 = v147;
                        v117 = v145;
                        (*(v142 + 56))(v144, 0, 1, v131);
                        v39 = v148;
                      }

                      __dst[v146[29]] = v30[v146[29]];
                      __dst[v146[30]] = v30[v146[30]];
                      __dst[v146[31]] = v30[v146[31]];
                      __dst[v146[32]] = v30[v146[32]];
                      __dst[v146[33]] = v30[v146[33]];
                      *&__dst[v146[34]] = *&v30[v146[34]];
                      v133 = *(v117 + 56);

                      v133(__dst, 0, 1, v146);
                      goto LABEL_66;
                    }

                    v42[108] = v105;
                    v42[109] = *(v30 + 109);
                    (**(v105 - 8))(v103, v104);
                    v108 = *(v30 + 110);
                    if (!v108)
                    {
LABEL_58:
                      *(v42 + 55) = *(v30 + 55);
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v107 = *(v30 + 856);
                    *v103 = *v104;
                    *(v42 + 107) = v107;
                    v42[109] = *(v30 + 109);
                    v108 = *(v30 + 110);
                    if (!v108)
                    {
                      goto LABEL_58;
                    }
                  }

                  v109 = *(v30 + 111);
                  v42[110] = v108;
                  v42[111] = v109;

                  goto LABEL_59;
                }

                v42[78] = v92;
                v42[79] = *(v30 + 79);
                (**(v92 - 8))((v42 + 75), (v30 + 600), v92);
              }

              else
              {
                v94 = *(v30 + 616);
                *v90 = *v91;
                *(v42 + 77) = v94;
                v42[79] = *(v30 + 79);
              }

              v42[80] = *(v30 + 80);

              goto LABEL_48;
            }

LABEL_35:
            *(v42 + 28) = *(v30 + 28);
            goto LABEL_36;
          }
        }

        *(v42 + 27) = *(v30 + 27);
        v85 = *(v30 + 56);
        if (v85)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v57 = v30[72];
      if (v57 == 255)
      {
        *(__dst + 8) = *(v30 + 8);
        __dst[72] = v30[72];
      }

      else
      {
        v58 = *(v30 + 8);
        outlined copy of GraphicsImage.Contents(v58, v30[72]);
        *(__dst + 8) = v58;
        __dst[72] = v57;
        v45 = *(v30 + 24);
      }

      *(__dst + 10) = *(v30 + 10);
      *(__dst + 88) = *(v30 + 88);
      __dst[104] = v30[104];
      *(__dst + 108) = *(v30 + 108);
      *(__dst + 121) = *(v30 + 121);
      *(__dst + 136) = *(v30 + 136);
      *(__dst + 152) = *(v30 + 152);
      *(__dst + 84) = *(v30 + 84);
      __dst[170] = v30[170];
      __dst[171] = v30[171];
      if (v45 >> 1 == 0xFFFFFFFF)
      {
        v59 = *(v30 + 12);
        *(__dst + 11) = *(v30 + 11);
        *(__dst + 12) = v59;
      }

      else
      {
        v60 = *(v30 + 22);
        v61 = *(v30 + 23);
        v62 = *(v30 + 25);
        outlined copy of AccessibilityImageLabel(v60, v61, v45);
        *(__dst + 22) = v60;
        *(__dst + 23) = v61;
        *(__dst + 24) = v45;
        *(__dst + 25) = v62;
      }

      v63 = *(v30 + 27);
      *(__dst + 26) = *(v30 + 26);
      *(__dst + 27) = v63;
      *(__dst + 112) = *(v30 + 112);
      *(__dst + 57) = *(v30 + 57);
      __dst[232] = v30[232];
      v64 = *(v30 + 30);
      *(__dst + 30) = v64;
      *(__dst + 124) = *(v30 + 124);
      __dst[250] = v30[250];
      swift_unknownObjectRetain();

      v65 = v64;
      v53 = *(v30 + 33);
      if (v53)
      {
        goto LABEL_13;
      }
    }

    v66 = *(v30 + 17);
    *(__dst + 16) = *(v30 + 16);
    *(__dst + 17) = v66;
    *(__dst + 18) = *(v30 + 18);
    goto LABEL_24;
  }

  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  memcpy(v155, v9, *(*(v15 - 8) + 64));
LABEL_67:
  v134 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  v135 = *(a2 + v134);
  *(a1 + v134) = v135;

  v136 = v135;
  return a1;
}

void **assignWithCopy for Toolbar.PlatformVended(void **a1, void **a2, int *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  v9 = v4[1];
  v10 = v5[1];
  v5[1] = v9;
  v11 = v9;

  v5[2] = v4[2];

  v12 = v5[3];
  v13 = v4[3];
  v5[3] = v13;
  v14 = v13;

  v15 = v5[4];
  v16 = v4[4];
  v5[4] = v16;
  v17 = v16;

  v5[5] = v4[5];

  v5[6] = v4[6];

  v18 = a3[11];
  v19 = v5 + v18;
  v20 = v4 + v18;
  v21 = type metadata accessor for ToolbarStorage.Item(0);
  v22 = *(v21 - 1);
  v23 = *(v22 + 48);
  v24 = v23(v19, 1, v21);
  v25 = v23(v20, 1, v21);
  if (!v24)
  {
    if (v25)
    {
      _s7SwiftUI16CommandOperationVWOhTm_3(v19, type metadata accessor for ToolbarStorage.Item);
      goto LABEL_7;
    }

    *v19 = *v20;
    *(v19 + 1) = *(v20 + 1);
    *(v19 + 1) = *(v20 + 1);

    *(v19 + 2) = *(v20 + 2);
    *(v19 + 3) = *(v20 + 3);
    *(v19 + 4) = *(v20 + 4);
    *(v19 + 5) = *(v20 + 5);

    *(v19 + 6) = *(v20 + 6);
    *(v19 + 7) = *(v20 + 7);

    v28 = *(v20 + 11);
    if (*(v19 + 11))
    {
      v29 = (v19 + 64);
      if (v28)
      {
        __swift_assign_boxed_opaque_existential_1(v29, v20 + 8);
LABEL_24:
        *(v19 + 13) = *(v20 + 13);
        goto LABEL_29;
      }

      outlined destroy of MatchedTransitionIdentifier(v29);
      v71 = *(v20 + 5);
      v70 = *(v20 + 6);
      *(v19 + 4) = *(v20 + 4);
      *(v19 + 5) = v71;
      *(v19 + 6) = v70;
    }

    else
    {
      if (v28)
      {
        *(v19 + 11) = v28;
        *(v19 + 12) = *(v20 + 12);
        (**(v28 - 8))((v19 + 64), (v20 + 64));
        goto LABEL_24;
      }

      v72 = *(v20 + 4);
      v73 = *(v20 + 6);
      *(v19 + 5) = *(v20 + 5);
      *(v19 + 6) = v73;
      *(v19 + 4) = v72;
    }

LABEL_29:
    v611 = a3;
    if (v5 != v4)
    {
      outlined destroy of ToolbarItemPlacement.Role((v19 + 112));
      if (v20[152] == 1)
      {
        v74 = *(v20 + 17);
        *(v19 + 17) = v74;
        *(v19 + 18) = *(v20 + 18);
        (**(v74 - 8))((v19 + 112), (v20 + 112));
        v19[152] = 1;
      }

      else
      {
        v75 = *(v20 + 7);
        v76 = *(v20 + 8);
        *(v19 + 137) = *(v20 + 137);
        *(v19 + 7) = v75;
        *(v19 + 8) = v76;
      }
    }

    v19[153] = v20[153];
    v19[154] = v20[154];
    *(v19 + 20) = *(v20 + 20);

    v19[168] = v20[168];
    v19[169] = v20[169];
    v19[170] = v20[170];
    *(v19 + 22) = *(v20 + 22);
    __swift_assign_boxed_opaque_existential_1(v19 + 23, v20 + 23);
    *(v19 + 28) = *(v20 + 28);

    *(v19 + 29) = *(v20 + 29);

    *(v19 + 60) = *(v20 + 60);
    *(v19 + 61) = *(v20 + 61);
    *(v19 + 31) = *(v20 + 31);

    *(v19 + 32) = *(v20 + 32);
    *(v19 + 33) = *(v20 + 33);
    v77 = *(v19 + 34);
    v78 = *(v20 + 34);
    *(v19 + 34) = v78;
    v79 = v78;

    v80 = *(v20 + 35);
    v81 = *(v19 + 35);
    *(v19 + 35) = v80;
    v82 = v80;

    v83 = v21[17];
    v609 = v19;
    v84 = &v19[v83];
    v85 = &v20[v83];
    v86 = type metadata accessor for PlatformItemList.Item();
    v600 = *(v86 - 8);
    v87 = *(v600 + 48);
    v88 = v87(v84, 1, v86);
    v613 = v86;
    v89 = v87(v85, 1, v86);
    if (v88)
    {
      a3 = v611;
      if (!v89)
      {
        v606 = v20;
        v90 = *v85;
        *v84 = *v85;
        v91 = *(v85 + 1);
        *(v84 + 8) = v91;
        *(v84 + 16) = *(v85 + 2);
        *(v84 + 24) = *(v85 + 3);
        *(v84 + 32) = v85[32];
        *(v84 + 40) = *(v85 + 5);
        *(v84 + 48) = *(v85 + 6);
        *(v84 + 56) = v85[56];
        v92 = *(v85 + 24);
        v93 = v90;
        v94 = v91;

        if (v92 >> 1 == 4294967294)
        {
          v95 = *(v85 + 4);
          v96 = *(v85 + 5);
          v97 = *(v85 + 7);
          *(v84 + 96) = *(v85 + 6);
          *(v84 + 112) = v97;
          *(v84 + 64) = v95;
          *(v84 + 80) = v96;
          v98 = *(v85 + 8);
          v99 = *(v85 + 9);
          v100 = *(v85 + 11);
          *(v84 + 160) = *(v85 + 10);
          *(v84 + 176) = v100;
          *(v84 + 128) = v98;
          *(v84 + 144) = v99;
          v101 = *(v85 + 12);
          v102 = *(v85 + 13);
          v103 = *(v85 + 14);
          *(v84 + 235) = *(v85 + 235);
          *(v84 + 208) = v102;
          *(v84 + 224) = v103;
          *(v84 + 192) = v101;
        }

        else
        {
          v158 = v85[72];
          if (v158 == 255)
          {
            v227 = *(v85 + 8);
            *(v84 + 72) = v85[72];
            *(v84 + 64) = v227;
          }

          else
          {
            v159 = *(v85 + 8);
            outlined copy of GraphicsImage.Contents(v159, v85[72]);
            *(v84 + 64) = v159;
            *(v84 + 72) = v158;
          }

          *(v84 + 80) = *(v85 + 10);
          *(v84 + 88) = *(v85 + 88);
          *(v84 + 104) = v85[104];
          v228 = *(v85 + 108);
          *(v84 + 121) = *(v85 + 121);
          *(v84 + 108) = v228;
          v229 = *(v85 + 136);
          v230 = *(v85 + 152);
          *(v84 + 168) = v85[168];
          *(v84 + 152) = v230;
          *(v84 + 136) = v229;
          *(v84 + 169) = v85[169];
          *(v84 + 170) = v85[170];
          *(v84 + 171) = v85[171];
          v231 = *(v85 + 24);
          if (v231 >> 1 == 0xFFFFFFFF)
          {
            v232 = *(v85 + 12);
            *(v84 + 176) = *(v85 + 11);
            *(v84 + 192) = v232;
          }

          else
          {
            v233 = *(v85 + 22);
            v234 = *(v85 + 23);
            v235 = v21;
            v236 = *(v85 + 25);
            outlined copy of AccessibilityImageLabel(v233, v234, *(v85 + 24));
            *(v84 + 176) = v233;
            *(v84 + 184) = v234;
            *(v84 + 192) = v231;
            *(v84 + 200) = v236;
            v21 = v235;
          }

          *(v84 + 208) = *(v85 + 26);
          *(v84 + 216) = *(v85 + 27);
          *(v84 + 224) = v85[224];
          *(v84 + 225) = v85[225];
          v237 = *(v85 + 57);
          *(v84 + 232) = v85[232];
          *(v84 + 228) = v237;
          v238 = *(v85 + 30);
          *(v84 + 240) = v238;
          *(v84 + 248) = *(v85 + 124);
          *(v84 + 250) = v85[250];
          swift_unknownObjectRetain();

          v239 = v238;
        }

        if (*(v85 + 33))
        {
          *(v84 + 256) = *(v85 + 32);
          *(v84 + 264) = *(v85 + 33);
          v240 = *(v85 + 34);

          if (v240 >= 2)
          {
            v241 = v240;
          }

          *(v84 + 272) = v240;
          v242 = *(v85 + 70);
          *(v84 + 284) = v85[284];
          *(v84 + 280) = v242;
          *(v84 + 285) = v85[285];
          *(v84 + 286) = v85[286];
          *(v84 + 288) = *(v85 + 36);
          *(v84 + 296) = *(v85 + 37);
        }

        else
        {
          v243 = *(v85 + 16);
          v244 = *(v85 + 18);
          *(v84 + 272) = *(v85 + 17);
          *(v84 + 288) = v244;
          *(v84 + 256) = v243;
        }

        v245 = *(v85 + 42);
        v616 = v21;
        if (v245 >> 2 == 0xFFFFFFFF)
        {
          v246 = *(v85 + 19);
          v247 = *(v85 + 21);
          *(v84 + 320) = *(v85 + 20);
          *(v84 + 336) = v247;
          *(v84 + 304) = v246;
          v248 = *(v85 + 22);
          v249 = *(v85 + 23);
          v250 = *(v85 + 24);
          *(v84 + 400) = *(v85 + 50);
          *(v84 + 368) = v249;
          *(v84 + 384) = v250;
          *(v84 + 352) = v248;
        }

        else
        {
          v251 = *(v85 + 38);
          v557 = *(v85 + 40);
          v561 = *(v85 + 39);
          v252 = *(v85 + 43);
          v253 = *(v85 + 44);
          v254 = *(v85 + 45);
          v565 = *(v85 + 46);
          v573 = *(v85 + 47);
          __dstb = *(v85 + 48);
          v586 = *(v85 + 49);
          __srcc = *(v85 + 50);
          v556 = *(v85 + 41);
          outlined copy of PlatformItemList.Item.SystemItem(v251, v561, v557, v556, v245, v252, v253, v254, v565, v573, __dstb, v586, __srcc);
          *(v84 + 304) = v251;
          *(v84 + 312) = v561;
          *(v84 + 320) = v557;
          *(v84 + 328) = v556;
          *(v84 + 336) = v245;
          *(v84 + 344) = v252;
          *(v84 + 352) = v253;
          *(v84 + 360) = v254;
          *(v84 + 368) = v565;
          *(v84 + 376) = v573;
          *(v84 + 384) = __dstb;
          *(v84 + 392) = v586;
          *(v84 + 400) = __srcc;
        }

        if (*(v85 + 52) == 1)
        {
          *(v84 + 408) = *(v85 + 408);
          v255 = *(v85 + 424);
          v256 = *(v85 + 440);
          v257 = *(v85 + 456);
          *(v84 + 472) = v85[472];
          *(v84 + 440) = v256;
          *(v84 + 456) = v257;
          *(v84 + 424) = v255;
        }

        else
        {
          *(v84 + 408) = v85[408];
          *(v84 + 409) = v85[409];
          *(v84 + 410) = v85[410];
          *(v84 + 411) = v85[411];
          *(v84 + 412) = v85[412];
          v258 = *(v85 + 52);
          if (v258)
          {
            v259 = *(v85 + 53);
            *(v84 + 416) = v258;
            *(v84 + 424) = v259;
          }

          else
          {
            *(v84 + 416) = *(v85 + 26);
          }

          v260 = *(v85 + 54);
          if (v260)
          {
            v261 = *(v85 + 55);
            *(v84 + 432) = v260;
            *(v84 + 440) = v261;
          }

          else
          {
            *(v84 + 432) = *(v85 + 27);
          }

          v262 = *(v85 + 56);
          if (v262)
          {
            v263 = *(v85 + 57);
            *(v84 + 448) = v262;
            *(v84 + 456) = v263;
          }

          else
          {
            *(v84 + 448) = *(v85 + 28);
          }

          *(v84 + 464) = *(v85 + 58);
          *(v84 + 472) = v85[472];
        }

        *(v84 + 480) = *(v85 + 60);
        *(v84 + 488) = *(v85 + 61);
        *(v84 + 496) = *(v85 + 62);
        *(v84 + 504) = v85[504];
        v264 = *(v85 + 64);

        if (v264)
        {
          v265 = *(v85 + 65);
          *(v84 + 512) = v264;
          *(v84 + 520) = v265;
        }

        else
        {
          *(v84 + 512) = *(v85 + 32);
        }

        *(v84 + 528) = v85[528];
        if (!*(v85 + 102))
        {
          memcpy((v84 + 536), v85 + 536, 0x130uLL);
          goto LABEL_136;
        }

        *(v84 + 536) = *(v85 + 67);
        *(v84 + 544) = *(v85 + 68);
        *(v84 + 552) = v85[552];
        *(v84 + 560) = *(v85 + 70);
        *(v84 + 568) = v85[568];
        v266 = *(v85 + 36);
        *(v84 + 592) = v85[592];
        *(v84 + 576) = v266;
        v267 = (v84 + 600);
        v268 = (v85 + 600);
        v269 = *(v85 + 78);

        if (v269)
        {
          if (v269 == 1)
          {
            v270 = *v268;
            v271 = *(v85 + 632);
            *(v84 + 616) = *(v85 + 616);
            *(v84 + 632) = v271;
            *v267 = v270;
LABEL_132:
            v274 = *(v85 + 81);
            *(v84 + 656) = v85[656];
            *(v84 + 648) = v274;
            v275 = (v84 + 664);
            v276 = v85 + 664;
            if (*(v85 + 97) == 1)
            {
              v277 = *(v85 + 680);
              *v275 = *v276;
              *(v84 + 680) = v277;
              v278 = *(v85 + 696);
              v279 = *(v85 + 712);
              v280 = *(v85 + 744);
              *(v84 + 728) = *(v85 + 728);
              *(v84 + 744) = v280;
              *(v84 + 696) = v278;
              *(v84 + 712) = v279;
              v281 = *(v85 + 760);
              v282 = *(v85 + 776);
              v283 = *(v85 + 792);
              *(v84 + 808) = v85[808];
              *(v84 + 776) = v282;
              *(v84 + 792) = v283;
              *(v84 + 760) = v281;
            }

            else
            {
              v284 = *v276;
              *(v84 + 672) = v85[672];
              *v275 = v284;
              v285 = *(v85 + 85);
              *(v84 + 688) = v85[688];
              *(v84 + 680) = v285;
              *(v84 + 689) = v85[689];
              *(v84 + 690) = v85[690];
              *(v84 + 691) = v85[691];
              *(v84 + 692) = v85[692];
              *(v84 + 696) = *(v85 + 87);
              *(v84 + 704) = *(v85 + 88);
              *(v84 + 712) = *(v85 + 89);
              *(v84 + 720) = *(v85 + 90);
              *(v84 + 728) = *(v85 + 91);
              *(v84 + 736) = *(v85 + 92);
              *(v84 + 744) = v85[744];
              *(v84 + 745) = v85[745];
              *(v84 + 752) = *(v85 + 94);
              *(v84 + 760) = *(v85 + 95);
              *(v84 + 768) = v85[768];
              *(v84 + 776) = *(v85 + 97);
              v286 = *(v85 + 49);
              *(v84 + 800) = *(v85 + 100);
              *(v84 + 784) = v286;
              *(v84 + 808) = v85[808];
            }

            *(v84 + 816) = *(v85 + 102);
            *(v84 + 824) = *(v85 + 103);
            *(v84 + 832) = *(v85 + 104);

LABEL_136:
            v287 = (v84 + 840);
            v288 = (v85 + 840);
            v289 = *(v85 + 108);
            if (v289)
            {
              if (v289 == 1)
              {
                v290 = *v288;
                v291 = *(v85 + 856);
                v292 = *(v85 + 872);
                *(v84 + 888) = *(v85 + 111);
                *(v84 + 856) = v291;
                *(v84 + 872) = v292;
                *v287 = v290;
LABEL_144:
                v297 = *(v85 + 112);
                *(v84 + 896) = v297;
                *(v84 + 904) = *(v85 + 113);
                *(v84 + 912) = *(v85 + 114);
                *(v84 + 920) = *(v85 + 115);
                *(v84 + 928) = *(v85 + 116);
                *(v84 + 936) = *(v85 + 117);
                *(v84 + 944) = *(v85 + 118);
                *(v84 + 952) = v85[952];
                *(v84 + 953) = v85[953];
                *(v84 + 954) = v85[954];
                v298 = v613[28];
                __srca = (v84 + v298);
                v299 = &v85[v298];
                v300 = type metadata accessor for CommandOperation();
                v566 = *(v300 - 8);
                v574 = *(v566 + 48);
                v301 = v297;

                if (v574(v299, 1, v300))
                {
                  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                  memcpy(__srca, v299, *(*(v302 - 8) + 64));
                  v20 = v606;
                  v21 = v616;
                  a3 = v611;
                }

                else
                {
                  *__srca = *v299;
                  v303 = *(v300 + 20);
                  v304 = v299;
                  v305 = &__srca[v303];
                  v306 = &v304[v303];
                  v587 = v300;
                  v307 = *&v304[v303];
                  v308 = *&v304[v303 + 8];
                  v309 = v304[v303 + 16];
                  outlined copy of Text.Storage(v307, v308, v309);
                  *v305 = v307;
                  *(v305 + 1) = v308;
                  v305[16] = v309;
                  *(v305 + 3) = *(v306 + 3);
                  v310 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v311 = type metadata accessor for UUID();
                  __dstc = *(*(v311 - 8) + 16);

                  __dstc(&v305[v310], &v306[v310], v311);
                  v312 = *(v587 + 24);
                  v313 = &__srca[v312];
                  v314 = &v304[v312];
                  if (*v314)
                  {
                    v315 = *(v314 + 1);
                    *v313 = *v314;
                    *(v313 + 1) = v315;
                  }

                  else
                  {
                    *v313 = *v314;
                  }

                  v20 = v606;
                  v21 = v616;
                  a3 = v611;
                  (*(v566 + 56))(__srca, 0, 1, v587);
                }

                *(v84 + v613[29]) = v85[v613[29]];
                *(v84 + v613[30]) = v85[v613[30]];
                *(v84 + v613[31]) = v85[v613[31]];
                *(v84 + v613[32]) = v85[v613[32]];
                *(v84 + v613[33]) = v85[v613[33]];
                *(v84 + v613[34]) = *&v85[v613[34]];
                v322 = *(v600 + 56);

                v322(v84, 0, 1, v613);
                goto LABEL_317;
              }

              *(v84 + 864) = v289;
              *(v84 + 872) = *(v85 + 109);
              (**(v289 - 8))(v287, v288);
            }

            else
            {
              v293 = *v288;
              v294 = *(v85 + 856);
              *(v84 + 872) = *(v85 + 109);
              *v287 = v293;
              *(v84 + 856) = v294;
            }

            v295 = *(v85 + 110);
            if (v295)
            {
              v296 = *(v85 + 111);
              *(v84 + 880) = v295;
              *(v84 + 888) = v296;
            }

            else
            {
              *(v84 + 880) = *(v85 + 55);
            }

            goto LABEL_144;
          }

          *(v84 + 624) = v269;
          *(v84 + 632) = *(v85 + 79);
          (**(v269 - 8))(v84 + 600, (v85 + 600), v269);
        }

        else
        {
          v272 = *v268;
          v273 = *(v85 + 616);
          *(v84 + 632) = *(v85 + 79);
          *v267 = v272;
          *(v84 + 616) = v273;
        }

        *(v84 + 640) = *(v85 + 80);

        goto LABEL_132;
      }

      goto LABEL_39;
    }

    a3 = v611;
    if (v89)
    {
      _s7SwiftUI16CommandOperationVWOhTm_3(v84, type metadata accessor for PlatformItemList.Item);
LABEL_39:
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v84, v85, *(*(v104 - 8) + 64));
LABEL_317:
      swift_weakCopyAssign();
      v609[v21[19]] = v20[v21[19]];
      v609[v21[20]] = v20[v21[20]];
      v609[v21[21]] = v20[v21[21]];
      goto LABEL_318;
    }

    v105 = *v84;
    v106 = *v85;
    *v84 = *v85;
    v107 = v106;

    v108 = *(v84 + 8);
    v109 = *(v85 + 1);
    *(v84 + 8) = v109;
    v110 = v109;

    *(v84 + 16) = *(v85 + 2);
    *(v84 + 24) = *(v85 + 3);

    *(v84 + 32) = v85[32];
    *(v84 + 40) = *(v85 + 5);
    *(v84 + 48) = *(v85 + 6);

    *(v84 + 56) = v85[56];
    v111 = *(v85 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v615 = v21;
    if (*(v84 + 192) >> 1 == 4294967294)
    {
      if (v111 == 0x1FFFFFFFCLL)
      {
        v112 = *(v85 + 4);
        v113 = *(v85 + 5);
        v114 = *(v85 + 7);
        *(v84 + 96) = *(v85 + 6);
        *(v84 + 112) = v114;
        *(v84 + 64) = v112;
        *(v84 + 80) = v113;
        v115 = *(v85 + 8);
        v116 = *(v85 + 9);
        v117 = *(v85 + 11);
        *(v84 + 160) = *(v85 + 10);
        *(v84 + 176) = v117;
        *(v84 + 128) = v115;
        *(v84 + 144) = v116;
        v118 = *(v85 + 12);
        v119 = *(v85 + 13);
        v120 = *(v85 + 14);
        *(v84 + 235) = *(v85 + 235);
        *(v84 + 208) = v119;
        *(v84 + 224) = v120;
        *(v84 + 192) = v118;
      }

      else
      {
        v316 = v85[72];
        if (v316 == 255)
        {
          v323 = *(v85 + 8);
          *(v84 + 72) = v85[72];
          *(v84 + 64) = v323;
        }

        else
        {
          v317 = *(v85 + 8);
          outlined copy of GraphicsImage.Contents(v317, v85[72]);
          *(v84 + 64) = v317;
          *(v84 + 72) = v316;
        }

        *(v84 + 80) = *(v85 + 10);
        *(v84 + 88) = *(v85 + 88);
        *(v84 + 104) = v85[104];
        v324 = *(v85 + 108);
        *(v84 + 121) = *(v85 + 121);
        *(v84 + 108) = v324;
        v325 = *(v85 + 136);
        v326 = *(v85 + 152);
        *(v84 + 168) = v85[168];
        *(v84 + 152) = v326;
        *(v84 + 136) = v325;
        *(v84 + 169) = v85[169];
        *(v84 + 170) = v85[170];
        *(v84 + 171) = v85[171];
        v327 = *(v85 + 24);
        if (v327 >> 1 == 0xFFFFFFFF)
        {
          v328 = *(v85 + 12);
          *(v84 + 176) = *(v85 + 11);
          *(v84 + 192) = v328;
        }

        else
        {
          v329 = v20;
          v330 = *(v85 + 22);
          v331 = *(v85 + 23);
          v332 = *(v85 + 25);
          outlined copy of AccessibilityImageLabel(v330, v331, *(v85 + 24));
          *(v84 + 176) = v330;
          *(v84 + 184) = v331;
          v20 = v329;
          *(v84 + 192) = v327;
          *(v84 + 200) = v332;
        }

        *(v84 + 208) = *(v85 + 26);
        *(v84 + 216) = *(v85 + 27);
        *(v84 + 224) = v85[224];
        *(v84 + 225) = v85[225];
        v333 = *(v85 + 57);
        *(v84 + 232) = v85[232];
        *(v84 + 228) = v333;
        v334 = *(v85 + 30);
        *(v84 + 240) = v334;
        *(v84 + 248) = *(v85 + 124);
        *(v84 + 250) = v85[250];
        swift_unknownObjectRetain();

        v335 = v334;
      }
    }

    else if (v111 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v84 + 64);
      v218 = *(v85 + 7);
      v220 = *(v85 + 4);
      v219 = *(v85 + 5);
      *(v84 + 96) = *(v85 + 6);
      *(v84 + 112) = v218;
      *(v84 + 64) = v220;
      *(v84 + 80) = v219;
      v221 = *(v85 + 11);
      v223 = *(v85 + 8);
      v222 = *(v85 + 9);
      *(v84 + 160) = *(v85 + 10);
      *(v84 + 176) = v221;
      *(v84 + 128) = v223;
      *(v84 + 144) = v222;
      v225 = *(v85 + 13);
      v224 = *(v85 + 14);
      v226 = *(v85 + 12);
      *(v84 + 235) = *(v85 + 235);
      *(v84 + 208) = v225;
      *(v84 + 224) = v224;
      *(v84 + 192) = v226;
    }

    else
    {
      v318 = v85[72];
      if (*(v84 + 72) == 255)
      {
        if (v318 == 255)
        {
          v338 = *(v85 + 8);
          *(v84 + 72) = v85[72];
          *(v84 + 64) = v338;
        }

        else
        {
          v336 = *(v85 + 8);
          outlined copy of GraphicsImage.Contents(v336, v85[72]);
          *(v84 + 64) = v336;
          *(v84 + 72) = v318;
        }
      }

      else if (v318 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v84 + 64);
        v337 = v85[72];
        *(v84 + 64) = *(v85 + 8);
        *(v84 + 72) = v337;
      }

      else
      {
        v319 = *(v85 + 8);
        outlined copy of GraphicsImage.Contents(v319, v85[72]);
        v320 = *(v84 + 64);
        *(v84 + 64) = v319;
        v321 = *(v84 + 72);
        *(v84 + 72) = v318;
        outlined consume of GraphicsImage.Contents(v320, v321);
      }

      *(v84 + 80) = *(v85 + 10);
      *(v84 + 88) = *(v85 + 11);
      *(v84 + 96) = *(v85 + 12);
      *(v84 + 104) = v85[104];
      v339 = *(v85 + 108);
      *(v84 + 121) = *(v85 + 121);
      *(v84 + 108) = v339;
      v340 = *(v85 + 136);
      v341 = *(v85 + 152);
      *(v84 + 168) = v85[168];
      *(v84 + 152) = v341;
      *(v84 + 136) = v340;
      *(v84 + 169) = v85[169];
      *(v84 + 170) = v85[170];
      *(v84 + 171) = v85[171];
      v342 = *(v85 + 24);
      v343 = v342 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v84 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v343 == 0x1FFFFFFFELL)
        {
          v344 = *(v85 + 12);
          *(v84 + 176) = *(v85 + 11);
          *(v84 + 192) = v344;
        }

        else
        {
          v346 = v20;
          v347 = *(v85 + 22);
          v348 = *(v85 + 23);
          v349 = *(v85 + 25);
          outlined copy of AccessibilityImageLabel(v347, v348, *(v85 + 24));
          *(v84 + 176) = v347;
          *(v84 + 184) = v348;
          v20 = v346;
          *(v84 + 192) = v342;
          *(v84 + 200) = v349;
        }
      }

      else if (v343 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v84 + 176);
        v345 = *(v85 + 12);
        *(v84 + 176) = *(v85 + 11);
        *(v84 + 192) = v345;
      }

      else
      {
        v350 = v20;
        v351 = *(v85 + 22);
        v352 = *(v85 + 23);
        v353 = *(v85 + 25);
        outlined copy of AccessibilityImageLabel(v351, v352, *(v85 + 24));
        v354 = *(v84 + 176);
        v355 = *(v84 + 184);
        v356 = *(v84 + 192);
        *(v84 + 176) = v351;
        *(v84 + 184) = v352;
        v20 = v350;
        *(v84 + 192) = v342;
        *(v84 + 200) = v353;
        outlined consume of AccessibilityImageLabel(v354, v355, v356);
      }

      *(v84 + 208) = *(v85 + 26);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v84 + 216) = *(v85 + 27);

      *(v84 + 224) = v85[224];
      *(v84 + 225) = v85[225];
      v357 = *(v85 + 57);
      *(v84 + 232) = v85[232];
      *(v84 + 228) = v357;
      v358 = *(v84 + 240);
      v359 = *(v85 + 30);
      *(v84 + 240) = v359;
      v360 = v359;

      *(v84 + 248) = *(v85 + 124);
      *(v84 + 250) = v85[250];
    }

    v361 = *(v85 + 33);
    if (!*(v84 + 264))
    {
      if (v361)
      {
        *(v84 + 256) = *(v85 + 32);
        *(v84 + 264) = *(v85 + 33);
        v365 = *(v85 + 34);

        if (v365 >= 2)
        {
          v366 = v365;
        }

        *(v84 + 272) = v365;
        v367 = *(v85 + 70);
        *(v84 + 284) = v85[284];
        *(v84 + 280) = v367;
        *(v84 + 285) = v85[285];
        *(v84 + 286) = v85[286];
        *(v84 + 288) = *(v85 + 36);
        *(v84 + 296) = *(v85 + 37);
      }

      else
      {
        v370 = *(v85 + 16);
        v371 = *(v85 + 18);
        *(v84 + 272) = *(v85 + 17);
        *(v84 + 288) = v371;
        *(v84 + 256) = v370;
      }

LABEL_189:
      v374 = *(v85 + 42);
      v375 = v374 & 0xFFFFFFFFFFFFFFFCLL;
      v607 = v20;
      if (*(v84 + 336) >> 2 == 0xFFFFFFFFLL)
      {
        if (v375 == 0x3FFFFFFFCLL)
        {
          v376 = *(v85 + 19);
          v377 = *(v85 + 21);
          *(v84 + 320) = *(v85 + 20);
          *(v84 + 336) = v377;
          *(v84 + 304) = v376;
          v378 = *(v85 + 22);
          v379 = *(v85 + 23);
          v380 = *(v85 + 24);
          *(v84 + 400) = *(v85 + 50);
          *(v84 + 368) = v379;
          *(v84 + 384) = v380;
          *(v84 + 352) = v378;
        }

        else
        {
          v386 = *(v85 + 38);
          v562 = *(v85 + 40);
          v567 = *(v85 + 39);
          v558 = *(v85 + 41);
          v387 = *(v85 + 43);
          v388 = *(v85 + 44);
          v389 = *(v85 + 45);
          v575 = *(v85 + 46);
          __dstd = *(v85 + 47);
          v588 = *(v85 + 48);
          __srcd = *(v85 + 49);
          v601 = *(v85 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v386, v567, v562, v558, v374, v387, v388, v389, v575, __dstd, v588, __srcd, v601);
          *(v84 + 304) = v386;
          *(v84 + 312) = v567;
          *(v84 + 320) = v562;
          *(v84 + 328) = v558;
          *(v84 + 336) = v374;
          *(v84 + 344) = v387;
          *(v84 + 352) = v388;
          *(v84 + 360) = v389;
          *(v84 + 368) = v575;
          *(v84 + 376) = __dstd;
          *(v84 + 384) = v588;
          *(v84 + 392) = __srcd;
          *(v84 + 400) = v601;
        }
      }

      else if (v375 == 0x3FFFFFFFCLL)
      {
        outlined destroy of PlatformItemList.Item.SystemItem(v84 + 304);
        v382 = *(v85 + 20);
        v381 = *(v85 + 21);
        *(v84 + 304) = *(v85 + 19);
        *(v84 + 320) = v382;
        *(v84 + 336) = v381;
        v384 = *(v85 + 23);
        v383 = *(v85 + 24);
        v385 = *(v85 + 22);
        *(v84 + 400) = *(v85 + 50);
        *(v84 + 368) = v384;
        *(v84 + 384) = v383;
        *(v84 + 352) = v385;
      }

      else
      {
        v390 = *(v85 + 38);
        v391 = *(v85 + 39);
        v392 = *(v85 + 40);
        v568 = *(v85 + 44);
        v576 = *(v85 + 43);
        v393 = *(v85 + 46);
        v559 = *(v85 + 41);
        v563 = *(v85 + 45);
        __dste = *(v85 + 47);
        v589 = *(v85 + 48);
        __srce = *(v85 + 49);
        v602 = *(v85 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v390, v391, v392, v559, v374, v576, v568, v563, v393, __dste, v589, __srce, v602);
        v394 = *(v84 + 304);
        v395 = *(v84 + 312);
        v396 = *(v84 + 320);
        v397 = *(v84 + 328);
        v398 = *(v84 + 336);
        v399 = *(v84 + 344);
        v400 = *(v84 + 352);
        v401 = *(v84 + 360);
        v402 = *(v84 + 368);
        v403 = *(v84 + 384);
        v404 = *(v84 + 400);
        *(v84 + 304) = v390;
        *(v84 + 312) = v391;
        *(v84 + 320) = v392;
        *(v84 + 328) = v559;
        *(v84 + 336) = v374;
        *(v84 + 344) = v576;
        *(v84 + 352) = v568;
        *(v84 + 360) = v563;
        *(v84 + 368) = v393;
        *(v84 + 376) = __dste;
        *(v84 + 384) = v589;
        *(v84 + 392) = __srce;
        *(v84 + 400) = v602;
        outlined consume of PlatformItemList.Item.SystemItem(v394, v395, v396, v397, v398, v399, v400, v401, v402, *(&v402 + 1), v403, SBYTE8(v403), v404);
      }

      v405 = (v84 + 408);
      v406 = v85 + 408;
      v407 = *(v84 + 416);
      v408 = *(v85 + 52);
      if (v407 == 1)
      {
        if (v408 == 1)
        {
          *v405 = *v406;
          v409 = *(v85 + 424);
          v410 = *(v85 + 440);
          v411 = *(v85 + 456);
          *(v84 + 472) = v85[472];
          *(v84 + 440) = v410;
          *(v84 + 456) = v411;
          *(v84 + 424) = v409;
          goto LABEL_231;
        }

        *(v84 + 408) = v85[408];
        *(v84 + 409) = v85[409];
        *(v84 + 410) = v85[410];
        *(v84 + 411) = v85[411];
        *(v84 + 412) = v85[412];
        v415 = *(v85 + 52);
        if (v415)
        {
          v416 = *(v85 + 53);
          *(v84 + 416) = v415;
          *(v84 + 424) = v416;
        }

        else
        {
          *(v84 + 416) = *(v85 + 26);
        }

        v419 = *(v85 + 54);
        if (v419)
        {
          v420 = *(v85 + 55);
          *(v84 + 432) = v419;
          *(v84 + 440) = v420;
        }

        else
        {
          *(v84 + 432) = *(v85 + 27);
        }

        v422 = *(v85 + 56);
        if (!v422)
        {
          goto LABEL_229;
        }

        goto LABEL_227;
      }

      if (v408 == 1)
      {
        outlined destroy of PlatformItemList.Item.SelectionBehavior(v84 + 408);
        *v405 = *v406;
        v413 = *(v85 + 440);
        v412 = *(v85 + 456);
        v414 = *(v85 + 424);
        *(v84 + 472) = v85[472];
        *(v84 + 440) = v413;
        *(v84 + 456) = v412;
        *(v84 + 424) = v414;
        goto LABEL_231;
      }

      *(v84 + 408) = *v406;
      *(v84 + 409) = v85[409];
      *(v84 + 410) = v85[410];
      *(v84 + 411) = v85[411];
      *(v84 + 412) = v85[412];
      v417 = *(v85 + 52);
      if (v407)
      {
        if (v417)
        {
          v418 = *(v85 + 53);
          *(v84 + 416) = v417;
          *(v84 + 424) = v418;

          goto LABEL_216;
        }
      }

      else if (v417)
      {
        v421 = *(v85 + 53);
        *(v84 + 416) = v417;
        *(v84 + 424) = v421;

        goto LABEL_216;
      }

      *(v84 + 416) = *(v85 + 26);
LABEL_216:
      v423 = *(v85 + 54);
      if (*(v84 + 432))
      {
        if (v423)
        {
          v424 = *(v85 + 55);
          *(v84 + 432) = v423;
          *(v84 + 440) = v424;

          goto LABEL_223;
        }
      }

      else if (v423)
      {
        v425 = *(v85 + 55);
        *(v84 + 432) = v423;
        *(v84 + 440) = v425;

        goto LABEL_223;
      }

      *(v84 + 432) = *(v85 + 27);
LABEL_223:
      v422 = *(v85 + 56);
      if (*(v84 + 448))
      {
        if (v422)
        {
          v426 = *(v85 + 57);
          *(v84 + 448) = v422;
          *(v84 + 456) = v426;

LABEL_230:
          *(v84 + 464) = *(v85 + 58);
          *(v84 + 472) = v85[472];
LABEL_231:
          *(v84 + 480) = *(v85 + 60);
          *(v84 + 488) = *(v85 + 61);

          *(v84 + 496) = *(v85 + 62);
          *(v84 + 504) = v85[504];
          v428 = *(v85 + 64);
          if (*(v84 + 512))
          {
            if (v428)
            {
              v429 = *(v85 + 65);
              *(v84 + 512) = v428;
              *(v84 + 520) = v429;

              goto LABEL_238;
            }
          }

          else if (v428)
          {
            v430 = *(v85 + 65);
            *(v84 + 512) = v428;
            *(v84 + 520) = v430;

            goto LABEL_238;
          }

          *(v84 + 512) = *(v85 + 32);
LABEL_238:
          *(v84 + 528) = v85[528];
          v431 = *(v85 + 102);
          if (*(v84 + 816))
          {
            if (v431)
            {
              *(v84 + 536) = *(v85 + 67);
              *(v84 + 544) = *(v85 + 68);

              *(v84 + 552) = v85[552];
              *(v84 + 560) = *(v85 + 70);

              *(v84 + 568) = v85[568];
              v432 = *(v85 + 36);
              *(v84 + 592) = v85[592];
              *(v84 + 576) = v432;
              v433 = (v84 + 600);
              v434 = v85 + 600;
              v435 = *(v84 + 624);
              v436 = *(v85 + 78);
              if (v435 != 1)
              {
                if (v436 == 1)
                {
                  outlined destroy of AccessibilityValueStorage(v84 + 600);
                  v446 = *(v85 + 616);
                  v445 = *(v85 + 632);
                  *v433 = *v434;
                  *(v84 + 616) = v446;
                  *(v84 + 632) = v445;
                }

                else
                {
                  if (v435)
                  {
                    if (v436)
                    {
                      __swift_assign_boxed_opaque_existential_1((v84 + 600), v85 + 75);
                    }

                    else
                    {
                      outlined destroy of AnyAccessibilityValue(v84 + 600);
                      v464 = *(v85 + 79);
                      v465 = *(v85 + 616);
                      *v433 = *v434;
                      *(v84 + 616) = v465;
                      *(v84 + 632) = v464;
                    }
                  }

                  else if (v436)
                  {
                    *(v84 + 624) = v436;
                    *(v84 + 632) = *(v85 + 79);
                    (**(v436 - 8))(v84 + 600, (v85 + 600));
                  }

                  else
                  {
                    v466 = *v434;
                    v467 = *(v85 + 616);
                    *(v84 + 632) = *(v85 + 79);
                    *v433 = v466;
                    *(v84 + 616) = v467;
                  }

                  *(v84 + 640) = *(v85 + 80);
                }

                goto LABEL_270;
              }

              if (v436)
              {
                if (v436 == 1)
                {
                  v437 = *v434;
                  v438 = *(v85 + 632);
                  *(v84 + 616) = *(v85 + 616);
                  *(v84 + 632) = v438;
                  *v433 = v437;
LABEL_270:
                  v468 = *(v85 + 81);
                  *(v84 + 656) = v85[656];
                  *(v84 + 648) = v468;
                  v469 = (v84 + 664);
                  v470 = v85 + 664;
                  v471 = *(v85 + 97);
                  if (*(v84 + 776) == 1)
                  {
                    if (v471 == 1)
                    {
                      v472 = *(v85 + 680);
                      *v469 = *v470;
                      *(v84 + 680) = v472;
                      v473 = *(v85 + 696);
                      v474 = *(v85 + 712);
                      v475 = *(v85 + 744);
                      *(v84 + 728) = *(v85 + 728);
                      *(v84 + 744) = v475;
                      *(v84 + 696) = v473;
                      *(v84 + 712) = v474;
                      v476 = *(v85 + 760);
                      v477 = *(v85 + 776);
                      v478 = *(v85 + 792);
                      *(v84 + 808) = v85[808];
                      *(v84 + 776) = v477;
                      *(v84 + 792) = v478;
                      *(v84 + 760) = v476;
                    }

                    else
                    {
                      v486 = *v470;
                      *(v84 + 672) = v85[672];
                      *v469 = v486;
                      v487 = *(v85 + 85);
                      *(v84 + 688) = v85[688];
                      *(v84 + 680) = v487;
                      *(v84 + 689) = v85[689];
                      *(v84 + 690) = v85[690];
                      *(v84 + 691) = v85[691];
                      *(v84 + 692) = v85[692];
                      *(v84 + 696) = *(v85 + 87);
                      *(v84 + 704) = *(v85 + 88);
                      *(v84 + 712) = *(v85 + 89);
                      *(v84 + 720) = *(v85 + 90);
                      *(v84 + 728) = *(v85 + 91);
                      *(v84 + 736) = *(v85 + 92);
                      *(v84 + 744) = v85[744];
                      *(v84 + 745) = v85[745];
                      *(v84 + 752) = *(v85 + 94);
                      *(v84 + 760) = *(v85 + 95);
                      *(v84 + 768) = v85[768];
                      *(v84 + 776) = *(v85 + 97);
                      v488 = *(v85 + 49);
                      *(v84 + 800) = *(v85 + 100);
                      *(v84 + 784) = v488;
                      *(v84 + 808) = v85[808];
                    }
                  }

                  else if (v471 == 1)
                  {
                    outlined destroy of AccessibilityTextLayoutProperties(v84 + 664);
                    v479 = *(v85 + 680);
                    *v469 = *v470;
                    *(v84 + 680) = v479;
                    v480 = *(v85 + 744);
                    v482 = *(v85 + 696);
                    v481 = *(v85 + 712);
                    *(v84 + 728) = *(v85 + 728);
                    *(v84 + 744) = v480;
                    *(v84 + 696) = v482;
                    *(v84 + 712) = v481;
                    v484 = *(v85 + 776);
                    v483 = *(v85 + 792);
                    v485 = *(v85 + 760);
                    *(v84 + 808) = v85[808];
                    *(v84 + 776) = v484;
                    *(v84 + 792) = v483;
                    *(v84 + 760) = v485;
                  }

                  else
                  {
                    v489 = *v470;
                    *(v84 + 672) = v85[672];
                    *v469 = v489;
                    v490 = *(v85 + 85);
                    *(v84 + 688) = v85[688];
                    *(v84 + 680) = v490;
                    *(v84 + 689) = v85[689];
                    *(v84 + 690) = v85[690];
                    *(v84 + 691) = v85[691];
                    *(v84 + 692) = v85[692];
                    *(v84 + 696) = *(v85 + 87);
                    *(v84 + 704) = *(v85 + 88);
                    *(v84 + 712) = *(v85 + 89);
                    *(v84 + 720) = *(v85 + 90);
                    *(v84 + 728) = *(v85 + 91);
                    *(v84 + 736) = *(v85 + 92);
                    *(v84 + 744) = v85[744];
                    *(v84 + 745) = v85[745];
                    *(v84 + 752) = *(v85 + 94);
                    *(v84 + 760) = *(v85 + 95);
                    *(v84 + 768) = v85[768];
                    *(v84 + 776) = *(v85 + 97);

                    v491 = *(v85 + 49);
                    *(v84 + 800) = *(v85 + 100);
                    *(v84 + 784) = v491;
                    *(v84 + 808) = v85[808];
                  }

                  *(v84 + 816) = *(v85 + 102);

                  *(v84 + 824) = *(v85 + 103);

                  *(v84 + 832) = *(v85 + 104);

                  goto LABEL_278;
                }

                *(v84 + 624) = v436;
                *(v84 + 632) = *(v85 + 79);
                (**(v436 - 8))(v84 + 600, (v85 + 600));
              }

              else
              {
                v462 = *v434;
                v463 = *(v85 + 616);
                *(v84 + 632) = *(v85 + 79);
                *v433 = v462;
                *(v84 + 616) = v463;
              }

              *(v84 + 640) = *(v85 + 80);

              goto LABEL_270;
            }

            outlined destroy of PlatformItemList.Item.Accessibility(v84 + 536);
LABEL_249:
            memcpy((v84 + 536), v85 + 536, 0x130uLL);
            goto LABEL_278;
          }

          if (!v431)
          {
            goto LABEL_249;
          }

          *(v84 + 536) = *(v85 + 67);
          *(v84 + 544) = *(v85 + 68);
          *(v84 + 552) = v85[552];
          *(v84 + 560) = *(v85 + 70);
          *(v84 + 568) = v85[568];
          v439 = *(v85 + 36);
          *(v84 + 592) = v85[592];
          *(v84 + 576) = v439;
          v440 = (v84 + 600);
          v441 = (v85 + 600);
          v442 = *(v85 + 78);

          if (v442)
          {
            if (v442 == 1)
            {
              v443 = *v441;
              v444 = *(v85 + 632);
              *(v84 + 616) = *(v85 + 616);
              *(v84 + 632) = v444;
              *v440 = v443;
LABEL_258:
              v449 = *(v85 + 81);
              *(v84 + 656) = v85[656];
              *(v84 + 648) = v449;
              v450 = (v84 + 664);
              v451 = v85 + 664;
              if (*(v85 + 97) == 1)
              {
                v452 = *(v85 + 680);
                *v450 = *v451;
                *(v84 + 680) = v452;
                v453 = *(v85 + 696);
                v454 = *(v85 + 712);
                v455 = *(v85 + 744);
                *(v84 + 728) = *(v85 + 728);
                *(v84 + 744) = v455;
                *(v84 + 696) = v453;
                *(v84 + 712) = v454;
                v456 = *(v85 + 760);
                v457 = *(v85 + 776);
                v458 = *(v85 + 792);
                *(v84 + 808) = v85[808];
                *(v84 + 776) = v457;
                *(v84 + 792) = v458;
                *(v84 + 760) = v456;
              }

              else
              {
                v459 = *v451;
                *(v84 + 672) = v85[672];
                *v450 = v459;
                v460 = *(v85 + 85);
                *(v84 + 688) = v85[688];
                *(v84 + 680) = v460;
                *(v84 + 689) = v85[689];
                *(v84 + 690) = v85[690];
                *(v84 + 691) = v85[691];
                *(v84 + 692) = v85[692];
                *(v84 + 696) = *(v85 + 87);
                *(v84 + 704) = *(v85 + 88);
                *(v84 + 712) = *(v85 + 89);
                *(v84 + 720) = *(v85 + 90);
                *(v84 + 728) = *(v85 + 91);
                *(v84 + 736) = *(v85 + 92);
                *(v84 + 744) = v85[744];
                *(v84 + 745) = v85[745];
                *(v84 + 752) = *(v85 + 94);
                *(v84 + 760) = *(v85 + 95);
                *(v84 + 768) = v85[768];
                *(v84 + 776) = *(v85 + 97);
                v461 = *(v85 + 49);
                *(v84 + 800) = *(v85 + 100);
                *(v84 + 784) = v461;
                *(v84 + 808) = v85[808];
              }

              *(v84 + 816) = *(v85 + 102);
              *(v84 + 824) = *(v85 + 103);
              *(v84 + 832) = *(v85 + 104);

LABEL_278:
              v492 = (v84 + 840);
              v493 = (v85 + 840);
              v494 = *(v84 + 864);
              v495 = *(v85 + 108);
              if (v494 == 1)
              {
                if (v495)
                {
                  if (v495 == 1)
                  {
                    v496 = *v493;
                    v497 = *(v85 + 856);
                    v498 = *(v85 + 872);
                    *(v84 + 888) = *(v85 + 111);
                    *(v84 + 856) = v497;
                    *(v84 + 872) = v498;
                    *v492 = v496;
                    goto LABEL_302;
                  }

                  *(v84 + 864) = v495;
                  *(v84 + 872) = *(v85 + 109);
                  (**(v495 - 8))(v84 + 840, (v85 + 840));
                }

                else
                {
                  v502 = *v493;
                  v503 = *(v85 + 856);
                  *(v84 + 872) = *(v85 + 109);
                  *v492 = v502;
                  *(v84 + 856) = v503;
                }

                v504 = *(v85 + 110);
                if (!v504)
                {
                  goto LABEL_301;
                }
              }

              else
              {
                if (v495 == 1)
                {
                  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v84 + 840);
                  v500 = *(v85 + 856);
                  v499 = *(v85 + 872);
                  v501 = *v493;
                  *(v84 + 888) = *(v85 + 111);
                  *(v84 + 856) = v500;
                  *(v84 + 872) = v499;
                  *v492 = v501;
                  goto LABEL_302;
                }

                if (v494)
                {
                  if (v495)
                  {
                    __swift_assign_boxed_opaque_existential_1((v84 + 840), v85 + 105);
                  }

                  else
                  {
                    outlined destroy of AnyNavigationLinkPresentedValue(v84 + 840);
                    v505 = *(v85 + 109);
                    v506 = *(v85 + 856);
                    *v492 = *v493;
                    *(v84 + 856) = v506;
                    *(v84 + 872) = v505;
                  }
                }

                else if (v495)
                {
                  *(v84 + 864) = v495;
                  *(v84 + 872) = *(v85 + 109);
                  (**(v495 - 8))(v84 + 840, (v85 + 840));
                }

                else
                {
                  v507 = *v493;
                  v508 = *(v85 + 856);
                  *(v84 + 872) = *(v85 + 109);
                  *v492 = v507;
                  *(v84 + 856) = v508;
                }

                v504 = *(v85 + 110);
                if (*(v84 + 880))
                {
                  if (v504)
                  {
                    v509 = *(v85 + 111);
                    *(v84 + 880) = v504;
                    *(v84 + 888) = v509;

                    goto LABEL_302;
                  }

                  goto LABEL_301;
                }

                if (!v504)
                {
LABEL_301:
                  *(v84 + 880) = *(v85 + 55);
LABEL_302:
                  v511 = *(v84 + 896);
                  v512 = *(v85 + 112);
                  *(v84 + 896) = v512;
                  v513 = v512;

                  *(v84 + 904) = *(v85 + 113);
                  *(v84 + 912) = *(v85 + 114);

                  *(v84 + 920) = *(v85 + 115);
                  *(v84 + 928) = *(v85 + 116);

                  *(v84 + 936) = *(v85 + 117);

                  *(v84 + 944) = *(v85 + 118);

                  *(v84 + 952) = v85[952];
                  *(v84 + 953) = v85[953];
                  *(v84 + 954) = v85[954];
                  v514 = v613[28];
                  v515 = (v84 + v514);
                  v516 = &v85[v514];
                  v517 = type metadata accessor for CommandOperation();
                  v590 = *(v517 - 8);
                  v518 = *(v590 + 48);
                  v603 = v515;
                  LODWORD(v515) = v518(v515, 1, v517);
                  __srcb = v516;
                  v519 = v518(v516, 1, v517);
                  if (v515)
                  {
                    v21 = v615;
                    if (!v519)
                    {
                      *v603 = *v516;
                      v524 = *(v517 + 20);
                      v525 = &v603[v524];
                      v526 = &v516[v524];
                      v527 = *&v516[v524];
                      __dstf = *&__srcb[v524 + 8];
                      v528 = __srcb[v524 + 16];
                      outlined copy of Text.Storage(*&__srcb[v524], __dstf, v528);
                      *v525 = v527;
                      *(v525 + 1) = __dstf;
                      v525[16] = v528;
                      *(v525 + 3) = *(v526 + 3);
                      v577 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v529 = type metadata accessor for UUID();
                      v569 = *(*(v529 - 8) + 16);

                      v569(&v525[v577], &v526[v577], v529);
                      v530 = *(v517 + 24);
                      v531 = &v603[v530];
                      v532 = &__srcb[v530];
                      if (*v532)
                      {
                        v533 = *(v532 + 1);
                        *v531 = *v532;
                        *(v531 + 1) = v533;
                      }

                      else
                      {
                        *v531 = *v532;
                      }

                      v21 = v615;
                      (*(v590 + 56))(v603, 0, 1, v517);
                      goto LABEL_315;
                    }

                    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                    v521 = *(*(v520 - 8) + 64);
                    v522 = v603;
                  }

                  else
                  {
                    v21 = v615;
                    if (!v519)
                    {
                      *v603 = *v516;
                      v534 = *(v517 + 20);
                      v535 = &v603[v534];
                      v536 = &__srcb[v534];
                      v537 = *&__srcb[v534];
                      v538 = *&__srcb[v534 + 8];
                      v591 = __srcb[v534 + 16];
                      outlined copy of Text.Storage(v537, v538, v591);
                      v539 = *v535;
                      v540 = *(v535 + 1);
                      v541 = v535[16];
                      *v535 = v537;
                      *(v535 + 1) = v538;
                      v535[16] = v591;
                      outlined consume of Text.Storage(v539, v540, v541);
                      *(v535 + 3) = *(v536 + 3);

                      v542 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v543 = type metadata accessor for UUID();
                      (*(*(v543 - 8) + 24))(&v535[v542], &v536[v542], v543);
                      v544 = *(v517 + 24);
                      v545 = &v603[v544];
                      v546 = &__srcb[v544];
                      v547 = *&v603[v544];
                      v548 = *&__srcb[v544];
                      if (v547)
                      {
                        v20 = v607;
                        v21 = v615;
                        if (v548)
                        {
                          v549 = *(v546 + 1);
                          *v545 = v548;
                          *(v545 + 1) = v549;

LABEL_316:
                          *(v84 + v613[29]) = v85[v613[29]];
                          *(v84 + v613[30]) = v85[v613[30]];
                          *(v84 + v613[31]) = v85[v613[31]];
                          *(v84 + v613[32]) = v85[v613[32]];
                          *(v84 + v613[33]) = v85[v613[33]];
                          *(v84 + v613[34]) = *&v85[v613[34]];

                          goto LABEL_317;
                        }
                      }

                      else
                      {
                        v20 = v607;
                        v21 = v615;
                        if (v548)
                        {
                          v555 = *(v546 + 1);
                          *v545 = v548;
                          *(v545 + 1) = v555;

                          goto LABEL_316;
                        }
                      }

                      *v545 = *v546;
                      goto LABEL_316;
                    }

                    _s7SwiftUI16CommandOperationVWOhTm_3(v603, type metadata accessor for CommandOperation);
                    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                    v521 = *(*(v523 - 8) + 64);
                    v522 = v603;
                  }

                  memcpy(v522, v516, v521);
LABEL_315:
                  v20 = v607;
                  goto LABEL_316;
                }
              }

              v510 = *(v85 + 111);
              *(v84 + 880) = v504;
              *(v84 + 888) = v510;

              goto LABEL_302;
            }

            *(v84 + 624) = v442;
            *(v84 + 632) = *(v85 + 79);
            (**(v442 - 8))(v84 + 600, (v85 + 600), v442);
          }

          else
          {
            v447 = *v441;
            v448 = *(v85 + 616);
            *(v84 + 632) = *(v85 + 79);
            *v440 = v447;
            *(v84 + 616) = v448;
          }

          *(v84 + 640) = *(v85 + 80);

          goto LABEL_258;
        }
      }

      else if (v422)
      {
LABEL_227:
        v427 = *(v85 + 57);
        *(v84 + 448) = v422;
        *(v84 + 456) = v427;

        goto LABEL_230;
      }

LABEL_229:
      *(v84 + 448) = *(v85 + 28);
      goto LABEL_230;
    }

    if (!v361)
    {
      outlined destroy of Image.NamedResolved(v84 + 256);
      v369 = *(v85 + 17);
      v368 = *(v85 + 18);
      *(v84 + 256) = *(v85 + 16);
      *(v84 + 272) = v369;
      *(v84 + 288) = v368;
      goto LABEL_189;
    }

    *(v84 + 256) = *(v85 + 32);
    *(v84 + 264) = *(v85 + 33);

    v362 = *(v84 + 272);
    v363 = *(v85 + 34);
    if (v362 >= 2)
    {
      if (v363 >= 2)
      {
        *(v84 + 272) = v363;
        v372 = v363;

        goto LABEL_188;
      }

      v363 = *(v85 + 34);
    }

    else if (v363 >= 2)
    {
      *(v84 + 272) = v363;
      v364 = v363;
LABEL_188:
      v373 = *(v85 + 70);
      *(v84 + 284) = v85[284];
      *(v84 + 280) = v373;
      *(v84 + 285) = v85[285];
      *(v84 + 286) = v85[286];
      *(v84 + 288) = *(v85 + 36);

      *(v84 + 296) = *(v85 + 37);

      goto LABEL_189;
    }

    *(v84 + 272) = v363;
    goto LABEL_188;
  }

  if (!v25)
  {
    v599 = v22;
    *v19 = *v20;
    *(v19 + 1) = *(v20 + 1);
    *(v19 + 1) = *(v20 + 1);
    *(v19 + 2) = *(v20 + 2);
    *(v19 + 3) = *(v20 + 3);
    *(v19 + 4) = *(v20 + 4);
    *(v19 + 5) = *(v20 + 5);
    *(v19 + 6) = *(v20 + 6);
    *(v19 + 7) = *(v20 + 7);
    v26 = *(v20 + 11);

    if (v26)
    {
      *(v19 + 11) = v26;
      *(v19 + 12) = *(v20 + 12);
      (**(v26 - 8))((v19 + 64), (v20 + 64), v26);
      *(v19 + 13) = *(v20 + 13);
    }

    else
    {
      v30 = *(v20 + 4);
      v31 = *(v20 + 6);
      *(v19 + 5) = *(v20 + 5);
      *(v19 + 6) = v31;
      *(v19 + 4) = v30;
    }

    v604 = v4;
    v610 = a3;
    v614 = v21;
    v598 = v5;
    if (v20[152] == 1)
    {
      v32 = *(v20 + 17);
      *(v19 + 17) = v32;
      *(v19 + 18) = *(v20 + 18);
      (**(v32 - 8))((v19 + 112), (v20 + 112));
      v19[152] = 1;
    }

    else
    {
      v33 = *(v20 + 7);
      v34 = *(v20 + 8);
      *(v19 + 137) = *(v20 + 137);
      *(v19 + 7) = v33;
      *(v19 + 8) = v34;
    }

    v19[153] = v20[153];
    v19[154] = v20[154];
    *(v19 + 20) = *(v20 + 20);
    v19[168] = v20[168];
    v19[169] = v20[169];
    v19[170] = v20[170];
    *(v19 + 22) = *(v20 + 22);
    v35 = *(v20 + 26);
    *(v19 + 26) = v35;
    *(v19 + 27) = *(v20 + 27);
    v36 = **(v35 - 8);

    v36(v19 + 184, v20 + 184, v35);
    *(v19 + 28) = *(v20 + 28);
    *(v19 + 29) = *(v20 + 29);
    *(v19 + 60) = *(v20 + 60);
    *(v19 + 61) = *(v20 + 61);
    *(v19 + 31) = *(v20 + 31);
    *(v19 + 32) = *(v20 + 32);
    *(v19 + 33) = *(v20 + 33);
    v37 = *(v20 + 34);
    *(v19 + 34) = v37;
    v38 = v20;
    v39 = *(v20 + 35);
    *(v19 + 35) = v39;
    v40 = v21[17];
    v608 = v19;
    v612 = &v19[v40];
    v605 = v38;
    v41 = &v38[v40];
    v42 = type metadata accessor for PlatformItemList.Item();
    v43 = *(v42 - 8);
    v44 = *(v43 + 48);

    v45 = v37;
    v46 = v39;
    if (v44(v41, 1, v42))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v612, v41, *(*(v47 - 8) + 64));
      v4 = v604;
      v48 = v605;
      v49 = v21;
LABEL_93:
      swift_weakCopyInit();
      v608[v49[19]] = v48[v49[19]];
      v608[v49[20]] = v48[v49[20]];
      v608[v49[21]] = v48[v49[21]];
      (*(v599 + 56))(v608, 0, 1, v49);
      v5 = v598;
      goto LABEL_318;
    }

    v585 = v43;
    __src = v42;
    v50 = *v41;
    v51 = v612;
    *v612 = *v41;
    v52 = *(v41 + 1);
    *(v612 + 1) = v52;
    *(v612 + 2) = *(v41 + 2);
    *(v612 + 3) = *(v41 + 3);
    v612[32] = v41[32];
    *(v612 + 5) = *(v41 + 5);
    *(v612 + 6) = *(v41 + 6);
    v612[56] = v41[56];
    v53 = *(v41 + 24);
    v54 = v50;
    v55 = v52;

    if (v53 >> 1 == 4294967294)
    {
      v56 = *(v41 + 4);
      v57 = *(v41 + 5);
      v58 = *(v41 + 7);
      *(v612 + 6) = *(v41 + 6);
      *(v612 + 7) = v58;
      *(v612 + 4) = v56;
      *(v612 + 5) = v57;
      v59 = *(v41 + 8);
      v60 = *(v41 + 9);
      v61 = *(v41 + 11);
      *(v612 + 10) = *(v41 + 10);
      *(v612 + 11) = v61;
      *(v612 + 8) = v59;
      *(v612 + 9) = v60;
      v62 = *(v41 + 12);
      v63 = *(v41 + 13);
      v64 = *(v41 + 14);
      *(v612 + 235) = *(v41 + 235);
      *(v612 + 13) = v63;
      *(v612 + 14) = v64;
      *(v612 + 12) = v62;
      if (*(v41 + 33))
      {
LABEL_19:
        v51[32] = *(v41 + 32);
        v51[33] = *(v41 + 33);
        v65 = *(v41 + 34);

        if (v65 >= 2)
        {
          v66 = v65;
        }

        v51[34] = v65;
        v67 = *(v41 + 70);
        *(v51 + 284) = v41[284];
        *(v51 + 70) = v67;
        *(v51 + 285) = v41[285];
        *(v51 + 286) = v41[286];
        v51[36] = *(v41 + 36);
        v51[37] = *(v41 + 37);

LABEL_49:
        v135 = *(v41 + 42);
        if (v135 >> 2 == 0xFFFFFFFF)
        {
          v136 = *(v41 + 19);
          v137 = *(v41 + 21);
          *(v51 + 20) = *(v41 + 20);
          *(v51 + 21) = v137;
          *(v51 + 19) = v136;
          v138 = *(v41 + 22);
          v139 = *(v41 + 23);
          v140 = *(v41 + 24);
          v51[50] = *(v41 + 50);
          *(v51 + 23) = v139;
          *(v51 + 24) = v140;
          *(v51 + 22) = v138;
        }

        else
        {
          v141 = *(v41 + 38);
          v142 = *(v41 + 39);
          v144 = *(v41 + 40);
          v143 = *(v41 + 41);
          v145 = *(v41 + 43);
          v146 = *(v41 + 44);
          v147 = *(v41 + 45);
          v148 = *(v41 + 47);
          v560 = *(v41 + 46);
          v564 = *(v41 + 48);
          v570 = *(v41 + 49);
          __dsta = *(v41 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v141, v142, v144, v143, v135, v145, v146, v147, v560, v148, v564, v570, __dsta);
          *(v612 + 38) = v141;
          *(v612 + 39) = v142;
          v51 = v612;
          *(v612 + 40) = v144;
          *(v612 + 41) = v143;
          *(v612 + 42) = v135;
          *(v612 + 43) = v145;
          *(v612 + 44) = v146;
          *(v612 + 45) = v147;
          *(v612 + 46) = v560;
          *(v612 + 47) = v148;
          *(v612 + 48) = v564;
          *(v612 + 49) = v570;
          *(v612 + 50) = __dsta;
        }

        if (*(v41 + 52) == 1)
        {
          *(v51 + 51) = *(v41 + 408);
          v149 = *(v41 + 424);
          v150 = *(v41 + 440);
          v151 = *(v41 + 456);
          *(v51 + 472) = v41[472];
          *(v51 + 55) = v150;
          *(v51 + 57) = v151;
          *(v51 + 53) = v149;
          goto LABEL_64;
        }

        *(v51 + 408) = v41[408];
        *(v51 + 409) = v41[409];
        *(v51 + 410) = v41[410];
        *(v51 + 411) = v41[411];
        *(v51 + 412) = v41[412];
        v152 = *(v41 + 52);
        if (v152)
        {
          v153 = *(v41 + 53);
          v51[52] = v152;
          v51[53] = v153;

          v154 = *(v41 + 54);
          if (v154)
          {
            goto LABEL_56;
          }
        }

        else
        {
          *(v51 + 26) = *(v41 + 26);
          v154 = *(v41 + 54);
          if (v154)
          {
LABEL_56:
            v155 = *(v41 + 55);
            v51[54] = v154;
            v51[55] = v155;

            v156 = *(v41 + 56);
            if (v156)
            {
LABEL_57:
              v157 = *(v41 + 57);
              v51[56] = v156;
              v51[57] = v157;

LABEL_63:
              v51[58] = *(v41 + 58);
              *(v51 + 472) = v41[472];
LABEL_64:
              v51[60] = *(v41 + 60);
              v51[61] = *(v41 + 61);
              v51[62] = *(v41 + 62);
              *(v51 + 504) = v41[504];
              v160 = *(v41 + 64);

              if (v160)
              {
                v161 = *(v41 + 65);
                v51[64] = v160;
                v51[65] = v161;
              }

              else
              {
                *(v51 + 32) = *(v41 + 32);
              }

              *(v51 + 528) = v41[528];
              if (!*(v41 + 102))
              {
                memcpy(v51 + 67, v41 + 536, 0x130uLL);
                goto LABEL_79;
              }

              v51[67] = *(v41 + 67);
              v51[68] = *(v41 + 68);
              *(v51 + 552) = v41[552];
              v51[70] = *(v41 + 70);
              *(v51 + 568) = v41[568];
              v162 = *(v41 + 36);
              *(v51 + 592) = v41[592];
              *(v51 + 36) = v162;
              v163 = v51 + 75;
              v164 = (v41 + 600);
              v165 = *(v41 + 78);

              if (v165)
              {
                if (v165 == 1)
                {
                  v166 = *v164;
                  v167 = *(v41 + 632);
                  *(v51 + 77) = *(v41 + 616);
                  *(v51 + 79) = v167;
                  *v163 = v166;
LABEL_75:
                  v170 = *(v41 + 81);
                  *(v51 + 656) = v41[656];
                  v51[81] = v170;
                  v171 = v51 + 83;
                  v172 = v41 + 664;
                  if (*(v41 + 97) == 1)
                  {
                    v173 = *(v41 + 680);
                    *v171 = *v172;
                    *(v51 + 85) = v173;
                    v174 = *(v41 + 696);
                    v175 = *(v41 + 712);
                    v176 = *(v41 + 744);
                    *(v51 + 91) = *(v41 + 728);
                    *(v51 + 93) = v176;
                    *(v51 + 87) = v174;
                    *(v51 + 89) = v175;
                    v177 = *(v41 + 760);
                    v178 = *(v41 + 776);
                    v179 = *(v41 + 792);
                    *(v51 + 808) = v41[808];
                    *(v51 + 97) = v178;
                    *(v51 + 99) = v179;
                    *(v51 + 95) = v177;
                  }

                  else
                  {
                    v180 = *v172;
                    *(v51 + 672) = v41[672];
                    *v171 = v180;
                    v181 = *(v41 + 85);
                    *(v51 + 688) = v41[688];
                    v51[85] = v181;
                    *(v51 + 689) = v41[689];
                    *(v51 + 690) = v41[690];
                    *(v51 + 691) = v41[691];
                    *(v51 + 692) = v41[692];
                    v51[87] = *(v41 + 87);
                    v51[88] = *(v41 + 88);
                    v51[89] = *(v41 + 89);
                    v51[90] = *(v41 + 90);
                    v51[91] = *(v41 + 91);
                    v51[92] = *(v41 + 92);
                    *(v51 + 744) = v41[744];
                    *(v51 + 745) = v41[745];
                    v51[94] = *(v41 + 94);
                    v51[95] = *(v41 + 95);
                    *(v51 + 768) = v41[768];
                    v51[97] = *(v41 + 97);
                    v182 = *(v41 + 49);
                    v51[100] = *(v41 + 100);
                    *(v51 + 49) = v182;
                    *(v51 + 808) = v41[808];
                  }

                  v51[102] = *(v41 + 102);
                  v51[103] = *(v41 + 103);
                  v51[104] = *(v41 + 104);

LABEL_79:
                  v183 = v51 + 105;
                  v184 = (v41 + 840);
                  v185 = *(v41 + 108);
                  if (v185)
                  {
                    if (v185 == 1)
                    {
                      v186 = *v184;
                      v187 = *(v41 + 856);
                      v188 = *(v41 + 872);
                      v51[111] = *(v41 + 111);
                      *(v51 + 107) = v187;
                      *(v51 + 109) = v188;
                      *v183 = v186;
LABEL_86:
                      v193 = *(v41 + 112);
                      v51[112] = v193;
                      v51[113] = *(v41 + 113);
                      v51[114] = *(v41 + 114);
                      v51[115] = *(v41 + 115);
                      v51[116] = *(v41 + 116);
                      v51[117] = *(v41 + 117);
                      v51[118] = *(v41 + 118);
                      *(v51 + 952) = v41[952];
                      *(v51 + 953) = v41[953];
                      *(v51 + 954) = v41[954];
                      v194 = __src[28];
                      __dst = v51 + v194;
                      v195 = &v41[v194];
                      v196 = type metadata accessor for CommandOperation();
                      v197 = *(v196 - 8);
                      v571 = *(v197 + 48);
                      v198 = v193;

                      if (v571(v195, 1, v196))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v195, *(*(v199 - 8) + 64));
                        v4 = v604;
                        v48 = v605;
                        a3 = v610;
                        v200 = v612;
                        v49 = v614;
                        v201 = v585;
                      }

                      else
                      {
                        v572 = v197;
                        *__dst = *v195;
                        v202 = v196;
                        v203 = *(v196 + 20);
                        v204 = &__dst[v203];
                        v205 = &v195[v203];
                        v206 = *&v195[v203];
                        v207 = *&v195[v203 + 8];
                        v208 = v195[v203 + 16];
                        outlined copy of Text.Storage(v206, *(v205 + 1), v205[16]);
                        *v204 = v206;
                        *(v204 + 1) = v207;
                        v204[16] = v208;
                        *(v204 + 3) = *(v205 + 3);
                        v209 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v210 = type metadata accessor for UUID();
                        v211 = *(*(v210 - 8) + 16);

                        v211(&v204[v209], &v205[v209], v210);
                        v212 = *(v202 + 24);
                        v213 = &__dst[v212];
                        v214 = &v195[v212];
                        v215 = v202;
                        if (*v214)
                        {
                          v216 = *(v214 + 1);
                          *v213 = *v214;
                          *(v213 + 1) = v216;
                        }

                        else
                        {
                          *v213 = *v214;
                        }

                        v4 = v604;
                        v48 = v605;
                        a3 = v610;
                        v200 = v612;
                        v49 = v614;
                        v201 = v585;
                        (*(v572 + 56))(__dst, 0, 1, v215);
                      }

                      *(v200 + __src[29]) = v41[__src[29]];
                      *(v200 + __src[30]) = v41[__src[30]];
                      *(v200 + __src[31]) = v41[__src[31]];
                      *(v200 + __src[32]) = v41[__src[32]];
                      *(v200 + __src[33]) = v41[__src[33]];
                      *(v200 + __src[34]) = *&v41[__src[34]];
                      v217 = *(v201 + 56);

                      v217(v200, 0, 1, __src);
                      goto LABEL_93;
                    }

                    v51[108] = v185;
                    v51[109] = *(v41 + 109);
                    (**(v185 - 8))(v183, v184);
                    v191 = *(v41 + 110);
                    if (!v191)
                    {
LABEL_85:
                      *(v51 + 55) = *(v41 + 55);
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    v189 = *v184;
                    v190 = *(v41 + 856);
                    v51[109] = *(v41 + 109);
                    *v183 = v189;
                    *(v51 + 107) = v190;
                    v191 = *(v41 + 110);
                    if (!v191)
                    {
                      goto LABEL_85;
                    }
                  }

                  v192 = *(v41 + 111);
                  v51[110] = v191;
                  v51[111] = v192;

                  goto LABEL_86;
                }

                v51[78] = v165;
                v51[79] = *(v41 + 79);
                (**(v165 - 8))((v51 + 75), (v41 + 600), v165);
              }

              else
              {
                v168 = *v164;
                v169 = *(v41 + 616);
                v51[79] = *(v41 + 79);
                *v163 = v168;
                *(v51 + 77) = v169;
              }

              v51[80] = *(v41 + 80);

              goto LABEL_75;
            }

LABEL_62:
            *(v51 + 28) = *(v41 + 28);
            goto LABEL_63;
          }
        }

        *(v51 + 27) = *(v41 + 27);
        v156 = *(v41 + 56);
        if (v156)
        {
          goto LABEL_57;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v68 = v41[72];
      if (v68 == 255)
      {
        v121 = *(v41 + 8);
        v612[72] = v41[72];
        *(v612 + 8) = v121;
      }

      else
      {
        v69 = *(v41 + 8);
        outlined copy of GraphicsImage.Contents(v69, v41[72]);
        *(v612 + 8) = v69;
        v612[72] = v68;
      }

      *(v612 + 10) = *(v41 + 10);
      *(v612 + 88) = *(v41 + 88);
      v612[104] = v41[104];
      v122 = *(v41 + 108);
      *(v612 + 121) = *(v41 + 121);
      *(v612 + 108) = v122;
      v123 = *(v41 + 136);
      v124 = *(v41 + 152);
      v612[168] = v41[168];
      *(v612 + 152) = v124;
      *(v612 + 136) = v123;
      v612[169] = v41[169];
      v612[170] = v41[170];
      v612[171] = v41[171];
      v125 = *(v41 + 24);
      if (v125 >> 1 == 0xFFFFFFFF)
      {
        v126 = *(v41 + 12);
        *(v612 + 11) = *(v41 + 11);
        *(v612 + 12) = v126;
      }

      else
      {
        v127 = *(v41 + 22);
        v128 = *(v41 + 23);
        v129 = *(v41 + 25);
        outlined copy of AccessibilityImageLabel(v127, v128, *(v41 + 24));
        *(v612 + 22) = v127;
        *(v612 + 23) = v128;
        *(v612 + 24) = v125;
        *(v612 + 25) = v129;
        v51 = v612;
      }

      v51[26] = *(v41 + 26);
      v51[27] = *(v41 + 27);
      *(v51 + 224) = v41[224];
      *(v51 + 225) = v41[225];
      v130 = *(v41 + 57);
      *(v51 + 232) = v41[232];
      *(v51 + 57) = v130;
      v131 = *(v41 + 30);
      v51[30] = v131;
      *(v51 + 124) = *(v41 + 124);
      *(v51 + 250) = v41[250];
      swift_unknownObjectRetain();

      v132 = v131;
      if (*(v41 + 33))
      {
        goto LABEL_19;
      }
    }

    v133 = *(v41 + 16);
    v134 = *(v41 + 18);
    *(v51 + 17) = *(v41 + 17);
    *(v51 + 18) = v134;
    *(v51 + 16) = v133;
    goto LABEL_49;
  }

LABEL_7:
  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  memcpy(v19, v20, *(*(v27 - 8) + 64));
LABEL_318:
  *(v5 + a3[12]) = *(v4 + a3[12]);

  v550 = a3[13];
  v551 = *(v4 + v550);
  v552 = *(v5 + v550);
  *(v5 + v550) = v551;
  v553 = v551;

  return v5;
}

uint64_t initializeWithTake for Toolbar.PlatformVended(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v7;
  *(a1 + 48) = *(a2 + 48);
  v8 = a3[11];
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for ToolbarStorage.Item(0);
  v12 = *(v11 - 1);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v57 = v12;
    v14 = v10[1];
    *v9 = *v10;
    v9[1] = v14;
    v15 = v10[3];
    v9[2] = v10[2];
    v9[3] = v15;
    v16 = v10[5];
    v9[4] = v10[4];
    v9[5] = v16;
    v17 = v10[6];
    v18 = v10[7];
    *(v9 + 137) = *(v10 + 137);
    v19 = v10[8];
    v9[7] = v18;
    v9[8] = v19;
    v9[6] = v17;
    *(v9 + 153) = *(v10 + 153);
    *(v9 + 20) = *(v10 + 20);
    *(v9 + 168) = *(v10 + 168);
    *(v9 + 169) = *(v10 + 169);
    *(v9 + 22) = *(v10 + 22);
    *(v9 + 264) = *(v10 + 264);
    *(v9 + 248) = *(v10 + 248);
    *(v9 + 232) = *(v10 + 232);
    *(v9 + 216) = *(v10 + 216);
    *(v9 + 184) = *(v10 + 184);
    *(v9 + 200) = *(v10 + 200);
    *(v9 + 35) = *(v10 + 35);
    v20 = v11[17];
    v21 = (v9 + v20);
    v22 = (v10 + v20);
    v23 = type metadata accessor for PlatformItemList.Item();
    v24 = *(v23 - 1);
    if ((*(v24 + 48))(v22, 1, v23))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v21, v22, *(*(v25 - 8) + 64));
    }

    else
    {
      v54 = v24;
      v26 = v22[1];
      *v21 = *v22;
      v21[1] = v26;
      *(v21 + 32) = *(v22 + 32);
      *(v21 + 40) = *(v22 + 40);
      *(v21 + 56) = *(v22 + 56);
      v27 = v22[13];
      v21[12] = v22[12];
      v21[13] = v27;
      v21[14] = v22[14];
      *(v21 + 235) = *(v22 + 235);
      v28 = v22[9];
      v21[8] = v22[8];
      v21[9] = v28;
      v29 = v22[11];
      v21[10] = v22[10];
      v21[11] = v29;
      v30 = v22[5];
      v21[4] = v22[4];
      v21[5] = v30;
      v31 = v22[7];
      v21[6] = v22[6];
      v21[7] = v31;
      v32 = v22[17];
      v21[16] = v22[16];
      v21[17] = v32;
      v33 = v22[23];
      v21[22] = v22[22];
      v21[23] = v33;
      v21[24] = v22[24];
      *(v21 + 50) = *(v22 + 50);
      v34 = v22[19];
      v21[18] = v22[18];
      v21[19] = v34;
      v35 = v22[21];
      v21[20] = v22[20];
      v21[21] = v35;
      v36 = *(v22 + 456);
      *(v21 + 440) = *(v22 + 440);
      *(v21 + 456) = v36;
      *(v21 + 472) = *(v22 + 472);
      v37 = *(v22 + 424);
      *(v21 + 408) = *(v22 + 408);
      *(v21 + 424) = v37;
      v21[30] = v22[30];
      *(v21 + 489) = *(v22 + 489);
      v21[32] = v22[32];
      *(v21 + 528) = *(v22 + 528);
      memcpy(v21 + 536, v22 + 536, 0x130uLL);
      v38 = *(v22 + 856);
      *(v21 + 840) = *(v22 + 840);
      *(v21 + 856) = v38;
      *(v21 + 872) = *(v22 + 872);
      *(v21 + 111) = *(v22 + 111);
      *(v21 + 112) = *(v22 + 112);
      *(v21 + 904) = *(v22 + 904);
      *(v21 + 920) = *(v22 + 920);
      *(v21 + 117) = *(v22 + 117);
      *(v21 + 118) = *(v22 + 118);
      *(v21 + 952) = *(v22 + 952);
      *(v21 + 953) = *(v22 + 953);
      v39 = v23[28];
      v56 = v21 + v39;
      v40 = v22 + v39;
      v41 = type metadata accessor for CommandOperation();
      v53 = *(v41 - 8);
      v55 = v40;
      v42 = v40;
      v43 = v41;
      if ((*(v53 + 48))(v42, 1))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(v56, v55, *(*(v44 - 8) + 64));
      }

      else
      {
        *v56 = *v55;
        v45 = *(v43 + 20);
        v51 = &v56[v45];
        v52 = &v55[v45];
        v46 = *&v55[v45 + 16];
        *v51 = *&v55[v45];
        *(v51 + 1) = v46;
        v50 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v47 = type metadata accessor for UUID();
        (*(*(v47 - 8) + 32))(&v51[v50], &v52[v50], v47);
        *&v56[*(v43 + 24)] = *&v55[*(v43 + 24)];
        (*(v53 + 56))();
      }

      *(v21 + v23[29]) = *(v22 + v23[29]);
      *(v21 + v23[30]) = *(v22 + v23[30]);
      *(v21 + v23[31]) = *(v22 + v23[31]);
      *(v21 + v23[32]) = *(v22 + v23[32]);
      *(v21 + v23[33]) = *(v22 + v23[33]);
      *(v21 + v23[34]) = *(v22 + v23[34]);
      (*(v54 + 56))(v21, 0, 1, v23);
    }

    swift_weakTakeInit();
    *(v9 + v11[19]) = *(v10 + v11[19]);
    *(v9 + v11[20]) = *(v10 + v11[20]);
    *(v9 + v11[21]) = *(v10 + v11[21]);
    (*(v57 + 56))(v9, 0, 1, v11);
  }

  v48 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v48) = *(a2 + v48);
  return a1;
}

void **assignWithTake for Toolbar.PlatformVended(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];

  v8 = a1[3];
  a1[3] = a2[3];

  v9 = a1[4];
  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  v10 = a3[11];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = type metadata accessor for ToolbarStorage.Item(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 48);
  v16 = v15(v11, 1, v13);
  v17 = v15(v12, 1, v13);
  if (!v16)
  {
    if (v17)
    {
      _s7SwiftUI16CommandOperationVWOhTm_3(v11, type metadata accessor for ToolbarStorage.Item);
      goto LABEL_7;
    }

    *v11 = *v12;
    *(v11 + 8) = *(v12 + 1);

    *(v11 + 16) = *(v12 + 1);
    v31 = *(v12 + 5);
    *(v11 + 32) = *(v12 + 4);
    *(v11 + 40) = v31;

    v32 = *(v12 + 7);
    *(v11 + 48) = *(v12 + 6);
    *(v11 + 56) = v32;

    if (*(v11 + 88))
    {
      if (*(v12 + 11))
      {
        __swift_destroy_boxed_opaque_existential_1(v11 + 64);
        v33 = *(v12 + 5);
        *(v11 + 64) = *(v12 + 4);
        *(v11 + 80) = v33;
        v34 = *(v12 + 13);
        *(v11 + 96) = *(v12 + 12);
        *(v11 + 104) = v34;
        goto LABEL_15;
      }

      outlined destroy of MatchedTransitionIdentifier(v11 + 64);
    }

    v52 = *(v12 + 5);
    *(v11 + 64) = *(v12 + 4);
    *(v11 + 80) = v52;
    *(v11 + 96) = *(v12 + 6);
LABEL_15:
    v222 = a3;
    if (a1 != a2)
    {
      outlined destroy of ToolbarItemPlacement.Role(v11 + 112);
      v53 = *(v12 + 8);
      *(v11 + 112) = *(v12 + 7);
      *(v11 + 128) = v53;
      *(v11 + 137) = *(v12 + 137);
    }

    *(v11 + 153) = *(v12 + 153);
    *(v11 + 160) = *(v12 + 20);

    *(v11 + 168) = v12[168];
    *(v11 + 169) = v12[169];
    *(v11 + 170) = v12[170];
    *(v11 + 176) = *(v12 + 22);
    __swift_destroy_boxed_opaque_existential_1(v11 + 184);
    *(v11 + 184) = *(v12 + 184);
    *(v11 + 200) = *(v12 + 200);
    v54 = *(v12 + 28);
    *(v11 + 216) = *(v12 + 27);
    *(v11 + 224) = v54;

    *(v11 + 232) = *(v12 + 29);

    *(v11 + 240) = *(v12 + 30);
    *(v11 + 248) = *(v12 + 31);

    *(v11 + 256) = *(v12 + 16);
    v55 = *(v11 + 272);
    *(v11 + 272) = *(v12 + 34);

    v56 = *(v11 + 280);
    *(v11 + 280) = *(v12 + 35);

    v224 = v13;
    v57 = v13[17];
    v58 = v11 + v57;
    v59 = &v12[v57];
    v60 = type metadata accessor for PlatformItemList.Item();
    v217 = *(v60 - 8);
    v61 = v217[6];
    v62 = v61(v58, 1, v60);
    __dsta = v60;
    v63 = v61(v59, 1, v60);
    if (v62)
    {
      a3 = v222;
      if (!v63)
      {
        v64 = *(v59 + 1);
        *v58 = *v59;
        *(v58 + 16) = v64;
        *(v58 + 32) = v59[32];
        *(v58 + 40) = *(v59 + 40);
        *(v58 + 56) = v59[56];
        v65 = *(v59 + 13);
        *(v58 + 192) = *(v59 + 12);
        *(v58 + 208) = v65;
        *(v58 + 224) = *(v59 + 14);
        *(v58 + 235) = *(v59 + 235);
        v66 = *(v59 + 9);
        *(v58 + 128) = *(v59 + 8);
        *(v58 + 144) = v66;
        v67 = *(v59 + 11);
        *(v58 + 160) = *(v59 + 10);
        *(v58 + 176) = v67;
        v68 = *(v59 + 5);
        *(v58 + 64) = *(v59 + 4);
        *(v58 + 80) = v68;
        v69 = *(v59 + 7);
        *(v58 + 96) = *(v59 + 6);
        *(v58 + 112) = v69;
        v70 = *(v59 + 17);
        *(v58 + 256) = *(v59 + 16);
        *(v58 + 272) = v70;
        v71 = *(v59 + 23);
        *(v58 + 352) = *(v59 + 22);
        *(v58 + 368) = v71;
        *(v58 + 384) = *(v59 + 24);
        *(v58 + 400) = *(v59 + 50);
        v72 = *(v59 + 19);
        *(v58 + 288) = *(v59 + 18);
        *(v58 + 304) = v72;
        v73 = *(v59 + 21);
        *(v58 + 320) = *(v59 + 20);
        *(v58 + 336) = v73;
        v74 = *(v59 + 456);
        *(v58 + 440) = *(v59 + 440);
        *(v58 + 456) = v74;
        *(v58 + 472) = v59[472];
        v75 = *(v59 + 424);
        *(v58 + 408) = *(v59 + 408);
        *(v58 + 424) = v75;
        *(v58 + 480) = *(v59 + 30);
        *(v58 + 489) = *(v59 + 489);
        *(v58 + 512) = *(v59 + 32);
        *(v58 + 528) = v59[528];
        memcpy((v58 + 536), v59 + 536, 0x130uLL);
        v76 = *(v59 + 856);
        *(v58 + 840) = *(v59 + 840);
        *(v58 + 856) = v76;
        *(v58 + 872) = *(v59 + 872);
        *(v58 + 888) = *(v59 + 111);
        *(v58 + 896) = *(v59 + 112);
        *(v58 + 904) = *(v59 + 904);
        *(v58 + 920) = *(v59 + 920);
        *(v58 + 936) = *(v59 + 117);
        *(v58 + 944) = *(v59 + 118);
        *(v58 + 952) = v59[952];
        *(v58 + 953) = *(v59 + 953);
        v77 = *(v60 + 112);
        v78 = (v58 + v77);
        v79 = &v59[v77];
        v80 = type metadata accessor for CommandOperation();
        v81 = *(v80 - 8);
        if ((*(v81 + 48))(v79, 1, v80))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(v78, v79, *(*(v82 - 8) + 64));
        }

        else
        {
          *v78 = *v79;
          v96 = *(v80 + 20);
          v213 = &v78[v96];
          __srca = &v79[v96];
          v97 = *&v79[v96 + 16];
          *v213 = *&v79[v96];
          *(v213 + 1) = v97;
          v210 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v98 = type metadata accessor for UUID();
          (*(*(v98 - 8) + 32))(&v213[v210], &__srca[v210], v98);
          *&v78[*(v80 + 24)] = *&v79[*(v80 + 24)];
          (*(v81 + 56))(v78, 0, 1, v80);
        }

        a3 = v222;
        *(v58 + __dsta[29]) = v59[__dsta[29]];
        *(v58 + __dsta[30]) = v59[__dsta[30]];
        *(v58 + __dsta[31]) = v59[__dsta[31]];
        *(v58 + __dsta[32]) = v59[__dsta[32]];
        *(v58 + __dsta[33]) = v59[__dsta[33]];
        *(v58 + __dsta[34]) = *&v59[__dsta[34]];
        (v217[7])(v58, 0, 1);
        goto LABEL_33;
      }

LABEL_23:
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v58, v59, *(*(v83 - 8) + 64));
LABEL_33:
      v13 = v224;
LABEL_34:
      swift_weakTakeAssign();
      *(v11 + v13[19]) = v12[v13[19]];
      *(v11 + v13[20]) = v12[v13[20]];
      *(v11 + v13[21]) = v12[v13[21]];
      goto LABEL_35;
    }

    a3 = v222;
    if (v63)
    {
      _s7SwiftUI16CommandOperationVWOhTm_3(v58, type metadata accessor for PlatformItemList.Item);
      goto LABEL_23;
    }

    v87 = *v58;
    *v58 = *v59;

    v88 = *(v58 + 8);
    *(v58 + 8) = *(v59 + 1);

    v89 = *(v59 + 3);
    *(v58 + 16) = *(v59 + 2);
    *(v58 + 24) = v89;

    *(v58 + 32) = v59[32];
    v90 = *(v59 + 6);
    *(v58 + 40) = *(v59 + 5);
    *(v58 + 48) = v90;

    *(v58 + 56) = v59[56];
    if (*(v58 + 192) >> 1 == 4294967294)
    {
      goto LABEL_30;
    }

    if (*(v59 + 24) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(v58 + 64);
LABEL_30:
      v91 = *(v59 + 13);
      *(v58 + 192) = *(v59 + 12);
      *(v58 + 208) = v91;
      *(v58 + 224) = *(v59 + 14);
      *(v58 + 235) = *(v59 + 235);
      v92 = *(v59 + 9);
      *(v58 + 128) = *(v59 + 8);
      *(v58 + 144) = v92;
      v93 = *(v59 + 11);
      *(v58 + 160) = *(v59 + 10);
      *(v58 + 176) = v93;
      v94 = *(v59 + 5);
      *(v58 + 64) = *(v59 + 4);
      *(v58 + 80) = v94;
      v95 = *(v59 + 7);
      *(v58 + 96) = *(v59 + 6);
      *(v58 + 112) = v95;
      goto LABEL_47;
    }

    v102 = *(v58 + 72);
    if (v102 != 255)
    {
      v103 = v59[72];
      if (v103 != 255)
      {
        v104 = *(v58 + 64);
        *(v58 + 64) = *(v59 + 8);
        *(v58 + 72) = v103;
        outlined consume of GraphicsImage.Contents(v104, v102);
        goto LABEL_41;
      }

      outlined destroy of GraphicsImage.Contents(v58 + 64);
    }

    *(v58 + 64) = *(v59 + 8);
    *(v58 + 72) = v59[72];
LABEL_41:
    *(v58 + 80) = *(v59 + 5);
    *(v58 + 96) = *(v59 + 12);
    *(v58 + 104) = v59[104];
    *(v58 + 108) = *(v59 + 108);
    *(v58 + 121) = *(v59 + 121);
    *(v58 + 136) = *(v59 + 136);
    *(v58 + 152) = *(v59 + 152);
    *(v58 + 168) = v59[168];
    *(v58 + 169) = v59[169];
    v105 = *(v58 + 192);
    *(v58 + 170) = *(v59 + 85);
    if (v105 >> 1 != 0xFFFFFFFF)
    {
      v106 = *(v59 + 24);
      if (v106 >> 1 != 0xFFFFFFFF)
      {
        v108 = *(v59 + 25);
        v109 = *(v58 + 176);
        v110 = *(v58 + 184);
        *(v58 + 176) = *(v59 + 11);
        *(v58 + 192) = v106;
        *(v58 + 200) = v108;
        outlined consume of AccessibilityImageLabel(v109, v110, v105);
        goto LABEL_46;
      }

      outlined destroy of AccessibilityImageLabel(v58 + 176);
    }

    v107 = *(v59 + 12);
    *(v58 + 176) = *(v59 + 11);
    *(v58 + 192) = v107;
LABEL_46:
    *(v58 + 208) = *(v59 + 26);
    swift_unknownObjectRelease();
    *(v58 + 216) = *(v59 + 27);

    *(v58 + 224) = v59[224];
    *(v58 + 225) = v59[225];
    *(v58 + 228) = *(v59 + 57);
    *(v58 + 232) = v59[232];
    v111 = *(v58 + 240);
    *(v58 + 240) = *(v59 + 30);

    *(v58 + 248) = *(v59 + 124);
    *(v58 + 250) = v59[250];
LABEL_47:
    if (*(v58 + 264))
    {
      v112 = *(v59 + 33);
      if (v112)
      {
        *(v58 + 256) = *(v59 + 32);
        *(v58 + 264) = v112;

        v113 = *(v58 + 272);
        v114 = *(v59 + 34);
        if (v113 >= 2)
        {
          if (v114 >= 2)
          {
            *(v58 + 272) = v114;
          }

          else
          {

            *(v58 + 272) = *(v59 + 34);
          }
        }

        else
        {
          *(v58 + 272) = v114;
        }

        *(v58 + 280) = *(v59 + 70);
        *(v58 + 284) = *(v59 + 142);
        *(v58 + 286) = v59[286];
        *(v58 + 288) = *(v59 + 36);

        *(v58 + 296) = *(v59 + 37);

LABEL_57:
        v116 = *(v58 + 336);
        if (v116 >> 2 != 0xFFFFFFFF)
        {
          v117 = *(v59 + 42);
          if (v117 >> 2 != 0xFFFFFFFF)
          {
            v121 = *(v58 + 304);
            v122 = *(v58 + 312);
            v123 = *(v58 + 320);
            v124 = *(v58 + 328);
            v125 = *(v58 + 344);
            v126 = *(v58 + 352);
            v127 = *(v58 + 360);
            v128 = *(v58 + 368);
            v129 = *(v58 + 384);
            v130 = *(v58 + 400);
            v131 = *(v59 + 20);
            *(v58 + 304) = *(v59 + 19);
            *(v58 + 320) = v131;
            *(v58 + 336) = v117;
            *(v58 + 344) = *(v59 + 344);
            *(v58 + 360) = *(v59 + 360);
            *(v58 + 376) = *(v59 + 376);
            *(v58 + 392) = *(v59 + 392);
            outlined consume of PlatformItemList.Item.SystemItem(v121, v122, v123, v124, v116, v125, v126, v127, v128, *(&v128 + 1), v129, SBYTE8(v129), v130);
LABEL_62:
            v132 = v59 + 408;
            v133 = *(v58 + 416);
            if (v133 == 1)
            {
LABEL_65:
              v135 = *(v59 + 456);
              *(v58 + 440) = *(v59 + 440);
              *(v58 + 456) = v135;
              *(v58 + 472) = v59[472];
              v136 = *(v59 + 424);
              *(v58 + 408) = *v132;
              *(v58 + 424) = v136;
              goto LABEL_88;
            }

            v134 = *(v59 + 52);
            if (v134 == 1)
            {
              outlined destroy of PlatformItemList.Item.SelectionBehavior(v58 + 408);
              goto LABEL_65;
            }

            *(v58 + 408) = *v132;
            *(v58 + 409) = v59[409];
            *(v58 + 410) = v59[410];
            *(v58 + 411) = v59[411];
            *(v58 + 412) = v59[412];
            if (v133)
            {
              if (v134)
              {
                v137 = *(v59 + 53);
                *(v58 + 416) = v134;
                *(v58 + 424) = v137;

                goto LABEL_73;
              }
            }

            else if (v134)
            {
              v138 = *(v59 + 53);
              *(v58 + 416) = v134;
              *(v58 + 424) = v138;
              goto LABEL_73;
            }

            *(v58 + 416) = *(v59 + 26);
LABEL_73:
            v139 = *(v59 + 54);
            if (*(v58 + 432))
            {
              if (v139)
              {
                v140 = *(v59 + 55);
                *(v58 + 432) = v139;
                *(v58 + 440) = v140;

                goto LABEL_80;
              }
            }

            else if (v139)
            {
              v141 = *(v59 + 55);
              *(v58 + 432) = v139;
              *(v58 + 440) = v141;
              goto LABEL_80;
            }

            *(v58 + 432) = *(v59 + 27);
LABEL_80:
            v142 = *(v59 + 56);
            if (*(v58 + 448))
            {
              if (v142)
              {
                v143 = *(v59 + 57);
                *(v58 + 448) = v142;
                *(v58 + 456) = v143;

LABEL_87:
                *(v58 + 464) = *(v59 + 58);
                *(v58 + 472) = v59[472];
LABEL_88:
                v145 = *(v59 + 61);
                *(v58 + 480) = *(v59 + 60);
                *(v58 + 488) = v145;

                *(v58 + 496) = *(v59 + 62);
                *(v58 + 504) = v59[504];
                v146 = *(v59 + 64);
                if (*(v58 + 512))
                {
                  if (v146)
                  {
                    v147 = *(v59 + 65);
                    *(v58 + 512) = v146;
                    *(v58 + 520) = v147;

                    goto LABEL_95;
                  }
                }

                else if (v146)
                {
                  v148 = *(v59 + 65);
                  *(v58 + 512) = v146;
                  *(v58 + 520) = v148;
                  goto LABEL_95;
                }

                *(v58 + 512) = *(v59 + 32);
LABEL_95:
                *(v58 + 528) = v59[528];
                if (*(v58 + 816))
                {
                  if (*(v59 + 102))
                  {
                    *(v58 + 536) = *(v59 + 67);
                    *(v58 + 544) = *(v59 + 68);

                    *(v58 + 552) = v59[552];
                    *(v58 + 560) = *(v59 + 70);

                    *(v58 + 568) = v59[568];
                    *(v58 + 576) = *(v59 + 36);
                    *(v58 + 592) = v59[592];
                    v149 = (v58 + 600);
                    v150 = v59 + 600;
                    v151 = *(v58 + 624);
                    if (v151 != 1)
                    {
                      v152 = *(v59 + 78);
                      if (v152 != 1)
                      {
                        if (v151)
                        {
                          v154 = v58 + 600;
                          if (v152)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v154);
                          }

                          else
                          {
                            outlined destroy of AnyAccessibilityValue(v154);
                          }
                        }

                        v155 = *(v59 + 616);
                        *v149 = *v150;
                        *(v58 + 616) = v155;
                        *(v58 + 632) = *(v59 + 79);
                        *(v58 + 640) = *(v59 + 80);

LABEL_108:
                        *(v58 + 648) = *(v59 + 81);
                        *(v58 + 656) = v59[656];
                        v156 = (v58 + 664);
                        v157 = v59 + 664;
                        if (*(v58 + 776) != 1)
                        {
                          v158 = *(v59 + 97);
                          if (v158 != 1)
                          {
                            *v156 = *v157;
                            *(v58 + 672) = v59[672];
                            *(v58 + 680) = *(v59 + 85);
                            *(v58 + 688) = v59[688];
                            *(v58 + 689) = *(v59 + 689);
                            *(v58 + 691) = v59[691];
                            *(v58 + 692) = v59[692];
                            *(v58 + 696) = *(v59 + 87);
                            v163 = *(v59 + 45);
                            *(v58 + 704) = *(v59 + 44);
                            *(v58 + 720) = v163;
                            *(v58 + 736) = *(v59 + 92);
                            *(v58 + 744) = v59[744];
                            *(v58 + 745) = v59[745];
                            *(v58 + 752) = *(v59 + 47);
                            *(v58 + 768) = v59[768];
                            *(v58 + 776) = v158;

                            *(v58 + 784) = *(v59 + 49);
                            *(v58 + 800) = *(v59 + 100);
                            *(v58 + 808) = v59[808];
                            goto LABEL_113;
                          }

                          outlined destroy of AccessibilityTextLayoutProperties(v58 + 664);
                        }

                        v159 = *(v59 + 776);
                        *(v58 + 760) = *(v59 + 760);
                        *(v58 + 776) = v159;
                        *(v58 + 792) = *(v59 + 792);
                        *(v58 + 808) = v59[808];
                        v160 = *(v59 + 712);
                        *(v58 + 696) = *(v59 + 696);
                        *(v58 + 712) = v160;
                        v161 = *(v59 + 744);
                        *(v58 + 728) = *(v59 + 728);
                        *(v58 + 744) = v161;
                        v162 = *(v59 + 680);
                        *v156 = *v157;
                        *(v58 + 680) = v162;
LABEL_113:
                        *(v58 + 816) = *(v59 + 102);

                        *(v58 + 824) = *(v59 + 103);

                        *(v58 + 832) = *(v59 + 104);

LABEL_114:
                        v164 = (v58 + 840);
                        v165 = v59 + 840;
                        v166 = *(v58 + 864);
                        if (v166 == 1)
                        {
LABEL_117:
                          v168 = *(v59 + 856);
                          *v164 = *v165;
                          *(v58 + 856) = v168;
                          *(v58 + 872) = *(v59 + 872);
                          *(v58 + 888) = *(v59 + 111);
                          goto LABEL_118;
                        }

                        v167 = *(v59 + 108);
                        if (v167 == 1)
                        {
                          outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v58 + 840);
                          goto LABEL_117;
                        }

                        if (v166)
                        {
                          v179 = v58 + 840;
                          if (v167)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v179);
                          }

                          else
                          {
                            outlined destroy of AnyNavigationLinkPresentedValue(v179);
                          }
                        }

                        v202 = *(v59 + 856);
                        *v164 = *v165;
                        *(v58 + 856) = v202;
                        *(v58 + 872) = *(v59 + 109);
                        v203 = *(v59 + 110);
                        if (*(v58 + 880))
                        {
                          if (v203)
                          {
                            v204 = *(v59 + 111);
                            *(v58 + 880) = v203;
                            *(v58 + 888) = v204;

                            goto LABEL_118;
                          }
                        }

                        else if (v203)
                        {
                          v205 = *(v59 + 111);
                          *(v58 + 880) = v203;
                          *(v58 + 888) = v205;
                          goto LABEL_118;
                        }

                        *(v58 + 880) = *(v59 + 55);
LABEL_118:
                        v169 = *(v58 + 896);
                        *(v58 + 896) = *(v59 + 112);

                        *(v58 + 904) = *(v59 + 113);
                        *(v58 + 912) = *(v59 + 114);

                        *(v58 + 920) = *(v59 + 115);
                        *(v58 + 928) = *(v59 + 116);

                        *(v58 + 936) = *(v59 + 117);

                        *(v58 + 944) = *(v59 + 118);

                        *(v58 + 952) = v59[952];
                        *(v58 + 953) = *(v59 + 953);
                        v170 = __dsta[28];
                        v171 = (v58 + v170);
                        v218 = &v59[v170];
                        v172 = type metadata accessor for CommandOperation();
                        v211 = *(v172 - 8);
                        v173 = *(v211 + 48);
                        __src = v171;
                        LODWORD(v171) = v173(v171, 1, v172);
                        v174 = v173(v218, 1, v172);
                        if (v171)
                        {
                          if (!v174)
                          {
                            *__src = *v218;
                            v180 = *(v172 + 20);
                            v181 = &__src[v180];
                            v182 = &v218[v180];
                            v183 = *&v218[v180 + 16];
                            *v181 = *&v218[v180];
                            *(v181 + 1) = v183;
                            v184 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v185 = type metadata accessor for UUID();
                            v186 = &v181[v184];
                            v187 = &v182[v184];
                            v13 = v224;
                            (*(*(v185 - 8) + 32))(v186, v187, v185);
                            *&__src[*(v172 + 24)] = *&v218[*(v172 + 24)];
                            (*(v211 + 56))();
                            goto LABEL_128;
                          }

                          _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v176 = *(*(v175 - 8) + 64);
                          v177 = __src;
                        }

                        else
                        {
                          if (!v174)
                          {
                            *__src = *v218;
                            v188 = *(v172 + 20);
                            v189 = &__src[v188];
                            v190 = &v218[v188];
                            LOBYTE(v188) = v218[v188 + 16];
                            v191 = *v189;
                            v192 = *(v189 + 1);
                            v193 = v189[16];
                            *v189 = *v190;
                            v189[16] = v188;
                            outlined consume of Text.Storage(v191, v192, v193);
                            *(v189 + 3) = *(v190 + 3);

                            v194 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v195 = type metadata accessor for UUID();
                            (*(*(v195 - 8) + 40))(&v189[v194], &v190[v194], v195);
                            v196 = *(v172 + 24);
                            v197 = &__src[v196];
                            v198 = &v218[v196];
                            v199 = *&__src[v196];
                            v200 = *&v218[v196];
                            if (v199)
                            {
                              a3 = v222;
                              v13 = v224;
                              if (v200)
                              {
                                v201 = *(v198 + 1);
                                *v197 = v200;
                                *(v197 + 1) = v201;

                                goto LABEL_129;
                              }
                            }

                            else
                            {
                              a3 = v222;
                              v13 = v224;
                              if (v200)
                              {
                                v206 = *(v198 + 1);
                                *v197 = v200;
                                *(v197 + 1) = v206;
                                goto LABEL_129;
                              }
                            }

                            *v197 = *v198;
                            goto LABEL_129;
                          }

                          _s7SwiftUI16CommandOperationVWOhTm_3(__src, type metadata accessor for CommandOperation);
                          _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v176 = *(*(v178 - 8) + 64);
                          v177 = __src;
                        }

                        memcpy(v177, v218, v176);
LABEL_128:
                        a3 = v222;
LABEL_129:
                        *(v58 + __dsta[29]) = v59[__dsta[29]];
                        *(v58 + __dsta[30]) = v59[__dsta[30]];
                        *(v58 + __dsta[31]) = v59[__dsta[31]];
                        *(v58 + __dsta[32]) = v59[__dsta[32]];
                        *(v58 + __dsta[33]) = v59[__dsta[33]];
                        *(v58 + __dsta[34]) = *&v59[__dsta[34]];

                        goto LABEL_34;
                      }

                      outlined destroy of AccessibilityValueStorage(v58 + 600);
                    }

                    v153 = *(v59 + 616);
                    *v149 = *v150;
                    *(v58 + 616) = v153;
                    *(v58 + 632) = *(v59 + 632);
                    goto LABEL_108;
                  }

                  outlined destroy of PlatformItemList.Item.Accessibility(v58 + 536);
                }

                memcpy((v58 + 536), v59 + 536, 0x130uLL);
                goto LABEL_114;
              }
            }

            else if (v142)
            {
              v144 = *(v59 + 57);
              *(v58 + 448) = v142;
              *(v58 + 456) = v144;
              goto LABEL_87;
            }

            *(v58 + 448) = *(v59 + 28);
            goto LABEL_87;
          }

          outlined destroy of PlatformItemList.Item.SystemItem(v58 + 304);
        }

        v118 = *(v59 + 24);
        *(v58 + 368) = *(v59 + 23);
        *(v58 + 384) = v118;
        *(v58 + 400) = *(v59 + 50);
        v119 = *(v59 + 20);
        *(v58 + 304) = *(v59 + 19);
        *(v58 + 320) = v119;
        v120 = *(v59 + 22);
        *(v58 + 336) = *(v59 + 21);
        *(v58 + 352) = v120;
        goto LABEL_62;
      }

      outlined destroy of Image.NamedResolved(v58 + 256);
    }

    v115 = *(v59 + 17);
    *(v58 + 256) = *(v59 + 16);
    *(v58 + 272) = v115;
    *(v58 + 288) = *(v59 + 18);
    goto LABEL_57;
  }

  if (v17)
  {
LABEL_7:
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    memcpy(v11, v12, *(*(v30 - 8) + 64));
    goto LABEL_35;
  }

  v18 = *(v12 + 1);
  *v11 = *v12;
  *(v11 + 16) = v18;
  v19 = *(v12 + 3);
  *(v11 + 32) = *(v12 + 2);
  *(v11 + 48) = v19;
  v20 = *(v12 + 5);
  *(v11 + 64) = *(v12 + 4);
  *(v11 + 80) = v20;
  v21 = *(v12 + 6);
  v22 = *(v12 + 7);
  *(v11 + 137) = *(v12 + 137);
  v23 = *(v12 + 8);
  *(v11 + 112) = v22;
  *(v11 + 128) = v23;
  *(v11 + 96) = v21;
  *(v11 + 153) = *(v12 + 153);
  *(v11 + 160) = *(v12 + 20);
  *(v11 + 168) = v12[168];
  *(v11 + 169) = *(v12 + 169);
  *(v11 + 176) = *(v12 + 22);
  *(v11 + 264) = *(v12 + 264);
  *(v11 + 248) = *(v12 + 248);
  *(v11 + 232) = *(v12 + 232);
  *(v11 + 216) = *(v12 + 216);
  *(v11 + 184) = *(v12 + 184);
  *(v11 + 200) = *(v12 + 200);
  *(v11 + 280) = *(v12 + 35);
  v223 = v13;
  v24 = v13[17];
  v25 = (v11 + v24);
  v26 = &v12[v24];
  v27 = type metadata accessor for PlatformItemList.Item();
  v28 = *(v27 - 1);
  if ((v28)[6](v26, 1, v27))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v25, v26, *(*(v29 - 8) + 64));
  }

  else
  {
    v216 = v28;
    v221 = a3;
    v35 = *(v26 + 1);
    *v25 = *v26;
    v25[1] = v35;
    *(v25 + 32) = v26[32];
    *(v25 + 40) = *(v26 + 40);
    *(v25 + 56) = v26[56];
    v36 = *(v26 + 13);
    v25[12] = *(v26 + 12);
    v25[13] = v36;
    v25[14] = *(v26 + 14);
    *(v25 + 235) = *(v26 + 235);
    v37 = *(v26 + 9);
    v25[8] = *(v26 + 8);
    v25[9] = v37;
    v38 = *(v26 + 11);
    v25[10] = *(v26 + 10);
    v25[11] = v38;
    v39 = *(v26 + 5);
    v25[4] = *(v26 + 4);
    v25[5] = v39;
    v40 = *(v26 + 7);
    v25[6] = *(v26 + 6);
    v25[7] = v40;
    v41 = *(v26 + 17);
    v25[16] = *(v26 + 16);
    v25[17] = v41;
    v42 = *(v26 + 23);
    v25[22] = *(v26 + 22);
    v25[23] = v42;
    v25[24] = *(v26 + 24);
    *(v25 + 50) = *(v26 + 50);
    v43 = *(v26 + 19);
    v25[18] = *(v26 + 18);
    v25[19] = v43;
    v44 = *(v26 + 21);
    v25[20] = *(v26 + 20);
    v25[21] = v44;
    v45 = *(v26 + 456);
    *(v25 + 440) = *(v26 + 440);
    *(v25 + 456) = v45;
    *(v25 + 472) = v26[472];
    v46 = *(v26 + 424);
    *(v25 + 408) = *(v26 + 408);
    *(v25 + 424) = v46;
    v25[30] = *(v26 + 30);
    *(v25 + 489) = *(v26 + 489);
    v25[32] = *(v26 + 32);
    *(v25 + 528) = v26[528];
    memcpy(v25 + 536, v26 + 536, 0x130uLL);
    v47 = *(v26 + 856);
    *(v25 + 840) = *(v26 + 840);
    *(v25 + 856) = v47;
    *(v25 + 872) = *(v26 + 872);
    *(v25 + 111) = *(v26 + 111);
    *(v25 + 112) = *(v26 + 112);
    *(v25 + 904) = *(v26 + 904);
    *(v25 + 920) = *(v26 + 920);
    *(v25 + 117) = *(v26 + 117);
    *(v25 + 118) = *(v26 + 118);
    *(v25 + 952) = v26[952];
    *(v25 + 953) = *(v26 + 953);
    v48 = v27[28];
    __dst = v25 + v48;
    v49 = &v26[v48];
    v50 = type metadata accessor for CommandOperation();
    v212 = *(v50 - 8);
    if ((*(v212 + 48))(v49, 1, v50))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(__dst, v49, *(*(v51 - 8) + 64));
    }

    else
    {
      *__dst = *v49;
      v84 = *(v50 + 20);
      v208 = &__dst[v84];
      v209 = &v49[v84];
      v85 = *&v49[v84 + 16];
      *v208 = *&v49[v84];
      *(v208 + 1) = v85;
      v207 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v86 = type metadata accessor for UUID();
      (*(*(v86 - 8) + 32))(&v208[v207], &v209[v207], v86);
      *&__dst[*(v50 + 24)] = *&v49[*(v50 + 24)];
      (*(v212 + 56))();
    }

    a3 = v221;
    *(v25 + v27[29]) = v26[v27[29]];
    *(v25 + v27[30]) = v26[v27[30]];
    *(v25 + v27[31]) = v26[v27[31]];
    *(v25 + v27[32]) = v26[v27[32]];
    *(v25 + v27[33]) = v26[v27[33]];
    *(v25 + v27[34]) = *&v26[v27[34]];
    (*(v216 + 7))(v25, 0, 1, v27);
  }

  swift_weakTakeInit();
  *(v11 + v223[19]) = v12[v223[19]];
  *(v11 + v223[20]) = v12[v223[20]];
  *(v11 + v223[21]) = v12[v223[21]];
  (*(v14 + 56))(v11, 0, 1, v223);
LABEL_35:
  *(a1 + a3[12]) = *(a2 + a3[12]);

  v99 = a3[13];
  v100 = *(a1 + v99);
  *(a1 + v99) = *(a2 + v99);

  return a1;
}

uint64_t storeEnumTagSinglePayload for Toolbar.BarLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483627;
    if (a3 >= 0x7FFFFFEB)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEB)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 20;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AllowsToolbarItemBridgingModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AllowsToolbarItemBridgingModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t outlined destroy of _ViewList_View?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t assignWithTake for DefaultToolbarBarPocketModifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of _ViewList_View?(a1, &lazy cache variable for type metadata for Environment<ToolbarItemPlacement.Role>.Content, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E697DCB8], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 26) = *(a2 + 26);
  }

  v5 = *(a2 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for DefaultToolbarBarPocketModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
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

uint64_t storeEnumTagSinglePayload for DefaultToolbarBarPocketModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.toolbarItemPlatterVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>, &type metadata for EnvironmentValues.__Key_toolbarItemPlatterVisibility, &protocol witness table for EnvironmentValues.__Key_toolbarItemPlatterVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>, &type metadata for EnvironmentValues.__Key_toolbarItemPlatterVisibility, &protocol witness table for EnvironmentValues.__Key_toolbarItemPlatterVisibility, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.toolbarItemPlatterVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>, &type metadata for EnvironmentValues.__Key_toolbarItemPlatterVisibility, &protocol witness table for EnvironmentValues.__Key_toolbarItemPlatterVisibility, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.allowsToolbarItemBridging(options:role:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = a2;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>();
  return MEMORY[0x18D00A570](&v8, a3, v6, a4);
}

uint64_t EnvironmentValues.toolbarUpdateContext.setter(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(a1, v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
  _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(v7, &v6, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, v3, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  v4 = MEMORY[0x1E69E6720];
  outlined destroy of _ViewList_View?(a1, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
  return outlined destroy of _ViewList_View?(v7, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, v4, _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
}

unint64_t Toolbar.BarLocation.description.getter()
{
  outlined init with copy of Toolbar.BarLocation(v0, v2);
  result = 0x654C726142626154;
  switch(v3)
  {
    case 0:
      result = 0xD000000000000012;
      break;
    case 1:
    case 14:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      return result;
    case 12:
      result = 0x7254726142626154;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x686372616553;
      break;
    case 16:
      result = 0x61426D6F74746F42;
      break;
    case 17:
      result = 0x6472616F6279654BLL;
      break;
    case 18:
      result = 0x7261626C6F6F54;
      break;
    case 19:
      result = 0x7261426863756F54;
      break;
    case 20:
      result = 0x724F6D6F74746F42;
      break;
    default:
      outlined destroy of Toolbar.BarLocation(v2);
      result = 0x726F737365636341;
      break;
  }

  return result;
}

uint64_t Toolbar.BarLocation.shouldLimit(_:in:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  outlined init with copy of Toolbar.BarLocation(v2, v8);
  if (v9 <= 5)
  {
    if (v9 > 2)
    {
      if ((v9 - 4) < 2)
      {
        return 1;
      }

      if (v9 == 3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return 1;
      }

      if (v9 == 2)
      {
        return 0;
      }
    }

LABEL_25:
    outlined destroy of Toolbar.BarLocation(v8);
    return 0;
  }

  if (v9 <= 0x14)
  {
    if (((1 << v9) & 0xFE600) != 0)
    {
      return 0;
    }

    if (((1 << v9) & 0x1800) != 0)
    {
      return 1;
    }

    if (v9 == 20)
    {
      return 0;
    }
  }

  if ((v9 - 7) < 2)
  {
    return 1;
  }

  if (v9 != 6)
  {
    goto LABEL_25;
  }

LABEL_11:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  v5 = static SemanticFeature.isEnabled.getter();
  v7 = (v3 & 1) == 0 && v3 != 2;
  return (v5 & 1) == 0 && v7;
}

uint64_t EnvironmentValues.toolbarUpdateContext.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

double ToolbarItemMetrics.padding(contentType:barHeight:)()
{
  EdgeInsets.init(_all:)();
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v0 = 7.0;
  }

  else
  {
    v0 = 4.0;
  }

  static _GraphInputs.defaultInterfaceIdiom.getter();
  static Solarium.isEnabled(for:)();
  return v0;
}

char *protocol witness for static CaseIterable.allCases.getter in conformance Toolbar.BarLocation@<X0>(char **a1@<X8>)
{
  result = specialized static Toolbar.BarLocation.allCases.getter();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Toolbar.BarLocation()
{
  Hasher.init(_seed:)();
  Toolbar.BarLocation.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type [Toolbar.BarLocation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Toolbar.BarLocation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Toolbar.BarLocation] and conformance [A])
  {
    _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0(255, &lazy cache variable for type metadata for [Toolbar.BarLocation], &type metadata for Toolbar.BarLocation, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Toolbar.BarLocation] and conformance [A]);
  }

  return result;
}

uint64_t DefaultToolbarBarPocketModifier.needsPocket.getter()
{
  v1 = specialized Environment.wrappedValue.getter(*(v0 + 48), *(v0 + 56)) == 2;
  specialized Environment.wrappedValue.getter(&v7);
  if (v10 == 2)
  {
    v2 = (v7 & 0xFFFFFFFFFFFFFFFBLL) == 0xB || v7 == 1;
    v3 = vorrq_s8(v8, v9);
    v4 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
    if (v2 && *&v4 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ToolbarItemPlacement.Role(&v7);
  return v1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ToolbarUpdateContextKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return _s7SwiftUI7ToolbarO13UpdateContextVSgWOcTm_0(&static EnvironmentValues.ToolbarUpdateContextKey.defaultValue, v1, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext, MEMORY[0x1E69E6720], _s7SwiftUI11EnvironmentV7ContentOyAA20ToolbarItemPlacementV4RoleO_GMaTm_0);
}

uint64_t specialized implicit closure #1 in _GraphInputs.toolbarUpdateContext.getter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

double EnvironmentValues.toolbarItemMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemMetricsKey>, &type metadata for ToolbarItemMetricsKey, &protocol witness table for ToolbarItemMetricsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemMetricsKey>, &type metadata for ToolbarItemMetricsKey, &protocol witness table for ToolbarItemMetricsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance ToolbarItemMetricsKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018ToolbarItemMetricsD0V_Tt1g5(v5, v7) & 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance DoneButtonIsCheckmarkPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static DoneButtonIsCheckmarkPredicate.evaluate(inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

Swift::Void __swiftcall ToolbarItemBridgingConfiguration.merge(_:)(SwiftUI::ToolbarItemBridgingConfiguration a1)
{
  if (__OFADD__(*v1, a1.count))
  {
    __break(1u);
  }

  else
  {
    *v1 += a1.count;
    *(v1 + 8) = (*(v1 + 8) | a1.containsLabel) & 1;
    v2 = *(v1 + 9);
    v3 = v2 | (*&a1.containsLabel >> 8);
    if (a1.role.value.kind != v2 >> 8)
    {
      LOBYTE(v3) = *(v1 + 9);
    }

    if (a1.role.value.providesDefaultLabel != 2)
    {
      LOWORD(v2) = v2 & 0xFF00 | v3 & 1;
    }

    if (*(v1 + 9) == 2)
    {
      LOWORD(v2) = *&a1.containsLabel >> 8;
    }

    *(v1 + 9) = v2;
    *(v1 + 11) = (*(v1 + 11) | a1.requiresCustomView) & 1;
  }
}

void protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ToolbarItemBridgingPreferenceKey(uint64_t a1, void (*a2)(SwiftUI::ToolbarItemBridgingConfiguration *__return_ptr))
{
  a2(&v4);
  v2.count = v4.count;
  if (v4.requiresCustomView)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  *&v2.containsLabel = v4.containsLabel | (*&v4.role << 8) | v3;
  ToolbarItemBridgingConfiguration.merge(_:)(v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ToolbarItemBridgingConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 11))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 11))
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  return specialized static ToolbarItemBridgingConfiguration.== infix(_:_:)(*a1, *(a1 + 8) | (*(a1 + 9) << 8) | v2, *a2, *(a2 + 8) | (*(a2 + 9) << 8) | v3);
}

uint64_t Toolbar.UpdateContext.description.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    _print_unlocked<A, B>(_:_:)();
  }

  _StringGuts.grow(_:)(39);
  MEMORY[0x18D00C9B0](0xD000000000000021, 0x800000018CD59220);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](8236, 0xE200000000000000);
  MEMORY[0x18D00C9B0](0, 0xE000000000000000);

  return 0;
}

uint64_t key path getter for BarEnvironmentViewModel.colorScheme : BarEnvironmentViewModel@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for BarEnvironmentViewModel.colorScheme : BarEnvironmentViewModel()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized static ToolbarItemBridgingConfiguration.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  result = 0;
  if (a1 == a3 && ((a2 ^ a4) & 1) == 0)
  {
    v6 = a4 & 0xFF00;
    if ((a2 & 0xFF00) == 0x200)
    {
      if (v6 != 512)
      {
        return 0;
      }

      return ((a4 & 0x1000000) == 0) ^ ((a2 & 0x1000000u) >> 24);
    }

    result = 0;
    if (v6 != 512 && ((a2 ^ a4) & 0xFF0100) == 0)
    {
      return ((a4 & 0x1000000) == 0) ^ ((a2 & 0x1000000u) >> 24);
    }
  }

  return result;
}

uint64_t specialized static DoneButtonIsCheckmarkPredicate.evaluate(inputs:)()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)() & 1) != 0 && (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v0 = static InterfaceIdiomPredicate.evaluate(inputs:)() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t assignWithCopy for ToolbarPlacementEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ToolbarPlacementEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for Toolbar.VendedItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Toolbar.VendedItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void *initializeBufferWithCopyOfBuffer for ToolbarViewListVisitor(void *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));

    return v4;
  }

  *a1 = *a2;
  v7 = a1 + 1;
  if (*(a2 + 48) == 1)
  {
    v8 = *(a2 + 2);
    *(v4 + 2) = v8;
    (**(v8 - 8))(v7, (a2 + 1));
    *(v4 + 48) = 1;
  }

  else
  {
    v10 = *(a2 + 3);
    *v7 = *(a2 + 1);
    *(v4 + 3) = v10;
    *(v4 + 33) = *(a2 + 33);
  }

  *(v4 + 49) = *(a2 + 49);
  v4[7] = a2[7];
  *(v4 + 64) = *(a2 + 64);
  *(v4 + 65) = *(a2 + 65);
  v4[9] = a2[9];

  swift_weakCopyInit();
  v11 = a2[11];
  v4[11] = v11;
  *(v4 + 96) = *(a2 + 96);
  v12 = a2[14];
  v4[13] = a2[13];
  v4[14] = v12;
  v146 = a3;
  v13 = a3[18];
  v14 = (v4 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v11;

  if (!v18(v15, 1, v16))
  {
    v145 = v17;
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = *(v15 + 3);
      *(v14 + 3) = v37;
      (**(v37 - 8))(v14, v15);
      v38 = v15[6];
      v14[5] = v15[5];
      v14[6] = v38;
      v14[7] = v15[7];
      v14[8] = v15[8];
      *(v14 + 9) = *(v15 + 9);
      v39 = v15[11];
      v14[11] = v39;

      v40 = v39;
LABEL_65:
      swift_storeEnumTagMultiPayload();
      v110 = *(v16 + 20);
      v111 = *(v15 + v110);
      *(v14 + v110) = v111;
      v112 = *(v17 + 56);
      v113 = v111;
      v112(v14, 0, 1, v16);
      goto LABEL_66;
    }

    v21 = *v15;
    v22 = v15[1];
    *v14 = *v15;
    v14[1] = v22;
    v23 = v15[3];
    v14[2] = v15[2];
    v14[3] = v23;
    *(v14 + 32) = *(v15 + 32);
    v24 = v15[6];
    v14[5] = v15[5];
    v14[6] = v24;
    *(v14 + 56) = *(v15 + 56);
    v25 = v15[24];
    v26 = v21;
    v27 = v22;

    v144 = v16;
    if (v25 >> 1 == 4294967294)
    {
      v28 = *(v15 + 13);
      *(v14 + 12) = *(v15 + 12);
      *(v14 + 13) = v28;
      *(v14 + 14) = *(v15 + 14);
      *(v14 + 235) = *(v15 + 235);
      v29 = *(v15 + 9);
      *(v14 + 8) = *(v15 + 8);
      *(v14 + 9) = v29;
      v30 = *(v15 + 11);
      *(v14 + 10) = *(v15 + 10);
      *(v14 + 11) = v30;
      v31 = *(v15 + 5);
      *(v14 + 4) = *(v15 + 4);
      *(v14 + 5) = v31;
      v32 = *(v15 + 7);
      *(v14 + 6) = *(v15 + 6);
      *(v14 + 7) = v32;
      v33 = v15[33];
      if (v33)
      {
LABEL_11:
        v14[32] = v15[32];
        v14[33] = v33;
        v34 = v15[34];

        if (v34 >= 2)
        {
          v35 = v34;
        }

        v14[34] = v34;
        *(v14 + 70) = *(v15 + 70);
        *(v14 + 284) = *(v15 + 284);
        *(v14 + 285) = *(v15 + 285);
        v36 = v15[37];
        v14[36] = v15[36];
        v14[37] = v36;

LABEL_23:
        v51 = v15[42];
        if (v51 >> 2 == 0xFFFFFFFF)
        {
          v52 = *(v15 + 24);
          *(v14 + 23) = *(v15 + 23);
          *(v14 + 24) = v52;
          v14[50] = v15[50];
          v53 = *(v15 + 20);
          *(v14 + 19) = *(v15 + 19);
          *(v14 + 20) = v53;
          v54 = *(v15 + 22);
          *(v14 + 21) = *(v15 + 21);
          *(v14 + 22) = v54;
        }

        else
        {
          v55 = v15[38];
          v56 = v15[39];
          v130 = v15[41];
          v131 = v15[40];
          v58 = v15[43];
          v57 = v15[44];
          v59 = v15[45];
          v133 = v15[46];
          v136 = v15[47];
          v138 = v15[48];
          __dsta = v15[49];
          v142 = v15[50];
          outlined copy of PlatformItemList.Item.SystemItem(v55, v56, v131, v130, v51, v58, v57, v59, v133, v136, v138, __dsta, v142);
          v14[38] = v55;
          v14[39] = v56;
          v14[40] = v131;
          v14[41] = v130;
          v14[42] = v51;
          v14[43] = v58;
          v14[44] = v57;
          v14[45] = v59;
          v14[46] = v133;
          v14[47] = v136;
          v14[48] = v138;
          v14[49] = __dsta;
          v14[50] = v142;
        }

        v60 = v15[52];
        if (v60 == 1)
        {
          v61 = *(v15 + 57);
          *(v14 + 55) = *(v15 + 55);
          *(v14 + 57) = v61;
          *(v14 + 472) = *(v15 + 472);
          v62 = *(v15 + 53);
          *(v14 + 51) = *(v15 + 51);
          *(v14 + 53) = v62;
          goto LABEL_36;
        }

        *(v14 + 102) = *(v15 + 102);
        *(v14 + 412) = *(v15 + 412);
        if (v60)
        {
          v63 = v15[53];
          v14[52] = v60;
          v14[53] = v63;

          v64 = v15[54];
          if (v64)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *(v14 + 26) = *(v15 + 26);
          v64 = v15[54];
          if (v64)
          {
LABEL_30:
            v65 = v15[55];
            v14[54] = v64;
            v14[55] = v65;

            v66 = v15[56];
            if (v66)
            {
LABEL_31:
              v67 = v15[57];
              v14[56] = v66;
              v14[57] = v67;

LABEL_35:
              v14[58] = v15[58];
              *(v14 + 472) = *(v15 + 472);
LABEL_36:
              v68 = v15[61];
              v14[60] = v15[60];
              v14[61] = v68;
              v14[62] = v15[62];
              *(v14 + 504) = *(v15 + 504);
              v69 = v15[64];

              if (v69)
              {
                v70 = v15[65];
                v14[64] = v69;
                v14[65] = v70;
              }

              else
              {
                *(v14 + 32) = *(v15 + 32);
              }

              *(v14 + 528) = *(v15 + 528);
              if (!v15[102])
              {
                memcpy(v14 + 67, v15 + 67, 0x130uLL);
                goto LABEL_51;
              }

              v14[67] = v15[67];
              v14[68] = v15[68];
              *(v14 + 552) = *(v15 + 552);
              v14[70] = v15[70];
              *(v14 + 568) = *(v15 + 568);
              *(v14 + 36) = *(v15 + 36);
              *(v14 + 592) = *(v15 + 592);
              v71 = v14 + 75;
              v72 = v15 + 75;
              v73 = v15[78];

              if (v73)
              {
                if (v73 == 1)
                {
                  v74 = *(v15 + 77);
                  *v71 = *v72;
                  *(v14 + 77) = v74;
                  *(v14 + 79) = *(v15 + 79);
LABEL_47:
                  v14[81] = v15[81];
                  *(v14 + 656) = *(v15 + 656);
                  v76 = v14 + 83;
                  v77 = v15 + 83;
                  v78 = v15[97];
                  if (v78 == 1)
                  {
                    v79 = *(v15 + 97);
                    *(v14 + 95) = *(v15 + 95);
                    *(v14 + 97) = v79;
                    *(v14 + 99) = *(v15 + 99);
                    *(v14 + 808) = *(v15 + 808);
                    v80 = *(v15 + 89);
                    *(v14 + 87) = *(v15 + 87);
                    *(v14 + 89) = v80;
                    v81 = *(v15 + 93);
                    *(v14 + 91) = *(v15 + 91);
                    *(v14 + 93) = v81;
                    v82 = *(v15 + 85);
                    *v76 = *v77;
                    *(v14 + 85) = v82;
                  }

                  else
                  {
                    *v76 = *v77;
                    *(v14 + 672) = *(v15 + 672);
                    v14[85] = v15[85];
                    *(v14 + 688) = *(v15 + 688);
                    *(v14 + 689) = *(v15 + 689);
                    *(v14 + 691) = *(v15 + 691);
                    *(v14 + 692) = *(v15 + 692);
                    v14[87] = v15[87];
                    v83 = *(v15 + 45);
                    *(v14 + 44) = *(v15 + 44);
                    *(v14 + 45) = v83;
                    v14[92] = v15[92];
                    *(v14 + 372) = *(v15 + 372);
                    *(v14 + 47) = *(v15 + 47);
                    *(v14 + 768) = *(v15 + 768);
                    v14[97] = v78;
                    *(v14 + 49) = *(v15 + 49);
                    v14[100] = v15[100];
                    *(v14 + 808) = *(v15 + 808);
                  }

                  v14[102] = v15[102];
                  v14[103] = v15[103];
                  v14[104] = v15[104];

LABEL_51:
                  v84 = v14 + 105;
                  v85 = v15 + 105;
                  v86 = v15[108];
                  if (v86)
                  {
                    if (v86 == 1)
                    {
                      v87 = *(v15 + 107);
                      *v84 = *v85;
                      *(v14 + 107) = v87;
                      *(v14 + 109) = *(v15 + 109);
                      v14[111] = v15[111];
LABEL_58:
                      v91 = v15[112];
                      v14[112] = v91;
                      v14[113] = v15[113];
                      v14[114] = v15[114];
                      v14[115] = v15[115];
                      v14[116] = v15[116];
                      v14[117] = v15[117];
                      v14[118] = v15[118];
                      *(v14 + 476) = *(v15 + 476);
                      *(v14 + 954) = *(v15 + 954);
                      v92 = type metadata accessor for PlatformItemList.Item();
                      v93 = *(v92 + 112);
                      __dst = v14 + v93;
                      v143 = v92;
                      v94 = v15 + v93;
                      v95 = type metadata accessor for CommandOperation();
                      v132 = *(v95 - 8);
                      v134 = *(v132 + 48);
                      v96 = v91;

                      if (v134(v94, 1, v95))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v94, *(*(v97 - 8) + 64));
                        v16 = v144;
                        v17 = v145;
                      }

                      else
                      {
                        *__dst = *v94;
                        v98 = *(v95 + 20);
                        v137 = v94;
                        v139 = v95;
                        v99 = &__dst[v98];
                        v100 = &v94[v98];
                        v101 = *&v94[v98];
                        v102 = *(v100 + 1);
                        v103 = v100[16];
                        outlined copy of Text.Storage(v101, v102, v103);
                        *v99 = v101;
                        *(v99 + 1) = v102;
                        v99[16] = v103;
                        *(v99 + 3) = *(v100 + 3);
                        v104 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v105 = type metadata accessor for UUID();
                        v135 = *(*(v105 - 8) + 16);

                        v135(&v99[v104], &v100[v104], v105);
                        v106 = *(v139 + 24);
                        v107 = &__dst[v106];
                        v108 = &v137[v106];
                        if (*v108)
                        {
                          v109 = v108[1];
                          *v107 = *v108;
                          v107[1] = v109;
                        }

                        else
                        {
                          *v107 = *v108;
                        }

                        v16 = v144;
                        v17 = v145;
                        (*(v132 + 56))(__dst, 0, 1, v139);
                      }

                      *(v14 + v143[29]) = *(v15 + v143[29]);
                      *(v14 + v143[30]) = *(v15 + v143[30]);
                      *(v14 + v143[31]) = *(v15 + v143[31]);
                      *(v14 + v143[32]) = *(v15 + v143[32]);
                      *(v14 + v143[33]) = *(v15 + v143[33]);
                      *(v14 + v143[34]) = *(v15 + v143[34]);

                      goto LABEL_65;
                    }

                    v14[108] = v86;
                    v14[109] = v15[109];
                    (**(v86 - 8))(v84, v85);
                    v89 = v15[110];
                    if (!v89)
                    {
LABEL_57:
                      *(v14 + 55) = *(v15 + 55);
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    v88 = *(v15 + 107);
                    *v84 = *v85;
                    *(v14 + 107) = v88;
                    v14[109] = v15[109];
                    v89 = v15[110];
                    if (!v89)
                    {
                      goto LABEL_57;
                    }
                  }

                  v90 = v15[111];
                  v14[110] = v89;
                  v14[111] = v90;

                  goto LABEL_58;
                }

                v14[78] = v73;
                v14[79] = v15[79];
                (**(v73 - 8))((v14 + 75), (v15 + 75), v73);
              }

              else
              {
                v75 = *(v15 + 77);
                *v71 = *v72;
                *(v14 + 77) = v75;
                v14[79] = v15[79];
              }

              v14[80] = v15[80];

              goto LABEL_47;
            }

LABEL_34:
            *(v14 + 28) = *(v15 + 28);
            goto LABEL_35;
          }
        }

        *(v14 + 27) = *(v15 + 27);
        v66 = v15[56];
        if (v66)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v41 = *(v15 + 72);
      if (v41 == 255)
      {
        v14[8] = v15[8];
        *(v14 + 72) = *(v15 + 72);
      }

      else
      {
        v42 = v15[8];
        outlined copy of GraphicsImage.Contents(v42, *(v15 + 72));
        v14[8] = v42;
        *(v14 + 72) = v41;
        v25 = v15[24];
      }

      v14[10] = v15[10];
      *(v14 + 11) = *(v15 + 11);
      *(v14 + 104) = *(v15 + 104);
      *(v14 + 108) = *(v15 + 108);
      *(v14 + 121) = *(v15 + 121);
      *(v14 + 17) = *(v15 + 17);
      *(v14 + 19) = *(v15 + 19);
      *(v14 + 84) = *(v15 + 84);
      *(v14 + 170) = *(v15 + 170);
      *(v14 + 171) = *(v15 + 171);
      if (v25 >> 1 == 0xFFFFFFFF)
      {
        v43 = *(v15 + 12);
        *(v14 + 11) = *(v15 + 11);
        *(v14 + 12) = v43;
      }

      else
      {
        v44 = v15[22];
        v45 = v15[23];
        v46 = v15[25];
        outlined copy of AccessibilityImageLabel(v44, v45, v25);
        v14[22] = v44;
        v14[23] = v45;
        v14[24] = v25;
        v14[25] = v46;
      }

      v47 = v15[27];
      v14[26] = v15[26];
      v14[27] = v47;
      *(v14 + 112) = *(v15 + 112);
      *(v14 + 57) = *(v15 + 57);
      *(v14 + 232) = *(v15 + 232);
      v48 = v15[30];
      v14[30] = v48;
      *(v14 + 124) = *(v15 + 124);
      *(v14 + 250) = *(v15 + 250);
      swift_unknownObjectRetain();

      v49 = v48;
      v33 = v15[33];
      if (v33)
      {
        goto LABEL_11;
      }
    }

    v50 = *(v15 + 17);
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 17) = v50;
    *(v14 + 18) = *(v15 + 18);
    goto LABEL_23;
  }

  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  memcpy(v14, v15, *(*(v20 - 8) + 64));
LABEL_66:
  v114 = v146[19];
  v115 = v146[20];
  v116 = (v4 + v114);
  v117 = (a2 + v114);
  v118 = v117[1];
  *v116 = *v117;
  v116[1] = v118;
  v119 = (v4 + v115);
  v120 = (a2 + v115);
  v121 = v120[1];
  *v119 = *v120;
  v119[1] = v121;
  v122 = v146[21];
  v123 = v4 + v122;
  v124 = a2 + v122;
  v125 = *(a2 + v122 + 24);

  if (v125)
  {
    v126 = *(v124 + 32);
    *(v123 + 3) = v125;
    *(v123 + 4) = v126;
    (**(v125 - 8))(v123, v124, v125);
    *(v123 + 5) = *(v124 + 40);
  }

  else
  {
    v127 = *(v124 + 16);
    *v123 = *v124;
    *(v123 + 1) = v127;
    *(v123 + 2) = *(v124 + 32);
  }

  v128 = v146[23];
  *(v4 + v146[22]) = *(a2 + v146[22]);
  *(v4 + v128) = *(a2 + v128);

  return v4;
}

uint64_t initializeWithCopy for ToolbarViewListVisitor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = (a1 + 8);
  if (*(a2 + 48) == 1)
  {
    v7 = *(a2 + 32);
    *(a1 + 32) = v7;
    (**(v7 - 8))(v6, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    v8 = *(a2 + 24);
    *v6 = *(a2 + 8);
    v6[1] = v8;
    *(v6 + 25) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);

  swift_weakCopyInit();
  v9 = *(a2 + 88);
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  v10 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v10;
  v11 = a3[18];
  v147 = a1;
  v12 = (a1 + v11);
  v13 = a2 + v11;
  v14 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v9;

  if (v16(v13, 1, v14))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v12, v13, *(*(v18 - 8) + 64));
    v19 = v147;
    goto LABEL_64;
  }

  v146 = v14;
  v145 = v15;
  type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v13;
    v21 = *(v13 + 8);
    *v12 = *v13;
    v12[1] = v21;
    v22 = *(v13 + 24);
    v12[2] = *(v13 + 16);
    v12[3] = v22;
    *(v12 + 32) = *(v13 + 32);
    v23 = *(v13 + 48);
    v12[5] = *(v13 + 40);
    v12[6] = v23;
    *(v12 + 56) = *(v13 + 56);
    v24 = *(v13 + 192);
    v25 = v20;
    v26 = v21;

    v144 = a3;
    if (v24 >> 1 == 4294967294)
    {
      v27 = *(v13 + 208);
      *(v12 + 12) = *(v13 + 192);
      *(v12 + 13) = v27;
      *(v12 + 14) = *(v13 + 224);
      *(v12 + 235) = *(v13 + 235);
      v28 = *(v13 + 144);
      *(v12 + 8) = *(v13 + 128);
      *(v12 + 9) = v28;
      v29 = *(v13 + 176);
      *(v12 + 10) = *(v13 + 160);
      *(v12 + 11) = v29;
      v30 = *(v13 + 80);
      *(v12 + 4) = *(v13 + 64);
      *(v12 + 5) = v30;
      v31 = *(v13 + 112);
      *(v12 + 6) = *(v13 + 96);
      *(v12 + 7) = v31;
      v32 = *(v13 + 264);
      if (v32)
      {
LABEL_9:
        v12[32] = *(v13 + 256);
        v12[33] = v32;
        v33 = *(v13 + 272);

        if (v33 >= 2)
        {
          v34 = v33;
        }

        v12[34] = v33;
        *(v12 + 70) = *(v13 + 280);
        *(v12 + 284) = *(v13 + 284);
        *(v12 + 285) = *(v13 + 285);
        v35 = *(v13 + 296);
        v12[36] = *(v13 + 288);
        v12[37] = v35;

LABEL_21:
        v52 = *(v13 + 336);
        if (v52 >> 2 == 0xFFFFFFFF)
        {
          v53 = *(v13 + 384);
          *(v12 + 23) = *(v13 + 368);
          *(v12 + 24) = v53;
          v12[50] = *(v13 + 400);
          v54 = *(v13 + 320);
          *(v12 + 19) = *(v13 + 304);
          *(v12 + 20) = v54;
          v55 = *(v13 + 352);
          *(v12 + 21) = *(v13 + 336);
          *(v12 + 22) = v55;
        }

        else
        {
          v56 = *(v13 + 304);
          v57 = *(v13 + 312);
          v58 = *(v13 + 320);
          v59 = *(v13 + 352);
          v60 = *(v13 + 360);
          v132 = *(v13 + 328);
          v134 = *(v13 + 368);
          v136 = *(v13 + 376);
          v138 = *(v13 + 384);
          v140 = *(v13 + 392);
          __dsta = *(v13 + 400);
          v61 = *(v13 + 344);
          outlined copy of PlatformItemList.Item.SystemItem(v56, v57, v58, v132, v52, v61, v59, v60, v134, v136, v138, v140, __dsta);
          v12[38] = v56;
          v12[39] = v57;
          v12[40] = v58;
          v12[41] = v132;
          v12[42] = v52;
          v12[43] = v61;
          v12[44] = v59;
          v12[45] = v60;
          v12[46] = v134;
          v12[47] = v136;
          v12[48] = v138;
          v12[49] = v140;
          v12[50] = __dsta;
        }

        v62 = *(v13 + 416);
        if (v62 == 1)
        {
          v63 = *(v13 + 456);
          *(v12 + 55) = *(v13 + 440);
          *(v12 + 57) = v63;
          *(v12 + 472) = *(v13 + 472);
          v64 = *(v13 + 424);
          *(v12 + 51) = *(v13 + 408);
          *(v12 + 53) = v64;
          goto LABEL_34;
        }

        *(v12 + 102) = *(v13 + 408);
        *(v12 + 412) = *(v13 + 412);
        if (v62)
        {
          v65 = *(v13 + 424);
          v12[52] = v62;
          v12[53] = v65;

          v66 = *(v13 + 432);
          if (v66)
          {
            goto LABEL_28;
          }
        }

        else
        {
          *(v12 + 26) = *(v13 + 416);
          v66 = *(v13 + 432);
          if (v66)
          {
LABEL_28:
            v67 = *(v13 + 440);
            v12[54] = v66;
            v12[55] = v67;

            v68 = *(v13 + 448);
            if (v68)
            {
LABEL_29:
              v69 = *(v13 + 456);
              v12[56] = v68;
              v12[57] = v69;

LABEL_33:
              v12[58] = *(v13 + 464);
              *(v12 + 472) = *(v13 + 472);
LABEL_34:
              v70 = *(v13 + 488);
              v12[60] = *(v13 + 480);
              v12[61] = v70;
              v12[62] = *(v13 + 496);
              *(v12 + 504) = *(v13 + 504);
              v71 = *(v13 + 512);

              if (v71)
              {
                v72 = *(v13 + 520);
                v12[64] = v71;
                v12[65] = v72;
              }

              else
              {
                *(v12 + 32) = *(v13 + 512);
              }

              *(v12 + 528) = *(v13 + 528);
              if (!*(v13 + 816))
              {
                memcpy(v12 + 67, (v13 + 536), 0x130uLL);
                v19 = v147;
                goto LABEL_49;
              }

              v12[67] = *(v13 + 536);
              v12[68] = *(v13 + 544);
              *(v12 + 552) = *(v13 + 552);
              v12[70] = *(v13 + 560);
              *(v12 + 568) = *(v13 + 568);
              *(v12 + 36) = *(v13 + 576);
              *(v12 + 592) = *(v13 + 592);
              v73 = v12 + 75;
              v74 = (v13 + 600);
              v75 = *(v13 + 624);

              if (v75)
              {
                if (v75 == 1)
                {
                  v76 = *(v13 + 616);
                  *v73 = *v74;
                  *(v12 + 77) = v76;
                  *(v12 + 79) = *(v13 + 632);
LABEL_45:
                  v12[81] = *(v13 + 648);
                  *(v12 + 656) = *(v13 + 656);
                  v78 = v12 + 83;
                  v79 = (v13 + 664);
                  v80 = *(v13 + 776);
                  v19 = v147;
                  if (v80 == 1)
                  {
                    v81 = *(v13 + 776);
                    *(v12 + 95) = *(v13 + 760);
                    *(v12 + 97) = v81;
                    *(v12 + 99) = *(v13 + 792);
                    *(v12 + 808) = *(v13 + 808);
                    v82 = *(v13 + 712);
                    *(v12 + 87) = *(v13 + 696);
                    *(v12 + 89) = v82;
                    v83 = *(v13 + 744);
                    *(v12 + 91) = *(v13 + 728);
                    *(v12 + 93) = v83;
                    v84 = *(v13 + 680);
                    *v78 = *v79;
                    *(v12 + 85) = v84;
                  }

                  else
                  {
                    *v78 = *v79;
                    *(v12 + 672) = *(v13 + 672);
                    v12[85] = *(v13 + 680);
                    *(v12 + 688) = *(v13 + 688);
                    *(v12 + 689) = *(v13 + 689);
                    *(v12 + 691) = *(v13 + 691);
                    *(v12 + 692) = *(v13 + 692);
                    v12[87] = *(v13 + 696);
                    v85 = *(v13 + 720);
                    *(v12 + 44) = *(v13 + 704);
                    *(v12 + 45) = v85;
                    v12[92] = *(v13 + 736);
                    *(v12 + 372) = *(v13 + 744);
                    *(v12 + 47) = *(v13 + 752);
                    *(v12 + 768) = *(v13 + 768);
                    v12[97] = v80;
                    *(v12 + 49) = *(v13 + 784);
                    v12[100] = *(v13 + 800);
                    *(v12 + 808) = *(v13 + 808);
                  }

                  v12[102] = *(v13 + 816);
                  v12[103] = *(v13 + 824);
                  v12[104] = *(v13 + 832);

LABEL_49:
                  v86 = v12 + 105;
                  v87 = (v13 + 840);
                  v88 = *(v13 + 864);
                  if (v88)
                  {
                    if (v88 == 1)
                    {
                      v89 = *(v13 + 856);
                      *v86 = *v87;
                      *(v12 + 107) = v89;
                      *(v12 + 109) = *(v13 + 872);
                      v12[111] = *(v13 + 888);
LABEL_56:
                      v93 = *(v13 + 896);
                      v12[112] = v93;
                      v12[113] = *(v13 + 904);
                      v12[114] = *(v13 + 912);
                      v12[115] = *(v13 + 920);
                      v12[116] = *(v13 + 928);
                      v12[117] = *(v13 + 936);
                      v12[118] = *(v13 + 944);
                      *(v12 + 476) = *(v13 + 952);
                      *(v12 + 954) = *(v13 + 954);
                      v148 = type metadata accessor for PlatformItemList.Item();
                      v94 = v148[28];
                      __dst = v12 + v94;
                      v95 = (v13 + v94);
                      v96 = type metadata accessor for CommandOperation();
                      v135 = *(v96 - 8);
                      v137 = *(v135 + 48);
                      v97 = v93;

                      if (v137(v95, 1, v96))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v95, *(*(v98 - 8) + 64));
                        a3 = v144;
                        v40 = v145;
                        v41 = v146;
                      }

                      else
                      {
                        *__dst = *v95;
                        v99 = *(v96 + 20);
                        v100 = v95;
                        v133 = v95;
                        v101 = &__dst[v99];
                        v102 = &v100[v99];
                        v103 = *&v100[v99];
                        v104 = *&v100[v99 + 8];
                        v141 = v96;
                        v105 = v100[v99 + 16];
                        outlined copy of Text.Storage(v103, v104, v105);
                        *v101 = v103;
                        *(v101 + 1) = v104;
                        v101[16] = v105;
                        *(v101 + 3) = *(v102 + 3);
                        v106 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v107 = type metadata accessor for UUID();
                        v139 = *(*(v107 - 8) + 16);

                        v139(&v101[v106], &v102[v106], v107);
                        v108 = *(v141 + 24);
                        v109 = &__dst[v108];
                        v110 = &v133[v108];
                        if (*v110)
                        {
                          v111 = v110[1];
                          *v109 = *v110;
                          v109[1] = v111;
                        }

                        else
                        {
                          *v109 = *v110;
                        }

                        a3 = v144;
                        v40 = v145;
                        v41 = v146;
                        (*(v135 + 56))(__dst, 0, 1, v141);
                      }

                      *(v12 + v148[29]) = *(v13 + v148[29]);
                      *(v12 + v148[30]) = *(v13 + v148[30]);
                      *(v12 + v148[31]) = *(v13 + v148[31]);
                      *(v12 + v148[32]) = *(v13 + v148[32]);
                      *(v12 + v148[33]) = *(v13 + v148[33]);
                      *(v12 + v148[34]) = *(v13 + v148[34]);

                      goto LABEL_63;
                    }

                    v12[108] = v88;
                    v12[109] = *(v13 + 872);
                    (**(v88 - 8))(v86, v87);
                    v91 = *(v13 + 880);
                    if (!v91)
                    {
LABEL_55:
                      *(v12 + 55) = *(v13 + 880);
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    v90 = *(v13 + 856);
                    *v86 = *v87;
                    *(v12 + 107) = v90;
                    v12[109] = *(v13 + 872);
                    v91 = *(v13 + 880);
                    if (!v91)
                    {
                      goto LABEL_55;
                    }
                  }

                  v92 = *(v13 + 888);
                  v12[110] = v91;
                  v12[111] = v92;

                  goto LABEL_56;
                }

                v12[78] = v75;
                v12[79] = *(v13 + 632);
                (**(v75 - 8))((v12 + 75), v13 + 600, v75);
              }

              else
              {
                v77 = *(v13 + 616);
                *v73 = *v74;
                *(v12 + 77) = v77;
                v12[79] = *(v13 + 632);
              }

              v12[80] = *(v13 + 640);

              goto LABEL_45;
            }

LABEL_32:
            *(v12 + 28) = *(v13 + 448);
            goto LABEL_33;
          }
        }

        *(v12 + 27) = *(v13 + 432);
        v68 = *(v13 + 448);
        if (v68)
        {
          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v42 = *(v13 + 72);
      if (v42 == 255)
      {
        v12[8] = *(v13 + 64);
        *(v12 + 72) = *(v13 + 72);
      }

      else
      {
        v43 = *(v13 + 64);
        outlined copy of GraphicsImage.Contents(v43, *(v13 + 72));
        v12[8] = v43;
        *(v12 + 72) = v42;
        v24 = *(v13 + 192);
      }

      v12[10] = *(v13 + 80);
      *(v12 + 11) = *(v13 + 88);
      *(v12 + 104) = *(v13 + 104);
      *(v12 + 108) = *(v13 + 108);
      *(v12 + 121) = *(v13 + 121);
      *(v12 + 17) = *(v13 + 136);
      *(v12 + 19) = *(v13 + 152);
      *(v12 + 84) = *(v13 + 168);
      *(v12 + 170) = *(v13 + 170);
      *(v12 + 171) = *(v13 + 171);
      if (v24 >> 1 == 0xFFFFFFFF)
      {
        v44 = *(v13 + 192);
        *(v12 + 11) = *(v13 + 176);
        *(v12 + 12) = v44;
      }

      else
      {
        v45 = *(v13 + 176);
        v46 = *(v13 + 184);
        v47 = *(v13 + 200);
        outlined copy of AccessibilityImageLabel(v45, v46, v24);
        v12[22] = v45;
        v12[23] = v46;
        v12[24] = v24;
        v12[25] = v47;
      }

      v48 = *(v13 + 216);
      v12[26] = *(v13 + 208);
      v12[27] = v48;
      *(v12 + 112) = *(v13 + 224);
      *(v12 + 57) = *(v13 + 228);
      *(v12 + 232) = *(v13 + 232);
      v49 = *(v13 + 240);
      v12[30] = v49;
      *(v12 + 124) = *(v13 + 248);
      *(v12 + 250) = *(v13 + 250);
      swift_unknownObjectRetain();

      v50 = v49;
      v32 = *(v13 + 264);
      if (v32)
      {
        goto LABEL_9;
      }
    }

    v51 = *(v13 + 272);
    *(v12 + 16) = *(v13 + 256);
    *(v12 + 17) = v51;
    *(v12 + 18) = *(v13 + 288);
    goto LABEL_21;
  }

  v36 = *(v13 + 24);
  *(v12 + 3) = v36;
  (**(v36 - 8))(v12, v13);
  v37 = *(v13 + 48);
  v12[5] = *(v13 + 40);
  v12[6] = v37;
  v12[7] = *(v13 + 56);
  v12[8] = *(v13 + 64);
  *(v12 + 9) = *(v13 + 72);
  v38 = *(v13 + 88);
  v12[11] = v38;

  v39 = v38;
  v40 = v15;
  v41 = v14;
  v19 = v147;
LABEL_63:
  swift_storeEnumTagMultiPayload();
  v112 = *(v41 + 20);
  v113 = *(v13 + v112);
  *(v12 + v112) = v113;
  v114 = *(v40 + 56);
  v115 = v113;
  v114(v12, 0, 1, v41);
LABEL_64:
  v116 = a3[19];
  v117 = a3[20];
  v118 = (v19 + v116);
  v119 = (a2 + v116);
  v120 = v119[1];
  *v118 = *v119;
  v118[1] = v120;
  v121 = (v19 + v117);
  v122 = (a2 + v117);
  v123 = v122[1];
  *v121 = *v122;
  v121[1] = v123;
  v124 = a3[21];
  v125 = v19 + v124;
  v126 = a2 + v124;
  v127 = *(a2 + v124 + 24);

  if (v127)
  {
    v128 = *(v126 + 32);
    *(v125 + 24) = v127;
    *(v125 + 32) = v128;
    (**(v127 - 8))(v125, v126, v127);
    *(v125 + 40) = *(v126 + 40);
  }

  else
  {
    v129 = *(v126 + 16);
    *v125 = *v126;
    *(v125 + 16) = v129;
    *(v125 + 32) = *(v126 + 32);
  }

  v130 = a3[23];
  *(v19 + a3[22]) = *(a2 + a3[22]);
  *(v19 + v130) = *(a2 + v130);

  return v19;
}

uint64_t assignWithCopy for ToolbarViewListVisitor(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a2 + 8);
  *a1 = *a2;
  v7 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      *(a1 + 40) = *(a2 + 40);
      (**(v8 - 8))(v7, v6);
      *(a1 + 48) = 1;
    }

    else
    {
      v9 = *v6;
      v10 = v6[1];
      *(v7 + 25) = *(v6 + 25);
      *v7 = v9;
      v7[1] = v10;
    }
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);
  swift_weakCopyAssign();
  v11 = *(a2 + 88);
  v12 = *(a1 + 88);
  *(a1 + 88) = v11;
  v13 = v11;

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  v14 = a3[18];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      v295 = v18;
      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v54 = *(v16 + 24);
        *(v15 + 24) = v54;
        *(v15 + 32) = *(v16 + 32);
        (**(v54 - 8))(v15, v16);
        *(v15 + 40) = *(v16 + 40);
        *(v15 + 48) = *(v16 + 48);
        *(v15 + 56) = *(v16 + 56);
        *(v15 + 60) = *(v16 + 60);
        *(v15 + 64) = *(v16 + 64);
        *(v15 + 72) = *(v16 + 72);
        *(v15 + 80) = *(v16 + 80);
        v55 = *(v16 + 88);
        *(v15 + 88) = v55;

        v56 = v55;
LABEL_74:
        swift_storeEnumTagMultiPayload();
        v152 = *(v17 + 20);
        v153 = *(v16 + v152);
        *(v15 + v152) = v153;
        v154 = *(v295 + 56);
        v155 = v153;
        v154(v15, 0, 1, v17);
        goto LABEL_132;
      }

      v22 = *v16;
      *v15 = *v16;
      v23 = *(v16 + 8);
      *(v15 + 8) = v23;
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 24) = *(v16 + 24);
      *(v15 + 32) = *(v16 + 32);
      *(v15 + 40) = *(v16 + 40);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 56) = *(v16 + 56);
      v24 = *(v16 + 192);
      v25 = v22;
      v26 = v23;

      if (v24 >> 1 == 4294967294)
      {
        v27 = *(v16 + 64);
        v28 = *(v16 + 80);
        v29 = *(v16 + 112);
        *(v15 + 96) = *(v16 + 96);
        *(v15 + 112) = v29;
        *(v15 + 64) = v27;
        *(v15 + 80) = v28;
        v30 = *(v16 + 128);
        v31 = *(v16 + 144);
        v32 = *(v16 + 176);
        *(v15 + 160) = *(v16 + 160);
        *(v15 + 176) = v32;
        *(v15 + 128) = v30;
        *(v15 + 144) = v31;
        v33 = *(v16 + 192);
        v34 = *(v16 + 208);
        v35 = *(v16 + 224);
        *(v15 + 235) = *(v16 + 235);
        *(v15 + 208) = v34;
        *(v15 + 224) = v35;
        *(v15 + 192) = v33;
        if (*(v16 + 264))
        {
LABEL_10:
          *(v15 + 256) = *(v16 + 256);
          *(v15 + 264) = *(v16 + 264);
          v36 = *(v16 + 272);

          if (v36 >= 2)
          {
            v37 = v36;
          }

          *(v15 + 272) = v36;
          v38 = *(v16 + 280);
          *(v15 + 284) = *(v16 + 284);
          *(v15 + 280) = v38;
          *(v15 + 285) = *(v16 + 285);
          *(v15 + 286) = *(v16 + 286);
          *(v15 + 288) = *(v16 + 288);
          *(v15 + 296) = *(v16 + 296);

LABEL_32:
          v80 = *(v16 + 336);
          v293 = a3;
          v291 = v17;
          if (v80 >> 2 == 0xFFFFFFFF)
          {
            v81 = *(v16 + 304);
            v82 = *(v16 + 336);
            *(v15 + 320) = *(v16 + 320);
            *(v15 + 336) = v82;
            *(v15 + 304) = v81;
            v83 = *(v16 + 352);
            v84 = *(v16 + 368);
            v85 = *(v16 + 384);
            *(v15 + 400) = *(v16 + 400);
            *(v15 + 368) = v84;
            *(v15 + 384) = v85;
            *(v15 + 352) = v83;
          }

          else
          {
            v86 = *(v16 + 304);
            v87 = *(v16 + 312);
            v266 = *(v16 + 328);
            v267 = *(v16 + 320);
            v89 = *(v16 + 344);
            v88 = *(v16 + 352);
            v90 = *(v16 + 360);
            v270 = *(v16 + 368);
            v275 = *(v16 + 376);
            v279 = *(v16 + 384);
            v283 = *(v16 + 392);
            __dstb = *(v16 + 400);
            outlined copy of PlatformItemList.Item.SystemItem(v86, v87, v267, v266, v80, v89, v88, v90, v270, v275, v279, v283, __dstb);
            *(v15 + 304) = v86;
            *(v15 + 312) = v87;
            *(v15 + 320) = v267;
            *(v15 + 328) = v266;
            *(v15 + 336) = v80;
            *(v15 + 344) = v89;
            *(v15 + 352) = v88;
            *(v15 + 360) = v90;
            *(v15 + 368) = v270;
            *(v15 + 376) = v275;
            *(v15 + 384) = v279;
            *(v15 + 392) = v283;
            *(v15 + 400) = __dstb;
          }

          if (*(v16 + 416) == 1)
          {
            *(v15 + 408) = *(v16 + 408);
            v91 = *(v16 + 424);
            v92 = *(v16 + 440);
            v93 = *(v16 + 456);
            *(v15 + 472) = *(v16 + 472);
            *(v15 + 440) = v92;
            *(v15 + 456) = v93;
            *(v15 + 424) = v91;
            goto LABEL_45;
          }

          *(v15 + 408) = *(v16 + 408);
          *(v15 + 409) = *(v16 + 409);
          *(v15 + 410) = *(v16 + 410);
          *(v15 + 411) = *(v16 + 411);
          *(v15 + 412) = *(v16 + 412);
          v94 = *(v16 + 416);
          if (v94)
          {
            v95 = *(v16 + 424);
            *(v15 + 416) = v94;
            *(v15 + 424) = v95;

            v96 = *(v16 + 432);
            if (v96)
            {
              goto LABEL_39;
            }
          }

          else
          {
            *(v15 + 416) = *(v16 + 416);
            v96 = *(v16 + 432);
            if (v96)
            {
LABEL_39:
              v97 = *(v16 + 440);
              *(v15 + 432) = v96;
              *(v15 + 440) = v97;

              v98 = *(v16 + 448);
              if (v98)
              {
LABEL_40:
                v99 = *(v16 + 456);
                *(v15 + 448) = v98;
                *(v15 + 456) = v99;

LABEL_44:
                *(v15 + 464) = *(v16 + 464);
                *(v15 + 472) = *(v16 + 472);
LABEL_45:
                *(v15 + 480) = *(v16 + 480);
                *(v15 + 488) = *(v16 + 488);
                *(v15 + 496) = *(v16 + 496);
                *(v15 + 504) = *(v16 + 504);
                v100 = *(v16 + 512);

                if (v100)
                {
                  v101 = *(v16 + 520);
                  *(v15 + 512) = v100;
                  *(v15 + 520) = v101;
                }

                else
                {
                  *(v15 + 512) = *(v16 + 512);
                }

                *(v15 + 528) = *(v16 + 528);
                if (!*(v16 + 816))
                {
                  memcpy((v15 + 536), (v16 + 536), 0x130uLL);
                  goto LABEL_60;
                }

                *(v15 + 536) = *(v16 + 536);
                *(v15 + 544) = *(v16 + 544);
                *(v15 + 552) = *(v16 + 552);
                *(v15 + 560) = *(v16 + 560);
                *(v15 + 568) = *(v16 + 568);
                v102 = *(v16 + 576);
                *(v15 + 592) = *(v16 + 592);
                *(v15 + 576) = v102;
                v103 = (v15 + 600);
                v104 = (v16 + 600);
                v105 = *(v16 + 624);

                if (v105)
                {
                  if (v105 == 1)
                  {
                    v106 = *v104;
                    v107 = *(v16 + 632);
                    *(v15 + 616) = *(v16 + 616);
                    *(v15 + 632) = v107;
                    *v103 = v106;
LABEL_56:
                    v110 = *(v16 + 648);
                    *(v15 + 656) = *(v16 + 656);
                    *(v15 + 648) = v110;
                    v111 = (v15 + 664);
                    v112 = (v16 + 664);
                    if (*(v16 + 776) == 1)
                    {
                      v113 = *(v16 + 680);
                      *v111 = *v112;
                      *(v15 + 680) = v113;
                      v114 = *(v16 + 696);
                      v115 = *(v16 + 712);
                      v116 = *(v16 + 744);
                      *(v15 + 728) = *(v16 + 728);
                      *(v15 + 744) = v116;
                      *(v15 + 696) = v114;
                      *(v15 + 712) = v115;
                      v117 = *(v16 + 760);
                      v118 = *(v16 + 776);
                      v119 = *(v16 + 792);
                      *(v15 + 808) = *(v16 + 808);
                      *(v15 + 776) = v118;
                      *(v15 + 792) = v119;
                      *(v15 + 760) = v117;
                    }

                    else
                    {
                      v120 = *v112;
                      *(v15 + 672) = *(v16 + 672);
                      *v111 = v120;
                      v121 = *(v16 + 680);
                      *(v15 + 688) = *(v16 + 688);
                      *(v15 + 680) = v121;
                      *(v15 + 689) = *(v16 + 689);
                      *(v15 + 690) = *(v16 + 690);
                      *(v15 + 691) = *(v16 + 691);
                      *(v15 + 692) = *(v16 + 692);
                      *(v15 + 696) = *(v16 + 696);
                      *(v15 + 704) = *(v16 + 704);
                      *(v15 + 712) = *(v16 + 712);
                      *(v15 + 720) = *(v16 + 720);
                      *(v15 + 728) = *(v16 + 728);
                      *(v15 + 736) = *(v16 + 736);
                      *(v15 + 744) = *(v16 + 744);
                      *(v15 + 745) = *(v16 + 745);
                      *(v15 + 752) = *(v16 + 752);
                      *(v15 + 760) = *(v16 + 760);
                      *(v15 + 768) = *(v16 + 768);
                      *(v15 + 776) = *(v16 + 776);
                      v122 = *(v16 + 784);
                      *(v15 + 800) = *(v16 + 800);
                      *(v15 + 784) = v122;
                      *(v15 + 808) = *(v16 + 808);
                    }

                    *(v15 + 816) = *(v16 + 816);
                    *(v15 + 824) = *(v16 + 824);
                    *(v15 + 832) = *(v16 + 832);

LABEL_60:
                    v123 = (v15 + 840);
                    v124 = (v16 + 840);
                    v125 = *(v16 + 864);
                    if (v125)
                    {
                      if (v125 == 1)
                      {
                        v126 = *v124;
                        v127 = *(v16 + 856);
                        v128 = *(v16 + 872);
                        *(v15 + 888) = *(v16 + 888);
                        *(v15 + 856) = v127;
                        *(v15 + 872) = v128;
                        *v123 = v126;
LABEL_67:
                        v133 = *(v16 + 896);
                        *(v15 + 896) = v133;
                        *(v15 + 904) = *(v16 + 904);
                        *(v15 + 912) = *(v16 + 912);
                        *(v15 + 920) = *(v16 + 920);
                        *(v15 + 928) = *(v16 + 928);
                        *(v15 + 936) = *(v16 + 936);
                        *(v15 + 944) = *(v16 + 944);
                        *(v15 + 952) = *(v16 + 952);
                        *(v15 + 953) = *(v16 + 953);
                        *(v15 + 954) = *(v16 + 954);
                        v134 = type metadata accessor for PlatformItemList.Item();
                        v135 = *(v134 + 112);
                        v284 = v134;
                        __dst = (v15 + v135);
                        v136 = (v16 + v135);
                        v137 = type metadata accessor for CommandOperation();
                        v268 = *(v137 - 8);
                        v271 = *(v268 + 48);
                        v138 = v133;

                        if (v271(v136, 1, v137))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          memcpy(__dst, v136, *(*(v139 - 8) + 64));
                          a3 = v293;
                          v17 = v291;
                        }

                        else
                        {
                          *__dst = *v136;
                          v140 = *(v137 + 20);
                          v276 = v136;
                          v280 = v137;
                          v141 = &__dst[v140];
                          v142 = &v136[v140];
                          v143 = *&v136[v140];
                          v144 = *(v142 + 1);
                          v145 = v142[16];
                          outlined copy of Text.Storage(v143, v144, v145);
                          *v141 = v143;
                          *(v141 + 1) = v144;
                          v141[16] = v145;
                          *(v141 + 3) = *(v142 + 3);
                          v146 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v147 = type metadata accessor for UUID();
                          v272 = *(*(v147 - 8) + 16);

                          v272(&v141[v146], &v142[v146], v147);
                          v148 = *(v280 + 24);
                          v149 = &__dst[v148];
                          v150 = &v276[v148];
                          if (*v150)
                          {
                            v151 = v150[1];
                            *v149 = *v150;
                            v149[1] = v151;
                          }

                          else
                          {
                            *v149 = *v150;
                          }

                          a3 = v293;
                          v17 = v291;
                          (*(v268 + 56))(__dst, 0, 1, v280);
                        }

                        *(v15 + v284[29]) = *(v16 + v284[29]);
                        *(v15 + v284[30]) = *(v16 + v284[30]);
                        *(v15 + v284[31]) = *(v16 + v284[31]);
                        *(v15 + v284[32]) = *(v16 + v284[32]);
                        *(v15 + v284[33]) = *(v16 + v284[33]);
                        *(v15 + v284[34]) = *(v16 + v284[34]);

                        goto LABEL_74;
                      }

                      *(v15 + 864) = v125;
                      *(v15 + 872) = *(v16 + 872);
                      (**(v125 - 8))(v123, v124);
                      v131 = *(v16 + 880);
                      if (!v131)
                      {
LABEL_66:
                        *(v15 + 880) = *(v16 + 880);
                        goto LABEL_67;
                      }
                    }

                    else
                    {
                      v129 = *v124;
                      v130 = *(v16 + 856);
                      *(v15 + 872) = *(v16 + 872);
                      *v123 = v129;
                      *(v15 + 856) = v130;
                      v131 = *(v16 + 880);
                      if (!v131)
                      {
                        goto LABEL_66;
                      }
                    }

                    v132 = *(v16 + 888);
                    *(v15 + 880) = v131;
                    *(v15 + 888) = v132;

                    goto LABEL_67;
                  }

                  *(v15 + 624) = v105;
                  *(v15 + 632) = *(v16 + 632);
                  (**(v105 - 8))(v15 + 600, v16 + 600, v105);
                }

                else
                {
                  v108 = *v104;
                  v109 = *(v16 + 616);
                  *(v15 + 632) = *(v16 + 632);
                  *v103 = v108;
                  *(v15 + 616) = v109;
                }

                *(v15 + 640) = *(v16 + 640);

                goto LABEL_56;
              }

LABEL_43:
              *(v15 + 448) = *(v16 + 448);
              goto LABEL_44;
            }
          }

          *(v15 + 432) = *(v16 + 432);
          v98 = *(v16 + 448);
          if (v98)
          {
            goto LABEL_40;
          }

          goto LABEL_43;
        }
      }

      else
      {
        v57 = *(v16 + 72);
        if (v57 == 255)
        {
          v64 = *(v16 + 64);
          *(v15 + 72) = *(v16 + 72);
          *(v15 + 64) = v64;
        }

        else
        {
          v58 = *(v16 + 64);
          outlined copy of GraphicsImage.Contents(v58, *(v16 + 72));
          *(v15 + 64) = v58;
          *(v15 + 72) = v57;
        }

        *(v15 + 80) = *(v16 + 80);
        *(v15 + 88) = *(v16 + 88);
        *(v15 + 104) = *(v16 + 104);
        v65 = *(v16 + 108);
        *(v15 + 121) = *(v16 + 121);
        *(v15 + 108) = v65;
        v66 = *(v16 + 136);
        v67 = *(v16 + 152);
        *(v15 + 168) = *(v16 + 168);
        *(v15 + 152) = v67;
        *(v15 + 136) = v66;
        *(v15 + 169) = *(v16 + 169);
        *(v15 + 170) = *(v16 + 170);
        *(v15 + 171) = *(v16 + 171);
        v68 = *(v16 + 192);
        if (v68 >> 1 == 0xFFFFFFFF)
        {
          v69 = *(v16 + 192);
          *(v15 + 176) = *(v16 + 176);
          *(v15 + 192) = v69;
        }

        else
        {
          v70 = a3;
          v71 = *(v16 + 176);
          v72 = *(v16 + 184);
          v73 = v17;
          v74 = *(v16 + 200);
          outlined copy of AccessibilityImageLabel(v71, v72, *(v16 + 192));
          *(v15 + 176) = v71;
          *(v15 + 184) = v72;
          a3 = v70;
          *(v15 + 192) = v68;
          *(v15 + 200) = v74;
          v17 = v73;
        }

        *(v15 + 208) = *(v16 + 208);
        *(v15 + 216) = *(v16 + 216);
        *(v15 + 224) = *(v16 + 224);
        *(v15 + 225) = *(v16 + 225);
        v75 = *(v16 + 228);
        *(v15 + 232) = *(v16 + 232);
        *(v15 + 228) = v75;
        v76 = *(v16 + 240);
        *(v15 + 240) = v76;
        *(v15 + 248) = *(v16 + 248);
        *(v15 + 250) = *(v16 + 250);
        swift_unknownObjectRetain();

        v77 = v76;
        if (*(v16 + 264))
        {
          goto LABEL_10;
        }
      }

      v78 = *(v16 + 256);
      v79 = *(v16 + 288);
      *(v15 + 272) = *(v16 + 272);
      *(v15 + 288) = v79;
      *(v15 + 256) = v78;
      goto LABEL_32;
    }

LABEL_15:
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v15, v16, *(*(v39 - 8) + 64));
    goto LABEL_132;
  }

  if (v21)
  {
    _s7SwiftUI16CommandOperationVWOhTm_3(v15, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
    goto LABEL_15;
  }

  if (a1 != a2)
  {
    _s7SwiftUI16CommandOperationVWOhTm_3(v15, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v59 = *(v16 + 24);
      *(v15 + 24) = v59;
      *(v15 + 32) = *(v16 + 32);
      (**(v59 - 8))(v15, v16);
      *(v15 + 40) = *(v16 + 40);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 56) = *(v16 + 56);
      *(v15 + 60) = *(v16 + 60);
      *(v15 + 64) = *(v16 + 64);
      *(v15 + 72) = *(v16 + 72);
      *(v15 + 80) = *(v16 + 80);
      v60 = *(v16 + 88);
      *(v15 + 88) = v60;

      v61 = v60;
LABEL_130:
      swift_storeEnumTagMultiPayload();
      goto LABEL_131;
    }

    v40 = *v16;
    *v15 = *v16;
    v41 = *(v16 + 8);
    *(v15 + 8) = v41;
    *(v15 + 16) = *(v16 + 16);
    *(v15 + 24) = *(v16 + 24);
    *(v15 + 32) = *(v16 + 32);
    *(v15 + 40) = *(v16 + 40);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 56) = *(v16 + 56);
    v42 = *(v16 + 192);
    v43 = v40;
    v44 = v41;

    if (v42 >> 1 == 4294967294)
    {
      v45 = *(v16 + 64);
      v46 = *(v16 + 80);
      v47 = *(v16 + 112);
      *(v15 + 96) = *(v16 + 96);
      *(v15 + 112) = v47;
      *(v15 + 64) = v45;
      *(v15 + 80) = v46;
      v48 = *(v16 + 128);
      v49 = *(v16 + 144);
      v50 = *(v16 + 176);
      *(v15 + 160) = *(v16 + 160);
      *(v15 + 176) = v50;
      *(v15 + 128) = v48;
      *(v15 + 144) = v49;
      v51 = *(v16 + 192);
      v52 = *(v16 + 208);
      v53 = *(v16 + 224);
      *(v15 + 235) = *(v16 + 235);
      *(v15 + 208) = v52;
      *(v15 + 224) = v53;
      *(v15 + 192) = v51;
    }

    else
    {
      v62 = *(v16 + 72);
      if (v62 == 255)
      {
        v156 = *(v16 + 64);
        *(v15 + 72) = *(v16 + 72);
        *(v15 + 64) = v156;
      }

      else
      {
        v63 = *(v16 + 64);
        outlined copy of GraphicsImage.Contents(v63, *(v16 + 72));
        *(v15 + 64) = v63;
        *(v15 + 72) = v62;
      }

      *(v15 + 80) = *(v16 + 80);
      *(v15 + 88) = *(v16 + 88);
      *(v15 + 104) = *(v16 + 104);
      v157 = *(v16 + 108);
      *(v15 + 121) = *(v16 + 121);
      *(v15 + 108) = v157;
      v158 = *(v16 + 136);
      v159 = *(v16 + 152);
      *(v15 + 168) = *(v16 + 168);
      *(v15 + 152) = v159;
      *(v15 + 136) = v158;
      *(v15 + 169) = *(v16 + 169);
      *(v15 + 170) = *(v16 + 170);
      *(v15 + 171) = *(v16 + 171);
      v160 = *(v16 + 192);
      if (v160 >> 1 == 0xFFFFFFFF)
      {
        v161 = *(v16 + 192);
        *(v15 + 176) = *(v16 + 176);
        *(v15 + 192) = v161;
      }

      else
      {
        v162 = a3;
        v163 = *(v16 + 176);
        v164 = *(v16 + 184);
        v165 = v17;
        v166 = *(v16 + 200);
        outlined copy of AccessibilityImageLabel(v163, v164, *(v16 + 192));
        *(v15 + 176) = v163;
        *(v15 + 184) = v164;
        a3 = v162;
        *(v15 + 192) = v160;
        *(v15 + 200) = v166;
        v17 = v165;
      }

      *(v15 + 208) = *(v16 + 208);
      *(v15 + 216) = *(v16 + 216);
      *(v15 + 224) = *(v16 + 224);
      *(v15 + 225) = *(v16 + 225);
      v167 = *(v16 + 228);
      *(v15 + 232) = *(v16 + 232);
      *(v15 + 228) = v167;
      v168 = *(v16 + 240);
      *(v15 + 240) = v168;
      *(v15 + 248) = *(v16 + 248);
      *(v15 + 250) = *(v16 + 250);
      swift_unknownObjectRetain();

      v169 = v168;
    }

    if (*(v16 + 264))
    {
      *(v15 + 256) = *(v16 + 256);
      *(v15 + 264) = *(v16 + 264);
      v170 = *(v16 + 272);

      if (v170 >= 2)
      {
        v171 = v170;
      }

      *(v15 + 272) = v170;
      v172 = *(v16 + 280);
      *(v15 + 284) = *(v16 + 284);
      *(v15 + 280) = v172;
      *(v15 + 285) = *(v16 + 285);
      *(v15 + 286) = *(v16 + 286);
      *(v15 + 288) = *(v16 + 288);
      *(v15 + 296) = *(v16 + 296);
    }

    else
    {
      v173 = *(v16 + 256);
      v174 = *(v16 + 288);
      *(v15 + 272) = *(v16 + 272);
      *(v15 + 288) = v174;
      *(v15 + 256) = v173;
    }

    v175 = *(v16 + 336);
    v294 = a3;
    v292 = v17;
    if (v175 >> 2 == 0xFFFFFFFF)
    {
      v176 = *(v16 + 304);
      v177 = *(v16 + 336);
      *(v15 + 320) = *(v16 + 320);
      *(v15 + 336) = v177;
      *(v15 + 304) = v176;
      v178 = *(v16 + 352);
      v179 = *(v16 + 368);
      v180 = *(v16 + 384);
      *(v15 + 400) = *(v16 + 400);
      *(v15 + 368) = v179;
      *(v15 + 384) = v180;
      *(v15 + 352) = v178;
    }

    else
    {
      v181 = *(v16 + 304);
      v182 = *(v16 + 312);
      v269 = *(v16 + 328);
      v273 = *(v16 + 320);
      v183 = *(v16 + 344);
      v184 = *(v16 + 352);
      v185 = *(v16 + 360);
      v277 = *(v16 + 368);
      v281 = *(v16 + 376);
      v285 = *(v16 + 384);
      __dstc = *(v16 + 392);
      v296 = *(v16 + 400);
      outlined copy of PlatformItemList.Item.SystemItem(v181, v182, v273, v269, v175, v183, v184, v185, v277, v281, v285, __dstc, v296);
      *(v15 + 304) = v181;
      *(v15 + 312) = v182;
      *(v15 + 320) = v273;
      *(v15 + 328) = v269;
      *(v15 + 336) = v175;
      *(v15 + 344) = v183;
      *(v15 + 352) = v184;
      *(v15 + 360) = v185;
      *(v15 + 368) = v277;
      *(v15 + 376) = v281;
      *(v15 + 384) = v285;
      *(v15 + 392) = __dstc;
      *(v15 + 400) = v296;
    }

    if (*(v16 + 416) == 1)
    {
      *(v15 + 408) = *(v16 + 408);
      v186 = *(v16 + 424);
      v187 = *(v16 + 440);
      v188 = *(v16 + 456);
      *(v15 + 472) = *(v16 + 472);
      *(v15 + 440) = v187;
      *(v15 + 456) = v188;
      *(v15 + 424) = v186;
    }

    else
    {
      *(v15 + 408) = *(v16 + 408);
      *(v15 + 409) = *(v16 + 409);
      *(v15 + 410) = *(v16 + 410);
      *(v15 + 411) = *(v16 + 411);
      *(v15 + 412) = *(v16 + 412);
      v189 = *(v16 + 416);
      if (v189)
      {
        v190 = *(v16 + 424);
        *(v15 + 416) = v189;
        *(v15 + 424) = v190;
      }

      else
      {
        *(v15 + 416) = *(v16 + 416);
      }

      v191 = *(v16 + 432);
      if (v191)
      {
        v192 = *(v16 + 440);
        *(v15 + 432) = v191;
        *(v15 + 440) = v192;
      }

      else
      {
        *(v15 + 432) = *(v16 + 432);
      }

      v193 = *(v16 + 448);
      if (v193)
      {
        v194 = *(v16 + 456);
        *(v15 + 448) = v193;
        *(v15 + 456) = v194;
      }

      else
      {
        *(v15 + 448) = *(v16 + 448);
      }

      *(v15 + 464) = *(v16 + 464);
      *(v15 + 472) = *(v16 + 472);
    }

    *(v15 + 480) = *(v16 + 480);
    *(v15 + 488) = *(v16 + 488);
    *(v15 + 496) = *(v16 + 496);
    *(v15 + 504) = *(v16 + 504);
    v195 = *(v16 + 512);

    if (v195)
    {
      v196 = *(v16 + 520);
      *(v15 + 512) = v195;
      *(v15 + 520) = v196;
    }

    else
    {
      *(v15 + 512) = *(v16 + 512);
    }

    *(v15 + 528) = *(v16 + 528);
    if (!*(v16 + 816))
    {
      memcpy((v15 + 536), (v16 + 536), 0x130uLL);
      goto LABEL_115;
    }

    *(v15 + 536) = *(v16 + 536);
    *(v15 + 544) = *(v16 + 544);
    *(v15 + 552) = *(v16 + 552);
    *(v15 + 560) = *(v16 + 560);
    *(v15 + 568) = *(v16 + 568);
    v197 = *(v16 + 576);
    *(v15 + 592) = *(v16 + 592);
    *(v15 + 576) = v197;
    v198 = (v15 + 600);
    v199 = (v16 + 600);
    v200 = *(v16 + 624);

    if (v200)
    {
      if (v200 == 1)
      {
        v201 = *v199;
        v202 = *(v16 + 632);
        *(v15 + 616) = *(v16 + 616);
        *(v15 + 632) = v202;
        *v198 = v201;
LABEL_111:
        v205 = *(v16 + 648);
        *(v15 + 656) = *(v16 + 656);
        *(v15 + 648) = v205;
        v206 = (v15 + 664);
        v207 = (v16 + 664);
        if (*(v16 + 776) == 1)
        {
          v208 = *(v16 + 680);
          *v206 = *v207;
          *(v15 + 680) = v208;
          v209 = *(v16 + 696);
          v210 = *(v16 + 712);
          v211 = *(v16 + 744);
          *(v15 + 728) = *(v16 + 728);
          *(v15 + 744) = v211;
          *(v15 + 696) = v209;
          *(v15 + 712) = v210;
          v212 = *(v16 + 760);
          v213 = *(v16 + 776);
          v214 = *(v16 + 792);
          *(v15 + 808) = *(v16 + 808);
          *(v15 + 776) = v213;
          *(v15 + 792) = v214;
          *(v15 + 760) = v212;
        }

        else
        {
          v215 = *v207;
          *(v15 + 672) = *(v16 + 672);
          *v206 = v215;
          v216 = *(v16 + 680);
          *(v15 + 688) = *(v16 + 688);
          *(v15 + 680) = v216;
          *(v15 + 689) = *(v16 + 689);
          *(v15 + 690) = *(v16 + 690);
          *(v15 + 691) = *(v16 + 691);
          *(v15 + 692) = *(v16 + 692);
          *(v15 + 696) = *(v16 + 696);
          *(v15 + 704) = *(v16 + 704);
          *(v15 + 712) = *(v16 + 712);
          *(v15 + 720) = *(v16 + 720);
          *(v15 + 728) = *(v16 + 728);
          *(v15 + 736) = *(v16 + 736);
          *(v15 + 744) = *(v16 + 744);
          *(v15 + 745) = *(v16 + 745);
          *(v15 + 752) = *(v16 + 752);
          *(v15 + 760) = *(v16 + 760);
          *(v15 + 768) = *(v16 + 768);
          *(v15 + 776) = *(v16 + 776);
          v217 = *(v16 + 784);
          *(v15 + 800) = *(v16 + 800);
          *(v15 + 784) = v217;
          *(v15 + 808) = *(v16 + 808);
        }

        *(v15 + 816) = *(v16 + 816);
        *(v15 + 824) = *(v16 + 824);
        *(v15 + 832) = *(v16 + 832);

LABEL_115:
        v218 = (v15 + 840);
        v219 = (v16 + 840);
        v220 = *(v16 + 864);
        if (v220)
        {
          if (v220 == 1)
          {
            v221 = *v219;
            v222 = *(v16 + 856);
            v223 = *(v16 + 872);
            *(v15 + 888) = *(v16 + 888);
            *(v15 + 856) = v222;
            *(v15 + 872) = v223;
            *v218 = v221;
LABEL_123:
            v228 = *(v16 + 896);
            *(v15 + 896) = v228;
            *(v15 + 904) = *(v16 + 904);
            *(v15 + 912) = *(v16 + 912);
            *(v15 + 920) = *(v16 + 920);
            *(v15 + 928) = *(v16 + 928);
            *(v15 + 936) = *(v16 + 936);
            *(v15 + 944) = *(v16 + 944);
            *(v15 + 952) = *(v16 + 952);
            *(v15 + 953) = *(v16 + 953);
            *(v15 + 954) = *(v16 + 954);
            __dsta = type metadata accessor for PlatformItemList.Item();
            v229 = __dsta[28];
            v297 = (v15 + v229);
            v230 = (v16 + v229);
            v231 = type metadata accessor for CommandOperation();
            v274 = *(v231 - 8);
            v278 = *(v274 + 48);
            v232 = v228;

            if (v278(v230, 1, v231))
            {
              _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
              memcpy(v297, v230, *(*(v233 - 8) + 64));
              a3 = v294;
              v17 = v292;
            }

            else
            {
              *v297 = *v230;
              v234 = *(v231 + 20);
              v235 = &v297[v234];
              v236 = v230;
              v237 = &v230[v234];
              v286 = v231;
              v238 = *v237;
              v239 = *(v237 + 1);
              v240 = v237[16];
              outlined copy of Text.Storage(*v237, v239, v240);
              *v235 = v238;
              *(v235 + 1) = v239;
              v235[16] = v240;
              *(v235 + 3) = *(v237 + 3);
              v241 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v242 = type metadata accessor for UUID();
              v282 = *(*(v242 - 8) + 16);

              v282(&v235[v241], &v237[v241], v242);
              v243 = *(v286 + 24);
              v244 = &v297[v243];
              v245 = &v236[v243];
              if (*v245)
              {
                v246 = v245[1];
                *v244 = *v245;
                v244[1] = v246;
              }

              else
              {
                *v244 = *v245;
              }

              a3 = v294;
              v17 = v292;
              (*(v274 + 56))(v297, 0, 1, v286);
            }

            *(v15 + __dsta[29]) = *(v16 + __dsta[29]);
            *(v15 + __dsta[30]) = *(v16 + __dsta[30]);
            *(v15 + __dsta[31]) = *(v16 + __dsta[31]);
            *(v15 + __dsta[32]) = *(v16 + __dsta[32]);
            *(v15 + __dsta[33]) = *(v16 + __dsta[33]);
            *(v15 + __dsta[34]) = *(v16 + __dsta[34]);

            goto LABEL_130;
          }

          *(v15 + 864) = v220;
          *(v15 + 872) = *(v16 + 872);
          (**(v220 - 8))(v218, v219);
        }

        else
        {
          v224 = *v219;
          v225 = *(v16 + 856);
          *(v15 + 872) = *(v16 + 872);
          *v218 = v224;
          *(v15 + 856) = v225;
        }

        v226 = *(v16 + 880);
        if (v226)
        {
          v227 = *(v16 + 888);
          *(v15 + 880) = v226;
          *(v15 + 888) = v227;
        }

        else
        {
          *(v15 + 880) = *(v16 + 880);
        }

        goto LABEL_123;
      }

      *(v15 + 624) = v200;
      *(v15 + 632) = *(v16 + 632);
      (**(v200 - 8))(v15 + 600, v16 + 600, v200);
    }

    else
    {
      v203 = *v199;
      v204 = *(v16 + 616);
      *(v15 + 632) = *(v16 + 632);
      *v198 = v203;
      *(v15 + 616) = v204;
    }

    *(v15 + 640) = *(v16 + 640);

    goto LABEL_111;
  }

LABEL_131:
  v247 = *(v17 + 20);
  v248 = *(v16 + v247);
  v249 = *(v15 + v247);
  *(v15 + v247) = v248;
  v250 = v248;

LABEL_132:
  v251 = a3[19];
  v252 = (a1 + v251);
  v253 = (a2 + v251);
  *v252 = *v253;
  v252[1] = v253[1];

  v254 = a3[20];
  v255 = (a1 + v254);
  v256 = (a2 + v254);
  *v255 = *v256;
  v255[1] = v256[1];

  v257 = a3[21];
  v258 = a1 + v257;
  v259 = (a2 + v257);
  v260 = *(a2 + v257 + 24);
  if (*(a1 + v257 + 24))
  {
    if (!v260)
    {
      outlined destroy of MatchedTransitionIdentifier(v258);
      v262 = *(v259 + 1);
      v261 = *(v259 + 2);
      *v258 = *v259;
      *(v258 + 16) = v262;
      *(v258 + 32) = v261;
      goto LABEL_140;
    }

    __swift_assign_boxed_opaque_existential_1(v258, v259);
  }

  else
  {
    if (!v260)
    {
      v263 = *v259;
      v264 = *(v259 + 2);
      *(v258 + 16) = *(v259 + 1);
      *(v258 + 32) = v264;
      *v258 = v263;
      goto LABEL_140;
    }

    *(v258 + 24) = v260;
    *(v258 + 32) = v259[4];
    (**(v260 - 8))(v258, v259);
  }

  *(v258 + 40) = v259[5];
LABEL_140:
  *(a1 + a3[22]) = *(a2 + a3[22]);
  *(a1 + a3[23]) = *(a2 + a3[23]);

  return a1;
}

uint64_t initializeWithTake for ToolbarViewListVisitor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);
  swift_weakTakeInit();
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = a3[18];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v7, v8, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = v8[1];
      *v7 = *v8;
      v7[1] = v13;
      *(v7 + 32) = *(v8 + 32);
      *(v7 + 40) = *(v8 + 40);
      *(v7 + 56) = *(v8 + 56);
      v14 = v8[13];
      v7[12] = v8[12];
      v7[13] = v14;
      v7[14] = v8[14];
      *(v7 + 235) = *(v8 + 235);
      v15 = v8[9];
      v7[8] = v8[8];
      v7[9] = v15;
      v16 = v8[11];
      v7[10] = v8[10];
      v7[11] = v16;
      v17 = v8[5];
      v7[4] = v8[4];
      v7[5] = v17;
      v18 = v8[7];
      v7[6] = v8[6];
      v7[7] = v18;
      v19 = v8[17];
      v7[16] = v8[16];
      v7[17] = v19;
      v20 = v8[23];
      v7[22] = v8[22];
      v7[23] = v20;
      v7[24] = v8[24];
      *(v7 + 50) = *(v8 + 50);
      v21 = v8[19];
      v7[18] = v8[18];
      v7[19] = v21;
      v22 = v8[21];
      v7[20] = v8[20];
      v7[21] = v22;
      v23 = *(v8 + 456);
      *(v7 + 440) = *(v8 + 440);
      *(v7 + 456) = v23;
      *(v7 + 472) = *(v8 + 472);
      v24 = *(v8 + 424);
      *(v7 + 408) = *(v8 + 408);
      *(v7 + 424) = v24;
      v7[30] = v8[30];
      *(v7 + 489) = *(v8 + 489);
      v7[32] = v8[32];
      *(v7 + 528) = *(v8 + 528);
      memcpy(v7 + 536, v8 + 536, 0x130uLL);
      v25 = *(v8 + 856);
      *(v7 + 840) = *(v8 + 840);
      *(v7 + 856) = v25;
      *(v7 + 872) = *(v8 + 872);
      *(v7 + 111) = *(v8 + 111);
      *(v7 + 112) = *(v8 + 112);
      *(v7 + 904) = *(v8 + 904);
      *(v7 + 920) = *(v8 + 920);
      *(v7 + 117) = *(v8 + 117);
      *(v7 + 118) = *(v8 + 118);
      *(v7 + 952) = *(v8 + 952);
      *(v7 + 953) = *(v8 + 953);
      v26 = type metadata accessor for PlatformItemList.Item();
      v27 = v26[28];
      __dst = v7 + v27;
      v28 = v8 + v27;
      v29 = type metadata accessor for CommandOperation();
      v44 = *(v29 - 8);
      if ((*(v44 + 48))(v28, 1, v29))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v28, *(*(v30 - 8) + 64));
      }

      else
      {
        *__dst = *v28;
        v31 = *(v29 + 20);
        v42 = &__dst[v31];
        v43 = &v28[v31];
        v32 = *&v28[v31 + 16];
        *v42 = *&v28[v31];
        *(v42 + 1) = v32;
        v41 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v33 = type metadata accessor for UUID();
        (*(*(v33 - 8) + 32))(&v42[v41], &v43[v41], v33);
        *&__dst[*(v29 + 24)] = *&v28[*(v29 + 24)];
        (*(v44 + 56))();
      }

      *(v7 + v26[29]) = *(v8 + v26[29]);
      *(v7 + v26[30]) = *(v8 + v26[30]);
      *(v7 + v26[31]) = *(v8 + v26[31]);
      *(v7 + v26[32]) = *(v8 + v26[32]);
      *(v7 + v26[33]) = *(v8 + v26[33]);
      *(v7 + v26[34]) = *(v8 + v26[34]);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v12 - 8) + 64));
    }

    *(v7 + *(v9 + 20)) = *(v8 + *(v9 + 20));
    (*(v10 + 56))(v7, 0, 1, v9);
  }

  v34 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v34) = *(a2 + v34);
  v35 = a3[21];
  v36 = a3[22];
  v37 = (a1 + v35);
  v38 = (a2 + v35);
  v39 = v38[1];
  *v37 = *v38;
  v37[1] = v39;
  v37[2] = v38[2];
  *(a1 + v36) = *(a2 + v36);
  *(a1 + a3[23]) = *(a2 + a3[23]);
  return a1;
}

uint64_t assignWithTake for ToolbarViewListVisitor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 72) = *(a2 + 72);
  swift_weakTakeAssign();
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v7;

  v8 = a3[18];
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v15 = v13(v10, 1, v11);
  if (v14)
  {
    if (!v15)
    {
      v16 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v17 = *(v10 + 16);
        *v9 = *v10;
        *(v9 + 16) = v17;
        *(v9 + 32) = *(v10 + 32);
        *(v9 + 40) = *(v10 + 40);
        *(v9 + 56) = *(v10 + 56);
        v18 = *(v10 + 208);
        *(v9 + 192) = *(v10 + 192);
        *(v9 + 208) = v18;
        *(v9 + 224) = *(v10 + 224);
        *(v9 + 235) = *(v10 + 235);
        v19 = *(v10 + 144);
        *(v9 + 128) = *(v10 + 128);
        *(v9 + 144) = v19;
        v20 = *(v10 + 176);
        *(v9 + 160) = *(v10 + 160);
        *(v9 + 176) = v20;
        v21 = *(v10 + 80);
        *(v9 + 64) = *(v10 + 64);
        *(v9 + 80) = v21;
        v22 = *(v10 + 112);
        *(v9 + 96) = *(v10 + 96);
        *(v9 + 112) = v22;
        v23 = *(v10 + 272);
        *(v9 + 256) = *(v10 + 256);
        *(v9 + 272) = v23;
        v24 = *(v10 + 368);
        *(v9 + 352) = *(v10 + 352);
        *(v9 + 368) = v24;
        *(v9 + 384) = *(v10 + 384);
        *(v9 + 400) = *(v10 + 400);
        v25 = *(v10 + 304);
        *(v9 + 288) = *(v10 + 288);
        *(v9 + 304) = v25;
        v26 = *(v10 + 336);
        *(v9 + 320) = *(v10 + 320);
        *(v9 + 336) = v26;
        v27 = *(v10 + 456);
        *(v9 + 440) = *(v10 + 440);
        *(v9 + 456) = v27;
        *(v9 + 472) = *(v10 + 472);
        v28 = *(v10 + 424);
        *(v9 + 408) = *(v10 + 408);
        *(v9 + 424) = v28;
        *(v9 + 480) = *(v10 + 480);
        *(v9 + 489) = *(v10 + 489);
        *(v9 + 512) = *(v10 + 512);
        *(v9 + 528) = *(v10 + 528);
        memcpy((v9 + 536), (v10 + 536), 0x130uLL);
        v29 = *(v10 + 856);
        *(v9 + 840) = *(v10 + 840);
        *(v9 + 856) = v29;
        *(v9 + 872) = *(v10 + 872);
        *(v9 + 888) = *(v10 + 888);
        *(v9 + 896) = *(v10 + 896);
        *(v9 + 904) = *(v10 + 904);
        *(v9 + 920) = *(v10 + 920);
        *(v9 + 936) = *(v10 + 936);
        *(v9 + 944) = *(v10 + 944);
        *(v9 + 952) = *(v10 + 952);
        *(v9 + 953) = *(v10 + 953);
        v30 = type metadata accessor for PlatformItemList.Item();
        v31 = v30[28];
        __dst = (v9 + v31);
        v32 = (v10 + v31);
        v33 = type metadata accessor for CommandOperation();
        v86 = *(v33 - 8);
        if ((*(v86 + 48))(v32, 1, v33))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dst, v32, *(*(v34 - 8) + 64));
        }

        else
        {
          *__dst = *v32;
          v56 = *(v33 + 20);
          v83 = &__dst[v56];
          v84 = &v32[v56];
          v57 = *&v32[v56 + 16];
          *v83 = *&v32[v56];
          *(v83 + 1) = v57;
          v82 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v58 = type metadata accessor for UUID();
          (*(*(v58 - 8) + 32))(&v83[v82], &v84[v82], v58);
          *&__dst[*(v33 + 24)] = *&v32[*(v33 + 24)];
          (*(v86 + 56))();
        }

        *(v9 + v30[29]) = *(v10 + v30[29]);
        *(v9 + v30[30]) = *(v10 + v30[30]);
        *(v9 + v30[31]) = *(v10 + v30[31]);
        *(v9 + v30[32]) = *(v10 + v30[32]);
        *(v9 + v30[33]) = *(v10 + v30[33]);
        *(v9 + v30[34]) = *(v10 + v30[34]);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v9, v10, *(*(v16 - 8) + 64));
      }

      *(v9 + *(v11 + 20)) = *(v10 + *(v11 + 20));
      (*(v12 + 56))(v9, 0, 1, v11);
      goto LABEL_23;
    }

LABEL_10:
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v9, v10, *(*(v35 - 8) + 64));
    goto LABEL_23;
  }

  if (v15)
  {
    _s7SwiftUI16CommandOperationVWOhTm_3(v9, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
    goto LABEL_10;
  }

  if (a1 != a2)
  {
    _s7SwiftUI16CommandOperationVWOhTm_3(v9, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    v36 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 16) = v37;
      *(v9 + 32) = *(v10 + 32);
      *(v9 + 40) = *(v10 + 40);
      *(v9 + 56) = *(v10 + 56);
      v38 = *(v10 + 208);
      *(v9 + 192) = *(v10 + 192);
      *(v9 + 208) = v38;
      *(v9 + 224) = *(v10 + 224);
      *(v9 + 235) = *(v10 + 235);
      v39 = *(v10 + 144);
      *(v9 + 128) = *(v10 + 128);
      *(v9 + 144) = v39;
      v40 = *(v10 + 176);
      *(v9 + 160) = *(v10 + 160);
      *(v9 + 176) = v40;
      v41 = *(v10 + 80);
      *(v9 + 64) = *(v10 + 64);
      *(v9 + 80) = v41;
      v42 = *(v10 + 112);
      *(v9 + 96) = *(v10 + 96);
      *(v9 + 112) = v42;
      v43 = *(v10 + 272);
      *(v9 + 256) = *(v10 + 256);
      *(v9 + 272) = v43;
      v44 = *(v10 + 368);
      *(v9 + 352) = *(v10 + 352);
      *(v9 + 368) = v44;
      *(v9 + 384) = *(v10 + 384);
      *(v9 + 400) = *(v10 + 400);
      v45 = *(v10 + 304);
      *(v9 + 288) = *(v10 + 288);
      *(v9 + 304) = v45;
      v46 = *(v10 + 336);
      *(v9 + 320) = *(v10 + 320);
      *(v9 + 336) = v46;
      v47 = *(v10 + 456);
      *(v9 + 440) = *(v10 + 440);
      *(v9 + 456) = v47;
      *(v9 + 472) = *(v10 + 472);
      v48 = *(v10 + 424);
      *(v9 + 408) = *(v10 + 408);
      *(v9 + 424) = v48;
      *(v9 + 480) = *(v10 + 480);
      *(v9 + 489) = *(v10 + 489);
      *(v9 + 512) = *(v10 + 512);
      *(v9 + 528) = *(v10 + 528);
      memcpy((v9 + 536), (v10 + 536), 0x130uLL);
      v49 = *(v10 + 856);
      *(v9 + 840) = *(v10 + 840);
      *(v9 + 856) = v49;
      *(v9 + 872) = *(v10 + 872);
      *(v9 + 888) = *(v10 + 888);
      *(v9 + 896) = *(v10 + 896);
      *(v9 + 904) = *(v10 + 904);
      *(v9 + 920) = *(v10 + 920);
      *(v9 + 936) = *(v10 + 936);
      *(v9 + 944) = *(v10 + 944);
      *(v9 + 952) = *(v10 + 952);
      *(v9 + 953) = *(v10 + 953);
      v50 = type metadata accessor for PlatformItemList.Item();
      v51 = v50[28];
      __dsta = (v9 + v51);
      v52 = (v10 + v51);
      v53 = type metadata accessor for CommandOperation();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v52, 1, v53))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dsta, v52, *(*(v55 - 8) + 64));
      }

      else
      {
        *__dsta = *v52;
        v59 = *(v53 + 20);
        v87 = &__dsta[v59];
        __src = &v52[v59];
        v60 = *&v52[v59 + 16];
        *v87 = *&v52[v59];
        *(v87 + 1) = v60;
        v85 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v61 = type metadata accessor for UUID();
        (*(*(v61 - 8) + 32))(&v87[v85], &__src[v85], v61);
        *&__dsta[*(v53 + 24)] = *&v52[*(v53 + 24)];
        (*(v54 + 56))();
      }

      *(v9 + v50[29]) = *(v10 + v50[29]);
      *(v9 + v50[30]) = *(v10 + v50[30]);
      *(v9 + v50[31]) = *(v10 + v50[31]);
      *(v9 + v50[32]) = *(v10 + v50[32]);
      *(v9 + v50[33]) = *(v10 + v50[33]);
      *(v9 + v50[34]) = *(v10 + v50[34]);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v9, v10, *(*(v36 - 8) + 64));
    }
  }

  v62 = *(v11 + 20);
  v63 = *(v9 + v62);
  *(v9 + v62) = *(v10 + v62);

LABEL_23:
  v64 = a3[19];
  v65 = (a1 + v64);
  v66 = (a2 + v64);
  v68 = *v66;
  v67 = v66[1];
  *v65 = v68;
  v65[1] = v67;

  v69 = a3[20];
  v70 = (a1 + v69);
  v71 = (a2 + v69);
  v73 = *v71;
  v72 = v71[1];
  *v70 = v73;
  v70[1] = v72;

  v74 = a3[21];
  v75 = a1 + v74;
  v76 = a2 + v74;
  if (!*(a1 + v74 + 24))
  {
LABEL_27:
    v79 = *(v76 + 16);
    *v75 = *v76;
    *(v75 + 16) = v79;
    *(v75 + 32) = *(v76 + 32);
    goto LABEL_28;
  }

  if (!*(v76 + 24))
  {
    outlined destroy of MatchedTransitionIdentifier(v75);
    goto LABEL_27;
  }

  __swift_destroy_boxed_opaque_existential_1(v75);
  v77 = *(v76 + 16);
  *v75 = *v76;
  *(v75 + 16) = v77;
  v78 = *(v76 + 40);
  *(v75 + 32) = *(v76 + 32);
  *(v75 + 40) = v78;
LABEL_28:
  v80 = a3[23];
  *(a1 + a3[22]) = *(a2 + a3[22]);
  *(a1 + v80) = *(a2 + v80);

  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode()
{
  result = lazy protocol witness table cache variable for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode;
  if (!lazy protocol witness table cache variable for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarViewListVisitor.ContinuationMode and conformance ToolbarViewListVisitor.ContinuationMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions()
{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions;
  if (!lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemBridgingOptions and conformance ToolbarItemBridgingOptions);
  }

  return result;
}

uint64_t outlined assign with take of ToolbarStorage.GroupItem.CollapsedContent?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind()
{
  result = lazy protocol witness table cache variable for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind;
  if (!lazy protocol witness table cache variable for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemRole.Kind and conformance ToolbarItemRole.Kind);
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for AccessibilityNode();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t specialized Dictionary.optimisticFilter(_:)(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) < 0x41uLL)
  {
    v3 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    v9 = 0;
    v44 = v1;
    v45 = 0;
    v42 = 1;
    v43 = 1;
    while (v6)
    {
LABEL_13:
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = *(*(v1 + 48) + 4 * v11);
      outlined init with copy of ConfirmationDialog(*(v1 + 56) + 184 * v11, v56);
      v55 = v12;
      v54[0] = v12;
      outlined init with take of ConfirmationDialog(v56, &v54[2]);
      outlined init with copy of BoundInputsView?(v54, &v52, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      LODWORD(v50) = v52;
      outlined init with copy of ConfirmationDialog(v53, &v51);
      outlined init with copy of BoundInputsView?(&v50, &v48, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      v46 = v48;
      outlined init with take of ConfirmationDialog(&v49, v47);
      v13 = v47[0];
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v46, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v50, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      _s7SwiftUI15BoundInputsViewVSgWOhTm_0(v54, &lazy cache variable for type metadata for (key: ViewIdentity, value: ConfirmationDialog), &type metadata for ConfirmationDialog, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
      outlined destroy of ConfirmationDialog(v53);
      if (v13 == 1)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v43 = 0;
        v14 = 1 << v8;
        if (v8 >= 0x40)
        {
          v14 = 0;
        }

        v45 |= v14;
      }

      else
      {
        v42 = 0;
      }

      v6 &= v6 - 1;
      ++v8;
      v1 = v44;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        if (v43)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC18ConfirmationDialogVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v42)
        {

          return v1;
        }

        v16 = 1 << *(v1 + 32);
        v17 = -1;
        if (v16 < 64)
        {
          v17 = ~(-1 << v16);
        }

        v18 = v17 & *(v1 + 64);
        v19 = (v16 + 63) >> 6;

        v20 = 0;
        v21 = 0;
        v22 = MEMORY[0x1E69E7CC8];
        while (v18)
        {
          v23 = v21;
LABEL_38:
          v26 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
          v27 = v26 | (v23 << 6);
          v28 = *(*(v1 + 48) + 4 * v27);
          outlined init with copy of ConfirmationDialog(*(v1 + 56) + 184 * v27, &v52);
          v54[0] = v28;
          outlined init with take of ConfirmationDialog(&v52, &v54[2]);
LABEL_39:
          outlined init with take of (key: ViewIdentity, value: ConfirmationDialog)?(v54, &v55, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?);
          if (!v56[2])
          {

            return v22;
          }

          v29 = v55;
          outlined init with take of ConfirmationDialog(v56, v54);
          if (v20 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v20 < 0x40 && ((v45 >> v20) & 1) != 0)
          {
            outlined init with copy of ConfirmationDialog(v54, &v52);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v22;
            v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
            v33 = v22[2];
            v34 = (v32 & 1) == 0;
            v35 = __OFADD__(v33, v34);
            v36 = v33 + v34;
            if (v35)
            {
              goto LABEL_58;
            }

            v37 = v32;
            if (v22[3] >= v36)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v41 = v31;
                specialized _NativeDictionary.copy()();
                v31 = v41;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
              v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
              if ((v37 & 1) != (v38 & 1))
              {
                goto LABEL_61;
              }
            }

            v22 = v50;
            if (v37)
            {
              outlined assign with take of ConfirmationDialog(&v52, v50[7] + 184 * v31);
              outlined destroy of ConfirmationDialog(v54);
              ++v20;
            }

            else
            {
              v50[(v31 >> 6) + 8] |= 1 << v31;
              *(v22[6] + 4 * v31) = v29;
              outlined init with take of ConfirmationDialog(&v52, v22[7] + 184 * v31);
              outlined destroy of ConfirmationDialog(v54);
              v39 = v22[2];
              v35 = __OFADD__(v39, 1);
              v40 = v39 + 1;
              if (v35)
              {
                goto LABEL_60;
              }

              v22[2] = v40;
              ++v20;
            }
          }

          else
          {
            outlined destroy of ConfirmationDialog(v54);
            ++v20;
          }
        }

        if (v19 <= v21 + 1)
        {
          v24 = v21 + 1;
        }

        else
        {
          v24 = v19;
        }

        v25 = v24 - 1;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v19)
          {
            v18 = 0;
            v21 = v25;
            memset(v54, 0, 186);
            goto LABEL_39;
          }

          v18 = *(v3 + 8 * v23);
          ++v21;
          if (v18)
          {
            v21 = v23;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return specialized _NativeDictionary.filter(_:)(a1, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  }

  return result;
}

{
  v1 = a1;
  if (*(a1 + 16) >= 0x41uLL)
  {
    return specialized _NativeDictionary.filter(_:)(a1, specialized closure #1 in _NativeDictionary.filter(_:), specialized closure #1 in _NativeDictionary.filter(_:));
  }

  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  v121 = 0;
  v119 = 1;
  v13 = 1;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_8:
  v14 = v12;
LABEL_17:
  v17 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v18 = v17 | (v14 << 6);
  LODWORD(v17) = *(*(v1 + 48) + 4 * v18);
  v19 = *(v1 + 56) + 248 * v18;
  v20 = *(v19 + 32);
  v22 = *v19;
  v21 = *(v19 + 16);
  v146 = *(v19 + 48);
  v145 = v20;
  v143 = v22;
  v144 = v21;
  v23 = *(v19 + 96);
  v25 = *(v19 + 64);
  v24 = *(v19 + 80);
  v150 = *(v19 + 112);
  v149 = v23;
  v147 = v25;
  v148 = v24;
  v26 = *(v19 + 160);
  v28 = *(v19 + 128);
  v27 = *(v19 + 144);
  v154 = *(v19 + 176);
  v153 = v26;
  v151 = v28;
  v152 = v27;
  v30 = *(v19 + 208);
  v29 = *(v19 + 224);
  v31 = *(v19 + 192);
  *&v158 = *(v19 + 240);
  v157 = v29;
  v155 = v31;
  v156 = v30;
  *v159 = v17;
  *&v159[200] = v31;
  *&v159[216] = v30;
  *&v159[232] = v29;
  *&v159[248] = v158;
  *&v159[136] = v28;
  *&v159[152] = v152;
  *&v159[168] = v153;
  *&v159[184] = v154;
  *&v159[72] = v147;
  *&v159[88] = v148;
  *&v159[104] = v149;
  *&v159[120] = v150;
  *&v159[8] = v143;
  *&v159[24] = v144;
  *&v159[40] = v145;
  *&v159[56] = v146;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v159, v8, v9, v10);
  outlined init with copy of AlertStorage(&v143, &v140);
  while (1)
  {
    v155 = *&v159[192];
    v156 = *&v159[208];
    v157 = *&v159[224];
    v158 = *&v159[240];
    v151 = *&v159[128];
    v152 = *&v159[144];
    v153 = *&v159[160];
    v154 = *&v159[176];
    v147 = *&v159[64];
    v148 = *&v159[80];
    v149 = *&v159[96];
    v150 = *&v159[112];
    v143 = *v159;
    v144 = *&v159[16];
    v145 = *&v159[32];
    v146 = *&v159[48];
    if (getEnumTag for AccessibilityActionCategory.Category(&v143) == 1)
    {
      break;
    }

    v32 = v159[8];
    v140 = *v159;
    v141[4] = v159[8];
    *&v141[197] = *&v159[201];
    *&v141[213] = *&v159[217];
    *&v141[229] = *&v159[233];
    *&v141[244] = *&v159[248];
    *&v141[133] = *&v159[137];
    *&v141[149] = *&v159[153];
    *&v141[165] = *&v159[169];
    *&v141[181] = *&v159[185];
    *&v141[69] = *&v159[73];
    *&v141[85] = *&v159[89];
    *&v141[101] = *&v159[105];
    *&v141[117] = *&v159[121];
    *&v141[5] = *&v159[9];
    *&v141[21] = *&v159[25];
    *&v141[37] = *&v159[41];
    *&v141[53] = *&v159[57];
    _s7SwiftUI15BoundInputsViewVSgWOhTm_0(&v140, &lazy cache variable for type metadata for (key: ViewIdentity, value: AlertStorage), &type metadata for AlertStorage, type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog));
    if (v32)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      v13 = 0;
      v33 = 1 << v11;
      if (v11 >= 0x40)
      {
        v33 = 0;
      }

      v121 |= v33;
      ++v11;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v119 = 0;
      ++v11;
      if (v6)
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    if (v7 <= v12 + 1)
    {
      v15 = v12 + 1;
    }

    else
    {
      v15 = v7;
    }

    v16 = v15 - 1;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v14 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v14);
      ++v12;
      if (v6)
      {
        v12 = v14;
        goto LABEL_17;
      }
    }

    _s7SwiftUI12ViewIdentityV_AA12AlertStorageVtSgWOi0_(&v143);
    v6 = 0;
    *&v159[192] = v155;
    *&v159[208] = v156;
    *&v159[224] = v157;
    *&v159[240] = v158;
    *&v159[128] = v151;
    *&v159[144] = v152;
    *&v159[160] = v153;
    *&v159[176] = v154;
    *&v159[64] = v147;
    *&v159[80] = v148;
    *&v159[96] = v149;
    *&v159[112] = v150;
    *v159 = v143;
    *&v159[16] = v144;
    v12 = v16;
    *&v159[32] = v145;
    *&v159[48] = v146;
  }

  if (v13)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC12AlertStorageVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  if (v119)
  {

    return v1;
  }

  v35 = 1 << *(v1 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v1 + 64);
  v38 = (v35 + 63) >> 6;

  v42 = 0;
  v43 = 0;
  v44 = MEMORY[0x1E69E7CC8];
  v120 = v1;
  while (v37)
  {
    v45 = v43;
LABEL_47:
    v48 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v49 = v48 | (v45 << 6);
    v50 = *(*(v1 + 48) + 4 * v49);
    v51 = *(v1 + 56) + 248 * v49;
    v52 = *(v51 + 48);
    v54 = *v51;
    v53 = *(v51 + 16);
    v125 = *(v51 + 32);
    v126 = v52;
    v123 = v54;
    v124 = v53;
    v55 = *(v51 + 112);
    v57 = *(v51 + 64);
    v56 = *(v51 + 80);
    v129 = *(v51 + 96);
    v130 = v55;
    v127 = v57;
    v128 = v56;
    v58 = *(v51 + 176);
    v60 = *(v51 + 128);
    v59 = *(v51 + 144);
    v133 = *(v51 + 160);
    v134 = v58;
    v131 = v60;
    v132 = v59;
    v62 = *(v51 + 208);
    v61 = *(v51 + 224);
    v63 = *(v51 + 192);
    v138 = *(v51 + 240);
    v136 = v62;
    v137 = v61;
    v135 = v63;
    *&v139[196] = *(v51 + 192);
    *&v139[212] = *(v51 + 208);
    *&v139[228] = *(v51 + 224);
    *&v139[244] = *(v51 + 240);
    *&v139[132] = *(v51 + 128);
    *&v139[148] = *(v51 + 144);
    *&v139[164] = *(v51 + 160);
    *&v139[180] = *(v51 + 176);
    *&v139[68] = *(v51 + 64);
    *&v139[84] = *(v51 + 80);
    *&v139[100] = *(v51 + 96);
    *&v139[116] = *(v51 + 112);
    *&v139[4] = *v51;
    *&v139[20] = *(v51 + 16);
    *&v139[36] = *(v51 + 32);
    *&v139[52] = *(v51 + 48);
    v140 = v50;
    *&v141[192] = *&v139[192];
    *&v141[208] = *&v139[208];
    *&v141[224] = *&v139[224];
    *&v141[236] = *&v139[236];
    *&v141[128] = *&v139[128];
    *&v141[144] = *&v139[144];
    *&v141[160] = *&v139[160];
    *&v141[176] = *&v139[176];
    *&v141[64] = *&v139[64];
    *&v141[80] = *&v139[80];
    *&v141[96] = *&v139[96];
    *&v141[112] = *&v139[112];
    *v141 = *v139;
    *&v141[16] = *&v139[16];
    *&v141[32] = *&v139[32];
    *&v141[48] = *&v139[48];
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v140, v39, v40, v41);
    outlined init with copy of AlertStorage(&v123, &v122);
    v64 = v140;
    *&v142[192] = *&v141[192];
    *&v142[208] = *&v141[208];
    *&v142[224] = *&v141[224];
    *&v142[236] = *&v141[236];
    *&v142[128] = *&v141[128];
    *&v142[144] = *&v141[144];
    *&v142[160] = *&v141[160];
    *&v142[176] = *&v141[176];
    *&v142[64] = *&v141[64];
    *&v142[80] = *&v141[80];
    *&v142[96] = *&v141[96];
    *&v142[112] = *&v141[112];
    *v142 = *v141;
    *&v142[16] = *&v141[16];
    v65 = *&v141[32];
    v66 = *&v141[48];
LABEL_48:
    *&v142[32] = v65;
    *&v142[48] = v66;
    *&v141[192] = *&v142[192];
    *&v141[208] = *&v142[208];
    *&v141[224] = *&v142[224];
    *&v141[236] = *&v142[236];
    *&v141[128] = *&v142[128];
    *&v141[144] = *&v142[144];
    *&v141[160] = *&v142[160];
    *&v141[176] = *&v142[176];
    *&v141[64] = *&v142[64];
    *&v141[80] = *&v142[80];
    *&v141[96] = *&v142[96];
    *&v141[112] = *&v142[112];
    *v141 = *v142;
    *&v141[16] = *&v142[16];
    *&v141[32] = v65;
    *&v141[48] = v66;
    v67 = v64;
    v140 = v64;
    if (getEnumTag for AccessibilityActionCategory.Category(&v140) == 1)
    {

      return v44;
    }

    *&v139[192] = *&v142[196];
    *&v139[208] = *&v142[212];
    *&v139[224] = *&v142[228];
    *&v139[240] = *&v142[244];
    *&v139[128] = *&v142[132];
    *&v139[144] = *&v142[148];
    *&v139[160] = *&v142[164];
    *&v139[176] = *&v142[180];
    *&v139[64] = *&v142[68];
    *&v139[80] = *&v142[84];
    *&v139[96] = *&v142[100];
    *&v139[112] = *&v142[116];
    *v139 = *&v142[4];
    *&v139[16] = *&v142[20];
    *&v139[32] = *&v142[36];
    *&v139[48] = *&v142[52];
    if (v42 == 0x8000000000000000)
    {
      goto LABEL_67;
    }

    if (v42 >= 0x40 || ((v121 >> v42) & 1) == 0)
    {
      outlined destroy of AlertStorage(v139);
      goto LABEL_36;
    }

    v118 = v42;
    outlined init with copy of AlertStorage(v139, &v123);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v44;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
    v71 = v44[2];
    v72 = (v70 & 1) == 0;
    v73 = __OFADD__(v71, v72);
    v74 = v71 + v72;
    if (v73)
    {
      goto LABEL_68;
    }

    v75 = v70;
    if (v44[3] < v74)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, isUniquelyReferenced_nonNull_native);
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
      if ((v75 & 1) != (v76 & 1))
      {
        goto LABEL_70;
      }

LABEL_58:
      if (v75)
      {
        goto LABEL_59;
      }

      goto LABEL_61;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_58;
    }

    v102 = v69;
    specialized _NativeDictionary.copy()();
    v69 = v102;
    if (v75)
    {
LABEL_59:
      v44 = v122;
      v77 = v122[7] + 248 * v69;
      v78 = *(v77 + 48);
      v80 = *v77;
      v79 = *(v77 + 16);
      v125 = *(v77 + 32);
      v126 = v78;
      v123 = v80;
      v124 = v79;
      v81 = *(v77 + 112);
      v83 = *(v77 + 64);
      v82 = *(v77 + 80);
      v129 = *(v77 + 96);
      v130 = v81;
      v127 = v83;
      v128 = v82;
      v84 = *(v77 + 176);
      v86 = *(v77 + 128);
      v85 = *(v77 + 144);
      v133 = *(v77 + 160);
      v134 = v84;
      v131 = v86;
      v132 = v85;
      v88 = *(v77 + 208);
      v87 = *(v77 + 224);
      v89 = *(v77 + 192);
      v138 = *(v77 + 240);
      v136 = v88;
      v137 = v87;
      v135 = v89;
      v90 = *v139;
      v91 = *&v139[16];
      v92 = *&v139[48];
      *(v77 + 32) = *&v139[32];
      *(v77 + 48) = v92;
      *v77 = v90;
      *(v77 + 16) = v91;
      v93 = *&v139[64];
      v94 = *&v139[80];
      v95 = *&v139[112];
      *(v77 + 96) = *&v139[96];
      *(v77 + 112) = v95;
      *(v77 + 64) = v93;
      *(v77 + 80) = v94;
      v96 = *&v139[128];
      v97 = *&v139[144];
      v98 = *&v139[176];
      *(v77 + 160) = *&v139[160];
      *(v77 + 176) = v98;
      *(v77 + 128) = v96;
      *(v77 + 144) = v97;
      v99 = *&v139[192];
      v100 = *&v139[208];
      v101 = *&v139[224];
      *(v77 + 240) = *&v139[240];
      *(v77 + 208) = v100;
      *(v77 + 224) = v101;
      *(v77 + 192) = v99;
      outlined destroy of AlertStorage(&v123);
      outlined destroy of AlertStorage(v139);
      v42 = v118;
      goto LABEL_36;
    }

LABEL_61:
    v44 = v122;
    v122[(v69 >> 6) + 8] |= 1 << v69;
    *(v44[6] + 4 * v69) = v67;
    v103 = v44[7] + 248 * v69;
    v104 = *&v139[48];
    v106 = *v139;
    v105 = *&v139[16];
    *(v103 + 32) = *&v139[32];
    *(v103 + 48) = v104;
    *v103 = v106;
    *(v103 + 16) = v105;
    v107 = *&v139[112];
    v109 = *&v139[64];
    v108 = *&v139[80];
    *(v103 + 96) = *&v139[96];
    *(v103 + 112) = v107;
    *(v103 + 64) = v109;
    *(v103 + 80) = v108;
    v110 = *&v139[176];
    v112 = *&v139[128];
    v111 = *&v139[144];
    *(v103 + 160) = *&v139[160];
    *(v103 + 176) = v110;
    *(v103 + 128) = v112;
    *(v103 + 144) = v111;
    v113 = *&v139[192];
    v114 = *&v139[208];
    v115 = *&v139[224];
    *(v103 + 240) = *&v139[240];
    *(v103 + 208) = v114;
    *(v103 + 224) = v115;
    *(v103 + 192) = v113;
    outlined destroy of AlertStorage(v139);
    v116 = v44[2];
    v73 = __OFADD__(v116, 1);
    v117 = v116 + 1;
    if (v73)
    {
      goto LABEL_69;
    }

    v44[2] = v117;
    v42 = v118;
LABEL_36:
    ++v42;
    v1 = v120;
  }

  if (v38 <= v43 + 1)
  {
    v46 = v43 + 1;
  }

  else
  {
    v46 = v38;
  }

  v47 = v46 - 1;
  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v38)
    {
      _s7SwiftUI12ViewIdentityV_AA12AlertStorageVtSgWOi0_(&v140);
      v37 = 0;
      v64 = v140;
      *&v142[192] = *&v141[192];
      *&v142[208] = *&v141[208];
      *&v142[224] = *&v141[224];
      *&v142[236] = *&v141[236];
      *&v142[128] = *&v141[128];
      *&v142[144] = *&v141[144];
      *&v142[160] = *&v141[160];
      *&v142[176] = *&v141[176];
      *&v142[64] = *&v141[64];
      *&v142[80] = *&v141[80];
      *&v142[96] = *&v141[96];
      *&v142[112] = *&v141[112];
      *v142 = *v141;
      *&v142[16] = *&v141[16];
      v65 = *&v141[32];
      v66 = *&v141[48];
      v43 = v47;
      goto LABEL_48;
    }

    v37 = *(v3 + 8 * v45);
    ++v43;
    if (v37)
    {
      v43 = v45;
      goto LABEL_47;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}