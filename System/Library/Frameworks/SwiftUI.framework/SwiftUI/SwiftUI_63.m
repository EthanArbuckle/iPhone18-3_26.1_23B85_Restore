_OWORD *initializeWithTake for ToolbarContentDescription(_OWORD *a1, _OWORD *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  *(a1 + 41) = *(a2 + 41);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    type metadata accessor for ToolbarStorage.NavigationProperties?(0);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    *v8 = *v9;
    *(v8 + 8) = *(v9 + 8);
    v8[2] = v9[2];
    *(v8 + 24) = *(v9 + 24);
    swift_unknownObjectWeakTakeInit();
    v13 = v9[6];
    v8[5] = v9[5];
    v8[6] = v13;
    v14 = *(v10 + 32);
    v15 = (v8 + v14);
    v16 = (v9 + v14);
    v17 = type metadata accessor for PlatformItemList.Item();
    v18 = *(v17 - 1);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v53 = v18;
      v20 = v16[1];
      *v15 = *v16;
      v15[1] = v20;
      *(v15 + 32) = *(v16 + 32);
      *(v15 + 40) = *(v16 + 40);
      *(v15 + 56) = *(v16 + 56);
      v21 = v16[13];
      v15[12] = v16[12];
      v15[13] = v21;
      v15[14] = v16[14];
      *(v15 + 235) = *(v16 + 235);
      v22 = v16[9];
      v15[8] = v16[8];
      v15[9] = v22;
      v23 = v16[11];
      v15[10] = v16[10];
      v15[11] = v23;
      v24 = v16[5];
      v15[4] = v16[4];
      v15[5] = v24;
      v25 = v16[7];
      v15[6] = v16[6];
      v15[7] = v25;
      v26 = v16[17];
      v15[16] = v16[16];
      v15[17] = v26;
      v27 = v16[23];
      v15[22] = v16[22];
      v15[23] = v27;
      v15[24] = v16[24];
      *(v15 + 50) = *(v16 + 50);
      v28 = v16[19];
      v15[18] = v16[18];
      v15[19] = v28;
      v29 = v16[21];
      v15[20] = v16[20];
      v15[21] = v29;
      v30 = *(v16 + 456);
      *(v15 + 440) = *(v16 + 440);
      *(v15 + 456) = v30;
      *(v15 + 472) = *(v16 + 472);
      v31 = *(v16 + 424);
      *(v15 + 408) = *(v16 + 408);
      *(v15 + 424) = v31;
      v15[30] = v16[30];
      *(v15 + 489) = *(v16 + 489);
      v15[32] = v16[32];
      *(v15 + 528) = *(v16 + 528);
      memcpy(v15 + 536, v16 + 536, 0x130uLL);
      v32 = *(v16 + 856);
      *(v15 + 840) = *(v16 + 840);
      *(v15 + 856) = v32;
      *(v15 + 872) = *(v16 + 872);
      *(v15 + 111) = *(v16 + 111);
      *(v15 + 112) = *(v16 + 112);
      *(v15 + 904) = *(v16 + 904);
      *(v15 + 920) = *(v16 + 920);
      *(v15 + 117) = *(v16 + 117);
      *(v15 + 118) = *(v16 + 118);
      *(v15 + 952) = *(v16 + 952);
      *(v15 + 953) = *(v16 + 953);
      v33 = v17[28];
      v55 = v15 + v33;
      v34 = v16 + v33;
      v35 = type metadata accessor for CommandOperation();
      v52 = *(v35 - 8);
      v54 = v34;
      v36 = v34;
      v37 = v35;
      if ((*(v52 + 48))(v36, 1))
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(v55, v54, *(*(v38 - 8) + 64));
      }

      else
      {
        *v55 = *v54;
        v39 = *(v37 + 20);
        v50 = &v55[v39];
        v51 = &v54[v39];
        v40 = *&v54[v39 + 16];
        *v50 = *&v54[v39];
        *(v50 + 1) = v40;
        v49 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v41 = type metadata accessor for UUID();
        (*(*(v41 - 8) + 32))(&v50[v49], &v51[v49], v41);
        *&v55[*(v37 + 24)] = *&v54[*(v37 + 24)];
        (*(v52 + 56))();
      }

      *(v15 + v17[29]) = *(v16 + v17[29]);
      *(v15 + v17[30]) = *(v16 + v17[30]);
      *(v15 + v17[31]) = *(v16 + v17[31]);
      *(v15 + v17[32]) = *(v16 + v17[32]);
      *(v15 + v17[33]) = *(v16 + v17[33]);
      *(v15 + v17[34]) = *(v16 + v17[34]);
      (*(v53 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v8, 0, 1, v10);
  }

  v42 = a3[6];
  v43 = a3[7];
  v44 = a1 + v42;
  v45 = a2 + v42;
  v46 = *(v45 + 3);
  *(v44 + 2) = *(v45 + 2);
  *(v44 + 3) = v46;
  *(v44 + 8) = *(v45 + 8);
  v47 = *(v45 + 1);
  *v44 = *v45;
  *(v44 + 1) = v47;
  *(a1 + v43) = *(a2 + v43);
  return a1;
}

uint64_t assignWithTake for ToolbarContentDescription(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a1 + 24);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 24);
  if (v7 == 1)
  {
    outlined destroy of NavigationTitleStorage(a1);
LABEL_4:
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 41) = *(a2 + 41);
    goto LABEL_16;
  }

  if (v6)
  {
    if (v7)
    {
      v9 = *(a2 + 16);
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_10;
    }

    outlined destroy of Text(a1);
  }

  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
LABEL_10:
  v14 = (a1 + 32);
  v15 = *(a2 + 32);
  if (*(a1 + 32) != 1)
  {
    if (v15 != 1)
    {
      *v14 = v15;

      goto LABEL_15;
    }

    outlined destroy of Transaction(a1 + 32);
    v15 = *(a2 + 32);
  }

  *v14 = v15;
LABEL_15:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
LABEL_16:
  v16 = a3[5];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v21(v17, 1, v19);
  v23 = v21(v18, 1, v19);
  if (!v22)
  {
    if (v23)
    {
      outlined destroy of CommandOperation(v17, type metadata accessor for ToolbarStorage.NavigationProperties);
      goto LABEL_22;
    }

    v35 = *(v17 + 8);
    if (v35 != 255)
    {
      v36 = *(v18 + 8);
      if (v36 != 255)
      {
        v37 = *v17;
        *v17 = *v18;
        *(v17 + 8) = v36 & 1;
        outlined consume of ResolvableCLKTextProvider.FontStorage(v37, v35 & 1);
        goto LABEL_31;
      }

      outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v17);
    }

    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
LABEL_31:
    v55 = *(v17 + 24);
    v233 = a3;
    if (v55 != 254)
    {
      v56 = *(v18 + 24);
      if (v56 == 254)
      {
        outlined destroy of ToolbarStorage.NavigationProperties.Actions(v17 + 16);
      }

      else if (v55 != 255)
      {
        if (v56 != 255)
        {
          v57 = *(v17 + 16);
          *(v17 + 16) = *(v18 + 16);
          *(v17 + 24) = v56 & 1;
          outlined consume of PlatformItemCollection.Storage(v57, v55 & 1);
          goto LABEL_53;
        }

        outlined destroy of PlatformItemCollection(v17 + 16);
      }
    }

    *(v17 + 16) = *(v18 + 16);
    *(v17 + 24) = *(v18 + 24);
LABEL_53:
    swift_unknownObjectWeakTakeAssign();
    v68 = *(v17 + 48);
    *(v17 + 40) = *(v18 + 40);

    v69 = *(v19 + 32);
    v70 = v17 + v69;
    v71 = v18 + v69;
    v72 = type metadata accessor for PlatformItemList.Item();
    v73 = *(v72 - 1);
    v74 = *(v73 + 48);
    v75 = v74(v70, 1, v72);
    v76 = v74(v71, 1, v72);
    if (v75)
    {
      if (v76)
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
        memcpy(v70, v71, *(*(v77 - 8) + 64));
        a3 = v233;
      }

      else
      {
        v79 = *(v71 + 16);
        *v70 = *v71;
        *(v70 + 16) = v79;
        *(v70 + 32) = *(v71 + 32);
        *(v70 + 40) = *(v71 + 40);
        *(v70 + 56) = *(v71 + 56);
        v80 = *(v71 + 208);
        *(v70 + 192) = *(v71 + 192);
        *(v70 + 208) = v80;
        *(v70 + 224) = *(v71 + 224);
        *(v70 + 235) = *(v71 + 235);
        v81 = *(v71 + 144);
        *(v70 + 128) = *(v71 + 128);
        *(v70 + 144) = v81;
        v82 = *(v71 + 176);
        *(v70 + 160) = *(v71 + 160);
        *(v70 + 176) = v82;
        v83 = *(v71 + 80);
        *(v70 + 64) = *(v71 + 64);
        *(v70 + 80) = v83;
        v84 = *(v71 + 112);
        *(v70 + 96) = *(v71 + 96);
        *(v70 + 112) = v84;
        v85 = *(v71 + 272);
        *(v70 + 256) = *(v71 + 256);
        *(v70 + 272) = v85;
        v86 = *(v71 + 368);
        *(v70 + 352) = *(v71 + 352);
        *(v70 + 368) = v86;
        *(v70 + 384) = *(v71 + 384);
        *(v70 + 400) = *(v71 + 400);
        v87 = *(v71 + 304);
        *(v70 + 288) = *(v71 + 288);
        *(v70 + 304) = v87;
        v88 = *(v71 + 336);
        *(v70 + 320) = *(v71 + 320);
        *(v70 + 336) = v88;
        v89 = *(v71 + 456);
        *(v70 + 440) = *(v71 + 440);
        *(v70 + 456) = v89;
        *(v70 + 472) = *(v71 + 472);
        v90 = *(v71 + 424);
        *(v70 + 408) = *(v71 + 408);
        *(v70 + 424) = v90;
        *(v70 + 480) = *(v71 + 480);
        *(v70 + 489) = *(v71 + 489);
        *(v70 + 512) = *(v71 + 512);
        *(v70 + 528) = *(v71 + 528);
        memcpy((v70 + 536), (v71 + 536), 0x130uLL);
        v91 = *(v71 + 856);
        *(v70 + 840) = *(v71 + 840);
        *(v70 + 856) = v91;
        *(v70 + 872) = *(v71 + 872);
        *(v70 + 888) = *(v71 + 888);
        *(v70 + 896) = *(v71 + 896);
        *(v70 + 904) = *(v71 + 904);
        *(v70 + 920) = *(v71 + 920);
        *(v70 + 936) = *(v71 + 936);
        *(v70 + 944) = *(v71 + 944);
        *(v70 + 952) = *(v71 + 952);
        *(v70 + 953) = *(v71 + 953);
        v92 = v72[28];
        v93 = (v70 + v92);
        v94 = (v71 + v92);
        v95 = type metadata accessor for CommandOperation();
        v96 = *(v95 - 8);
        if ((*(v96 + 48))(v94, 1, v95))
        {
          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
          memcpy(v93, v94, *(*(v97 - 8) + 64));
        }

        else
        {
          *v93 = *v94;
          v107 = *(v95 + 20);
          v227 = v93;
          __dstb = v72;
          v108 = &v93[v107];
          v109 = &v94[v107];
          v110 = *&v94[v107 + 16];
          *v108 = *&v94[v107];
          v108[1] = v110;
          __srca = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v111 = type metadata accessor for UUID();
          v112 = &__srca[v108];
          v72 = __dstb;
          (*(*(v111 - 8) + 32))(v112, &__srca[v109], v111);
          *&v227[*(v95 + 24)] = *&v94[*(v95 + 24)];
          (*(v96 + 56))();
        }

        *(v70 + v72[29]) = *(v71 + v72[29]);
        *(v70 + v72[30]) = *(v71 + v72[30]);
        *(v70 + v72[31]) = *(v71 + v72[31]);
        *(v70 + v72[32]) = *(v71 + v72[32]);
        *(v70 + v72[33]) = *(v71 + v72[33]);
        *(v70 + v72[34]) = *(v71 + v72[34]);
        (*(v73 + 56))(v70, 0, 1, v72);
        a3 = v233;
      }

      goto LABEL_40;
    }

    a3 = v233;
    if (v76)
    {
      outlined destroy of CommandOperation(v70, type metadata accessor for PlatformItemList.Item);
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      v32 = *(*(v78 - 8) + 64);
      v33 = v70;
      v34 = v71;
      goto LABEL_23;
    }

    v98 = *v70;
    *v70 = *v71;

    v99 = *(v70 + 8);
    *(v70 + 8) = *(v71 + 8);

    v100 = *(v71 + 24);
    *(v70 + 16) = *(v71 + 16);
    *(v70 + 24) = v100;

    *(v70 + 32) = *(v71 + 32);
    v101 = *(v71 + 48);
    *(v70 + 40) = *(v71 + 40);
    *(v70 + 48) = v101;

    *(v70 + 56) = *(v71 + 56);
    if (*(v70 + 192) >> 1 == 4294967294)
    {
      goto LABEL_63;
    }

    if (*(v71 + 192) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(v70 + 64);
LABEL_63:
      v102 = *(v71 + 208);
      *(v70 + 192) = *(v71 + 192);
      *(v70 + 208) = v102;
      *(v70 + 224) = *(v71 + 224);
      *(v70 + 235) = *(v71 + 235);
      v103 = *(v71 + 144);
      *(v70 + 128) = *(v71 + 128);
      *(v70 + 144) = v103;
      v104 = *(v71 + 176);
      *(v70 + 160) = *(v71 + 160);
      *(v70 + 176) = v104;
      v105 = *(v71 + 80);
      *(v70 + 64) = *(v71 + 64);
      *(v70 + 80) = v105;
      v106 = *(v71 + 112);
      *(v70 + 96) = *(v71 + 96);
      *(v70 + 112) = v106;
      goto LABEL_77;
    }

    v113 = *(v70 + 72);
    if (v113 != 255)
    {
      v114 = *(v71 + 72);
      if (v114 != 255)
      {
        v115 = *(v70 + 64);
        *(v70 + 64) = *(v71 + 64);
        *(v70 + 72) = v114;
        outlined consume of GraphicsImage.Contents(v115, v113);
        goto LABEL_71;
      }

      outlined destroy of GraphicsImage.Contents(v70 + 64);
    }

    *(v70 + 64) = *(v71 + 64);
    *(v70 + 72) = *(v71 + 72);
LABEL_71:
    *(v70 + 80) = *(v71 + 80);
    *(v70 + 96) = *(v71 + 96);
    *(v70 + 104) = *(v71 + 104);
    *(v70 + 108) = *(v71 + 108);
    *(v70 + 121) = *(v71 + 121);
    *(v70 + 136) = *(v71 + 136);
    *(v70 + 152) = *(v71 + 152);
    *(v70 + 168) = *(v71 + 168);
    *(v70 + 169) = *(v71 + 169);
    v116 = *(v70 + 192);
    *(v70 + 170) = *(v71 + 170);
    if (v116 >> 1 != 0xFFFFFFFF)
    {
      v117 = *(v71 + 192);
      if (v117 >> 1 != 0xFFFFFFFF)
      {
        v119 = *(v71 + 200);
        v120 = *(v70 + 176);
        v121 = *(v70 + 184);
        *(v70 + 176) = *(v71 + 176);
        *(v70 + 192) = v117;
        *(v70 + 200) = v119;
        outlined consume of AccessibilityImageLabel(v120, v121, v116);
        goto LABEL_76;
      }

      outlined destroy of AccessibilityImageLabel(v70 + 176);
    }

    v118 = *(v71 + 192);
    *(v70 + 176) = *(v71 + 176);
    *(v70 + 192) = v118;
LABEL_76:
    *(v70 + 208) = *(v71 + 208);
    swift_unknownObjectRelease();
    *(v70 + 216) = *(v71 + 216);

    *(v70 + 224) = *(v71 + 224);
    *(v70 + 225) = *(v71 + 225);
    *(v70 + 228) = *(v71 + 228);
    *(v70 + 232) = *(v71 + 232);
    v122 = *(v70 + 240);
    *(v70 + 240) = *(v71 + 240);

    *(v70 + 248) = *(v71 + 248);
    *(v70 + 250) = *(v71 + 250);
LABEL_77:
    if (*(v70 + 264))
    {
      v123 = *(v71 + 264);
      if (v123)
      {
        *(v70 + 256) = *(v71 + 256);
        *(v70 + 264) = v123;

        v124 = *(v70 + 272);
        v125 = *(v71 + 272);
        if (v124 >= 2)
        {
          if (v125 >= 2)
          {
            *(v70 + 272) = v125;
          }

          else
          {

            *(v70 + 272) = *(v71 + 272);
          }
        }

        else
        {
          *(v70 + 272) = v125;
        }

        *(v70 + 280) = *(v71 + 280);
        *(v70 + 284) = *(v71 + 284);
        *(v70 + 286) = *(v71 + 286);
        *(v70 + 288) = *(v71 + 288);

        *(v70 + 296) = *(v71 + 296);

LABEL_87:
        v127 = *(v70 + 336);
        if (v127 >> 2 != 0xFFFFFFFF)
        {
          v128 = *(v71 + 336);
          if (v128 >> 2 != 0xFFFFFFFF)
          {
            v132 = *(v70 + 304);
            v133 = *(v70 + 312);
            v134 = *(v70 + 320);
            v135 = *(v70 + 328);
            v136 = *(v70 + 344);
            v137 = *(v70 + 352);
            v138 = *(v70 + 360);
            v139 = *(v70 + 368);
            v140 = *(v70 + 384);
            v141 = *(v70 + 400);
            v142 = *(v71 + 320);
            *(v70 + 304) = *(v71 + 304);
            *(v70 + 320) = v142;
            *(v70 + 336) = v128;
            *(v70 + 344) = *(v71 + 344);
            *(v70 + 360) = *(v71 + 360);
            *(v70 + 376) = *(v71 + 376);
            *(v70 + 392) = *(v71 + 392);
            outlined consume of PlatformItemList.Item.SystemItem(v132, v133, v134, v135, v127, v136, v137, v138, v139, *(&v139 + 1), v140, SBYTE8(v140), v141);
LABEL_92:
            v143 = (v71 + 408);
            v144 = *(v70 + 416);
            if (v144 == 1)
            {
LABEL_95:
              v146 = *(v71 + 456);
              *(v70 + 440) = *(v71 + 440);
              *(v70 + 456) = v146;
              *(v70 + 472) = *(v71 + 472);
              v147 = *(v71 + 424);
              *(v70 + 408) = *v143;
              *(v70 + 424) = v147;
              goto LABEL_118;
            }

            v145 = *(v71 + 416);
            if (v145 == 1)
            {
              outlined destroy of PlatformItemList.Item.SelectionBehavior(v70 + 408);
              goto LABEL_95;
            }

            *(v70 + 408) = *v143;
            *(v70 + 409) = *(v71 + 409);
            *(v70 + 410) = *(v71 + 410);
            *(v70 + 411) = *(v71 + 411);
            *(v70 + 412) = *(v71 + 412);
            if (v144)
            {
              if (v145)
              {
                v148 = *(v71 + 424);
                *(v70 + 416) = v145;
                *(v70 + 424) = v148;

                goto LABEL_103;
              }
            }

            else if (v145)
            {
              v149 = *(v71 + 424);
              *(v70 + 416) = v145;
              *(v70 + 424) = v149;
              goto LABEL_103;
            }

            *(v70 + 416) = *(v71 + 416);
LABEL_103:
            v150 = *(v71 + 432);
            if (*(v70 + 432))
            {
              if (v150)
              {
                v151 = *(v71 + 440);
                *(v70 + 432) = v150;
                *(v70 + 440) = v151;

                goto LABEL_110;
              }
            }

            else if (v150)
            {
              v152 = *(v71 + 440);
              *(v70 + 432) = v150;
              *(v70 + 440) = v152;
              goto LABEL_110;
            }

            *(v70 + 432) = *(v71 + 432);
LABEL_110:
            v153 = *(v71 + 448);
            if (*(v70 + 448))
            {
              if (v153)
              {
                v154 = *(v71 + 456);
                *(v70 + 448) = v153;
                *(v70 + 456) = v154;

LABEL_117:
                *(v70 + 464) = *(v71 + 464);
                *(v70 + 472) = *(v71 + 472);
LABEL_118:
                v156 = *(v71 + 488);
                *(v70 + 480) = *(v71 + 480);
                *(v70 + 488) = v156;

                *(v70 + 496) = *(v71 + 496);
                *(v70 + 504) = *(v71 + 504);
                v157 = *(v71 + 512);
                if (*(v70 + 512))
                {
                  if (v157)
                  {
                    v158 = *(v71 + 520);
                    *(v70 + 512) = v157;
                    *(v70 + 520) = v158;

                    goto LABEL_125;
                  }
                }

                else if (v157)
                {
                  v159 = *(v71 + 520);
                  *(v70 + 512) = v157;
                  *(v70 + 520) = v159;
                  goto LABEL_125;
                }

                *(v70 + 512) = *(v71 + 512);
LABEL_125:
                *(v70 + 528) = *(v71 + 528);
                if (*(v70 + 816))
                {
                  if (*(v71 + 816))
                  {
                    *(v70 + 536) = *(v71 + 536);
                    *(v70 + 544) = *(v71 + 544);

                    *(v70 + 552) = *(v71 + 552);
                    *(v70 + 560) = *(v71 + 560);

                    *(v70 + 568) = *(v71 + 568);
                    *(v70 + 576) = *(v71 + 576);
                    *(v70 + 592) = *(v71 + 592);
                    v160 = (v70 + 600);
                    v161 = (v71 + 600);
                    v162 = *(v70 + 624);
                    if (v162 != 1)
                    {
                      v163 = *(v71 + 624);
                      if (v163 != 1)
                      {
                        if (v162)
                        {
                          v165 = v70 + 600;
                          if (v163)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v165);
                          }

                          else
                          {
                            outlined destroy of AnyAccessibilityValue(v165);
                          }
                        }

                        v166 = *(v71 + 616);
                        *v160 = *v161;
                        *(v70 + 616) = v166;
                        *(v70 + 632) = *(v71 + 632);
                        *(v70 + 640) = *(v71 + 640);

LABEL_138:
                        *(v70 + 648) = *(v71 + 648);
                        *(v70 + 656) = *(v71 + 656);
                        v167 = (v70 + 664);
                        v168 = (v71 + 664);
                        if (*(v70 + 776) != 1)
                        {
                          v169 = *(v71 + 776);
                          if (v169 != 1)
                          {
                            *v167 = *v168;
                            *(v70 + 672) = *(v71 + 672);
                            *(v70 + 680) = *(v71 + 680);
                            *(v70 + 688) = *(v71 + 688);
                            *(v70 + 689) = *(v71 + 689);
                            *(v70 + 691) = *(v71 + 691);
                            *(v70 + 692) = *(v71 + 692);
                            *(v70 + 696) = *(v71 + 696);
                            v174 = *(v71 + 720);
                            *(v70 + 704) = *(v71 + 704);
                            *(v70 + 720) = v174;
                            *(v70 + 736) = *(v71 + 736);
                            *(v70 + 744) = *(v71 + 744);
                            *(v70 + 745) = *(v71 + 745);
                            *(v70 + 752) = *(v71 + 752);
                            *(v70 + 768) = *(v71 + 768);
                            *(v70 + 776) = v169;

                            *(v70 + 784) = *(v71 + 784);
                            *(v70 + 800) = *(v71 + 800);
                            *(v70 + 808) = *(v71 + 808);
                            goto LABEL_143;
                          }

                          outlined destroy of AccessibilityTextLayoutProperties(v70 + 664);
                        }

                        v170 = *(v71 + 776);
                        *(v70 + 760) = *(v71 + 760);
                        *(v70 + 776) = v170;
                        *(v70 + 792) = *(v71 + 792);
                        *(v70 + 808) = *(v71 + 808);
                        v171 = *(v71 + 712);
                        *(v70 + 696) = *(v71 + 696);
                        *(v70 + 712) = v171;
                        v172 = *(v71 + 744);
                        *(v70 + 728) = *(v71 + 728);
                        *(v70 + 744) = v172;
                        v173 = *(v71 + 680);
                        *v167 = *v168;
                        *(v70 + 680) = v173;
LABEL_143:
                        *(v70 + 816) = *(v71 + 816);

                        *(v70 + 824) = *(v71 + 824);

                        *(v70 + 832) = *(v71 + 832);

LABEL_144:
                        v175 = (v70 + 840);
                        v176 = (v71 + 840);
                        v177 = *(v70 + 864);
                        __dsta = v72;
                        if (v177 == 1)
                        {
LABEL_147:
                          v179 = *(v71 + 856);
                          *v175 = *v176;
                          *(v70 + 856) = v179;
                          *(v70 + 872) = *(v71 + 872);
                          *(v70 + 888) = *(v71 + 888);
                          goto LABEL_148;
                        }

                        v178 = *(v71 + 864);
                        if (v178 == 1)
                        {
                          outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v70 + 840);
                          goto LABEL_147;
                        }

                        if (v177)
                        {
                          v192 = v70 + 840;
                          if (v178)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v192);
                          }

                          else
                          {
                            outlined destroy of AnyNavigationLinkPresentedValue(v192);
                          }
                        }

                        v215 = *(v71 + 856);
                        *v175 = *v176;
                        *(v70 + 856) = v215;
                        *(v70 + 872) = *(v71 + 872);
                        v216 = *(v71 + 880);
                        if (*(v70 + 880))
                        {
                          if (v216)
                          {
                            v217 = *(v71 + 888);
                            *(v70 + 880) = v216;
                            *(v70 + 888) = v217;

                            goto LABEL_148;
                          }
                        }

                        else if (v216)
                        {
                          v218 = *(v71 + 888);
                          *(v70 + 880) = v216;
                          *(v70 + 888) = v218;
                          goto LABEL_148;
                        }

                        *(v70 + 880) = *(v71 + 880);
LABEL_148:
                        v180 = *(v70 + 896);
                        *(v70 + 896) = *(v71 + 896);

                        *(v70 + 904) = *(v71 + 904);
                        *(v70 + 912) = *(v71 + 912);

                        *(v70 + 920) = *(v71 + 920);
                        *(v70 + 928) = *(v71 + 928);

                        *(v70 + 936) = *(v71 + 936);

                        *(v70 + 944) = *(v71 + 944);

                        *(v70 + 952) = *(v71 + 952);
                        *(v70 + 953) = *(v71 + 953);
                        v181 = v72[28];
                        v182 = (v70 + v181);
                        v183 = (v71 + v181);
                        v184 = type metadata accessor for CommandOperation();
                        v185 = *(v184 - 8);
                        v186 = *(v185 + 48);
                        __src = v182;
                        LODWORD(v182) = v186(v182, 1, v184);
                        v228 = v183;
                        v187 = v186(v183, 1, v184);
                        if (v182)
                        {
                          a3 = v233;
                          if (!v187)
                          {
                            *__src = *v183;
                            v193 = *(v184 + 20);
                            v194 = &__src[v193];
                            v195 = &v183[v193];
                            v196 = *&v183[v193 + 16];
                            *v194 = *&v183[v193];
                            *(v194 + 1) = v196;
                            v197 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v198 = type metadata accessor for UUID();
                            v199 = &v194[v197];
                            v200 = &v195[v197];
                            a3 = v233;
                            (*(*(v198 - 8) + 32))(v199, v200, v198);
                            *&__src[*(v184 + 24)] = *&v183[*(v184 + 24)];
                            (*(v185 + 56))(__src, 0, 1, v184);
                            goto LABEL_158;
                          }

                          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          v189 = *(*(v188 - 8) + 64);
                          v190 = __src;
                        }

                        else
                        {
                          a3 = v233;
                          if (!v187)
                          {
                            *__src = *v183;
                            v202 = *(v184 + 20);
                            v203 = &__src[v202];
                            v204 = &v183[v202];
                            LOBYTE(v202) = v183[v202 + 16];
                            v205 = *v203;
                            v206 = *(v203 + 1);
                            v207 = v203[16];
                            *v203 = *v204;
                            v203[16] = v202;
                            outlined consume of Text.Storage(v205, v206, v207);
                            *(v203 + 3) = *(v204 + 3);

                            v208 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v209 = type metadata accessor for UUID();
                            (*(*(v209 - 8) + 40))(&v203[v208], &v204[v208], v209);
                            v210 = *(v184 + 24);
                            v211 = &__src[v210];
                            v201 = __dsta;
                            v212 = &v228[v210];
                            v213 = *&v228[v210];
                            if (*v211)
                            {
                              if (v213)
                              {
                                v214 = *(v212 + 1);
                                *v211 = v213;
                                *(v211 + 1) = v214;

                                goto LABEL_159;
                              }
                            }

                            else if (v213)
                            {
                              v219 = *(v212 + 1);
                              *v211 = v213;
                              *(v211 + 1) = v219;
                              goto LABEL_159;
                            }

                            *v211 = *v212;
                            goto LABEL_159;
                          }

                          outlined destroy of CommandOperation(__src, type metadata accessor for CommandOperation);
                          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          v189 = *(*(v191 - 8) + 64);
                          v190 = __src;
                        }

                        memcpy(v190, v183, v189);
LABEL_158:
                        v201 = __dsta;
LABEL_159:
                        *(v70 + v201[29]) = *(v71 + v201[29]);
                        *(v70 + v201[30]) = *(v71 + v201[30]);
                        *(v70 + v201[31]) = *(v71 + v201[31]);
                        *(v70 + v201[32]) = *(v71 + v201[32]);
                        *(v70 + v201[33]) = *(v71 + v201[33]);
                        *(v70 + v201[34]) = *(v71 + v201[34]);

                        goto LABEL_40;
                      }

                      outlined destroy of AccessibilityValueStorage(v70 + 600);
                    }

                    v164 = *(v71 + 616);
                    *v160 = *v161;
                    *(v70 + 616) = v164;
                    *(v70 + 632) = *(v71 + 632);
                    goto LABEL_138;
                  }

                  outlined destroy of PlatformItemList.Item.Accessibility(v70 + 536);
                }

                memcpy((v70 + 536), (v71 + 536), 0x130uLL);
                goto LABEL_144;
              }
            }

            else if (v153)
            {
              v155 = *(v71 + 456);
              *(v70 + 448) = v153;
              *(v70 + 456) = v155;
              goto LABEL_117;
            }

            *(v70 + 448) = *(v71 + 448);
            goto LABEL_117;
          }

          outlined destroy of PlatformItemList.Item.SystemItem(v70 + 304);
        }

        v129 = *(v71 + 384);
        *(v70 + 368) = *(v71 + 368);
        *(v70 + 384) = v129;
        *(v70 + 400) = *(v71 + 400);
        v130 = *(v71 + 320);
        *(v70 + 304) = *(v71 + 304);
        *(v70 + 320) = v130;
        v131 = *(v71 + 352);
        *(v70 + 336) = *(v71 + 336);
        *(v70 + 352) = v131;
        goto LABEL_92;
      }

      outlined destroy of Image.NamedResolved(v70 + 256);
    }

    v126 = *(v71 + 272);
    *(v70 + 256) = *(v71 + 256);
    *(v70 + 272) = v126;
    *(v70 + 288) = *(v71 + 288);
    goto LABEL_87;
  }

  if (v23)
  {
LABEL_22:
    type metadata accessor for ToolbarStorage.NavigationProperties?(0);
    v32 = *(*(v31 - 8) + 64);
    v33 = v17;
    v34 = v18;
LABEL_23:
    memcpy(v33, v34, v32);
    goto LABEL_40;
  }

  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  *(v17 + 16) = *(v18 + 16);
  *(v17 + 24) = *(v18 + 24);
  swift_unknownObjectWeakTakeInit();
  v24 = *(v18 + 48);
  *(v17 + 40) = *(v18 + 40);
  *(v17 + 48) = v24;
  v25 = *(v19 + 32);
  v26 = (v17 + v25);
  v27 = (v18 + v25);
  v28 = type metadata accessor for PlatformItemList.Item();
  v29 = *(v28 - 1);
  if (v29[6](v27, 1, v28))
  {
    type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    memcpy(v26, v27, *(*(v30 - 8) + 64));
  }

  else
  {
    v226 = v29;
    v232 = a3;
    v38 = v27[1];
    *v26 = *v27;
    v26[1] = v38;
    *(v26 + 32) = *(v27 + 32);
    *(v26 + 40) = *(v27 + 40);
    *(v26 + 56) = *(v27 + 56);
    v39 = v27[13];
    v26[12] = v27[12];
    v26[13] = v39;
    v26[14] = v27[14];
    *(v26 + 235) = *(v27 + 235);
    v40 = v27[9];
    v26[8] = v27[8];
    v26[9] = v40;
    v41 = v27[11];
    v26[10] = v27[10];
    v26[11] = v41;
    v42 = v27[5];
    v26[4] = v27[4];
    v26[5] = v42;
    v43 = v27[7];
    v26[6] = v27[6];
    v26[7] = v43;
    v44 = v27[17];
    v26[16] = v27[16];
    v26[17] = v44;
    v45 = v27[23];
    v26[22] = v27[22];
    v26[23] = v45;
    v26[24] = v27[24];
    *(v26 + 50) = *(v27 + 50);
    v46 = v27[19];
    v26[18] = v27[18];
    v26[19] = v46;
    v47 = v27[21];
    v26[20] = v27[20];
    v26[21] = v47;
    v48 = *(v27 + 456);
    *(v26 + 440) = *(v27 + 440);
    *(v26 + 456) = v48;
    *(v26 + 472) = *(v27 + 472);
    v49 = *(v27 + 424);
    *(v26 + 408) = *(v27 + 408);
    *(v26 + 424) = v49;
    v26[30] = v27[30];
    *(v26 + 489) = *(v27 + 489);
    v26[32] = v27[32];
    *(v26 + 528) = *(v27 + 528);
    memcpy(v26 + 536, v27 + 536, 0x130uLL);
    v50 = *(v27 + 856);
    *(v26 + 840) = *(v27 + 840);
    *(v26 + 856) = v50;
    *(v26 + 872) = *(v27 + 872);
    *(v26 + 111) = *(v27 + 111);
    *(v26 + 112) = *(v27 + 112);
    *(v26 + 904) = *(v27 + 904);
    *(v26 + 920) = *(v27 + 920);
    *(v26 + 117) = *(v27 + 117);
    *(v26 + 118) = *(v27 + 118);
    *(v26 + 952) = *(v27 + 952);
    *(v26 + 953) = *(v27 + 953);
    v51 = v28[28];
    __dst = v26 + v51;
    v52 = v27 + v51;
    v53 = type metadata accessor for CommandOperation();
    v223 = *(v53 - 8);
    if ((*(v223 + 48))(v52, 1, v53))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
      memcpy(__dst, v52, *(*(v54 - 8) + 64));
    }

    else
    {
      *__dst = *v52;
      v58 = *(v53 + 20);
      v221 = &__dst[v58];
      v222 = &v52[v58];
      v59 = *&v52[v58 + 16];
      *v221 = *&v52[v58];
      *(v221 + 1) = v59;
      v220 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v60 = type metadata accessor for UUID();
      (*(*(v60 - 8) + 32))(&v221[v220], &v222[v220], v60);
      *&__dst[*(v53 + 24)] = *&v52[*(v53 + 24)];
      (*(v223 + 56))();
    }

    a3 = v232;
    *(v26 + v28[29]) = *(v27 + v28[29]);
    *(v26 + v28[30]) = *(v27 + v28[30]);
    *(v26 + v28[31]) = *(v27 + v28[31]);
    *(v26 + v28[32]) = *(v27 + v28[32]);
    *(v26 + v28[33]) = *(v27 + v28[33]);
    *(v26 + v28[34]) = *(v27 + v28[34]);
    (*(v226 + 7))(v26, 0, 1, v28);
  }

  (*(v20 + 56))(v17, 0, 1, v19);
