uint64_t initializeWithTake for ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v7 = *(a3 + 60);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *(a1 + 144) = *(a2 + 144);
  v10 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = v9[1];
      *v8 = *v9;
      v8[1] = v14;
      *(v8 + 32) = *(v9 + 32);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 56) = *(v9 + 56);
      v15 = v9[13];
      v8[12] = v9[12];
      v8[13] = v15;
      v8[14] = v9[14];
      *(v8 + 235) = *(v9 + 235);
      v16 = v9[9];
      v8[8] = v9[8];
      v8[9] = v16;
      v17 = v9[11];
      v8[10] = v9[10];
      v8[11] = v17;
      v18 = v9[5];
      v8[4] = v9[4];
      v8[5] = v18;
      v19 = v9[7];
      v8[6] = v9[6];
      v8[7] = v19;
      v20 = v9[17];
      v8[16] = v9[16];
      v8[17] = v20;
      v21 = v9[23];
      v8[22] = v9[22];
      v8[23] = v21;
      v8[24] = v9[24];
      *(v8 + 50) = *(v9 + 50);
      v22 = v9[19];
      v8[18] = v9[18];
      v8[19] = v22;
      v23 = v9[21];
      v8[20] = v9[20];
      v8[21] = v23;
      v24 = *(v9 + 456);
      *(v8 + 440) = *(v9 + 440);
      *(v8 + 456) = v24;
      *(v8 + 472) = *(v9 + 472);
      v25 = *(v9 + 424);
      *(v8 + 408) = *(v9 + 408);
      *(v8 + 424) = v25;
      v8[30] = v9[30];
      *(v8 + 489) = *(v9 + 489);
      v8[32] = v9[32];
      *(v8 + 528) = *(v9 + 528);
      memcpy(v8 + 536, v9 + 536, 0x130uLL);
      v26 = *(v9 + 856);
      *(v8 + 840) = *(v9 + 840);
      *(v8 + 856) = v26;
      *(v8 + 872) = *(v9 + 872);
      *(v8 + 111) = *(v9 + 111);
      *(v8 + 112) = *(v9 + 112);
      *(v8 + 904) = *(v9 + 904);
      *(v8 + 920) = *(v9 + 920);
      *(v8 + 117) = *(v9 + 117);
      *(v8 + 118) = *(v9 + 118);
      *(v8 + 952) = *(v9 + 952);
      *(v8 + 953) = *(v9 + 953);
      v27 = type metadata accessor for PlatformItemList.Item();
      v28 = v27[28];
      __dst = v8 + v28;
      v29 = v9 + v28;
      v30 = type metadata accessor for CommandOperation();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v29, 1, v30))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(__dst, v29, *(*(v32 - 8) + 64));
      }

      else
      {
        *__dst = *v29;
        v33 = *(v30 + 20);
        v34 = &__dst[v33];
        v39 = &v29[v33];
        v35 = *&v29[v33 + 16];
        *v34 = *&v29[v33];
        *(v34 + 1) = v35;
        v38 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v36 = type metadata accessor for UUID();
        (*(*(v36 - 8) + 32))(&v34[v38], &v39[v38], v36);
        *&__dst[*(v30 + 24)] = *&v29[*(v30 + 24)];
        (*(v31 + 56))();
      }

      *(v8 + v27[29]) = *(v9 + v27[29]);
      *(v8 + v27[30]) = *(v9 + v27[30]);
      *(v8 + v27[31]) = *(v9 + v27[31]);
      *(v8 + v27[32]) = *(v9 + v27[32]);
      *(v8 + v27[33]) = *(v9 + v27[33]);
      *(v8 + v27[34]) = *(v9 + v27[34]);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v8, v9, *(*(v13 - 8) + 64));
    }

    *(v8 + *(v10 + 20)) = *(v9 + *(v10 + 20));
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  return a1;
}

uint64_t assignWithTake for ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;

  if (!*(a1 + 56))
  {
LABEL_6:
    v10 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v10;
    *(a1 + 64) = *(a2 + 64);
    if (a1 == a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!*(a2 + 56))
  {
    outlined destroy of MatchedTransitionIdentifier(a1 + 32);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;
  if (a1 != a2)
  {
LABEL_7:
    outlined destroy of ToolbarItemPlacement.Role(a1 + 80);
    v11 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v11;
    *(a1 + 105) = *(a2 + 105);
  }

LABEL_8:
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  v12 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v12;

  v13 = *(a3 + 60);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, v16);
  v20 = v18(v15, 1, v16);
  if (v19)
  {
    if (!v20)
    {
      v21 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *(v15 + 16);
        *v14 = *v15;
        *(v14 + 16) = v22;
        *(v14 + 32) = *(v15 + 32);
        *(v14 + 40) = *(v15 + 40);
        *(v14 + 56) = *(v15 + 56);
        v23 = *(v15 + 208);
        *(v14 + 192) = *(v15 + 192);
        *(v14 + 208) = v23;
        *(v14 + 224) = *(v15 + 224);
        *(v14 + 235) = *(v15 + 235);
        v24 = *(v15 + 144);
        *(v14 + 128) = *(v15 + 128);
        *(v14 + 144) = v24;
        v25 = *(v15 + 176);
        *(v14 + 160) = *(v15 + 160);
        *(v14 + 176) = v25;
        v26 = *(v15 + 80);
        *(v14 + 64) = *(v15 + 64);
        *(v14 + 80) = v26;
        v27 = *(v15 + 112);
        *(v14 + 96) = *(v15 + 96);
        *(v14 + 112) = v27;
        v28 = *(v15 + 272);
        *(v14 + 256) = *(v15 + 256);
        *(v14 + 272) = v28;
        v29 = *(v15 + 368);
        *(v14 + 352) = *(v15 + 352);
        *(v14 + 368) = v29;
        *(v14 + 384) = *(v15 + 384);
        *(v14 + 400) = *(v15 + 400);
        v30 = *(v15 + 304);
        *(v14 + 288) = *(v15 + 288);
        *(v14 + 304) = v30;
        v31 = *(v15 + 336);
        *(v14 + 320) = *(v15 + 320);
        *(v14 + 336) = v31;
        v32 = *(v15 + 456);
        *(v14 + 440) = *(v15 + 440);
        *(v14 + 456) = v32;
        *(v14 + 472) = *(v15 + 472);
        v33 = *(v15 + 424);
        *(v14 + 408) = *(v15 + 408);
        *(v14 + 424) = v33;
        *(v14 + 480) = *(v15 + 480);
        *(v14 + 489) = *(v15 + 489);
        *(v14 + 512) = *(v15 + 512);
        *(v14 + 528) = *(v15 + 528);
        memcpy((v14 + 536), (v15 + 536), 0x130uLL);
        v34 = *(v15 + 856);
        *(v14 + 840) = *(v15 + 840);
        *(v14 + 856) = v34;
        *(v14 + 872) = *(v15 + 872);
        *(v14 + 888) = *(v15 + 888);
        *(v14 + 896) = *(v15 + 896);
        *(v14 + 904) = *(v15 + 904);
        *(v14 + 920) = *(v15 + 920);
        *(v14 + 936) = *(v15 + 936);
        *(v14 + 944) = *(v15 + 944);
        *(v14 + 952) = *(v15 + 952);
        *(v14 + 953) = *(v15 + 953);
        v35 = type metadata accessor for PlatformItemList.Item();
        v36 = v35[28];
        __dst = (v14 + v36);
        v37 = (v15 + v36);
        v38 = type metadata accessor for CommandOperation();
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v37, 1, v38))
        {
          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
          memcpy(__dst, v37, *(*(v40 - 8) + 64));
        }

        else
        {
          *__dst = *v37;
          v63 = *(v38 + 20);
          v64 = &__dst[v63];
          v76 = &v37[v63];
          v65 = *&v37[v63 + 16];
          *v64 = *&v37[v63];
          *(v64 + 1) = v65;
          v75 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
          v66 = type metadata accessor for UUID();
          (*(*(v66 - 8) + 32))(&v64[v75], &v76[v75], v66);
          *&__dst[*(v38 + 24)] = *&v37[*(v38 + 24)];
          (*(v39 + 56))();
        }

        *(v14 + v35[29]) = *(v15 + v35[29]);
        *(v14 + v35[30]) = *(v15 + v35[30]);
        *(v14 + v35[31]) = *(v15 + v35[31]);
        *(v14 + v35[32]) = *(v15 + v35[32]);
        *(v14 + v35[33]) = *(v15 + v35[33]);
        *(v14 + v35[34]) = *(v15 + v35[34]);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v14, v15, *(*(v21 - 8) + 64));
      }

      *(v14 + *(v16 + 20)) = *(v15 + *(v16 + 20));
      (*(v17 + 56))(v14, 0, 1, v16);
      return a1;
    }

LABEL_15:
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    memcpy(v14, v15, *(*(v41 - 8) + 64));
    return a1;
  }

  if (v20)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v14, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
    goto LABEL_15;
  }

  if (a1 != a2)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v14, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    v42 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *(v15 + 16);
      *v14 = *v15;
      *(v14 + 16) = v43;
      *(v14 + 32) = *(v15 + 32);
      *(v14 + 40) = *(v15 + 40);
      *(v14 + 56) = *(v15 + 56);
      v44 = *(v15 + 208);
      *(v14 + 192) = *(v15 + 192);
      *(v14 + 208) = v44;
      *(v14 + 224) = *(v15 + 224);
      *(v14 + 235) = *(v15 + 235);
      v45 = *(v15 + 144);
      *(v14 + 128) = *(v15 + 128);
      *(v14 + 144) = v45;
      v46 = *(v15 + 176);
      *(v14 + 160) = *(v15 + 160);
      *(v14 + 176) = v46;
      v47 = *(v15 + 80);
      *(v14 + 64) = *(v15 + 64);
      *(v14 + 80) = v47;
      v48 = *(v15 + 112);
      *(v14 + 96) = *(v15 + 96);
      *(v14 + 112) = v48;
      v49 = *(v15 + 272);
      *(v14 + 256) = *(v15 + 256);
      *(v14 + 272) = v49;
      v50 = *(v15 + 368);
      *(v14 + 352) = *(v15 + 352);
      *(v14 + 368) = v50;
      *(v14 + 384) = *(v15 + 384);
      *(v14 + 400) = *(v15 + 400);
      v51 = *(v15 + 304);
      *(v14 + 288) = *(v15 + 288);
      *(v14 + 304) = v51;
      v52 = *(v15 + 336);
      *(v14 + 320) = *(v15 + 320);
      *(v14 + 336) = v52;
      v53 = *(v15 + 456);
      *(v14 + 440) = *(v15 + 440);
      *(v14 + 456) = v53;
      *(v14 + 472) = *(v15 + 472);
      v54 = *(v15 + 424);
      *(v14 + 408) = *(v15 + 408);
      *(v14 + 424) = v54;
      *(v14 + 480) = *(v15 + 480);
      *(v14 + 489) = *(v15 + 489);
      *(v14 + 512) = *(v15 + 512);
      *(v14 + 528) = *(v15 + 528);
      memcpy((v14 + 536), (v15 + 536), 0x130uLL);
      v55 = *(v15 + 856);
      *(v14 + 840) = *(v15 + 840);
      *(v14 + 856) = v55;
      *(v14 + 872) = *(v15 + 872);
      *(v14 + 888) = *(v15 + 888);
      *(v14 + 896) = *(v15 + 896);
      *(v14 + 904) = *(v15 + 904);
      *(v14 + 920) = *(v15 + 920);
      *(v14 + 936) = *(v15 + 936);
      *(v14 + 944) = *(v15 + 944);
      *(v14 + 952) = *(v15 + 952);
      *(v14 + 953) = *(v15 + 953);
      v56 = type metadata accessor for PlatformItemList.Item();
      v57 = v56[28];
      v58 = (v14 + v57);
      v59 = (v15 + v57);
      v60 = type metadata accessor for CommandOperation();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v59, 1, v60))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(v58, v59, *(*(v62 - 8) + 64));
      }

      else
      {
        *v58 = *v59;
        v67 = *(v60 + 20);
        v78 = v58;
        v68 = &v58[v67];
        v69 = &v59[v67];
        v70 = *&v59[v67 + 16];
        *v68 = *&v59[v67];
        *(v68 + 1) = v70;
        v77 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v71 = type metadata accessor for UUID();
        (*(*(v71 - 8) + 32))(&v68[v77], &v69[v77], v71);
        *&v78[*(v60 + 24)] = *&v59[*(v60 + 24)];
        (*(v61 + 56))();
      }

      *(v14 + v56[29]) = *(v15 + v56[29]);
      *(v14 + v56[30]) = *(v15 + v56[30]);
      *(v14 + v56[31]) = *(v15 + v56[31]);
      *(v14 + v56[32]) = *(v15 + v56[32]);
      *(v14 + v56[33]) = *(v15 + v56[33]);
      *(v14 + v56[34]) = *(v15 + v56[34]);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v14, v15, *(*(v42 - 8) + 64));
    }
  }

  v72 = *(v16 + 20);
  v73 = *(v14 + v72);
  *(v14 + v72) = *(v15 + v72);

  return a1;
}

char *initializeBufferWithCopyOfBuffer for ToolbarStorage.GroupItem.CollapsedContent.Value(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *(a2 + 3);
      *(a1 + 24) = v23;
      (**(v23 - 8))(a1, a2);
      v24 = a2[6];
      *(a1 + 5) = a2[5];
      *(a1 + 6) = v24;
      *(a1 + 7) = a2[7];
      *(a1 + 8) = a2[8];
      *(a1 + 72) = *(a2 + 9);
      v25 = a2[11];
      *(a1 + 11) = v25;

      v26 = v25;
LABEL_60:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v6 = *a2;
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a2[3];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = v8;
    a1[32] = *(a2 + 32);
    v9 = a2[6];
    *(a1 + 5) = a2[5];
    *(a1 + 6) = v9;
    a1[56] = *(a2 + 56);
    v10 = a2[24];
    v11 = v6;
    v12 = v7;

    if (v10 >> 1 == 4294967294)
    {
      v13 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v13;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v14 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v14;
      v15 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v15;
      v16 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v16;
      v17 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v17;
      v18 = a2[33];
      if (v18)
      {
LABEL_5:
        *(a1 + 32) = a2[32];
        *(a1 + 33) = v18;
        v19 = a2[34];

        if (v19 >= 2)
        {
          v20 = v19;
        }

        *(a1 + 34) = v19;
        *(a1 + 70) = *(a2 + 70);
        a1[284] = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v21 = a2[37];
        *(a1 + 36) = a2[36];
        *(a1 + 37) = v21;

LABEL_18:
        v37 = a2[42];
        if (v37 >> 2 == 0xFFFFFFFF)
        {
          v38 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v38;
          *(a1 + 50) = a2[50];
          v39 = *(a2 + 20);
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = v39;
          v40 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v40;
        }

        else
        {
          v41 = a2[38];
          v42 = a2[39];
          v43 = a2[40];
          v44 = a2[41];
          v45 = a2[43];
          v46 = a2[44];
          v47 = a2[45];
          v101 = a2[46];
          v103 = a2[47];
          v106 = a2[48];
          v107 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v41, v42, v43, v44, v37, v45, v46, v47, v101, v103, v106, v107, __dsta);
          *(a1 + 38) = v41;
          *(a1 + 39) = v42;
          *(a1 + 40) = v43;
          *(a1 + 41) = v44;
          *(a1 + 42) = v37;
          *(a1 + 43) = v45;
          *(a1 + 44) = v46;
          *(a1 + 45) = v47;
          *(a1 + 46) = v101;
          *(a1 + 47) = v103;
          *(a1 + 48) = v106;
          *(a1 + 49) = v107;
          *(a1 + 50) = __dsta;
        }

        v48 = a2[52];
        if (v48 == 1)
        {
          v49 = *(a2 + 57);
          *(a1 + 440) = *(a2 + 55);
          *(a1 + 456) = v49;
          a1[472] = *(a2 + 472);
          v50 = *(a2 + 53);
          *(a1 + 408) = *(a2 + 51);
          *(a1 + 424) = v50;
          goto LABEL_31;
        }

        *(a1 + 102) = *(a2 + 102);
        a1[412] = *(a2 + 412);
        if (v48)
        {
          v51 = a2[53];
          *(a1 + 52) = v48;
          *(a1 + 53) = v51;

          v52 = a2[54];
          if (v52)
          {
            goto LABEL_25;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v52 = a2[54];
          if (v52)
          {
LABEL_25:
            v53 = a2[55];
            *(a1 + 54) = v52;
            *(a1 + 55) = v53;

            v54 = a2[56];
            if (v54)
            {
LABEL_26:
              v55 = a2[57];
              *(a1 + 56) = v54;
              *(a1 + 57) = v55;

LABEL_30:
              *(a1 + 58) = a2[58];
              a1[472] = *(a2 + 472);
LABEL_31:
              v56 = a2[61];
              *(a1 + 60) = a2[60];
              *(a1 + 61) = v56;
              *(a1 + 62) = a2[62];
              a1[504] = *(a2 + 504);
              v57 = a2[64];

              if (v57)
              {
                v58 = a2[65];
                *(a1 + 64) = v57;
                *(a1 + 65) = v58;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              a1[528] = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 536, a2 + 67, 0x130uLL);
                goto LABEL_46;
              }

              *(a1 + 67) = a2[67];
              *(a1 + 68) = a2[68];
              a1[552] = *(a2 + 552);
              *(a1 + 70) = a2[70];
              a1[568] = *(a2 + 568);
              *(a1 + 36) = *(a2 + 36);
              a1[592] = *(a2 + 592);
              v59 = a1 + 600;
              v60 = a2 + 75;
              v61 = a2[78];

              if (v61)
              {
                if (v61 == 1)
                {
                  v62 = *(a2 + 77);
                  *v59 = *v60;
                  *(a1 + 616) = v62;
                  *(a1 + 632) = *(a2 + 79);
LABEL_42:
                  *(a1 + 81) = a2[81];
                  a1[656] = *(a2 + 656);
                  v64 = a1 + 664;
                  v65 = a2 + 83;
                  v66 = a2[97];
                  if (v66 == 1)
                  {
                    v67 = *(a2 + 97);
                    *(a1 + 760) = *(a2 + 95);
                    *(a1 + 776) = v67;
                    *(a1 + 792) = *(a2 + 99);
                    a1[808] = *(a2 + 808);
                    v68 = *(a2 + 89);
                    *(a1 + 696) = *(a2 + 87);
                    *(a1 + 712) = v68;
                    v69 = *(a2 + 93);
                    *(a1 + 728) = *(a2 + 91);
                    *(a1 + 744) = v69;
                    v70 = *(a2 + 85);
                    *v64 = *v65;
                    *(a1 + 680) = v70;
                  }

                  else
                  {
                    *v64 = *v65;
                    a1[672] = *(a2 + 672);
                    *(a1 + 85) = a2[85];
                    a1[688] = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    a1[691] = *(a2 + 691);
                    a1[692] = *(a2 + 692);
                    *(a1 + 87) = a2[87];
                    v71 = *(a2 + 45);
                    *(a1 + 44) = *(a2 + 44);
                    *(a1 + 45) = v71;
                    *(a1 + 92) = a2[92];
                    *(a1 + 372) = *(a2 + 372);
                    *(a1 + 47) = *(a2 + 47);
                    a1[768] = *(a2 + 768);
                    *(a1 + 97) = v66;
                    *(a1 + 49) = *(a2 + 49);
                    *(a1 + 100) = a2[100];
                    a1[808] = *(a2 + 808);
                  }

                  *(a1 + 102) = a2[102];
                  *(a1 + 103) = a2[103];
                  *(a1 + 104) = a2[104];

LABEL_46:
                  v72 = a1 + 840;
                  v73 = a2 + 105;
                  v74 = a2[108];
                  if (v74)
                  {
                    if (v74 == 1)
                    {
                      v75 = *(a2 + 107);
                      *v72 = *v73;
                      *(a1 + 856) = v75;
                      *(a1 + 872) = *(a2 + 109);
                      *(a1 + 111) = a2[111];
LABEL_53:
                      v79 = a2[112];
                      *(a1 + 112) = v79;
                      *(a1 + 113) = a2[113];
                      *(a1 + 114) = a2[114];
                      *(a1 + 115) = a2[115];
                      *(a1 + 116) = a2[116];
                      *(a1 + 117) = a2[117];
                      *(a1 + 118) = a2[118];
                      *(a1 + 476) = *(a2 + 476);
                      a1[954] = *(a2 + 954);
                      v80 = type metadata accessor for PlatformItemList.Item();
                      v81 = *(v80 + 112);
                      v108 = v80;
                      __dst = &a1[v81];
                      v82 = a2 + v81;
                      v83 = type metadata accessor for CommandOperation();
                      v84 = *(v83 - 8);
                      v104 = *(v84 + 48);
                      v85 = v79;

                      if (v104(v82, 1, v83))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v82, *(*(v86 - 8) + 64));
                      }

                      else
                      {
                        v105 = v82;
                        *__dst = *v82;
                        v87 = *(v83 + 20);
                        v88 = &__dst[v87];
                        v89 = &v82[v87];
                        v90 = *&v82[v87];
                        v91 = *(v89 + 1);
                        v92 = v89[16];
                        outlined copy of Text.Storage(v90, v91, v92);
                        *v88 = v90;
                        *(v88 + 1) = v91;
                        v88[16] = v92;
                        *(v88 + 3) = *(v89 + 3);
                        v93 = v83;
                        v94 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v95 = type metadata accessor for UUID();
                        v102 = *(*(v95 - 8) + 16);

                        v102(&v88[v94], &v89[v94], v95);
                        v96 = *(v93 + 24);
                        v97 = &__dst[v96];
                        v98 = &v105[v96];
                        if (*v98)
                        {
                          v99 = v98[1];
                          *v97 = *v98;
                          *(v97 + 1) = v99;
                        }

                        else
                        {
                          *v97 = *v98;
                        }

                        (*(v84 + 56))(__dst, 0, 1, v93);
                      }

                      a1[v108[29]] = *(a2 + v108[29]);
                      a1[v108[30]] = *(a2 + v108[30]);
                      a1[v108[31]] = *(a2 + v108[31]);
                      a1[v108[32]] = *(a2 + v108[32]);
                      a1[v108[33]] = *(a2 + v108[33]);
                      *&a1[v108[34]] = *(a2 + v108[34]);

                      goto LABEL_60;
                    }

                    *(a1 + 108) = v74;
                    *(a1 + 109) = a2[109];
                    (**(v74 - 1))(v72, v73);
                    v77 = a2[110];
                    if (!v77)
                    {
LABEL_52:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    v76 = *(a2 + 107);
                    *v72 = *v73;
                    *(a1 + 856) = v76;
                    *(a1 + 109) = a2[109];
                    v77 = a2[110];
                    if (!v77)
                    {
                      goto LABEL_52;
                    }
                  }

                  v78 = a2[111];
                  *(a1 + 110) = v77;
                  *(a1 + 111) = v78;

                  goto LABEL_53;
                }

                *(a1 + 78) = v61;
                *(a1 + 79) = a2[79];
                (**(v61 - 1))((a1 + 600), (a2 + 75), v61);
              }

              else
              {
                v63 = *(a2 + 77);
                *v59 = *v60;
                *(a1 + 616) = v63;
                *(a1 + 79) = a2[79];
              }

              *(a1 + 80) = a2[80];

              goto LABEL_42;
            }

LABEL_29:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_30;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v54 = a2[56];
        if (v54)
        {
          goto LABEL_26;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v27 = *(a2 + 72);
      if (v27 == 255)
      {
        *(a1 + 8) = a2[8];
        a1[72] = *(a2 + 72);
      }

      else
      {
        v28 = a2[8];
        outlined copy of GraphicsImage.Contents(v28, *(a2 + 72));
        *(a1 + 8) = v28;
        a1[72] = v27;
        v10 = a2[24];
      }

      *(a1 + 10) = a2[10];
      *(a1 + 88) = *(a2 + 11);
      a1[104] = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 136) = *(a2 + 17);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 84) = *(a2 + 84);
      a1[170] = *(a2 + 170);
      a1[171] = *(a2 + 171);
      if (v10 >> 1 == 0xFFFFFFFF)
      {
        v29 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v29;
      }

      else
      {
        v30 = a2[22];
        v31 = a2[23];
        v32 = a2[25];
        outlined copy of AccessibilityImageLabel(v30, v31, v10);
        *(a1 + 22) = v30;
        *(a1 + 23) = v31;
        *(a1 + 24) = v10;
        *(a1 + 25) = v32;
      }

      v33 = a2[27];
      *(a1 + 26) = a2[26];
      *(a1 + 27) = v33;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 57) = *(a2 + 57);
      a1[232] = *(a2 + 232);
      v34 = a2[30];
      *(a1 + 30) = v34;
      *(a1 + 124) = *(a2 + 124);
      a1[250] = *(a2 + 250);
      swift_unknownObjectRetain();

      v35 = v34;
      v18 = a2[33];
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v36 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v36;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_18;
  }

  v22 = *a2;
  *a1 = *a2;
  a1 = &v22[(v5 + 16) & ~v5];

  return a1;
}

void destroy for ToolbarStorage.GroupItem.CollapsedContent.Value(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v2 = *(a1 + 192);
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 72);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v4);
        v2 = *(a1 + 192);
        v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v3 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v2);
      }

      swift_unknownObjectRelease();
    }

    if (*(a1 + 264))
    {

      v5 = *(a1 + 272);
      if (v5 >= 2)
      {
      }
    }

    v6 = *(a1 + 336);
    if (v6 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v6, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
    }

    v7 = *(a1 + 416);
    if (v7)
    {
      if (v7 == 1)
      {
        goto LABEL_21;
      }
    }

    if (*(a1 + 432))
    {
    }

    if (*(a1 + 448))
    {
    }

LABEL_21:

    if (*(a1 + 512))
    {
    }

    if (!*(a1 + 816))
    {
LABEL_31:
      v9 = *(a1 + 864);
      if (v9)
      {
        if (v9 == 1)
        {
LABEL_36:

          v10 = a1 + *(type metadata accessor for PlatformItemList.Item() + 112);
          v11 = type metadata accessor for CommandOperation();
          if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
          {
            v12 = v10 + *(v11 + 20);
            outlined consume of Text.Storage(*v12, *(v12 + 8), *(v12 + 16));

            v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v14 = type metadata accessor for UUID();
            (*(*(v14 - 8) + 8))(v12 + v13, v14);
            if (*(v10 + *(v11 + 24)))
            {
            }
          }

          return;
        }

        __swift_destroy_boxed_opaque_existential_1(a1 + 840);
      }

      if (*(a1 + 880))
      {
      }

      goto LABEL_36;
    }

    v8 = *(a1 + 624);
    if (v8)
    {
      if (v8 == 1)
      {
LABEL_28:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_31;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 600);
    }

    goto LABEL_28;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  v15 = *(a1 + 88);
}

uint64_t initializeWithCopy for ToolbarStorage.GroupItem.CollapsedContent.Value(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *(a2 + 24);
    *(a1 + 24) = v20;
    (**(v20 - 8))(a1, a2);
    v21 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v21;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    v22 = *(a2 + 88);
    *(a1 + 88) = v22;

    v23 = v22;
    goto LABEL_58;
  }

  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 192);
  v9 = v4;
  v10 = v5;

  if (v8 >> 1 != 4294967294)
  {
    v24 = *(a2 + 72);
    if (v24 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v25 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v25, *(a2 + 72));
      *(a1 + 64) = v25;
      *(a1 + 72) = v24;
      v8 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v8 >> 1 == 0xFFFFFFFF)
    {
      v26 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v26;
    }

    else
    {
      v27 = *(a2 + 176);
      v28 = *(a2 + 184);
      v29 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v27, v28, v8);
      *(a1 + 176) = v27;
      *(a1 + 184) = v28;
      *(a1 + 192) = v8;
      *(a1 + 200) = v29;
    }

    v30 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v30;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v31 = *(a2 + 240);
    *(a1 + 240) = v31;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v32 = v31;
    v16 = *(a2 + 264);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_15:
    v33 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v33;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_16;
  }

  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v12 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v12;
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v14;
  v15 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v15;
  v16 = *(a2 + 264);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v16;
  v17 = *(a2 + 272);

  if (v17 >= 2)
  {
    v18 = v17;
  }

  *(a1 + 272) = v17;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v19 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v19;

LABEL_16:
  v34 = *(a2 + 336);
  if (v34 >> 2 == 0xFFFFFFFF)
  {
    v35 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v35;
    *(a1 + 400) = *(a2 + 400);
    v36 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v36;
    v37 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v37;
  }

  else
  {
    v38 = *(a2 + 304);
    v39 = *(a2 + 312);
    v40 = *(a2 + 320);
    v41 = *(a2 + 328);
    v42 = *(a2 + 344);
    v43 = *(a2 + 352);
    v44 = *(a2 + 360);
    v98 = *(a2 + 368);
    v100 = *(a2 + 376);
    v103 = *(a2 + 384);
    v104 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v38, v39, v40, v41, v34, v42, v43, v44, v98, v100, v103, v104, __dsta);
    *(a1 + 304) = v38;
    *(a1 + 312) = v39;
    *(a1 + 320) = v40;
    *(a1 + 328) = v41;
    *(a1 + 336) = v34;
    *(a1 + 344) = v42;
    *(a1 + 352) = v43;
    *(a1 + 360) = v44;
    *(a1 + 368) = v98;
    *(a1 + 376) = v100;
    *(a1 + 384) = v103;
    *(a1 + 392) = v104;
    *(a1 + 400) = __dsta;
  }

  v45 = *(a2 + 416);
  if (v45 == 1)
  {
    v46 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v46;
    *(a1 + 472) = *(a2 + 472);
    v47 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v47;
    goto LABEL_29;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v45)
  {
    v48 = *(a2 + 424);
    *(a1 + 416) = v45;
    *(a1 + 424) = v48;

    v49 = *(a2 + 432);
    if (v49)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 432) = *(a2 + 432);
    v51 = *(a2 + 448);
    if (v51)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_28;
  }

  *(a1 + 416) = *(a2 + 416);
  v49 = *(a2 + 432);
  if (!v49)
  {
    goto LABEL_26;
  }

LABEL_23:
  v50 = *(a2 + 440);
  *(a1 + 432) = v49;
  *(a1 + 440) = v50;

  v51 = *(a2 + 448);
  if (!v51)
  {
    goto LABEL_27;
  }

LABEL_24:
  v52 = *(a2 + 456);
  *(a1 + 448) = v51;
  *(a1 + 456) = v52;