LABEL_40:
  v61 = a3[6];
  v62 = a1 + v61;
  v63 = a2 + v61;
  if (*(a1 + v61 + 48))
  {
    if (*(v63 + 48))
    {
      v64 = *(v63 + 8);
      *v62 = *v63;
      *(v62 + 8) = v64;

      if (*(v62 + 24))
      {
        if (*(v63 + 24))
        {
          *(v62 + 16) = *(v63 + 16);

          *(v62 + 24) = *(v63 + 24);

          *(v62 + 32) = *(v63 + 32);
LABEL_49:
          *(v62 + 40) = *(v63 + 40);
          *(v62 + 48) = *(v63 + 48);

          *(v62 + 56) = *(v63 + 56);
          *(v62 + 64) = *(v63 + 64);

          goto LABEL_50;
        }

        outlined destroy of NavigationTitleStorage?(v62 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
      }

      *(v62 + 16) = *(v63 + 16);
      *(v62 + 32) = *(v63 + 32);
      goto LABEL_49;
    }

    outlined destroy of ToolbarStorage(v62);
  }

  v65 = *(v63 + 48);
  *(v62 + 32) = *(v63 + 32);
  *(v62 + 48) = v65;
  *(v62 + 64) = *(v63 + 64);
  v66 = *(v63 + 16);
  *v62 = *v63;
  *(v62 + 16) = v66;
LABEL_50:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement()
{
  result = lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement;
  if (!lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement;
  if (!lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement);
  }

  return result;
}

uint64_t outlined init with copy of ToolbarStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<Int>(0, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static DocumentToolbarInputContentWriter._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v34[2] = a2[2];
  v34[3] = v5;
  v34[4] = a2[4];
  v35 = *(a2 + 20);
  v6 = a2[1];
  v34[0] = *a2;
  v34[1] = v6;
  type metadata accessor for NavigationItemDescription?(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v8 = a2[3];
  v20 = a2[2];
  v21 = v8;
  v22 = a2[4];
  v23 = *(a2 + 20);
  v9 = a2[1];
  v18 = *a2;
  v19 = v9;
  LOBYTE(v26) = 0;
  DWORD1(v26) = OffsetAttribute2;
  *(&v26 + 1) = 0;
  LODWORD(v27) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(v34, v32);
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription]();
  lazy protocol witness table accessor for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent();
  Attribute.init<A>(body:value:flags:update:)();
  *&v32[0] = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput();
  PropertyList.subscript.setter();
  LOBYTE(v32[0]) = 1;
  lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar();
  PropertyList.subscript.setter();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v25 = v23;
  v24[0] = v18;
  v24[1] = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  v10 = outlined init with copy of _ViewInputs(v24, v32);
  a3(v10, &v12);
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v26 = v12;
  v27 = v13;
  outlined destroy of _ViewInputs(&v26);
  v32[2] = v20;
  v32[3] = v21;
  v32[4] = v22;
  v33 = v23;
  v32[0] = v18;
  v32[1] = v19;
  return outlined destroy of _ViewInputs(v32);
}

Swift::Void __swiftcall DocumentToolbarInputContentWriter.MakeToolbarContent.updateValue()()
{
  v60 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ToolbarContentDescription(0);
  v52 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v49 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v45 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  type metadata accessor for NavigationItemDescription?(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationItemDescription(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  Value = AGGraphGetValue();
  outlined init with copy of ToolbarStorage.NavigationProperties?(Value, v13, type metadata accessor for NavigationItemDescription?);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of CommandOperation(v13, type metadata accessor for NavigationItemDescription?);
    return;
  }

  outlined init with take of ToolbarStorage.NavigationProperties?(v13, v20, type metadata accessor for NavigationItemDescription);
  v48 = *(v0 + 4) + 1;
  *(v0 + 4) = v48;
  v50 = *v0;
  v22 = v1[5];
  v23 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v24 = *(v23 - 8);
  v47 = v0;
  v25 = *(v24 + 56);
  v25(&v10[v22], 1, 1, v23);
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 1;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 4) = 0;
  v10[56] = 0;
  v26 = &v10[v1[6]];
  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 8) = 0;
  *&v10[v1[7]] = 0;
  v46 = v20;
  outlined init with copy of ToolbarStorage.NavigationProperties?(v20, v17, type metadata accessor for NavigationItemDescription);
  v27 = v17[3];
  v55 = v17[2];
  v56[0] = v27;
  *(v56 + 9) = *(v17 + 57);
  v54 = v17[1];
  v58 = v55;
  v59[0] = v27;
  *(v59 + 9) = *(v56 + 9);
  v57 = v54;
  v28 = v1[5];
  outlined init with copy of ToolbarStorage.NavigationProperties?(v17 + *(v14 + 24), v7 + v28, type metadata accessor for ToolbarStorage.NavigationProperties);
  v25(v7 + v28, 0, 1, v23);
  outlined init with copy of NavigationTitleStorage(&v54, &v53);
  outlined destroy of CommandOperation(v17, type metadata accessor for NavigationItemDescription);
  v7[2] = v59[0];
  *(v7 + 41) = *(v59 + 9);
  v29 = v58;
  *v7 = v57;
  v7[1] = v29;
  v30 = v7 + v1[6];
  *(v30 + 25) = 0u;
  *v30 = 0u;
  *(v30 + 1) = 0u;
  *(v30 + 6) = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CD0];
  v30[56] = 1;
  *(v30 + 8) = v31;
  *(v7 + v1[7]) = v48;
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription]();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v33 = *WeakValue;
  }

  else
  {
    v33 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContentToolbarPlacementV0G0O_AC0fE11DescriptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v34 = v51;
  outlined init with copy of ToolbarStorage.NavigationProperties?(v10, v51, type metadata accessor for ToolbarContentDescription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v33;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)(v50);
  v38 = v33[2];
  v39 = (v36 & 1) == 0;
  v40 = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v23) = v36;
  if (v33[3] >= v40)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

LABEL_17:
    specialized _NativeDictionary.copy()();
    v33 = v53;
    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
  v33 = v53;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v50);
  if ((v23 & 1) != (v42 & 1))
  {
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v37 = v41;
LABEL_11:
  v43 = v46;
  if (v23)
  {
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
  }

  else
  {
    v44 = v49;
    outlined init with copy of ToolbarStorage.NavigationProperties?(v34, v49, type metadata accessor for ToolbarContentDescription);
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
    specialized _NativeDictionary._insert(at:key:value:)(v37, v50, v44, v33);
  }

  ToolbarContentDescription.merge(_:)(v7);
  v53 = v33;
  AGGraphSetOutputValue();
  outlined destroy of CommandOperation(v7, type metadata accessor for ToolbarContentDescription);
  outlined destroy of CommandOperation(v10, type metadata accessor for ToolbarContentDescription);
  outlined destroy of CommandOperation(v43, type metadata accessor for NavigationItemDescription);
}

uint64_t specialized ContentToolbarPlacement.Placement.canApplyDocumentToolbarContent(to:)(void *a1)
{
  v2 = [a1 navigationController];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 splitViewController];
  if (v4)
  {
    v5 = v4;
    if ([v4 style] && (v6 = objc_msgSend(v5, sel_viewControllerForColumn_, 3)) != 0 && (v7 = v6, objc_opt_self(), v8 = swift_dynamicCastObjCClass(), v7, v8))
    {
      v9 = v3 == v8;
    }

    else
    {
      v9 = [v5 isCollapsed];
    }

    if ([v5 style] && (!v9 ? (v10 = 2) : (v10 = 3), (v11 = objc_msgSend(v5, sel_viewControllerForColumn_, v10)) != 0))
    {
      v12 = v11;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_15:
  v14 = [v3 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_17:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x18D00E9C0](0, v15);
    goto LABEL_20;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
LABEL_20:
    v18 = v17;

    v19 = a1;
    v20 = static NSObject.== infix(_:_:)();

    return v20 & 1;
  }

  __break(1u);
  return result;
}

id specialized ContentToolbarPlacement.Placement.canApplySplitViewContent(to:)(id a1)
{
  result = [a1 navigationController];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result splitViewController];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  if ([v4 style] && (v6 = objc_msgSend(v5, sel_viewControllerForColumn_, 3)) != 0 && (v7 = v6, objc_opt_self(), v8 = swift_dynamicCastObjCClass(), v7, v8))
  {
    v9 = v3 == v8;
  }

  else
  {
    v9 = [v5 isCollapsed];
  }

  if (![v5 style])
  {
    goto LABEL_25;
  }

  v10 = v9 ? 3 : 2;
  v11 = [v5 viewControllerForColumn_];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

LABEL_25:
    return 0;
  }

  v15 = [v14 topViewController];
  v16 = v15;
  if (v15)
  {
    v17 = v15 == a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = [v14 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = a1;
  MEMORY[0x1EEE9AC00](v21);
  v23[2] = &v24;
  v22 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v23, v20);

  return (v18 & v22);
}

uint64_t getEnumTagSinglePayload for ToolbarInputFeature(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 18);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarInputFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 1;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DocumentToolbarInputContentWriter(void *a1, char *a2)
{
  type metadata accessor for NavigationItemDescription?(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  v7 = type metadata accessor for NavigationItemDescription(0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;
    v13 = *(a2 + 5);

    if (v13)
    {
      v14 = *(a2 + 2);
      v15 = *(a2 + 3);
      v16 = a2[32];
      outlined copy of Text.Storage(v14, v15, v16);
      a1[2] = v14;
      a1[3] = v15;
      *(a1 + 32) = v16;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v17 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v17;
    }

    v18 = *(a2 + 6);
    if (v18 != 1)
    {
    }

    a1[6] = v18;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v19 = *(v7 + 24);
    v20 = a1 + v19;
    v21 = &a2[v19];
    v22 = a2[v19 + 8];

    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v21, v24);
      *v20 = v23;
      v20[8] = v24;
    }

    v25 = v21[24];
    v140 = a2;
    if (v25 == 254 || v25 == 255)
    {
      *(v20 + 2) = *(v21 + 2);
      v20[24] = v21[24];
    }

    else
    {
      v26 = *(v21 + 2);
      v27 = v25 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v25 & 1);
      *(v20 + 2) = v26;
      v20[24] = v27;
    }

    swift_unknownObjectWeakCopyInit();
    v28 = *(v21 + 6);
    *(v20 + 5) = *(v21 + 5);
    *(v20 + 6) = v28;
    v29 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v30 = &v20[v29];
    v31 = &v21[v29];
    v32 = type metadata accessor for PlatformItemList.Item();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v28;
    if (v34(v31, 1, v32))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v30, v31, *(*(v36 - 8) + 64));
LABEL_79:
      *(a1 + *(v7 + 28)) = *&v140[*(v7 + 28)];
      (*(v8 + 56))(a1, 0, 1, v7);
      return a1;
    }

    v134 = v33;
    v135 = v8;
    v136 = v7;
    v37 = *v31;
    v38 = *(v31 + 1);
    *v30 = *v31;
    *(v30 + 1) = v38;
    v39 = *(v31 + 3);
    *(v30 + 2) = *(v31 + 2);
    *(v30 + 3) = v39;
    v30[32] = v31[32];
    v40 = *(v31 + 6);
    *(v30 + 5) = *(v31 + 5);
    *(v30 + 6) = v40;
    v30[56] = v31[56];
    v41 = *(v31 + 24);
    v42 = v37;
    v43 = v38;

    v139 = v32;
    if (v41 >> 1 == 4294967294)
    {
      v44 = *(v31 + 13);
      *(v30 + 12) = *(v31 + 12);
      *(v30 + 13) = v44;
      *(v30 + 14) = *(v31 + 14);
      *(v30 + 235) = *(v31 + 235);
      v45 = *(v31 + 9);
      *(v30 + 8) = *(v31 + 8);
      *(v30 + 9) = v45;
      v46 = *(v31 + 11);
      *(v30 + 10) = *(v31 + 10);
      *(v30 + 11) = v46;
      v47 = *(v31 + 5);
      *(v30 + 4) = *(v31 + 4);
      *(v30 + 5) = v47;
      v48 = *(v31 + 7);
      *(v30 + 6) = *(v31 + 6);
      *(v30 + 7) = v48;
      v49 = *(v31 + 33);
      if (v49)
      {
LABEL_23:
        *(v30 + 32) = *(v31 + 32);
        *(v30 + 33) = v49;
        v50 = *(v31 + 34);

        if (v50 >= 2)
        {
          v51 = v50;
        }

        *(v30 + 34) = v50;
        *(v30 + 70) = *(v31 + 70);
        v30[284] = v31[284];
        *(v30 + 285) = *(v31 + 285);
        v52 = *(v31 + 37);
        *(v30 + 36) = *(v31 + 36);
        *(v30 + 37) = v52;

LABEL_34:
        v63 = *(v31 + 42);
        if (v63 >> 2 == 0xFFFFFFFF)
        {
          v64 = *(v31 + 24);
          *(v30 + 23) = *(v31 + 23);
          *(v30 + 24) = v64;
          *(v30 + 50) = *(v31 + 50);
          v65 = *(v31 + 20);
          *(v30 + 19) = *(v31 + 19);
          *(v30 + 20) = v65;
          v66 = *(v31 + 22);
          *(v30 + 21) = *(v31 + 21);
          *(v30 + 22) = v66;
        }

        else
        {
          v67 = *(v31 + 38);
          v68 = *(v31 + 39);
          v69 = *(v31 + 41);
          v71 = *(v31 + 43);
          v70 = *(v31 + 44);
          v72 = *(v31 + 45);
          v124 = *(v31 + 40);
          v125 = *(v31 + 46);
          v127 = *(v31 + 47);
          v129 = *(v31 + 48);
          __dsta = *(v31 + 49);
          v137 = *(v31 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v67, v68, v124, v69, v63, v71, v70, v72, v125, v127, v129, __dsta, v137);
          *(v30 + 38) = v67;
          *(v30 + 39) = v68;
          *(v30 + 40) = v124;
          *(v30 + 41) = v69;
          *(v30 + 42) = v63;
          *(v30 + 43) = v71;
          *(v30 + 44) = v70;
          *(v30 + 45) = v72;
          *(v30 + 46) = v125;
          *(v30 + 47) = v127;
          *(v30 + 48) = v129;
          *(v30 + 49) = __dsta;
          *(v30 + 50) = v137;
        }

        v73 = *(v31 + 52);
        if (v73 == 1)
        {
          v74 = *(v31 + 456);
          *(v30 + 440) = *(v31 + 440);
          *(v30 + 456) = v74;
          v30[472] = v31[472];
          v75 = *(v31 + 424);
          *(v30 + 408) = *(v31 + 408);
          *(v30 + 424) = v75;
        }

        else
        {
          *(v30 + 102) = *(v31 + 102);
          v30[412] = v31[412];
          if (v73)
          {
            v76 = *(v31 + 53);
            *(v30 + 52) = v73;
            *(v30 + 53) = v76;
          }

          else
          {
            *(v30 + 26) = *(v31 + 26);
          }

          v77 = *(v31 + 54);
          if (v77)
          {
            v78 = *(v31 + 55);
            *(v30 + 54) = v77;
            *(v30 + 55) = v78;
          }

          else
          {
            *(v30 + 27) = *(v31 + 27);
          }

          v79 = *(v31 + 56);
          if (v79)
          {
            v80 = *(v31 + 57);
            *(v30 + 56) = v79;
            *(v30 + 57) = v80;
          }

          else
          {
            *(v30 + 28) = *(v31 + 28);
          }

          *(v30 + 58) = *(v31 + 58);
          v30[472] = v31[472];
        }

        v81 = *(v31 + 61);
        *(v30 + 60) = *(v31 + 60);
        *(v30 + 61) = v81;
        *(v30 + 62) = *(v31 + 62);
        v30[504] = v31[504];
        v82 = *(v31 + 64);

        if (v82)
        {
          v83 = *(v31 + 65);
          *(v30 + 64) = v82;
          *(v30 + 65) = v83;
        }

        else
        {
          *(v30 + 32) = *(v31 + 32);
        }

        v30[528] = v31[528];
        if (!*(v31 + 102))
        {
          memcpy(v30 + 536, v31 + 536, 0x130uLL);
          goto LABEL_64;
        }

        *(v30 + 67) = *(v31 + 67);
        *(v30 + 68) = *(v31 + 68);
        v30[552] = v31[552];
        *(v30 + 70) = *(v31 + 70);
        v30[568] = v31[568];
        *(v30 + 36) = *(v31 + 36);
        v30[592] = v31[592];
        v84 = v30 + 600;
        v85 = v31 + 600;
        v86 = *(v31 + 78);

        if (v86)
        {
          if (v86 == 1)
          {
            v87 = *(v31 + 616);
            *v84 = *v85;
            *(v30 + 616) = v87;
            *(v30 + 632) = *(v31 + 632);
LABEL_60:
            *(v30 + 81) = *(v31 + 81);
            v30[656] = v31[656];
            v89 = v30 + 664;
            v90 = v31 + 664;
            v91 = *(v31 + 97);
            if (v91 == 1)
            {
              v92 = *(v31 + 776);
              *(v30 + 760) = *(v31 + 760);
              *(v30 + 776) = v92;
              *(v30 + 792) = *(v31 + 792);
              v30[808] = v31[808];
              v93 = *(v31 + 712);
              *(v30 + 696) = *(v31 + 696);
              *(v30 + 712) = v93;
              v94 = *(v31 + 744);
              *(v30 + 728) = *(v31 + 728);
              *(v30 + 744) = v94;
              v95 = *(v31 + 680);
              *v89 = *v90;
              *(v30 + 680) = v95;
            }

            else
            {
              *v89 = *v90;
              v30[672] = v31[672];
              *(v30 + 85) = *(v31 + 85);
              v30[688] = v31[688];
              *(v30 + 689) = *(v31 + 689);
              v30[691] = v31[691];
              v30[692] = v31[692];
              *(v30 + 87) = *(v31 + 87);
              v96 = *(v31 + 45);
              *(v30 + 44) = *(v31 + 44);
              *(v30 + 45) = v96;
              *(v30 + 92) = *(v31 + 92);
              *(v30 + 372) = *(v31 + 372);
              *(v30 + 47) = *(v31 + 47);
              v30[768] = v31[768];
              *(v30 + 97) = v91;
              *(v30 + 49) = *(v31 + 49);
              *(v30 + 100) = *(v31 + 100);
              v30[808] = v31[808];
            }

            *(v30 + 102) = *(v31 + 102);
            *(v30 + 103) = *(v31 + 103);
            *(v30 + 104) = *(v31 + 104);

LABEL_64:
            v97 = v30 + 840;
            v98 = v31 + 840;
            v99 = *(v31 + 108);
            if (v99)
            {
              if (v99 == 1)
              {
                v100 = *(v31 + 856);
                *v97 = *v98;
                *(v30 + 856) = v100;
                *(v30 + 872) = *(v31 + 872);
                *(v30 + 111) = *(v31 + 111);
LABEL_72:
                v104 = *(v31 + 112);
                *(v30 + 112) = v104;
                *(v30 + 113) = *(v31 + 113);
                *(v30 + 114) = *(v31 + 114);
                *(v30 + 115) = *(v31 + 115);
                *(v30 + 116) = *(v31 + 116);
                *(v30 + 117) = *(v31 + 117);
                *(v30 + 118) = *(v31 + 118);
                *(v30 + 476) = *(v31 + 476);
                v30[954] = v31[954];
                v105 = v139[28];
                __dst = &v30[v105];
                v138 = &v31[v105];
                v106 = type metadata accessor for CommandOperation();
                v128 = *(v106 - 8);
                v130 = *(v128 + 48);
                v107 = v104;

                if (v130(v138, 1, v106))
                {
                  type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                  memcpy(__dst, v138, *(*(v108 - 8) + 64));
                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                }

                else
                {
                  *__dst = *v138;
                  v111 = *(v106 + 20);
                  v112 = &__dst[v111];
                  v113 = &v138[v111];
                  v114 = *&v138[v111];
                  v115 = *&v138[v111 + 8];
                  v131 = v106;
                  v116 = v138[v111 + 16];
                  outlined copy of Text.Storage(v114, *(v113 + 1), v113[16]);
                  *v112 = v114;
                  *(v112 + 1) = v115;
                  v112[16] = v116;
                  *(v112 + 3) = *(v113 + 3);
                  v117 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v118 = type metadata accessor for UUID();
                  v126 = *(*(v118 - 8) + 16);

                  v126(&v112[v117], &v113[v117], v118);
                  v119 = *(v131 + 24);
                  v120 = &__dst[v119];
                  v121 = &v138[v119];
                  if (*v121)
                  {
                    v122 = *(v121 + 1);
                    *v120 = *v121;
                    *(v120 + 1) = v122;
                  }

                  else
                  {
                    *v120 = *v121;
                  }

                  v8 = v135;
                  v7 = v136;
                  v109 = v139;
                  v110 = v134;
                  (*(v128 + 56))(__dst, 0, 1, v131);
                }

                v30[v109[29]] = v31[v109[29]];
                v30[v109[30]] = v31[v109[30]];
                v30[v109[31]] = v31[v109[31]];
                v30[v109[32]] = v31[v109[32]];
                v30[v109[33]] = v31[v109[33]];
                *&v30[v109[34]] = *&v31[v109[34]];
                v123 = *(v110 + 56);

                v123(v30, 0, 1, v109);
                goto LABEL_79;
              }

              *(v30 + 108) = v99;
              *(v30 + 109) = *(v31 + 109);
              (**(v99 - 8))(v97, v98);
            }

            else
            {
              v101 = *(v31 + 856);
              *v97 = *v98;
              *(v30 + 856) = v101;
              *(v30 + 109) = *(v31 + 109);
            }

            v102 = *(v31 + 110);
            if (v102)
            {
              v103 = *(v31 + 111);
              *(v30 + 110) = v102;
              *(v30 + 111) = v103;
            }

            else
            {
              *(v30 + 55) = *(v31 + 55);
            }

            goto LABEL_72;
          }

          *(v30 + 78) = v86;
          *(v30 + 79) = *(v31 + 79);
          (**(v86 - 8))((v30 + 600), (v31 + 600), v86);
        }

        else
        {
          v88 = *(v31 + 616);
          *v84 = *v85;
          *(v30 + 616) = v88;
          *(v30 + 79) = *(v31 + 79);
        }

        *(v30 + 80) = *(v31 + 80);

        goto LABEL_60;
      }
    }

    else
    {
      v53 = v31[72];
      if (v53 == 255)
      {
        *(v30 + 8) = *(v31 + 8);
        v30[72] = v31[72];
      }

      else
      {
        v54 = *(v31 + 8);
        outlined copy of GraphicsImage.Contents(v54, v31[72]);
        *(v30 + 8) = v54;
        v30[72] = v53;
        v41 = *(v31 + 24);
      }

      *(v30 + 10) = *(v31 + 10);
      *(v30 + 88) = *(v31 + 88);
      v30[104] = v31[104];
      *(v30 + 108) = *(v31 + 108);
      *(v30 + 121) = *(v31 + 121);
      *(v30 + 136) = *(v31 + 136);
      *(v30 + 152) = *(v31 + 152);
      *(v30 + 84) = *(v31 + 84);
      v30[170] = v31[170];
      v30[171] = v31[171];
      if (v41 >> 1 == 0xFFFFFFFF)
      {
        v55 = *(v31 + 12);
        *(v30 + 11) = *(v31 + 11);
        *(v30 + 12) = v55;
      }

      else
      {
        v56 = *(v31 + 22);
        v57 = *(v31 + 23);
        v58 = *(v31 + 25);
        outlined copy of AccessibilityImageLabel(v56, v57, v41);
        *(v30 + 22) = v56;
        *(v30 + 23) = v57;
        *(v30 + 24) = v41;
        *(v30 + 25) = v58;
      }

      v59 = *(v31 + 27);
      *(v30 + 26) = *(v31 + 26);
      *(v30 + 27) = v59;
      *(v30 + 112) = *(v31 + 112);
      *(v30 + 57) = *(v31 + 57);
      v30[232] = v31[232];
      v60 = *(v31 + 30);
      *(v30 + 30) = v60;
      *(v30 + 124) = *(v31 + 124);
      v30[250] = v31[250];
      swift_unknownObjectRetain();

      v61 = v60;
      v49 = *(v31 + 33);
      if (v49)
      {
        goto LABEL_23;
      }
    }

    v62 = *(v31 + 17);
    *(v30 + 16) = *(v31 + 16);
    *(v30 + 17) = v62;
    *(v30 + 18) = *(v31 + 18);
    goto LABEL_34;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for DocumentToolbarInputContentWriter(uint64_t a1)
{
  v2 = type metadata accessor for NavigationItemDescription(0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {

    if (*(a1 + 40))
    {
      outlined consume of Text.Storage(*(a1 + 16), *(a1 + 24), *(a1 + 32));
    }

    if (*(a1 + 48) != 1)
    {
    }

    v4 = a1 + *(v2 + 24);
    v5 = *(v4 + 8);
    if (v5 != 255)
    {
      outlined consume of ResolvableCLKTextProvider.FontStorage(*v4, v5 & 1);
    }

    v6 = *(v4 + 24);
    if (v6 <= 0xFD)
    {
      outlined consume of PlatformItemCollection.Storage(*(v4 + 16), v6 & 1);
    }

    MEMORY[0x18D011290](v4 + 32);

    v7 = v4 + *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v8 = type metadata accessor for PlatformItemList.Item();
    result = (*(*(v8 - 8) + 48))(v7, 1, v8);
    if (!result)
    {

      v9 = *(v7 + 192);
      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
      {
        v11 = *(v7 + 72);
        if (v11 != 255)
        {
          outlined consume of GraphicsImage.Contents(*(v7 + 64), v11);
          v9 = *(v7 + 192);
          v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        }

        if (v10 != 0x1FFFFFFFELL)
        {
          outlined consume of AccessibilityImageLabel(*(v7 + 176), *(v7 + 184), v9);
        }

        swift_unknownObjectRelease();
      }

      if (*(v7 + 264))
      {

        v12 = *(v7 + 272);
        if (v12 >= 2)
        {
        }
      }

      v13 = *(v7 + 336);
      if (v13 >> 2 != 0xFFFFFFFF)
      {
        outlined consume of PlatformItemList.Item.SystemItem(*(v7 + 304), *(v7 + 312), *(v7 + 320), *(v7 + 328), v13, *(v7 + 344), *(v7 + 352), *(v7 + 360), *(v7 + 368), *(v7 + 376), *(v7 + 384), *(v7 + 392), *(v7 + 400));
      }

      v14 = *(v7 + 416);
      if (v14)
      {
        if (v14 == 1)
        {
          goto LABEL_31;
        }
      }

      if (*(v7 + 432))
      {
      }

      if (*(v7 + 448))
      {
      }

LABEL_31:

      if (*(v7 + 512))
      {
      }

      if (!*(v7 + 816))
      {
LABEL_41:
        v16 = *(v7 + 864);
        if (v16)
        {
          if (v16 == 1)
          {
LABEL_46:

            v17 = v7 + *(v8 + 112);
            v18 = type metadata accessor for CommandOperation();
            if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
            {
              v19 = v17 + *(v18 + 20);
              outlined consume of Text.Storage(*v19, *(v19 + 8), *(v19 + 16));

              v20 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v21 = type metadata accessor for UUID();
              (*(*(v21 - 8) + 8))(v19 + v20, v21);
              if (*(v17 + *(v18 + 24)))
              {
              }
            }
          }

          __swift_destroy_boxed_opaque_existential_1(v7 + 840);
        }

        if (*(v7 + 880))
        {
        }

        goto LABEL_46;
      }

      v15 = *(v7 + 624);
      if (v15)
      {
        if (v15 == 1)
        {
LABEL_38:
          if (*(v7 + 776) != 1)
          {
          }

          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(v7 + 600);
      }

      goto LABEL_38;
    }
  }

  return result;
}

void *initializeWithCopy for DocumentToolbarInputContentWriter(void *a1, char *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a2, 1, v4))
  {
    v9 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v9;
    v10 = *(a2 + 5);

    if (v10)
    {
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      v13 = a2[32];
      outlined copy of Text.Storage(v11, v12, v13);
      a1[2] = v11;
      a1[3] = v12;
      *(a1 + 32) = v13;
      a1[5] = *(a2 + 5);
    }

    else
    {
      v14 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v14;
    }

    v15 = *(a2 + 6);
    if (v15 != 1)
    {
    }

    a1[6] = v15;
    *(a1 + 56) = a2[56];
    a1[8] = *(a2 + 8);
    *(a1 + 72) = a2[72];
    v16 = *(v4 + 24);
    v17 = a1 + v16;
    v18 = &a2[v16];
    v19 = a2[v16 + 8];

    if (v19 == 255)
    {
      *v17 = *v18;
      v17[8] = v18[8];
    }

    else
    {
      v20 = *v18;
      v21 = v19 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v18, v21);
      *v17 = v20;
      v17[8] = v21;
    }

    v22 = v18[24];
    v137 = a1;
    if (v22 == 254 || v22 == 255)
    {
      *(v17 + 2) = *(v18 + 2);
      v17[24] = v18[24];
    }

    else
    {
      v23 = *(v18 + 2);
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(v23, v22 & 1);
      *(v17 + 2) = v23;
      v17[24] = v24;
    }

    swift_unknownObjectWeakCopyInit();
    v25 = *(v18 + 6);
    *(v17 + 5) = *(v18 + 5);
    *(v17 + 6) = v25;
    v26 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v27 = &v17[v26];
    v28 = &v18[v26];
    v29 = type metadata accessor for PlatformItemList.Item();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v32 = v25;
    if (v31(v28, 1, v29))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v27, v28, *(*(v33 - 8) + 64));
LABEL_74:
      *(v137 + *(v4 + 28)) = *&a2[*(v4 + 28)];
      (*(v5 + 56))(v137, 0, 1, v4);
      return v137;
    }

    v131 = v30;
    v132 = v5;
    v133 = v4;
    v34 = *v28;
    v35 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v35;
    v36 = *(v28 + 3);
    *(v27 + 2) = *(v28 + 2);
    *(v27 + 3) = v36;
    v27[32] = v28[32];
    v37 = *(v28 + 6);
    *(v27 + 5) = *(v28 + 5);
    *(v27 + 6) = v37;
    v27[56] = v28[56];
    v38 = *(v28 + 24);
    v39 = v34;
    v40 = v35;

    v136 = v29;
    if (v38 >> 1 == 4294967294)
    {
      v41 = *(v28 + 13);
      *(v27 + 12) = *(v28 + 12);
      *(v27 + 13) = v41;
      *(v27 + 14) = *(v28 + 14);
      *(v27 + 235) = *(v28 + 235);
      v42 = *(v28 + 9);
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 9) = v42;
      v43 = *(v28 + 11);
      *(v27 + 10) = *(v28 + 10);
      *(v27 + 11) = v43;
      v44 = *(v28 + 5);
      *(v27 + 4) = *(v28 + 4);
      *(v27 + 5) = v44;
      v45 = *(v28 + 7);
      *(v27 + 6) = *(v28 + 6);
      *(v27 + 7) = v45;
      v46 = *(v28 + 33);
      if (v46)
      {
LABEL_21:
        *(v27 + 32) = *(v28 + 32);
        *(v27 + 33) = v46;
        v47 = *(v28 + 34);

        if (v47 >= 2)
        {
          v48 = v47;
        }

        *(v27 + 34) = v47;
        *(v27 + 70) = *(v28 + 70);
        v27[284] = v28[284];
        *(v27 + 285) = *(v28 + 285);
        v49 = *(v28 + 37);
        *(v27 + 36) = *(v28 + 36);
        *(v27 + 37) = v49;

LABEL_32:
        v60 = *(v28 + 42);
        if (v60 >> 2 == 0xFFFFFFFF)
        {
          v61 = *(v28 + 24);
          *(v27 + 23) = *(v28 + 23);
          *(v27 + 24) = v61;
          *(v27 + 50) = *(v28 + 50);
          v62 = *(v28 + 20);
          *(v27 + 19) = *(v28 + 19);
          *(v27 + 20) = v62;
          v63 = *(v28 + 22);
          *(v27 + 21) = *(v28 + 21);
          *(v27 + 22) = v63;
        }

        else
        {
          v64 = *(v28 + 38);
          v65 = *(v28 + 39);
          v66 = *(v28 + 41);
          v68 = *(v28 + 43);
          v67 = *(v28 + 44);
          v69 = *(v28 + 45);
          v121 = *(v28 + 40);
          v122 = *(v28 + 46);
          v124 = *(v28 + 47);
          v126 = *(v28 + 48);
          __dsta = *(v28 + 49);
          v134 = *(v28 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v64, v65, v121, v66, v60, v68, v67, v69, v122, v124, v126, __dsta, v134);
          *(v27 + 38) = v64;
          *(v27 + 39) = v65;
          *(v27 + 40) = v121;
          *(v27 + 41) = v66;
          *(v27 + 42) = v60;
          *(v27 + 43) = v68;
          *(v27 + 44) = v67;
          *(v27 + 45) = v69;
          *(v27 + 46) = v122;
          *(v27 + 47) = v124;
          *(v27 + 48) = v126;
          *(v27 + 49) = __dsta;
          *(v27 + 50) = v134;
        }

        v70 = *(v28 + 52);
        if (v70 == 1)
        {
          v71 = *(v28 + 456);
          *(v27 + 440) = *(v28 + 440);
          *(v27 + 456) = v71;
          v27[472] = v28[472];
          v72 = *(v28 + 424);
          *(v27 + 408) = *(v28 + 408);
          *(v27 + 424) = v72;
          goto LABEL_45;
        }

        *(v27 + 102) = *(v28 + 102);
        v27[412] = v28[412];
        if (v70)
        {
          v73 = *(v28 + 53);
          *(v27 + 52) = v70;
          *(v27 + 53) = v73;

          v74 = *(v28 + 54);
          if (v74)
          {
            goto LABEL_39;
          }
        }

        else
        {
          *(v27 + 26) = *(v28 + 26);
          v74 = *(v28 + 54);
          if (v74)
          {
LABEL_39:
            v75 = *(v28 + 55);
            *(v27 + 54) = v74;
            *(v27 + 55) = v75;

            v76 = *(v28 + 56);
            if (v76)
            {
LABEL_40:
              v77 = *(v28 + 57);
              *(v27 + 56) = v76;
              *(v27 + 57) = v77;

LABEL_44:
              *(v27 + 58) = *(v28 + 58);
              v27[472] = v28[472];
LABEL_45:
              v78 = *(v28 + 61);
              *(v27 + 60) = *(v28 + 60);
              *(v27 + 61) = v78;
              *(v27 + 62) = *(v28 + 62);
              v27[504] = v28[504];
              v79 = *(v28 + 64);

              if (v79)
              {
                v80 = *(v28 + 65);
                *(v27 + 64) = v79;
                *(v27 + 65) = v80;
              }

              else
              {
                *(v27 + 32) = *(v28 + 32);
              }

              v27[528] = v28[528];
              if (!*(v28 + 102))
              {
                memcpy(v27 + 536, v28 + 536, 0x130uLL);
                goto LABEL_60;
              }

              *(v27 + 67) = *(v28 + 67);
              *(v27 + 68) = *(v28 + 68);
              v27[552] = v28[552];
              *(v27 + 70) = *(v28 + 70);
              v27[568] = v28[568];
              *(v27 + 36) = *(v28 + 36);
              v27[592] = v28[592];
              v81 = v27 + 600;
              v82 = v28 + 600;
              v83 = *(v28 + 78);

              if (v83)
              {
                if (v83 == 1)
                {
                  v84 = *(v28 + 616);
                  *v81 = *v82;
                  *(v27 + 616) = v84;
                  *(v27 + 632) = *(v28 + 632);
LABEL_56:
                  *(v27 + 81) = *(v28 + 81);
                  v27[656] = v28[656];
                  v86 = v27 + 664;
                  v87 = v28 + 664;
                  v88 = *(v28 + 97);
                  if (v88 == 1)
                  {
                    v89 = *(v28 + 776);
                    *(v27 + 760) = *(v28 + 760);
                    *(v27 + 776) = v89;
                    *(v27 + 792) = *(v28 + 792);
                    v27[808] = v28[808];
                    v90 = *(v28 + 712);
                    *(v27 + 696) = *(v28 + 696);
                    *(v27 + 712) = v90;
                    v91 = *(v28 + 744);
                    *(v27 + 728) = *(v28 + 728);
                    *(v27 + 744) = v91;
                    v92 = *(v28 + 680);
                    *v86 = *v87;
                    *(v27 + 680) = v92;
                  }

                  else
                  {
                    *v86 = *v87;
                    v27[672] = v28[672];
                    *(v27 + 85) = *(v28 + 85);
                    v27[688] = v28[688];
                    *(v27 + 689) = *(v28 + 689);
                    v27[691] = v28[691];
                    v27[692] = v28[692];
                    *(v27 + 87) = *(v28 + 87);
                    v93 = *(v28 + 45);
                    *(v27 + 44) = *(v28 + 44);
                    *(v27 + 45) = v93;
                    *(v27 + 92) = *(v28 + 92);
                    *(v27 + 372) = *(v28 + 372);
                    *(v27 + 47) = *(v28 + 47);
                    v27[768] = v28[768];
                    *(v27 + 97) = v88;
                    *(v27 + 49) = *(v28 + 49);
                    *(v27 + 100) = *(v28 + 100);
                    v27[808] = v28[808];
                  }

                  *(v27 + 102) = *(v28 + 102);
                  *(v27 + 103) = *(v28 + 103);
                  *(v27 + 104) = *(v28 + 104);

LABEL_60:
                  v94 = v27 + 840;
                  v95 = v28 + 840;
                  v96 = *(v28 + 108);
                  if (v96)
                  {
                    if (v96 == 1)
                    {
                      v97 = *(v28 + 856);
                      *v94 = *v95;
                      *(v27 + 856) = v97;
                      *(v27 + 872) = *(v28 + 872);
                      *(v27 + 111) = *(v28 + 111);
LABEL_67:
                      v101 = *(v28 + 112);
                      *(v27 + 112) = v101;
                      *(v27 + 113) = *(v28 + 113);
                      *(v27 + 114) = *(v28 + 114);
                      *(v27 + 115) = *(v28 + 115);
                      *(v27 + 116) = *(v28 + 116);
                      *(v27 + 117) = *(v28 + 117);
                      *(v27 + 118) = *(v28 + 118);
                      *(v27 + 476) = *(v28 + 476);
                      v27[954] = v28[954];
                      v102 = v136[28];
                      __dst = &v27[v102];
                      v135 = &v28[v102];
                      v103 = type metadata accessor for CommandOperation();
                      v125 = *(v103 - 8);
                      v127 = *(v125 + 48);
                      v104 = v101;

                      if (v127(v135, 1, v103))
                      {
                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v135, *(*(v105 - 8) + 64));
                        v5 = v132;
                        v4 = v133;
                        v106 = v136;
                        v107 = v131;
                      }

                      else
                      {
                        *__dst = *v135;
                        v108 = *(v103 + 20);
                        v109 = &__dst[v108];
                        v110 = &v135[v108];
                        v111 = *&v135[v108];
                        v112 = *&v135[v108 + 8];
                        v128 = v103;
                        v113 = v135[v108 + 16];
                        outlined copy of Text.Storage(v111, *(v110 + 1), v110[16]);
                        *v109 = v111;
                        *(v109 + 1) = v112;
                        v109[16] = v113;
                        *(v109 + 3) = *(v110 + 3);
                        v114 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v115 = type metadata accessor for UUID();
                        v123 = *(*(v115 - 8) + 16);

                        v123(&v109[v114], &v110[v114], v115);
                        v116 = *(v128 + 24);
                        v117 = &__dst[v116];
                        v118 = &v135[v116];
                        if (*v118)
                        {
                          v119 = *(v118 + 1);
                          *v117 = *v118;
                          *(v117 + 1) = v119;
                        }

                        else
                        {
                          *v117 = *v118;
                        }

                        v5 = v132;
                        v4 = v133;
                        v106 = v136;
                        v107 = v131;
                        (*(v125 + 56))(__dst, 0, 1, v128);
                      }

                      v27[v106[29]] = v28[v106[29]];
                      v27[v106[30]] = v28[v106[30]];
                      v27[v106[31]] = v28[v106[31]];
                      v27[v106[32]] = v28[v106[32]];
                      v27[v106[33]] = v28[v106[33]];
                      *&v27[v106[34]] = *&v28[v106[34]];
                      v120 = *(v107 + 56);

                      v120(v27, 0, 1, v106);
                      goto LABEL_74;
                    }

                    *(v27 + 108) = v96;
                    *(v27 + 109) = *(v28 + 109);
                    (**(v96 - 8))(v94, v95);
                    v99 = *(v28 + 110);
                    if (!v99)
                    {
LABEL_66:
                      *(v27 + 55) = *(v28 + 55);
                      goto LABEL_67;
                    }
                  }

                  else
                  {
                    v98 = *(v28 + 856);
                    *v94 = *v95;
                    *(v27 + 856) = v98;
                    *(v27 + 109) = *(v28 + 109);
                    v99 = *(v28 + 110);
                    if (!v99)
                    {
                      goto LABEL_66;
                    }
                  }

                  v100 = *(v28 + 111);
                  *(v27 + 110) = v99;
                  *(v27 + 111) = v100;

                  goto LABEL_67;
                }

                *(v27 + 78) = v83;
                *(v27 + 79) = *(v28 + 79);
                (**(v83 - 8))((v27 + 600), (v28 + 600), v83);
              }

              else
              {
                v85 = *(v28 + 616);
                *v81 = *v82;
                *(v27 + 616) = v85;
                *(v27 + 79) = *(v28 + 79);
              }

              *(v27 + 80) = *(v28 + 80);

              goto LABEL_56;
            }

LABEL_43:
            *(v27 + 28) = *(v28 + 28);
            goto LABEL_44;
          }
        }

        *(v27 + 27) = *(v28 + 27);
        v76 = *(v28 + 56);
        if (v76)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v50 = v28[72];
      if (v50 == 255)
      {
        *(v27 + 8) = *(v28 + 8);
        v27[72] = v28[72];
      }

      else
      {
        v51 = *(v28 + 8);
        outlined copy of GraphicsImage.Contents(v51, v28[72]);
        *(v27 + 8) = v51;
        v27[72] = v50;
        v38 = *(v28 + 24);
      }

      *(v27 + 10) = *(v28 + 10);
      *(v27 + 88) = *(v28 + 88);
      v27[104] = v28[104];
      *(v27 + 108) = *(v28 + 108);
      *(v27 + 121) = *(v28 + 121);
      *(v27 + 136) = *(v28 + 136);
      *(v27 + 152) = *(v28 + 152);
      *(v27 + 84) = *(v28 + 84);
      v27[170] = v28[170];
      v27[171] = v28[171];
      if (v38 >> 1 == 0xFFFFFFFF)
      {
        v52 = *(v28 + 12);
        *(v27 + 11) = *(v28 + 11);
        *(v27 + 12) = v52;
      }

      else
      {
        v53 = *(v28 + 22);
        v54 = *(v28 + 23);
        v55 = *(v28 + 25);
        outlined copy of AccessibilityImageLabel(v53, v54, v38);
        *(v27 + 22) = v53;
        *(v27 + 23) = v54;
        *(v27 + 24) = v38;
        *(v27 + 25) = v55;
      }

      v56 = *(v28 + 27);
      *(v27 + 26) = *(v28 + 26);
      *(v27 + 27) = v56;
      *(v27 + 112) = *(v28 + 112);
      *(v27 + 57) = *(v28 + 57);
      v27[232] = v28[232];
      v57 = *(v28 + 30);
      *(v27 + 30) = v57;
      *(v27 + 124) = *(v28 + 124);
      v27[250] = v28[250];
      swift_unknownObjectRetain();

      v58 = v57;
      v46 = *(v28 + 33);
      if (v46)
      {
        goto LABEL_21;
      }
    }

    v59 = *(v28 + 17);
    *(v27 + 16) = *(v28 + 16);
    *(v27 + 17) = v59;
    *(v27 + 18) = *(v28 + 18);
    goto LABEL_32;
  }

  type metadata accessor for NavigationItemDescription?(0);
  v7 = *(*(v6 - 8) + 64);

  return memcpy(a1, a2, v7);
}

char *assignWithCopy for DocumentToolbarInputContentWriter(char *a1, char *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      outlined destroy of CommandOperation(a1, type metadata accessor for NavigationItemDescription);
      goto LABEL_7;
    }

    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    v16 = *(a2 + 5);
    if (*(a1 + 5))
    {
      if (v16)
      {
        v17 = *(a2 + 2);
        v18 = *(a2 + 3);
        v19 = a2[32];
        outlined copy of Text.Storage(v17, v18, v19);
        v20 = *(a1 + 2);
        v21 = *(a1 + 3);
        v22 = a1[32];
        *(a1 + 2) = v17;
        *(a1 + 3) = v18;
        a1[32] = v19;
        outlined consume of Text.Storage(v20, v21, v22);
        *(a1 + 5) = *(a2 + 5);
      }

      else
      {
        outlined destroy of Text((a1 + 16));
        v66 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v66;
      }
    }

    else if (v16)
    {
      v61 = *(a2 + 2);
      v62 = *(a2 + 3);
      v63 = a2[32];
      outlined copy of Text.Storage(v61, v62, v63);
      *(a1 + 2) = v61;
      *(a1 + 3) = v62;
      a1[32] = v63;
      *(a1 + 5) = *(a2 + 5);
    }

    else
    {
      v67 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v67;
    }

    v68 = (a1 + 48);
    v69 = *(a2 + 6);
    if (*(a1 + 6) == 1)
    {
      if (v69 == 1)
      {
        v70 = 1;
LABEL_41:
        *v68 = v70;
        goto LABEL_44;
      }

      *v68 = v69;
    }

    else
    {
      if (v69 == 1)
      {
        outlined destroy of Transaction((a1 + 48));
        v70 = *(a2 + 6);
        goto LABEL_41;
      }

      *v68 = v69;
    }