LABEL_28:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_29:
  v53 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v53;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v54 = *(a2 + 512);

  if (v54)
  {
    v55 = *(a2 + 520);
    *(a1 + 512) = v54;
    *(a1 + 520) = v55;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v56 = (a1 + 600);
  v57 = (a2 + 600);
  v58 = *(a2 + 624);

  if (!v58)
  {
    v60 = *(a2 + 616);
    *v56 = *v57;
    *(a1 + 616) = v60;
    *(a1 + 632) = *(a2 + 632);
LABEL_39:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_40;
  }

  if (v58 != 1)
  {
    *(a1 + 624) = v58;
    *(a1 + 632) = *(a2 + 632);
    (**(v58 - 8))(a1 + 600, a2 + 600, v58);
    goto LABEL_39;
  }

  v59 = *(a2 + 616);
  *v56 = *v57;
  *(a1 + 616) = v59;
  *(a1 + 632) = *(a2 + 632);
LABEL_40:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v61 = (a1 + 664);
  v62 = (a2 + 664);
  v63 = *(a2 + 776);
  if (v63 == 1)
  {
    v64 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v64;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v65 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v65;
    v66 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v66;
    v67 = *(a2 + 680);
    *v61 = *v62;
    *(a1 + 680) = v67;
  }

  else
  {
    *v61 = *v62;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v68 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v68;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v63;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_44:
  v69 = (a1 + 840);
  v70 = (a2 + 840);
  v71 = *(a2 + 864);
  if (!v71)
  {
    v73 = *(a2 + 856);
    *v69 = *v70;
    *(a1 + 856) = v73;
    *(a1 + 872) = *(a2 + 872);
    v74 = *(a2 + 880);
    if (!v74)
    {
LABEL_50:
      *(a1 + 880) = *(a2 + 880);
      goto LABEL_51;
    }

LABEL_48:
    v75 = *(a2 + 888);
    *(a1 + 880) = v74;
    *(a1 + 888) = v75;

    goto LABEL_51;
  }

  if (v71 != 1)
  {
    *(a1 + 864) = v71;
    *(a1 + 872) = *(a2 + 872);
    (**(v71 - 8))(v69, v70);
    v74 = *(a2 + 880);
    if (!v74)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v72 = *(a2 + 856);
  *v69 = *v70;
  *(a1 + 856) = v72;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
LABEL_51:
  v76 = *(a2 + 896);
  *(a1 + 896) = v76;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v77 = type metadata accessor for PlatformItemList.Item();
  v78 = *(v77 + 112);
  v105 = v77;
  __dst = (a1 + v78);
  v79 = (a2 + v78);
  v80 = type metadata accessor for CommandOperation();
  v81 = *(v80 - 8);
  v101 = *(v81 + 48);
  v82 = v76;

  if (v101(v79, 1, v80))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v79, *(*(v83 - 8) + 64));
  }

  else
  {
    v102 = v79;
    *__dst = *v79;
    v84 = *(v80 + 20);
    v85 = &__dst[v84];
    v86 = &v79[v84];
    v87 = *&v79[v84];
    v88 = *(v86 + 1);
    v89 = v86[16];
    outlined copy of Text.Storage(v87, v88, v89);
    *v85 = v87;
    *(v85 + 1) = v88;
    v85[16] = v89;
    *(v85 + 3) = *(v86 + 3);
    v90 = v80;
    v91 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v92 = type metadata accessor for UUID();
    v99 = *(*(v92 - 8) + 16);

    v99(&v85[v91], &v86[v91], v92);
    v93 = *(v90 + 24);
    v94 = &__dst[v93];
    v95 = &v102[v93];
    if (*v95)
    {
      v96 = v95[1];
      *v94 = *v95;
      v94[1] = v96;
    }

    else
    {
      *v94 = *v95;
    }

    (*(v81 + 56))(__dst, 0, 1, v90);
  }

  *(a1 + v105[29]) = *(a2 + v105[29]);
  *(a1 + v105[30]) = *(a2 + v105[30]);
  *(a1 + v105[31]) = *(a2 + v105[31]);
  *(a1 + v105[32]) = *(a2 + v105[32]);
  *(a1 + v105[33]) = *(a2 + v105[33]);
  *(a1 + v105[34]) = *(a2 + v105[34]);

LABEL_58:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for ToolbarStorage.GroupItem.CollapsedContent.Value(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = *(a2 + 24);
      *(a1 + 24) = v21;
      *(a1 + 32) = *(a2 + 32);
      (**(v21 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v22 = *(a2 + 88);
      *(a1 + 88) = v22;

      v23 = v22;
LABEL_59:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v4 = *a2;
    *a1 = *a2;
    v5 = *(a2 + 8);
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    v6 = *(a2 + 192);
    v7 = v4;
    v8 = v5;

    if (v6 >> 1 == 4294967294)
    {
      v9 = *(a2 + 64);
      v10 = *(a2 + 80);
      v11 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v11;
      *(a1 + 64) = v9;
      *(a1 + 80) = v10;
      v12 = *(a2 + 128);
      v13 = *(a2 + 144);
      v14 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v14;
      *(a1 + 128) = v12;
      *(a1 + 144) = v13;
      v15 = *(a2 + 192);
      v16 = *(a2 + 208);
      v17 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v16;
      *(a1 + 224) = v17;
      *(a1 + 192) = v15;
      if (*(a2 + 264))
      {
LABEL_5:
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        v18 = *(a2 + 272);

        if (v18 >= 2)
        {
          v19 = v18;
        }

        *(a1 + 272) = v18;
        v20 = *(a2 + 280);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 280) = v20;
        *(a1 + 285) = *(a2 + 285);
        *(a1 + 286) = *(a2 + 286);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);

LABEL_17:
        v40 = *(a2 + 336);
        if (v40 >> 2 == 0xFFFFFFFF)
        {
          v41 = *(a2 + 304);
          v42 = *(a2 + 336);
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 336) = v42;
          *(a1 + 304) = v41;
          v43 = *(a2 + 352);
          v44 = *(a2 + 368);
          v45 = *(a2 + 384);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 368) = v44;
          *(a1 + 384) = v45;
          *(a1 + 352) = v43;
        }

        else
        {
          v46 = *(a2 + 304);
          v47 = *(a2 + 312);
          v48 = *(a2 + 320);
          v49 = *(a2 + 328);
          v50 = *(a2 + 344);
          v51 = *(a2 + 352);
          v52 = *(a2 + 360);
          v116 = *(a2 + 368);
          v118 = *(a2 + 376);
          v121 = *(a2 + 384);
          v123 = *(a2 + 392);
          __dsta = *(a2 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v46, v47, v48, v49, v40, v50, v51, v52, v116, v118, v121, v123, __dsta);
          *(a1 + 304) = v46;
          *(a1 + 312) = v47;
          *(a1 + 320) = v48;
          *(a1 + 328) = v49;
          *(a1 + 336) = v40;
          *(a1 + 344) = v50;
          *(a1 + 352) = v51;
          *(a1 + 360) = v52;
          *(a1 + 368) = v116;
          *(a1 + 376) = v118;
          *(a1 + 384) = v121;
          *(a1 + 392) = v123;
          *(a1 + 400) = __dsta;
        }

        if (*(a2 + 416) == 1)
        {
          *(a1 + 408) = *(a2 + 408);
          v53 = *(a2 + 424);
          v54 = *(a2 + 440);
          v55 = *(a2 + 456);
          *(a1 + 472) = *(a2 + 472);
          *(a1 + 440) = v54;
          *(a1 + 456) = v55;
          *(a1 + 424) = v53;
          goto LABEL_30;
        }

        *(a1 + 408) = *(a2 + 408);
        *(a1 + 409) = *(a2 + 409);
        *(a1 + 410) = *(a2 + 410);
        *(a1 + 411) = *(a2 + 411);
        *(a1 + 412) = *(a2 + 412);
        v56 = *(a2 + 416);
        if (v56)
        {
          v57 = *(a2 + 424);
          *(a1 + 416) = v56;
          *(a1 + 424) = v57;

          v58 = *(a2 + 432);
          if (v58)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *(a1 + 416) = *(a2 + 416);
          v58 = *(a2 + 432);
          if (v58)
          {
LABEL_24:
            v59 = *(a2 + 440);
            *(a1 + 432) = v58;
            *(a1 + 440) = v59;

            v60 = *(a2 + 448);
            if (v60)
            {
LABEL_25:
              v61 = *(a2 + 456);
              *(a1 + 448) = v60;
              *(a1 + 456) = v61;

LABEL_29:
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
LABEL_30:
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              v62 = *(a2 + 512);

              if (v62)
              {
                v63 = *(a2 + 520);
                *(a1 + 512) = v62;
                *(a1 + 520) = v63;
              }

              else
              {
                *(a1 + 512) = *(a2 + 512);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!*(a2 + 816))
              {
                memcpy((a1 + 536), (a2 + 536), 0x130uLL);
                goto LABEL_45;
              }

              *(a1 + 536) = *(a2 + 536);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              v64 = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 576) = v64;
              v65 = (a1 + 600);
              v66 = (a2 + 600);
              v67 = *(a2 + 624);

              if (v67)
              {
                if (v67 == 1)
                {
                  v68 = *v66;
                  v69 = *(a2 + 632);
                  *(a1 + 616) = *(a2 + 616);
                  *(a1 + 632) = v69;
                  *v65 = v68;
LABEL_41:
                  v72 = *(a2 + 648);
                  *(a1 + 656) = *(a2 + 656);
                  *(a1 + 648) = v72;
                  v73 = (a1 + 664);
                  v74 = (a2 + 664);
                  if (*(a2 + 776) == 1)
                  {
                    v75 = *(a2 + 680);
                    *v73 = *v74;
                    *(a1 + 680) = v75;
                    v76 = *(a2 + 696);
                    v77 = *(a2 + 712);
                    v78 = *(a2 + 744);
                    *(a1 + 728) = *(a2 + 728);
                    *(a1 + 744) = v78;
                    *(a1 + 696) = v76;
                    *(a1 + 712) = v77;
                    v79 = *(a2 + 760);
                    v80 = *(a2 + 776);
                    v81 = *(a2 + 792);
                    *(a1 + 808) = *(a2 + 808);
                    *(a1 + 776) = v80;
                    *(a1 + 792) = v81;
                    *(a1 + 760) = v79;
                  }

                  else
                  {
                    v82 = *v74;
                    *(a1 + 672) = *(a2 + 672);
                    *v73 = v82;
                    v83 = *(a2 + 680);
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 680) = v83;
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 690) = *(a2 + 690);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    *(a1 + 696) = *(a2 + 696);
                    *(a1 + 704) = *(a2 + 704);
                    *(a1 + 712) = *(a2 + 712);
                    *(a1 + 720) = *(a2 + 720);
                    *(a1 + 728) = *(a2 + 728);
                    *(a1 + 736) = *(a2 + 736);
                    *(a1 + 744) = *(a2 + 744);
                    *(a1 + 745) = *(a2 + 745);
                    *(a1 + 752) = *(a2 + 752);
                    *(a1 + 760) = *(a2 + 760);
                    *(a1 + 768) = *(a2 + 768);
                    *(a1 + 776) = *(a2 + 776);
                    v84 = *(a2 + 784);
                    *(a1 + 800) = *(a2 + 800);
                    *(a1 + 784) = v84;
                    *(a1 + 808) = *(a2 + 808);
                  }

                  *(a1 + 816) = *(a2 + 816);
                  *(a1 + 824) = *(a2 + 824);
                  *(a1 + 832) = *(a2 + 832);

LABEL_45:
                  v85 = (a1 + 840);
                  v86 = (a2 + 840);
                  v87 = *(a2 + 864);
                  if (v87)
                  {
                    if (v87 == 1)
                    {
                      v88 = *v86;
                      v89 = *(a2 + 856);
                      v90 = *(a2 + 872);
                      *(a1 + 888) = *(a2 + 888);
                      *(a1 + 856) = v89;
                      *(a1 + 872) = v90;
                      *v85 = v88;
LABEL_52:
                      v95 = *(a2 + 896);
                      *(a1 + 896) = v95;
                      *(a1 + 904) = *(a2 + 904);
                      *(a1 + 912) = *(a2 + 912);
                      *(a1 + 920) = *(a2 + 920);
                      *(a1 + 928) = *(a2 + 928);
                      *(a1 + 936) = *(a2 + 936);
                      *(a1 + 944) = *(a2 + 944);
                      *(a1 + 952) = *(a2 + 952);
                      *(a1 + 953) = *(a2 + 953);
                      *(a1 + 954) = *(a2 + 954);
                      v96 = type metadata accessor for PlatformItemList.Item();
                      v97 = *(v96 + 112);
                      v124 = v96;
                      __dst = (a1 + v97);
                      v98 = (a2 + v97);
                      v99 = type metadata accessor for CommandOperation();
                      v100 = *(v99 - 8);
                      v119 = *(v100 + 48);
                      v101 = v95;

                      if (v119(v98, 1, v99))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v98, *(*(v102 - 8) + 64));
                      }

                      else
                      {
                        *__dst = *v98;
                        v103 = *(v99 + 20);
                        v104 = &__dst[v103];
                        v105 = &v98[v103];
                        v120 = v98;
                        v122 = v99;
                        v106 = *&v98[v103];
                        v107 = *(v105 + 1);
                        v108 = v105[16];
                        outlined copy of Text.Storage(v106, v107, v108);
                        *v104 = v106;
                        *(v104 + 1) = v107;
                        v104[16] = v108;
                        *(v104 + 3) = *(v105 + 3);
                        v109 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v110 = type metadata accessor for UUID();
                        v117 = *(*(v110 - 8) + 16);

                        v117(&v104[v109], &v105[v109], v110);
                        v111 = *(v122 + 24);
                        v112 = &__dst[v111];
                        v113 = &v120[v111];
                        if (*v113)
                        {
                          v114 = v113[1];
                          *v112 = *v113;
                          v112[1] = v114;
                        }

                        else
                        {
                          *v112 = *v113;
                        }

                        (*(v100 + 56))(__dst, 0, 1, v122);
                      }

                      *(a1 + v124[29]) = *(a2 + v124[29]);
                      *(a1 + v124[30]) = *(a2 + v124[30]);
                      *(a1 + v124[31]) = *(a2 + v124[31]);
                      *(a1 + v124[32]) = *(a2 + v124[32]);
                      *(a1 + v124[33]) = *(a2 + v124[33]);
                      *(a1 + v124[34]) = *(a2 + v124[34]);

                      goto LABEL_59;
                    }

                    *(a1 + 864) = v87;
                    *(a1 + 872) = *(a2 + 872);
                    (**(v87 - 8))(v85, v86);
                    v93 = *(a2 + 880);
                    if (!v93)
                    {
LABEL_51:
                      *(a1 + 880) = *(a2 + 880);
                      goto LABEL_52;
                    }
                  }

                  else
                  {
                    v91 = *v86;
                    v92 = *(a2 + 856);
                    *(a1 + 872) = *(a2 + 872);
                    *v85 = v91;
                    *(a1 + 856) = v92;
                    v93 = *(a2 + 880);
                    if (!v93)
                    {
                      goto LABEL_51;
                    }
                  }

                  v94 = *(a2 + 888);
                  *(a1 + 880) = v93;
                  *(a1 + 888) = v94;

                  goto LABEL_52;
                }

                *(a1 + 624) = v67;
                *(a1 + 632) = *(a2 + 632);
                (**(v67 - 8))(a1 + 600, a2 + 600, v67);
              }

              else
              {
                v70 = *v66;
                v71 = *(a2 + 616);
                *(a1 + 632) = *(a2 + 632);
                *v65 = v70;
                *(a1 + 616) = v71;
              }

              *(a1 + 640) = *(a2 + 640);

              goto LABEL_41;
            }

LABEL_28:
            *(a1 + 448) = *(a2 + 448);
            goto LABEL_29;
          }
        }

        *(a1 + 432) = *(a2 + 432);
        v60 = *(a2 + 448);
        if (v60)
        {
          goto LABEL_25;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v24 = *(a2 + 72);
      if (v24 == 255)
      {
        v26 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v26;
      }

      else
      {
        v25 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v25, *(a2 + 72));
        *(a1 + 64) = v25;
        *(a1 + 72) = v24;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v27 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v27;
      v28 = *(a2 + 136);
      v29 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v29;
      *(a1 + 136) = v28;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v30 = *(a2 + 192);
      if (v30 >> 1 == 0xFFFFFFFF)
      {
        v31 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v31;
      }

      else
      {
        v32 = *(a2 + 176);
        v33 = *(a2 + 184);
        v34 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v32, v33, *(a2 + 192));
        *(a1 + 176) = v32;
        *(a1 + 184) = v33;
        *(a1 + 192) = v30;
        *(a1 + 200) = v34;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v35 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v35;
      v36 = *(a2 + 240);
      *(a1 + 240) = v36;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v37 = v36;
      if (*(a2 + 264))
      {
        goto LABEL_5;
      }
    }

    v38 = *(a2 + 256);
    v39 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v39;
    *(a1 + 256) = v38;
    goto LABEL_17;
  }

  return a1;
}

char *initializeWithTake for ToolbarStorage.GroupItem.CollapsedContent.Value(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    a1[32] = a2[32];
    *(a1 + 40) = *(a2 + 40);
    a1[56] = a2[56];
    v7 = *(a2 + 13);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = v7;
    *(a1 + 14) = *(a2 + 14);
    *(a1 + 235) = *(a2 + 235);
    v8 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v8;
    v9 = *(a2 + 11);
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 11) = v9;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    v11 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v11;
    v12 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v12;
    v13 = *(a2 + 23);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 23) = v13;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 50) = *(a2 + 50);
    v14 = *(a2 + 19);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 19) = v14;
    v15 = *(a2 + 21);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 21) = v15;
    v16 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v16;
    a1[472] = a2[472];
    v17 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v17;
    *(a1 + 30) = *(a2 + 30);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 32) = *(a2 + 32);
    a1[528] = a2[528];
    memcpy(a1 + 536, a2 + 536, 0x130uLL);
    v18 = *(a2 + 856);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 856) = v18;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 111) = *(a2 + 111);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 904) = *(a2 + 904);
    *(a1 + 920) = *(a2 + 920);
    *(a1 + 117) = *(a2 + 117);
    *(a1 + 118) = *(a2 + 118);
    a1[952] = a2[952];
    *(a1 + 953) = *(a2 + 953);
    v19 = type metadata accessor for PlatformItemList.Item();
    v20 = v19[28];
    v21 = &a1[v20];
    v22 = &a2[v20];
    v23 = type metadata accessor for CommandOperation();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(v21, v22, *(*(v25 - 8) + 64));
    }

    else
    {
      *v21 = *v22;
      v28 = *(v23 + 20);
      v29 = &v21[v28];
      v30 = &v22[v28];
      v31 = *&v22[v28 + 16];
      *v29 = *&v22[v28];
      *(v29 + 1) = v31;
      v32 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v33 = type metadata accessor for UUID();
      (*(*(v33 - 8) + 32))(&v29[v32], &v30[v32], v33);
      *&v21[*(v23 + 24)] = *&v22[*(v23 + 24)];
      (*(v24 + 56))(v21, 0, 1, v23);
    }

    a1[v19[29]] = a2[v19[29]];
    a1[v19[30]] = a2[v19[30]];
    a1[v19[31]] = a2[v19[31]];
    a1[v19[32]] = a2[v19[32]];
    a1[v19[33]] = a2[v19[33]];
    *&a1[v19[34]] = *&a2[v19[34]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v26 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v26);
  }
}

char *assignWithTake for ToolbarStorage.GroupItem.CollapsedContent.Value(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    a1[32] = a2[32];
    *(a1 + 40) = *(a2 + 40);
    a1[56] = a2[56];
    v7 = *(a2 + 13);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = v7;
    *(a1 + 14) = *(a2 + 14);
    *(a1 + 235) = *(a2 + 235);
    v8 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v8;
    v9 = *(a2 + 11);
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 11) = v9;
    v10 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v10;
    v11 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v11;
    v12 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v12;
    v13 = *(a2 + 23);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 23) = v13;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 50) = *(a2 + 50);
    v14 = *(a2 + 19);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 19) = v14;
    v15 = *(a2 + 21);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 21) = v15;
    v16 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v16;
    a1[472] = a2[472];
    v17 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v17;
    *(a1 + 30) = *(a2 + 30);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 32) = *(a2 + 32);
    a1[528] = a2[528];
    memcpy(a1 + 536, a2 + 536, 0x130uLL);
    v18 = *(a2 + 856);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 856) = v18;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 111) = *(a2 + 111);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 904) = *(a2 + 904);
    *(a1 + 920) = *(a2 + 920);
    *(a1 + 117) = *(a2 + 117);
    *(a1 + 118) = *(a2 + 118);
    a1[952] = a2[952];
    *(a1 + 953) = *(a2 + 953);
    v19 = type metadata accessor for PlatformItemList.Item();
    v20 = v19[28];
    v21 = &a1[v20];
    v22 = &a2[v20];
    v23 = type metadata accessor for CommandOperation();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v22, 1, v23))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(v21, v22, *(*(v25 - 8) + 64));
    }

    else
    {
      *v21 = *v22;
      v28 = *(v23 + 20);
      v29 = &v21[v28];
      v30 = &v22[v28];
      v31 = *&v22[v28 + 16];
      *v29 = *&v22[v28];
      *(v29 + 1) = v31;
      v34 = v21;
      v32 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v33 = type metadata accessor for UUID();
      (*(*(v33 - 8) + 32))(&v29[v32], &v30[v32], v33);
      *&v34[*(v23 + 24)] = *&v22[*(v23 + 24)];
      (*(v24 + 56))();
    }

    a1[v19[29]] = a2[v19[29]];
    a1[v19[30]] = a2[v19[30]];
    a1[v19[31]] = a2[v19[31]];
    a1[v19[32]] = a2[v19[32]];
    a1[v19[33]] = a2[v19[33]];
    *&a1[v19[34]] = *&a2[v19[34]];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v26 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v26);
}

uint64_t type metadata completion function for ToolbarStorage.GroupItem.CollapsedContent.Value()
{
  result = type metadata accessor for PlatformItemList.Item();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ToolbarStorage.GroupItem.CollapsedContent(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *(a2 + 3);
      *(a1 + 24) = v24;
      (**(v24 - 8))(a1, a2);
      v25 = a2[6];
      *(a1 + 5) = a2[5];
      *(a1 + 6) = v25;
      *(a1 + 7) = a2[7];
      *(a1 + 8) = a2[8];
      *(a1 + 72) = *(a2 + 9);
      v26 = a2[11];
      *(a1 + 11) = v26;

      v27 = v26;
LABEL_60:
      swift_storeEnumTagMultiPayload();
      v101 = *(v6 + 20);
      v102 = *(a2 + v101);
      *&a1[v101] = v102;
      v103 = v102;
      return a1;
    }

    v7 = *a2;
    v8 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v8;
    v9 = a2[3];
    *(a1 + 2) = a2[2];
    *(a1 + 3) = v9;
    a1[32] = *(a2 + 32);
    v10 = a2[6];
    *(a1 + 5) = a2[5];
    *(a1 + 6) = v10;
    a1[56] = *(a2 + 56);
    v11 = a2[24];
    v12 = v7;
    v13 = v8;

    if (v11 >> 1 == 4294967294)
    {
      v14 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v14;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v15 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v15;
      v16 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v16;
      v17 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v17;
      v18 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v18;
      v19 = a2[33];
      if (v19)
      {
LABEL_5:
        *(a1 + 32) = a2[32];
        *(a1 + 33) = v19;
        v20 = a2[34];

        if (v20 >= 2)
        {
          v21 = v20;
        }

        *(a1 + 34) = v20;
        *(a1 + 70) = *(a2 + 70);
        a1[284] = *(a2 + 284);
        *(a1 + 285) = *(a2 + 285);
        v22 = a2[37];
        *(a1 + 36) = a2[36];
        *(a1 + 37) = v22;

LABEL_18:
        v38 = a2[42];
        v115 = v6;
        if (v38 >> 2 == 0xFFFFFFFF)
        {
          v39 = *(a2 + 24);
          *(a1 + 23) = *(a2 + 23);
          *(a1 + 24) = v39;
          *(a1 + 50) = a2[50];
          v40 = *(a2 + 20);
          *(a1 + 19) = *(a2 + 19);
          *(a1 + 20) = v40;
          v41 = *(a2 + 22);
          *(a1 + 21) = *(a2 + 21);
          *(a1 + 22) = v41;
        }

        else
        {
          v42 = a2[38];
          v43 = a2[39];
          v44 = a2[40];
          v45 = a2[41];
          v47 = a2[43];
          v46 = a2[44];
          v48 = a2[45];
          v105 = a2[46];
          v107 = a2[47];
          v110 = a2[48];
          v111 = a2[49];
          __dsta = a2[50];
          outlined copy of PlatformItemList.Item.SystemItem(v42, v43, v44, v45, v38, v47, v46, v48, v105, v107, v110, v111, __dsta);
          *(a1 + 38) = v42;
          *(a1 + 39) = v43;
          *(a1 + 40) = v44;
          *(a1 + 41) = v45;
          *(a1 + 42) = v38;
          *(a1 + 43) = v47;
          *(a1 + 44) = v46;
          *(a1 + 45) = v48;
          *(a1 + 46) = v105;
          *(a1 + 47) = v107;
          *(a1 + 48) = v110;
          *(a1 + 49) = v111;
          *(a1 + 50) = __dsta;
        }

        v49 = a2[52];
        if (v49 == 1)
        {
          v50 = *(a2 + 57);
          *(a1 + 440) = *(a2 + 55);
          *(a1 + 456) = v50;
          a1[472] = *(a2 + 472);
          v51 = *(a2 + 53);
          *(a1 + 408) = *(a2 + 51);
          *(a1 + 424) = v51;
          goto LABEL_31;
        }

        *(a1 + 102) = *(a2 + 102);
        a1[412] = *(a2 + 412);
        if (v49)
        {
          v52 = a2[53];
          *(a1 + 52) = v49;
          *(a1 + 53) = v52;

          v53 = a2[54];
          if (v53)
          {
            goto LABEL_25;
          }
        }

        else
        {
          *(a1 + 26) = *(a2 + 26);
          v53 = a2[54];
          if (v53)
          {
LABEL_25:
            v54 = a2[55];
            *(a1 + 54) = v53;
            *(a1 + 55) = v54;

            v55 = a2[56];
            if (v55)
            {
LABEL_26:
              v56 = a2[57];
              *(a1 + 56) = v55;
              *(a1 + 57) = v56;

LABEL_30:
              *(a1 + 58) = a2[58];
              a1[472] = *(a2 + 472);
LABEL_31:
              v57 = a2[61];
              *(a1 + 60) = a2[60];
              *(a1 + 61) = v57;
              *(a1 + 62) = a2[62];
              a1[504] = *(a2 + 504);
              v58 = a2[64];

              if (v58)
              {
                v59 = a2[65];
                *(a1 + 64) = v58;
                *(a1 + 65) = v59;
              }

              else
              {
                *(a1 + 32) = *(a2 + 32);
              }

              a1[528] = *(a2 + 528);
              if (!a2[102])
              {
                memcpy(a1 + 536, a2 + 67, 0x130uLL);
                goto LABEL_46;
              }

              *(a1 + 67) = a2[67];
              *(a1 + 68) = a2[68];
              a1[552] = *(a2 + 552);
              *(a1 + 70) = a2[70];
              a1[568] = *(a2 + 568);
              *(a1 + 36) = *(a2 + 36);
              a1[592] = *(a2 + 592);
              v60 = a1 + 600;
              v61 = a2 + 75;
              v62 = a2[78];

              if (v62)
              {
                if (v62 == 1)
                {
                  v63 = *(a2 + 77);
                  *v60 = *v61;
                  *(a1 + 616) = v63;
                  *(a1 + 632) = *(a2 + 79);
LABEL_42:
                  *(a1 + 81) = a2[81];
                  a1[656] = *(a2 + 656);
                  v65 = a1 + 664;
                  v66 = a2 + 83;
                  v67 = a2[97];
                  if (v67 == 1)
                  {
                    v68 = *(a2 + 97);
                    *(a1 + 760) = *(a2 + 95);
                    *(a1 + 776) = v68;
                    *(a1 + 792) = *(a2 + 99);
                    a1[808] = *(a2 + 808);
                    v69 = *(a2 + 89);
                    *(a1 + 696) = *(a2 + 87);
                    *(a1 + 712) = v69;
                    v70 = *(a2 + 93);
                    *(a1 + 728) = *(a2 + 91);
                    *(a1 + 744) = v70;
                    v71 = *(a2 + 85);
                    *v65 = *v66;
                    *(a1 + 680) = v71;
                  }

                  else
                  {
                    *v65 = *v66;
                    a1[672] = *(a2 + 672);
                    *(a1 + 85) = a2[85];
                    a1[688] = *(a2 + 688);
                    *(a1 + 689) = *(a2 + 689);
                    a1[691] = *(a2 + 691);
                    a1[692] = *(a2 + 692);
                    *(a1 + 87) = a2[87];
                    v72 = *(a2 + 45);
                    *(a1 + 44) = *(a2 + 44);
                    *(a1 + 45) = v72;
                    *(a1 + 92) = a2[92];
                    *(a1 + 372) = *(a2 + 372);
                    *(a1 + 47) = *(a2 + 47);
                    a1[768] = *(a2 + 768);
                    *(a1 + 97) = v67;
                    *(a1 + 49) = *(a2 + 49);
                    *(a1 + 100) = a2[100];
                    a1[808] = *(a2 + 808);
                  }

                  *(a1 + 102) = a2[102];
                  *(a1 + 103) = a2[103];
                  *(a1 + 104) = a2[104];

LABEL_46:
                  v73 = a1 + 840;
                  v74 = a2 + 105;
                  v75 = a2[108];
                  if (v75)
                  {
                    if (v75 == 1)
                    {
                      v76 = *(a2 + 107);
                      *v73 = *v74;
                      *(a1 + 856) = v76;
                      *(a1 + 872) = *(a2 + 109);
                      *(a1 + 111) = a2[111];
LABEL_53:
                      v80 = a2[112];
                      *(a1 + 112) = v80;
                      *(a1 + 113) = a2[113];
                      *(a1 + 114) = a2[114];
                      *(a1 + 115) = a2[115];
                      *(a1 + 116) = a2[116];
                      *(a1 + 117) = a2[117];
                      *(a1 + 118) = a2[118];
                      *(a1 + 476) = *(a2 + 476);
                      a1[954] = *(a2 + 954);
                      v81 = type metadata accessor for PlatformItemList.Item();
                      v82 = *(v81 + 112);
                      v112 = v81;
                      __dst = &a1[v82];
                      v83 = a2 + v82;
                      v84 = type metadata accessor for CommandOperation();
                      v85 = *(v84 - 8);
                      v108 = *(v85 + 48);
                      v86 = v80;

                      if (v108(v83, 1, v84))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v83, *(*(v87 - 8) + 64));
                        v6 = v115;
                      }

                      else
                      {
                        v109 = v83;
                        *__dst = *v83;
                        v88 = *(v84 + 20);
                        v89 = &__dst[v88];
                        v90 = &v83[v88];
                        v91 = *&v83[v88];
                        v92 = *(v90 + 1);
                        v93 = v90[16];
                        outlined copy of Text.Storage(v91, v92, v93);
                        *v89 = v91;
                        *(v89 + 1) = v92;
                        v89[16] = v93;
                        *(v89 + 3) = *(v90 + 3);
                        v94 = v84;
                        v95 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v96 = type metadata accessor for UUID();
                        v106 = *(*(v96 - 8) + 16);

                        v106(&v89[v95], &v90[v95], v96);
                        v97 = *(v94 + 24);
                        v98 = &__dst[v97];
                        v99 = &v109[v97];
                        if (*v99)
                        {
                          v100 = v99[1];
                          *v98 = *v99;
                          *(v98 + 1) = v100;
                        }

                        else
                        {
                          *v98 = *v99;
                        }

                        v6 = v115;
                        (*(v85 + 56))(__dst, 0, 1, v94);
                      }

                      a1[v112[29]] = *(a2 + v112[29]);
                      a1[v112[30]] = *(a2 + v112[30]);
                      a1[v112[31]] = *(a2 + v112[31]);
                      a1[v112[32]] = *(a2 + v112[32]);
                      a1[v112[33]] = *(a2 + v112[33]);
                      *&a1[v112[34]] = *(a2 + v112[34]);

                      goto LABEL_60;
                    }

                    *(a1 + 108) = v75;
                    *(a1 + 109) = a2[109];
                    (**(v75 - 1))(v73, v74);
                    v78 = a2[110];
                    if (!v78)
                    {
LABEL_52:
                      *(a1 + 55) = *(a2 + 55);
                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    v77 = *(a2 + 107);
                    *v73 = *v74;
                    *(a1 + 856) = v77;
                    *(a1 + 109) = a2[109];
                    v78 = a2[110];
                    if (!v78)
                    {
                      goto LABEL_52;
                    }
                  }

                  v79 = a2[111];
                  *(a1 + 110) = v78;
                  *(a1 + 111) = v79;

                  goto LABEL_53;
                }

                *(a1 + 78) = v62;
                *(a1 + 79) = a2[79];
                (**(v62 - 1))((a1 + 600), (a2 + 75), v62);
              }

              else
              {
                v64 = *(a2 + 77);
                *v60 = *v61;
                *(a1 + 616) = v64;
                *(a1 + 79) = a2[79];
              }

              *(a1 + 80) = a2[80];

              goto LABEL_42;
            }

LABEL_29:
            *(a1 + 28) = *(a2 + 28);
            goto LABEL_30;
          }
        }

        *(a1 + 27) = *(a2 + 27);
        v55 = a2[56];
        if (v55)
        {
          goto LABEL_26;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v28 = *(a2 + 72);
      if (v28 == 255)
      {
        *(a1 + 8) = a2[8];
        a1[72] = *(a2 + 72);
      }

      else
      {
        v29 = a2[8];
        outlined copy of GraphicsImage.Contents(v29, *(a2 + 72));
        *(a1 + 8) = v29;
        a1[72] = v28;
        v11 = a2[24];
      }

      *(a1 + 10) = a2[10];
      *(a1 + 88) = *(a2 + 11);
      a1[104] = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 136) = *(a2 + 17);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 84) = *(a2 + 84);
      a1[170] = *(a2 + 170);
      a1[171] = *(a2 + 171);
      if (v11 >> 1 == 0xFFFFFFFF)
      {
        v30 = *(a2 + 12);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = v30;
      }

      else
      {
        v31 = a2[22];
        v32 = a2[23];
        v33 = a2[25];
        outlined copy of AccessibilityImageLabel(v31, v32, v11);
        *(a1 + 22) = v31;
        *(a1 + 23) = v32;
        *(a1 + 24) = v11;
        *(a1 + 25) = v33;
      }

      v34 = a2[27];
      *(a1 + 26) = a2[26];
      *(a1 + 27) = v34;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 57) = *(a2 + 57);
      a1[232] = *(a2 + 232);
      v35 = a2[30];
      *(a1 + 30) = v35;
      *(a1 + 124) = *(a2 + 124);
      a1[250] = *(a2 + 250);
      swift_unknownObjectRetain();

      v36 = v35;
      v19 = a2[33];
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v37 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v37;
    *(a1 + 18) = *(a2 + 18);
    goto LABEL_18;
  }

  v23 = *a2;
  *a1 = *a2;
  a1 = &v23[(v5 + 16) & ~v5];

  return a1;
}