LABEL_44:
    a1[56] = a2[56];
    *(a1 + 8) = *(a2 + 8);

    a1[72] = a2[72];
    v71 = *(v4 + 24);
    v72 = &a1[v71];
    v73 = &a2[v71];
    v74 = a1[v71 + 8];
    v75 = a2[v71 + 8];
    if (v74 == 255)
    {
      if (v75 == 255)
      {
        v83 = *v73;
        *(v72 + 8) = v73[8];
        *v72 = v83;
      }

      else
      {
        v80 = *v73;
        v81 = v75 & 1;
        outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v73, v75 & 1);
        *v72 = v80;
        *(v72 + 8) = v81;
      }
    }

    else if (v75 == 255)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v72);
      v82 = v73[8];
      *v72 = *v73;
      *(v72 + 8) = v82;
    }

    else
    {
      v76 = *v73;
      v77 = v75 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v73, v75 & 1);
      v78 = *v72;
      v79 = *(v72 + 8);
      *v72 = v76;
      *(v72 + 8) = v77;
      outlined consume of ResolvableCLKTextProvider.FontStorage(v78, v79);
    }

    v84 = *(v72 + 24);
    v85 = v73[24];
    if (v84 == 254)
    {
      if (v85 == 254)
      {
LABEL_60:
        v89 = *(v73 + 2);
        *(v72 + 24) = v73[24];
        *(v72 + 16) = v89;
        goto LABEL_61;
      }

LABEL_58:
      if (v85 != 255)
      {
        v87 = *(v73 + 2);
        v88 = v85 & 1;
        outlined copy of PlatformItemCollection.Storage(v87, v85 & 1);
        *(v72 + 16) = v87;
        *(v72 + 24) = v88;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (v85 == 254)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.Actions(v72 + 16);
    }

    else
    {
      if (v84 == 255)
      {
        goto LABEL_58;
      }

      if (v85 != 255)
      {
        v132 = *(v73 + 2);
        v133 = v85 & 1;
        outlined copy of PlatformItemCollection.Storage(v132, v85 & 1);
        v134 = *(v72 + 16);
        v135 = *(v72 + 24);
        *(v72 + 16) = v132;
        *(v72 + 24) = v133;
        outlined consume of PlatformItemCollection.Storage(v134, v135);
LABEL_61:
        swift_unknownObjectWeakCopyAssign();
        *(v72 + 40) = *(v73 + 5);
        v90 = *(v72 + 48);
        v91 = *(v73 + 6);
        *(v72 + 48) = v91;
        v92 = v91;

        v93 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
        v94 = v72 + v93;
        v95 = &v73[v93];
        v96 = type metadata accessor for PlatformItemList.Item();
        v97 = *(v96 - 8);
        v98 = *(v97 + 48);
        v99 = v98(v94, 1, v96);
        v100 = v98(v95, 1, v96);
        if (v99)
        {
          if (!v100)
          {
            v623 = v96;
            v101 = *v95;
            *v94 = *v95;
            v102 = *(v95 + 1);
            *(v94 + 8) = v102;
            *(v94 + 16) = *(v95 + 2);
            *(v94 + 24) = *(v95 + 3);
            *(v94 + 32) = v95[32];
            *(v94 + 40) = *(v95 + 5);
            *(v94 + 48) = *(v95 + 6);
            *(v94 + 56) = v95[56];
            v103 = *(v95 + 24);
            v104 = v101;
            v105 = v102;

            v619 = v97;
            if (v103 >> 1 == 4294967294)
            {
              v106 = *(v95 + 4);
              v107 = *(v95 + 5);
              v108 = *(v95 + 7);
              *(v94 + 96) = *(v95 + 6);
              *(v94 + 112) = v108;
              *(v94 + 64) = v106;
              *(v94 + 80) = v107;
              v109 = *(v95 + 8);
              v110 = *(v95 + 9);
              v111 = *(v95 + 11);
              *(v94 + 160) = *(v95 + 10);
              *(v94 + 176) = v111;
              *(v94 + 128) = v109;
              *(v94 + 144) = v110;
              v112 = *(v95 + 12);
              v113 = *(v95 + 13);
              v114 = *(v95 + 14);
              *(v94 + 235) = *(v95 + 235);
              *(v94 + 208) = v113;
              *(v94 + 224) = v114;
              *(v94 + 192) = v112;
            }

            else
            {
              v173 = v95[72];
              if (v173 == 255)
              {
                v240 = *(v95 + 8);
                *(v94 + 72) = v95[72];
                *(v94 + 64) = v240;
              }

              else
              {
                v174 = *(v95 + 8);
                outlined copy of GraphicsImage.Contents(v174, v95[72]);
                *(v94 + 64) = v174;
                *(v94 + 72) = v173;
              }

              *(v94 + 80) = *(v95 + 10);
              *(v94 + 88) = *(v95 + 88);
              *(v94 + 104) = v95[104];
              v241 = *(v95 + 108);
              *(v94 + 121) = *(v95 + 121);
              *(v94 + 108) = v241;
              v242 = *(v95 + 136);
              v243 = *(v95 + 152);
              *(v94 + 168) = v95[168];
              *(v94 + 152) = v243;
              *(v94 + 136) = v242;
              *(v94 + 169) = v95[169];
              *(v94 + 170) = v95[170];
              *(v94 + 171) = v95[171];
              v244 = *(v95 + 24);
              if (v244 >> 1 == 0xFFFFFFFF)
              {
                v245 = *(v95 + 12);
                *(v94 + 176) = *(v95 + 11);
                *(v94 + 192) = v245;
              }

              else
              {
                v246 = a1;
                v247 = *(v95 + 22);
                v248 = *(v95 + 23);
                v249 = v4;
                v250 = *(v95 + 25);
                outlined copy of AccessibilityImageLabel(v247, v248, *(v95 + 24));
                *(v94 + 176) = v247;
                *(v94 + 184) = v248;
                a1 = v246;
                *(v94 + 192) = v244;
                *(v94 + 200) = v250;
                v4 = v249;
              }

              *(v94 + 208) = *(v95 + 26);
              *(v94 + 216) = *(v95 + 27);
              *(v94 + 224) = v95[224];
              *(v94 + 225) = v95[225];
              v251 = *(v95 + 57);
              *(v94 + 232) = v95[232];
              *(v94 + 228) = v251;
              v252 = *(v95 + 30);
              *(v94 + 240) = v252;
              *(v94 + 248) = *(v95 + 124);
              *(v94 + 250) = v95[250];
              swift_unknownObjectRetain();

              v253 = v252;
            }

            if (*(v95 + 33))
            {
              *(v94 + 256) = *(v95 + 32);
              *(v94 + 264) = *(v95 + 33);
              v254 = *(v95 + 34);

              if (v254 >= 2)
              {
                v255 = v254;
              }

              *(v94 + 272) = v254;
              v256 = *(v95 + 70);
              *(v94 + 284) = v95[284];
              *(v94 + 280) = v256;
              *(v94 + 285) = v95[285];
              *(v94 + 286) = v95[286];
              *(v94 + 288) = *(v95 + 36);
              *(v94 + 296) = *(v95 + 37);
            }

            else
            {
              v257 = *(v95 + 16);
              v258 = *(v95 + 18);
              *(v94 + 272) = *(v95 + 17);
              *(v94 + 288) = v258;
              *(v94 + 256) = v257;
            }

            v259 = *(v95 + 42);
            v630 = a1;
            v627 = a2;
            v633 = v4;
            if (v259 >> 2 == 0xFFFFFFFF)
            {
              v260 = *(v95 + 19);
              v261 = *(v95 + 21);
              *(v94 + 320) = *(v95 + 20);
              *(v94 + 336) = v261;
              *(v94 + 304) = v260;
              v262 = *(v95 + 22);
              v263 = *(v95 + 23);
              v264 = *(v95 + 24);
              *(v94 + 400) = *(v95 + 50);
              *(v94 + 368) = v263;
              *(v94 + 384) = v264;
              *(v94 + 352) = v262;
            }

            else
            {
              v265 = *(v95 + 38);
              v266 = *(v95 + 39);
              v267 = *(v95 + 40);
              v268 = *(v95 + 41);
              v269 = *(v95 + 43);
              v270 = *(v95 + 44);
              v271 = *(v95 + 45);
              v590 = *(v95 + 46);
              v593 = *(v95 + 47);
              v600 = *(v95 + 48);
              __dstc = *(v95 + 49);
              v613 = *(v95 + 50);
              outlined copy of PlatformItemList.Item.SystemItem(v265, v266, v267, v268, v259, v269, v270, v271, v590, v593, v600, __dstc, v613);
              *(v94 + 304) = v265;
              *(v94 + 312) = v266;
              *(v94 + 320) = v267;
              *(v94 + 328) = v268;
              *(v94 + 336) = v259;
              *(v94 + 344) = v269;
              *(v94 + 352) = v270;
              *(v94 + 360) = v271;
              *(v94 + 368) = v590;
              *(v94 + 376) = v593;
              *(v94 + 384) = v600;
              *(v94 + 392) = __dstc;
              *(v94 + 400) = v613;
            }

            if (*(v95 + 52) == 1)
            {
              *(v94 + 408) = *(v95 + 408);
              v272 = *(v95 + 424);
              v273 = *(v95 + 440);
              v274 = *(v95 + 456);
              *(v94 + 472) = v95[472];
              *(v94 + 440) = v273;
              *(v94 + 456) = v274;
              *(v94 + 424) = v272;
            }

            else
            {
              *(v94 + 408) = v95[408];
              *(v94 + 409) = v95[409];
              *(v94 + 410) = v95[410];
              *(v94 + 411) = v95[411];
              *(v94 + 412) = v95[412];
              v275 = *(v95 + 52);
              if (v275)
              {
                v276 = *(v95 + 53);
                *(v94 + 416) = v275;
                *(v94 + 424) = v276;
              }

              else
              {
                *(v94 + 416) = *(v95 + 26);
              }

              v277 = *(v95 + 54);
              if (v277)
              {
                v278 = *(v95 + 55);
                *(v94 + 432) = v277;
                *(v94 + 440) = v278;
              }

              else
              {
                *(v94 + 432) = *(v95 + 27);
              }

              v279 = *(v95 + 56);
              if (v279)
              {
                v280 = *(v95 + 57);
                *(v94 + 448) = v279;
                *(v94 + 456) = v280;
              }

              else
              {
                *(v94 + 448) = *(v95 + 28);
              }

              *(v94 + 464) = *(v95 + 58);
              *(v94 + 472) = v95[472];
            }

            *(v94 + 480) = *(v95 + 60);
            *(v94 + 488) = *(v95 + 61);
            *(v94 + 496) = *(v95 + 62);
            *(v94 + 504) = v95[504];
            v281 = *(v95 + 64);

            if (v281)
            {
              v282 = *(v95 + 65);
              *(v94 + 512) = v281;
              *(v94 + 520) = v282;
            }

            else
            {
              *(v94 + 512) = *(v95 + 32);
            }

            *(v94 + 528) = v95[528];
            if (!*(v95 + 102))
            {
              memcpy((v94 + 536), v95 + 536, 0x130uLL);
              goto LABEL_167;
            }

            *(v94 + 536) = *(v95 + 67);
            *(v94 + 544) = *(v95 + 68);
            *(v94 + 552) = v95[552];
            *(v94 + 560) = *(v95 + 70);
            *(v94 + 568) = v95[568];
            v283 = *(v95 + 36);
            *(v94 + 592) = v95[592];
            *(v94 + 576) = v283;
            v284 = (v94 + 600);
            v285 = (v95 + 600);
            v286 = *(v95 + 78);

            if (v286)
            {
              if (v286 == 1)
              {
                v287 = *v285;
                v288 = *(v95 + 632);
                *(v94 + 616) = *(v95 + 616);
                *(v94 + 632) = v288;
                *v284 = v287;
LABEL_163:
                v291 = *(v95 + 81);
                *(v94 + 656) = v95[656];
                *(v94 + 648) = v291;
                v292 = (v94 + 664);
                v293 = v95 + 664;
                if (*(v95 + 97) == 1)
                {
                  v294 = *(v95 + 680);
                  *v292 = *v293;
                  *(v94 + 680) = v294;
                  v295 = *(v95 + 696);
                  v296 = *(v95 + 712);
                  v297 = *(v95 + 744);
                  *(v94 + 728) = *(v95 + 728);
                  *(v94 + 744) = v297;
                  *(v94 + 696) = v295;
                  *(v94 + 712) = v296;
                  v298 = *(v95 + 760);
                  v299 = *(v95 + 776);
                  v300 = *(v95 + 792);
                  *(v94 + 808) = v95[808];
                  *(v94 + 776) = v299;
                  *(v94 + 792) = v300;
                  *(v94 + 760) = v298;
                }

                else
                {
                  v301 = *v293;
                  *(v94 + 672) = v95[672];
                  *v292 = v301;
                  v302 = *(v95 + 85);
                  *(v94 + 688) = v95[688];
                  *(v94 + 680) = v302;
                  *(v94 + 689) = v95[689];
                  *(v94 + 690) = v95[690];
                  *(v94 + 691) = v95[691];
                  *(v94 + 692) = v95[692];
                  *(v94 + 696) = *(v95 + 87);
                  *(v94 + 704) = *(v95 + 88);
                  *(v94 + 712) = *(v95 + 89);
                  *(v94 + 720) = *(v95 + 90);
                  *(v94 + 728) = *(v95 + 91);
                  *(v94 + 736) = *(v95 + 92);
                  *(v94 + 744) = v95[744];
                  *(v94 + 745) = v95[745];
                  *(v94 + 752) = *(v95 + 94);
                  *(v94 + 760) = *(v95 + 95);
                  *(v94 + 768) = v95[768];
                  *(v94 + 776) = *(v95 + 97);
                  v303 = *(v95 + 49);
                  *(v94 + 800) = *(v95 + 100);
                  *(v94 + 784) = v303;
                  *(v94 + 808) = v95[808];
                }

                *(v94 + 816) = *(v95 + 102);
                *(v94 + 824) = *(v95 + 103);
                *(v94 + 832) = *(v95 + 104);

LABEL_167:
                v304 = (v94 + 840);
                v305 = (v95 + 840);
                v306 = *(v95 + 108);
                if (v306)
                {
                  if (v306 == 1)
                  {
                    v307 = *v305;
                    v308 = *(v95 + 856);
                    v309 = *(v95 + 872);
                    *(v94 + 888) = *(v95 + 111);
                    *(v94 + 856) = v308;
                    *(v94 + 872) = v309;
                    *v304 = v307;
LABEL_175:
                    v314 = *(v95 + 112);
                    *(v94 + 896) = v314;
                    *(v94 + 904) = *(v95 + 113);
                    *(v94 + 912) = *(v95 + 114);
                    *(v94 + 920) = *(v95 + 115);
                    *(v94 + 928) = *(v95 + 116);
                    *(v94 + 936) = *(v95 + 117);
                    *(v94 + 944) = *(v95 + 118);
                    *(v94 + 952) = v95[952];
                    *(v94 + 953) = v95[953];
                    *(v94 + 954) = v95[954];
                    v315 = v623[28];
                    v614 = (v94 + v315);
                    v316 = &v95[v315];
                    v317 = type metadata accessor for CommandOperation();
                    v601 = *(v317 - 8);
                    __dstd = *(v601 + 48);
                    v318 = v314;

                    if (__dstd(v316, 1, v317))
                    {
                      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                      memcpy(v614, v316, *(*(v319 - 8) + 64));
                      a1 = v630;
                      v320 = v623;
                      a2 = v627;
                      v321 = v619;
                    }

                    else
                    {
                      *v614 = *v316;
                      v322 = *(v317 + 20);
                      v323 = v316;
                      v324 = &v614[v322];
                      v325 = &v323[v322];
                      __dsta = v317;
                      v326 = *&v323[v322];
                      v327 = *&v323[v322 + 8];
                      v328 = v323[v322 + 16];
                      outlined copy of Text.Storage(v326, v327, v328);
                      *v324 = v326;
                      *(v324 + 1) = v327;
                      v324[16] = v328;
                      *(v324 + 3) = *(v325 + 3);
                      v329 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v330 = type metadata accessor for UUID();
                      v594 = *(*(v330 - 8) + 16);

                      v594(&v324[v329], &v325[v329], v330);
                      v331 = __dsta[6];
                      v332 = &v614[v331];
                      v333 = &v323[v331];
                      if (*v333)
                      {
                        v334 = *(v333 + 1);
                        *v332 = *v333;
                        *(v332 + 1) = v334;
                      }

                      else
                      {
                        *v332 = *v333;
                      }

                      a1 = v630;
                      v320 = v623;
                      a2 = v627;
                      v321 = v619;
                      (*(v601 + 56))(v614, 0, 1, __dsta);
                    }

                    *(v94 + v320[29]) = v95[v320[29]];
                    *(v94 + v320[30]) = v95[v320[30]];
                    *(v94 + v320[31]) = v95[v320[31]];
                    *(v94 + v320[32]) = v95[v320[32]];
                    *(v94 + v320[33]) = v95[v320[33]];
                    *(v94 + v320[34]) = *&v95[v320[34]];
                    v343 = *(v321 + 56);

                    v343(v94, 0, 1, v320);
                    v4 = v633;
                    goto LABEL_349;
                  }

                  *(v94 + 864) = v306;
                  *(v94 + 872) = *(v95 + 109);
                  (**(v306 - 8))(v304, v305);
                }

                else
                {
                  v310 = *v305;
                  v311 = *(v95 + 856);
                  *(v94 + 872) = *(v95 + 109);
                  *v304 = v310;
                  *(v94 + 856) = v311;
                }

                v312 = *(v95 + 110);
                if (v312)
                {
                  v313 = *(v95 + 111);
                  *(v94 + 880) = v312;
                  *(v94 + 888) = v313;
                }

                else
                {
                  *(v94 + 880) = *(v95 + 55);
                }

                goto LABEL_175;
              }

              *(v94 + 624) = v286;
              *(v94 + 632) = *(v95 + 79);
              (**(v286 - 8))(v94 + 600, (v95 + 600), v286);
            }

            else
            {
              v289 = *v285;
              v290 = *(v95 + 616);
              *(v94 + 632) = *(v95 + 79);
              *v284 = v289;
              *(v94 + 616) = v290;
            }

            *(v94 + 640) = *(v95 + 80);

            goto LABEL_163;
          }

          goto LABEL_67;
        }

        if (v100)
        {
          outlined destroy of CommandOperation(v94, type metadata accessor for PlatformItemList.Item);
LABEL_67:
          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
          memcpy(v94, v95, *(*(v115 - 8) + 64));
LABEL_349:
          *&a1[*(v4 + 28)] = *&a2[*(v4 + 28)];
          return a1;
        }

        v116 = *v94;
        v117 = *v95;
        *v94 = *v95;
        v118 = v117;

        v119 = *(v94 + 8);
        v120 = *(v95 + 1);
        *(v94 + 8) = v120;
        v121 = v120;

        *(v94 + 16) = *(v95 + 2);
        *(v94 + 24) = *(v95 + 3);

        *(v94 + 32) = v95[32];
        *(v94 + 40) = *(v95 + 5);
        *(v94 + 48) = *(v95 + 6);

        *(v94 + 56) = v95[56];
        v122 = *(v95 + 24) & 0xFFFFFFFFFFFFFFFELL;
        if (*(v94 + 192) >> 1 == 4294967294)
        {
          if (v122 == 0x1FFFFFFFCLL)
          {
            v123 = *(v95 + 4);
            v124 = *(v95 + 5);
            v125 = *(v95 + 7);
            *(v94 + 96) = *(v95 + 6);
            *(v94 + 112) = v125;
            *(v94 + 64) = v123;
            *(v94 + 80) = v124;
            v126 = *(v95 + 8);
            v127 = *(v95 + 9);
            v128 = *(v95 + 11);
            *(v94 + 160) = *(v95 + 10);
            *(v94 + 176) = v128;
            *(v94 + 128) = v126;
            *(v94 + 144) = v127;
            v129 = *(v95 + 12);
            v130 = *(v95 + 13);
            v131 = *(v95 + 14);
            *(v94 + 235) = *(v95 + 235);
            *(v94 + 208) = v130;
            *(v94 + 224) = v131;
            *(v94 + 192) = v129;
          }

          else
          {
            v335 = a1;
            v336 = v95[72];
            if (v336 == 255)
            {
              v344 = *(v95 + 8);
              *(v94 + 72) = v95[72];
              *(v94 + 64) = v344;
            }

            else
            {
              v337 = *(v95 + 8);
              outlined copy of GraphicsImage.Contents(v337, v95[72]);
              *(v94 + 64) = v337;
              *(v94 + 72) = v336;
            }

            *(v94 + 80) = *(v95 + 10);
            *(v94 + 88) = *(v95 + 88);
            *(v94 + 104) = v95[104];
            v345 = *(v95 + 108);
            *(v94 + 121) = *(v95 + 121);
            *(v94 + 108) = v345;
            v346 = *(v95 + 136);
            v347 = *(v95 + 152);
            *(v94 + 168) = v95[168];
            *(v94 + 152) = v347;
            *(v94 + 136) = v346;
            *(v94 + 169) = v95[169];
            *(v94 + 170) = v95[170];
            *(v94 + 171) = v95[171];
            v348 = *(v95 + 24);
            if (v348 >> 1 == 0xFFFFFFFF)
            {
              v349 = *(v95 + 12);
              *(v94 + 176) = *(v95 + 11);
              *(v94 + 192) = v349;
            }

            else
            {
              v350 = v4;
              v351 = *(v95 + 22);
              v352 = *(v95 + 23);
              v353 = a2;
              v354 = *(v95 + 25);
              outlined copy of AccessibilityImageLabel(v351, v352, *(v95 + 24));
              *(v94 + 176) = v351;
              *(v94 + 184) = v352;
              v4 = v350;
              *(v94 + 192) = v348;
              *(v94 + 200) = v354;
              a2 = v353;
            }

            a1 = v335;
            *(v94 + 208) = *(v95 + 26);
            *(v94 + 216) = *(v95 + 27);
            *(v94 + 224) = v95[224];
            *(v94 + 225) = v95[225];
            v355 = *(v95 + 57);
            *(v94 + 232) = v95[232];
            *(v94 + 228) = v355;
            v356 = *(v95 + 30);
            *(v94 + 240) = v356;
            *(v94 + 248) = *(v95 + 124);
            *(v94 + 250) = v95[250];
            swift_unknownObjectRetain();

            v357 = v356;
          }
        }

        else if (v122 == 0x1FFFFFFFCLL)
        {
          outlined destroy of Image.Resolved(v94 + 64);
          v231 = *(v95 + 7);
          v233 = *(v95 + 4);
          v232 = *(v95 + 5);
          *(v94 + 96) = *(v95 + 6);
          *(v94 + 112) = v231;
          *(v94 + 64) = v233;
          *(v94 + 80) = v232;
          v234 = *(v95 + 11);
          v236 = *(v95 + 8);
          v235 = *(v95 + 9);
          *(v94 + 160) = *(v95 + 10);
          *(v94 + 176) = v234;
          *(v94 + 128) = v236;
          *(v94 + 144) = v235;
          v238 = *(v95 + 13);
          v237 = *(v95 + 14);
          v239 = *(v95 + 12);
          *(v94 + 235) = *(v95 + 235);
          *(v94 + 208) = v238;
          *(v94 + 224) = v237;
          *(v94 + 192) = v239;
        }

        else
        {
          v338 = v95[72];
          v339 = a1;
          if (*(v94 + 72) == 255)
          {
            if (v338 == 255)
            {
              v360 = *(v95 + 8);
              *(v94 + 72) = v95[72];
              *(v94 + 64) = v360;
            }

            else
            {
              v358 = *(v95 + 8);
              outlined copy of GraphicsImage.Contents(v358, v95[72]);
              *(v94 + 64) = v358;
              *(v94 + 72) = v338;
            }
          }

          else if (v338 == 255)
          {
            outlined destroy of GraphicsImage.Contents(v94 + 64);
            v359 = v95[72];
            *(v94 + 64) = *(v95 + 8);
            *(v94 + 72) = v359;
          }

          else
          {
            v340 = *(v95 + 8);
            outlined copy of GraphicsImage.Contents(v340, v95[72]);
            v341 = *(v94 + 64);
            *(v94 + 64) = v340;
            v342 = *(v94 + 72);
            *(v94 + 72) = v338;
            outlined consume of GraphicsImage.Contents(v341, v342);
          }

          *(v94 + 80) = *(v95 + 10);
          *(v94 + 88) = *(v95 + 11);
          *(v94 + 96) = *(v95 + 12);
          *(v94 + 104) = v95[104];
          v361 = *(v95 + 108);
          *(v94 + 121) = *(v95 + 121);
          *(v94 + 108) = v361;
          v362 = *(v95 + 136);
          v363 = *(v95 + 152);
          *(v94 + 168) = v95[168];
          *(v94 + 152) = v363;
          *(v94 + 136) = v362;
          *(v94 + 169) = v95[169];
          *(v94 + 170) = v95[170];
          *(v94 + 171) = v95[171];
          v364 = *(v95 + 24);
          v365 = v364 & 0xFFFFFFFFFFFFFFFELL;
          if (*(v94 + 192) >> 1 == 0xFFFFFFFFLL)
          {
            if (v365 == 0x1FFFFFFFELL)
            {
              v366 = *(v95 + 12);
              *(v94 + 176) = *(v95 + 11);
              *(v94 + 192) = v366;
            }

            else
            {
              v368 = v4;
              v369 = *(v95 + 22);
              v370 = *(v95 + 23);
              v371 = a2;
              v372 = *(v95 + 25);
              outlined copy of AccessibilityImageLabel(v369, v370, *(v95 + 24));
              *(v94 + 176) = v369;
              *(v94 + 184) = v370;
              v4 = v368;
              *(v94 + 192) = v364;
              *(v94 + 200) = v372;
              a2 = v371;
            }
          }

          else if (v365 == 0x1FFFFFFFELL)
          {
            outlined destroy of AccessibilityImageLabel(v94 + 176);
            v367 = *(v95 + 12);
            *(v94 + 176) = *(v95 + 11);
            *(v94 + 192) = v367;
          }

          else
          {
            v373 = v4;
            v374 = *(v95 + 22);
            v375 = *(v95 + 23);
            v376 = a2;
            v377 = *(v95 + 25);
            outlined copy of AccessibilityImageLabel(v374, v375, *(v95 + 24));
            v378 = *(v94 + 176);
            v379 = *(v94 + 184);
            v380 = *(v94 + 192);
            *(v94 + 176) = v374;
            *(v94 + 184) = v375;
            v4 = v373;
            *(v94 + 192) = v364;
            *(v94 + 200) = v377;
            a2 = v376;
            outlined consume of AccessibilityImageLabel(v378, v379, v380);
          }

          a1 = v339;
          *(v94 + 208) = *(v95 + 26);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          *(v94 + 216) = *(v95 + 27);

          *(v94 + 224) = v95[224];
          *(v94 + 225) = v95[225];
          v381 = *(v95 + 57);
          *(v94 + 232) = v95[232];
          *(v94 + 228) = v381;
          v382 = *(v94 + 240);
          v383 = *(v95 + 30);
          *(v94 + 240) = v383;
          v384 = v383;

          *(v94 + 248) = *(v95 + 124);
          *(v94 + 250) = v95[250];
        }

        v385 = *(v95 + 33);
        if (!*(v94 + 264))
        {
          if (v385)
          {
            *(v94 + 256) = *(v95 + 32);
            *(v94 + 264) = *(v95 + 33);
            v389 = *(v95 + 34);

            if (v389 >= 2)
            {
              v390 = v389;
            }

            *(v94 + 272) = v389;
            v391 = *(v95 + 70);
            *(v94 + 284) = v95[284];
            *(v94 + 280) = v391;
            *(v94 + 285) = v95[285];
            *(v94 + 286) = v95[286];
            *(v94 + 288) = *(v95 + 36);
            *(v94 + 296) = *(v95 + 37);
          }

          else
          {
            v394 = *(v95 + 16);
            v395 = *(v95 + 18);
            *(v94 + 272) = *(v95 + 17);
            *(v94 + 288) = v395;
            *(v94 + 256) = v394;
          }

LABEL_220:
          v398 = *(v95 + 42);
          v399 = v398 & 0xFFFFFFFFFFFFFFFCLL;
          v631 = a1;
          v628 = a2;
          v634 = v4;
          v625 = v96;
          if (*(v94 + 336) >> 2 == 0xFFFFFFFFLL)
          {
            if (v399 == 0x3FFFFFFFCLL)
            {
              v400 = *(v95 + 19);
              v401 = *(v95 + 21);
              *(v94 + 320) = *(v95 + 20);
              *(v94 + 336) = v401;
              *(v94 + 304) = v400;
              v402 = *(v95 + 22);
              v403 = *(v95 + 23);
              v404 = *(v95 + 24);
              *(v94 + 400) = *(v95 + 50);
              *(v94 + 368) = v403;
              *(v94 + 384) = v404;
              *(v94 + 352) = v402;
            }

            else
            {
              v410 = *(v95 + 38);
              v411 = *(v95 + 39);
              v412 = *(v95 + 40);
              v413 = *(v95 + 43);
              v414 = *(v95 + 44);
              v415 = *(v95 + 45);
              v595 = *(v95 + 46);
              v602 = *(v95 + 47);
              __dste = *(v95 + 48);
              v615 = *(v95 + 49);
              v620 = *(v95 + 50);
              v416 = *(v95 + 41);
              outlined copy of PlatformItemList.Item.SystemItem(v410, v411, v412, v416, v398, v413, v414, v415, v595, v602, __dste, v615, v620);
              *(v94 + 304) = v410;
              *(v94 + 312) = v411;
              *(v94 + 320) = v412;
              *(v94 + 328) = v416;
              *(v94 + 336) = v398;
              *(v94 + 344) = v413;
              *(v94 + 352) = v414;
              *(v94 + 360) = v415;
              *(v94 + 368) = v595;
              *(v94 + 376) = v602;
              *(v94 + 384) = __dste;
              *(v94 + 392) = v615;
              v96 = v625;
              *(v94 + 400) = v620;
            }
          }

          else if (v399 == 0x3FFFFFFFCLL)
          {
            outlined destroy of PlatformItemList.Item.SystemItem(v94 + 304);
            v406 = *(v95 + 20);
            v405 = *(v95 + 21);
            *(v94 + 304) = *(v95 + 19);
            *(v94 + 320) = v406;
            *(v94 + 336) = v405;
            v408 = *(v95 + 23);
            v407 = *(v95 + 24);
            v409 = *(v95 + 22);
            *(v94 + 400) = *(v95 + 50);
            *(v94 + 368) = v408;
            *(v94 + 384) = v407;
            *(v94 + 352) = v409;
          }

          else
          {
            v417 = *(v95 + 38);
            v418 = *(v95 + 39);
            v419 = *(v95 + 40);
            __dstf = *(v95 + 44);
            v616 = *(v95 + 43);
            v420 = *(v95 + 46);
            v596 = *(v95 + 41);
            v603 = *(v95 + 45);
            v421 = *(v95 + 47);
            v422 = *(v95 + 48);
            v423 = *(v95 + 49);
            v621 = *(v95 + 50);
            outlined copy of PlatformItemList.Item.SystemItem(v417, v418, v419, v596, v398, v616, __dstf, v603, v420, v421, v422, v423, v621);
            v424 = *(v94 + 304);
            v425 = *(v94 + 312);
            v426 = *(v94 + 320);
            v427 = *(v94 + 328);
            v428 = *(v94 + 336);
            v429 = *(v94 + 344);
            v430 = *(v94 + 352);
            v431 = *(v94 + 360);
            v432 = *(v94 + 368);
            v433 = *(v94 + 384);
            v434 = *(v94 + 400);
            *(v94 + 304) = v417;
            *(v94 + 312) = v418;
            *(v94 + 320) = v419;
            *(v94 + 328) = v596;
            *(v94 + 336) = v398;
            *(v94 + 344) = v616;
            *(v94 + 352) = __dstf;
            *(v94 + 360) = v603;
            *(v94 + 368) = v420;
            *(v94 + 376) = v421;
            *(v94 + 384) = v422;
            *(v94 + 392) = v423;
            v96 = v625;
            *(v94 + 400) = v621;
            outlined consume of PlatformItemList.Item.SystemItem(v424, v425, v426, v427, v428, v429, v430, v431, v432, *(&v432 + 1), v433, SBYTE8(v433), v434);
          }

          v435 = (v94 + 408);
          v436 = v95 + 408;
          v437 = *(v94 + 416);
          v438 = *(v95 + 52);
          if (v437 == 1)
          {
            if (v438 == 1)
            {
              *v435 = *v436;
              v439 = *(v95 + 424);
              v440 = *(v95 + 440);
              v441 = *(v95 + 456);
              *(v94 + 472) = v95[472];
              *(v94 + 440) = v440;
              *(v94 + 456) = v441;
              *(v94 + 424) = v439;
              goto LABEL_262;
            }

            *(v94 + 408) = v95[408];
            *(v94 + 409) = v95[409];
            *(v94 + 410) = v95[410];
            *(v94 + 411) = v95[411];
            *(v94 + 412) = v95[412];
            v445 = *(v95 + 52);
            if (v445)
            {
              v446 = *(v95 + 53);
              *(v94 + 416) = v445;
              *(v94 + 424) = v446;
            }

            else
            {
              *(v94 + 416) = *(v95 + 26);
            }

            v449 = *(v95 + 54);
            if (v449)
            {
              v450 = *(v95 + 55);
              *(v94 + 432) = v449;
              *(v94 + 440) = v450;
            }

            else
            {
              *(v94 + 432) = *(v95 + 27);
            }

            v452 = *(v95 + 56);
            if (!v452)
            {
              goto LABEL_260;
            }

            goto LABEL_258;
          }

          if (v438 == 1)
          {
            outlined destroy of PlatformItemList.Item.SelectionBehavior(v94 + 408);
            *v435 = *v436;
            v443 = *(v95 + 440);
            v442 = *(v95 + 456);
            v444 = *(v95 + 424);
            *(v94 + 472) = v95[472];
            *(v94 + 440) = v443;
            *(v94 + 456) = v442;
            *(v94 + 424) = v444;
            goto LABEL_262;
          }

          *(v94 + 408) = *v436;
          *(v94 + 409) = v95[409];
          *(v94 + 410) = v95[410];
          *(v94 + 411) = v95[411];
          *(v94 + 412) = v95[412];
          v447 = *(v95 + 52);
          if (v437)
          {
            if (v447)
            {
              v448 = *(v95 + 53);
              *(v94 + 416) = v447;
              *(v94 + 424) = v448;

              goto LABEL_247;
            }
          }

          else if (v447)
          {
            v451 = *(v95 + 53);
            *(v94 + 416) = v447;
            *(v94 + 424) = v451;

            goto LABEL_247;
          }

          *(v94 + 416) = *(v95 + 26);
LABEL_247:
          v453 = *(v95 + 54);
          if (*(v94 + 432))
          {
            if (v453)
            {
              v454 = *(v95 + 55);
              *(v94 + 432) = v453;
              *(v94 + 440) = v454;

              goto LABEL_254;
            }
          }

          else if (v453)
          {
            v455 = *(v95 + 55);
            *(v94 + 432) = v453;
            *(v94 + 440) = v455;

            goto LABEL_254;
          }

          *(v94 + 432) = *(v95 + 27);
LABEL_254:
          v452 = *(v95 + 56);
          if (*(v94 + 448))
          {
            if (v452)
            {
              v456 = *(v95 + 57);
              *(v94 + 448) = v452;
              *(v94 + 456) = v456;

LABEL_261:
              *(v94 + 464) = *(v95 + 58);
              *(v94 + 472) = v95[472];
LABEL_262:
              *(v94 + 480) = *(v95 + 60);
              *(v94 + 488) = *(v95 + 61);

              *(v94 + 496) = *(v95 + 62);
              *(v94 + 504) = v95[504];
              v458 = *(v95 + 64);
              if (*(v94 + 512))
              {
                if (v458)
                {
                  v459 = *(v95 + 65);
                  *(v94 + 512) = v458;
                  *(v94 + 520) = v459;

                  goto LABEL_269;
                }
              }

              else if (v458)
              {
                v460 = *(v95 + 65);
                *(v94 + 512) = v458;
                *(v94 + 520) = v460;

                goto LABEL_269;
              }

              *(v94 + 512) = *(v95 + 32);
LABEL_269:
              *(v94 + 528) = v95[528];
              v461 = *(v95 + 102);
              if (*(v94 + 816))
              {
                if (v461)
                {
                  *(v94 + 536) = *(v95 + 67);
                  *(v94 + 544) = *(v95 + 68);

                  *(v94 + 552) = v95[552];
                  *(v94 + 560) = *(v95 + 70);

                  *(v94 + 568) = v95[568];
                  v462 = *(v95 + 36);
                  *(v94 + 592) = v95[592];
                  *(v94 + 576) = v462;
                  v463 = (v94 + 600);
                  v464 = v95 + 600;
                  v465 = *(v94 + 624);
                  v466 = *(v95 + 78);
                  if (v465 != 1)
                  {
                    if (v466 == 1)
                    {
                      outlined destroy of AccessibilityValueStorage(v94 + 600);
                      v476 = *(v95 + 616);
                      v475 = *(v95 + 632);
                      *v463 = *v464;
                      *(v94 + 616) = v476;
                      *(v94 + 632) = v475;
                    }

                    else
                    {
                      if (v465)
                      {
                        if (v466)
                        {
                          __swift_assign_boxed_opaque_existential_1((v94 + 600), v95 + 75);
                        }

                        else
                        {
                          outlined destroy of AnyAccessibilityValue(v94 + 600);
                          v494 = *(v95 + 79);
                          v495 = *(v95 + 616);
                          *v463 = *v464;
                          *(v94 + 616) = v495;
                          *(v94 + 632) = v494;
                        }
                      }

                      else if (v466)
                      {
                        *(v94 + 624) = v466;
                        *(v94 + 632) = *(v95 + 79);
                        (**(v466 - 8))(v94 + 600, (v95 + 600));
                      }

                      else
                      {
                        v496 = *v464;
                        v497 = *(v95 + 616);
                        *(v94 + 632) = *(v95 + 79);
                        *v463 = v496;
                        *(v94 + 616) = v497;
                      }

                      *(v94 + 640) = *(v95 + 80);
                    }

                    goto LABEL_301;
                  }

                  if (v466)
                  {
                    if (v466 == 1)
                    {
                      v467 = *v464;
                      v468 = *(v95 + 632);
                      *(v94 + 616) = *(v95 + 616);
                      *(v94 + 632) = v468;
                      *v463 = v467;
LABEL_301:
                      v498 = *(v95 + 81);
                      *(v94 + 656) = v95[656];
                      *(v94 + 648) = v498;
                      v499 = (v94 + 664);
                      v500 = v95 + 664;
                      v501 = *(v95 + 97);
                      if (*(v94 + 776) == 1)
                      {
                        if (v501 == 1)
                        {
                          v502 = *(v95 + 680);
                          *v499 = *v500;
                          *(v94 + 680) = v502;
                          v503 = *(v95 + 696);
                          v504 = *(v95 + 712);
                          v505 = *(v95 + 744);
                          *(v94 + 728) = *(v95 + 728);
                          *(v94 + 744) = v505;
                          *(v94 + 696) = v503;
                          *(v94 + 712) = v504;
                          v506 = *(v95 + 760);
                          v507 = *(v95 + 776);
                          v508 = *(v95 + 792);
                          *(v94 + 808) = v95[808];
                          *(v94 + 776) = v507;
                          *(v94 + 792) = v508;
                          *(v94 + 760) = v506;
                        }

                        else
                        {
                          v516 = *v500;
                          *(v94 + 672) = v95[672];
                          *v499 = v516;
                          v517 = *(v95 + 85);
                          *(v94 + 688) = v95[688];
                          *(v94 + 680) = v517;
                          *(v94 + 689) = v95[689];
                          *(v94 + 690) = v95[690];
                          *(v94 + 691) = v95[691];
                          *(v94 + 692) = v95[692];
                          *(v94 + 696) = *(v95 + 87);
                          *(v94 + 704) = *(v95 + 88);
                          *(v94 + 712) = *(v95 + 89);
                          *(v94 + 720) = *(v95 + 90);
                          *(v94 + 728) = *(v95 + 91);
                          *(v94 + 736) = *(v95 + 92);
                          *(v94 + 744) = v95[744];
                          *(v94 + 745) = v95[745];
                          *(v94 + 752) = *(v95 + 94);
                          *(v94 + 760) = *(v95 + 95);
                          *(v94 + 768) = v95[768];
                          *(v94 + 776) = *(v95 + 97);
                          v518 = *(v95 + 49);
                          *(v94 + 800) = *(v95 + 100);
                          *(v94 + 784) = v518;
                          *(v94 + 808) = v95[808];
                        }
                      }

                      else if (v501 == 1)
                      {
                        outlined destroy of AccessibilityTextLayoutProperties(v94 + 664);
                        v509 = *(v95 + 680);
                        *v499 = *v500;
                        *(v94 + 680) = v509;
                        v510 = *(v95 + 744);
                        v512 = *(v95 + 696);
                        v511 = *(v95 + 712);
                        *(v94 + 728) = *(v95 + 728);
                        *(v94 + 744) = v510;
                        *(v94 + 696) = v512;
                        *(v94 + 712) = v511;
                        v514 = *(v95 + 776);
                        v513 = *(v95 + 792);
                        v515 = *(v95 + 760);
                        *(v94 + 808) = v95[808];
                        *(v94 + 776) = v514;
                        *(v94 + 792) = v513;
                        *(v94 + 760) = v515;
                      }

                      else
                      {
                        v519 = *v500;
                        *(v94 + 672) = v95[672];
                        *v499 = v519;
                        v520 = *(v95 + 85);
                        *(v94 + 688) = v95[688];
                        *(v94 + 680) = v520;
                        *(v94 + 689) = v95[689];
                        *(v94 + 690) = v95[690];
                        *(v94 + 691) = v95[691];
                        *(v94 + 692) = v95[692];
                        *(v94 + 696) = *(v95 + 87);
                        *(v94 + 704) = *(v95 + 88);
                        *(v94 + 712) = *(v95 + 89);
                        *(v94 + 720) = *(v95 + 90);
                        *(v94 + 728) = *(v95 + 91);
                        *(v94 + 736) = *(v95 + 92);
                        *(v94 + 744) = v95[744];
                        *(v94 + 745) = v95[745];
                        *(v94 + 752) = *(v95 + 94);
                        *(v94 + 760) = *(v95 + 95);
                        *(v94 + 768) = v95[768];
                        *(v94 + 776) = *(v95 + 97);

                        v521 = *(v95 + 49);
                        *(v94 + 800) = *(v95 + 100);
                        *(v94 + 784) = v521;
                        *(v94 + 808) = v95[808];
                      }

                      *(v94 + 816) = *(v95 + 102);

                      *(v94 + 824) = *(v95 + 103);

                      *(v94 + 832) = *(v95 + 104);

                      goto LABEL_309;
                    }

                    *(v94 + 624) = v466;
                    *(v94 + 632) = *(v95 + 79);
                    (**(v466 - 8))(v94 + 600, (v95 + 600));
                  }

                  else
                  {
                    v492 = *v464;
                    v493 = *(v95 + 616);
                    *(v94 + 632) = *(v95 + 79);
                    *v463 = v492;
                    *(v94 + 616) = v493;
                  }

                  *(v94 + 640) = *(v95 + 80);

                  goto LABEL_301;
                }

                outlined destroy of PlatformItemList.Item.Accessibility(v94 + 536);
LABEL_280:
                memcpy((v94 + 536), v95 + 536, 0x130uLL);
                goto LABEL_309;
              }

              if (!v461)
              {
                goto LABEL_280;
              }

              *(v94 + 536) = *(v95 + 67);
              *(v94 + 544) = *(v95 + 68);
              *(v94 + 552) = v95[552];
              *(v94 + 560) = *(v95 + 70);
              *(v94 + 568) = v95[568];
              v469 = *(v95 + 36);
              *(v94 + 592) = v95[592];
              *(v94 + 576) = v469;
              v470 = (v94 + 600);
              v471 = (v95 + 600);
              v472 = *(v95 + 78);

              if (v472)
              {
                if (v472 == 1)
                {
                  v473 = *v471;
                  v474 = *(v95 + 632);
                  *(v94 + 616) = *(v95 + 616);
                  *(v94 + 632) = v474;
                  *v470 = v473;
LABEL_289:
                  v479 = *(v95 + 81);
                  *(v94 + 656) = v95[656];
                  *(v94 + 648) = v479;
                  v480 = (v94 + 664);
                  v481 = v95 + 664;
                  if (*(v95 + 97) == 1)
                  {
                    v482 = *(v95 + 680);
                    *v480 = *v481;
                    *(v94 + 680) = v482;
                    v483 = *(v95 + 696);
                    v484 = *(v95 + 712);
                    v485 = *(v95 + 744);
                    *(v94 + 728) = *(v95 + 728);
                    *(v94 + 744) = v485;
                    *(v94 + 696) = v483;
                    *(v94 + 712) = v484;
                    v486 = *(v95 + 760);
                    v487 = *(v95 + 776);
                    v488 = *(v95 + 792);
                    *(v94 + 808) = v95[808];
                    *(v94 + 776) = v487;
                    *(v94 + 792) = v488;
                    *(v94 + 760) = v486;
                  }

                  else
                  {
                    v489 = *v481;
                    *(v94 + 672) = v95[672];
                    *v480 = v489;
                    v490 = *(v95 + 85);
                    *(v94 + 688) = v95[688];
                    *(v94 + 680) = v490;
                    *(v94 + 689) = v95[689];
                    *(v94 + 690) = v95[690];
                    *(v94 + 691) = v95[691];
                    *(v94 + 692) = v95[692];
                    *(v94 + 696) = *(v95 + 87);
                    *(v94 + 704) = *(v95 + 88);
                    *(v94 + 712) = *(v95 + 89);
                    *(v94 + 720) = *(v95 + 90);
                    *(v94 + 728) = *(v95 + 91);
                    *(v94 + 736) = *(v95 + 92);
                    *(v94 + 744) = v95[744];
                    *(v94 + 745) = v95[745];
                    *(v94 + 752) = *(v95 + 94);
                    *(v94 + 760) = *(v95 + 95);
                    *(v94 + 768) = v95[768];
                    *(v94 + 776) = *(v95 + 97);
                    v491 = *(v95 + 49);
                    *(v94 + 800) = *(v95 + 100);
                    *(v94 + 784) = v491;
                    *(v94 + 808) = v95[808];
                  }

                  *(v94 + 816) = *(v95 + 102);
                  *(v94 + 824) = *(v95 + 103);
                  *(v94 + 832) = *(v95 + 104);

LABEL_309:
                  v522 = (v94 + 840);
                  v523 = (v95 + 840);
                  v524 = *(v94 + 864);
                  v525 = *(v95 + 108);
                  if (v524 == 1)
                  {
                    if (v525)
                    {
                      if (v525 == 1)
                      {
                        v526 = *v523;
                        v527 = *(v95 + 856);
                        v528 = *(v95 + 872);
                        *(v94 + 888) = *(v95 + 111);
                        *(v94 + 856) = v527;
                        *(v94 + 872) = v528;
                        *v522 = v526;
LABEL_315:
                        a1 = v631;
                        goto LABEL_334;
                      }

                      *(v94 + 864) = v525;
                      *(v94 + 872) = *(v95 + 109);
                      (**(v525 - 8))(v94 + 840, (v95 + 840));
                    }

                    else
                    {
                      v532 = *v523;
                      v533 = *(v95 + 856);
                      *(v94 + 872) = *(v95 + 109);
                      *v522 = v532;
                      *(v94 + 856) = v533;
                    }

                    v534 = *(v95 + 110);
                    a1 = v631;
                    if (!v534)
                    {
                      goto LABEL_333;
                    }
                  }

                  else
                  {
                    if (v525 == 1)
                    {
                      outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v94 + 840);
                      v530 = *(v95 + 856);
                      v529 = *(v95 + 872);
                      v531 = *v523;
                      *(v94 + 888) = *(v95 + 111);
                      *(v94 + 856) = v530;
                      *(v94 + 872) = v529;
                      *v522 = v531;
                      goto LABEL_315;
                    }

                    if (v524)
                    {
                      if (v525)
                      {
                        __swift_assign_boxed_opaque_existential_1((v94 + 840), v95 + 105);
                      }

                      else
                      {
                        outlined destroy of AnyNavigationLinkPresentedValue(v94 + 840);
                        v535 = *(v95 + 109);
                        v536 = *(v95 + 856);
                        *v522 = *v523;
                        *(v94 + 856) = v536;
                        *(v94 + 872) = v535;
                      }
                    }

                    else if (v525)
                    {
                      *(v94 + 864) = v525;
                      *(v94 + 872) = *(v95 + 109);
                      (**(v525 - 8))(v94 + 840, (v95 + 840));
                    }

                    else
                    {
                      v537 = *v523;
                      v538 = *(v95 + 856);
                      *(v94 + 872) = *(v95 + 109);
                      *v522 = v537;
                      *(v94 + 856) = v538;
                    }

                    v534 = *(v95 + 110);
                    a1 = v631;
                    if (*(v94 + 880))
                    {
                      if (v534)
                      {
                        v539 = *(v95 + 111);
                        *(v94 + 880) = v534;
                        *(v94 + 888) = v539;

                        goto LABEL_334;
                      }

                      goto LABEL_333;
                    }

                    if (!v534)
                    {
LABEL_333:
                      *(v94 + 880) = *(v95 + 55);
LABEL_334:
                      v541 = *(v94 + 896);
                      v542 = *(v95 + 112);
                      *(v94 + 896) = v542;
                      v543 = v542;

                      *(v94 + 904) = *(v95 + 113);
                      *(v94 + 912) = *(v95 + 114);

                      *(v94 + 920) = *(v95 + 115);
                      *(v94 + 928) = *(v95 + 116);

                      *(v94 + 936) = *(v95 + 117);

                      *(v94 + 944) = *(v95 + 118);

                      *(v94 + 952) = v95[952];
                      *(v94 + 953) = v95[953];
                      *(v94 + 954) = v95[954];
                      v544 = *(v96 + 112);
                      v545 = (v94 + v544);
                      v546 = &v95[v544];
                      v547 = type metadata accessor for CommandOperation();
                      v548 = *(v547 - 8);
                      v549 = *(v548 + 48);
                      v622 = v545;
                      v550 = v549(v545, 1, v547);
                      v551 = v549(v546, 1, v547);
                      if (v550)
                      {
                        if (!v551)
                        {
                          *v545 = *v546;
                          v557 = *(v547 + 20);
                          v558 = &v545[v557];
                          v559 = &v546[v557];
                          v561 = *&v546[v557];
                          v560 = *&v546[v557 + 8];
                          v562 = v546[v557 + 16];
                          outlined copy of Text.Storage(v561, v560, v562);
                          *v558 = v561;
                          *(v558 + 1) = v560;
                          v558[16] = v562;
                          *(v558 + 3) = *(v559 + 3);
                          v563 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v564 = type metadata accessor for UUID();
                          __dstg = *(*(v564 - 8) + 16);

                          __dstg(&v558[v563], &v559[v563], v564);
                          v565 = *(v547 + 24);
                          v566 = &v622[v565];
                          v567 = &v546[v565];
                          if (*v567)
                          {
                            v568 = *(v567 + 1);
                            *v566 = *v567;
                            *(v566 + 1) = v568;
                          }

                          else
                          {
                            *v566 = *v567;
                          }

                          a1 = v631;
                          v556 = v625;
                          a2 = v628;
                          (*(v548 + 56))(v622, 0, 1, v547);
                          goto LABEL_347;
                        }

                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        v553 = *(*(v552 - 8) + 64);
                        v554 = v545;
                      }

                      else
                      {
                        if (!v551)
                        {
                          v617 = v546;
                          *v545 = *v546;
                          v569 = *(v547 + 20);
                          v570 = &v545[v569];
                          v571 = &v546[v569];
                          v573 = *&v546[v569];
                          v572 = *&v546[v569 + 8];
                          v574 = v546[v569 + 16];
                          outlined copy of Text.Storage(*v571, *(v571 + 1), v571[16]);
                          v575 = *v570;
                          v576 = *(v570 + 1);
                          v577 = v570[16];
                          *v570 = v573;
                          *(v570 + 1) = v572;
                          v570[16] = v574;
                          outlined consume of Text.Storage(v575, v576, v577);
                          *(v570 + 3) = *(v571 + 3);

                          v578 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v579 = type metadata accessor for UUID();
                          (*(*(v579 - 8) + 24))(&v570[v578], &v571[v578], v579);
                          v580 = *(v547 + 24);
                          v581 = &v545[v580];
                          v582 = &v617[v580];
                          v583 = *&v545[v580];
                          v584 = *&v617[v580];
                          if (v583)
                          {
                            v556 = v625;
                            a2 = v628;
                            v4 = v634;
                            if (v584)
                            {
                              v585 = *(v582 + 1);
                              *v581 = v584;
                              *(v581 + 1) = v585;

LABEL_348:
                              *(v94 + v556[29]) = v95[v556[29]];
                              *(v94 + v556[30]) = v95[v556[30]];
                              *(v94 + v556[31]) = v95[v556[31]];
                              *(v94 + v556[32]) = v95[v556[32]];
                              *(v94 + v556[33]) = v95[v556[33]];
                              *(v94 + v556[34]) = *&v95[v556[34]];

                              goto LABEL_349;
                            }
                          }

                          else
                          {
                            v556 = v625;
                            a2 = v628;
                            v4 = v634;
                            if (v584)
                            {
                              v586 = *(v582 + 1);
                              *v581 = v584;
                              *(v581 + 1) = v586;

                              goto LABEL_348;
                            }
                          }

                          *v581 = *v582;
                          goto LABEL_348;
                        }

                        outlined destroy of CommandOperation(v545, type metadata accessor for CommandOperation);
                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        v553 = *(*(v555 - 8) + 64);
                        v554 = v545;
                      }

                      memcpy(v554, v546, v553);
                      v556 = v625;
                      a2 = v628;
LABEL_347:
                      v4 = v634;
                      goto LABEL_348;
                    }
                  }

                  v540 = *(v95 + 111);
                  *(v94 + 880) = v534;
                  *(v94 + 888) = v540;

                  goto LABEL_334;
                }

                *(v94 + 624) = v472;
                *(v94 + 632) = *(v95 + 79);
                (**(v472 - 8))(v94 + 600, (v95 + 600), v472);
              }

              else
              {
                v477 = *v471;
                v478 = *(v95 + 616);
                *(v94 + 632) = *(v95 + 79);
                *v470 = v477;
                *(v94 + 616) = v478;
              }

              *(v94 + 640) = *(v95 + 80);

              goto LABEL_289;
            }
          }

          else if (v452)
          {
LABEL_258:
            v457 = *(v95 + 57);
            *(v94 + 448) = v452;
            *(v94 + 456) = v457;

            goto LABEL_261;
          }

LABEL_260:
          *(v94 + 448) = *(v95 + 28);
          goto LABEL_261;
        }

        if (!v385)
        {
          outlined destroy of Image.NamedResolved(v94 + 256);
          v393 = *(v95 + 17);
          v392 = *(v95 + 18);
          *(v94 + 256) = *(v95 + 16);
          *(v94 + 272) = v393;
          *(v94 + 288) = v392;
          goto LABEL_220;
        }

        *(v94 + 256) = *(v95 + 32);
        *(v94 + 264) = *(v95 + 33);

        v386 = *(v94 + 272);
        v387 = *(v95 + 34);
        if (v386 >= 2)
        {
          if (v387 >= 2)
          {
            *(v94 + 272) = v387;
            v396 = v387;

            goto LABEL_219;
          }

          v387 = *(v95 + 34);
        }

        else if (v387 >= 2)
        {
          *(v94 + 272) = v387;
          v388 = v387;
LABEL_219:
          v397 = *(v95 + 70);
          *(v94 + 284) = v95[284];
          *(v94 + 280) = v397;
          *(v94 + 285) = v95[285];
          *(v94 + 286) = v95[286];
          *(v94 + 288) = *(v95 + 36);

          *(v94 + 296) = *(v95 + 37);

          goto LABEL_220;
        }

        *(v94 + 272) = v387;
        goto LABEL_219;
      }

      outlined destroy of PlatformItemCollection(v72 + 16);
    }

    v86 = v73[24];
    *(v72 + 16) = *(v73 + 2);
    *(v72 + 24) = v86;
    goto LABEL_61;
  }

  if (!v8)
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v9 = *(a2 + 5);

    if (v9)
    {
      v10 = *(a2 + 2);
      v11 = *(a2 + 3);
      v12 = a2[32];
      outlined copy of Text.Storage(v10, v11, v12);
      *(a1 + 2) = v10;
      *(a1 + 3) = v11;
      a1[32] = v12;
      *(a1 + 5) = *(a2 + 5);
    }

    else
    {
      v23 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v23;
    }

    v24 = *(a2 + 6);
    if (v24 != 1)
    {
    }

    *(a1 + 6) = v24;
    a1[56] = a2[56];
    *(a1 + 8) = *(a2 + 8);
    a1[72] = a2[72];
    v25 = *(v4 + 24);
    v26 = &a1[v25];
    v27 = &a2[v25];
    v28 = a2[v25 + 8];

    if (v28 == 255)
    {
      v30 = *v27;
      v26[8] = v27[8];
      *v26 = v30;
    }

    else
    {
      v29 = *v27;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v27, v28 & 1);
      *v26 = v29;
      v26[8] = v28 & 1;
    }

    v31 = v27[24];
    v632 = v4;
    if (v31 == 254 || v31 == 255)
    {
      v32 = *(v27 + 2);
      v26[24] = v27[24];
      *(v26 + 2) = v32;
    }

    else
    {
      v33 = *(v27 + 2);
      v34 = v31 & 1;
      outlined copy of PlatformItemCollection.Storage(v33, v31 & 1);
      *(v26 + 2) = v33;
      v26[24] = v34;
    }

    swift_unknownObjectWeakCopyInit();
    *(v26 + 5) = *(v27 + 5);
    v35 = *(v27 + 6);
    *(v26 + 6) = v35;
    v36 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v37 = &v26[v36];
    v38 = &v27[v36];
    v39 = type metadata accessor for PlatformItemList.Item();
    v40 = *(v39 - 8);
    v41 = v40[6];
    v42 = v35;
    if (v41(v38, 1, v39))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v37, v38, *(*(v43 - 8) + 64));