void destroy for ToolbarStorage.GroupItem.CollapsedContent(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    goto LABEL_41;
  }

  v4 = *(a1 + 192);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v6 = *(a1 + 72);
    if (v6 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(a1 + 64), v6);
      v4 = *(a1 + 192);
      v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v5 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v4);
    }

    swift_unknownObjectRelease();
  }

  if (*(a1 + 264))
  {

    v7 = *(a1 + 272);
    if (v7 >= 2)
    {
    }
  }

  v8 = *(a1 + 336);
  if (v8 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), v8, *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400));
  }

  v9 = *(a1 + 416);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 432))
  {
  }

  if (*(a1 + 448))
  {
  }

LABEL_21:

  if (*(a1 + 512))
  {
  }

  if (*(a1 + 816))
  {

    v10 = *(a1 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_28:
        if (*(a1 + 776) != 1)
        {
        }

        goto LABEL_31;
      }

      __swift_destroy_boxed_opaque_existential_1(a1 + 600);
    }

    goto LABEL_28;
  }

LABEL_31:
  v11 = *(a1 + 864);
  if (!v11)
  {
    goto LABEL_34;
  }

  if (v11 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 840);
LABEL_34:
    if (*(a1 + 880))
    {
    }
  }

  v12 = a1 + *(type metadata accessor for PlatformItemList.Item() + 112);
  v13 = type metadata accessor for CommandOperation();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12 + *(v13 + 20);
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

    v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
    if (*(v12 + *(v13 + 24)))
    {
    }
  }

LABEL_41:
  v17 = *(a1 + *(a2 + 20));
}

uint64_t initializeWithCopy for ToolbarStorage.GroupItem.CollapsedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = *(a2 + 24);
    *(a1 + 24) = v22;
    (**(v22 - 8))(a1, a2);
    v23 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v23;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    v24 = *(a2 + 88);
    *(a1 + 88) = v24;

    v25 = v24;
    goto LABEL_58;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v7;
  v8 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v8;
  *(a1 + 32) = *(a2 + 32);
  v9 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v9;
  *(a1 + 56) = *(a2 + 56);
  v10 = *(a2 + 192);
  v11 = v6;
  v12 = v7;

  if (v10 >> 1 != 4294967294)
  {
    v26 = *(a2 + 72);
    if (v26 == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      v27 = *(a2 + 64);
      outlined copy of GraphicsImage.Contents(v27, *(a2 + 72));
      *(a1 + 64) = v27;
      *(a1 + 72) = v26;
      v10 = *(a2 + 192);
    }

    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = *(a2 + 170);
    *(a1 + 171) = *(a2 + 171);
    if (v10 >> 1 == 0xFFFFFFFF)
    {
      v28 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v28;
    }

    else
    {
      v29 = *(a2 + 176);
      v30 = *(a2 + 184);
      v31 = *(a2 + 200);
      outlined copy of AccessibilityImageLabel(v29, v30, v10);
      *(a1 + 176) = v29;
      *(a1 + 184) = v30;
      *(a1 + 192) = v10;
      *(a1 + 200) = v31;
    }

    v32 = *(a2 + 216);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = v32;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v33 = *(a2 + 240);
    *(a1 + 240) = v33;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    swift_unknownObjectRetain();

    v34 = v33;
    v18 = *(a2 + 264);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_15:
    v35 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v35;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_16;
  }

  v13 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v13;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v14 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v14;
  v15 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v15;
  v16 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v16;
  v17 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v17;
  v18 = *(a2 + 264);
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_4:
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v18;
  v19 = *(a2 + 272);

  if (v19 >= 2)
  {
    v20 = v19;
  }

  *(a1 + 272) = v19;
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 285) = *(a2 + 285);
  v21 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v21;

LABEL_16:
  v36 = *(a2 + 336);
  v113 = a3;
  if (v36 >> 2 == 0xFFFFFFFF)
  {
    v37 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v37;
    *(a1 + 400) = *(a2 + 400);
    v38 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v38;
    v39 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v39;
  }

  else
  {
    v40 = *(a2 + 304);
    v41 = *(a2 + 312);
    v42 = *(a2 + 320);
    v43 = *(a2 + 328);
    v45 = *(a2 + 344);
    v44 = *(a2 + 352);
    v46 = *(a2 + 360);
    v103 = *(a2 + 368);
    v105 = *(a2 + 376);
    v108 = *(a2 + 384);
    v109 = *(a2 + 392);
    __dsta = *(a2 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v40, v41, v42, v43, v36, v45, v44, v46, v103, v105, v108, v109, __dsta);
    *(a1 + 304) = v40;
    *(a1 + 312) = v41;
    *(a1 + 320) = v42;
    *(a1 + 328) = v43;
    *(a1 + 336) = v36;
    *(a1 + 344) = v45;
    *(a1 + 352) = v44;
    *(a1 + 360) = v46;
    *(a1 + 368) = v103;
    *(a1 + 376) = v105;
    *(a1 + 384) = v108;
    *(a1 + 392) = v109;
    *(a1 + 400) = __dsta;
  }

  v47 = *(a2 + 416);
  if (v47 == 1)
  {
    v48 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v48;
    *(a1 + 472) = *(a2 + 472);
    v49 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v49;
    goto LABEL_29;
  }

  *(a1 + 408) = *(a2 + 408);
  *(a1 + 412) = *(a2 + 412);
  if (v47)
  {
    v50 = *(a2 + 424);
    *(a1 + 416) = v47;
    *(a1 + 424) = v50;

    v51 = *(a2 + 432);
    if (v51)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(a1 + 432) = *(a2 + 432);
    v53 = *(a2 + 448);
    if (v53)
    {
      goto LABEL_24;
    }

LABEL_27:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_28;
  }

  *(a1 + 416) = *(a2 + 416);
  v51 = *(a2 + 432);
  if (!v51)
  {
    goto LABEL_26;
  }

LABEL_23:
  v52 = *(a2 + 440);
  *(a1 + 432) = v51;
  *(a1 + 440) = v52;

  v53 = *(a2 + 448);
  if (!v53)
  {
    goto LABEL_27;
  }

LABEL_24:
  v54 = *(a2 + 456);
  *(a1 + 448) = v53;
  *(a1 + 456) = v54;

LABEL_28:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_29:
  v55 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v55;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v56 = *(a2 + 512);

  if (v56)
  {
    v57 = *(a2 + 520);
    *(a1 + 512) = v56;
    *(a1 + 520) = v57;
  }

  else
  {
    *(a1 + 512) = *(a2 + 512);
  }

  *(a1 + 528) = *(a2 + 528);
  if (!*(a2 + 816))
  {
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_44;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v58 = (a1 + 600);
  v59 = (a2 + 600);
  v60 = *(a2 + 624);

  if (!v60)
  {
    v62 = *(a2 + 616);
    *v58 = *v59;
    *(a1 + 616) = v62;
    *(a1 + 632) = *(a2 + 632);
LABEL_39:
    *(a1 + 640) = *(a2 + 640);

    goto LABEL_40;
  }

  if (v60 != 1)
  {
    *(a1 + 624) = v60;
    *(a1 + 632) = *(a2 + 632);
    (**(v60 - 8))(a1 + 600, a2 + 600, v60);
    goto LABEL_39;
  }

  v61 = *(a2 + 616);
  *v58 = *v59;
  *(a1 + 616) = v61;
  *(a1 + 632) = *(a2 + 632);
LABEL_40:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v63 = (a1 + 664);
  v64 = (a2 + 664);
  v65 = *(a2 + 776);
  if (v65 == 1)
  {
    v66 = *(a2 + 776);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 776) = v66;
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 808) = *(a2 + 808);
    v67 = *(a2 + 712);
    *(a1 + 696) = *(a2 + 696);
    *(a1 + 712) = v67;
    v68 = *(a2 + 744);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 744) = v68;
    v69 = *(a2 + 680);
    *v63 = *v64;
    *(a1 + 680) = v69;
  }

  else
  {
    *v63 = *v64;
    *(a1 + 672) = *(a2 + 672);
    *(a1 + 680) = *(a2 + 680);
    *(a1 + 688) = *(a2 + 688);
    *(a1 + 689) = *(a2 + 689);
    *(a1 + 691) = *(a2 + 691);
    *(a1 + 692) = *(a2 + 692);
    *(a1 + 696) = *(a2 + 696);
    v70 = *(a2 + 720);
    *(a1 + 704) = *(a2 + 704);
    *(a1 + 720) = v70;
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = v65;
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
  }

  *(a1 + 816) = *(a2 + 816);
  *(a1 + 824) = *(a2 + 824);
  *(a1 + 832) = *(a2 + 832);

LABEL_44:
  v71 = (a1 + 840);
  v72 = (a2 + 840);
  v73 = *(a2 + 864);
  if (!v73)
  {
    v75 = *(a2 + 856);
    *v71 = *v72;
    *(a1 + 856) = v75;
    *(a1 + 872) = *(a2 + 872);
    v76 = *(a2 + 880);
    if (!v76)
    {
LABEL_50:
      *(a1 + 880) = *(a2 + 880);
      goto LABEL_51;
    }

LABEL_48:
    v77 = *(a2 + 888);
    *(a1 + 880) = v76;
    *(a1 + 888) = v77;

    goto LABEL_51;
  }

  if (v73 != 1)
  {
    *(a1 + 864) = v73;
    *(a1 + 872) = *(a2 + 872);
    (**(v73 - 8))(v71, v72);
    v76 = *(a2 + 880);
    if (!v76)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v74 = *(a2 + 856);
  *v71 = *v72;
  *(a1 + 856) = v74;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
LABEL_51:
  v78 = *(a2 + 896);
  *(a1 + 896) = v78;
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 954) = *(a2 + 954);
  v79 = type metadata accessor for PlatformItemList.Item();
  v80 = *(v79 + 112);
  v110 = v79;
  __dst = (a1 + v80);
  v81 = (a2 + v80);
  v82 = type metadata accessor for CommandOperation();
  v83 = *(v82 - 8);
  v106 = *(v83 + 48);
  v84 = v78;

  if (v106(v81, 1, v82))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v81, *(*(v85 - 8) + 64));
    a3 = v113;
  }

  else
  {
    v107 = v81;
    *__dst = *v81;
    v86 = *(v82 + 20);
    v87 = &__dst[v86];
    v88 = &v81[v86];
    v89 = *&v81[v86];
    v90 = *(v88 + 1);
    v91 = v88[16];
    outlined copy of Text.Storage(v89, v90, v91);
    *v87 = v89;
    *(v87 + 1) = v90;
    v87[16] = v91;
    *(v87 + 3) = *(v88 + 3);
    v92 = v82;
    v93 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v94 = type metadata accessor for UUID();
    v104 = *(*(v94 - 8) + 16);

    v104(&v87[v93], &v88[v93], v94);
    v95 = *(v92 + 24);
    v96 = &__dst[v95];
    v97 = &v107[v95];
    if (*v97)
    {
      v98 = v97[1];
      *v96 = *v97;
      v96[1] = v98;
    }

    else
    {
      *v96 = *v97;
    }

    a3 = v113;
    (*(v83 + 56))(__dst, 0, 1, v92);
  }

  *(a1 + v110[29]) = *(a2 + v110[29]);
  *(a1 + v110[30]) = *(a2 + v110[30]);
  *(a1 + v110[31]) = *(a2 + v110[31]);
  *(a1 + v110[32]) = *(a2 + v110[32]);
  *(a1 + v110[33]) = *(a2 + v110[33]);
  *(a1 + v110[34]) = *(a2 + v110[34]);

LABEL_58:
  swift_storeEnumTagMultiPayload();
  v99 = *(a3 + 20);
  v100 = *(a2 + v99);
  *(a1 + v99) = v100;
  v101 = v100;
  return a1;
}

uint64_t assignWithCopy for ToolbarStorage.GroupItem.CollapsedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *(a2 + 24);
      *(a1 + 24) = v23;
      *(a1 + 32) = *(a2 + 32);
      (**(v23 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      v24 = *(a2 + 88);
      *(a1 + 88) = v24;

      v25 = v24;
LABEL_59:
      swift_storeEnumTagMultiPayload();
      goto LABEL_60;
    }

    v133 = a3;
    v6 = *a2;
    *a1 = *a2;
    v7 = *(a2 + 8);
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    v8 = *(a2 + 192);
    v9 = v6;
    v10 = v7;

    if (v8 >> 1 == 4294967294)
    {
      v11 = *(a2 + 64);
      v12 = *(a2 + 80);
      v13 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v13;
      *(a1 + 64) = v11;
      *(a1 + 80) = v12;
      v14 = *(a2 + 128);
      v15 = *(a2 + 144);
      v16 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v16;
      *(a1 + 128) = v14;
      *(a1 + 144) = v15;
      v17 = *(a2 + 192);
      v18 = *(a2 + 208);
      v19 = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v18;
      *(a1 + 224) = v19;
      *(a1 + 192) = v17;
      if (*(a2 + 264))
      {
LABEL_5:
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        v20 = *(a2 + 272);

        if (v20 >= 2)
        {
          v21 = v20;
        }

        *(a1 + 272) = v20;
        v22 = *(a2 + 280);
        *(a1 + 284) = *(a2 + 284);
        *(a1 + 280) = v22;
        *(a1 + 285) = *(a2 + 285);
        *(a1 + 286) = *(a2 + 286);
        *(a1 + 288) = *(a2 + 288);
        *(a1 + 296) = *(a2 + 296);

LABEL_17:
        v42 = *(a2 + 336);
        if (v42 >> 2 == 0xFFFFFFFF)
        {
          v43 = *(a2 + 304);
          v44 = *(a2 + 336);
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 336) = v44;
          *(a1 + 304) = v43;
          v45 = *(a2 + 352);
          v46 = *(a2 + 368);
          v47 = *(a2 + 384);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 368) = v46;
          *(a1 + 384) = v47;
          *(a1 + 352) = v45;
        }

        else
        {
          v48 = *(a2 + 304);
          v49 = *(a2 + 312);
          v50 = *(a2 + 320);
          v51 = *(a2 + 328);
          v53 = *(a2 + 344);
          v52 = *(a2 + 352);
          v54 = *(a2 + 360);
          v122 = *(a2 + 368);
          v124 = *(a2 + 376);
          v127 = *(a2 + 384);
          v129 = *(a2 + 392);
          __dsta = *(a2 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v48, v49, v50, v51, v42, v53, v52, v54, v122, v124, v127, v129, __dsta);
          *(a1 + 304) = v48;
          *(a1 + 312) = v49;
          *(a1 + 320) = v50;
          *(a1 + 328) = v51;
          *(a1 + 336) = v42;
          *(a1 + 344) = v53;
          *(a1 + 352) = v52;
          *(a1 + 360) = v54;
          *(a1 + 368) = v122;
          *(a1 + 376) = v124;
          *(a1 + 384) = v127;
          *(a1 + 392) = v129;
          *(a1 + 400) = __dsta;
        }

        if (*(a2 + 416) == 1)
        {
          *(a1 + 408) = *(a2 + 408);
          v55 = *(a2 + 424);
          v56 = *(a2 + 440);
          v57 = *(a2 + 456);
          *(a1 + 472) = *(a2 + 472);
          *(a1 + 440) = v56;
          *(a1 + 456) = v57;
          *(a1 + 424) = v55;
          goto LABEL_30;
        }

        *(a1 + 408) = *(a2 + 408);
        *(a1 + 409) = *(a2 + 409);
        *(a1 + 410) = *(a2 + 410);
        *(a1 + 411) = *(a2 + 411);
        *(a1 + 412) = *(a2 + 412);
        v58 = *(a2 + 416);
        if (v58)
        {
          v59 = *(a2 + 424);
          *(a1 + 416) = v58;
          *(a1 + 424) = v59;

          v60 = *(a2 + 432);
          if (v60)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *(a1 + 416) = *(a2 + 416);
          v60 = *(a2 + 432);
          if (v60)
          {
LABEL_24:
            v61 = *(a2 + 440);
            *(a1 + 432) = v60;
            *(a1 + 440) = v61;

            v62 = *(a2 + 448);
            if (v62)
            {
LABEL_25:
              v63 = *(a2 + 456);
              *(a1 + 448) = v62;
              *(a1 + 456) = v63;

LABEL_29:
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
LABEL_30:
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              v64 = *(a2 + 512);

              if (v64)
              {
                v65 = *(a2 + 520);
                *(a1 + 512) = v64;
                *(a1 + 520) = v65;
              }

              else
              {
                *(a1 + 512) = *(a2 + 512);
              }

              *(a1 + 528) = *(a2 + 528);
              if (!*(a2 + 816))
              {
                memcpy((a1 + 536), (a2 + 536), 0x130uLL);
                goto LABEL_45;
              }

              *(a1 + 536) = *(a2 + 536);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              v66 = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 576) = v66;
              v67 = (a1 + 600);
              v68 = (a2 + 600);
              v69 = *(a2 + 624);

              if (v69)
              {
                if (v69 == 1)
                {
                  v70 = *v68;
                  v71 = *(a2 + 632);
                  *(a1 + 616) = *(a2 + 616);
                  *(a1 + 632) = v71;
                  *v67 = v70;
LABEL_41:
                  v74 = *(a2 + 648);
                  *(a1 + 656) = *(a2 + 656);
                  *(a1 + 648) = v74;
                  v75 = (a1 + 664);
                  v76 = (a2 + 664);
                  if (*(a2 + 776) == 1)
                  {
                    v77 = *(a2 + 680);
                    *v75 = *v76;
                    *(a1 + 680) = v77;
                    v78 = *(a2 + 696);
                    v79 = *(a2 + 712);
                    v80 = *(a2 + 744);
                    *(a1 + 728) = *(a2 + 728);
                    *(a1 + 744) = v80;
                    *(a1 + 696) = v78;
                    *(a1 + 712) = v79;
                    v81 = *(a2 + 760);
                    v82 = *(a2 + 776);
                    v83 = *(a2 + 792);
                    *(a1 + 808) = *(a2 + 808);
                    *(a1 + 776) = v82;
                    *(a1 + 792) = v83;
                    *(a1 + 760) = v81;
                  }

                  else
                  {
                    v84 = *v76;
                    *(a1 + 672) = *(a2 + 672);
                    *v75 = v84;
                    v85 = *(a2 + 680);
                    *(a1 + 688) = *(a2 + 688);
                    *(a1 + 680) = v85;
                    *(a1 + 689) = *(a2 + 689);
                    *(a1 + 690) = *(a2 + 690);
                    *(a1 + 691) = *(a2 + 691);
                    *(a1 + 692) = *(a2 + 692);
                    *(a1 + 696) = *(a2 + 696);
                    *(a1 + 704) = *(a2 + 704);
                    *(a1 + 712) = *(a2 + 712);
                    *(a1 + 720) = *(a2 + 720);
                    *(a1 + 728) = *(a2 + 728);
                    *(a1 + 736) = *(a2 + 736);
                    *(a1 + 744) = *(a2 + 744);
                    *(a1 + 745) = *(a2 + 745);
                    *(a1 + 752) = *(a2 + 752);
                    *(a1 + 760) = *(a2 + 760);
                    *(a1 + 768) = *(a2 + 768);
                    *(a1 + 776) = *(a2 + 776);
                    v86 = *(a2 + 784);
                    *(a1 + 800) = *(a2 + 800);
                    *(a1 + 784) = v86;
                    *(a1 + 808) = *(a2 + 808);
                  }

                  *(a1 + 816) = *(a2 + 816);
                  *(a1 + 824) = *(a2 + 824);
                  *(a1 + 832) = *(a2 + 832);

LABEL_45:
                  v87 = (a1 + 840);
                  v88 = (a2 + 840);
                  v89 = *(a2 + 864);
                  if (v89)
                  {
                    if (v89 == 1)
                    {
                      v90 = *v88;
                      v91 = *(a2 + 856);
                      v92 = *(a2 + 872);
                      *(a1 + 888) = *(a2 + 888);
                      *(a1 + 856) = v91;
                      *(a1 + 872) = v92;
                      *v87 = v90;
LABEL_52:
                      v97 = *(a2 + 896);
                      *(a1 + 896) = v97;
                      *(a1 + 904) = *(a2 + 904);
                      *(a1 + 912) = *(a2 + 912);
                      *(a1 + 920) = *(a2 + 920);
                      *(a1 + 928) = *(a2 + 928);
                      *(a1 + 936) = *(a2 + 936);
                      *(a1 + 944) = *(a2 + 944);
                      *(a1 + 952) = *(a2 + 952);
                      *(a1 + 953) = *(a2 + 953);
                      *(a1 + 954) = *(a2 + 954);
                      v98 = type metadata accessor for PlatformItemList.Item();
                      v99 = *(v98 + 112);
                      v130 = v98;
                      __dst = (a1 + v99);
                      v100 = (a2 + v99);
                      v101 = type metadata accessor for CommandOperation();
                      v102 = *(v101 - 8);
                      v125 = *(v102 + 48);
                      v103 = v97;

                      if (v125(v100, 1, v101))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v100, *(*(v104 - 8) + 64));
                        a3 = v133;
                      }

                      else
                      {
                        *__dst = *v100;
                        v105 = *(v101 + 20);
                        v106 = &__dst[v105];
                        v107 = &v100[v105];
                        v126 = v100;
                        v128 = v101;
                        v108 = *&v100[v105];
                        v109 = *(v107 + 1);
                        v110 = v107[16];
                        outlined copy of Text.Storage(v108, v109, v110);
                        *v106 = v108;
                        *(v106 + 1) = v109;
                        v106[16] = v110;
                        *(v106 + 3) = *(v107 + 3);
                        v111 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v112 = type metadata accessor for UUID();
                        v123 = *(*(v112 - 8) + 16);

                        v123(&v106[v111], &v107[v111], v112);
                        v113 = *(v128 + 24);
                        v114 = &__dst[v113];
                        v115 = &v126[v113];
                        if (*v115)
                        {
                          v116 = v115[1];
                          *v114 = *v115;
                          v114[1] = v116;
                        }

                        else
                        {
                          *v114 = *v115;
                        }

                        a3 = v133;
                        (*(v102 + 56))(__dst, 0, 1, v128);
                      }

                      *(a1 + v130[29]) = *(a2 + v130[29]);
                      *(a1 + v130[30]) = *(a2 + v130[30]);
                      *(a1 + v130[31]) = *(a2 + v130[31]);
                      *(a1 + v130[32]) = *(a2 + v130[32]);
                      *(a1 + v130[33]) = *(a2 + v130[33]);
                      *(a1 + v130[34]) = *(a2 + v130[34]);

                      goto LABEL_59;
                    }

                    *(a1 + 864) = v89;
                    *(a1 + 872) = *(a2 + 872);
                    (**(v89 - 8))(v87, v88);
                    v95 = *(a2 + 880);
                    if (!v95)
                    {
LABEL_51:
                      *(a1 + 880) = *(a2 + 880);
                      goto LABEL_52;
                    }
                  }

                  else
                  {
                    v93 = *v88;
                    v94 = *(a2 + 856);
                    *(a1 + 872) = *(a2 + 872);
                    *v87 = v93;
                    *(a1 + 856) = v94;
                    v95 = *(a2 + 880);
                    if (!v95)
                    {
                      goto LABEL_51;
                    }
                  }

                  v96 = *(a2 + 888);
                  *(a1 + 880) = v95;
                  *(a1 + 888) = v96;

                  goto LABEL_52;
                }

                *(a1 + 624) = v69;
                *(a1 + 632) = *(a2 + 632);
                (**(v69 - 8))(a1 + 600, a2 + 600, v69);
              }

              else
              {
                v72 = *v68;
                v73 = *(a2 + 616);
                *(a1 + 632) = *(a2 + 632);
                *v67 = v72;
                *(a1 + 616) = v73;
              }

              *(a1 + 640) = *(a2 + 640);

              goto LABEL_41;
            }

LABEL_28:
            *(a1 + 448) = *(a2 + 448);
            goto LABEL_29;
          }
        }

        *(a1 + 432) = *(a2 + 432);
        v62 = *(a2 + 448);
        if (v62)
        {
          goto LABEL_25;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v26 = *(a2 + 72);
      if (v26 == 255)
      {
        v28 = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 64) = v28;
      }

      else
      {
        v27 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v27, *(a2 + 72));
        *(a1 + 64) = v27;
        *(a1 + 72) = v26;
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      v29 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v29;
      v30 = *(a2 + 136);
      v31 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v31;
      *(a1 + 136) = v30;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v32 = *(a2 + 192);
      if (v32 >> 1 == 0xFFFFFFFF)
      {
        v33 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v33;
      }

      else
      {
        v34 = *(a2 + 176);
        v35 = *(a2 + 184);
        v36 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v34, v35, *(a2 + 192));
        *(a1 + 176) = v34;
        *(a1 + 184) = v35;
        *(a1 + 192) = v32;
        *(a1 + 200) = v36;
      }

      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v37 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v37;
      v38 = *(a2 + 240);
      *(a1 + 240) = v38;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v39 = v38;
      if (*(a2 + 264))
      {
        goto LABEL_5;
      }
    }

    v40 = *(a2 + 256);
    v41 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v41;
    *(a1 + 256) = v40;
    goto LABEL_17;
  }

LABEL_60:
  v117 = *(a3 + 20);
  v118 = *(a2 + v117);
  v119 = *(a1 + v117);
  *(a1 + v117) = v118;
  v120 = v118;

  return a1;
}

char *initializeWithTake for ToolbarStorage.GroupItem.CollapsedContent(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    a1[32] = a2[32];
    *(a1 + 40) = *(a2 + 40);
    a1[56] = a2[56];
    v8 = *(a2 + 13);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 13) = v8;
    *(a1 + 14) = *(a2 + 14);
    *(a1 + 235) = *(a2 + 235);
    v9 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v9;
    v10 = *(a2 + 11);
    *(a1 + 10) = *(a2 + 10);
    *(a1 + 11) = v10;
    v11 = *(a2 + 5);
    *(a1 + 4) = *(a2 + 4);
    *(a1 + 5) = v11;
    v12 = *(a2 + 7);
    *(a1 + 6) = *(a2 + 6);
    *(a1 + 7) = v12;
    v13 = *(a2 + 17);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = v13;
    v14 = *(a2 + 23);
    *(a1 + 22) = *(a2 + 22);
    *(a1 + 23) = v14;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 50) = *(a2 + 50);
    v15 = *(a2 + 19);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 19) = v15;
    v16 = *(a2 + 21);
    *(a1 + 20) = *(a2 + 20);
    *(a1 + 21) = v16;
    v17 = *(a2 + 456);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 456) = v17;
    a1[472] = a2[472];
    v18 = *(a2 + 424);
    *(a1 + 408) = *(a2 + 408);
    *(a1 + 424) = v18;
    *(a1 + 30) = *(a2 + 30);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 32) = *(a2 + 32);
    a1[528] = a2[528];
    memcpy(a1 + 536, a2 + 536, 0x130uLL);
    v19 = *(a2 + 856);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 856) = v19;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 111) = *(a2 + 111);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 904) = *(a2 + 904);
    *(a1 + 920) = *(a2 + 920);
    *(a1 + 117) = *(a2 + 117);
    *(a1 + 118) = *(a2 + 118);
    a1[952] = a2[952];
    *(a1 + 953) = *(a2 + 953);
    v20 = type metadata accessor for PlatformItemList.Item();
    v21 = v20[28];
    v22 = &a1[v21];
    v23 = &a2[v21];
    v24 = type metadata accessor for CommandOperation();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(v22, v23, *(*(v26 - 8) + 64));
    }

    else
    {
      *v22 = *v23;
      v27 = *(v24 + 20);
      v28 = &v22[v27];
      v35 = a3;
      v29 = &v23[v27];
      v30 = *&v23[v27 + 16];
      *v28 = *&v23[v27];
      *(v28 + 1) = v30;
      v31 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v32 = type metadata accessor for UUID();
      v33 = &v29[v31];
      a3 = v35;
      (*(*(v32 - 8) + 32))(&v28[v31], v33, v32);
      *&v22[*(v24 + 24)] = *&v23[*(v24 + 24)];
      (*(v25 + 56))(v22, 0, 1, v24);
    }

    a1[v20[29]] = a2[v20[29]];
    a1[v20[30]] = a2[v20[30]];
    a1[v20[31]] = a2[v20[31]];
    a1[v20[32]] = a2[v20[32]];
    a1[v20[33]] = a2[v20[33]];
    *&a1[v20[34]] = *&a2[v20[34]];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for ToolbarStorage.GroupItem.CollapsedContent(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    v6 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v7;
      a1[32] = a2[32];
      *(a1 + 40) = *(a2 + 40);
      a1[56] = a2[56];
      v8 = *(a2 + 13);
      *(a1 + 12) = *(a2 + 12);
      *(a1 + 13) = v8;
      *(a1 + 14) = *(a2 + 14);
      *(a1 + 235) = *(a2 + 235);
      v9 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v9;
      v10 = *(a2 + 11);
      *(a1 + 10) = *(a2 + 10);
      *(a1 + 11) = v10;
      v11 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v11;
      v12 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v12;
      v13 = *(a2 + 17);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 17) = v13;
      v14 = *(a2 + 23);
      *(a1 + 22) = *(a2 + 22);
      *(a1 + 23) = v14;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 50) = *(a2 + 50);
      v15 = *(a2 + 19);
      *(a1 + 18) = *(a2 + 18);
      *(a1 + 19) = v15;
      v16 = *(a2 + 21);
      *(a1 + 20) = *(a2 + 20);
      *(a1 + 21) = v16;
      v17 = *(a2 + 456);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 456) = v17;
      a1[472] = a2[472];
      v18 = *(a2 + 424);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 424) = v18;
      *(a1 + 30) = *(a2 + 30);
      *(a1 + 489) = *(a2 + 489);
      *(a1 + 32) = *(a2 + 32);
      a1[528] = a2[528];
      memcpy(a1 + 536, a2 + 536, 0x130uLL);
      v19 = *(a2 + 856);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 856) = v19;
      *(a1 + 872) = *(a2 + 872);
      *(a1 + 111) = *(a2 + 111);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 920) = *(a2 + 920);
      *(a1 + 117) = *(a2 + 117);
      *(a1 + 118) = *(a2 + 118);
      a1[952] = a2[952];
      *(a1 + 953) = *(a2 + 953);
      v20 = type metadata accessor for PlatformItemList.Item();
      v21 = v20[28];
      v22 = &a1[v21];
      v23 = &a2[v21];
      v24 = type metadata accessor for CommandOperation();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v23, 1, v24))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
        memcpy(v22, v23, *(*(v26 - 8) + 64));
      }

      else
      {
        *v22 = *v23;
        v27 = *(v24 + 20);
        v28 = &v22[v27];
        v37 = a3;
        v29 = &v23[v27];
        v30 = *&v23[v27 + 16];
        *v28 = *&v23[v27];
        *(v28 + 1) = v30;
        v31 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
        v32 = type metadata accessor for UUID();
        v33 = &v29[v31];
        a3 = v37;
        (*(*(v32 - 8) + 32))(&v28[v31], v33, v32);
        *&v22[*(v24 + 24)] = *&v23[*(v24 + 24)];
        (*(v25 + 56))(v22, 0, 1, v24);
      }

      a1[v20[29]] = a2[v20[29]];
      a1[v20[30]] = a2[v20[30]];
      a1[v20[31]] = a2[v20[31]];
      a1[v20[32]] = a2[v20[32]];
      a1[v20[33]] = a2[v20[33]];
      *&a1[v20[34]] = *&a2[v20[34]];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v34 = *(a3 + 20);
  v35 = *&a1[v34];
  *&a1[v34] = *&a2[v34];

  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarStorage.Item(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 1);
    v7 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v7;
    v8 = a2[7];
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v8;
    v9 = a2[11];

    if (v9)
    {
      v10 = a2[12];
      *(a1 + 88) = v9;
      *(a1 + 96) = v10;
      (**(v9 - 8))(a1 + 64, (a2 + 8), v9);
      *(a1 + 104) = a2[13];
    }

    else
    {
      v13 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v13;
      *(a1 + 96) = *(a2 + 6);
    }

    if (*(a2 + 152) == 1)
    {
      v14 = *(a2 + 17);
      *(a1 + 136) = v14;
      (**(v14 - 8))(a1 + 112, (a2 + 14));
      *(a1 + 152) = 1;
    }

    else
    {
      v15 = *(a2 + 8);
      *(a1 + 112) = *(a2 + 7);
      *(a1 + 128) = v15;
      *(a1 + 137) = *(a2 + 137);
    }

    *(a1 + 153) = *(a2 + 153);
    *(a1 + 160) = a2[20];
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 176) = a2[22];
    v16 = *(a2 + 13);
    *(a1 + 208) = v16;
    v17 = v16;
    v18 = **(v16 - 8);

    v18(a1 + 184, (a2 + 23), v17);
    v19 = a2[29];
    *(a1 + 224) = a2[28];
    *(a1 + 232) = v19;
    *(a1 + 240) = a2[30];
    *(a1 + 248) = a2[31];
    *(a1 + 256) = *(a2 + 16);
    v20 = a2[34];
    v21 = a2[35];
    v138 = a3;
    v22 = a3[17];
    v139 = a2;
    v140 = (a1 + v22);
    v23 = a2 + v22;
    *(a1 + 272) = v20;
    *(a1 + 280) = v21;
    v137 = a1;
    v24 = type metadata accessor for PlatformItemList.Item();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);

    v27 = v20;
    v28 = v21;
    if (v26(v23, 1, v24))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v140, v23, *(*(v29 - 8) + 64));
      v12 = v137;
      v30 = a3;
LABEL_66:
      swift_weakCopyInit();
      v126 = v30[20];
      *(v12 + v30[19]) = *(v139 + v30[19]);
      *(v12 + v126) = *(v139 + v126);
      *(v12 + v30[21]) = *(v139 + v30[21]);
      return v12;
    }

    v135 = v25;
    v136 = v24;
    v31 = *v23;
    v32 = *(v23 + 8);
    v33 = v140;
    *v140 = *v23;
    v140[1] = v32;
    v34 = *(v23 + 24);
    v140[2] = *(v23 + 16);
    v140[3] = v34;
    *(v140 + 32) = *(v23 + 32);
    v35 = *(v23 + 48);
    v140[5] = *(v23 + 40);
    v140[6] = v35;
    *(v140 + 56) = *(v23 + 56);
    v36 = *(v23 + 192);
    v37 = v31;
    v38 = v32;

    if (v36 >> 1 == 4294967294)
    {
      v39 = *(v23 + 208);
      *(v140 + 12) = *(v23 + 192);
      *(v140 + 13) = v39;
      *(v140 + 14) = *(v23 + 224);
      *(v140 + 235) = *(v23 + 235);
      v40 = *(v23 + 144);
      *(v140 + 8) = *(v23 + 128);
      *(v140 + 9) = v40;
      v41 = *(v23 + 176);
      *(v140 + 10) = *(v23 + 160);
      *(v140 + 11) = v41;
      v42 = *(v23 + 80);
      *(v140 + 4) = *(v23 + 64);
      *(v140 + 5) = v42;
      v43 = *(v23 + 112);
      *(v140 + 6) = *(v23 + 96);
      *(v140 + 7) = v43;
      v44 = *(v23 + 264);
      if (v44)
      {
LABEL_13:
        v33[32] = *(v23 + 256);
        v33[33] = v44;
        v45 = *(v23 + 272);

        if (v45 >= 2)
        {
          v46 = v45;
        }

        v33[34] = v45;
        *(v33 + 70) = *(v23 + 280);
        *(v33 + 284) = *(v23 + 284);
        *(v33 + 285) = *(v23 + 285);
        v47 = *(v23 + 296);
        v33[36] = *(v23 + 288);
        v33[37] = v47;

LABEL_24:
        v58 = *(v23 + 336);
        if (v58 >> 2 == 0xFFFFFFFF)
        {
          v59 = *(v23 + 384);
          *(v33 + 23) = *(v23 + 368);
          *(v33 + 24) = v59;
          v33[50] = *(v23 + 400);
          v60 = *(v23 + 320);
          *(v33 + 19) = *(v23 + 304);
          *(v33 + 20) = v60;
          v61 = *(v23 + 352);
          *(v33 + 21) = *(v23 + 336);
          *(v33 + 22) = v61;
        }

        else
        {
          v62 = *(v23 + 304);
          v63 = *(v23 + 312);
          v65 = *(v23 + 320);
          v64 = *(v23 + 328);
          v67 = *(v23 + 344);
          v66 = *(v23 + 352);
          v69 = *(v23 + 360);
          v68 = *(v23 + 368);
          v128 = *(v23 + 376);
          v129 = *(v23 + 384);
          v130 = *(v23 + 392);
          __dsta = *(v23 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v62, v63, v65, v64, v58, v67, v66, v69, v68, v128, v129, v130, __dsta);
          v140[38] = v62;
          v140[39] = v63;
          v140[40] = v65;
          v33 = v140;
          v140[41] = v64;
          v140[42] = v58;
          v140[43] = v67;
          v140[44] = v66;
          v140[45] = v69;
          v140[46] = v68;
          v140[47] = v128;
          v140[48] = v129;
          v140[49] = v130;
          v140[50] = __dsta;
        }

        v70 = *(v23 + 416);
        if (v70 == 1)
        {
          v71 = *(v23 + 456);
          *(v33 + 55) = *(v23 + 440);
          *(v33 + 57) = v71;
          *(v33 + 472) = *(v23 + 472);
          v72 = *(v23 + 424);
          *(v33 + 51) = *(v23 + 408);
          *(v33 + 53) = v72;
          goto LABEL_37;
        }

        *(v33 + 102) = *(v23 + 408);
        *(v33 + 412) = *(v23 + 412);
        if (v70)
        {
          v73 = *(v23 + 424);
          v33[52] = v70;
          v33[53] = v73;

          v74 = *(v23 + 432);
          if (v74)
          {
            goto LABEL_31;
          }
        }

        else
        {
          *(v33 + 26) = *(v23 + 416);
          v74 = *(v23 + 432);
          if (v74)
          {
LABEL_31:
            v75 = *(v23 + 440);
            v33[54] = v74;
            v33[55] = v75;

            v76 = *(v23 + 448);
            if (v76)
            {
LABEL_32:
              v77 = *(v23 + 456);
              v33[56] = v76;
              v33[57] = v77;

LABEL_36:
              v33[58] = *(v23 + 464);
              *(v33 + 472) = *(v23 + 472);
LABEL_37:
              v78 = *(v23 + 488);
              v33[60] = *(v23 + 480);
              v33[61] = v78;
              v33[62] = *(v23 + 496);
              *(v33 + 504) = *(v23 + 504);
              v79 = *(v23 + 512);

              if (v79)
              {
                v80 = *(v23 + 520);
                v33[64] = v79;
                v33[65] = v80;
              }

              else
              {
                *(v33 + 32) = *(v23 + 512);
              }

              *(v33 + 528) = *(v23 + 528);
              if (!*(v23 + 816))
              {
                memcpy(v33 + 67, (v23 + 536), 0x130uLL);
                goto LABEL_52;
              }

              v33[67] = *(v23 + 536);
              v33[68] = *(v23 + 544);
              *(v33 + 552) = *(v23 + 552);
              v33[70] = *(v23 + 560);
              *(v33 + 568) = *(v23 + 568);
              *(v33 + 36) = *(v23 + 576);
              *(v33 + 592) = *(v23 + 592);
              v81 = v33 + 75;
              v82 = (v23 + 600);
              v83 = *(v23 + 624);

              if (v83)
              {
                if (v83 == 1)
                {
                  v84 = *(v23 + 616);
                  *v81 = *v82;
                  *(v33 + 77) = v84;
                  *(v33 + 79) = *(v23 + 632);
LABEL_48:
                  v33[81] = *(v23 + 648);
                  *(v33 + 656) = *(v23 + 656);
                  v86 = v33 + 83;
                  v87 = (v23 + 664);
                  v88 = *(v23 + 776);
                  if (v88 == 1)
                  {
                    v89 = *(v23 + 776);
                    *(v33 + 95) = *(v23 + 760);
                    *(v33 + 97) = v89;
                    *(v33 + 99) = *(v23 + 792);
                    *(v33 + 808) = *(v23 + 808);
                    v90 = *(v23 + 712);
                    *(v33 + 87) = *(v23 + 696);
                    *(v33 + 89) = v90;
                    v91 = *(v23 + 744);
                    *(v33 + 91) = *(v23 + 728);
                    *(v33 + 93) = v91;
                    v92 = *(v23 + 680);
                    *v86 = *v87;
                    *(v33 + 85) = v92;
                  }

                  else
                  {
                    *v86 = *v87;
                    *(v33 + 672) = *(v23 + 672);
                    v33[85] = *(v23 + 680);
                    *(v33 + 688) = *(v23 + 688);
                    *(v33 + 689) = *(v23 + 689);
                    *(v33 + 691) = *(v23 + 691);
                    *(v33 + 692) = *(v23 + 692);
                    v33[87] = *(v23 + 696);
                    v93 = *(v23 + 720);
                    *(v33 + 44) = *(v23 + 704);
                    *(v33 + 45) = v93;
                    v33[92] = *(v23 + 736);
                    *(v33 + 372) = *(v23 + 744);
                    *(v33 + 47) = *(v23 + 752);
                    *(v33 + 768) = *(v23 + 768);
                    v33[97] = v88;
                    *(v33 + 49) = *(v23 + 784);
                    v33[100] = *(v23 + 800);
                    *(v33 + 808) = *(v23 + 808);
                  }

                  v33[102] = *(v23 + 816);
                  v33[103] = *(v23 + 824);
                  v33[104] = *(v23 + 832);

LABEL_52:
                  v94 = v33 + 105;
                  v95 = (v23 + 840);
                  v96 = *(v23 + 864);
                  if (v96)
                  {
                    if (v96 == 1)
                    {
                      v97 = *(v23 + 856);
                      *v94 = *v95;
                      *(v33 + 107) = v97;
                      *(v33 + 109) = *(v23 + 872);
                      v33[111] = *(v23 + 888);
LABEL_59:
                      v101 = *(v23 + 896);
                      v33[112] = v101;
                      v33[113] = *(v23 + 904);
                      v33[114] = *(v23 + 912);
                      v33[115] = *(v23 + 920);
                      v33[116] = *(v23 + 928);
                      v33[117] = *(v23 + 936);
                      v33[118] = *(v23 + 944);
                      *(v33 + 476) = *(v23 + 952);
                      *(v33 + 954) = *(v23 + 954);
                      v102 = v136[28];
                      __dst = v33 + v102;
                      v103 = (v23 + v102);
                      v104 = type metadata accessor for CommandOperation();
                      v105 = *(v104 - 8);
                      v131 = *(v105 + 48);
                      v106 = v101;

                      if (v131(v103, 1, v104))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v103, *(*(v107 - 8) + 64));
                        v12 = v137;
                        v30 = v138;
                        v108 = v135;
                        v109 = v136;
                        v110 = v140;
                      }

                      else
                      {
                        v132 = v105;
                        *__dst = *v103;
                        v111 = v104;
                        v112 = *(v104 + 20);
                        v113 = &__dst[v112];
                        v114 = &v103[v112];
                        v115 = *&v103[v112];
                        v116 = *&v103[v112 + 8];
                        v117 = v103[v112 + 16];
                        outlined copy of Text.Storage(*v114, *(v114 + 1), v114[16]);
                        *v113 = v115;
                        *(v113 + 1) = v116;
                        v113[16] = v117;
                        *(v113 + 3) = *(v114 + 3);
                        v118 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v119 = type metadata accessor for UUID();
                        v120 = *(*(v119 - 8) + 16);

                        v120(&v113[v118], &v114[v118], v119);
                        v121 = *(v111 + 24);
                        v122 = &__dst[v121];
                        v123 = &v103[v121];
                        if (*v123)
                        {
                          v124 = v123[1];
                          *v122 = *v123;
                          v122[1] = v124;
                        }

                        else
                        {
                          *v122 = *v123;
                        }

                        v30 = v138;
                        v108 = v135;
                        v109 = v136;
                        v110 = v140;
                        (*(v132 + 56))(__dst, 0, 1, v111);
                        v12 = v137;
                      }

                      *(v110 + v109[29]) = *(v23 + v109[29]);
                      *(v110 + v109[30]) = *(v23 + v109[30]);
                      *(v110 + v109[31]) = *(v23 + v109[31]);
                      *(v110 + v109[32]) = *(v23 + v109[32]);
                      *(v110 + v109[33]) = *(v23 + v109[33]);
                      *(v110 + v109[34]) = *(v23 + v109[34]);
                      v125 = *(v108 + 56);

                      v125(v110, 0, 1, v109);
                      goto LABEL_66;
                    }

                    v33[108] = v96;
                    v33[109] = *(v23 + 872);
                    (**(v96 - 8))(v94, v95);
                    v99 = *(v23 + 880);
                    if (!v99)
                    {
LABEL_58:
                      *(v33 + 55) = *(v23 + 880);
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v98 = *(v23 + 856);
                    *v94 = *v95;
                    *(v33 + 107) = v98;
                    v33[109] = *(v23 + 872);
                    v99 = *(v23 + 880);
                    if (!v99)
                    {
                      goto LABEL_58;
                    }
                  }

                  v100 = *(v23 + 888);
                  v33[110] = v99;
                  v33[111] = v100;

                  goto LABEL_59;
                }

                v33[78] = v83;
                v33[79] = *(v23 + 632);
                (**(v83 - 8))((v33 + 75), v23 + 600, v83);
              }

              else
              {
                v85 = *(v23 + 616);
                *v81 = *v82;
                *(v33 + 77) = v85;
                v33[79] = *(v23 + 632);
              }

              v33[80] = *(v23 + 640);

              goto LABEL_48;
            }

LABEL_35:
            *(v33 + 28) = *(v23 + 448);
            goto LABEL_36;
          }
        }

        *(v33 + 27) = *(v23 + 432);
        v76 = *(v23 + 448);
        if (v76)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v48 = *(v23 + 72);
      if (v48 == 255)
      {
        v140[8] = *(v23 + 64);
        *(v140 + 72) = *(v23 + 72);
      }

      else
      {
        v49 = *(v23 + 64);
        outlined copy of GraphicsImage.Contents(v49, *(v23 + 72));
        v140[8] = v49;
        *(v140 + 72) = v48;
        v36 = *(v23 + 192);
      }

      v140[10] = *(v23 + 80);
      *(v140 + 11) = *(v23 + 88);
      *(v140 + 104) = *(v23 + 104);
      *(v140 + 108) = *(v23 + 108);
      *(v140 + 121) = *(v23 + 121);
      *(v140 + 17) = *(v23 + 136);
      *(v140 + 19) = *(v23 + 152);
      *(v140 + 84) = *(v23 + 168);
      *(v140 + 170) = *(v23 + 170);
      *(v140 + 171) = *(v23 + 171);
      if (v36 >> 1 == 0xFFFFFFFF)
      {
        v50 = *(v23 + 192);
        *(v140 + 11) = *(v23 + 176);
        *(v140 + 12) = v50;
      }

      else
      {
        v51 = *(v23 + 176);
        v52 = *(v23 + 184);
        v53 = *(v23 + 200);
        outlined copy of AccessibilityImageLabel(v51, v52, v36);
        v140[22] = v51;
        v140[23] = v52;
        v140[24] = v36;
        v140[25] = v53;
        v33 = v140;
      }

      v54 = *(v23 + 216);
      v33[26] = *(v23 + 208);
      v33[27] = v54;
      *(v33 + 112) = *(v23 + 224);
      *(v33 + 57) = *(v23 + 228);
      *(v33 + 232) = *(v23 + 232);
      v55 = *(v23 + 240);
      v33[30] = v55;
      *(v33 + 124) = *(v23 + 248);
      *(v33 + 250) = *(v23 + 250);
      swift_unknownObjectRetain();

      v56 = v55;
      v44 = *(v23 + 264);
      if (v44)
      {
        goto LABEL_13;
      }
    }

    v57 = *(v23 + 272);
    *(v33 + 16) = *(v23 + 256);
    *(v33 + 17) = v57;
    *(v33 + 18) = *(v23 + 288);
    goto LABEL_24;
  }

  v11 = *a2;
  *a1 = *a2;
  v12 = v11 + ((v5 + 16) & ~v5);

  return v12;
}

uint64_t assignWithTake for ToolbarStorage.Item(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;

  if (!*(a1 + 88))
  {
LABEL_6:
    v9 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v9;
    *(a1 + 96) = *(a2 + 96);
    if (a1 == a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!*(a2 + 88))
  {
    outlined destroy of MatchedTransitionIdentifier(a1 + 64);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;
  if (a1 != a2)
  {
LABEL_7:
    outlined destroy of ToolbarItemPlacement.Role(a1 + 112);
    v10 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v10;
    *(a1 + 137) = *(a2 + 137);
  }

LABEL_8:
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 176) = *(a2 + 176);
  __swift_destroy_boxed_opaque_existential_1(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  v11 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v11;

  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  v12 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);

  v13 = *(a1 + 280);
  *(a1 + 280) = *(a2 + 280);

  v14 = a3[17];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = type metadata accessor for PlatformItemList.Item();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (!v20)
  {
    if (v21)
    {
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v15, type metadata accessor for PlatformItemList.Item);
      goto LABEL_14;
    }

    v42 = *v15;
    *v15 = *v16;

    v43 = *(v15 + 8);
    *(v15 + 8) = *(v16 + 8);

    v44 = *(v16 + 24);
    *(v15 + 16) = *(v16 + 16);
    *(v15 + 24) = v44;

    *(v15 + 32) = *(v16 + 32);
    v45 = *(v16 + 48);
    *(v15 + 40) = *(v16 + 40);
    *(v15 + 48) = v45;

    *(v15 + 56) = *(v16 + 56);
    if (*(v15 + 192) >> 1 == 4294967294)
    {
LABEL_18:
      v46 = *(v16 + 208);
      *(v15 + 192) = *(v16 + 192);
      *(v15 + 208) = v46;
      *(v15 + 224) = *(v16 + 224);
      *(v15 + 235) = *(v16 + 235);
      v47 = *(v16 + 144);
      *(v15 + 128) = *(v16 + 128);
      *(v15 + 144) = v47;
      v48 = *(v16 + 176);
      *(v15 + 160) = *(v16 + 160);
      *(v15 + 176) = v48;
      v49 = *(v16 + 80);
      *(v15 + 64) = *(v16 + 64);
      *(v15 + 80) = v49;
      v50 = *(v16 + 112);
      *(v15 + 96) = *(v16 + 96);
      *(v15 + 112) = v50;
      if (!*(v15 + 264))
      {
        goto LABEL_37;
      }

LABEL_33:
      v66 = *(v16 + 264);
      if (v66)
      {
        *(v15 + 256) = *(v16 + 256);
        *(v15 + 264) = v66;

        v67 = *(v15 + 272);
        v68 = *(v16 + 272);
        if (v67 >= 2)
        {
          if (v68 >= 2)
          {
            *(v15 + 272) = v68;
          }

          else
          {

            *(v15 + 272) = *(v16 + 272);
          }
        }

        else
        {
          *(v15 + 272) = v68;
        }

        *(v15 + 280) = *(v16 + 280);
        *(v15 + 284) = *(v16 + 284);
        *(v15 + 286) = *(v16 + 286);
        *(v15 + 288) = *(v16 + 288);

        *(v15 + 296) = *(v16 + 296);

LABEL_42:
        v70 = *(v15 + 336);
        if (v70 >> 2 != 0xFFFFFFFF)
        {
          v71 = *(v16 + 336);
          if (v71 >> 2 != 0xFFFFFFFF)
          {
            v75 = *(v15 + 304);
            v76 = *(v15 + 312);
            v77 = *(v15 + 320);
            v78 = *(v15 + 328);
            v79 = *(v15 + 344);
            v80 = *(v15 + 352);
            v81 = *(v15 + 360);
            v82 = *(v15 + 368);
            v83 = *(v15 + 384);
            v84 = *(v15 + 400);
            v85 = *(v16 + 320);
            *(v15 + 304) = *(v16 + 304);
            *(v15 + 320) = v85;
            *(v15 + 336) = v71;
            *(v15 + 344) = *(v16 + 344);
            *(v15 + 360) = *(v16 + 360);
            *(v15 + 376) = *(v16 + 376);
            *(v15 + 392) = *(v16 + 392);
            outlined consume of PlatformItemList.Item.SystemItem(v75, v76, v77, v78, v70, v79, v80, v81, v82, *(&v82 + 1), v83, SBYTE8(v83), v84);
LABEL_47:
            v86 = (v16 + 408);
            v87 = *(v15 + 416);
            if (v87 == 1)
            {
LABEL_50:
              v89 = *(v16 + 456);
              *(v15 + 440) = *(v16 + 440);
              *(v15 + 456) = v89;
              *(v15 + 472) = *(v16 + 472);
              v90 = *(v16 + 424);
              *(v15 + 408) = *v86;
              *(v15 + 424) = v90;
              goto LABEL_73;
            }

            v88 = *(v16 + 416);
            if (v88 == 1)
            {
              outlined destroy of PlatformItemList.Item.SelectionBehavior(v15 + 408);
              goto LABEL_50;
            }

            *(v15 + 408) = *v86;
            *(v15 + 409) = *(v16 + 409);
            *(v15 + 410) = *(v16 + 410);
            *(v15 + 411) = *(v16 + 411);
            *(v15 + 412) = *(v16 + 412);
            if (v87)
            {
              if (v88)
              {
                v91 = *(v16 + 424);
                *(v15 + 416) = v88;
                *(v15 + 424) = v91;

                goto LABEL_58;
              }
            }

            else if (v88)
            {
              v92 = *(v16 + 424);
              *(v15 + 416) = v88;
              *(v15 + 424) = v92;
              goto LABEL_58;
            }

            *(v15 + 416) = *(v16 + 416);
LABEL_58:
            v93 = *(v16 + 432);
            if (*(v15 + 432))
            {
              if (v93)
              {
                v94 = *(v16 + 440);
                *(v15 + 432) = v93;
                *(v15 + 440) = v94;

                goto LABEL_65;
              }
            }

            else if (v93)
            {
              v95 = *(v16 + 440);
              *(v15 + 432) = v93;
              *(v15 + 440) = v95;
              goto LABEL_65;
            }

            *(v15 + 432) = *(v16 + 432);
LABEL_65:
            v96 = *(v16 + 448);
            if (*(v15 + 448))
            {
              if (v96)
              {
                v97 = *(v16 + 456);
                *(v15 + 448) = v96;
                *(v15 + 456) = v97;

LABEL_72:
                *(v15 + 464) = *(v16 + 464);
                *(v15 + 472) = *(v16 + 472);
LABEL_73:
                v99 = *(v16 + 488);
                *(v15 + 480) = *(v16 + 480);
                *(v15 + 488) = v99;

                *(v15 + 496) = *(v16 + 496);
                *(v15 + 504) = *(v16 + 504);
                v100 = *(v16 + 512);
                if (*(v15 + 512))
                {
                  if (v100)
                  {
                    v101 = *(v16 + 520);
                    *(v15 + 512) = v100;
                    *(v15 + 520) = v101;

                    goto LABEL_80;
                  }
                }

                else if (v100)
                {
                  v102 = *(v16 + 520);
                  *(v15 + 512) = v100;
                  *(v15 + 520) = v102;
                  goto LABEL_80;
                }

                *(v15 + 512) = *(v16 + 512);
LABEL_80:
                *(v15 + 528) = *(v16 + 528);
                if (*(v15 + 816))
                {
                  if (*(v16 + 816))
                  {
                    *(v15 + 536) = *(v16 + 536);
                    *(v15 + 544) = *(v16 + 544);

                    *(v15 + 552) = *(v16 + 552);
                    *(v15 + 560) = *(v16 + 560);

                    *(v15 + 568) = *(v16 + 568);
                    *(v15 + 576) = *(v16 + 576);
                    *(v15 + 592) = *(v16 + 592);
                    v103 = (v15 + 600);
                    v104 = (v16 + 600);
                    v105 = *(v15 + 624);
                    if (v105 != 1)
                    {
                      v106 = *(v16 + 624);
                      if (v106 != 1)
                      {
                        if (v105)
                        {
                          v108 = v15 + 600;
                          if (v106)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v108);
                          }

                          else
                          {
                            outlined destroy of AnyAccessibilityValue(v108);
                          }
                        }

                        v109 = *(v16 + 616);
                        *v103 = *v104;
                        *(v15 + 616) = v109;
                        *(v15 + 632) = *(v16 + 632);
                        *(v15 + 640) = *(v16 + 640);

LABEL_93:
                        *(v15 + 648) = *(v16 + 648);
                        *(v15 + 656) = *(v16 + 656);
                        v110 = (v15 + 664);
                        v111 = (v16 + 664);
                        if (*(v15 + 776) != 1)
                        {
                          v112 = *(v16 + 776);
                          if (v112 != 1)
                          {
                            *v110 = *v111;
                            *(v15 + 672) = *(v16 + 672);
                            *(v15 + 680) = *(v16 + 680);
                            *(v15 + 688) = *(v16 + 688);
                            *(v15 + 689) = *(v16 + 689);
                            *(v15 + 691) = *(v16 + 691);
                            *(v15 + 692) = *(v16 + 692);
                            *(v15 + 696) = *(v16 + 696);
                            v117 = *(v16 + 720);
                            *(v15 + 704) = *(v16 + 704);
                            *(v15 + 720) = v117;
                            *(v15 + 736) = *(v16 + 736);
                            *(v15 + 744) = *(v16 + 744);
                            *(v15 + 745) = *(v16 + 745);
                            *(v15 + 752) = *(v16 + 752);
                            *(v15 + 768) = *(v16 + 768);
                            *(v15 + 776) = v112;

                            *(v15 + 784) = *(v16 + 784);
                            *(v15 + 800) = *(v16 + 800);
                            *(v15 + 808) = *(v16 + 808);
                            goto LABEL_98;
                          }

                          outlined destroy of AccessibilityTextLayoutProperties(v15 + 664);
                        }

                        v113 = *(v16 + 776);
                        *(v15 + 760) = *(v16 + 760);
                        *(v15 + 776) = v113;
                        *(v15 + 792) = *(v16 + 792);
                        *(v15 + 808) = *(v16 + 808);
                        v114 = *(v16 + 712);
                        *(v15 + 696) = *(v16 + 696);
                        *(v15 + 712) = v114;
                        v115 = *(v16 + 744);
                        *(v15 + 728) = *(v16 + 728);
                        *(v15 + 744) = v115;
                        v116 = *(v16 + 680);
                        *v110 = *v111;
                        *(v15 + 680) = v116;
LABEL_98:
                        *(v15 + 816) = *(v16 + 816);

                        *(v15 + 824) = *(v16 + 824);

                        *(v15 + 832) = *(v16 + 832);

LABEL_99:
                        v118 = (v15 + 840);
                        v119 = (v16 + 840);
                        v120 = *(v15 + 864);
                        if (v120 == 1)
                        {
LABEL_102:
                          v122 = *(v16 + 856);
                          *v118 = *v119;
                          *(v15 + 856) = v122;
                          *(v15 + 872) = *(v16 + 872);
                          *(v15 + 888) = *(v16 + 888);
                          goto LABEL_103;
                        }

                        v121 = *(v16 + 864);
                        if (v121 == 1)
                        {
                          outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v15 + 840);
                          goto LABEL_102;
                        }

                        if (v120)
                        {
                          v135 = v15 + 840;
                          if (v121)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v135);
                          }

                          else
                          {
                            outlined destroy of AnyNavigationLinkPresentedValue(v135);
                          }
                        }

                        v159 = *(v16 + 856);
                        *v118 = *v119;
                        *(v15 + 856) = v159;
                        *(v15 + 872) = *(v16 + 872);
                        v160 = *(v16 + 880);
                        if (*(v15 + 880))
                        {
                          if (v160)
                          {
                            v161 = *(v16 + 888);
                            *(v15 + 880) = v160;
                            *(v15 + 888) = v161;

                            goto LABEL_103;
                          }
                        }

                        else if (v160)
                        {
                          v162 = *(v16 + 888);
                          *(v15 + 880) = v160;
                          *(v15 + 888) = v162;
                          goto LABEL_103;
                        }

                        *(v15 + 880) = *(v16 + 880);
LABEL_103:
                        v123 = *(v15 + 896);
                        *(v15 + 896) = *(v16 + 896);

                        *(v15 + 904) = *(v16 + 904);
                        *(v15 + 912) = *(v16 + 912);

                        *(v15 + 920) = *(v16 + 920);
                        *(v15 + 928) = *(v16 + 928);

                        *(v15 + 936) = *(v16 + 936);

                        *(v15 + 944) = *(v16 + 944);

                        *(v15 + 952) = *(v16 + 952);
                        *(v15 + 953) = *(v16 + 953);
                        v168 = v17;
                        v124 = *(v17 + 112);
                        v125 = (v15 + v124);
                        v126 = (v16 + v124);
                        v127 = type metadata accessor for CommandOperation();
                        v128 = *(v127 - 8);
                        v129 = *(v128 + 48);
                        v165 = v125;
                        LODWORD(v125) = v129(v125, 1, v127);
                        v130 = v129(v126, 1, v127);
                        if (v125)
                        {
                          if (!v130)
                          {
                            *v165 = *v126;
                            v136 = *(v127 + 20);
                            v137 = &v165[v136];
                            v138 = &v126[v136];
                            v139 = *&v126[v136 + 16];
                            *v137 = *&v126[v136];
                            *(v137 + 1) = v139;
                            v140 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v141 = type metadata accessor for UUID();
                            (*(*(v141 - 8) + 32))(&v137[v140], &v138[v140], v141);
                            *&v165[*(v127 + 24)] = *&v126[*(v127 + 24)];
                            (*(v128 + 56))(v165, 0, 1, v127);
                            goto LABEL_113;
                          }

                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v132 = *(*(v131 - 8) + 64);
                          v133 = v165;
                        }

                        else
                        {
                          if (!v130)
                          {
                            *v165 = *v126;
                            v145 = *(v127 + 20);
                            v146 = &v165[v145];
                            v147 = &v126[v145];
                            LOBYTE(v145) = v126[v145 + 16];
                            v148 = *v146;
                            v149 = *(v146 + 1);
                            v150 = v146[16];
                            *v146 = *v147;
                            v146[16] = v145;
                            outlined consume of Text.Storage(v148, v149, v150);
                            *(v146 + 3) = *(v147 + 3);

                            v151 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v152 = type metadata accessor for UUID();
                            (*(*(v152 - 8) + 40))(&v146[v151], &v147[v151], v152);
                            v153 = *(v127 + 24);
                            v154 = &v165[v153];
                            v155 = &v126[v153];
                            v156 = *&v165[v153];
                            v157 = *&v126[v153];
                            if (v156)
                            {
                              v142 = v168;
                              if (v157)
                              {
                                v158 = *(v155 + 1);
                                *v154 = v157;
                                v154[1] = v158;

                                goto LABEL_114;
                              }
                            }

                            else
                            {
                              v142 = v168;
                              if (v157)
                              {
                                v163 = *(v155 + 1);
                                *v154 = v157;
                                v154[1] = v163;
                                goto LABEL_114;
                              }
                            }

                            *v154 = *v155;
                            goto LABEL_114;
                          }

                          outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v165, type metadata accessor for CommandOperation);
                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v132 = *(*(v134 - 8) + 64);
                          v133 = v165;
                        }

                        memcpy(v133, v126, v132);
LABEL_113:
                        v142 = v168;
LABEL_114:
                        *(v15 + v142[29]) = *(v16 + v142[29]);
                        *(v15 + v142[30]) = *(v16 + v142[30]);
                        *(v15 + v142[31]) = *(v16 + v142[31]);
                        *(v15 + v142[32]) = *(v16 + v142[32]);
                        *(v15 + v142[33]) = *(v16 + v142[33]);
                        *(v15 + v142[34]) = *(v16 + v142[34]);

                        goto LABEL_115;
                      }

                      outlined destroy of AccessibilityValueStorage(v15 + 600);
                    }

                    v107 = *(v16 + 616);
                    *v103 = *v104;
                    *(v15 + 616) = v107;
                    *(v15 + 632) = *(v16 + 632);
                    goto LABEL_93;
                  }

                  outlined destroy of PlatformItemList.Item.Accessibility(v15 + 536);
                }

                memcpy((v15 + 536), (v16 + 536), 0x130uLL);
                goto LABEL_99;
              }
            }

            else if (v96)
            {
              v98 = *(v16 + 456);
              *(v15 + 448) = v96;
              *(v15 + 456) = v98;
              goto LABEL_72;
            }

            *(v15 + 448) = *(v16 + 448);
            goto LABEL_72;
          }

          outlined destroy of PlatformItemList.Item.SystemItem(v15 + 304);
        }

        v72 = *(v16 + 384);
        *(v15 + 368) = *(v16 + 368);
        *(v15 + 384) = v72;
        *(v15 + 400) = *(v16 + 400);
        v73 = *(v16 + 320);
        *(v15 + 304) = *(v16 + 304);
        *(v15 + 320) = v73;
        v74 = *(v16 + 352);
        *(v15 + 336) = *(v16 + 336);
        *(v15 + 352) = v74;
        goto LABEL_47;
      }

      outlined destroy of Image.NamedResolved(v15 + 256);