LABEL_123:
      *&a1[*(v632 + 28)] = *&a2[*(v632 + 28)];
      (*(v5 + 56))(a1, 0, 1);
      return a1;
    }

    v612 = v40;
    v618 = v5;
    v629 = a1;
    v44 = *v38;
    *v37 = *v38;
    v45 = *(v38 + 1);
    *(v37 + 1) = v45;
    *(v37 + 2) = *(v38 + 2);
    *(v37 + 3) = *(v38 + 3);
    v37[32] = v38[32];
    *(v37 + 5) = *(v38 + 5);
    *(v37 + 6) = *(v38 + 6);
    v37[56] = v38[56];
    v46 = *(v38 + 24);
    v47 = v44;
    v48 = v45;

    if (v46 >> 1 == 4294967294)
    {
      v49 = *(v38 + 4);
      v50 = *(v38 + 5);
      v51 = *(v38 + 7);
      *(v37 + 6) = *(v38 + 6);
      *(v37 + 7) = v51;
      *(v37 + 4) = v49;
      *(v37 + 5) = v50;
      v52 = *(v38 + 8);
      v53 = *(v38 + 9);
      v54 = *(v38 + 11);
      *(v37 + 10) = *(v38 + 10);
      *(v37 + 11) = v54;
      *(v37 + 8) = v52;
      *(v37 + 9) = v53;
      v55 = *(v38 + 12);
      v56 = *(v38 + 13);
      v57 = *(v38 + 14);
      *(v37 + 235) = *(v38 + 235);
      *(v37 + 13) = v56;
      *(v37 + 14) = v57;
      *(v37 + 12) = v55;
      if (*(v38 + 33))
      {
LABEL_27:
        *(v37 + 32) = *(v38 + 32);
        *(v37 + 33) = *(v38 + 33);
        v58 = *(v38 + 34);

        if (v58 >= 2)
        {
          v59 = v58;
        }

        *(v37 + 34) = v58;
        v60 = *(v38 + 70);
        v37[284] = v38[284];
        *(v37 + 70) = v60;
        v37[285] = v38[285];
        v37[286] = v38[286];
        *(v37 + 36) = *(v38 + 36);
        *(v37 + 37) = *(v38 + 37);

LABEL_79:
        v151 = *(v38 + 42);
        v624 = v39;
        v626 = a2;
        if (v151 >> 2 == 0xFFFFFFFF)
        {
          v152 = *(v38 + 19);
          v153 = *(v38 + 21);
          *(v37 + 20) = *(v38 + 20);
          *(v37 + 21) = v153;
          *(v37 + 19) = v152;
          v154 = *(v38 + 22);
          v155 = *(v38 + 23);
          v156 = *(v38 + 24);
          *(v37 + 50) = *(v38 + 50);
          *(v37 + 23) = v155;
          *(v37 + 24) = v156;
          *(v37 + 22) = v154;
        }

        else
        {
          v157 = *(v38 + 38);
          v158 = *(v38 + 39);
          v160 = *(v38 + 40);
          v159 = *(v38 + 41);
          v161 = *(v38 + 43);
          v162 = *(v38 + 44);
          v163 = *(v38 + 45);
          v587 = *(v38 + 46);
          v588 = *(v38 + 47);
          v591 = *(v38 + 48);
          v597 = *(v38 + 49);
          __dstb = *(v38 + 50);
          outlined copy of PlatformItemList.Item.SystemItem(v157, v158, v160, v159, v151, v161, v162, v163, v587, v588, v591, v597, __dstb);
          *(v37 + 38) = v157;
          *(v37 + 39) = v158;
          *(v37 + 40) = v160;
          *(v37 + 41) = v159;
          *(v37 + 42) = v151;
          *(v37 + 43) = v161;
          *(v37 + 44) = v162;
          *(v37 + 45) = v163;
          *(v37 + 46) = v587;
          *(v37 + 47) = v588;
          *(v37 + 48) = v591;
          *(v37 + 49) = v597;
          *(v37 + 50) = __dstb;
        }

        if (*(v38 + 52) == 1)
        {
          *(v37 + 408) = *(v38 + 408);
          v164 = *(v38 + 424);
          v165 = *(v38 + 440);
          v166 = *(v38 + 456);
          v37[472] = v38[472];
          *(v37 + 440) = v165;
          *(v37 + 456) = v166;
          *(v37 + 424) = v164;
          goto LABEL_94;
        }

        v37[408] = v38[408];
        v37[409] = v38[409];
        v37[410] = v38[410];
        v37[411] = v38[411];
        v37[412] = v38[412];
        v167 = *(v38 + 52);
        if (v167)
        {
          v168 = *(v38 + 53);
          *(v37 + 52) = v167;
          *(v37 + 53) = v168;

          v169 = *(v38 + 54);
          if (v169)
          {
            goto LABEL_86;
          }
        }

        else
        {
          *(v37 + 26) = *(v38 + 26);
          v169 = *(v38 + 54);
          if (v169)
          {
LABEL_86:
            v170 = *(v38 + 55);
            *(v37 + 54) = v169;
            *(v37 + 55) = v170;

            v171 = *(v38 + 56);
            if (v171)
            {
LABEL_87:
              v172 = *(v38 + 57);
              *(v37 + 56) = v171;
              *(v37 + 57) = v172;

LABEL_93:
              *(v37 + 58) = *(v38 + 58);
              v37[472] = v38[472];
LABEL_94:
              *(v37 + 60) = *(v38 + 60);
              *(v37 + 61) = *(v38 + 61);
              *(v37 + 62) = *(v38 + 62);
              v37[504] = v38[504];
              v175 = *(v38 + 64);

              if (v175)
              {
                v176 = *(v38 + 65);
                *(v37 + 64) = v175;
                *(v37 + 65) = v176;
              }

              else
              {
                *(v37 + 32) = *(v38 + 32);
              }

              v37[528] = v38[528];
              if (!*(v38 + 102))
              {
                memcpy(v37 + 536, v38 + 536, 0x130uLL);
                goto LABEL_109;
              }

              *(v37 + 67) = *(v38 + 67);
              *(v37 + 68) = *(v38 + 68);
              v37[552] = v38[552];
              *(v37 + 70) = *(v38 + 70);
              v37[568] = v38[568];
              v177 = *(v38 + 36);
              v37[592] = v38[592];
              *(v37 + 36) = v177;
              v178 = v37 + 600;
              v179 = (v38 + 600);
              v180 = *(v38 + 78);

              if (v180)
              {
                if (v180 == 1)
                {
                  v181 = *v179;
                  v182 = *(v38 + 632);
                  *(v37 + 616) = *(v38 + 616);
                  *(v37 + 632) = v182;
                  *v178 = v181;
LABEL_105:
                  v185 = *(v38 + 81);
                  v37[656] = v38[656];
                  *(v37 + 81) = v185;
                  v186 = v37 + 664;
                  v187 = v38 + 664;
                  if (*(v38 + 97) == 1)
                  {
                    v188 = *(v38 + 680);
                    *v186 = *v187;
                    *(v37 + 680) = v188;
                    v189 = *(v38 + 696);
                    v190 = *(v38 + 712);
                    v191 = *(v38 + 744);
                    *(v37 + 728) = *(v38 + 728);
                    *(v37 + 744) = v191;
                    *(v37 + 696) = v189;
                    *(v37 + 712) = v190;
                    v192 = *(v38 + 760);
                    v193 = *(v38 + 776);
                    v194 = *(v38 + 792);
                    v37[808] = v38[808];
                    *(v37 + 776) = v193;
                    *(v37 + 792) = v194;
                    *(v37 + 760) = v192;
                  }

                  else
                  {
                    v195 = *v187;
                    v37[672] = v38[672];
                    *v186 = v195;
                    v196 = *(v38 + 85);
                    v37[688] = v38[688];
                    *(v37 + 85) = v196;
                    v37[689] = v38[689];
                    v37[690] = v38[690];
                    v37[691] = v38[691];
                    v37[692] = v38[692];
                    *(v37 + 87) = *(v38 + 87);
                    *(v37 + 88) = *(v38 + 88);
                    *(v37 + 89) = *(v38 + 89);
                    *(v37 + 90) = *(v38 + 90);
                    *(v37 + 91) = *(v38 + 91);
                    *(v37 + 92) = *(v38 + 92);
                    v37[744] = v38[744];
                    v37[745] = v38[745];
                    *(v37 + 94) = *(v38 + 94);
                    *(v37 + 95) = *(v38 + 95);
                    v37[768] = v38[768];
                    *(v37 + 97) = *(v38 + 97);
                    v197 = *(v38 + 49);
                    *(v37 + 100) = *(v38 + 100);
                    *(v37 + 49) = v197;
                    v37[808] = v38[808];
                  }

                  *(v37 + 102) = *(v38 + 102);
                  *(v37 + 103) = *(v38 + 103);
                  *(v37 + 104) = *(v38 + 104);

LABEL_109:
                  v198 = v37 + 840;
                  v199 = (v38 + 840);
                  v200 = *(v38 + 108);
                  if (v200)
                  {
                    if (v200 == 1)
                    {
                      v201 = *v199;
                      v202 = *(v38 + 856);
                      v203 = *(v38 + 872);
                      *(v37 + 111) = *(v38 + 111);
                      *(v37 + 856) = v202;
                      *(v37 + 872) = v203;
                      *v198 = v201;
LABEL_116:
                      v208 = *(v38 + 112);
                      *(v37 + 112) = v208;
                      *(v37 + 113) = *(v38 + 113);
                      *(v37 + 114) = *(v38 + 114);
                      *(v37 + 115) = *(v38 + 115);
                      *(v37 + 116) = *(v38 + 116);
                      *(v37 + 117) = *(v38 + 117);
                      *(v37 + 118) = *(v38 + 118);
                      v37[952] = v38[952];
                      v37[953] = v38[953];
                      v37[954] = v38[954];
                      v209 = v624[28];
                      __dst = &v37[v209];
                      v210 = &v38[v209];
                      v211 = type metadata accessor for CommandOperation();
                      v592 = *(v211 - 8);
                      v598 = *(v592 + 48);
                      v212 = v208;
                      v213 = v210;

                      if (v598(v210, 1, v211))
                      {
                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v210, *(*(v214 - 8) + 64));
                        a1 = v629;
                        v215 = v624;
                        a2 = v626;
                        v216 = v612;
                        v5 = v618;
                      }

                      else
                      {
                        *__dst = *v210;
                        v217 = *(v211 + 20);
                        v218 = v211;
                        v219 = &__dst[v217];
                        v220 = &v213[v217];
                        v599 = v213;
                        v221 = *&v213[v217];
                        v222 = *(v220 + 1);
                        v223 = v220[16];
                        outlined copy of Text.Storage(v221, v222, v223);
                        *v219 = v221;
                        *(v219 + 1) = v222;
                        v219[16] = v223;
                        *(v219 + 3) = *(v220 + 3);
                        v224 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v225 = type metadata accessor for UUID();
                        v589 = *(*(v225 - 8) + 16);

                        v589(&v219[v224], &v220[v224], v225);
                        v226 = *(v218 + 24);
                        v227 = &__dst[v226];
                        v228 = &v599[v226];
                        if (*v228)
                        {
                          v229 = *(v228 + 1);
                          *v227 = *v228;
                          *(v227 + 1) = v229;
                        }

                        else
                        {
                          *v227 = *v228;
                        }

                        a1 = v629;
                        v215 = v624;
                        a2 = v626;
                        v216 = v612;
                        v5 = v618;
                        (*(v592 + 56))(__dst, 0, 1, v218);
                      }

                      v37[v215[29]] = v38[v215[29]];
                      v37[v215[30]] = v38[v215[30]];
                      v37[v215[31]] = v38[v215[31]];
                      v37[v215[32]] = v38[v215[32]];
                      v37[v215[33]] = v38[v215[33]];
                      *&v37[v215[34]] = *&v38[v215[34]];
                      v230 = v216[7];

                      v230(v37, 0, 1, v215);
                      goto LABEL_123;
                    }

                    *(v37 + 108) = v200;
                    *(v37 + 109) = *(v38 + 109);
                    (**(v200 - 8))(v198, v199);
                    v206 = *(v38 + 110);
                    if (!v206)
                    {
LABEL_115:
                      *(v37 + 55) = *(v38 + 55);
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v204 = *v199;
                    v205 = *(v38 + 856);
                    *(v37 + 109) = *(v38 + 109);
                    *v198 = v204;
                    *(v37 + 856) = v205;
                    v206 = *(v38 + 110);
                    if (!v206)
                    {
                      goto LABEL_115;
                    }
                  }

                  v207 = *(v38 + 111);
                  *(v37 + 110) = v206;
                  *(v37 + 111) = v207;

                  goto LABEL_116;
                }

                *(v37 + 78) = v180;
                *(v37 + 79) = *(v38 + 79);
                (**(v180 - 8))((v37 + 600), (v38 + 600), v180);
              }

              else
              {
                v183 = *v179;
                v184 = *(v38 + 616);
                *(v37 + 79) = *(v38 + 79);
                *v178 = v183;
                *(v37 + 616) = v184;
              }

              *(v37 + 80) = *(v38 + 80);

              goto LABEL_105;
            }

LABEL_92:
            *(v37 + 28) = *(v38 + 28);
            goto LABEL_93;
          }
        }

        *(v37 + 27) = *(v38 + 27);
        v171 = *(v38 + 56);
        if (v171)
        {
          goto LABEL_87;
        }

        goto LABEL_92;
      }
    }

    else
    {
      v64 = v38[72];
      if (v64 == 255)
      {
        v136 = *(v38 + 8);
        v37[72] = v38[72];
        *(v37 + 8) = v136;
      }

      else
      {
        v65 = *(v38 + 8);
        outlined copy of GraphicsImage.Contents(v65, v38[72]);
        *(v37 + 8) = v65;
        v37[72] = v64;
      }

      *(v37 + 10) = *(v38 + 10);
      *(v37 + 88) = *(v38 + 88);
      v37[104] = v38[104];
      v137 = *(v38 + 108);
      *(v37 + 121) = *(v38 + 121);
      *(v37 + 108) = v137;
      v138 = *(v38 + 136);
      v139 = *(v38 + 152);
      v37[168] = v38[168];
      *(v37 + 152) = v139;
      *(v37 + 136) = v138;
      v37[169] = v38[169];
      v37[170] = v38[170];
      v37[171] = v38[171];
      v140 = *(v38 + 24);
      if (v140 >> 1 == 0xFFFFFFFF)
      {
        v141 = *(v38 + 12);
        *(v37 + 11) = *(v38 + 11);
        *(v37 + 12) = v141;
      }

      else
      {
        v142 = *(v38 + 22);
        v143 = *(v38 + 23);
        v144 = a2;
        v145 = *(v38 + 25);
        outlined copy of AccessibilityImageLabel(v142, v143, *(v38 + 24));
        *(v37 + 22) = v142;
        *(v37 + 23) = v143;
        *(v37 + 24) = v140;
        *(v37 + 25) = v145;
        a2 = v144;
      }

      *(v37 + 26) = *(v38 + 26);
      *(v37 + 27) = *(v38 + 27);
      v37[224] = v38[224];
      v37[225] = v38[225];
      v146 = *(v38 + 57);
      v37[232] = v38[232];
      *(v37 + 57) = v146;
      v147 = *(v38 + 30);
      *(v37 + 30) = v147;
      *(v37 + 124) = *(v38 + 124);
      v37[250] = v38[250];
      swift_unknownObjectRetain();

      v148 = v147;
      if (*(v38 + 33))
      {
        goto LABEL_27;
      }
    }

    v149 = *(v38 + 16);
    v150 = *(v38 + 18);
    *(v37 + 17) = *(v38 + 17);
    *(v37 + 18) = v150;
    *(v37 + 16) = v149;
    goto LABEL_79;
  }

LABEL_7:
  type metadata accessor for NavigationItemDescription?(0);
  v14 = *(*(v13 - 8) + 64);

  return memcpy(a1, a2, v14);
}

_OWORD *initializeWithTake for DocumentToolbarInputContentWriter(_OWORD *a1, _OWORD *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    type metadata accessor for NavigationItemDescription?(0);
    v7 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v9 = a2[1];
    *a1 = *a2;
    a1[1] = v9;
    v10 = a2[3];
    a1[2] = a2[2];
    a1[3] = v10;
    *(a1 + 57) = *(a2 + 57);
    v11 = *(v4 + 24);
    v12 = a1 + v11;
    v13 = a2 + v11;
    *v12 = *(a2 + v11);
    v12[8] = *(a2 + v11 + 8);
    *(v12 + 2) = *(a2 + v11 + 16);
    v12[24] = *(a2 + v11 + 24);
    swift_unknownObjectWeakTakeInit();
    v14 = *(v13 + 6);
    *(v12 + 5) = *(v13 + 5);
    *(v12 + 6) = v14;
    v15 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v16 = &v12[v15];
    v17 = &v13[v15];
    v18 = type metadata accessor for PlatformItemList.Item();
    v19 = *(v18 - 1);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v45 = v19;
      v21 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v21;
      v16[32] = v17[32];
      *(v16 + 40) = *(v17 + 40);
      v16[56] = v17[56];
      v22 = *(v17 + 13);
      *(v16 + 12) = *(v17 + 12);
      *(v16 + 13) = v22;
      *(v16 + 14) = *(v17 + 14);
      *(v16 + 235) = *(v17 + 235);
      v23 = *(v17 + 9);
      *(v16 + 8) = *(v17 + 8);
      *(v16 + 9) = v23;
      v24 = *(v17 + 11);
      *(v16 + 10) = *(v17 + 10);
      *(v16 + 11) = v24;
      v25 = *(v17 + 5);
      *(v16 + 4) = *(v17 + 4);
      *(v16 + 5) = v25;
      v26 = *(v17 + 7);
      *(v16 + 6) = *(v17 + 6);
      *(v16 + 7) = v26;
      v27 = *(v17 + 17);
      *(v16 + 16) = *(v17 + 16);
      *(v16 + 17) = v27;
      v28 = *(v17 + 23);
      *(v16 + 22) = *(v17 + 22);
      *(v16 + 23) = v28;
      *(v16 + 24) = *(v17 + 24);
      *(v16 + 50) = *(v17 + 50);
      v29 = *(v17 + 19);
      *(v16 + 18) = *(v17 + 18);
      *(v16 + 19) = v29;
      v30 = *(v17 + 21);
      *(v16 + 20) = *(v17 + 20);
      *(v16 + 21) = v30;
      v31 = *(v17 + 456);
      *(v16 + 440) = *(v17 + 440);
      *(v16 + 456) = v31;
      v16[472] = v17[472];
      v32 = *(v17 + 424);
      *(v16 + 408) = *(v17 + 408);
      *(v16 + 424) = v32;
      *(v16 + 30) = *(v17 + 30);
      *(v16 + 489) = *(v17 + 489);
      *(v16 + 32) = *(v17 + 32);
      v16[528] = v17[528];
      memcpy(v16 + 536, v17 + 536, 0x130uLL);
      v33 = *(v17 + 856);
      *(v16 + 840) = *(v17 + 840);
      *(v16 + 856) = v33;
      *(v16 + 872) = *(v17 + 872);
      *(v16 + 111) = *(v17 + 111);
      *(v16 + 112) = *(v17 + 112);
      *(v16 + 904) = *(v17 + 904);
      *(v16 + 920) = *(v17 + 920);
      *(v16 + 117) = *(v17 + 117);
      *(v16 + 118) = *(v17 + 118);
      v16[952] = v17[952];
      *(v16 + 953) = *(v17 + 953);
      v34 = v18[28];
      __dst = &v16[v34];
      v35 = &v17[v34];
      v36 = type metadata accessor for CommandOperation();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v35, 1, v36))
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(__dst, v35, *(*(v38 - 8) + 64));
      }

      else
      {
        *__dst = *v35;
        v39 = *(v36 + 20);
        v43 = &__dst[v39];
        v44 = &v35[v39];
        v40 = *&v35[v39 + 16];
        *v43 = *&v35[v39];
        *(v43 + 1) = v40;
        v42 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v41 = type metadata accessor for UUID();
        (*(*(v41 - 8) + 32))(&v43[v42], &v44[v42], v41);
        *&__dst[*(v36 + 24)] = *&v35[*(v36 + 24)];
        (*(v37 + 56))();
      }

      v16[v18[29]] = v17[v18[29]];
      v16[v18[30]] = v17[v18[30]];
      v16[v18[31]] = v17[v18[31]];
      v16[v18[32]] = v17[v18[32]];
      v16[v18[33]] = v17[v18[33]];
      *&v16[v18[34]] = *&v17[v18[34]];
      (*(v45 + 56))(v16, 0, 1, v18);
    }

    *(a1 + *(v4 + 28)) = *(a2 + *(v4 + 28));
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