LABEL_37:
      v69 = *(v16 + 272);
      *(v15 + 256) = *(v16 + 256);
      *(v15 + 272) = v69;
      *(v15 + 288) = *(v16 + 288);
      goto LABEL_42;
    }

    if (*(v16 + 192) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(v15 + 64);
      goto LABEL_18;
    }

    v56 = *(v15 + 72);
    if (v56 != 255)
    {
      v57 = *(v16 + 72);
      if (v57 != 255)
      {
        v58 = *(v15 + 64);
        *(v15 + 64) = *(v16 + 64);
        *(v15 + 72) = v57;
        outlined consume of GraphicsImage.Contents(v58, v56);
        goto LABEL_27;
      }

      outlined destroy of GraphicsImage.Contents(v15 + 64);
    }

    *(v15 + 64) = *(v16 + 64);
    *(v15 + 72) = *(v16 + 72);
LABEL_27:
    *(v15 + 80) = *(v16 + 80);
    *(v15 + 96) = *(v16 + 96);
    *(v15 + 104) = *(v16 + 104);
    *(v15 + 108) = *(v16 + 108);
    *(v15 + 121) = *(v16 + 121);
    *(v15 + 136) = *(v16 + 136);
    *(v15 + 152) = *(v16 + 152);
    *(v15 + 168) = *(v16 + 168);
    *(v15 + 169) = *(v16 + 169);
    v59 = *(v15 + 192);
    *(v15 + 170) = *(v16 + 170);
    if (v59 >> 1 != 0xFFFFFFFF)
    {
      v60 = *(v16 + 192);
      if (v60 >> 1 != 0xFFFFFFFF)
      {
        v62 = *(v16 + 200);
        v63 = *(v15 + 176);
        v64 = *(v15 + 184);
        *(v15 + 176) = *(v16 + 176);
        *(v15 + 192) = v60;
        *(v15 + 200) = v62;
        outlined consume of AccessibilityImageLabel(v63, v64, v59);
LABEL_32:
        *(v15 + 208) = *(v16 + 208);
        swift_unknownObjectRelease();
        *(v15 + 216) = *(v16 + 216);

        *(v15 + 224) = *(v16 + 224);
        *(v15 + 225) = *(v16 + 225);
        *(v15 + 228) = *(v16 + 228);
        *(v15 + 232) = *(v16 + 232);
        v65 = *(v15 + 240);
        *(v15 + 240) = *(v16 + 240);

        *(v15 + 248) = *(v16 + 248);
        *(v15 + 250) = *(v16 + 250);
        if (!*(v15 + 264))
        {
          goto LABEL_37;
        }

        goto LABEL_33;
      }

      outlined destroy of AccessibilityImageLabel(v15 + 176);
    }

    v61 = *(v16 + 192);
    *(v15 + 176) = *(v16 + 176);
    *(v15 + 192) = v61;
    goto LABEL_32;
  }

  if (v21)
  {
LABEL_14:
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v15, v16, *(*(v41 - 8) + 64));
    goto LABEL_115;
  }

  v22 = *(v16 + 16);
  *v15 = *v16;
  *(v15 + 16) = v22;
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 40) = *(v16 + 40);
  *(v15 + 56) = *(v16 + 56);
  v23 = *(v16 + 208);
  *(v15 + 192) = *(v16 + 192);
  *(v15 + 208) = v23;
  *(v15 + 224) = *(v16 + 224);
  *(v15 + 235) = *(v16 + 235);
  v24 = *(v16 + 144);
  *(v15 + 128) = *(v16 + 128);
  *(v15 + 144) = v24;
  v25 = *(v16 + 176);
  *(v15 + 160) = *(v16 + 160);
  *(v15 + 176) = v25;
  v26 = *(v16 + 80);
  *(v15 + 64) = *(v16 + 64);
  *(v15 + 80) = v26;
  v27 = *(v16 + 112);
  *(v15 + 96) = *(v16 + 96);
  *(v15 + 112) = v27;
  v28 = *(v16 + 272);
  *(v15 + 256) = *(v16 + 256);
  *(v15 + 272) = v28;
  v29 = *(v16 + 368);
  *(v15 + 352) = *(v16 + 352);
  *(v15 + 368) = v29;
  *(v15 + 384) = *(v16 + 384);
  *(v15 + 400) = *(v16 + 400);
  v30 = *(v16 + 304);
  *(v15 + 288) = *(v16 + 288);
  *(v15 + 304) = v30;
  v31 = *(v16 + 336);
  *(v15 + 320) = *(v16 + 320);
  *(v15 + 336) = v31;
  v32 = *(v16 + 456);
  *(v15 + 440) = *(v16 + 440);
  *(v15 + 456) = v32;
  *(v15 + 472) = *(v16 + 472);
  v33 = *(v16 + 424);
  *(v15 + 408) = *(v16 + 408);
  *(v15 + 424) = v33;
  *(v15 + 480) = *(v16 + 480);
  *(v15 + 489) = *(v16 + 489);
  *(v15 + 512) = *(v16 + 512);
  *(v15 + 528) = *(v16 + 528);
  memcpy((v15 + 536), (v16 + 536), 0x130uLL);
  v34 = *(v16 + 856);
  *(v15 + 840) = *(v16 + 840);
  *(v15 + 856) = v34;
  *(v15 + 872) = *(v16 + 872);
  *(v15 + 888) = *(v16 + 888);
  *(v15 + 896) = *(v16 + 896);
  *(v15 + 904) = *(v16 + 904);
  *(v15 + 920) = *(v16 + 920);
  *(v15 + 936) = *(v16 + 936);
  *(v15 + 944) = *(v16 + 944);
  *(v15 + 952) = *(v16 + 952);
  *(v15 + 953) = *(v16 + 953);
  v167 = v17;
  v35 = *(v17 + 112);
  v36 = (v15 + v35);
  v37 = (v16 + v35);
  v38 = type metadata accessor for CommandOperation();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v37, 1, v38))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v36, v37, *(*(v40 - 8) + 64));
  }

  else
  {
    *v36 = *v37;
    v51 = *(v38 + 20);
    __src = v36;
    v52 = &v36[v51];
    v53 = &v37[v51];
    v54 = *&v37[v51 + 16];
    *v52 = *&v37[v51];
    *(v52 + 1) = v54;
    v164 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v55 = type metadata accessor for UUID();
    (*(*(v55 - 8) + 32))(&v52[v164], &v53[v164], v55);
    *&__src[*(v38 + 24)] = *&v37[*(v38 + 24)];
    (*(v39 + 56))();
  }

  *(v15 + v167[29]) = *(v16 + v167[29]);
  *(v15 + v167[30]) = *(v16 + v167[30]);
  *(v15 + v167[31]) = *(v16 + v167[31]);
  *(v15 + v167[32]) = *(v16 + v167[32]);
  *(v15 + v167[33]) = *(v16 + v167[33]);
  *(v15 + v167[34]) = *(v16 + v167[34]);
  (*(v18 + 56))(v15, 0, 1);
LABEL_115:
  swift_weakTakeAssign();
  v143 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v143) = *(a2 + v143);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t destroy for ToolbarStorage.NavigationProperties.Actions(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 <= 1)
  {
    return outlined consume of PlatformItemCollection.Storage(*result, v1 & 1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ToolbarStorage.NavigationProperties.Actions(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (v2 > 1)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v3 = *a2;
    v4 = v2 & 1;
    v5 = result;
    outlined copy of PlatformItemCollection.Storage(*a2, v2 & 1);
    *v5 = v3;
    *(v5 + 8) = v4;
    return v5;
  }

  return result;
}

uint64_t assignWithCopy for ToolbarStorage.NavigationProperties.Actions(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v4 <= 1)
    {
      v9 = *a2;
      v10 = v4 & 1;
      outlined copy of PlatformItemCollection.Storage(*a2, v4 & 1);
      *a1 = v9;
      *(a1 + 8) = v10;
      return a1;
    }

    v12 = *a2;
    v13 = *(a2 + 8);
LABEL_8:
    *(a1 + 8) = v13;
    *a1 = v12;
    return a1;
  }

  if (v4 > 1)
  {
    outlined consume of PlatformItemCollection.Storage(*a1, v3 & 1);
    v12 = *a2;
    v13 = *(a2 + 8);
    goto LABEL_8;
  }

  v5 = *a2;
  v6 = v4 & 1;
  outlined copy of PlatformItemCollection.Storage(*a2, v4 & 1);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of PlatformItemCollection.Storage(v7, v8);
  return a1;
}

uint64_t assignWithTake for ToolbarStorage.NavigationProperties.Actions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 > 1)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
  }

  else
  {
    v3 = *(a2 + 8);
    if (v3 > 1)
    {
      v5 = result;
      outlined consume of PlatformItemCollection.Storage(*result, v2 & 1);
      *v5 = *a2;
      *(v5 + 8) = *(a2 + 8);
    }

    else
    {
      v4 = *result;
      *result = *a2;
      *(result + 8) = v3 & 1;
      v5 = result;
      outlined consume of PlatformItemCollection.Storage(v4, v2 & 1);
    }

    return v5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarStorage.NavigationProperties.Actions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
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

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToolbarStorage.NavigationProperties.Actions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTag for ToolbarStorage.NavigationProperties.Actions(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ToolbarStorage.NavigationProperties.Actions(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t assignWithCopy for ToolbarStorage.NavigationProperties.DocumentProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v5, v6);
  return a1;
}

uint64_t assignWithTake for ToolbarStorage.NavigationProperties.DocumentProperties(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of ResolvableCLKTextProvider.FontStorage(v5, v6);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for ToolbarStorage.NavigationProperties(char *a1, char **a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = &v10[(v5 + 16) & ~v5];

    return v4;
  }

  v7 = *(a2 + 8);
  if (v7 == 255)
  {
    *a1 = *a2;
    a1[8] = *(a2 + 8);
  }

  else
  {
    v8 = *a2;
    v9 = v7 & 1;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v7 & 1);
    *v4 = v8;
    v4[8] = v9;
  }

  v11 = *(a2 + 24);
  if (v11 == 254 || v11 == 255)
  {
    *(v4 + 2) = a2[2];
    v4[24] = *(a2 + 24);
  }

  else
  {
    v12 = a2[2];
    v13 = v11 & 1;
    outlined copy of PlatformItemCollection.Storage(v12, v11 & 1);
    *(v4 + 2) = v12;
    v4[24] = v13;
  }

  swift_unknownObjectWeakCopyInit();
  v14 = a2[6];
  *(v4 + 5) = a2[5];
  *(v4 + 6) = v14;
  v15 = *(a3 + 32);
  v16 = &v4[v15];
  v17 = a2 + v15;
  v18 = type metadata accessor for PlatformItemList.Item();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v14;
  if (v20(v17, 1, v18))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v16, v17, *(*(v22 - 8) + 64));
    return v4;
  }

  v128 = v19;
  v23 = *v17;
  v24 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 1) = v24;
  v25 = *(v17 + 24);
  *(v16 + 2) = *(v17 + 16);
  *(v16 + 3) = v25;
  v16[32] = *(v17 + 32);
  v26 = *(v17 + 48);
  *(v16 + 5) = *(v17 + 40);
  *(v16 + 6) = v26;
  v16[56] = *(v17 + 56);
  v27 = *(v17 + 192);
  v28 = v23;
  v29 = v24;

  if (v27 >> 1 != 4294967294)
  {
    v39 = *(v17 + 72);
    if (v39 == 255)
    {
      *(v16 + 8) = *(v17 + 64);
      v16[72] = *(v17 + 72);
    }

    else
    {
      v40 = *(v17 + 64);
      outlined copy of GraphicsImage.Contents(v40, *(v17 + 72));
      *(v16 + 8) = v40;
      v16[72] = v39;
      v27 = *(v17 + 192);
    }

    *(v16 + 10) = *(v17 + 80);
    *(v16 + 88) = *(v17 + 88);
    v16[104] = *(v17 + 104);
    *(v16 + 108) = *(v17 + 108);
    *(v16 + 121) = *(v17 + 121);
    *(v16 + 136) = *(v17 + 136);
    *(v16 + 152) = *(v17 + 152);
    *(v16 + 84) = *(v17 + 168);
    v16[170] = *(v17 + 170);
    v16[171] = *(v17 + 171);
    if (v27 >> 1 == 0xFFFFFFFF)
    {
      v41 = *(v17 + 192);
      *(v16 + 11) = *(v17 + 176);
      *(v16 + 12) = v41;
    }

    else
    {
      v42 = *(v17 + 176);
      v43 = *(v17 + 184);
      v44 = *(v17 + 200);
      outlined copy of AccessibilityImageLabel(v42, v43, v27);
      *(v16 + 22) = v42;
      *(v16 + 23) = v43;
      *(v16 + 24) = v27;
      *(v16 + 25) = v44;
    }

    v45 = *(v17 + 216);
    *(v16 + 26) = *(v17 + 208);
    *(v16 + 27) = v45;
    *(v16 + 112) = *(v17 + 224);
    *(v16 + 57) = *(v17 + 228);
    v16[232] = *(v17 + 232);
    v46 = *(v17 + 240);
    *(v16 + 30) = v46;
    *(v16 + 124) = *(v17 + 248);
    v16[250] = *(v17 + 250);
    swift_unknownObjectRetain();

    v47 = v46;
    v35 = *(v17 + 264);
    if (v35)
    {
      goto LABEL_14;
    }

LABEL_24:
    v48 = *(v17 + 272);
    *(v16 + 16) = *(v17 + 256);
    *(v16 + 17) = v48;
    *(v16 + 18) = *(v17 + 288);
    goto LABEL_25;
  }

  v30 = *(v17 + 208);
  *(v16 + 12) = *(v17 + 192);
  *(v16 + 13) = v30;
  *(v16 + 14) = *(v17 + 224);
  *(v16 + 235) = *(v17 + 235);
  v31 = *(v17 + 144);
  *(v16 + 8) = *(v17 + 128);
  *(v16 + 9) = v31;
  v32 = *(v17 + 176);
  *(v16 + 10) = *(v17 + 160);
  *(v16 + 11) = v32;
  v33 = *(v17 + 80);
  *(v16 + 4) = *(v17 + 64);
  *(v16 + 5) = v33;
  v34 = *(v17 + 112);
  *(v16 + 6) = *(v17 + 96);
  *(v16 + 7) = v34;
  v35 = *(v17 + 264);
  if (!v35)
  {
    goto LABEL_24;
  }

LABEL_14:
  *(v16 + 32) = *(v17 + 256);
  *(v16 + 33) = v35;
  v36 = *(v17 + 272);

  if (v36 >= 2)
  {
    v37 = v36;
  }

  *(v16 + 34) = v36;
  *(v16 + 70) = *(v17 + 280);
  v16[284] = *(v17 + 284);
  *(v16 + 285) = *(v17 + 285);
  v38 = *(v17 + 296);
  *(v16 + 36) = *(v17 + 288);
  *(v16 + 37) = v38;

LABEL_25:
  v49 = *(v17 + 336);
  v129 = v18;
  if (v49 >> 2 == 0xFFFFFFFF)
  {
    v50 = *(v17 + 384);
    *(v16 + 23) = *(v17 + 368);
    *(v16 + 24) = v50;
    *(v16 + 50) = *(v17 + 400);
    v51 = *(v17 + 320);
    *(v16 + 19) = *(v17 + 304);
    *(v16 + 20) = v51;
    v52 = *(v17 + 352);
    *(v16 + 21) = *(v17 + 336);
    *(v16 + 22) = v52;
  }

  else
  {
    v53 = *(v17 + 304);
    v54 = *(v17 + 312);
    v55 = *(v17 + 320);
    v56 = *(v17 + 344);
    v57 = *(v17 + 352);
    v58 = *(v17 + 360);
    v116 = *(v17 + 328);
    v117 = *(v17 + 368);
    v118 = *(v17 + 376);
    v120 = *(v17 + 384);
    v122 = *(v17 + 392);
    __dsta = *(v17 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v53, v54, v55, v116, v49, v56, v57, v58, v117, v118, v120, v122, __dsta);
    *(v16 + 38) = v53;
    *(v16 + 39) = v54;
    *(v16 + 40) = v55;
    *(v16 + 41) = v116;
    *(v16 + 42) = v49;
    *(v16 + 43) = v56;
    *(v16 + 44) = v57;
    *(v16 + 45) = v58;
    *(v16 + 46) = v117;
    *(v16 + 47) = v118;
    *(v16 + 48) = v120;
    *(v16 + 49) = v122;
    *(v16 + 50) = __dsta;
  }

  v59 = *(v17 + 416);
  if (v59 == 1)
  {
    v60 = *(v17 + 456);
    *(v16 + 440) = *(v17 + 440);
    *(v16 + 456) = v60;
    v16[472] = *(v17 + 472);
    v61 = *(v17 + 424);
    *(v16 + 408) = *(v17 + 408);
    *(v16 + 424) = v61;
    goto LABEL_38;
  }

  *(v16 + 102) = *(v17 + 408);
  v16[412] = *(v17 + 412);
  if (v59)
  {
    v62 = *(v17 + 424);
    *(v16 + 52) = v59;
    *(v16 + 53) = v62;

    v63 = *(v17 + 432);
    if (v63)
    {
      goto LABEL_32;
    }

LABEL_35:
    *(v16 + 27) = *(v17 + 432);
    v65 = *(v17 + 448);
    if (v65)
    {
      goto LABEL_33;
    }

LABEL_36:
    *(v16 + 28) = *(v17 + 448);
    goto LABEL_37;
  }

  *(v16 + 26) = *(v17 + 416);
  v63 = *(v17 + 432);
  if (!v63)
  {
    goto LABEL_35;
  }

LABEL_32:
  v64 = *(v17 + 440);
  *(v16 + 54) = v63;
  *(v16 + 55) = v64;

  v65 = *(v17 + 448);
  if (!v65)
  {
    goto LABEL_36;
  }

LABEL_33:
  v66 = *(v17 + 456);
  *(v16 + 56) = v65;
  *(v16 + 57) = v66;

LABEL_37:
  *(v16 + 58) = *(v17 + 464);
  v16[472] = *(v17 + 472);
LABEL_38:
  v67 = *(v17 + 488);
  *(v16 + 60) = *(v17 + 480);
  *(v16 + 61) = v67;
  *(v16 + 62) = *(v17 + 496);
  v16[504] = *(v17 + 504);
  v68 = *(v17 + 512);

  if (v68)
  {
    v69 = *(v17 + 520);
    *(v16 + 64) = v68;
    *(v16 + 65) = v69;
  }

  else
  {
    *(v16 + 32) = *(v17 + 512);
  }

  v16[528] = *(v17 + 528);
  if (!*(v17 + 816))
  {
    memcpy(v16 + 536, (v17 + 536), 0x130uLL);
    goto LABEL_53;
  }

  *(v16 + 67) = *(v17 + 536);
  *(v16 + 68) = *(v17 + 544);
  v16[552] = *(v17 + 552);
  *(v16 + 70) = *(v17 + 560);
  v16[568] = *(v17 + 568);
  *(v16 + 36) = *(v17 + 576);
  v16[592] = *(v17 + 592);
  v70 = v16 + 600;
  v71 = (v17 + 600);
  v72 = *(v17 + 624);

  if (!v72)
  {
    v74 = *(v17 + 616);
    *v70 = *v71;
    *(v16 + 616) = v74;
    *(v16 + 79) = *(v17 + 632);
LABEL_48:
    *(v16 + 80) = *(v17 + 640);

    goto LABEL_49;
  }

  if (v72 != 1)
  {
    *(v16 + 78) = v72;
    *(v16 + 79) = *(v17 + 632);
    (**(v72 - 8))((v16 + 600), v17 + 600, v72);
    goto LABEL_48;
  }

  v73 = *(v17 + 616);
  *v70 = *v71;
  *(v16 + 616) = v73;
  *(v16 + 632) = *(v17 + 632);
LABEL_49:
  *(v16 + 81) = *(v17 + 648);
  v16[656] = *(v17 + 656);
  v75 = v16 + 664;
  v76 = (v17 + 664);
  v77 = *(v17 + 776);
  if (v77 == 1)
  {
    v78 = *(v17 + 776);
    *(v16 + 760) = *(v17 + 760);
    *(v16 + 776) = v78;
    *(v16 + 792) = *(v17 + 792);
    v16[808] = *(v17 + 808);
    v79 = *(v17 + 712);
    *(v16 + 696) = *(v17 + 696);
    *(v16 + 712) = v79;
    v80 = *(v17 + 744);
    *(v16 + 728) = *(v17 + 728);
    *(v16 + 744) = v80;
    v81 = *(v17 + 680);
    *v75 = *v76;
    *(v16 + 680) = v81;
  }

  else
  {
    *v75 = *v76;
    v16[672] = *(v17 + 672);
    *(v16 + 85) = *(v17 + 680);
    v16[688] = *(v17 + 688);
    *(v16 + 689) = *(v17 + 689);
    v16[691] = *(v17 + 691);
    v16[692] = *(v17 + 692);
    *(v16 + 87) = *(v17 + 696);
    v82 = *(v17 + 720);
    *(v16 + 44) = *(v17 + 704);
    *(v16 + 45) = v82;
    *(v16 + 92) = *(v17 + 736);
    *(v16 + 372) = *(v17 + 744);
    *(v16 + 47) = *(v17 + 752);
    v16[768] = *(v17 + 768);
    *(v16 + 97) = v77;
    *(v16 + 49) = *(v17 + 784);
    *(v16 + 100) = *(v17 + 800);
    v16[808] = *(v17 + 808);
  }

  *(v16 + 102) = *(v17 + 816);
  *(v16 + 103) = *(v17 + 824);
  *(v16 + 104) = *(v17 + 832);

LABEL_53:
  v83 = v16 + 840;
  v84 = (v17 + 840);
  v85 = *(v17 + 864);
  v125 = v4;
  if (!v85)
  {
    v87 = *(v17 + 856);
    *v83 = *v84;
    *(v16 + 856) = v87;
    *(v16 + 109) = *(v17 + 872);
    v88 = *(v17 + 880);
    if (!v88)
    {
LABEL_59:
      *(v16 + 55) = *(v17 + 880);
      goto LABEL_60;
    }

LABEL_57:
    v89 = *(v17 + 888);
    *(v16 + 110) = v88;
    *(v16 + 111) = v89;

    goto LABEL_60;
  }

  if (v85 != 1)
  {
    *(v16 + 108) = v85;
    *(v16 + 109) = *(v17 + 872);
    (**(v85 - 8))(v83, v84);
    v88 = *(v17 + 880);
    if (!v88)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v86 = *(v17 + 856);
  *v83 = *v84;
  *(v16 + 856) = v86;
  *(v16 + 872) = *(v17 + 872);
  *(v16 + 111) = *(v17 + 888);
LABEL_60:
  v90 = *(v17 + 896);
  *(v16 + 112) = v90;
  *(v16 + 113) = *(v17 + 904);
  *(v16 + 114) = *(v17 + 912);
  *(v16 + 115) = *(v17 + 920);
  *(v16 + 116) = *(v17 + 928);
  *(v16 + 117) = *(v17 + 936);
  *(v16 + 118) = *(v17 + 944);
  *(v16 + 476) = *(v17 + 952);
  v16[954] = *(v17 + 954);
  v91 = v129[28];
  __dst = &v16[v91];
  v92 = (v17 + v91);
  v93 = type metadata accessor for CommandOperation();
  v121 = *(v93 - 8);
  v123 = *(v121 + 48);
  v94 = v90;

  if (v123(v92, 1, v93))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v92, *(*(v95 - 8) + 64));
    v96 = v129;
    v97 = v128;
    v4 = v125;
  }

  else
  {
    *__dst = *v92;
    v98 = *(v93 + 20);
    v99 = &__dst[v98];
    v100 = &v92[v98];
    v124 = v92;
    v101 = v93;
    v102 = *v100;
    v103 = *(v100 + 1);
    v104 = v100[16];
    outlined copy of Text.Storage(*v100, v103, v104);
    *v99 = v102;
    *(v99 + 1) = v103;
    v99[16] = v104;
    *(v99 + 3) = *(v100 + 3);
    v105 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v106 = type metadata accessor for UUID();
    v119 = *(*(v106 - 8) + 16);

    v107 = &v99[v105];
    v108 = &v100[v105];
    v109 = v101;
    v119(v107, v108, v106);
    v110 = *(v101 + 24);
    v111 = &__dst[v110];
    v112 = &v124[v110];
    if (*v112)
    {
      v113 = v112[1];
      *v111 = *v112;
      *(v111 + 1) = v113;
    }

    else
    {
      *v111 = *v112;
    }

    v96 = v129;
    v97 = v128;
    v4 = v125;
    (*(v121 + 56))(__dst, 0, 1, v109);
  }

  v16[v96[29]] = *(v17 + v96[29]);
  v16[v96[30]] = *(v17 + v96[30]);
  v16[v96[31]] = *(v17 + v96[31]);
  v16[v96[32]] = *(v17 + v96[32]);
  v16[v96[33]] = *(v17 + v96[33]);
  *&v16[v96[34]] = *(v17 + v96[34]);
  v114 = *(v97 + 56);

  v114(v16, 0, 1, v96);
  return v4;
}

uint64_t destroy for ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    outlined consume of ResolvableCLKTextProvider.FontStorage(*a1, v4 & 1);
  }

  v5 = *(a1 + 24);
  if (v5 <= 0xFD)
  {
    outlined consume of PlatformItemCollection.Storage(*(a1 + 16), v5 & 1);
  }

  MEMORY[0x18D011290](a1 + 32);

  v6 = a1 + *(a2 + 32);
  v7 = type metadata accessor for PlatformItemList.Item();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v9 = *(v6 + 192);
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v11 = *(v6 + 72);
      if (v11 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v6 + 64), v11);
        v9 = *(v6 + 192);
        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v10 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v6 + 176), *(v6 + 184), v9);
      }

      swift_unknownObjectRelease();
    }

    if (*(v6 + 264))
    {

      v12 = *(v6 + 272);
      if (v12 >= 2)
      {
      }
    }

    v13 = *(v6 + 336);
    if (v13 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v6 + 304), *(v6 + 312), *(v6 + 320), *(v6 + 328), v13, *(v6 + 344), *(v6 + 352), *(v6 + 360), *(v6 + 368), *(v6 + 376), *(v6 + 384), *(v6 + 392), *(v6 + 400));
    }

    v14 = *(v6 + 416);
    if (v14)
    {
      if (v14 == 1)
      {
        goto LABEL_25;
      }
    }

    if (*(v6 + 432))
    {
    }

    if (*(v6 + 448))
    {
    }

LABEL_25:

    if (*(v6 + 512))
    {
    }

    if (!*(v6 + 816))
    {
LABEL_35:
      v16 = *(v6 + 864);
      if (v16)
      {
        if (v16 == 1)
        {
LABEL_40:

          v17 = v6 + *(v7 + 112);
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

        __swift_destroy_boxed_opaque_existential_1(v6 + 840);
      }

      if (*(v6 + 880))
      {
      }

      goto LABEL_40;
    }

    v15 = *(v6 + 624);
    if (v15)
    {
      if (v15 == 1)
      {
LABEL_32:
        if (*(v6 + 776) != 1)
        {
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1(v6 + 600);
    }

    goto LABEL_32;
  }

  return result;
}

uint64_t initializeWithCopy for ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 8);
  if (v6 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v7 = *a2;
    v8 = v6 & 1;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v6 & 1);
    *v5 = v7;
    *(v5 + 8) = v8;
  }

  v9 = *(a2 + 24);
  if (v9 == 254 || v9 == 255)
  {
    *(v5 + 16) = a2[2];
    *(v5 + 24) = *(a2 + 24);
  }

  else
  {
    v10 = a2[2];
    v11 = v9 & 1;
    outlined copy of PlatformItemCollection.Storage(v10, v9 & 1);
    *(v5 + 16) = v10;
    *(v5 + 24) = v11;
  }

  swift_unknownObjectWeakCopyInit();
  v12 = a2[6];
  *(v5 + 40) = a2[5];
  *(v5 + 48) = v12;
  v13 = *(a3 + 32);
  v14 = (v5 + v13);
  v15 = a2 + v13;
  v16 = type metadata accessor for PlatformItemList.Item();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v12;
  if (v18(v15, 1, v16))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v14, v15, *(*(v20 - 8) + 64));
    return v5;
  }

  v122 = v17;
  v123 = v5;
  v21 = *v15;
  v22 = *(v15 + 8);
  *v14 = *v15;
  v14[1] = v22;
  v23 = *(v15 + 24);
  v14[2] = *(v15 + 16);
  v14[3] = v23;
  *(v14 + 32) = *(v15 + 32);
  v24 = *(v15 + 48);
  v14[5] = *(v15 + 40);
  v14[6] = v24;
  *(v14 + 56) = *(v15 + 56);
  v25 = *(v15 + 192);
  v26 = v21;
  v27 = v22;

  if (v25 >> 1 != 4294967294)
  {
    v37 = *(v15 + 72);
    if (v37 == 255)
    {
      v14[8] = *(v15 + 64);
      *(v14 + 72) = *(v15 + 72);
    }

    else
    {
      v38 = *(v15 + 64);
      outlined copy of GraphicsImage.Contents(v38, *(v15 + 72));
      v14[8] = v38;
      *(v14 + 72) = v37;
      v25 = *(v15 + 192);
    }

    v14[10] = *(v15 + 80);
    *(v14 + 11) = *(v15 + 88);
    *(v14 + 104) = *(v15 + 104);
    *(v14 + 108) = *(v15 + 108);
    *(v14 + 121) = *(v15 + 121);
    *(v14 + 17) = *(v15 + 136);
    *(v14 + 19) = *(v15 + 152);
    *(v14 + 84) = *(v15 + 168);
    *(v14 + 170) = *(v15 + 170);
    *(v14 + 171) = *(v15 + 171);
    if (v25 >> 1 == 0xFFFFFFFF)
    {
      v39 = *(v15 + 192);
      *(v14 + 11) = *(v15 + 176);
      *(v14 + 12) = v39;
    }

    else
    {
      v40 = *(v15 + 176);
      v41 = *(v15 + 184);
      v42 = *(v15 + 200);
      outlined copy of AccessibilityImageLabel(v40, v41, v25);
      v14[22] = v40;
      v14[23] = v41;
      v14[24] = v25;
      v14[25] = v42;
    }

    v43 = *(v15 + 216);
    v14[26] = *(v15 + 208);
    v14[27] = v43;
    *(v14 + 112) = *(v15 + 224);
    *(v14 + 57) = *(v15 + 228);
    *(v14 + 232) = *(v15 + 232);
    v44 = *(v15 + 240);
    v14[30] = v44;
    *(v14 + 124) = *(v15 + 248);
    *(v14 + 250) = *(v15 + 250);
    swift_unknownObjectRetain();

    v45 = v44;
    v33 = *(v15 + 264);
    if (v33)
    {
      goto LABEL_12;
    }

LABEL_22:
    v46 = *(v15 + 272);
    *(v14 + 16) = *(v15 + 256);
    *(v14 + 17) = v46;
    *(v14 + 18) = *(v15 + 288);
    goto LABEL_23;
  }

  v28 = *(v15 + 208);
  *(v14 + 12) = *(v15 + 192);
  *(v14 + 13) = v28;
  *(v14 + 14) = *(v15 + 224);
  *(v14 + 235) = *(v15 + 235);
  v29 = *(v15 + 144);
  *(v14 + 8) = *(v15 + 128);
  *(v14 + 9) = v29;
  v30 = *(v15 + 176);
  *(v14 + 10) = *(v15 + 160);
  *(v14 + 11) = v30;
  v31 = *(v15 + 80);
  *(v14 + 4) = *(v15 + 64);
  *(v14 + 5) = v31;
  v32 = *(v15 + 112);
  *(v14 + 6) = *(v15 + 96);
  *(v14 + 7) = v32;
  v33 = *(v15 + 264);
  if (!v33)
  {
    goto LABEL_22;
  }

LABEL_12:
  v14[32] = *(v15 + 256);
  v14[33] = v33;
  v34 = *(v15 + 272);

  if (v34 >= 2)
  {
    v35 = v34;
  }

  v14[34] = v34;
  *(v14 + 70) = *(v15 + 280);
  *(v14 + 284) = *(v15 + 284);
  *(v14 + 285) = *(v15 + 285);
  v36 = *(v15 + 296);
  v14[36] = *(v15 + 288);
  v14[37] = v36;

LABEL_23:
  v47 = *(v15 + 336);
  v124 = v16;
  if (v47 >> 2 == 0xFFFFFFFF)
  {
    v48 = *(v15 + 384);
    *(v14 + 23) = *(v15 + 368);
    *(v14 + 24) = v48;
    v14[50] = *(v15 + 400);
    v49 = *(v15 + 320);
    *(v14 + 19) = *(v15 + 304);
    *(v14 + 20) = v49;
    v50 = *(v15 + 352);
    *(v14 + 21) = *(v15 + 336);
    *(v14 + 22) = v50;
  }

  else
  {
    v51 = *(v15 + 304);
    v52 = *(v15 + 312);
    v53 = *(v15 + 320);
    v54 = *(v15 + 328);
    v56 = *(v15 + 344);
    v55 = *(v15 + 352);
    v57 = *(v15 + 360);
    v112 = *(v15 + 368);
    v113 = *(v15 + 376);
    v115 = *(v15 + 384);
    v117 = *(v15 + 392);
    __dsta = *(v15 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v51, v52, v53, v54, v47, v56, v55, v57, v112, v113, v115, v117, __dsta);
    v14[38] = v51;
    v14[39] = v52;
    v14[40] = v53;
    v14[41] = v54;
    v14[42] = v47;
    v14[43] = v56;
    v16 = v124;
    v14[44] = v55;
    v14[45] = v57;
    v14[46] = v112;
    v14[47] = v113;
    v14[48] = v115;
    v14[49] = v117;
    v14[50] = __dsta;
  }

  v58 = *(v15 + 416);
  if (v58 == 1)
  {
    v59 = *(v15 + 456);
    *(v14 + 55) = *(v15 + 440);
    *(v14 + 57) = v59;
    *(v14 + 472) = *(v15 + 472);
    v60 = *(v15 + 424);
    *(v14 + 51) = *(v15 + 408);
    *(v14 + 53) = v60;
    goto LABEL_36;
  }

  *(v14 + 102) = *(v15 + 408);
  *(v14 + 412) = *(v15 + 412);
  if (v58)
  {
    v61 = *(v15 + 424);
    v14[52] = v58;
    v14[53] = v61;

    v62 = *(v15 + 432);
    if (v62)
    {
      goto LABEL_30;
    }

LABEL_33:
    *(v14 + 27) = *(v15 + 432);
    v64 = *(v15 + 448);
    if (v64)
    {
      goto LABEL_31;
    }

LABEL_34:
    *(v14 + 28) = *(v15 + 448);
    goto LABEL_35;
  }

  *(v14 + 26) = *(v15 + 416);
  v62 = *(v15 + 432);
  if (!v62)
  {
    goto LABEL_33;
  }

LABEL_30:
  v63 = *(v15 + 440);
  v14[54] = v62;
  v14[55] = v63;

  v64 = *(v15 + 448);
  if (!v64)
  {
    goto LABEL_34;
  }

LABEL_31:
  v65 = *(v15 + 456);
  v14[56] = v64;
  v14[57] = v65;

LABEL_35:
  v14[58] = *(v15 + 464);
  *(v14 + 472) = *(v15 + 472);
LABEL_36:
  v66 = *(v15 + 488);
  v14[60] = *(v15 + 480);
  v14[61] = v66;
  v14[62] = *(v15 + 496);
  *(v14 + 504) = *(v15 + 504);
  v67 = *(v15 + 512);

  if (v67)
  {
    v68 = *(v15 + 520);
    v14[64] = v67;
    v14[65] = v68;
  }

  else
  {
    *(v14 + 32) = *(v15 + 512);
  }

  *(v14 + 528) = *(v15 + 528);
  if (!*(v15 + 816))
  {
    memcpy(v14 + 67, (v15 + 536), 0x130uLL);
    goto LABEL_51;
  }

  v14[67] = *(v15 + 536);
  v14[68] = *(v15 + 544);
  *(v14 + 552) = *(v15 + 552);
  v14[70] = *(v15 + 560);
  *(v14 + 568) = *(v15 + 568);
  *(v14 + 36) = *(v15 + 576);
  *(v14 + 592) = *(v15 + 592);
  v69 = v14 + 75;
  v70 = (v15 + 600);
  v71 = *(v15 + 624);

  if (!v71)
  {
    v73 = *(v15 + 616);
    *v69 = *v70;
    *(v14 + 77) = v73;
    v14[79] = *(v15 + 632);
LABEL_46:
    v14[80] = *(v15 + 640);

    goto LABEL_47;
  }

  if (v71 != 1)
  {
    v14[78] = v71;
    v14[79] = *(v15 + 632);
    (**(v71 - 8))((v14 + 75), v15 + 600, v71);
    goto LABEL_46;
  }

  v72 = *(v15 + 616);
  *v69 = *v70;
  *(v14 + 77) = v72;
  *(v14 + 79) = *(v15 + 632);
LABEL_47:
  v14[81] = *(v15 + 648);
  *(v14 + 656) = *(v15 + 656);
  v74 = v14 + 83;
  v75 = (v15 + 664);
  v76 = *(v15 + 776);
  if (v76 == 1)
  {
    v77 = *(v15 + 776);
    *(v14 + 95) = *(v15 + 760);
    *(v14 + 97) = v77;
    *(v14 + 99) = *(v15 + 792);
    *(v14 + 808) = *(v15 + 808);
    v78 = *(v15 + 712);
    *(v14 + 87) = *(v15 + 696);
    *(v14 + 89) = v78;
    v79 = *(v15 + 744);
    *(v14 + 91) = *(v15 + 728);
    *(v14 + 93) = v79;
    v80 = *(v15 + 680);
    *v74 = *v75;
    *(v14 + 85) = v80;
  }

  else
  {
    *v74 = *v75;
    *(v14 + 672) = *(v15 + 672);
    v14[85] = *(v15 + 680);
    *(v14 + 688) = *(v15 + 688);
    *(v14 + 689) = *(v15 + 689);
    *(v14 + 691) = *(v15 + 691);
    *(v14 + 692) = *(v15 + 692);
    v14[87] = *(v15 + 696);
    v81 = *(v15 + 720);
    *(v14 + 44) = *(v15 + 704);
    *(v14 + 45) = v81;
    v14[92] = *(v15 + 736);
    *(v14 + 372) = *(v15 + 744);
    *(v14 + 47) = *(v15 + 752);
    *(v14 + 768) = *(v15 + 768);
    v14[97] = v76;
    *(v14 + 49) = *(v15 + 784);
    v14[100] = *(v15 + 800);
    *(v14 + 808) = *(v15 + 808);
  }

  v14[102] = *(v15 + 816);
  v14[103] = *(v15 + 824);
  v14[104] = *(v15 + 832);

LABEL_51:
  v82 = v14 + 105;
  v83 = (v15 + 840);
  v84 = *(v15 + 864);
  if (!v84)
  {
    v86 = *(v15 + 856);
    *v82 = *v83;
    *(v14 + 107) = v86;
    v14[109] = *(v15 + 872);
    v87 = *(v15 + 880);
    if (!v87)
    {
LABEL_57:
      *(v14 + 55) = *(v15 + 880);
      goto LABEL_58;
    }

LABEL_55:
    v88 = *(v15 + 888);
    v14[110] = v87;
    v14[111] = v88;

    goto LABEL_58;
  }

  if (v84 != 1)
  {
    v14[108] = v84;
    v14[109] = *(v15 + 872);
    (**(v84 - 8))(v82, v83);
    v87 = *(v15 + 880);
    if (!v87)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  v85 = *(v15 + 856);
  *v82 = *v83;
  *(v14 + 107) = v85;
  *(v14 + 109) = *(v15 + 872);
  v14[111] = *(v15 + 888);
LABEL_58:
  v89 = *(v15 + 896);
  v14[112] = v89;
  v14[113] = *(v15 + 904);
  v14[114] = *(v15 + 912);
  v14[115] = *(v15 + 920);
  v14[116] = *(v15 + 928);
  v14[117] = *(v15 + 936);
  v14[118] = *(v15 + 944);
  *(v14 + 476) = *(v15 + 952);
  *(v14 + 954) = *(v15 + 954);
  v90 = *(v16 + 112);
  __dst = v14 + v90;
  v91 = (v15 + v90);
  v92 = type metadata accessor for CommandOperation();
  v116 = *(v92 - 8);
  v118 = *(v116 + 48);
  v93 = v89;
  v94 = v91;

  if (v118(v91, 1, v92))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v91, *(*(v95 - 8) + 64));
    v5 = v123;
    v96 = v124;
  }

  else
  {
    *__dst = *v91;
    v97 = *(v92 + 20);
    v98 = v92;
    v99 = &__dst[v97];
    v100 = &v94[v97];
    v119 = v94;
    v101 = *&v94[v97];
    v102 = *(v100 + 1);
    v103 = v100[16];
    outlined copy of Text.Storage(v101, v102, v103);
    *v99 = v101;
    *(v99 + 1) = v102;
    v99[16] = v103;
    *(v99 + 3) = *(v100 + 3);
    v104 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v105 = type metadata accessor for UUID();
    v114 = *(*(v105 - 8) + 16);

    v114(&v99[v104], &v100[v104], v105);
    v106 = *(v98 + 24);
    v107 = &__dst[v106];
    v108 = &v119[v106];
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

    v5 = v123;
    v96 = v124;
    (*(v116 + 56))(__dst, 0, 1, v98);
  }

  *(v14 + v96[29]) = *(v15 + v96[29]);
  *(v14 + v96[30]) = *(v15 + v96[30]);
  *(v14 + v96[31]) = *(v15 + v96[31]);
  *(v14 + v96[32]) = *(v15 + v96[32]);
  *(v14 + v96[33]) = *(v15 + v96[33]);
  *(v14 + v96[34]) = *(v15 + v96[34]);
  v110 = *(v122 + 56);

  v110(v14, 0, 1, v96);
  return v5;
}