char *assignWithTake for DocumentToolbarInputContentWriter(char *a1, char *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (!v7)
  {
    if (v8)
    {
      outlined destroy of CommandOperation(a1, type metadata accessor for NavigationItemDescription);
      goto LABEL_7;
    }

    v24 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v24;

    if (*(a1 + 5))
    {
      if (*(a2 + 5))
      {
        v25 = a2[32];
        v26 = *(a1 + 2);
        v27 = *(a1 + 3);
        v28 = a1[32];
        *(a1 + 1) = *(a2 + 1);
        a1[32] = v25;
        outlined consume of Text.Storage(v26, v27, v28);
        *(a1 + 5) = *(a2 + 5);

        goto LABEL_17;
      }

      outlined destroy of Text((a1 + 16));
    }

    v47 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v47;
LABEL_17:
    v48 = a1 + 48;
    v49 = *(a2 + 6);
    if (*(a1 + 6) != 1)
    {
      if (v49 != 1)
      {
        *v48 = v49;

LABEL_22:
        a1[56] = a2[56];
        *(a1 + 8) = *(a2 + 8);

        a1[72] = a2[72];
        v50 = *(v4 + 24);
        v51 = &a1[v50];
        v52 = &a2[v50];
        v53 = a1[v50 + 8];
        if (v53 != 255)
        {
          v54 = v52[8];
          if (v54 != 255)
          {
            v55 = *v51;
            *v51 = *v52;
            *(v51 + 8) = v54 & 1;
            outlined consume of ResolvableCLKTextProvider.FontStorage(v55, v53 & 1);
            goto LABEL_30;
          }

          outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v51);
        }

        *v51 = *v52;
        *(v51 + 8) = v52[8];
LABEL_30:
        v63 = *(v51 + 24);
        if (v63 != 254)
        {
          v64 = v52[24];
          if (v64 == 254)
          {
            outlined destroy of ToolbarStorage.NavigationProperties.Actions(v51 + 16);
          }

          else if (v63 != 255)
          {
            if (v64 != 255)
            {
              v65 = *(v51 + 16);
              *(v51 + 16) = *(v52 + 2);
              *(v51 + 24) = v64 & 1;
              outlined consume of PlatformItemCollection.Storage(v65, v63 & 1);
              goto LABEL_38;
            }

            outlined destroy of PlatformItemCollection(v51 + 16);
          }
        }

        *(v51 + 16) = *(v52 + 2);
        *(v51 + 24) = v52[24];
LABEL_38:
        swift_unknownObjectWeakTakeAssign();
        v66 = *(v51 + 48);
        *(v51 + 40) = *(v52 + 40);

        v67 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
        v68 = v51 + v67;
        v69 = &v52[v67];
        v70 = type metadata accessor for PlatformItemList.Item();
        v71 = *(v70 - 1);
        v72 = *(v71 + 48);
        v73 = v72(v68, 1, v70);
        v74 = v72(v69, 1, v70);
        if (v73)
        {
          if (!v74)
          {
            v225 = v4;
            v75 = *(v69 + 1);
            *v68 = *v69;
            *(v68 + 16) = v75;
            *(v68 + 32) = v69[32];
            *(v68 + 40) = *(v69 + 40);
            *(v68 + 56) = v69[56];
            v76 = *(v69 + 13);
            *(v68 + 192) = *(v69 + 12);
            *(v68 + 208) = v76;
            *(v68 + 224) = *(v69 + 14);
            *(v68 + 235) = *(v69 + 235);
            v77 = *(v69 + 9);
            *(v68 + 128) = *(v69 + 8);
            *(v68 + 144) = v77;
            v78 = *(v69 + 11);
            *(v68 + 160) = *(v69 + 10);
            *(v68 + 176) = v78;
            v79 = *(v69 + 5);
            *(v68 + 64) = *(v69 + 4);
            *(v68 + 80) = v79;
            v80 = *(v69 + 7);
            *(v68 + 96) = *(v69 + 6);
            *(v68 + 112) = v80;
            v81 = *(v69 + 17);
            *(v68 + 256) = *(v69 + 16);
            *(v68 + 272) = v81;
            v82 = *(v69 + 23);
            *(v68 + 352) = *(v69 + 22);
            *(v68 + 368) = v82;
            *(v68 + 384) = *(v69 + 24);
            *(v68 + 400) = *(v69 + 50);
            v83 = *(v69 + 19);
            *(v68 + 288) = *(v69 + 18);
            *(v68 + 304) = v83;
            v84 = *(v69 + 21);
            *(v68 + 320) = *(v69 + 20);
            *(v68 + 336) = v84;
            v85 = *(v69 + 456);
            *(v68 + 440) = *(v69 + 440);
            *(v68 + 456) = v85;
            *(v68 + 472) = v69[472];
            v86 = *(v69 + 424);
            *(v68 + 408) = *(v69 + 408);
            *(v68 + 424) = v86;
            *(v68 + 480) = *(v69 + 30);
            *(v68 + 489) = *(v69 + 489);
            *(v68 + 512) = *(v69 + 32);
            *(v68 + 528) = v69[528];
            memcpy((v68 + 536), v69 + 536, 0x130uLL);
            v87 = *(v69 + 856);
            *(v68 + 840) = *(v69 + 840);
            *(v68 + 856) = v87;
            *(v68 + 872) = *(v69 + 872);
            *(v68 + 888) = *(v69 + 111);
            *(v68 + 896) = *(v69 + 112);
            *(v68 + 904) = *(v69 + 904);
            *(v68 + 920) = *(v69 + 920);
            *(v68 + 936) = *(v69 + 117);
            *(v68 + 944) = *(v69 + 118);
            *(v68 + 952) = v69[952];
            *(v68 + 953) = *(v69 + 953);
            v88 = v70[28];
            v89 = (v68 + v88);
            v90 = &v69[v88];
            v91 = type metadata accessor for CommandOperation();
            v92 = *(v91 - 8);
            if ((*(v92 + 48))(v90, 1, v91))
            {
              type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
              memcpy(v89, v90, *(*(v93 - 8) + 64));
            }

            else
            {
              *v89 = *v90;
              v104 = *(v91 + 20);
              __srca = v89;
              __dstb = v70;
              v105 = &v89[v104];
              v106 = &v90[v104];
              v107 = *&v90[v104 + 16];
              *v105 = *&v90[v104];
              *(v105 + 1) = v107;
              v217 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v108 = type metadata accessor for UUID();
              v109 = &v105[v217];
              v70 = __dstb;
              (*(*(v108 - 8) + 32))(v109, &v106[v217], v108);
              *&__srca[*(v91 + 24)] = *&v90[*(v91 + 24)];
              (*(v92 + 56))();
            }

            v4 = v225;
            *(v68 + v70[29]) = v69[v70[29]];
            *(v68 + v70[30]) = v69[v70[30]];
            *(v68 + v70[31]) = v69[v70[31]];
            *(v68 + v70[32]) = v69[v70[32]];
            *(v68 + v70[33]) = v69[v70[33]];
            *(v68 + v70[34]) = *&v69[v70[34]];
            (*(v71 + 56))(v68, 0, 1, v70);
            goto LABEL_145;
          }

          goto LABEL_44;
        }

        if (v74)
        {
          outlined destroy of CommandOperation(v68, type metadata accessor for PlatformItemList.Item);
LABEL_44:
          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
          memcpy(v68, v69, *(*(v94 - 8) + 64));
LABEL_145:
          *&a1[*(v4 + 28)] = *&a2[*(v4 + 28)];
          return a1;
        }

        v95 = *v68;
        *v68 = *v69;

        v96 = *(v68 + 8);
        *(v68 + 8) = *(v69 + 1);

        v97 = *(v69 + 3);
        *(v68 + 16) = *(v69 + 2);
        *(v68 + 24) = v97;

        *(v68 + 32) = v69[32];
        v98 = *(v69 + 6);
        *(v68 + 40) = *(v69 + 5);
        *(v68 + 48) = v98;

        *(v68 + 56) = v69[56];
        if (*(v68 + 192) >> 1 == 4294967294)
        {
          goto LABEL_48;
        }

        if (*(v69 + 24) >> 1 == 4294967294)
        {
          outlined destroy of Image.Resolved(v68 + 64);
LABEL_48:
          v99 = *(v69 + 13);
          *(v68 + 192) = *(v69 + 12);
          *(v68 + 208) = v99;
          *(v68 + 224) = *(v69 + 14);
          *(v68 + 235) = *(v69 + 235);
          v100 = *(v69 + 9);
          *(v68 + 128) = *(v69 + 8);
          *(v68 + 144) = v100;
          v101 = *(v69 + 11);
          *(v68 + 160) = *(v69 + 10);
          *(v68 + 176) = v101;
          v102 = *(v69 + 5);
          *(v68 + 64) = *(v69 + 4);
          *(v68 + 80) = v102;
          v103 = *(v69 + 7);
          *(v68 + 96) = *(v69 + 6);
          *(v68 + 112) = v103;
          goto LABEL_62;
        }

        v110 = *(v68 + 72);
        if (v110 != 255)
        {
          v111 = v69[72];
          if (v111 != 255)
          {
            v112 = *(v68 + 64);
            *(v68 + 64) = *(v69 + 8);
            *(v68 + 72) = v111;
            outlined consume of GraphicsImage.Contents(v112, v110);
            goto LABEL_56;
          }

          outlined destroy of GraphicsImage.Contents(v68 + 64);
        }

        *(v68 + 64) = *(v69 + 8);
        *(v68 + 72) = v69[72];
LABEL_56:
        *(v68 + 80) = *(v69 + 5);
        *(v68 + 96) = *(v69 + 12);
        *(v68 + 104) = v69[104];
        *(v68 + 108) = *(v69 + 108);
        *(v68 + 121) = *(v69 + 121);
        *(v68 + 136) = *(v69 + 136);
        *(v68 + 152) = *(v69 + 152);
        *(v68 + 168) = v69[168];
        *(v68 + 169) = v69[169];
        v113 = *(v68 + 192);
        *(v68 + 170) = *(v69 + 85);
        if (v113 >> 1 != 0xFFFFFFFF)
        {
          v114 = *(v69 + 24);
          if (v114 >> 1 != 0xFFFFFFFF)
          {
            v116 = *(v69 + 25);
            v117 = *(v68 + 176);
            v118 = *(v68 + 184);
            *(v68 + 176) = *(v69 + 11);
            *(v68 + 192) = v114;
            *(v68 + 200) = v116;
            outlined consume of AccessibilityImageLabel(v117, v118, v113);
            goto LABEL_61;
          }

          outlined destroy of AccessibilityImageLabel(v68 + 176);
        }

        v115 = *(v69 + 12);
        *(v68 + 176) = *(v69 + 11);
        *(v68 + 192) = v115;
LABEL_61:
        *(v68 + 208) = *(v69 + 26);
        swift_unknownObjectRelease();
        *(v68 + 216) = *(v69 + 27);

        *(v68 + 224) = v69[224];
        *(v68 + 225) = v69[225];
        *(v68 + 228) = *(v69 + 57);
        *(v68 + 232) = v69[232];
        v119 = *(v68 + 240);
        *(v68 + 240) = *(v69 + 30);

        *(v68 + 248) = *(v69 + 124);
        *(v68 + 250) = v69[250];
LABEL_62:
        if (*(v68 + 264))
        {
          v120 = *(v69 + 33);
          if (v120)
          {
            *(v68 + 256) = *(v69 + 32);
            *(v68 + 264) = v120;

            v121 = *(v68 + 272);
            v122 = *(v69 + 34);
            if (v121 >= 2)
            {
              if (v122 >= 2)
              {
                *(v68 + 272) = v122;
              }

              else
              {

                *(v68 + 272) = *(v69 + 34);
              }
            }

            else
            {
              *(v68 + 272) = v122;
            }

            *(v68 + 280) = *(v69 + 70);
            *(v68 + 284) = *(v69 + 142);
            *(v68 + 286) = v69[286];
            *(v68 + 288) = *(v69 + 36);

            *(v68 + 296) = *(v69 + 37);

LABEL_72:
            v124 = *(v68 + 336);
            if (v124 >> 2 != 0xFFFFFFFF)
            {
              v125 = *(v69 + 42);
              if (v125 >> 2 != 0xFFFFFFFF)
              {
                v129 = *(v68 + 304);
                v130 = *(v68 + 312);
                v131 = *(v68 + 320);
                v132 = *(v68 + 328);
                v133 = *(v68 + 344);
                v134 = *(v68 + 352);
                v135 = *(v68 + 360);
                v136 = *(v68 + 368);
                v137 = *(v68 + 384);
                v138 = *(v68 + 400);
                v139 = *(v69 + 20);
                *(v68 + 304) = *(v69 + 19);
                *(v68 + 320) = v139;
                *(v68 + 336) = v125;
                *(v68 + 344) = *(v69 + 344);
                *(v68 + 360) = *(v69 + 360);
                *(v68 + 376) = *(v69 + 376);
                *(v68 + 392) = *(v69 + 392);
                outlined consume of PlatformItemList.Item.SystemItem(v129, v130, v131, v132, v124, v133, v134, v135, v136, *(&v136 + 1), v137, SBYTE8(v137), v138);
LABEL_77:
                v140 = v69 + 408;
                v141 = *(v68 + 416);
                if (v141 == 1)
                {
LABEL_80:
                  v143 = *(v69 + 456);
                  *(v68 + 440) = *(v69 + 440);
                  *(v68 + 456) = v143;
                  *(v68 + 472) = v69[472];
                  v144 = *(v69 + 424);
                  *(v68 + 408) = *v140;
                  *(v68 + 424) = v144;
                  goto LABEL_103;
                }

                v142 = *(v69 + 52);
                if (v142 == 1)
                {
                  outlined destroy of PlatformItemList.Item.SelectionBehavior(v68 + 408);
                  goto LABEL_80;
                }

                *(v68 + 408) = *v140;
                *(v68 + 409) = v69[409];
                *(v68 + 410) = v69[410];
                *(v68 + 411) = v69[411];
                *(v68 + 412) = v69[412];
                if (v141)
                {
                  if (v142)
                  {
                    v145 = *(v69 + 53);
                    *(v68 + 416) = v142;
                    *(v68 + 424) = v145;

                    goto LABEL_88;
                  }
                }

                else if (v142)
                {
                  v146 = *(v69 + 53);
                  *(v68 + 416) = v142;
                  *(v68 + 424) = v146;
                  goto LABEL_88;
                }

                *(v68 + 416) = *(v69 + 26);
LABEL_88:
                v147 = *(v69 + 54);
                if (*(v68 + 432))
                {
                  if (v147)
                  {
                    v148 = *(v69 + 55);
                    *(v68 + 432) = v147;
                    *(v68 + 440) = v148;

                    goto LABEL_95;
                  }
                }

                else if (v147)
                {
                  v149 = *(v69 + 55);
                  *(v68 + 432) = v147;
                  *(v68 + 440) = v149;
                  goto LABEL_95;
                }

                *(v68 + 432) = *(v69 + 27);
LABEL_95:
                v150 = *(v69 + 56);
                if (*(v68 + 448))
                {
                  if (v150)
                  {
                    v151 = *(v69 + 57);
                    *(v68 + 448) = v150;
                    *(v68 + 456) = v151;

LABEL_102:
                    *(v68 + 464) = *(v69 + 58);
                    *(v68 + 472) = v69[472];
LABEL_103:
                    v153 = *(v69 + 61);
                    *(v68 + 480) = *(v69 + 60);
                    *(v68 + 488) = v153;

                    *(v68 + 496) = *(v69 + 62);
                    *(v68 + 504) = v69[504];
                    v154 = *(v69 + 64);
                    if (*(v68 + 512))
                    {
                      if (v154)
                      {
                        v155 = *(v69 + 65);
                        *(v68 + 512) = v154;
                        *(v68 + 520) = v155;

                        goto LABEL_110;
                      }
                    }

                    else if (v154)
                    {
                      v156 = *(v69 + 65);
                      *(v68 + 512) = v154;
                      *(v68 + 520) = v156;
                      goto LABEL_110;
                    }

                    *(v68 + 512) = *(v69 + 32);
LABEL_110:
                    *(v68 + 528) = v69[528];
                    if (*(v68 + 816))
                    {
                      if (*(v69 + 102))
                      {
                        *(v68 + 536) = *(v69 + 67);
                        *(v68 + 544) = *(v69 + 68);

                        *(v68 + 552) = v69[552];
                        *(v68 + 560) = *(v69 + 70);

                        *(v68 + 568) = v69[568];
                        *(v68 + 576) = *(v69 + 36);
                        *(v68 + 592) = v69[592];
                        v157 = (v68 + 600);
                        v158 = v69 + 600;
                        v159 = *(v68 + 624);
                        if (v159 != 1)
                        {
                          v160 = *(v69 + 78);
                          if (v160 != 1)
                          {
                            if (v159)
                            {
                              v162 = v68 + 600;
                              if (v160)
                              {
                                __swift_destroy_boxed_opaque_existential_1(v162);
                              }

                              else
                              {
                                outlined destroy of AnyAccessibilityValue(v162);
                              }
                            }

                            v163 = *(v69 + 616);
                            *v157 = *v158;
                            *(v68 + 616) = v163;
                            *(v68 + 632) = *(v69 + 79);
                            *(v68 + 640) = *(v69 + 80);

LABEL_123:
                            *(v68 + 648) = *(v69 + 81);
                            *(v68 + 656) = v69[656];
                            v164 = (v68 + 664);
                            v165 = v69 + 664;
                            if (*(v68 + 776) != 1)
                            {
                              v166 = *(v69 + 97);
                              if (v166 != 1)
                              {
                                *v164 = *v165;
                                *(v68 + 672) = v69[672];
                                *(v68 + 680) = *(v69 + 85);
                                *(v68 + 688) = v69[688];
                                *(v68 + 689) = *(v69 + 689);
                                *(v68 + 691) = v69[691];
                                *(v68 + 692) = v69[692];
                                *(v68 + 696) = *(v69 + 87);
                                v171 = *(v69 + 45);
                                *(v68 + 704) = *(v69 + 44);
                                *(v68 + 720) = v171;
                                *(v68 + 736) = *(v69 + 92);
                                *(v68 + 744) = v69[744];
                                *(v68 + 745) = v69[745];
                                *(v68 + 752) = *(v69 + 47);
                                *(v68 + 768) = v69[768];
                                *(v68 + 776) = v166;

                                *(v68 + 784) = *(v69 + 49);
                                *(v68 + 800) = *(v69 + 100);
                                *(v68 + 808) = v69[808];
                                goto LABEL_128;
                              }

                              outlined destroy of AccessibilityTextLayoutProperties(v68 + 664);
                            }

                            v167 = *(v69 + 776);
                            *(v68 + 760) = *(v69 + 760);
                            *(v68 + 776) = v167;
                            *(v68 + 792) = *(v69 + 792);
                            *(v68 + 808) = v69[808];
                            v168 = *(v69 + 712);
                            *(v68 + 696) = *(v69 + 696);
                            *(v68 + 712) = v168;
                            v169 = *(v69 + 744);
                            *(v68 + 728) = *(v69 + 728);
                            *(v68 + 744) = v169;
                            v170 = *(v69 + 680);
                            *v164 = *v165;
                            *(v68 + 680) = v170;
LABEL_128:
                            *(v68 + 816) = *(v69 + 102);

                            *(v68 + 824) = *(v69 + 103);

                            *(v68 + 832) = *(v69 + 104);

LABEL_129:
                            v172 = (v68 + 840);
                            v173 = v69 + 840;
                            v174 = *(v68 + 864);
                            __dsta = v70;
                            v226 = v4;
                            if (v174 == 1)
                            {
LABEL_132:
                              v176 = *(v69 + 856);
                              *v172 = *v173;
                              *(v68 + 856) = v176;
                              *(v68 + 872) = *(v69 + 872);
                              *(v68 + 888) = *(v69 + 111);
                              goto LABEL_133;
                            }

                            v175 = *(v69 + 108);
                            if (v175 == 1)
                            {
                              outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v68 + 840);
                              goto LABEL_132;
                            }

                            if (v174)
                            {
                              v189 = v68 + 840;
                              if (v175)
                              {
                                __swift_destroy_boxed_opaque_existential_1(v189);
                              }

                              else
                              {
                                outlined destroy of AnyNavigationLinkPresentedValue(v189);
                              }
                            }

                            v210 = *(v69 + 856);
                            *v172 = *v173;
                            *(v68 + 856) = v210;
                            *(v68 + 872) = *(v69 + 109);
                            v211 = *(v69 + 110);
                            if (*(v68 + 880))
                            {
                              if (v211)
                              {
                                v212 = *(v69 + 111);
                                *(v68 + 880) = v211;
                                *(v68 + 888) = v212;

                                goto LABEL_133;
                              }
                            }

                            else if (v211)
                            {
                              v213 = *(v69 + 111);
                              *(v68 + 880) = v211;
                              *(v68 + 888) = v213;
                              goto LABEL_133;
                            }

                            *(v68 + 880) = *(v69 + 55);
LABEL_133:
                            v177 = *(v68 + 896);
                            *(v68 + 896) = *(v69 + 112);

                            *(v68 + 904) = *(v69 + 113);
                            *(v68 + 912) = *(v69 + 114);

                            *(v68 + 920) = *(v69 + 115);
                            *(v68 + 928) = *(v69 + 116);

                            *(v68 + 936) = *(v69 + 117);

                            *(v68 + 944) = *(v69 + 118);

                            *(v68 + 952) = v69[952];
                            *(v68 + 953) = *(v69 + 953);
                            v178 = v70[28];
                            v179 = (v68 + v178);
                            v180 = &v69[v178];
                            v181 = type metadata accessor for CommandOperation();
                            v182 = *(v181 - 8);
                            v183 = *(v182 + 48);
                            v218 = v179;
                            LODWORD(v179) = v183(v179, 1, v181);
                            v184 = v183(v180, 1, v181);
                            if (v179)
                            {
                              if (!v184)
                              {
                                *v218 = *v180;
                                v190 = *(v181 + 20);
                                v191 = &v218[v190];
                                v192 = &v180[v190];
                                v193 = *&v180[v190 + 16];
                                *v191 = *&v180[v190];
                                *(v191 + 1) = v193;
                                v194 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                                v195 = type metadata accessor for UUID();
                                (*(*(v195 - 8) + 32))(&v191[v194], &v192[v194], v195);
                                *&v218[*(v181 + 24)] = *&v180[*(v181 + 24)];
                                (*(v182 + 56))(v218, 0, 1, v181);
                                goto LABEL_143;
                              }

                              type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                              v186 = *(*(v185 - 8) + 64);
                              v187 = v218;
                            }

                            else
                            {
                              if (!v184)
                              {
                                *v218 = *v180;
                                v196 = *(v181 + 20);
                                v197 = &v218[v196];
                                v198 = &v180[v196];
                                LOBYTE(v196) = v180[v196 + 16];
                                v199 = *v197;
                                v200 = *(v197 + 1);
                                v201 = v197[16];
                                *v197 = *v198;
                                v197[16] = v196;
                                outlined consume of Text.Storage(v199, v200, v201);
                                *(v197 + 3) = *(v198 + 3);

                                v202 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                                v203 = type metadata accessor for UUID();
                                (*(*(v203 - 8) + 40))(&v197[v202], &v198[v202], v203);
                                v204 = *(v181 + 24);
                                v205 = &v218[v204];
                                v206 = &v180[v204];
                                v207 = *&v218[v204];
                                v208 = *&v180[v204];
                                if (v207)
                                {
                                  v4 = v226;
                                  if (v208)
                                  {
                                    v209 = *(v206 + 1);
                                    *v205 = v208;
                                    *(v205 + 1) = v209;

                                    goto LABEL_144;
                                  }
                                }

                                else
                                {
                                  v4 = v226;
                                  if (v208)
                                  {
                                    v214 = *(v206 + 1);
                                    *v205 = v208;
                                    *(v205 + 1) = v214;
                                    goto LABEL_144;
                                  }
                                }

                                *v205 = *v206;
                                goto LABEL_144;
                              }

                              outlined destroy of CommandOperation(v218, type metadata accessor for CommandOperation);
                              type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                              v186 = *(*(v188 - 8) + 64);
                              v187 = v218;
                            }

                            memcpy(v187, v180, v186);
LABEL_143:
                            v4 = v226;
LABEL_144:
                            *(v68 + __dsta[29]) = v69[__dsta[29]];
                            *(v68 + __dsta[30]) = v69[__dsta[30]];
                            *(v68 + __dsta[31]) = v69[__dsta[31]];
                            *(v68 + __dsta[32]) = v69[__dsta[32]];
                            *(v68 + __dsta[33]) = v69[__dsta[33]];
                            *(v68 + __dsta[34]) = *&v69[__dsta[34]];

                            goto LABEL_145;
                          }

                          outlined destroy of AccessibilityValueStorage(v68 + 600);
                        }

                        v161 = *(v69 + 616);
                        *v157 = *v158;
                        *(v68 + 616) = v161;
                        *(v68 + 632) = *(v69 + 632);
                        goto LABEL_123;
                      }

                      outlined destroy of PlatformItemList.Item.Accessibility(v68 + 536);
                    }

                    memcpy((v68 + 536), v69 + 536, 0x130uLL);
                    goto LABEL_129;
                  }
                }

                else if (v150)
                {
                  v152 = *(v69 + 57);
                  *(v68 + 448) = v150;
                  *(v68 + 456) = v152;
                  goto LABEL_102;
                }

                *(v68 + 448) = *(v69 + 28);
                goto LABEL_102;
              }

              outlined destroy of PlatformItemList.Item.SystemItem(v68 + 304);
            }

            v126 = *(v69 + 24);
            *(v68 + 368) = *(v69 + 23);
            *(v68 + 384) = v126;
            *(v68 + 400) = *(v69 + 50);
            v127 = *(v69 + 20);
            *(v68 + 304) = *(v69 + 19);
            *(v68 + 320) = v127;
            v128 = *(v69 + 22);
            *(v68 + 336) = *(v69 + 21);
            *(v68 + 352) = v128;
            goto LABEL_77;
          }

          outlined destroy of Image.NamedResolved(v68 + 256);
        }

        v123 = *(v69 + 17);
        *(v68 + 256) = *(v69 + 16);
        *(v68 + 272) = v123;
        *(v68 + 288) = *(v69 + 18);
        goto LABEL_72;
      }

      outlined destroy of Transaction((a1 + 48));
      v49 = *(a2 + 6);
    }

    *v48 = v49;
    goto LABEL_22;
  }

  if (!v8)
  {
    v9 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v9;
    v10 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v10;
    *(a1 + 57) = *(a2 + 57);
    v11 = *(v4 + 24);
    v12 = &a1[v11];
    v13 = &a2[v11];
    *v12 = *&a2[v11];
    v12[8] = a2[v11 + 8];
    *(v12 + 2) = *&a2[v11 + 16];
    v12[24] = a2[v11 + 24];
    swift_unknownObjectWeakTakeInit();
    v14 = *(v13 + 6);
    *(v12 + 5) = *(v13 + 5);
    *(v12 + 6) = v14;
    v15 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) + 32);
    v16 = &v12[v15];
    v17 = &v13[v15];
    v18 = type metadata accessor for PlatformItemList.Item();
    v19 = *(v18 - 1);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v224 = v4;
      v29 = *(v17 + 1);
      *v16 = *v17;
      *(v16 + 1) = v29;
      v16[32] = v17[32];
      *(v16 + 40) = *(v17 + 40);
      v16[56] = v17[56];
      v30 = *(v17 + 13);
      *(v16 + 12) = *(v17 + 12);
      *(v16 + 13) = v30;
      *(v16 + 14) = *(v17 + 14);
      *(v16 + 235) = *(v17 + 235);
      v31 = *(v17 + 9);
      *(v16 + 8) = *(v17 + 8);
      *(v16 + 9) = v31;
      v32 = *(v17 + 11);
      *(v16 + 10) = *(v17 + 10);
      *(v16 + 11) = v32;
      v33 = *(v17 + 5);
      *(v16 + 4) = *(v17 + 4);
      *(v16 + 5) = v33;
      v34 = *(v17 + 7);
      *(v16 + 6) = *(v17 + 6);
      *(v16 + 7) = v34;
      v35 = *(v17 + 17);
      *(v16 + 16) = *(v17 + 16);
      *(v16 + 17) = v35;
      v36 = *(v17 + 23);
      *(v16 + 22) = *(v17 + 22);
      *(v16 + 23) = v36;
      *(v16 + 24) = *(v17 + 24);
      *(v16 + 50) = *(v17 + 50);
      v37 = *(v17 + 19);
      *(v16 + 18) = *(v17 + 18);
      *(v16 + 19) = v37;
      v38 = *(v17 + 21);
      *(v16 + 20) = *(v17 + 20);
      *(v16 + 21) = v38;
      v39 = *(v17 + 456);
      *(v16 + 440) = *(v17 + 440);
      *(v16 + 456) = v39;
      v16[472] = v17[472];
      v40 = *(v17 + 424);
      *(v16 + 408) = *(v17 + 408);
      *(v16 + 424) = v40;
      *(v16 + 30) = *(v17 + 30);
      *(v16 + 489) = *(v17 + 489);
      *(v16 + 32) = *(v17 + 32);
      v16[528] = v17[528];
      memcpy(v16 + 536, v17 + 536, 0x130uLL);
      v41 = *(v17 + 856);
      *(v16 + 840) = *(v17 + 840);
      *(v16 + 856) = v41;
      *(v16 + 872) = *(v17 + 872);
      *(v16 + 111) = *(v17 + 111);
      *(v16 + 112) = *(v17 + 112);
      *(v16 + 904) = *(v17 + 904);
      *(v16 + 920) = *(v17 + 920);
      *(v16 + 117) = *(v17 + 117);
      *(v16 + 118) = *(v17 + 118);
      v16[952] = v17[952];
      *(v16 + 953) = *(v17 + 953);
      v42 = v18[28];
      __dst = &v16[v42];
      v43 = &v17[v42];
      v44 = type metadata accessor for CommandOperation();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v43, 1, v44))
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
        memcpy(__dst, v43, *(*(v46 - 8) + 64));
      }

      else
      {
        *__dst = *v43;
        v56 = *(v44 + 20);
        v216 = v19;
        __src = a2;
        v57 = &__dst[v56];
        v58 = &v43[v56];
        v59 = *&v43[v56 + 16];
        *v57 = *&v43[v56];
        *(v57 + 1) = v59;
        v215 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v60 = type metadata accessor for UUID();
        v61 = &v57[v215];
        v62 = &v58[v215];
        v19 = v216;
        a2 = __src;
        (*(*(v60 - 8) + 32))(v61, v62, v60);
        *&__dst[*(v44 + 24)] = *&v43[*(v44 + 24)];
        (*(v45 + 56))();
      }

      v16[v18[29]] = v17[v18[29]];
      v16[v18[30]] = v17[v18[30]];
      v16[v18[31]] = v17[v18[31]];
      v16[v18[32]] = v17[v18[32]];
      v16[v18[33]] = v17[v18[33]];
      *&v16[v18[34]] = *&v17[v18[34]];
      (*(v19 + 56))(v16, 0, 1, v18);
      v4 = v224;
    }

    *&a1[*(v4 + 28)] = *&a2[*(v4 + 28)];
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

LABEL_7:
  type metadata accessor for NavigationItemDescription?(0);
  v22 = *(*(v21 - 8) + 64);

  return memcpy(a1, a2, v22);
}

void type metadata completion function for DocumentToolbarInputContentWriter()
{
  type metadata accessor for NavigationItemDescription?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarContentInput and conformance ToolbarContentInput()
{
  result = lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput;
  if (!lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput;
  if (!lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarContentInput and conformance ToolbarContentInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput()
{
  result = lazy protocol witness table cache variable for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput;
  if (!lazy protocol witness table cache variable for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WriteToolbarDescriptionInput and conformance WriteToolbarDescriptionInput);
  }

  return result;
}

unint64_t type metadata accessor for ToolbarInputFeatureDelegate()
{
  result = lazy cache variable for type metadata for ToolbarInputFeatureDelegate;
  if (!lazy cache variable for type metadata for ToolbarInputFeatureDelegate)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ToolbarInputFeatureDelegate);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Attribute.subscript.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

void type metadata accessor for Map<EnvironmentValues, Bool>()
{
  if (!lazy cache variable for type metadata for Map<EnvironmentValues, Bool>)
  {
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<EnvironmentValues, Bool>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, Bool> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>)
  {
    type metadata accessor for Map<EnvironmentValues, Bool>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<EnvironmentValues, Bool> and conformance Map<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext()
{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext;
  if (!lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent()
{
  result = lazy protocol witness table cache variable for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent;
  if (!lazy protocol witness table cache variable for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentToolbarInputContentWriter.MakeToolbarContent and conformance DocumentToolbarInputContentWriter.MakeToolbarContent);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DocumentToolbarInputContentWriter.MakeToolbarContent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[20])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DocumentToolbarInputContentWriter.MakeToolbarContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t ModalLink.$isPresented.getter()
{
  type metadata accessor for State<Bool>();
  State.projectedValue.getter();
  return v1;
}

uint64_t ModalLink.init(presenting:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ModalLink();
  v9 = a4 + *(v8 + 56);
  *v9 = 0;
  *(v9 + 8) = 0;
  result = a3(v8, v10, v11, v12);
  v14 = (a4 + *(v8 + 52));
  *v14 = a1;
  v14[1] = a2;
  return result;
}

uint64_t ModalLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = *(v6 + 16);
  v7 = *(v6 + 32);
  v46 = type metadata accessor for Button();
  v52 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v40 - v8;
  v9 = *(a1 + 24);
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>();
  v11 = v10;
  v12 = *(a1 + 40);
  v13 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>();
  v59 = v9;
  v60 = v11;
  v43 = v9;
  v61 = v12;
  v62 = v13;
  v42 = v12;
  v50 = type metadata accessor for SheetPresentationModifier();
  v48 = type metadata accessor for ModifiedContent();
  v51 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v49 = &v40 - v17;
  v18 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v18, v2, a1, v16);
  v19 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *&v21 = v44;
  *(&v21 + 1) = v9;
  v41 = v21;
  *&v22 = v7;
  *(&v22 + 1) = v12;
  v40 = v22;
  *(v20 + 16) = v21;
  *(v20 + 32) = v22;
  (*(v4 + 32))(v20 + v19, v18, a1);
  v54 = v41;
  v55 = v40;
  v56 = v2;
  v23 = v47;
  Button.init(action:label:)(partial apply for closure #1 in ModalLink.body.getter, v20, partial apply for closure #2 in ModalLink.body.getter, v47);
  v24 = ModalLink.$isPresented.getter();
  v26 = v25;
  LOBYTE(v19) = v27;
  v28 = (v2 + *(a1 + 52));
  v29 = *v28;
  v30 = v28[1];
  v31 = v46;
  WitnessTable = swift_getWitnessTable();
  v33 = v45;
  View.sheet<A>(isPresented:onDismiss:content:)(v24, v26, v19 & 1, 0, 0, v29, v30, v31, v43, WitnessTable, v42);

  (*(v52 + 8))(v23, v31);
  v34 = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v34;
  v35 = v48;
  v36 = swift_getWitnessTable();
  v37 = v49;
  static ViewBuilder.buildExpression<A>(_:)(v33, v35, v36);
  v38 = *(v51 + 8);
  v38(v33, v35);
  static ViewBuilder.buildExpression<A>(_:)(v37, v35, v36);
  return (v38)(v37, v35);
}

uint64_t closure #1 in ModalLink.body.getter(uint64_t a1)
{
  result = type metadata accessor for ModalLink();
  if (*(a1 + *(result + 56) + 8))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in ModalLink.body.getter()
{
  v1 = *(type metadata accessor for ModalLink() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return closure #1 in ModalLink.body.getter(v2);
}

uint64_t closure #2 in ModalLink.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v9, v10, v11);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a4);
  return (*(v6 + 8))(v8, a2);
}

double ModalLink<>.init(_:presenting:)@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, _OWORD *a5@<X8>)
{
  v17 = MEMORY[0x1E6981148];
  v18 = a3;
  v19 = MEMORY[0x1E6981138];
  v20 = a4;
  v8 = type metadata accessor for ModalLink();
  v9 = v14 + *(v8 + 56);
  *v9 = 0;
  *(v9 + 1) = 0;
  closure #1 in TextField<>.init<A>(_:value:format:prompt:)(v14);
  v10 = (v14 + *(v8 + 52));
  *v10 = a1;
  v10[1] = a2;

  v11 = v14[1];
  *a5 = v14[0];
  a5[1] = v11;
  result = *&v15;
  v13 = v16;
  a5[2] = v15;
  a5[3] = v13;
  return result;
}

uint64_t ModalLink<>.init<A>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v19 = MEMORY[0x1E6981148];
  v20 = a4;
  v21 = MEMORY[0x1E6981138];
  v22 = a6;
  v12 = type metadata accessor for ModalLink();
  v13 = v18 + *(v12 + 56);
  *v13 = 0;
  *(v13 + 1) = 0;
  closure #1 in ModalLink<>.init<A>(_:presenting:)(a1, v18);
  v14 = (v18 + *(v12 + 52));
  *v14 = a2;
  v14[1] = a3;
  v15 = v18[1];
  *a7 = v18[0];
  a7[1] = v15;
  v16 = v18[3];
  a7[2] = v18[2];
  a7[3] = v16;
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t closure #1 in ModalLink<>.init<A>(_:presenting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

uint64_t type metadata completion function for ModalLink()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ModalLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v13 = *v14;
    *(v13 + 8) = *(v14 + 8);
  }

  return v3;
}

uint64_t destroy for ModalLink(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);

  return a1;
}

uint64_t assignWithCopy for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);

  return a1;
}

uint64_t initializeWithTake for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ModalLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(v10 + 8) = *((v9 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ModalLink(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for ModalLink(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void type metadata accessor for State<Bool>()
{
  if (!lazy cache variable for type metadata for State<Bool>)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<Bool>);
    }
  }
}

uint64_t Gesture.sequenced<A>(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return SequenceGesture.init(_:_:)(v14, v10, a2, a3, a4);
}

uint64_t SequenceGesture.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for SequenceGesture();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t static SequenceGesture._makeGesture(gesture:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a5;
  v42 = a7;
  v100 = *MEMORY[0x1E69E9840];
  LODWORD(v33) = *a1;
  v10 = a2[5];
  v98 = a2[4];
  *v99 = v10;
  *&v99[16] = a2[6];
  *&v99[28] = *(a2 + 108);
  v11 = a2[1];
  v94 = *a2;
  v95 = v11;
  v12 = a2[3];
  v96 = a2[2];
  v97 = v12;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v65 = a6;
  v32 = a6;
  LODWORD(v73[0]) = v33;
  v41 = type metadata accessor for SequenceGesture();
  v31 = type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v92 = v98;
  *v93 = *v99;
  *&v93[16] = *&v99[16];
  *&v93[28] = *&v99[28];
  v88 = v94;
  v89 = v95;
  v90 = v96;
  v91 = v97;
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  v39 = *(&v75 + 1);
  v40 = v76;
  *&v13 = v75;
  *v43[0].i8 = v13;
  v14 = *&v99[40];
  v86 = v98;
  v87[0] = *v99;
  *(v87 + 12) = *&v99[12];
  v82 = v94;
  v83 = v95;
  v84 = v96;
  v85 = v97;
  v15 = *&v99[32];
  v37 = *&v99[32];
  v16 = *&v99[28];
  outlined init with copy of _GestureInputs(&v94, &v88);
  v17 = v7;
  v30 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  *&v88 = __PAIR64__(v43[0].u32[0], v16);
  v60 = type metadata accessor for SequenceEvents();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<[EventID : EventType]>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v88, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_4, v59, v60, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  v34 = 0;
  v29 = v28;
  LODWORD(v7) = v75;
  v14 |= 2u;
  v35 = v75;
  v36 = v14;
  v55 = a3;
  v56 = a4;
  v57 = v17;
  v20 = v32;
  v58 = v32;
  v47.i32[0] = v33;
  _GraphValue.subscript.getter();
  *&v74[12] = *(v87 + 12);
  v73[4] = v86;
  *v74 = v87[0];
  v73[0] = v82;
  v73[1] = v83;
  v73[2] = v84;
  v73[3] = v85;
  *&v74[28] = v7;
  *&v74[32] = v15;
  *&v74[40] = v14;
  v92 = v86;
  *v93 = v87[0];
  *&v93[16] = *&v74[16];
  *&v93[28] = *&v74[28];
  v88 = v82;
  v89 = v83;
  v90 = v84;
  v91 = v85;
  outlined init with copy of _GestureInputs(v73, &v75);
  static Gesture.makeDebuggableGesture(gesture:inputs:)();
  v79 = v92;
  v80 = *v93;
  v81[0] = *&v93[16];
  *(v81 + 12) = *&v93[28];
  v75 = v88;
  v76 = v89;
  v77 = v90;
  v78 = v91;
  outlined destroy of _GestureInputs(&v75);
  v29 = *(&v66 + 1);
  LODWORD(v31) = v67;
  v21 = v20;
  v33 = swift_getAssociatedTypeWitness();
  type metadata accessor for _GestureOutputs();
  v22 = v66;
  *&v66 = vzip1_s32(v43[0], *&v66);
  *(&v66 + 1) = *&v99[32];
  *&v88 = a3;
  *(&v88 + 1) = a4;
  v23 = v30;
  *&v89 = v30;
  *(&v89 + 1) = v21;
  type metadata accessor for SequenceGesture.Value();
  v52 = type metadata accessor for GesturePhase();
  *&v88 = a3;
  *(&v88 + 1) = a4;
  *&v89 = v23;
  *(&v89 + 1) = v21;
  v24 = type metadata accessor for SequencePhase();
  v53 = v24;
  v54 = swift_getWitnessTable();
  v25 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v66, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v51, v24, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  _GestureOutputs.init(phase:)();
  v50 = 4;
  v70 = v98;
  v71 = *v99;
  v72[0] = *&v99[16];
  *(v72 + 12) = *&v99[28];
  v66 = v94;
  v67 = v95;
  v68 = v96;
  v69 = v97;
  v47 = v43[0];
  v48 = v39;
  v49 = v40;
  v44 = v22;
  v45 = v29;
  v46 = v31;
  type metadata accessor for _GestureOutputs();
  LOBYTE(v88) = 1;
  v28[0] = AssociatedTypeWitness;
  v28[1] = v33;
  _GestureOutputs.wrapDebugOutputs<A, B, C>(_:kind:properties:inputs:combiningOutputs:)();
  v92 = v86;
  *v93 = v87[0];
  *&v93[12] = *(v87 + 12);
  v88 = v82;
  v89 = v83;
  v90 = v84;
  v91 = v85;
  *&v93[28] = v35;
  *&v93[32] = v37;
  *&v93[40] = v36;
  outlined destroy of _GestureInputs(&v88);
}

uint64_t closure #1 in static SequenceGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for SequenceGesture();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t closure #2 in static SequenceGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for SequenceGesture();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t static SequenceGesture.Value<>.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8)
{
  v82[1] = a8;
  v92 = a7;
  v97 = a1;
  v98 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82[0] = v82 - v13;
  v88 = v14;
  v15 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v85 = v82 - v16;
  v95 = v15;
  v96 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v83 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v94 = v82 - v22;
  v23 = swift_getAssociatedTypeWitness();
  v99 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v90 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v82 - v26;
  v100 = a3;
  v101 = a4;
  v102 = a5;
  v103 = a6;
  v28 = type metadata accessor for SequenceGesture.Value();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v82 - v33;
  v35 = swift_getTupleTypeMetadata2();
  v91 = *(v35 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v82 - v37;
  v40 = v82 + *(v39 + 48) - v37;
  v93 = v29;
  v41 = *(v29 + 16);
  v41(v82 - v37, v97, v28, v36);
  (v41)(v40, v98, v28);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v41)(v34, v38, v28);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v68 = v99;
      (*(v99 + 32))(v27, v40, v23);
      v67 = dispatch thunk of static Equatable.== infix(_:_:)();
      v69 = *(v68 + 8);
      v69(v27, v23);
      v69(v34, v23);
      v66 = v93;
      goto LABEL_17;
    }

    v31 = v34;
    goto LABEL_10;
  }

  (v41)(v31, v38, v28);
  v42 = v95;
  v43 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v96 + 8))(&v31[v43], v42);