uint64_t assignWithCopy for ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v6 == 255)
    {
      v14 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v14;
    }

    else
    {
      v11 = *a2;
      v12 = v6 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v6 & 1);
      *v5 = v11;
      *(v5 + 8) = v12;
    }
  }

  else if (v6 == 255)
  {
    outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(a1);
    v13 = *(a2 + 8);
    *v5 = *a2;
    *(v5 + 8) = v13;
  }

  else
  {
    v7 = *a2;
    v8 = v6 & 1;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v6 & 1);
    v9 = *v5;
    v10 = *(v5 + 8);
    *v5 = v7;
    *(v5 + 8) = v8;
    outlined consume of ResolvableCLKTextProvider.FontStorage(v9, v10);
  }

  v15 = *(v5 + 24);
  v16 = *(a2 + 24);
  if (v15 == 254)
  {
    if (v16 == 254)
    {
LABEL_17:
      v20 = *(a2 + 16);
      *(v5 + 24) = *(a2 + 24);
      *(v5 + 16) = v20;
      goto LABEL_18;
    }

LABEL_15:
    if (v16 != 255)
    {
      v18 = *(a2 + 16);
      v19 = v16 & 1;
      outlined copy of PlatformItemCollection.Storage(v18, v16 & 1);
      *(v5 + 16) = v18;
      *(v5 + 24) = v19;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v16 == 254)
  {
    outlined destroy of ToolbarStorage.NavigationProperties.Actions(v5 + 16);
LABEL_13:
    v17 = *(a2 + 24);
    *(v5 + 16) = *(a2 + 16);
    *(v5 + 24) = v17;
    goto LABEL_18;
  }

  if (v15 == 255)
  {
    goto LABEL_15;
  }

  if (v16 == 255)
  {
    outlined destroy of PlatformItemCollection(v5 + 16);
    goto LABEL_13;
  }

  v66 = *(a2 + 16);
  v67 = v16 & 1;
  outlined copy of PlatformItemCollection.Storage(v66, v16 & 1);
  v68 = *(v5 + 16);
  v69 = *(v5 + 24);
  *(v5 + 16) = v66;
  *(v5 + 24) = v67;
  outlined consume of PlatformItemCollection.Storage(v68, v69);
LABEL_18:
  swift_unknownObjectWeakCopyAssign();
  *(v5 + 40) = *(a2 + 40);
  v21 = *(v5 + 48);
  v22 = *(a2 + 48);
  *(v5 + 48) = v22;
  v23 = v22;

  v24 = *(a3 + 32);
  v25 = v5 + v24;
  v26 = a2 + v24;
  v27 = type metadata accessor for PlatformItemList.Item();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(v25, 1, v27);
  v31 = v29(v26, 1, v27);
  if (!v30)
  {
    if (v31)
    {
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v25, type metadata accessor for PlatformItemList.Item);
      goto LABEL_27;
    }

    v50 = *v25;
    v51 = *v26;
    *v25 = *v26;
    v52 = v51;

    v53 = *(v25 + 8);
    v54 = *(v26 + 8);
    *(v25 + 8) = v54;
    v55 = v54;

    *(v25 + 16) = *(v26 + 16);
    *(v25 + 24) = *(v26 + 24);

    *(v25 + 32) = *(v26 + 32);
    *(v25 + 40) = *(v26 + 40);
    *(v25 + 48) = *(v26 + 48);

    *(v25 + 56) = *(v26 + 56);
    v56 = *(v26 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v25 + 192) >> 1 == 4294967294)
    {
      if (v56 == 0x1FFFFFFFCLL)
      {
        v57 = *(v26 + 64);
        v58 = *(v26 + 80);
        v59 = *(v26 + 112);
        *(v25 + 96) = *(v26 + 96);
        *(v25 + 112) = v59;
        *(v25 + 64) = v57;
        *(v25 + 80) = v58;
        v60 = *(v26 + 128);
        v61 = *(v26 + 144);
        v62 = *(v26 + 176);
        *(v25 + 160) = *(v26 + 160);
        *(v25 + 176) = v62;
        *(v25 + 128) = v60;
        *(v25 + 144) = v61;
        v63 = *(v26 + 192);
        v64 = *(v26 + 208);
        v65 = *(v26 + 224);
        *(v25 + 235) = *(v26 + 235);
        *(v25 + 208) = v64;
        *(v25 + 224) = v65;
        *(v25 + 192) = v63;
      }

      else
      {
        v171 = *(v26 + 72);
        if (v171 == 255)
        {
          v178 = *(v26 + 64);
          *(v25 + 72) = *(v26 + 72);
          *(v25 + 64) = v178;
        }

        else
        {
          v172 = *(v26 + 64);
          outlined copy of GraphicsImage.Contents(v172, *(v26 + 72));
          *(v25 + 64) = v172;
          *(v25 + 72) = v171;
        }

        *(v25 + 80) = *(v26 + 80);
        *(v25 + 88) = *(v26 + 88);
        *(v25 + 104) = *(v26 + 104);
        v179 = *(v26 + 108);
        *(v25 + 121) = *(v26 + 121);
        *(v25 + 108) = v179;
        v180 = *(v26 + 136);
        v181 = *(v26 + 152);
        *(v25 + 168) = *(v26 + 168);
        *(v25 + 152) = v181;
        *(v25 + 136) = v180;
        *(v25 + 169) = *(v26 + 169);
        *(v25 + 170) = *(v26 + 170);
        *(v25 + 171) = *(v26 + 171);
        v182 = *(v26 + 192);
        if (v182 >> 1 == 0xFFFFFFFF)
        {
          v183 = *(v26 + 192);
          *(v25 + 176) = *(v26 + 176);
          *(v25 + 192) = v183;
        }

        else
        {
          v184 = *(v26 + 176);
          v185 = *(v26 + 184);
          v186 = *(v26 + 200);
          outlined copy of AccessibilityImageLabel(v184, v185, *(v26 + 192));
          *(v25 + 176) = v184;
          *(v25 + 184) = v185;
          *(v25 + 192) = v182;
          *(v25 + 200) = v186;
        }

        *(v25 + 208) = *(v26 + 208);
        *(v25 + 216) = *(v26 + 216);
        *(v25 + 224) = *(v26 + 224);
        *(v25 + 225) = *(v26 + 225);
        v187 = *(v26 + 228);
        *(v25 + 232) = *(v26 + 232);
        *(v25 + 228) = v187;
        v188 = *(v26 + 240);
        *(v25 + 240) = v188;
        *(v25 + 248) = *(v26 + 248);
        *(v25 + 250) = *(v26 + 250);
        swift_unknownObjectRetain();

        v189 = v188;
      }
    }

    else if (v56 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v25 + 64);
      v72 = *(v26 + 112);
      v74 = *(v26 + 64);
      v73 = *(v26 + 80);
      *(v25 + 96) = *(v26 + 96);
      *(v25 + 112) = v72;
      *(v25 + 64) = v74;
      *(v25 + 80) = v73;
      v75 = *(v26 + 176);
      v77 = *(v26 + 128);
      v76 = *(v26 + 144);
      *(v25 + 160) = *(v26 + 160);
      *(v25 + 176) = v75;
      *(v25 + 128) = v77;
      *(v25 + 144) = v76;
      v79 = *(v26 + 208);
      v78 = *(v26 + 224);
      v80 = *(v26 + 192);
      *(v25 + 235) = *(v26 + 235);
      *(v25 + 208) = v79;
      *(v25 + 224) = v78;
      *(v25 + 192) = v80;
    }

    else
    {
      v173 = *(v26 + 72);
      if (*(v25 + 72) == 255)
      {
        if (v173 == 255)
        {
          v192 = *(v26 + 64);
          *(v25 + 72) = *(v26 + 72);
          *(v25 + 64) = v192;
        }

        else
        {
          v190 = *(v26 + 64);
          outlined copy of GraphicsImage.Contents(v190, *(v26 + 72));
          *(v25 + 64) = v190;
          *(v25 + 72) = v173;
        }
      }

      else if (v173 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v25 + 64);
        v191 = *(v26 + 72);
        *(v25 + 64) = *(v26 + 64);
        *(v25 + 72) = v191;
      }

      else
      {
        v174 = *(v26 + 64);
        outlined copy of GraphicsImage.Contents(v174, *(v26 + 72));
        v175 = *(v25 + 64);
        *(v25 + 64) = v174;
        v176 = *(v25 + 72);
        *(v25 + 72) = v173;
        outlined consume of GraphicsImage.Contents(v175, v176);
      }

      *(v25 + 80) = *(v26 + 80);
      *(v25 + 88) = *(v26 + 88);
      *(v25 + 96) = *(v26 + 96);
      *(v25 + 104) = *(v26 + 104);
      v193 = *(v26 + 108);
      *(v25 + 121) = *(v26 + 121);
      *(v25 + 108) = v193;
      v194 = *(v26 + 136);
      v195 = *(v26 + 152);
      *(v25 + 168) = *(v26 + 168);
      *(v25 + 152) = v195;
      *(v25 + 136) = v194;
      *(v25 + 169) = *(v26 + 169);
      *(v25 + 170) = *(v26 + 170);
      *(v25 + 171) = *(v26 + 171);
      v196 = *(v26 + 192);
      v197 = v196 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v25 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v197 == 0x1FFFFFFFELL)
        {
          v198 = *(v26 + 192);
          *(v25 + 176) = *(v26 + 176);
          *(v25 + 192) = v198;
        }

        else
        {
          v200 = *(v26 + 176);
          v201 = *(v26 + 184);
          v202 = *(v26 + 200);
          outlined copy of AccessibilityImageLabel(v200, v201, *(v26 + 192));
          *(v25 + 176) = v200;
          *(v25 + 184) = v201;
          *(v25 + 192) = v196;
          *(v25 + 200) = v202;
        }
      }

      else if (v197 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v25 + 176);
        v199 = *(v26 + 192);
        *(v25 + 176) = *(v26 + 176);
        *(v25 + 192) = v199;
      }

      else
      {
        v203 = *(v26 + 176);
        v204 = *(v26 + 184);
        v205 = *(v26 + 200);
        outlined copy of AccessibilityImageLabel(v203, v204, *(v26 + 192));
        v206 = *(v25 + 176);
        v207 = *(v25 + 184);
        v208 = *(v25 + 192);
        *(v25 + 176) = v203;
        *(v25 + 184) = v204;
        *(v25 + 192) = v196;
        *(v25 + 200) = v205;
        outlined consume of AccessibilityImageLabel(v206, v207, v208);
      }

      *(v25 + 208) = *(v26 + 208);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v25 + 216) = *(v26 + 216);

      *(v25 + 224) = *(v26 + 224);
      *(v25 + 225) = *(v26 + 225);
      v209 = *(v26 + 228);
      *(v25 + 232) = *(v26 + 232);
      *(v25 + 228) = v209;
      v210 = *(v25 + 240);
      v211 = *(v26 + 240);
      *(v25 + 240) = v211;
      v212 = v211;

      *(v25 + 248) = *(v26 + 248);
      *(v25 + 250) = *(v26 + 250);
    }

    v213 = *(v26 + 264);
    if (!*(v25 + 264))
    {
      if (v213)
      {
        *(v25 + 256) = *(v26 + 256);
        *(v25 + 264) = *(v26 + 264);
        v217 = *(v26 + 272);

        if (v217 >= 2)
        {
          v218 = v217;
        }

        *(v25 + 272) = v217;
        v219 = *(v26 + 280);
        *(v25 + 284) = *(v26 + 284);
        *(v25 + 280) = v219;
        *(v25 + 285) = *(v26 + 285);
        *(v25 + 286) = *(v26 + 286);
        *(v25 + 288) = *(v26 + 288);
        *(v25 + 296) = *(v26 + 296);
      }

      else
      {
        v222 = *(v26 + 256);
        v223 = *(v26 + 288);
        *(v25 + 272) = *(v26 + 272);
        *(v25 + 288) = v223;
        *(v25 + 256) = v222;
      }

LABEL_124:
      v226 = *(v26 + 336);
      v227 = v226 & 0xFFFFFFFFFFFFFFFCLL;
      v442 = v27;
      if (*(v25 + 336) >> 2 == 0xFFFFFFFFLL)
      {
        if (v227 == 0x3FFFFFFFCLL)
        {
          v228 = *(v26 + 304);
          v229 = *(v26 + 336);
          *(v25 + 320) = *(v26 + 320);
          *(v25 + 336) = v229;
          *(v25 + 304) = v228;
          v230 = *(v26 + 352);
          v231 = *(v26 + 368);
          v232 = *(v26 + 384);
          *(v25 + 400) = *(v26 + 400);
          *(v25 + 368) = v231;
          *(v25 + 384) = v232;
          *(v25 + 352) = v230;
        }

        else
        {
          v238 = *(v26 + 304);
          v239 = *(v26 + 312);
          v240 = *(v26 + 320);
          v241 = *(v26 + 328);
          v437 = v5;
          v243 = *(v26 + 344);
          v242 = *(v26 + 352);
          v244 = *(v26 + 360);
          v416 = *(v26 + 368);
          v420 = *(v26 + 376);
          v425 = *(v26 + 384);
          __dstb = *(v26 + 392);
          v433 = *(v26 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v238, v239, v240, v241, v226, v243, v242, v244, v416, v420, v425, __dstb, v433);
          *(v25 + 304) = v238;
          *(v25 + 312) = v239;
          *(v25 + 320) = v240;
          *(v25 + 328) = v241;
          v27 = v442;
          *(v25 + 336) = v226;
          *(v25 + 344) = v243;
          *(v25 + 352) = v242;
          *(v25 + 360) = v244;
          *(v25 + 368) = v416;
          *(v25 + 376) = v420;
          *(v25 + 384) = v425;
          *(v25 + 392) = __dstb;
          v5 = v437;
          *(v25 + 400) = v433;
        }
      }

      else if (v227 == 0x3FFFFFFFCLL)
      {
        outlined destroy of PlatformItemList.Item.SystemItem(v25 + 304);
        v234 = *(v26 + 320);
        v233 = *(v26 + 336);
        *(v25 + 304) = *(v26 + 304);
        *(v25 + 320) = v234;
        *(v25 + 336) = v233;
        v236 = *(v26 + 368);
        v235 = *(v26 + 384);
        v237 = *(v26 + 352);
        *(v25 + 400) = *(v26 + 400);
        *(v25 + 368) = v236;
        *(v25 + 384) = v235;
        *(v25 + 352) = v237;
      }

      else
      {
        v245 = *(v26 + 304);
        v246 = *(v26 + 312);
        v247 = *(v26 + 320);
        v248 = *(v26 + 328);
        v438 = v5;
        v249 = *(v26 + 344);
        v250 = *(v26 + 368);
        v417 = *(v26 + 360);
        v421 = *(v26 + 352);
        v251 = *(v26 + 376);
        v426 = *(v26 + 384);
        __dstc = *(v26 + 392);
        v434 = *(v26 + 400);
        outlined copy of PlatformItemList.Item.SystemItem(v245, v246, v247, v248, v226, v249, v421, v417, v250, v251, v426, __dstc, v434);
        v252 = *(v25 + 304);
        v253 = *(v25 + 312);
        v254 = *(v25 + 320);
        v255 = *(v25 + 328);
        v256 = *(v25 + 336);
        v257 = *(v25 + 344);
        v258 = *(v25 + 352);
        v259 = *(v25 + 360);
        v260 = *(v25 + 368);
        v261 = *(v25 + 384);
        v262 = *(v25 + 400);
        *(v25 + 304) = v245;
        *(v25 + 312) = v246;
        *(v25 + 320) = v247;
        *(v25 + 328) = v248;
        v27 = v442;
        *(v25 + 336) = v226;
        *(v25 + 344) = v249;
        *(v25 + 352) = v421;
        *(v25 + 360) = v417;
        *(v25 + 368) = v250;
        *(v25 + 376) = v251;
        *(v25 + 384) = v426;
        *(v25 + 392) = __dstc;
        v5 = v438;
        *(v25 + 400) = v434;
        outlined consume of PlatformItemList.Item.SystemItem(v252, v253, v254, v255, v256, v257, v258, v259, v260, *(&v260 + 1), v261, SBYTE8(v261), v262);
      }

      v263 = (v25 + 408);
      v264 = (v26 + 408);
      v265 = *(v25 + 416);
      v266 = *(v26 + 416);
      if (v265 == 1)
      {
        if (v266 == 1)
        {
          *v263 = *v264;
          v267 = *(v26 + 424);
          v268 = *(v26 + 440);
          v269 = *(v26 + 456);
          *(v25 + 472) = *(v26 + 472);
          *(v25 + 440) = v268;
          *(v25 + 456) = v269;
          *(v25 + 424) = v267;
          goto LABEL_166;
        }

        *(v25 + 408) = *(v26 + 408);
        *(v25 + 409) = *(v26 + 409);
        *(v25 + 410) = *(v26 + 410);
        *(v25 + 411) = *(v26 + 411);
        *(v25 + 412) = *(v26 + 412);
        v273 = *(v26 + 416);
        if (v273)
        {
          v274 = *(v26 + 424);
          *(v25 + 416) = v273;
          *(v25 + 424) = v274;
        }

        else
        {
          *(v25 + 416) = *(v26 + 416);
        }

        v277 = *(v26 + 432);
        if (v277)
        {
          v278 = *(v26 + 440);
          *(v25 + 432) = v277;
          *(v25 + 440) = v278;
        }

        else
        {
          *(v25 + 432) = *(v26 + 432);
        }

        v280 = *(v26 + 448);
        if (!v280)
        {
          goto LABEL_164;
        }

        goto LABEL_162;
      }

      if (v266 == 1)
      {
        outlined destroy of PlatformItemList.Item.SelectionBehavior(v25 + 408);
        *v263 = *v264;
        v271 = *(v26 + 440);
        v270 = *(v26 + 456);
        v272 = *(v26 + 424);
        *(v25 + 472) = *(v26 + 472);
        *(v25 + 440) = v271;
        *(v25 + 456) = v270;
        *(v25 + 424) = v272;
        goto LABEL_166;
      }

      *(v25 + 408) = *v264;
      *(v25 + 409) = *(v26 + 409);
      *(v25 + 410) = *(v26 + 410);
      *(v25 + 411) = *(v26 + 411);
      *(v25 + 412) = *(v26 + 412);
      v275 = *(v26 + 416);
      if (v265)
      {
        if (v275)
        {
          v276 = *(v26 + 424);
          *(v25 + 416) = v275;
          *(v25 + 424) = v276;

          goto LABEL_151;
        }
      }

      else if (v275)
      {
        v279 = *(v26 + 424);
        *(v25 + 416) = v275;
        *(v25 + 424) = v279;

        goto LABEL_151;
      }

      *(v25 + 416) = *(v26 + 416);
LABEL_151:
      v281 = *(v26 + 432);
      if (*(v25 + 432))
      {
        if (v281)
        {
          v282 = *(v26 + 440);
          *(v25 + 432) = v281;
          *(v25 + 440) = v282;

          goto LABEL_158;
        }
      }

      else if (v281)
      {
        v283 = *(v26 + 440);
        *(v25 + 432) = v281;
        *(v25 + 440) = v283;

        goto LABEL_158;
      }

      *(v25 + 432) = *(v26 + 432);
LABEL_158:
      v280 = *(v26 + 448);
      if (*(v25 + 448))
      {
        if (v280)
        {
          v284 = *(v26 + 456);
          *(v25 + 448) = v280;
          *(v25 + 456) = v284;

LABEL_165:
          *(v25 + 464) = *(v26 + 464);
          *(v25 + 472) = *(v26 + 472);
LABEL_166:
          *(v25 + 480) = *(v26 + 480);
          *(v25 + 488) = *(v26 + 488);

          *(v25 + 496) = *(v26 + 496);
          *(v25 + 504) = *(v26 + 504);
          v286 = *(v26 + 512);
          if (*(v25 + 512))
          {
            if (v286)
            {
              v287 = *(v26 + 520);
              *(v25 + 512) = v286;
              *(v25 + 520) = v287;

              goto LABEL_173;
            }
          }

          else if (v286)
          {
            v288 = *(v26 + 520);
            *(v25 + 512) = v286;
            *(v25 + 520) = v288;

            goto LABEL_173;
          }

          *(v25 + 512) = *(v26 + 512);
LABEL_173:
          *(v25 + 528) = *(v26 + 528);
          v289 = *(v26 + 816);
          if (*(v25 + 816))
          {
            if (v289)
            {
              *(v25 + 536) = *(v26 + 536);
              *(v25 + 544) = *(v26 + 544);

              *(v25 + 552) = *(v26 + 552);
              *(v25 + 560) = *(v26 + 560);

              *(v25 + 568) = *(v26 + 568);
              v290 = *(v26 + 576);
              *(v25 + 592) = *(v26 + 592);
              *(v25 + 576) = v290;
              v291 = (v25 + 600);
              v292 = (v26 + 600);
              v293 = *(v25 + 624);
              v294 = *(v26 + 624);
              if (v293 != 1)
              {
                if (v294 == 1)
                {
                  outlined destroy of AccessibilityValueStorage(v25 + 600);
                  v304 = *(v26 + 616);
                  v303 = *(v26 + 632);
                  *v291 = *v292;
                  *(v25 + 616) = v304;
                  *(v25 + 632) = v303;
                }

                else
                {
                  if (v293)
                  {
                    if (v294)
                    {
                      __swift_assign_boxed_opaque_existential_1((v25 + 600), (v26 + 600));
                    }

                    else
                    {
                      outlined destroy of AnyAccessibilityValue(v25 + 600);
                      v322 = *(v26 + 632);
                      v323 = *(v26 + 616);
                      *v291 = *v292;
                      *(v25 + 616) = v323;
                      *(v25 + 632) = v322;
                    }
                  }

                  else if (v294)
                  {
                    *(v25 + 624) = v294;
                    *(v25 + 632) = *(v26 + 632);
                    (**(v294 - 8))(v25 + 600, v26 + 600);
                  }

                  else
                  {
                    v324 = *v292;
                    v325 = *(v26 + 616);
                    *(v25 + 632) = *(v26 + 632);
                    *v291 = v324;
                    *(v25 + 616) = v325;
                  }

                  *(v25 + 640) = *(v26 + 640);
                }

                goto LABEL_205;
              }

              if (v294)
              {
                if (v294 == 1)
                {
                  v295 = *v292;
                  v296 = *(v26 + 632);
                  *(v25 + 616) = *(v26 + 616);
                  *(v25 + 632) = v296;
                  *v291 = v295;
LABEL_205:
                  v326 = *(v26 + 648);
                  *(v25 + 656) = *(v26 + 656);
                  *(v25 + 648) = v326;
                  v327 = (v25 + 664);
                  v328 = (v26 + 664);
                  v329 = *(v26 + 776);
                  if (*(v25 + 776) == 1)
                  {
                    if (v329 == 1)
                    {
                      v330 = *(v26 + 680);
                      *v327 = *v328;
                      *(v25 + 680) = v330;
                      v331 = *(v26 + 696);
                      v332 = *(v26 + 712);
                      v333 = *(v26 + 744);
                      *(v25 + 728) = *(v26 + 728);
                      *(v25 + 744) = v333;
                      *(v25 + 696) = v331;
                      *(v25 + 712) = v332;
                      v334 = *(v26 + 760);
                      v335 = *(v26 + 776);
                      v336 = *(v26 + 792);
                      *(v25 + 808) = *(v26 + 808);
                      *(v25 + 776) = v335;
                      *(v25 + 792) = v336;
                      *(v25 + 760) = v334;
                    }

                    else
                    {
                      v344 = *v328;
                      *(v25 + 672) = *(v26 + 672);
                      *v327 = v344;
                      v345 = *(v26 + 680);
                      *(v25 + 688) = *(v26 + 688);
                      *(v25 + 680) = v345;
                      *(v25 + 689) = *(v26 + 689);
                      *(v25 + 690) = *(v26 + 690);
                      *(v25 + 691) = *(v26 + 691);
                      *(v25 + 692) = *(v26 + 692);
                      *(v25 + 696) = *(v26 + 696);
                      *(v25 + 704) = *(v26 + 704);
                      *(v25 + 712) = *(v26 + 712);
                      *(v25 + 720) = *(v26 + 720);
                      *(v25 + 728) = *(v26 + 728);
                      *(v25 + 736) = *(v26 + 736);
                      *(v25 + 744) = *(v26 + 744);
                      *(v25 + 745) = *(v26 + 745);
                      *(v25 + 752) = *(v26 + 752);
                      *(v25 + 760) = *(v26 + 760);
                      *(v25 + 768) = *(v26 + 768);
                      *(v25 + 776) = *(v26 + 776);
                      v346 = *(v26 + 784);
                      *(v25 + 800) = *(v26 + 800);
                      *(v25 + 784) = v346;
                      *(v25 + 808) = *(v26 + 808);
                    }
                  }

                  else if (v329 == 1)
                  {
                    outlined destroy of AccessibilityTextLayoutProperties(v25 + 664);
                    v337 = *(v26 + 680);
                    *v327 = *v328;
                    *(v25 + 680) = v337;
                    v338 = *(v26 + 744);
                    v340 = *(v26 + 696);
                    v339 = *(v26 + 712);
                    *(v25 + 728) = *(v26 + 728);
                    *(v25 + 744) = v338;
                    *(v25 + 696) = v340;
                    *(v25 + 712) = v339;
                    v342 = *(v26 + 776);
                    v341 = *(v26 + 792);
                    v343 = *(v26 + 760);
                    *(v25 + 808) = *(v26 + 808);
                    *(v25 + 776) = v342;
                    *(v25 + 792) = v341;
                    *(v25 + 760) = v343;
                  }

                  else
                  {
                    v347 = *v328;
                    *(v25 + 672) = *(v26 + 672);
                    *v327 = v347;
                    v348 = *(v26 + 680);
                    *(v25 + 688) = *(v26 + 688);
                    *(v25 + 680) = v348;
                    *(v25 + 689) = *(v26 + 689);
                    *(v25 + 690) = *(v26 + 690);
                    *(v25 + 691) = *(v26 + 691);
                    *(v25 + 692) = *(v26 + 692);
                    *(v25 + 696) = *(v26 + 696);
                    *(v25 + 704) = *(v26 + 704);
                    *(v25 + 712) = *(v26 + 712);
                    *(v25 + 720) = *(v26 + 720);
                    *(v25 + 728) = *(v26 + 728);
                    *(v25 + 736) = *(v26 + 736);
                    *(v25 + 744) = *(v26 + 744);
                    *(v25 + 745) = *(v26 + 745);
                    *(v25 + 752) = *(v26 + 752);
                    *(v25 + 760) = *(v26 + 760);
                    *(v25 + 768) = *(v26 + 768);
                    *(v25 + 776) = *(v26 + 776);

                    v349 = *(v26 + 784);
                    *(v25 + 800) = *(v26 + 800);
                    *(v25 + 784) = v349;
                    *(v25 + 808) = *(v26 + 808);
                  }

                  *(v25 + 816) = *(v26 + 816);

                  *(v25 + 824) = *(v26 + 824);

                  *(v25 + 832) = *(v26 + 832);

                  goto LABEL_213;
                }

                *(v25 + 624) = v294;
                *(v25 + 632) = *(v26 + 632);
                (**(v294 - 8))(v25 + 600, v26 + 600);
              }

              else
              {
                v320 = *v292;
                v321 = *(v26 + 616);
                *(v25 + 632) = *(v26 + 632);
                *v291 = v320;
                *(v25 + 616) = v321;
              }

              *(v25 + 640) = *(v26 + 640);

              goto LABEL_205;
            }

            outlined destroy of PlatformItemList.Item.Accessibility(v25 + 536);
LABEL_184:
            memcpy((v25 + 536), (v26 + 536), 0x130uLL);
            goto LABEL_213;
          }

          if (!v289)
          {
            goto LABEL_184;
          }

          *(v25 + 536) = *(v26 + 536);
          *(v25 + 544) = *(v26 + 544);
          *(v25 + 552) = *(v26 + 552);
          *(v25 + 560) = *(v26 + 560);
          *(v25 + 568) = *(v26 + 568);
          v297 = *(v26 + 576);
          *(v25 + 592) = *(v26 + 592);
          *(v25 + 576) = v297;
          v298 = (v25 + 600);
          v299 = (v26 + 600);
          v300 = *(v26 + 624);

          if (v300)
          {
            if (v300 == 1)
            {
              v301 = *v299;
              v302 = *(v26 + 632);
              *(v25 + 616) = *(v26 + 616);
              *(v25 + 632) = v302;
              *v298 = v301;
LABEL_193:
              v307 = *(v26 + 648);
              *(v25 + 656) = *(v26 + 656);
              *(v25 + 648) = v307;
              v308 = (v25 + 664);
              v309 = (v26 + 664);
              if (*(v26 + 776) == 1)
              {
                v310 = *(v26 + 680);
                *v308 = *v309;
                *(v25 + 680) = v310;
                v311 = *(v26 + 696);
                v312 = *(v26 + 712);
                v313 = *(v26 + 744);
                *(v25 + 728) = *(v26 + 728);
                *(v25 + 744) = v313;
                *(v25 + 696) = v311;
                *(v25 + 712) = v312;
                v314 = *(v26 + 760);
                v315 = *(v26 + 776);
                v316 = *(v26 + 792);
                *(v25 + 808) = *(v26 + 808);
                *(v25 + 776) = v315;
                *(v25 + 792) = v316;
                *(v25 + 760) = v314;
              }

              else
              {
                v317 = *v309;
                *(v25 + 672) = *(v26 + 672);
                *v308 = v317;
                v318 = *(v26 + 680);
                *(v25 + 688) = *(v26 + 688);
                *(v25 + 680) = v318;
                *(v25 + 689) = *(v26 + 689);
                *(v25 + 690) = *(v26 + 690);
                *(v25 + 691) = *(v26 + 691);
                *(v25 + 692) = *(v26 + 692);
                *(v25 + 696) = *(v26 + 696);
                *(v25 + 704) = *(v26 + 704);
                *(v25 + 712) = *(v26 + 712);
                *(v25 + 720) = *(v26 + 720);
                *(v25 + 728) = *(v26 + 728);
                *(v25 + 736) = *(v26 + 736);
                *(v25 + 744) = *(v26 + 744);
                *(v25 + 745) = *(v26 + 745);
                *(v25 + 752) = *(v26 + 752);
                *(v25 + 760) = *(v26 + 760);
                *(v25 + 768) = *(v26 + 768);
                *(v25 + 776) = *(v26 + 776);
                v319 = *(v26 + 784);
                *(v25 + 800) = *(v26 + 800);
                *(v25 + 784) = v319;
                *(v25 + 808) = *(v26 + 808);
              }

              *(v25 + 816) = *(v26 + 816);
              *(v25 + 824) = *(v26 + 824);
              *(v25 + 832) = *(v26 + 832);

LABEL_213:
              v350 = (v25 + 840);
              v351 = (v26 + 840);
              v352 = *(v25 + 864);
              v353 = *(v26 + 864);
              if (v352 == 1)
              {
                if (v353)
                {
                  if (v353 == 1)
                  {
                    v354 = *v351;
                    v355 = *(v26 + 856);
                    v356 = *(v26 + 872);
                    *(v25 + 888) = *(v26 + 888);
                    *(v25 + 856) = v355;
                    *(v25 + 872) = v356;
                    *v350 = v354;
                    goto LABEL_237;
                  }

                  *(v25 + 864) = v353;
                  *(v25 + 872) = *(v26 + 872);
                  (**(v353 - 8))(v25 + 840, v26 + 840);
                }

                else
                {
                  v360 = *v351;
                  v361 = *(v26 + 856);
                  *(v25 + 872) = *(v26 + 872);
                  *v350 = v360;
                  *(v25 + 856) = v361;
                }

                v362 = *(v26 + 880);
                if (!v362)
                {
                  goto LABEL_236;
                }
              }

              else
              {
                if (v353 == 1)
                {
                  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v25 + 840);
                  v358 = *(v26 + 856);
                  v357 = *(v26 + 872);
                  v359 = *v351;
                  *(v25 + 888) = *(v26 + 888);
                  *(v25 + 856) = v358;
                  *(v25 + 872) = v357;
                  *v350 = v359;
                  goto LABEL_237;
                }

                if (v352)
                {
                  if (v353)
                  {
                    __swift_assign_boxed_opaque_existential_1((v25 + 840), (v26 + 840));
                  }

                  else
                  {
                    outlined destroy of AnyNavigationLinkPresentedValue(v25 + 840);
                    v363 = *(v26 + 872);
                    v364 = *(v26 + 856);
                    *v350 = *v351;
                    *(v25 + 856) = v364;
                    *(v25 + 872) = v363;
                  }
                }

                else if (v353)
                {
                  *(v25 + 864) = v353;
                  *(v25 + 872) = *(v26 + 872);
                  (**(v353 - 8))(v25 + 840, v26 + 840);
                }

                else
                {
                  v365 = *v351;
                  v366 = *(v26 + 856);
                  *(v25 + 872) = *(v26 + 872);
                  *v350 = v365;
                  *(v25 + 856) = v366;
                }

                v362 = *(v26 + 880);
                if (*(v25 + 880))
                {
                  if (v362)
                  {
                    v367 = *(v26 + 888);
                    *(v25 + 880) = v362;
                    *(v25 + 888) = v367;

                    goto LABEL_237;
                  }

                  goto LABEL_236;
                }

                if (!v362)
                {
LABEL_236:
                  *(v25 + 880) = *(v26 + 880);
LABEL_237:
                  v369 = *(v25 + 896);
                  v370 = *(v26 + 896);
                  *(v25 + 896) = v370;
                  v371 = v370;

                  *(v25 + 904) = *(v26 + 904);
                  *(v25 + 912) = *(v26 + 912);

                  *(v25 + 920) = *(v26 + 920);
                  *(v25 + 928) = *(v26 + 928);

                  *(v25 + 936) = *(v26 + 936);

                  *(v25 + 944) = *(v26 + 944);

                  *(v25 + 952) = *(v26 + 952);
                  *(v25 + 953) = *(v26 + 953);
                  *(v25 + 954) = *(v26 + 954);
                  v372 = *(v27 + 112);
                  v373 = (v25 + v372);
                  v374 = (v26 + v372);
                  v375 = type metadata accessor for CommandOperation();
                  v376 = *(v375 - 8);
                  v377 = *(v376 + 48);
                  v378 = v377(v373, 1, v375);
                  v379 = v377(v374, 1, v375);
                  if (v378)
                  {
                    if (!v379)
                    {
                      v435 = v374;
                      v439 = v5;
                      *v373 = *v374;
                      v380 = *(v375 + 20);
                      v381 = &v373[v380];
                      v382 = &v374[v380];
                      v383 = *v382;
                      v384 = *(v382 + 1);
                      v385 = v382[16];
                      outlined copy of Text.Storage(*v382, v384, v385);
                      *v381 = v383;
                      *(v381 + 1) = v384;
                      v381[16] = v385;
                      *(v381 + 3) = *(v382 + 3);
                      v386 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v387 = type metadata accessor for UUID();
                      __dstd = *(*(v387 - 8) + 16);

                      (__dstd)(&v381[v386], &v382[v386], v387);
                      v388 = *(v375 + 24);
                      v389 = &v373[v388];
                      v390 = &v435[v388];
                      if (*v390)
                      {
                        v391 = v390[1];
                        *v389 = *v390;
                        v389[1] = v391;
                      }

                      else
                      {
                        *v389 = *v390;
                      }

                      v5 = v439;
                      v393 = v442;
                      (*(v376 + 56))(v373, 0, 1, v375);
                      goto LABEL_249;
                    }
                  }

                  else
                  {
                    if (!v379)
                    {
                      v440 = v5;
                      *v373 = *v374;
                      v394 = *(v375 + 20);
                      v395 = &v373[v394];
                      v396 = &v374[v394];
                      v397 = *&v374[v394];
                      v398 = *&v374[v394 + 8];
                      v399 = v374[v394 + 16];
                      outlined copy of Text.Storage(v397, v398, v399);
                      v400 = *v395;
                      v401 = *(v395 + 1);
                      v402 = v395[16];
                      *v395 = v397;
                      *(v395 + 1) = v398;
                      v395[16] = v399;
                      outlined consume of Text.Storage(v400, v401, v402);
                      *(v395 + 3) = *(v396 + 3);

                      v403 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v404 = type metadata accessor for UUID();
                      (*(*(v404 - 8) + 24))(&v395[v403], &v396[v403], v404);
                      v405 = *(v375 + 24);
                      v406 = &v373[v405];
                      v407 = &v374[v405];
                      v408 = *&v373[v405];
                      v409 = *&v374[v405];
                      if (v408)
                      {
                        v5 = v440;
                        v393 = v442;
                        if (v409)
                        {
                          v410 = *(v407 + 1);
                          *v406 = v409;
                          v406[1] = v410;

                          goto LABEL_249;
                        }
                      }

                      else
                      {
                        v5 = v440;
                        v393 = v442;
                        if (v409)
                        {
                          v412 = *(v407 + 1);
                          *v406 = v409;
                          v406[1] = v412;

                          goto LABEL_249;
                        }
                      }

                      *v406 = *v407;
                      goto LABEL_249;
                    }

                    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v373, type metadata accessor for CommandOperation);
                  }

                  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                  memcpy(v373, v374, *(*(v392 - 8) + 64));
                  v393 = v442;
LABEL_249:
                  *(v25 + v393[29]) = *(v26 + v393[29]);
                  *(v25 + v393[30]) = *(v26 + v393[30]);
                  *(v25 + v393[31]) = *(v26 + v393[31]);
                  *(v25 + v393[32]) = *(v26 + v393[32]);
                  *(v25 + v393[33]) = *(v26 + v393[33]);
                  *(v25 + v393[34]) = *(v26 + v393[34]);

                  return v5;
                }
              }

              v368 = *(v26 + 888);
              *(v25 + 880) = v362;
              *(v25 + 888) = v368;

              goto LABEL_237;
            }

            *(v25 + 624) = v300;
            *(v25 + 632) = *(v26 + 632);
            (**(v300 - 8))(v25 + 600, v26 + 600, v300);
          }

          else
          {
            v305 = *v299;
            v306 = *(v26 + 616);
            *(v25 + 632) = *(v26 + 632);
            *v298 = v305;
            *(v25 + 616) = v306;
          }

          *(v25 + 640) = *(v26 + 640);

          goto LABEL_193;
        }
      }

      else if (v280)
      {
LABEL_162:
        v285 = *(v26 + 456);
        *(v25 + 448) = v280;
        *(v25 + 456) = v285;

        goto LABEL_165;
      }

LABEL_164:
      *(v25 + 448) = *(v26 + 448);
      goto LABEL_165;
    }

    if (!v213)
    {
      outlined destroy of Image.NamedResolved(v25 + 256);
      v221 = *(v26 + 272);
      v220 = *(v26 + 288);
      *(v25 + 256) = *(v26 + 256);
      *(v25 + 272) = v221;
      *(v25 + 288) = v220;
      goto LABEL_124;
    }

    *(v25 + 256) = *(v26 + 256);
    *(v25 + 264) = *(v26 + 264);

    v214 = *(v25 + 272);
    v215 = *(v26 + 272);
    if (v214 >= 2)
    {
      if (v215 >= 2)
      {
        *(v25 + 272) = v215;
        v224 = v215;

        goto LABEL_123;
      }

      v215 = *(v26 + 272);
    }

    else if (v215 >= 2)
    {
      *(v25 + 272) = v215;
      v216 = v215;
LABEL_123:
      v225 = *(v26 + 280);
      *(v25 + 284) = *(v26 + 284);
      *(v25 + 280) = v225;
      *(v25 + 285) = *(v26 + 285);
      *(v25 + 286) = *(v26 + 286);
      *(v25 + 288) = *(v26 + 288);

      *(v25 + 296) = *(v26 + 296);

      goto LABEL_124;
    }

    *(v25 + 272) = v215;
    goto LABEL_123;
  }

  if (v31)
  {
LABEL_27:
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v25, v26, *(*(v49 - 8) + 64));
    return v5;
  }

  v432 = v28;
  v32 = *v26;
  *v25 = *v26;
  v33 = *(v26 + 8);
  *(v25 + 8) = v33;
  *(v25 + 16) = *(v26 + 16);
  *(v25 + 24) = *(v26 + 24);
  *(v25 + 32) = *(v26 + 32);
  *(v25 + 40) = *(v26 + 40);
  *(v25 + 48) = *(v26 + 48);
  *(v25 + 56) = *(v26 + 56);
  v34 = *(v26 + 192);
  v35 = v32;
  v36 = v33;

  if (v34 >> 1 != 4294967294)
  {
    v70 = *(v26 + 72);
    if (v70 == 255)
    {
      v81 = *(v26 + 64);
      *(v25 + 72) = *(v26 + 72);
      *(v25 + 64) = v81;
    }

    else
    {
      v71 = *(v26 + 64);
      outlined copy of GraphicsImage.Contents(v71, *(v26 + 72));
      *(v25 + 64) = v71;
      *(v25 + 72) = v70;
    }

    *(v25 + 80) = *(v26 + 80);
    *(v25 + 88) = *(v26 + 88);
    *(v25 + 104) = *(v26 + 104);
    v82 = *(v26 + 108);
    *(v25 + 121) = *(v26 + 121);
    *(v25 + 108) = v82;
    v83 = *(v26 + 136);
    v84 = *(v26 + 152);
    *(v25 + 168) = *(v26 + 168);
    *(v25 + 152) = v84;
    *(v25 + 136) = v83;
    *(v25 + 169) = *(v26 + 169);
    *(v25 + 170) = *(v26 + 170);
    *(v25 + 171) = *(v26 + 171);
    v85 = *(v26 + 192);
    if (v85 >> 1 == 0xFFFFFFFF)
    {
      v86 = *(v26 + 192);
      *(v25 + 176) = *(v26 + 176);
      *(v25 + 192) = v86;
    }

    else
    {
      v87 = *(v26 + 176);
      v88 = *(v26 + 184);
      v89 = *(v26 + 200);
      outlined copy of AccessibilityImageLabel(v87, v88, *(v26 + 192));
      *(v25 + 176) = v87;
      *(v25 + 184) = v88;
      *(v25 + 192) = v85;
      *(v25 + 200) = v89;
    }

    *(v25 + 208) = *(v26 + 208);
    *(v25 + 216) = *(v26 + 216);
    *(v25 + 224) = *(v26 + 224);
    *(v25 + 225) = *(v26 + 225);
    v90 = *(v26 + 228);
    *(v25 + 232) = *(v26 + 232);
    *(v25 + 228) = v90;
    v91 = *(v26 + 240);
    *(v25 + 240) = v91;
    *(v25 + 248) = *(v26 + 248);
    *(v25 + 250) = *(v26 + 250);
    swift_unknownObjectRetain();

    v92 = v91;
    if (*(v26 + 264))
    {
      goto LABEL_22;
    }

LABEL_43:
    v93 = *(v26 + 256);
    v94 = *(v26 + 288);
    *(v25 + 272) = *(v26 + 272);
    *(v25 + 288) = v94;
    *(v25 + 256) = v93;
    goto LABEL_44;
  }

  v37 = *(v26 + 64);
  v38 = *(v26 + 80);
  v39 = *(v26 + 112);
  *(v25 + 96) = *(v26 + 96);
  *(v25 + 112) = v39;
  *(v25 + 64) = v37;
  *(v25 + 80) = v38;
  v40 = *(v26 + 128);
  v41 = *(v26 + 144);
  v42 = *(v26 + 176);
  *(v25 + 160) = *(v26 + 160);
  *(v25 + 176) = v42;
  *(v25 + 128) = v40;
  *(v25 + 144) = v41;
  v43 = *(v26 + 192);
  v44 = *(v26 + 208);
  v45 = *(v26 + 224);
  *(v25 + 235) = *(v26 + 235);
  *(v25 + 208) = v44;
  *(v25 + 224) = v45;
  *(v25 + 192) = v43;
  if (!*(v26 + 264))
  {
    goto LABEL_43;
  }

LABEL_22:
  *(v25 + 256) = *(v26 + 256);
  *(v25 + 264) = *(v26 + 264);
  v46 = *(v26 + 272);

  if (v46 >= 2)
  {
    v47 = v46;
  }

  *(v25 + 272) = v46;
  v48 = *(v26 + 280);
  *(v25 + 284) = *(v26 + 284);
  *(v25 + 280) = v48;
  *(v25 + 285) = *(v26 + 285);
  *(v25 + 286) = *(v26 + 286);
  *(v25 + 288) = *(v26 + 288);
  *(v25 + 296) = *(v26 + 296);

LABEL_44:
  v95 = *(v26 + 336);
  v436 = v5;
  v441 = v27;
  if (v95 >> 2 == 0xFFFFFFFF)
  {
    v96 = *(v26 + 304);
    v97 = *(v26 + 336);
    *(v25 + 320) = *(v26 + 320);
    *(v25 + 336) = v97;
    *(v25 + 304) = v96;
    v98 = *(v26 + 352);
    v99 = *(v26 + 368);
    v100 = *(v26 + 384);
    *(v25 + 400) = *(v26 + 400);
    *(v25 + 368) = v99;
    *(v25 + 384) = v100;
    *(v25 + 352) = v98;
  }

  else
  {
    v101 = *(v26 + 304);
    v102 = *(v26 + 312);
    v103 = *(v26 + 320);
    v104 = *(v26 + 328);
    v106 = *(v26 + 344);
    v105 = *(v26 + 352);
    v107 = *(v26 + 360);
    v413 = *(v26 + 368);
    v414 = *(v26 + 376);
    v418 = *(v26 + 384);
    v422 = *(v26 + 392);
    __dsta = *(v26 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v101, v102, v103, v104, v95, v106, v105, v107, v413, v414, v418, v422, __dsta);
    *(v25 + 304) = v101;
    *(v25 + 312) = v102;
    *(v25 + 320) = v103;
    *(v25 + 328) = v104;
    *(v25 + 336) = v95;
    *(v25 + 344) = v106;
    *(v25 + 352) = v105;
    *(v25 + 360) = v107;
    *(v25 + 368) = v413;
    *(v25 + 376) = v414;
    *(v25 + 384) = v418;
    *(v25 + 392) = v422;
    *(v25 + 400) = __dsta;
  }

  if (*(v26 + 416) == 1)
  {
    *(v25 + 408) = *(v26 + 408);
    v108 = *(v26 + 424);
    v109 = *(v26 + 440);
    v110 = *(v26 + 456);
    *(v25 + 472) = *(v26 + 472);
    *(v25 + 440) = v109;
    *(v25 + 456) = v110;
    *(v25 + 424) = v108;
    goto LABEL_57;
  }

  *(v25 + 408) = *(v26 + 408);
  *(v25 + 409) = *(v26 + 409);
  *(v25 + 410) = *(v26 + 410);
  *(v25 + 411) = *(v26 + 411);
  *(v25 + 412) = *(v26 + 412);
  v111 = *(v26 + 416);
  if (v111)
  {
    v112 = *(v26 + 424);
    *(v25 + 416) = v111;
    *(v25 + 424) = v112;

    v113 = *(v26 + 432);
    if (v113)
    {
      goto LABEL_51;
    }

LABEL_54:
    *(v25 + 432) = *(v26 + 432);
    v115 = *(v26 + 448);
    if (v115)
    {
      goto LABEL_52;
    }

LABEL_55:
    *(v25 + 448) = *(v26 + 448);
    goto LABEL_56;
  }

  *(v25 + 416) = *(v26 + 416);
  v113 = *(v26 + 432);
  if (!v113)
  {
    goto LABEL_54;
  }

LABEL_51:
  v114 = *(v26 + 440);
  *(v25 + 432) = v113;
  *(v25 + 440) = v114;

  v115 = *(v26 + 448);
  if (!v115)
  {
    goto LABEL_55;
  }

LABEL_52:
  v116 = *(v26 + 456);
  *(v25 + 448) = v115;
  *(v25 + 456) = v116;

LABEL_56:
  *(v25 + 464) = *(v26 + 464);
  *(v25 + 472) = *(v26 + 472);
LABEL_57:
  *(v25 + 480) = *(v26 + 480);
  *(v25 + 488) = *(v26 + 488);
  *(v25 + 496) = *(v26 + 496);
  *(v25 + 504) = *(v26 + 504);
  v117 = *(v26 + 512);

  if (v117)
  {
    v118 = *(v26 + 520);
    *(v25 + 512) = v117;
    *(v25 + 520) = v118;
  }

  else
  {
    *(v25 + 512) = *(v26 + 512);
  }

  *(v25 + 528) = *(v26 + 528);
  if (!*(v26 + 816))
  {
    memcpy((v25 + 536), (v26 + 536), 0x130uLL);
    goto LABEL_72;
  }

  *(v25 + 536) = *(v26 + 536);
  *(v25 + 544) = *(v26 + 544);
  *(v25 + 552) = *(v26 + 552);
  *(v25 + 560) = *(v26 + 560);
  *(v25 + 568) = *(v26 + 568);
  v119 = *(v26 + 576);
  *(v25 + 592) = *(v26 + 592);
  *(v25 + 576) = v119;
  v120 = (v25 + 600);
  v121 = (v26 + 600);
  v122 = *(v26 + 624);

  if (!v122)
  {
    v125 = *v121;
    v126 = *(v26 + 616);
    *(v25 + 632) = *(v26 + 632);
    *v120 = v125;
    *(v25 + 616) = v126;
LABEL_67:
    *(v25 + 640) = *(v26 + 640);

    goto LABEL_68;
  }

  if (v122 != 1)
  {
    *(v25 + 624) = v122;
    *(v25 + 632) = *(v26 + 632);
    (**(v122 - 8))(v25 + 600, v26 + 600, v122);
    goto LABEL_67;
  }

  v123 = *v121;
  v124 = *(v26 + 632);
  *(v25 + 616) = *(v26 + 616);
  *(v25 + 632) = v124;
  *v120 = v123;
LABEL_68:
  v127 = *(v26 + 648);
  *(v25 + 656) = *(v26 + 656);
  *(v25 + 648) = v127;
  v128 = (v25 + 664);
  v129 = (v26 + 664);
  if (*(v26 + 776) == 1)
  {
    v130 = *(v26 + 680);
    *v128 = *v129;
    *(v25 + 680) = v130;
    v131 = *(v26 + 696);
    v132 = *(v26 + 712);
    v133 = *(v26 + 744);
    *(v25 + 728) = *(v26 + 728);
    *(v25 + 744) = v133;
    *(v25 + 696) = v131;
    *(v25 + 712) = v132;
    v134 = *(v26 + 760);
    v135 = *(v26 + 776);
    v136 = *(v26 + 792);
    *(v25 + 808) = *(v26 + 808);
    *(v25 + 776) = v135;
    *(v25 + 792) = v136;
    *(v25 + 760) = v134;
  }

  else
  {
    v137 = *v129;
    *(v25 + 672) = *(v26 + 672);
    *v128 = v137;
    v138 = *(v26 + 680);
    *(v25 + 688) = *(v26 + 688);
    *(v25 + 680) = v138;
    *(v25 + 689) = *(v26 + 689);
    *(v25 + 690) = *(v26 + 690);
    *(v25 + 691) = *(v26 + 691);
    *(v25 + 692) = *(v26 + 692);
    *(v25 + 696) = *(v26 + 696);
    *(v25 + 704) = *(v26 + 704);
    *(v25 + 712) = *(v26 + 712);
    *(v25 + 720) = *(v26 + 720);
    *(v25 + 728) = *(v26 + 728);
    *(v25 + 736) = *(v26 + 736);
    *(v25 + 744) = *(v26 + 744);
    *(v25 + 745) = *(v26 + 745);
    *(v25 + 752) = *(v26 + 752);
    *(v25 + 760) = *(v26 + 760);
    *(v25 + 768) = *(v26 + 768);
    *(v25 + 776) = *(v26 + 776);
    v139 = *(v26 + 784);
    *(v25 + 800) = *(v26 + 800);
    *(v25 + 784) = v139;
    *(v25 + 808) = *(v26 + 808);
  }

  *(v25 + 816) = *(v26 + 816);
  *(v25 + 824) = *(v26 + 824);
  *(v25 + 832) = *(v26 + 832);

LABEL_72:
  v140 = (v25 + 840);
  v141 = (v26 + 840);
  v142 = *(v26 + 864);
  if (!v142)
  {
    v146 = *v141;
    v147 = *(v26 + 856);
    *(v25 + 872) = *(v26 + 872);
    *v140 = v146;
    *(v25 + 856) = v147;
    v148 = *(v26 + 880);
    if (!v148)
    {
LABEL_78:
      *(v25 + 880) = *(v26 + 880);
      goto LABEL_79;
    }

LABEL_76:
    v149 = *(v26 + 888);
    *(v25 + 880) = v148;
    *(v25 + 888) = v149;

    goto LABEL_79;
  }

  if (v142 != 1)
  {
    *(v25 + 864) = v142;
    *(v25 + 872) = *(v26 + 872);
    (**(v142 - 8))(v140, v141);
    v148 = *(v26 + 880);
    if (!v148)
    {
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v143 = *v141;
  v144 = *(v26 + 856);
  v145 = *(v26 + 872);
  *(v25 + 888) = *(v26 + 888);
  *(v25 + 856) = v144;
  *(v25 + 872) = v145;
  *v140 = v143;
LABEL_79:
  v150 = *(v26 + 896);
  *(v25 + 896) = v150;
  *(v25 + 904) = *(v26 + 904);
  *(v25 + 912) = *(v26 + 912);
  *(v25 + 920) = *(v26 + 920);
  *(v25 + 928) = *(v26 + 928);
  *(v25 + 936) = *(v26 + 936);
  *(v25 + 944) = *(v26 + 944);
  *(v25 + 952) = *(v26 + 952);
  *(v25 + 953) = *(v26 + 953);
  *(v25 + 954) = *(v26 + 954);
  v151 = v441[28];
  __dst = (v25 + v151);
  v152 = (v26 + v151);
  v153 = type metadata accessor for CommandOperation();
  v419 = *(v153 - 8);
  v423 = *(v419 + 48);
  v154 = v150;

  if (v423(v152, 1, v153))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(__dst, v152, *(*(v155 - 8) + 64));
    v156 = v432;
    v5 = v436;
    v157 = v441;
  }

  else
  {
    *__dst = *v152;
    v158 = *(v153 + 20);
    v159 = &__dst[v158];
    v160 = &v152[v158];
    v424 = v152;
    v161 = *&v152[v158];
    v162 = *&v152[v158 + 8];
    v163 = v153;
    v164 = v160[16];
    outlined copy of Text.Storage(v161, v162, v164);
    *v159 = v161;
    *(v159 + 1) = v162;
    v159[16] = v164;
    *(v159 + 3) = *(v160 + 3);
    v165 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v166 = type metadata accessor for UUID();
    v415 = *(*(v166 - 8) + 16);

    v415(&v159[v165], &v160[v165], v166);
    v167 = *(v163 + 24);
    v168 = &__dst[v167];
    v169 = &v424[v167];
    if (*v169)
    {
      v170 = v169[1];
      *v168 = *v169;
      v168[1] = v170;
    }

    else
    {
      *v168 = *v169;
    }

    v156 = v432;
    v5 = v436;
    v157 = v441;
    (*(v419 + 56))(__dst, 0, 1, v163);
  }

  *(v25 + v157[29]) = *(v26 + v157[29]);
  *(v25 + v157[30]) = *(v26 + v157[30]);
  *(v25 + v157[31]) = *(v26 + v157[31]);
  *(v25 + v157[32]) = *(v26 + v157[32]);
  *(v25 + v157[33]) = *(v26 + v157[33]);
  *(v25 + v157[34]) = *(v26 + v157[34]);
  v177 = *(v156 + 56);

  v177(v25, 0, 1, v157);
  return v5;
}

uint64_t initializeWithTake for ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectWeakTakeInit();
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a3 + 32);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for PlatformItemList.Item();
  v11 = *(v10 - 1);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v9[1];
    *v8 = *v9;
    v8[1] = v13;
    *(v8 + 32) = *(v9 + 32);
    *(v8 + 40) = *(v9 + 40);
    *(v8 + 56) = *(v9 + 56);
    v14 = v9[13];
    v8[12] = v9[12];
    v8[13] = v14;
    v8[14] = v9[14];
    *(v8 + 235) = *(v9 + 235);
    v15 = v9[9];
    v8[8] = v9[8];
    v8[9] = v15;
    v16 = v9[11];
    v8[10] = v9[10];
    v8[11] = v16;
    v17 = v9[5];
    v8[4] = v9[4];
    v8[5] = v17;
    v18 = v9[7];
    v8[6] = v9[6];
    v8[7] = v18;
    v19 = v9[17];
    v8[16] = v9[16];
    v8[17] = v19;
    v20 = v9[23];
    v8[22] = v9[22];
    v8[23] = v20;
    v8[24] = v9[24];
    *(v8 + 50) = *(v9 + 50);
    v21 = v9[19];
    v8[18] = v9[18];
    v8[19] = v21;
    v22 = v9[21];
    v8[20] = v9[20];
    v8[21] = v22;
    v23 = *(v9 + 456);
    *(v8 + 440) = *(v9 + 440);
    *(v8 + 456) = v23;
    *(v8 + 472) = *(v9 + 472);
    v24 = *(v9 + 424);
    *(v8 + 408) = *(v9 + 408);
    *(v8 + 424) = v24;
    v8[30] = v9[30];
    *(v8 + 489) = *(v9 + 489);
    v8[32] = v9[32];
    *(v8 + 528) = *(v9 + 528);
    memcpy(v8 + 536, v9 + 536, 0x130uLL);
    v25 = *(v9 + 856);
    *(v8 + 840) = *(v9 + 840);
    *(v8 + 856) = v25;
    *(v8 + 872) = *(v9 + 872);
    *(v8 + 111) = *(v9 + 111);
    *(v8 + 112) = *(v9 + 112);
    *(v8 + 904) = *(v9 + 904);
    *(v8 + 920) = *(v9 + 920);
    *(v8 + 117) = *(v9 + 117);
    *(v8 + 118) = *(v9 + 118);
    *(v8 + 952) = *(v9 + 952);
    *(v8 + 953) = *(v9 + 953);
    v26 = v10[28];
    v27 = v8 + v26;
    v28 = v9 + v26;
    v29 = type metadata accessor for CommandOperation();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v28, 1, v29))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(v27, v28, *(*(v31 - 8) + 64));
    }

    else
    {
      *v27 = *v28;
      v32 = *(v29 + 20);
      v33 = &v27[v32];
      v41 = v11;
      v34 = &v28[v32];
      v35 = *&v28[v32 + 16];
      *v33 = *&v28[v32];
      *(v33 + 1) = v35;
      v40 = v27;
      v36 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v37 = type metadata accessor for UUID();
      v38 = &v34[v36];
      v11 = v41;
      (*(*(v37 - 8) + 32))(&v33[v36], v38, v37);
      *&v40[*(v29 + 24)] = *&v28[*(v29 + 24)];
      (*(v30 + 56))();
    }

    *(v8 + v10[29]) = *(v9 + v10[29]);
    *(v8 + v10[30]) = *(v9 + v10[30]);
    *(v8 + v10[31]) = *(v9 + v10[31]);
    *(v8 + v10[32]) = *(v9 + v10[32]);
    *(v8 + v10[33]) = *(v9 + v10[33]);
    *(v8 + v10[34]) = *(v9 + v10[34]);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  return a1;
}

uint64_t assignWithTake for ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 != 255)
  {
    v7 = *(a2 + 8);
    if (v7 != 255)
    {
      v8 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v7 & 1;
      outlined consume of ResolvableCLKTextProvider.FontStorage(v8, v6 & 1);
      goto LABEL_6;
    }

    outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(a1);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  v9 = *(a1 + 24);
  if (v9 != 254)
  {
    v10 = *(a2 + 24);
    if (v10 == 254)
    {
      outlined destroy of ToolbarStorage.NavigationProperties.Actions(a1 + 16);
    }

    else if (v9 != 255)
    {
      if (v10 != 255)
      {
        v11 = *(a1 + 16);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = v10 & 1;
        outlined consume of PlatformItemCollection.Storage(v11, v9 & 1);
        goto LABEL_14;
      }

      outlined destroy of PlatformItemCollection(a1 + 16);
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
LABEL_14:
  swift_unknownObjectWeakTakeAssign();
  v12 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);

  v13 = *(a3 + 32);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = type metadata accessor for PlatformItemList.Item();
  v17 = *(v16 - 1);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, v16);
  v20 = v18(v15, 1, v16);
  if (!v19)
  {
    if (v20)
    {
      outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v14, type metadata accessor for PlatformItemList.Item);
      goto LABEL_20;
    }

    v41 = *v14;
    *v14 = *v15;

    v42 = *(v14 + 8);
    *(v14 + 8) = *(v15 + 8);

    v43 = *(v15 + 24);
    *(v14 + 16) = *(v15 + 16);
    *(v14 + 24) = v43;

    *(v14 + 32) = *(v15 + 32);
    v44 = *(v15 + 48);
    *(v14 + 40) = *(v15 + 40);
    *(v14 + 48) = v44;

    *(v14 + 56) = *(v15 + 56);
    if (*(v14 + 192) >> 1 == 4294967294)
    {
LABEL_24:
      v45 = *(v15 + 208);
      *(v14 + 192) = *(v15 + 192);
      *(v14 + 208) = v45;
      *(v14 + 224) = *(v15 + 224);
      *(v14 + 235) = *(v15 + 235);
      v46 = *(v15 + 144);
      *(v14 + 128) = *(v15 + 128);
      *(v14 + 144) = v46;
      v47 = *(v15 + 176);
      *(v14 + 160) = *(v15 + 160);
      *(v14 + 176) = v47;
      v48 = *(v15 + 80);
      *(v14 + 64) = *(v15 + 64);
      *(v14 + 80) = v48;
      v49 = *(v15 + 112);
      *(v14 + 96) = *(v15 + 96);
      *(v14 + 112) = v49;
      if (!*(v14 + 264))
      {
        goto LABEL_43;
      }

LABEL_39:
      v67 = *(v15 + 264);
      if (v67)
      {
        *(v14 + 256) = *(v15 + 256);
        *(v14 + 264) = v67;

        v68 = *(v14 + 272);
        v69 = *(v15 + 272);
        if (v68 >= 2)
        {
          if (v69 >= 2)
          {
            *(v14 + 272) = v69;
          }

          else
          {

            *(v14 + 272) = *(v15 + 272);
          }
        }

        else
        {
          *(v14 + 272) = v69;
        }

        *(v14 + 280) = *(v15 + 280);
        *(v14 + 284) = *(v15 + 284);
        *(v14 + 286) = *(v15 + 286);
        *(v14 + 288) = *(v15 + 288);

        *(v14 + 296) = *(v15 + 296);

LABEL_48:
        v71 = *(v14 + 336);
        if (v71 >> 2 != 0xFFFFFFFF)
        {
          v72 = *(v15 + 336);
          if (v72 >> 2 != 0xFFFFFFFF)
          {
            v76 = *(v14 + 304);
            v77 = *(v14 + 312);
            v78 = *(v14 + 320);
            v79 = *(v14 + 328);
            v80 = *(v14 + 344);
            v81 = *(v14 + 352);
            v82 = *(v14 + 360);
            v83 = *(v14 + 368);
            v84 = *(v14 + 384);
            v85 = *(v14 + 400);
            v86 = *(v15 + 320);
            *(v14 + 304) = *(v15 + 304);
            *(v14 + 320) = v86;
            *(v14 + 336) = v72;
            *(v14 + 344) = *(v15 + 344);
            *(v14 + 360) = *(v15 + 360);
            *(v14 + 376) = *(v15 + 376);
            *(v14 + 392) = *(v15 + 392);
            outlined consume of PlatformItemList.Item.SystemItem(v76, v77, v78, v79, v71, v80, v81, v82, v83, *(&v83 + 1), v84, SBYTE8(v84), v85);
LABEL_53:
            v87 = (v15 + 408);
            v88 = *(v14 + 416);
            if (v88 == 1)
            {
LABEL_56:
              v90 = *(v15 + 456);
              *(v14 + 440) = *(v15 + 440);
              *(v14 + 456) = v90;
              *(v14 + 472) = *(v15 + 472);
              v91 = *(v15 + 424);
              *(v14 + 408) = *v87;
              *(v14 + 424) = v91;
              goto LABEL_79;
            }

            v89 = *(v15 + 416);
            if (v89 == 1)
            {
              outlined destroy of PlatformItemList.Item.SelectionBehavior(v14 + 408);
              goto LABEL_56;
            }

            *(v14 + 408) = *v87;
            *(v14 + 409) = *(v15 + 409);
            *(v14 + 410) = *(v15 + 410);
            *(v14 + 411) = *(v15 + 411);
            *(v14 + 412) = *(v15 + 412);
            if (v88)
            {
              if (v89)
              {
                v92 = *(v15 + 424);
                *(v14 + 416) = v89;
                *(v14 + 424) = v92;

                goto LABEL_64;
              }
            }

            else if (v89)
            {
              v93 = *(v15 + 424);
              *(v14 + 416) = v89;
              *(v14 + 424) = v93;
              goto LABEL_64;
            }

            *(v14 + 416) = *(v15 + 416);
LABEL_64:
            v94 = *(v15 + 432);
            if (*(v14 + 432))
            {
              if (v94)
              {
                v95 = *(v15 + 440);
                *(v14 + 432) = v94;
                *(v14 + 440) = v95;

                goto LABEL_71;
              }
            }

            else if (v94)
            {
              v96 = *(v15 + 440);
              *(v14 + 432) = v94;
              *(v14 + 440) = v96;
              goto LABEL_71;
            }

            *(v14 + 432) = *(v15 + 432);
LABEL_71:
            v97 = *(v15 + 448);
            if (*(v14 + 448))
            {
              if (v97)
              {
                v98 = *(v15 + 456);
                *(v14 + 448) = v97;
                *(v14 + 456) = v98;

LABEL_78:
                *(v14 + 464) = *(v15 + 464);
                *(v14 + 472) = *(v15 + 472);
LABEL_79:
                v100 = *(v15 + 488);
                *(v14 + 480) = *(v15 + 480);
                *(v14 + 488) = v100;

                *(v14 + 496) = *(v15 + 496);
                *(v14 + 504) = *(v15 + 504);
                v101 = *(v15 + 512);
                if (*(v14 + 512))
                {
                  if (v101)
                  {
                    v102 = *(v15 + 520);
                    *(v14 + 512) = v101;
                    *(v14 + 520) = v102;

                    goto LABEL_86;
                  }
                }

                else if (v101)
                {
                  v103 = *(v15 + 520);
                  *(v14 + 512) = v101;
                  *(v14 + 520) = v103;
                  goto LABEL_86;
                }

                *(v14 + 512) = *(v15 + 512);
LABEL_86:
                *(v14 + 528) = *(v15 + 528);
                if (*(v14 + 816))
                {
                  if (*(v15 + 816))
                  {
                    *(v14 + 536) = *(v15 + 536);
                    *(v14 + 544) = *(v15 + 544);

                    *(v14 + 552) = *(v15 + 552);
                    *(v14 + 560) = *(v15 + 560);

                    *(v14 + 568) = *(v15 + 568);
                    *(v14 + 576) = *(v15 + 576);
                    *(v14 + 592) = *(v15 + 592);
                    v104 = (v14 + 600);
                    v105 = (v15 + 600);
                    v106 = *(v14 + 624);
                    if (v106 != 1)
                    {
                      v107 = *(v15 + 624);
                      if (v107 != 1)
                      {
                        if (v106)
                        {
                          v109 = v14 + 600;
                          if (v107)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v109);
                          }

                          else
                          {
                            outlined destroy of AnyAccessibilityValue(v109);
                          }
                        }

                        v110 = *(v15 + 616);
                        *v104 = *v105;
                        *(v14 + 616) = v110;
                        *(v14 + 632) = *(v15 + 632);
                        *(v14 + 640) = *(v15 + 640);

LABEL_99:
                        *(v14 + 648) = *(v15 + 648);
                        *(v14 + 656) = *(v15 + 656);
                        v111 = (v14 + 664);
                        v112 = (v15 + 664);
                        if (*(v14 + 776) != 1)
                        {
                          v113 = *(v15 + 776);
                          if (v113 != 1)
                          {
                            *v111 = *v112;
                            *(v14 + 672) = *(v15 + 672);
                            *(v14 + 680) = *(v15 + 680);
                            *(v14 + 688) = *(v15 + 688);
                            *(v14 + 689) = *(v15 + 689);
                            *(v14 + 691) = *(v15 + 691);
                            *(v14 + 692) = *(v15 + 692);
                            *(v14 + 696) = *(v15 + 696);
                            v118 = *(v15 + 720);
                            *(v14 + 704) = *(v15 + 704);
                            *(v14 + 720) = v118;
                            *(v14 + 736) = *(v15 + 736);
                            *(v14 + 744) = *(v15 + 744);
                            *(v14 + 745) = *(v15 + 745);
                            *(v14 + 752) = *(v15 + 752);
                            *(v14 + 768) = *(v15 + 768);
                            *(v14 + 776) = v113;

                            *(v14 + 784) = *(v15 + 784);
                            *(v14 + 800) = *(v15 + 800);
                            *(v14 + 808) = *(v15 + 808);
                            goto LABEL_104;
                          }

                          outlined destroy of AccessibilityTextLayoutProperties(v14 + 664);
                        }

                        v114 = *(v15 + 776);
                        *(v14 + 760) = *(v15 + 760);
                        *(v14 + 776) = v114;
                        *(v14 + 792) = *(v15 + 792);
                        *(v14 + 808) = *(v15 + 808);
                        v115 = *(v15 + 712);
                        *(v14 + 696) = *(v15 + 696);
                        *(v14 + 712) = v115;
                        v116 = *(v15 + 744);
                        *(v14 + 728) = *(v15 + 728);
                        *(v14 + 744) = v116;
                        v117 = *(v15 + 680);
                        *v111 = *v112;
                        *(v14 + 680) = v117;
LABEL_104:
                        *(v14 + 816) = *(v15 + 816);

                        *(v14 + 824) = *(v15 + 824);

                        *(v14 + 832) = *(v15 + 832);

LABEL_105:
                        v119 = (v14 + 840);
                        v120 = (v15 + 840);
                        v121 = *(v14 + 864);
                        if (v121 == 1)
                        {
LABEL_108:
                          v123 = *(v15 + 856);
                          *v119 = *v120;
                          *(v14 + 856) = v123;
                          *(v14 + 872) = *(v15 + 872);
                          *(v14 + 888) = *(v15 + 888);
                          goto LABEL_109;
                        }

                        v122 = *(v15 + 864);
                        if (v122 == 1)
                        {
                          outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v14 + 840);
                          goto LABEL_108;
                        }

                        if (v121)
                        {
                          v136 = v14 + 840;
                          if (v122)
                          {
                            __swift_destroy_boxed_opaque_existential_1(v136);
                          }

                          else
                          {
                            outlined destroy of AnyNavigationLinkPresentedValue(v136);
                          }
                        }

                        v157 = *(v15 + 856);
                        *v119 = *v120;
                        *(v14 + 856) = v157;
                        *(v14 + 872) = *(v15 + 872);
                        v158 = *(v15 + 880);
                        if (*(v14 + 880))
                        {
                          if (v158)
                          {
                            v159 = *(v15 + 888);
                            *(v14 + 880) = v158;
                            *(v14 + 888) = v159;

                            goto LABEL_109;
                          }
                        }

                        else if (v158)
                        {
                          v160 = *(v15 + 888);
                          *(v14 + 880) = v158;
                          *(v14 + 888) = v160;
                          goto LABEL_109;
                        }

                        *(v14 + 880) = *(v15 + 880);
LABEL_109:
                        v124 = *(v14 + 896);
                        *(v14 + 896) = *(v15 + 896);

                        *(v14 + 904) = *(v15 + 904);
                        *(v14 + 912) = *(v15 + 912);

                        *(v14 + 920) = *(v15 + 920);
                        *(v14 + 928) = *(v15 + 928);

                        *(v14 + 936) = *(v15 + 936);

                        *(v14 + 944) = *(v15 + 944);

                        *(v14 + 952) = *(v15 + 952);
                        *(v14 + 953) = *(v15 + 953);
                        v125 = v16[28];
                        v126 = (v14 + v125);
                        v127 = (v15 + v125);
                        v128 = type metadata accessor for CommandOperation();
                        v129 = *(v128 - 8);
                        v130 = *(v129 + 48);
                        v163 = v126;
                        LODWORD(v126) = v130(v126, 1, v128);
                        __src = v127;
                        v131 = v130(v127, 1, v128);
                        if (v126)
                        {
                          if (!v131)
                          {
                            *v163 = *v127;
                            v137 = *(v128 + 20);
                            v138 = &v163[v137];
                            v139 = &v127[v137];
                            v140 = *&v127[v137 + 16];
                            *v138 = *&v127[v137];
                            *(v138 + 1) = v140;
                            v141 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v142 = type metadata accessor for UUID();
                            (*(*(v142 - 8) + 32))(&v138[v141], &v139[v141], v142);
                            *&v163[*(v128 + 24)] = *&v127[*(v128 + 24)];
                            (*(v129 + 56))(v163, 0, 1, v128);
                            goto LABEL_119;
                          }

                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v133 = *(*(v132 - 8) + 64);
                          v134 = v163;
                        }

                        else
                        {
                          if (!v131)
                          {
                            *v163 = *v127;
                            v144 = *(v128 + 20);
                            v145 = &v163[v144];
                            v146 = &v127[v144];
                            LOBYTE(v144) = v127[v144 + 16];
                            v147 = *v145;
                            v148 = *(v145 + 1);
                            v149 = v145[16];
                            *v145 = *v146;
                            v145[16] = v144;
                            outlined consume of Text.Storage(v147, v148, v149);
                            *(v145 + 3) = *(v146 + 3);

                            v150 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                            v151 = type metadata accessor for UUID();
                            (*(*(v151 - 8) + 40))(&v145[v150], &v146[v150], v151);
                            v152 = *(v128 + 24);
                            v153 = &v163[v152];
                            v154 = &__src[v152];
                            v155 = *&__src[v152];
                            if (*v153)
                            {
                              if (v155)
                              {
                                v156 = *(v154 + 1);
                                *v153 = v155;
                                *(v153 + 1) = v156;

                                goto LABEL_119;
                              }
                            }

                            else if (v155)
                            {
                              v161 = *(v154 + 1);
                              *v153 = v155;
                              *(v153 + 1) = v161;
                              goto LABEL_119;
                            }

                            *v153 = *v154;
                            goto LABEL_119;
                          }

                          outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v163, type metadata accessor for CommandOperation);
                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          v133 = *(*(v135 - 8) + 64);
                          v134 = v163;
                        }

                        memcpy(v134, v127, v133);
LABEL_119:
                        *(v14 + v16[29]) = *(v15 + v16[29]);
                        *(v14 + v16[30]) = *(v15 + v16[30]);
                        *(v14 + v16[31]) = *(v15 + v16[31]);
                        *(v14 + v16[32]) = *(v15 + v16[32]);
                        *(v14 + v16[33]) = *(v15 + v16[33]);
                        *(v14 + v16[34]) = *(v15 + v16[34]);

                        return a1;
                      }

                      outlined destroy of AccessibilityValueStorage(v14 + 600);
                    }

                    v108 = *(v15 + 616);
                    *v104 = *v105;
                    *(v14 + 616) = v108;
                    *(v14 + 632) = *(v15 + 632);
                    goto LABEL_99;
                  }

                  outlined destroy of PlatformItemList.Item.Accessibility(v14 + 536);
                }

                memcpy((v14 + 536), (v15 + 536), 0x130uLL);
                goto LABEL_105;
              }
            }

            else if (v97)
            {
              v99 = *(v15 + 456);
              *(v14 + 448) = v97;
              *(v14 + 456) = v99;
              goto LABEL_78;
            }

            *(v14 + 448) = *(v15 + 448);
            goto LABEL_78;
          }

          outlined destroy of PlatformItemList.Item.SystemItem(v14 + 304);
        }

        v73 = *(v15 + 384);
        *(v14 + 368) = *(v15 + 368);
        *(v14 + 384) = v73;
        *(v14 + 400) = *(v15 + 400);
        v74 = *(v15 + 320);
        *(v14 + 304) = *(v15 + 304);
        *(v14 + 320) = v74;
        v75 = *(v15 + 352);
        *(v14 + 336) = *(v15 + 336);
        *(v14 + 352) = v75;
        goto LABEL_53;
      }

      outlined destroy of Image.NamedResolved(v14 + 256);
LABEL_43:
      v70 = *(v15 + 272);
      *(v14 + 256) = *(v15 + 256);
      *(v14 + 272) = v70;
      *(v14 + 288) = *(v15 + 288);
      goto LABEL_48;
    }

    if (*(v15 + 192) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(v14 + 64);
      goto LABEL_24;
    }

    v57 = *(v14 + 72);
    if (v57 != 255)
    {
      v58 = *(v15 + 72);
      if (v58 != 255)
      {
        v59 = *(v14 + 64);
        *(v14 + 64) = *(v15 + 64);
        *(v14 + 72) = v58;
        outlined consume of GraphicsImage.Contents(v59, v57);
        goto LABEL_33;
      }

      outlined destroy of GraphicsImage.Contents(v14 + 64);
    }

    *(v14 + 64) = *(v15 + 64);
    *(v14 + 72) = *(v15 + 72);
LABEL_33:
    *(v14 + 80) = *(v15 + 80);
    *(v14 + 96) = *(v15 + 96);
    *(v14 + 104) = *(v15 + 104);
    *(v14 + 108) = *(v15 + 108);
    *(v14 + 121) = *(v15 + 121);
    *(v14 + 136) = *(v15 + 136);
    *(v14 + 152) = *(v15 + 152);
    *(v14 + 168) = *(v15 + 168);
    *(v14 + 169) = *(v15 + 169);
    v60 = *(v14 + 192);
    *(v14 + 170) = *(v15 + 170);
    if (v60 >> 1 != 0xFFFFFFFF)
    {
      v61 = *(v15 + 192);
      if (v61 >> 1 != 0xFFFFFFFF)
      {
        v63 = *(v15 + 200);
        v64 = *(v14 + 176);
        v65 = *(v14 + 184);
        *(v14 + 176) = *(v15 + 176);
        *(v14 + 192) = v61;
        *(v14 + 200) = v63;
        outlined consume of AccessibilityImageLabel(v64, v65, v60);
LABEL_38:
        *(v14 + 208) = *(v15 + 208);
        swift_unknownObjectRelease();
        *(v14 + 216) = *(v15 + 216);

        *(v14 + 224) = *(v15 + 224);
        *(v14 + 225) = *(v15 + 225);
        *(v14 + 228) = *(v15 + 228);
        *(v14 + 232) = *(v15 + 232);
        v66 = *(v14 + 240);
        *(v14 + 240) = *(v15 + 240);

        *(v14 + 248) = *(v15 + 248);
        *(v14 + 250) = *(v15 + 250);
        if (!*(v14 + 264))
        {
          goto LABEL_43;
        }

        goto LABEL_39;
      }

      outlined destroy of AccessibilityImageLabel(v14 + 176);
    }

    v62 = *(v15 + 192);
    *(v14 + 176) = *(v15 + 176);
    *(v14 + 192) = v62;
    goto LABEL_38;
  }

  if (v20)
  {
LABEL_20:
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v14, v15, *(*(v40 - 8) + 64));
    return a1;
  }

  v21 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v21;
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 40) = *(v15 + 40);
  *(v14 + 56) = *(v15 + 56);
  v22 = *(v15 + 208);
  *(v14 + 192) = *(v15 + 192);
  *(v14 + 208) = v22;
  *(v14 + 224) = *(v15 + 224);
  *(v14 + 235) = *(v15 + 235);
  v23 = *(v15 + 144);
  *(v14 + 128) = *(v15 + 128);
  *(v14 + 144) = v23;
  v24 = *(v15 + 176);
  *(v14 + 160) = *(v15 + 160);
  *(v14 + 176) = v24;
  v25 = *(v15 + 80);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 80) = v25;
  v26 = *(v15 + 112);
  *(v14 + 96) = *(v15 + 96);
  *(v14 + 112) = v26;
  v27 = *(v15 + 272);
  *(v14 + 256) = *(v15 + 256);
  *(v14 + 272) = v27;
  v28 = *(v15 + 368);
  *(v14 + 352) = *(v15 + 352);
  *(v14 + 368) = v28;
  *(v14 + 384) = *(v15 + 384);
  *(v14 + 400) = *(v15 + 400);
  v29 = *(v15 + 304);
  *(v14 + 288) = *(v15 + 288);
  *(v14 + 304) = v29;
  v30 = *(v15 + 336);
  *(v14 + 320) = *(v15 + 320);
  *(v14 + 336) = v30;
  v31 = *(v15 + 456);
  *(v14 + 440) = *(v15 + 440);
  *(v14 + 456) = v31;
  *(v14 + 472) = *(v15 + 472);
  v32 = *(v15 + 424);
  *(v14 + 408) = *(v15 + 408);
  *(v14 + 424) = v32;
  *(v14 + 480) = *(v15 + 480);
  *(v14 + 489) = *(v15 + 489);
  *(v14 + 512) = *(v15 + 512);
  *(v14 + 528) = *(v15 + 528);
  memcpy((v14 + 536), (v15 + 536), 0x130uLL);
  v33 = *(v15 + 856);
  *(v14 + 840) = *(v15 + 840);
  *(v14 + 856) = v33;
  *(v14 + 872) = *(v15 + 872);
  *(v14 + 888) = *(v15 + 888);
  *(v14 + 896) = *(v15 + 896);
  *(v14 + 904) = *(v15 + 904);
  *(v14 + 920) = *(v15 + 920);
  *(v14 + 936) = *(v15 + 936);
  *(v14 + 944) = *(v15 + 944);
  *(v14 + 952) = *(v15 + 952);
  *(v14 + 953) = *(v15 + 953);
  v34 = v16[28];
  v35 = (v14 + v34);
  v36 = (v15 + v34);
  v37 = type metadata accessor for CommandOperation();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v35, v36, *(*(v39 - 8) + 64));
  }

  else
  {
    *v35 = *v36;
    v50 = *(v37 + 20);
    v51 = &v35[v50];
    __srca = v16;
    v52 = &v36[v50];
    v53 = *&v36[v50 + 16];
    *v51 = *&v36[v50];
    *(v51 + 1) = v53;
    v162 = v35;
    v54 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v55 = type metadata accessor for UUID();
    v56 = &v52[v54];
    v16 = __srca;
    (*(*(v55 - 8) + 32))(&v51[v54], v56, v55);
    *&v162[*(v37 + 24)] = *&v36[*(v37 + 24)];
    (*(v38 + 56))();
  }

  *(v14 + v16[29]) = *(v15 + v16[29]);
  *(v14 + v16[30]) = *(v15 + v16[30]);
  *(v14 + v16[31]) = *(v15 + v16[31]);
  *(v14 + v16[32]) = *(v15 + v16[32]);
  *(v14 + v16[33]) = *(v15 + v16[33]);
  *(v14 + v16[34]) = *(v15 + v16[34]);
  (*(v17 + 56))(v14, 0, 1, v16);
  return a1;
}