LABEL_10:
    (*(v99 + 8))(v31, v23);
    v67 = 0;
    v66 = v91;
    v28 = v35;
    goto LABEL_17;
  }

  v98 = v38;
  v44 = v99;
  v45 = v90;
  (*(v99 + 32))(v90, v40, v23);
  v46 = *(v96 + 32);
  v46(v94, &v31[v43], v42);
  v47 = &v40[v43];
  v48 = v89;
  v46(v89, v47, v42);
  v49 = v45;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v53 = *(v44 + 8);
  v52 = v44 + 8;
  v51 = v53;
  v53(v31, v23);
  if ((v50 & 1) == 0)
  {
    v70 = *(v96 + 8);
    v70(v48, v42);
    v70(v94, v42);
    v51(v49, v23);
    v67 = 0;
    v66 = v93;
    v38 = v98;
    goto LABEL_17;
  }

  v92 = v51;
  v99 = v52;
  v97 = v23;
  v54 = *(TupleTypeMetadata2 + 48);
  v55 = v42;
  v56 = *(v96 + 16);
  v57 = v85;
  v58 = v94;
  v56(v85, v94, v55);
  v91 = v54;
  v56(&v57[v54], v48, v55);
  v59 = *(v87 + 48);
  v60 = v59(v57, 1, v88);
  v38 = v98;
  if (v60 != 1)
  {
    v71 = v83;
    v56(v83, v57, v95);
    v72 = v91;
    v73 = v88;
    if (v59(&v57[v91], 1, v88) != 1)
    {
      v77 = v87;
      v78 = v82[0];
      (*(v87 + 32))(v82[0], &v57[v72], v73);
      LODWORD(v91) = dispatch thunk of static Equatable.== infix(_:_:)();
      v79 = *(v77 + 8);
      v79(v78, v73);
      v80 = v95;
      v81 = *(v96 + 8);
      v81(v89, v95);
      v81(v94, v80);
      v92(v90, v97);
      v79(v71, v73);
      v81(v57, v80);
      v66 = v93;
      if (v91)
      {
        v67 = 1;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v74 = v95;
    v75 = *(v96 + 8);
    v75(v89, v95);
    v75(v94, v74);
    v92(v90, v97);
    (*(v87 + 8))(v71, v73);
    v66 = v93;
LABEL_15:
    (*(v84 + 8))(v57, TupleTypeMetadata2);
LABEL_16:
    v67 = 0;
    goto LABEL_17;
  }

  v61 = v58;
  v62 = v95;
  v63 = v96 + 8;
  v64 = *(v96 + 8);
  v64(v48, v95);
  v96 = v63;
  v64(v61, v62);
  v92(v90, v97);
  v65 = v59(&v57[v91], 1, v88);
  v66 = v93;
  if (v65 != 1)
  {
    goto LABEL_15;
  }

  v64(v57, v62);
  v67 = 1;
LABEL_17:
  (*(v66 + 8))(v38, v28);
  return v67 & 1;
}

uint64_t SequenceEvents.phase.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

unint64_t SequenceEvents.value.getter()
{
  v0 = type metadata accessor for GesturePhase();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  SequenceEvents.phase.getter(&v6 - v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v1 + 8))(v3, v0);
  if (EnumCaseMultiPayload != 2)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  type metadata accessor for [EventID : EventType]();
  AGGraphGetValue();
}

uint64_t SequencePhase.phase0.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t SequencePhase.phase1.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

unint64_t protocol witness for Rule.value.getter in conformance SequenceEvents<A>@<X0>(unint64_t *a1@<X8>)
{
  result = SequenceEvents.value.getter();
  *a1 = result;
  return result;
}

uint64_t SequencePhase.updateValue()(void *a1)
{
  v111 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v92 = v88 - v5;
  v93 = v6;
  v7 = type metadata accessor for GesturePhase();
  v8 = *(v7 - 8);
  v98 = v7;
  v99 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v91 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = v88 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v100 = v88 - v13;
  v14 = a1[4];
  v15 = a1[2];
  v16 = swift_getAssociatedTypeWitness();
  v103 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v101 = v88 - v17;
  v104 = v18;
  v19 = type metadata accessor for GesturePhase();
  v108 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v94 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v88 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v88 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v88 - v28;
  *&v30 = v15;
  *(&v30 + 1) = v3;
  *&v31 = v14;
  *(&v31 + 1) = v2;
  v109 = v30;
  v110 = v31;
  v102 = type metadata accessor for SequenceGesture.Value();
  v32 = type metadata accessor for GesturePhase();
  v106 = *(v32 - 8);
  v107 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v105 = v88 - v33;
  swift_getWitnessTable();
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v89 = a1;
    v88[1] = v3;
    v88[2] = v2;
    SequencePhase.phase0.getter(v29);
    v96 = v29;
    v97 = v19;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v36 = v108;
      if (EnumCaseMultiPayload)
      {
        v37 = v96;
        v38 = v97;
        (*(v108 + 16))(v23, v96, v97);
        v43 = v105;
        (*(v103 + 4))(v105, v23, v104);
        swift_storeEnumTagMultiPayload();
        v57 = v107;
        swift_storeEnumTagMultiPayload();
        v42 = v89;
      }

      else
      {
        v37 = v96;
        v38 = v97;
        (*(v108 + 16))(v26, v96, v97);
        v40 = v103;
        v39 = v104;
        v41 = (*(v103 + 6))(v26, 1, v104);
        v42 = v89;
        v43 = v105;
        if (v41 == 1)
        {
          (*(*(v102 - 8) + 56))(v105, 1, 1);
        }

        else
        {
          (*(v40 + 4))(v105, v26, v39);
          v58 = v102;
          swift_storeEnumTagMultiPayload();
          (*(*(v58 - 8) + 56))(v43, 0, 1);
        }

        v57 = v107;
        swift_storeEnumTagMultiPayload();
      }

      goto LABEL_24;
    }

    v36 = v108;
    if (EnumCaseMultiPayload != 2)
    {
      v43 = v105;
      v57 = v107;
      swift_storeEnumTagMultiPayload();
      v38 = v97;
      v42 = v89;
LABEL_23:
      v37 = v96;
LABEL_24:
      v86 = (*(v36 + 8))(v37, v38);
      MEMORY[0x1EEE9AC00](v86);
      v88[-2] = v42;
      v88[-1] = swift_getWitnessTable();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v43, partial apply for closure #1 in StatefulRule.value.setter, &v88[-4], v57, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v87);
      return (*(v106 + 8))(v43, v57);
    }

    v44 = v94;
    (*(v108 + 16))(v94, v96, v97);
    v45 = *(v103 + 4);
    v45(v101, v44, v104);
    v46 = v100;
    SequencePhase.phase1.getter(v100);
    v47 = v98;
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 > 1)
    {
      v43 = v105;
      v49 = v99;
      v59 = v95;
      if (v48 == 2)
      {
        v60 = v91;
        (*(v99 + 16))(v91, v46, v47);
        v103 = *(v59 + 32);
        v61 = v60;
        v62 = v93;
        v103(v92, v61, v93);
        type metadata accessor for Optional();
        v63 = v45;
        v64 = v47;
        v65 = v104;
        v66 = *(swift_getTupleTypeMetadata2() + 48);
        v67 = v65;
        v47 = v64;
        v63(v43, v101, v67);
        v103((v43 + v66), v92, v62);
        v68 = v43 + v66;
        v49 = v99;
        v46 = v100;
        (*(v59 + 56))(v68, 0, 1, v62);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        (*(v103 + 1))(v101, v104);
      }
    }

    else
    {
      v103 = v45;
      v43 = v105;
      v49 = v99;
      v50 = v95;
      if (!v48)
      {
        v51 = v90;
        (*(v99 + 16))(v90, v46, v47);
        v52 = v93;
        v53 = (*(v50 + 48))(v51, 1, v93);
        v54 = v50;
        v38 = v97;
        v42 = v89;
        if (v53 == 1)
        {
          v55 = v54;
          type metadata accessor for Optional();
          v56 = v104;
          v94 = *(swift_getTupleTypeMetadata2() + 48);
          v103(v43, v101, v56);
          (*(v55 + 56))(&v94[v43], 1, 1, v52);
        }

        else
        {
          v94 = *(v54 + 32);
          v78 = v92;
          v79 = v51;
          v80 = v54;
          (v94)(v92, v79, v52);
          type metadata accessor for Optional();
          v81 = v104;
          v82 = *(swift_getTupleTypeMetadata2() + 48);
          v103(v43, v101, v81);
          v83 = v78;
          v47 = v98;
          v84 = v93;
          (v94)(v43 + v82, v83, v93);
          v85 = v43 + v82;
          v49 = v99;
          (*(v80 + 56))(v85, 0, 1, v84);
        }

        swift_storeEnumTagMultiPayload();
        v46 = v100;
        goto LABEL_22;
      }

      v69 = v91;
      (*(v99 + 16))(v91, v46, v47);
      v94 = *(v50 + 32);
      v70 = v92;
      v71 = v69;
      v72 = v93;
      (v94)(v92, v71, v93);
      type metadata accessor for Optional();
      v73 = v47;
      v74 = v104;
      v75 = *(swift_getTupleTypeMetadata2() + 48);
      v76 = v74;
      v47 = v73;
      v103(v43, v101, v76);
      (v94)(v43 + v75, v70, v72);
      v77 = v43 + v75;
      v49 = v99;
      v46 = v100;
      (*(v50 + 56))(v77, 0, 1, v72);
      swift_storeEnumTagMultiPayload();
    }

    v38 = v97;
    v42 = v89;
LABEL_22:
    v57 = v107;
    swift_storeEnumTagMultiPayload();
    (*(v49 + 8))(v46, v47);
    goto LABEL_23;
  }

  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance SequencePhase<A, B>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SequenceGesture.Value();
  v2 = type metadata accessor for GesturePhase();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t type metadata completion function for SequenceGesture.Value()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3[5] = v3;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for SequenceGesture.Value(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v9;
  v11 = v6 + v9;
  v12 = (v6 + v10) & ~v10;
  if (*(v8 + 84))
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  if (v12 + v13 > v6)
  {
    v6 = v12 + v13;
  }

  v14 = *(v5 + 80) | v9;
  v15 = (*(v5 + 80) | v9);
  v16 = v14 & 0x100000;
  if (v15 > 7 || v16 != 0 || v6 + 1 > 0x18)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v15 + 16) & ~v15));

    return a1;
  }

  v20 = a2[v6];
  if (v20 >= 2)
  {
    if (v6 <= 3)
    {
      v21 = v6;
    }

    else
    {
      v21 = 4;
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        goto LABEL_30;
      }

      v22 = *a2;
    }

    else if (v21 == 2)
    {
      v22 = *a2;
    }

    else if (v21 == 3)
    {
      v22 = *a2 | (a2[2] << 16);
    }

    else
    {
      v22 = *a2;
    }

    v23 = (v22 | ((v20 - 2) << (8 * v6))) + 2;
    v24 = v22 + 2;
    if (v6 >= 4)
    {
      v20 = v24;
    }

    else
    {
      v20 = v23;
    }
  }

LABEL_30:
  __n = v13;
  v25 = v7;
  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  if (v20 == 1)
  {
    v26 = ~v10;
    v27 = a1 + v11;
    v28 = &a2[v11];
    if ((*(v8 + 48))(v28 & ~v10, 1, v25))
    {
      memcpy((v27 & v26), (v28 & v26), __n);
    }

    else
    {
      (*(v8 + 16))(v27 & v26, v28 & v26, v25);
      (*(v8 + 56))(v27 & v26, 0, 1, v25);
    }

    *(a1 + v6) = 1;
  }

  else
  {
    *(a1 + v6) = 0;
  }

  return a1;
}

uint64_t destroy for SequenceGesture.Value(unsigned __int8 *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v4 + v7;
  v19 = v6;
  v9 = *(v6 + 64);
  if (!*(v6 + 84))
  {
    ++v9;
  }

  v10 = v9 + ((v4 + v7) & ~v7);
  if (v10 <= v4)
  {
    v10 = v4;
  }

  v11 = a1[v10];
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v12 = v10;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_20;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | ((v11 - 2) << (8 * v10))) + 2;
    v15 = v13 + 2;
    if (v10 >= 4)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }
  }

LABEL_20:
  result = (*(v3 + 8))(a1, AssociatedTypeWitness);
  if (v11 == 1)
  {
    v17 = &a1[v8];
    result = (*(v19 + 48))(v17 & ~v7, 1, v5);
    if (!result)
    {
      v18 = *(v19 + 8);

      return v18(v17 & ~v7, v5);
    }
  }

  return result;
}

uint64_t initializeWithCopy for SequenceGesture.Value(uint64_t a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v5 + v9;
  if (*(v7 + 84))
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = *(v7 + 64) + 1;
  }

  if (((v5 + v9) & ~v9) + v11 <= v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = ((v5 + v9) & ~v9) + v11;
  }

  v13 = *(a2 + v12);
  __n = v11;
  if (v13 < 2)
  {
    v16 = a1;
  }

  else
  {
    if (v12 <= 3)
    {
      v14 = v12;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v15 = *a2;
      }

      v16 = a1;
      goto LABEL_21;
    }

    v16 = a1;
    if (v14)
    {
      v15 = *a2;
LABEL_21:
      v17 = (v15 | ((v13 - 2) << (8 * v12))) + 2;
      v18 = v15 + 2;
      if (v12 >= 4)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }
  }

  (*(v4 + 16))(v16, a2, AssociatedTypeWitness);
  if (v13 == 1)
  {
    v19 = ~v9;
    v20 = v10 + v16;
    v21 = a2 + v10;
    if ((*(v8 + 48))(v21 & ~v9, 1, v6))
    {
      memcpy((v20 & v19), (v21 & v19), __n);
      v22 = 1;
    }

    else
    {
      (*(v8 + 16))(v20 & v19, v21 & v19, v6);
      v22 = 1;
      (*(v8 + 56))(v20 & v19, 0, 1, v6);
    }
  }

  else
  {
    v22 = 0;
  }

  *(v16 + v12) = v22;
  return v16;
}

unsigned __int8 *assignWithCopy for SequenceGesture.Value(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = (v6 + v9) & ~v9;
  if (*(v8 + 84))
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = *(v8 + 64) + 1;
  }

  if (v11 + v12 <= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v11 + v12;
  }

  v14 = a1[v13];
  __n = v12;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = *a1;
    }

    else if (v15 == 2)
    {
      v16 = *a1;
    }

    else if (v15 == 3)
    {
      v16 = *a1 | (a1[2] << 16);
    }

    else
    {
      v16 = *a1;
    }

    v17 = (v16 | ((v14 - 2) << (8 * v13))) + 2;
    v18 = v16 + 2;
    if (v13 >= 4)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }
  }

LABEL_23:
  v19 = ~v9;
  (*(v5 + 8))(a1, AssociatedTypeWitness);
  if (v14 == 1 && !(*(v8 + 48))(&a1[v10] & v19, 1, v7))
  {
    (*(v8 + 8))(&a1[v10] & v19, v7);
  }

  v20 = a2[v13];
  if (v20 < 2)
  {
    goto LABEL_41;
  }

  if (v13 <= 3)
  {
    v21 = v13;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_41;
    }

    v22 = *a2;
  }

  else if (v21 == 2)
  {
    v22 = *a2;
  }

  else if (v21 == 3)
  {
    v22 = *a2 | (a2[2] << 16);
  }

  else
  {
    v22 = *a2;
  }

  v23 = (v22 | ((v20 - 2) << (8 * v13))) + 2;
  v24 = v22 + 2;
  if (v13 >= 4)
  {
    v20 = v24;
  }

  else
  {
    v20 = v23;
  }

LABEL_41:
  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  if (v20 == 1)
  {
    v25 = &a1[v10];
    v26 = &a2[v10];
    if ((*(v8 + 48))(v26 & v19, 1, v7))
    {
      memcpy((v25 & v19), (v26 & v19), __n);
      v27 = 1;
    }

    else
    {
      (*(v8 + 16))(v25 & v19, v26 & v19, v7);
      v27 = 1;
      (*(v8 + 56))(v25 & v19, 0, 1, v7);
    }
  }

  else
  {
    v27 = 0;
  }

  a1[v13] = v27;
  return a1;
}

uint64_t initializeWithTake for SequenceGesture.Value(uint64_t a1, unsigned __int16 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = v5 + v9;
  if (*(v7 + 84))
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = *(v7 + 64) + 1;
  }

  if (((v5 + v9) & ~v9) + v11 <= v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = ((v5 + v9) & ~v9) + v11;
  }

  v13 = *(a2 + v12);
  __n = v11;
  if (v13 < 2)
  {
    v16 = a1;
  }

  else
  {
    if (v12 <= 3)
    {
      v14 = v12;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v15 = *a2;
      }

      v16 = a1;
      goto LABEL_21;
    }

    v16 = a1;
    if (v14)
    {
      v15 = *a2;
LABEL_21:
      v17 = (v15 | ((v13 - 2) << (8 * v12))) + 2;
      v18 = v15 + 2;
      if (v12 >= 4)
      {
        v13 = v18;
      }

      else
      {
        v13 = v17;
      }
    }
  }

  (*(v4 + 32))(v16, a2, AssociatedTypeWitness);
  if (v13 == 1)
  {
    v19 = ~v9;
    v20 = v10 + v16;
    v21 = a2 + v10;
    if ((*(v8 + 48))(v21 & ~v9, 1, v6))
    {
      memcpy((v20 & v19), (v21 & v19), __n);
      v22 = 1;
    }

    else
    {
      (*(v8 + 32))(v20 & v19, v21 & v19, v6);
      v22 = 1;
      (*(v8 + 56))(v20 & v19, 0, 1, v6);
    }
  }

  else
  {
    v22 = 0;
  }

  *(v16 + v12) = v22;
  return v16;
}

unsigned __int8 *assignWithTake for SequenceGesture.Value(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = (v6 + v9) & ~v9;
  if (*(v8 + 84))
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = *(v8 + 64) + 1;
  }

  if (v11 + v12 <= v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = v11 + v12;
  }

  v14 = a1[v13];
  __n = v12;
  if (v14 >= 2)
  {
    if (v13 <= 3)
    {
      v15 = v13;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = *a1;
    }

    else if (v15 == 2)
    {
      v16 = *a1;
    }

    else if (v15 == 3)
    {
      v16 = *a1 | (a1[2] << 16);
    }

    else
    {
      v16 = *a1;
    }

    v17 = (v16 | ((v14 - 2) << (8 * v13))) + 2;
    v18 = v16 + 2;
    if (v13 >= 4)
    {
      v14 = v18;
    }

    else
    {
      v14 = v17;
    }
  }

LABEL_23:
  v19 = ~v9;
  (*(v5 + 8))(a1, AssociatedTypeWitness);
  if (v14 == 1 && !(*(v8 + 48))(&a1[v10] & v19, 1, v7))
  {
    (*(v8 + 8))(&a1[v10] & v19, v7);
  }

  v20 = a2[v13];
  if (v20 < 2)
  {
    goto LABEL_41;
  }

  if (v13 <= 3)
  {
    v21 = v13;
  }

  else
  {
    v21 = 4;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_41;
    }

    v22 = *a2;
  }

  else if (v21 == 2)
  {
    v22 = *a2;
  }

  else if (v21 == 3)
  {
    v22 = *a2 | (a2[2] << 16);
  }

  else
  {
    v22 = *a2;
  }

  v23 = (v22 | ((v20 - 2) << (8 * v13))) + 2;
  v24 = v22 + 2;
  if (v13 >= 4)
  {
    v20 = v24;
  }

  else
  {
    v20 = v23;
  }

LABEL_41:
  (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
  if (v20 == 1)
  {
    v25 = &a1[v10];
    v26 = &a2[v10];
    if ((*(v8 + 48))(v26 & v19, 1, v7))
    {
      memcpy((v25 & v19), (v26 & v19), __n);
      v27 = 1;
    }

    else
    {
      (*(v8 + 32))(v25 & v19, v26 & v19, v7);
      v27 = 1;
      (*(v8 + 56))(v25 & v19, 0, 1, v7);
    }
  }

  else
  {
    v27 = 0;
  }

  a1[v13] = v27;
  return a1;
}

uint64_t getEnumTagSinglePayload for SequenceGesture.Value(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 + ((v4 + *(v5 + 80)) & ~*(v5 + 80)) <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
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
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v12 < 2)
    {
LABEL_29:
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
    goto LABEL_29;
  }

LABEL_18:
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

void storeEnumTagSinglePayload for SequenceGesture.Value(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  v9 = v8 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));
  if (v9 <= v6)
  {
    v9 = v6;
  }

  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTag for SequenceGesture.Value(unsigned __int8 *a1)
{
  v2 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = v4 + ((v2 + *(v3 + 80)) & ~*(v3 + 80));
  if (v5 <= v2)
  {
    v5 = v2;
  }

  result = a1[v5];
  if (result >= 2)
  {
    if (v5 <= 3)
    {
      v7 = v5;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return result;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | ((result - 2) << (8 * v5))) + 2;
    v10 = v8 + 2;
    if (v5 >= 4)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

void destructiveInjectEnumTag for SequenceGesture.Value(_BYTE *a1, unsigned int a2)
{
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 + ((v4 + *(v5 + 80)) & ~*(v5 + 80)) <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));
  }

  if (a2 <= 1)
  {
    a1[v7] = a2;
    return;
  }

  v8 = a2 - 2;
  if (v7 < 4)
  {
    a1[v7] = (v8 >> (8 * v7)) + 2;
    if (!v7)
    {
      return;
    }

    v8 &= ~(-1 << (8 * v7));
  }

  else
  {
    a1[v7] = 2;
  }

  if (v7 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  bzero(a1, v7);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      *a1 = v8;
      a1[2] = BYTE2(v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  else if (v9 == 1)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = v8;
  }
}

uint64_t AttributedString.init<A>(converting:using:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v68 = a4;
  v64 = a5;
  v8 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedSubstring?(0, &lazy cache variable for type metadata for AttributedSubstring?, MEMORY[0x1E6968968]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v60 - v11;
  v12 = type metadata accessor for AttributedSubstring();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v60 - v15;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - v21;
  v23 = type metadata accessor for AttributedString();
  v24 = *(v23 - 8);
  v73 = v23;
  v74 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v72 = &v60 - v28;
  v29 = [a1 string];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v70 = v16;
  v71 = a2;
  v33 = *(v16 + 16);
  v33(v22, a2, a3);
  v34 = v68;
  (*(v68 + 56))(v30, v32, a3, v68);
  v33(v19, v22, a3);
  v35 = a3;
  v37 = v65;
  v36 = v66;
  v38 = a1;
  v39 = v67;
  v40 = v38;
  AttributedSubstring.init<A>(unwrapping:with:)(v38, v19, v35, v34, v67);
  v41 = (*(v37 + 48))(v39, 1, v36);
  v63 = v22;
  if (v41 != 1)
  {

    v57 = v61;
    (*(v37 + 32))(v61, v39, v36);
    (*(v37 + 16))(v60, v57, v36);
    v58 = v69;
    AttributedString.init(_:)();

    v52 = *(v70 + 8);
    v52(v71, v35);
    (*(v37 + 8))(v57, v36);
    v59 = v73;
    v43 = *(v74 + 32);
    v56 = v72;
    v43(v72, v58, v73);
    v50 = 0;
    v55 = v59;
    goto LABEL_5;
  }

  outlined destroy of AttributedSubstring?(v39, &lazy cache variable for type metadata for AttributedSubstring?, MEMORY[0x1E6968968]);
  AttributeContainer.init()();
  v42 = v69;
  AttributedString.init(_:attributes:)();
  v43 = *(v74 + 32);
  v44 = v72;
  v74 += 32;
  v43(v72, v42, v73);
  v45 = NSAttributedString.range.getter();
  v47 = v46;
  v48 = swift_allocObject();
  v48[2] = v35;
  v48[3] = v34;
  v48[4] = v44;
  v48[5] = v22;
  v49 = swift_allocObject();
  v50 = partial apply for closure #1 in AttributedString.init<A>(converting:using:);
  *(v49 + 16) = partial apply for closure #1 in AttributedString.init<A>(converting:using:);
  *(v49 + 24) = v48;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_7;
  v51 = _Block_copy(aBlock);

  [v40 enumerateAttributesInRange:v45 options:v47 usingBlock:{0, v51}];
  _Block_release(v51);

  v52 = *(v70 + 8);
  v52(v71, v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v55 = v73;
    v56 = v72;
LABEL_5:
    v52(v63, v35);
    v43(v64, v56, v55);
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v50);
  }

  __break(1u);
  return result;
}

uint64_t AttributedSubstring.init<A>(unwrapping:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)();
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v48 - v12;
  v63 = type metadata accessor for AttributedString.Index();
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  type metadata accessor for Range<AttributedString.Index>();
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  type metadata accessor for NSAttributedString();
  v24 = a1;
  v65 = a3;
  swift_getExtendedExistentialTypeMetadata_unique();
  if ((swift_dynamicCast() & 1) == 0)
  {

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    (*(v20 + 8))(a2, a3);
    if (*(&v67 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(&v66);
    }

    goto LABEL_8;
  }

  v55 = v24;
  v56 = a5;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v66, v70);
  v26 = v71;
  v25 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  (*(v25 + 56))(v26, v25);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v20 + 8);
  v29 = v20 + 8;
  v28 = v30;
  v30(v23, a3);
  if ((v27 & 1) == 0)
  {
    v28(a2, a3);

    __swift_destroy_boxed_opaque_existential_1(v70);
    a5 = v56;
LABEL_8:
    v46 = 1;
    goto LABEL_9;
  }

  v51 = v28;
  v52 = v29;
  v53 = a2;
  v32 = v71;
  v31 = v72;
  v54 = __swift_project_boxed_opaque_existential_1(v70, v71);
  v64 = *(v31 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(&v67 + 1) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
  v64(v32, v31);
  dispatch thunk of AttributedStringProtocol.startIndex.getter();
  v54 = boxed_opaque_existential_1;
  v64 = AssociatedConformanceWitness;
  dispatch thunk of AttributedStringProtocol.endIndex.getter();
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  v36 = v63;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v38 = v57;
    v39 = *(v57 + 32);
    v50 = AssociatedTypeWitness;
    v40 = v59;
    v39(v59, v17, v36);
    v41 = v62;
    v39((v40 + *(v62 + 48)), v14, v36);
    v42 = v60;
    outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(v40, v60);
    v43 = *(v41 + 48);
    v44 = v61;
    v39(v61, v42, v36);
    v49 = a3;
    v45 = *(v38 + 8);
    v45(v42 + v43, v36);
    outlined init with take of Range<AttributedString.Index>(v40, v42, type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index));
    v39((v44 + *(v58 + 36)), (v42 + *(v41 + 48)), v36);
    v45(v42, v36);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
    a5 = v56;
    dispatch thunk of AttributedStringProtocol.subscript.getter();

    v51(v53, v49);
    outlined destroy of Range<AttributedString.Index>(v44);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v46 = 0;
LABEL_9:
    v47 = type metadata accessor for AttributedSubstring();
    return (*(*(v47 - 8) + 56))(a5, v46, 1, v47);
  }

  __break(1u);
  return result;
}