_OWORD *initializeWithTake for DocumentBaseModifier(_OWORD *a1, _OWORD *a2)
{
  v4 = type metadata accessor for NavigationItemDescription(0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
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
      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
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
        _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
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

char *assignWithTake for DocumentBaseModifier(char *a1, char *a2)
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
      _s7SwiftUI16CommandOperationVWOhTm_2(a1, type metadata accessor for NavigationItemDescription);
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
              _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
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
          _s7SwiftUI16CommandOperationVWOhTm_2(v68, type metadata accessor for PlatformItemList.Item);
LABEL_44:
          _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
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

                              _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
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

                              _s7SwiftUI16CommandOperationVWOhTm_2(v218, type metadata accessor for CommandOperation);
                              _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
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
      _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
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
        _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
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
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v22 = *(*(v21 - 8) + 64);

  return memcpy(a1, a2, v22);
}

void type metadata completion function for DocumentBaseModifier()
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(319, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t specialized URLDocumentHostingController.hostingView<A>(_:willUpdate:)(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>, &type metadata for EnvironmentValues.DefaultToolbarRoleKey, &protocol witness table for EnvironmentValues.DefaultToolbarRoleKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a1 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

id specialized URLDocumentHostingController.hostingView<A>(_:didMoveTo:)(id result, uint64_t a2)
{
  if (a2)
  {
    return [result layoutIfNeeded];
  }

  return result;
}

uint64_t outlined init with copy of NavigationItemDescription?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NavigationItemDescription?(uint64_t a1)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>, StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>, StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>();
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>, StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationTitleKey>, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(255, a4, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, a5);
    v8 = type metadata accessor for ModifiedContent();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, type metadata accessor for _ViewModifier_Content<DocumentBaseModifier>, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, type metadata accessor for TransactionalPreferenceTransformModifier);
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<DocumentBaseModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<DocumentBaseModifier>)
  {
    type metadata accessor for DocumentBaseModifier(255);
    lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type DocumentBaseModifier and conformance DocumentBaseModifier, type metadata accessor for DocumentBaseModifier);
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<DocumentBaseModifier>);
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_4>, MEMORY[0x1E697E528], MEMORY[0x1E697E520], MEMORY[0x1E697EC20]);
    type metadata accessor for DocumentToolbarInputContentWriter(255);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>);
    }
  }
}

uint64_t outlined init with take of ToolbarStorage.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<AnyView, DocumentSceneRootBoxModifier>, DocumentBaseModifier>();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void specialized URLDocumentHostingController.init(coder:)()
{
  v1 = direct field offset for URLDocumentHostingController.navigationItemDescription;
  v2 = type metadata accessor for NavigationItemDescription(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + direct field offset for URLDocumentHostingController._undoManager) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for DocumentToolbarTransformModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for DocumentToolbarTransformModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithTake for DocumentToolbarTransformModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<DocumentSceneRootBoxModifier>, ObservableDocumentBoxModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<DocumentSceneRootBoxModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<DocumentSceneRootBoxModifier>)
  {
    lazy protocol witness table accessor for type DocumentSceneRootBoxModifier and conformance DocumentSceneRootBoxModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<DocumentSceneRootBoxModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DocumentSceneRootBoxModifier>, ObservableDocumentBoxModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DocumentSceneRootBoxModifier>, ObservableDocumentBoxModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DocumentSceneRootBoxModifier>, ObservableDocumentBoxModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<DocumentSceneRootBoxModifier>, ObservableDocumentBoxModifier>(255);
    lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DocumentSceneRootBoxModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<DocumentSceneRootBoxModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DocumentSceneRootBoxModifier>, ObservableDocumentBoxModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, DocumentToolbarTransformModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationTitleKey>, MEMORY[0x1E6980910]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>);
    lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationTitleKey> and conformance _PreferenceTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, _PreferenceTransformModifier<ToolbarKey>>, _PreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>, type metadata accessor for _ViewModifier_Content<DocumentBaseModifier>, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, type metadata accessor for TransactionalPreferenceTransformModifier);
    lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(&lazy protocol witness table cache variable for type _ViewModifier_Content<DocumentBaseModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<DocumentBaseModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<DocumentBaseModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Map<DocumentToolbarTransformModifier, (_:)> and conformance Map<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationTitleKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationTitleKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationTitleKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<NavigationTitleKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6_4>, DocumentToolbarInputContentWriter, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_4>, MEMORY[0x1E697E528], MEMORY[0x1E697E520], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DefaultToolbarRoleKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6_4>, MEMORY[0x1E697E528], MEMORY[0x1E697E520], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v6_4> and conformance _SemanticFeature<A>);
  }

  return result;
}

void type metadata accessor for Map<DocumentToolbarTransformModifier, (_:)>()
{
  if (!lazy cache variable for type metadata for Map<DocumentToolbarTransformModifier, (_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<DocumentToolbarTransformModifier, (_:)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DocumentToolbarTransformModifier.HideNestedNavigationBar and conformance DocumentToolbarTransformModifier.HideNestedNavigationBar()
{
  result = lazy protocol witness table cache variable for type DocumentToolbarTransformModifier.HideNestedNavigationBar and conformance DocumentToolbarTransformModifier.HideNestedNavigationBar;
  if (!lazy protocol witness table cache variable for type DocumentToolbarTransformModifier.HideNestedNavigationBar and conformance DocumentToolbarTransformModifier.HideNestedNavigationBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentToolbarTransformModifier.HideNestedNavigationBar and conformance DocumentToolbarTransformModifier.HideNestedNavigationBar);
  }

  return result;
}

_BYTE *assignWithCopy for ArchivableCircularPlaybackProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI17ProgressViewValueOWOhTm_0(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = v14[8];
  *v13 = *v14;
  v13[8] = v15;
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

_BYTE *assignWithTake for ArchivableCircularPlaybackProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI17ProgressViewValueOWOhTm_0(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t type metadata completion function for ArchivableCircularPlaybackProgressView()
{
  return type metadata completion function for ArchivableCircularPlaybackProgressView();
}

{
  result = type metadata accessor for ProgressViewStyleConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ArchivableCircularProgressView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v7 = *(a3 + 24);
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = type metadata accessor for Date();
      v12 = *(*(v11 - 8) + 16);
      v12(v8, v9, v11);
      type metadata accessor for ClosedRange<Date>();
      v12(&v8[*(v13 + 36)], &v9[*(v13 + 36)], v11);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      v8[*(v14 + 48)] = v9[*(v14 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }

    v16 = type metadata accessor for ProgressViewStyleConfiguration(0);
    v17 = v16[5];
    v18 = &v8[v17];
    v19 = &v9[v17];
    *v18 = *v19;
    v18[8] = v19[8];
    v8[v16[6]] = v9[v16[6]];
    v8[v16[7]] = v9[v16[7]];
    v8[v16[8]] = v9[v16[8]];
    v8[v16[9]] = v9[v16[9]];
    *(v4 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return v4;
}

void *assignWithCopy for ArchivableCircularProgressView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if (a1 != a2)
  {
    _s7SwiftUI17ProgressViewValueOWOhTm_0(a1 + v6, type metadata accessor for ProgressViewValue);
    v9 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Date();
      v11 = *(*(v10 - 8) + 16);
      v11(v7, v8, v10);
      type metadata accessor for ClosedRange<Date>();
      v11(&v7[*(v12 + 36)], &v8[*(v12 + 36)], v10);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      v7[*(v13 + 48)] = v8[*(v13 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }
  }

  v14 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v15 = v14[5];
  v16 = &v7[v15];
  v17 = &v8[v15];
  v18 = v17[8];
  *v16 = *v17;
  v16[8] = v18;
  v7[v14[6]] = v8[v14[6]];
  v7[v14[7]] = v8[v14[7]];
  v7[v14[8]] = v8[v14[8]];
  v7[v14[9]] = v8[v14[9]];
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

_OWORD *initializeWithTake for ArchivableCircularProgressView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 32);
    v11(v7, v8, v10);
    type metadata accessor for ClosedRange<Date>();
    v11(&v7[*(v12 + 36)], &v8[*(v12 + 36)], v10);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v7[*(v13 + 48)] = v8[*(v13 + 48)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  v14 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v15 = v14[5];
  v16 = &v7[v15];
  v17 = &v8[v15];
  *v16 = *v17;
  v16[8] = v17[8];
  v7[v14[6]] = v8[v14[6]];
  v7[v14[7]] = v8[v14[7]];
  v7[v14[8]] = v8[v14[8]];
  v7[v14[9]] = v8[v14[9]];
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

_OWORD *assignWithTake for ArchivableCircularProgressView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if (a1 != a2)
  {
    _s7SwiftUI17ProgressViewValueOWOhTm_0(a1 + v6, type metadata accessor for ProgressViewValue);
    v9 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for Date();
      v11 = *(*(v10 - 8) + 32);
      v11(v7, v8, v10);
      type metadata accessor for ClosedRange<Date>();
      v11(&v7[*(v12 + 36)], &v8[*(v12 + 36)], v10);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      v7[*(v13 + 48)] = v8[*(v13 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }
  }

  v14 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v15 = v14[5];
  v16 = &v7[v15];
  v17 = &v8[v15];
  *v16 = *v17;
  v16[8] = v17[8];
  v7[v14[6]] = v8[v14[6]];
  v7[v14[7]] = v8[v14[7]];
  v7[v14[8]] = v8[v14[8]];
  v7[v14[9]] = v8[v14[9]];
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

_BYTE *assignWithCopy for ArchivableLinearProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI17ProgressViewValueOWOhTm_0(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 16);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v15 = v14[8];
  *v13 = *v14;
  v13[8] = v15;
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

_BYTE *assignWithTake for ArchivableLinearProgressView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    _s7SwiftUI17ProgressViewValueOWOhTm_0(a1, type metadata accessor for ProgressViewValue);
    v6 = type metadata accessor for ProgressViewValue(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for Date();
      v8 = *(*(v7 - 8) + 32);
      v8(a1, a2, v7);
      type metadata accessor for ClosedRange<Date>();
      v8(&a1[*(v9 + 36)], &a2[*(v9 + 36)], v7);
      type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
      a1[*(v10 + 48)] = a2[*(v10 + 48)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  v11 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v12 = v11[5];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  v13[8] = v14[8];
  a1[v11[6]] = a2[v11[6]];
  a1[v11[7]] = a2[v11[7]];
  a1[v11[8]] = a2[v11[8]];
  a1[v11[9]] = a2[v11[9]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t ArchivableLinearProgressView.Base.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v5 = swift_getKeyPath();
  result = a1;
  if (a1)
  {

    result = AnyShapeStyle.init<A>(_:)();
  }

  *a2 = a3;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v9;
  *(a2 + 88) = 0;
  *(a2 + 96) = v8;
  *(a2 + 104) = 0;
  *(a2 + 112) = v5;
  *(a2 + 120) = result;
  return result;
}

uint64_t ArchivableLinearProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(0, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base, &type metadata for ArchivableLinearProgressView.Base, type metadata accessor for TimelineProgressView);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressViewStyleConfiguration(v1, v12, type metadata accessor for ProgressViewStyleConfiguration);
  outlined init with take of ArchivableCircularProgressView(v12, v9, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v14 = *(v9 + *(v13 + 48));
    outlined init with take of ArchivableCircularProgressView(v9, v6, type metadata accessor for ClosedRange<Date>);
    v15 = *(v1 + *(type metadata accessor for ArchivableLinearProgressView(0) + 20));
    v6[v4[9]] = 0;
    v6[v4[10]] = v14;
    *&v6[v4[11]] = v15;
    v6[v4[12]] = 0;
    outlined init with take of TimelineProgressView<ArchivableLinearProgressView.Base>(v6, a1, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base, &type metadata for ArchivableLinearProgressView.Base);
    type metadata accessor for _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>>.Storage, MEMORY[0x1E697F948]);
  }

  else
  {
    if (*(v9 + 8))
    {
      v16 = 0.0;
    }

    else
    {
      v16 = *v9;
    }

    v17 = *(v1 + *(type metadata accessor for ArchivableLinearProgressView(0) + 20));
    *a1 = v16;
    *(a1 + 8) = v17;
    type metadata accessor for _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>>.Storage, MEMORY[0x1E697F948]);
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t ArchivableCircularProgressView.gaugeRing.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(0, &lazy cache variable for type metadata for TimelineProgressView<CircularPercentageGaugeRing>, lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing, &type metadata for CircularPercentageGaugeRing, type metadata accessor for TimelineProgressView);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - v5;
  v7 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArchivableCircularProgressView(0);
  outlined init with copy of ProgressViewStyleConfiguration(v1 + *(v13 + 24), v12, type metadata accessor for ProgressViewStyleConfiguration);
  outlined init with take of ArchivableCircularProgressView(v12, v9, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)();
    v15 = *(v9 + *(v14 + 48));
    outlined init with take of ArchivableCircularProgressView(v9, v6, type metadata accessor for ClosedRange<Date>);
    v16 = *(v1 + *(v13 + 28));
    v6[v4[9]] = 0;
    v6[v4[10]] = v15;
    *&v6[v4[11]] = v16;
    v6[v4[12]] = 1;
    outlined init with take of TimelineProgressView<ArchivableLinearProgressView.Base>(v6, a1, &lazy cache variable for type metadata for TimelineProgressView<CircularPercentageGaugeRing>, lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing, &type metadata for CircularPercentageGaugeRing);
    type metadata accessor for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(0, &lazy cache variable for type metadata for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>.Storage, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if (*(v9 + 8))
    {
      v18 = 0.0;
    }

    else
    {
      v18 = *v9;
    }

    v19 = *(v1 + *(v13 + 28));
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    if (v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = static Color.primary.getter();
    }

    v24[1] = v22;

    v23 = AnyShapeStyle.init<A>(_:)();
    *a1 = v18;
    *(a1 + 8) = v23;
    *(a1 + 16) = KeyPath;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = v21;
    *(a1 + 48) = 0;
    type metadata accessor for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(0, &lazy cache variable for type metadata for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>.Storage, MEMORY[0x1E697F948]);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t closure #1 in ArchivableCircularProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  type metadata accessor for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>();
  return closure #1 in closure #1 in ArchivableCircularProgressView.body.getter(a2, v9, a3 + *(v7 + 44));
}

uint64_t closure #1 in closure #1 in ArchivableCircularProgressView.body.getter@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  type metadata accessor for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(0, &lazy cache variable for type metadata for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  ArchivableCircularProgressView.gaugeRing.getter(&v31 - v9);
  v34 = static HorizontalAlignment.center.getter();
  v11 = a1 + *(type metadata accessor for ArchivableCircularProgressView(0) + 24);
  v12 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v13 = (v11 + *(v12 + 32));
  v14 = *v13;
  v32 = static VerticalAlignment.center.getter();
  if (v14 == 1)
  {
    v13 = (v11 + *(v12 + 28));
  }

  if (*v13)
  {
    v15 = 257;
  }

  else
  {
    v15 = 1;
  }

  v16 = a2[1];
  v45 = *a2;
  v46 = v16;
  v47 = a2[2];
  LODWORD(v48) = *(a2 + 12);
  GeometryProxy.size.getter();
  static Font.Weight.semibold.getter();
  LOBYTE(v45) = 2;
  v17 = static Font.system(size:weight:design:)();
  KeyPath = swift_getKeyPath();
  v64 = 1;
  v63 = v14;
  v19 = a2[1];
  v59 = *a2;
  v60 = v19;
  v61 = a2[2];
  v62 = *(a2 + 12);
  GeometryProxy.size.getter();
  v20 = a2[1];
  v55 = *a2;
  v56 = v20;
  v57 = a2[2];
  v58 = *(a2 + 12);
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = swift_getKeyPath();
  outlined init with copy of _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(v10, v7);
  v22 = v33;
  outlined init with copy of _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(v7, v33);
  type metadata accessor for (_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)();
  v24 = (v22 + *(v23 + 48));
  v25 = v34;
  v38[0] = v34;
  v38[1] = 0;
  LOBYTE(v39) = 1;
  v26 = v32;
  *(&v39 + 1) = v32;
  *&v40 = 0;
  WORD4(v40) = v15;
  BYTE10(v40) = v14;
  *&v41 = KeyPath;
  *(&v41 + 1) = v17;
  v43 = v36;
  v44[0] = v37;
  v42 = v35;
  *&v44[1] = v21;
  BYTE8(v44[1]) = 1;
  v27 = v39;
  *v24 = v34;
  v24[1] = v27;
  v28 = v43;
  v24[4] = v42;
  v24[5] = v28;
  v24[6] = v44[0];
  *(v24 + 105) = *(v44 + 9);
  v29 = v41;
  v24[2] = v40;
  v24[3] = v29;
  outlined init with copy of ProgressViewStyleConfiguration(v38, &v45, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>);
  outlined destroy of _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(v10);
  v45 = v25;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = v26;
  *&v47 = 0;
  WORD4(v47) = v15;
  BYTE10(v47) = v14;
  v48 = KeyPath;
  v49 = v17;
  v50 = v35;
  v51 = v36;
  v52 = v37;
  v53 = v21;
  v54 = 1;
  _s7SwiftUI17ProgressViewValueOWOhTm_0(&v45, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>);
  return outlined destroy of _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(v7);
}

uint64_t protocol witness for View.body.getter in conformance ArchivableCircularProgressView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  outlined init with copy of ProgressViewStyleConfiguration(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ArchivableCircularProgressView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  outlined init with take of ArchivableCircularProgressView(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ArchivableCircularProgressView);
  result = swift_getKeyPath();
  *a2 = partial apply for closure #1 in ArchivableCircularProgressView.body.getter;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = result;
  *(a2 + 40) = 0x3F847AE147AE147BLL;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ArchivableCircularPlaybackProgressView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of ProgressViewStyleConfiguration(v2, a2, type metadata accessor for ProgressViewStyleConfiguration);
  v5 = *(v2 + *(a1 + 20));
  *(a2 + *(type metadata accessor for ResolvedCircularPlaybackProgressView() + 20)) = v5;
}

uint64_t outlined init with copy of ProgressViewStyleConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in ArchivableCircularProgressView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ArchivableCircularProgressView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in ArchivableCircularProgressView.body.getter(a1, v6, a2);
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.minimumScaleFactor : EnvironmentValues, serialized@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

void type metadata accessor for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>)
  {
    type metadata accessor for TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>();
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>);
    }
  }
}

void type metadata accessor for TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>()
{
  if (!lazy cache variable for type metadata for TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>)
  {
    type metadata accessor for (_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>);
    }
  }
}

void type metadata accessor for (_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)()
{
  if (!lazy cache variable for type metadata for (_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>))
  {
    type metadata accessor for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(255, &lazy cache variable for type metadata for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, MEMORY[0x1E697F960]);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    type metadata accessor for ProgressViewStyleConfiguration.CurrentValueLabel?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, type metadata accessor for ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>);
    type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, &type metadata for IconOnlyLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>()
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>)
  {
    type metadata accessor for _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>();
    lazy protocol witness table accessor for type _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>)
  {
    type metadata accessor for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>();
    type metadata accessor for HStack<ProgressViewStyleConfiguration.Label?>();
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>();
    _s10Foundation4DateVACSLAAWlTm_4(&lazy protocol witness table cache variable for type HStack<ProgressViewStyleConfiguration.CurrentValueLabel?> and conformance HStack<A>, type metadata accessor for HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>);
    _s10Foundation4DateVACSLAAWlTm_4(&lazy protocol witness table cache variable for type HStack<ProgressViewStyleConfiguration.Label?> and conformance HStack<A>, type metadata accessor for HStack<ProgressViewStyleConfiguration.Label?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for ProgressViewStyleConfiguration.CurrentValueLabel?(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(0, &lazy cache variable for type metadata for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(uint64_t a1)
{
  type metadata accessor for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(0, &lazy cache variable for type metadata for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ArchivableCircularProgressView(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TimelineProgressView<ArchivableLinearProgressView.Base>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(0, a3, a4, a5, type metadata accessor for TimelineProgressView);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for _ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(255, &lazy cache variable for type metadata for TimelineProgressView<CircularPercentageGaugeRing>, lazy protocol witness table accessor for type CircularPercentageGaugeRing and conformance CircularPercentageGaugeRing, &type metadata for CircularPercentageGaugeRing, type metadata accessor for TimelineProgressView);
    v7 = a3(a1, &type metadata for CircularPercentageGaugeRing, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout>, type metadata accessor for GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>);
    type metadata accessor for ProgressViewStyleConfiguration.CurrentValueLabel?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat>, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>>);
    }
  }
}

void type metadata accessor for GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>()
{
  if (!lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>)
  {
    type metadata accessor for ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>();
    _s10Foundation4DateVACSLAAWlTm_4(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>);
    v0 = type metadata accessor for GeometryReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>)
  {
    type metadata accessor for TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>();
    _s10Foundation4DateVACSLAAWlTm_4(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout>, type metadata accessor for GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>);
    _s10Foundation4DateVACSLAAWlTm_4(&lazy protocol witness table cache variable for type GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>> and conformance GeometryReader<A>, type metadata accessor for GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base();
    lazy protocol witness table accessor for type TimelineProgressView<ArchivableLinearProgressView.Base> and conformance TimelineProgressView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ArchivableLinearProgressView.Base, TimelineProgressView<ArchivableLinearProgressView.Base>>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(255, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base, &type metadata for ArchivableLinearProgressView.Base, type metadata accessor for TimelineProgressView);
    v7 = a3(a1, &type metadata for ArchivableLinearProgressView.Base, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TimelineProgressView<ArchivableLinearProgressView.Base> and conformance TimelineProgressView<A>()
{
  result = lazy protocol witness table cache variable for type TimelineProgressView<ArchivableLinearProgressView.Base> and conformance TimelineProgressView<A>;
  if (!lazy protocol witness table cache variable for type TimelineProgressView<ArchivableLinearProgressView.Base> and conformance TimelineProgressView<A>)
  {
    type metadata accessor for TimelineProgressView<CircularPercentageGaugeRing>(255, &lazy cache variable for type metadata for TimelineProgressView<ArchivableLinearProgressView.Base>, lazy protocol witness table accessor for type ArchivableLinearProgressView.Base and conformance ArchivableLinearProgressView.Base, &type metadata for ArchivableLinearProgressView.Base, type metadata accessor for TimelineProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineProgressView<ArchivableLinearProgressView.Base> and conformance TimelineProgressView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ZStack<TupleView<(_ConditionalContent<CircularPercentageGaugeRing, TimelineProgressView<CircularPercentageGaugeRing>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<HStack<ProgressViewStyleConfiguration.CurrentValueLabel?>, HStack<ProgressViewStyleConfiguration.Label?>>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, _ForegroundLayerViewModifier>, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>, _AspectRatioLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LinearCapsuleGauge, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LinearCapsuleGauge, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>, &lazy cache variable for type metadata for AnyShapeStyle?, MEMORY[0x1E697E0B8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LinearCapsuleGauge, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>);
    }
  }
}

void type metadata accessor for ProgressViewStyleConfiguration.CurrentValueLabel?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type LinearCapsuleGauge and conformance LinearCapsuleGauge()
{
  result = lazy protocol witness table cache variable for type LinearCapsuleGauge and conformance LinearCapsuleGauge;
  if (!lazy protocol witness table cache variable for type LinearCapsuleGauge and conformance LinearCapsuleGauge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearCapsuleGauge and conformance LinearCapsuleGauge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<AnyShapeStyle?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle?>, &lazy cache variable for type metadata for AnyShapeStyle?, MEMORY[0x1E697E0B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t default argument 0 of ToolbarItemGroup.init(placement:content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, v2);
}

uint64_t View.toolbar<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a1;
  v10[7] = a2;
  type metadata accessor for ToolbarItemGroup();
  v8 = type metadata accessor for TupleToolbarContent();
  return View.toolbar<A>(content:)(partial apply for closure #1 in View.toolbar<A>(content:), v10, a3, v8, a5);
}

uint64_t closure #1 in View.toolbar<A>(content:)(void (*a1)(void))
{
  v2 = type metadata accessor for ToolbarItemGroup();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  default argument 0 of ToolbarItemGroup.init(placement:content:)(v11);
  ToolbarItemGroup.init(placement:content:)(v11, a1, v5);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v5, v2, &protocol witness table for ToolbarItemGroup<A>);
  v9 = *(v3 + 8);
  v9(v5, v2);
  static ToolbarContentBuilder.buildBlock<A>(_:)(v8, v2, &protocol witness table for ToolbarItemGroup<A>);
  return (v9)(v8, v2);
}

uint64_t View.toolbar<A>(id:content:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for ToolbarModifier();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v20 - v14);
  v17 = (&v20 + *(v16 + 48) - v14);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  *v15 = a1;
  v15[1] = a2;

  a3(v18);
  MEMORY[0x18D00A570](v15, a5, v12, a7);
  return (*(v13 + 8))(v15, v12);
}

uint64_t *initializeBufferWithCopyOfBuffer for ToolbarModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v7 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) != 0 && ((v7 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    v12 = (a1 + v6 + 16) & ~v6;
    v13 = (a2 + v6 + 16) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    v15 = (v7 + v12) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v7 + v13) & 0xFFFFFFFFFFFFFFF8;
    if (*(v16 + 8) < 0xFFFFFFFFuLL)
    {
      v17 = *v16;
      *(v15 + 16) = *(v16 + 16);
      *v15 = v17;
      return a1;
    }

    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    *(v15 + 16) = *(v16 + 16);
  }

  return a1;
}

_OWORD *initializeWithTake for ToolbarModifier(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v12;
  return a1;
}

void *assignWithTake for ToolbarModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 24) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 16) & ~v9;
  v11 = (a2 + v9 + 16) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v14 + 8) < 0xFFFFFFFFuLL)
  {

LABEL_5:
    v15 = *v14;
    *(v13 + 16) = *(v14 + 16);
    *v13 = v15;
    return a1;
  }

  *v13 = *v14;

  *(v13 + 8) = *(v14 + 8);

  *(v13 + 16) = *(v14 + 16);
  return a1;
}

uint64_t getter of toolbarTransform #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1 + 16;
  result = *(a1 + 16);
  if (*(v6 + 4) == 1)
  {
    v7 = closure #2 in getter of toolbarTransform #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(a2, a3, a4);
    swift_beginAccess();
    result = v7;
    *(a1 + 16) = v7;
    *(a1 + 20) = 0;
  }

  return result;
}

uint64_t closure #2 in getter of toolbarTransform #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(unsigned int a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v13[0] = a1;
  type metadata accessor for ToolbarModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  closure #1 in closure #2 in getter of toolbarTransform #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v14 = a1;
  _GraphValue.value.getter();
  closure #2 in closure #2 in getter of toolbarTransform #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(1);
  v7 = AGGraphCreateOffsetAttribute2();
  v8 = *(a3 + 28);
  v13[0] = OffsetAttribute2;
  v13[1] = v7;
  v13[2] = a2;
  v13[3] = v8;
  v16 = type metadata accessor for ToolbarModifier.TransformToolbar();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<(_:)>(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_23, v15, v16, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  v11 = v14;
  AGGraphGetFlags();
  AGGraphSetFlags();
  return v11;
}

uint64_t closure #1 in closure #2 in getter of toolbarTransform #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for ToolbarModifier();
  type metadata accessor for _ContiguousArrayStorage<PreferencesOutputs>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #2 in closure #2 in getter of toolbarTransform #1 in static ToolbarModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarModifier();
  v3 = *(v2 + 48);
  v9[2] = v2;
  type metadata accessor for Binding<Int>?();
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_24, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #1 in ToolbarModifier.TransformToolbar.updateValue()@<X0>(_BYTE *a1@<X8>)
{
  AGGraphGetValue();

  v2 = Transaction.isAnimated.getter();

  *a1 = v2 & 1;
  return result;
}

uint64_t closure #2 in ToolbarModifier.TransformToolbar.updateValue()(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  v13 = static SemanticFeature.isEnabled.getter();
  v14 = 12;
  if (v13)
  {
    v14 = 8;
  }

  v15 = 14;
  if (v13)
  {
    v15 = 10;
  }

  if (*(a1 + 56))
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  result = ToolbarStorage.merge(_:options:)(a2, v16);
  if (a4)
  {

    *a1 = a3;
    *(a1 + 8) = a4;
  }

  if (a8)
  {
    v18 = 1;
  }

  else
  {
    v18 = *(a1 + 40);
  }

  *(a1 + 40) = v18;
  return result;
}

uint64_t ToolbarGraphUtilities.HostKeys.value.getter@<X0>(void *a1@<X8>)
{
  *a1 = *AGGraphGetValue();

  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  PreferenceKeys.remove(_:)();
  return PreferenceKeys.remove(_:)();
}

uint64_t protocol witness for static InvalidatableAttribute.willInvalidate(attribute:) in conformance ToolbarGraphUtilities.InvalidateBridge()
{
  AGGraphGetAttributeInfo();

  PreferenceBridge.invalidate()();
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

__n128 key path getter for EnvironmentValues.presentSharingPicker : EnvironmentValues@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  a2[6] = v10;
  a2[7] = v11;
  a2[8] = v12;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  result = v5;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.presentSharingPicker : EnvironmentValues(_OWORD *a1, uint64_t a2)
{
  v3 = a1[5];
  v4 = a1[7];
  v18 = a1[6];
  v19 = v4;
  v5 = a1[7];
  v20 = a1[8];
  v6 = a1[1];
  v7 = a1[3];
  v14 = a1[2];
  v15 = v7;
  v8 = a1[3];
  v9 = a1[5];
  v16 = a1[4];
  v17 = v9;
  v10 = a1[1];
  v13[0] = *a1;
  v13[1] = v10;
  v12[15] = v18;
  v12[16] = v5;
  v12[17] = a1[8];
  v12[11] = v14;
  v12[12] = v8;
  v12[13] = v16;
  v12[14] = v3;
  v12[9] = v13[0];
  v12[10] = v6;
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);

  outlined init with copy of PresentSharingPickerAction?(v13, v12);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t ShareLink.init(items:subject:message:preview:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18)
{
  *a9 = 0;
  v41 = a14;
  v42 = a15;
  v43 = a16;
  v44 = a17;
  *&v45 = a18;
  v20 = type metadata accessor for ShareLink();
  v21 = &a9[v20[24]];
  v22 = &a9[v20[25]];
  v23 = &a9[v20[26]];
  v24 = &a9[v20[28]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &a9[v20[29]];
  *&v41 = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(&v41);
  v26 = v46;
  *(v25 + 4) = v45;
  *(v25 + 5) = v26;
  v27 = v44;
  *(v25 + 2) = v43;
  *(v25 + 3) = v27;
  v25[144] = v50;
  v28 = v49;
  *(v25 + 7) = v48;
  *(v25 + 8) = v28;
  *(v25 + 6) = v47;
  v29 = v42;
  *v25 = v41;
  *(v25 + 1) = v29;
  v30 = &a9[v20[30]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = *(a14 - 8);
  (*(v31 + 16))(&a9[v20[23]], a1, a14);
  *v21 = a2;
  *(v21 + 1) = a3;
  *(v21 + 2) = a4;
  *(v21 + 3) = a5;
  *v22 = a6;
  *(v22 + 1) = a7;
  *(v22 + 2) = a8;
  *(v22 + 3) = a10;
  *v23 = a11;
  *(v23 + 1) = a12;
  v32 = *(*(&a15 + 1) - 8);
  (*(v32 + 16))(&a9[v20[27]], a13, *(&a15 + 1));
  ShareLink.assertUnstyled()();
  (*(v32 + 8))(a13, *(&a15 + 1));
  return (*(v31 + 8))(a1, a14);
}

Swift::Void __swiftcall ShareLink.assertUnstyled()()
{
  v2 = v0;
  v3 = *(v0 + 56);
  v47[0] = *(v0 + 24);
  v47[1] = v3;
  v4 = type metadata accessor for SharePreview();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v33 - v5);
  v7 = *(*(*(*(v2 + 48) + 8) + 8) + 8);
  v8 = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = v7;
  v44 = swift_getAssociatedTypeWitness();
  v34 = *(v44 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v44);
  v42 = v1;
  v43 = &v33 - v20;
  v41 = v2;
  v21 = v1 + *(v2 + 96);
  if (*(v21 + 24))
  {
    v22 = *(v21 + 16);
    v23 = *(v21 + 8);
    v38 = *v21;
    v39 = v23;
    MEMORY[0x18D009CE0](v47, v19.n128_f64[0]);
    v46 = v22 & 1;
    Text.assertUnstyled(_:options:)();
  }

  (*(v15 + 16))(v18, v42 + *(v41 + 92), v8, v19);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v38 = *(v45 + 48);
  v39 = v45 + 48;
  if (v38(v14, 1, AssociatedTypeWitness) != 1)
  {
    v37 = *(v45 + 32);
    v24 = (v35 + 8);
    v35 = "square.and.arrow.up";
    v45 += 32;
    v25 = (v45 - 24);
    v37(v11, v14, AssociatedTypeWitness);
    while (1)
    {
      v26 = *(v42 + *(v41 + 104));
      if (v26)
      {
        v26(v11);
        v27 = v6[4];
        v28 = v6[5];
        v30 = v6[6];
        v29 = v6[7];
        outlined copy of Text?(v27, v28, v30, v29);
        v31 = (*v24)(v6, v36);
        if (v29)
        {
          MEMORY[0x18D009CE0](v47, v31);
          v32 = v30 & 1;
          v46 = v32;
          Text.assertUnstyled(_:options:)();
          outlined consume of Text.Storage(v27, v28, v32);
        }
      }

      (*v25)(v11, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v38(v14, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v37(v11, v14, AssociatedTypeWitness);
    }
  }

  (*(v34 + 8))(v43, v44);
}

uint64_t ShareLink.init(items:subject:message:preview:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, uint64_t a21)
{
  v45 = a7;
  v46 = a8;
  v43 = a5;
  v44 = a6;
  v41 = a3;
  v42 = a4;
  v39 = a9;
  v40 = a2;
  v37 = a11;
  v38 = a10;
  v35 = a17;
  v36 = a16;
  v33 = a20;
  v34 = a19;
  MEMORY[0x1EEE9AC00](a1);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a15 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28, a1, a15, v26);

  a13(v29);
  *(&v32 + 1) = a18;
  *&v32 = v35;
  *&v31 = a15;
  *(&v31 + 1) = v36;
  ShareLink.init(items:subject:message:preview:label:)(v28, v40, v41, v42, v43, v44, v45, v46, v39, v38, v37, a12, v23, v31, v32, v34, v33, a21);

  return (*(v24 + 8))(a1, a15);
}

uint64_t ShareLink.isPresented.getter()
{
  type metadata accessor for CollectionOfOne<String>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  return v1;
}

uint64_t ShareLink.$isPresented.getter()
{
  type metadata accessor for CollectionOfOne<String>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  return v1;
}

uint64_t ShareLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v3 = *(a1 + 40);
  v4 = type metadata accessor for ModifiedContent();
  v5 = *(a1 + 72);
  type metadata accessor for Button();
  v28 = type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
  type metadata accessor for ModifiedContent();
  v27 = type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<AnyShareConfiguration.Key>, &type metadata for AnyShareConfiguration.Key, &protocol witness table for AnyShareConfiguration.Key, MEMORY[0x1E6980750]);
  v29 = type metadata accessor for ModifiedContent();
  v25[1] = v4;
  v6 = type metadata accessor for StaticIf();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v44 = *(a1 + 80);
  v45 = v26;
  *&v14 = v12;
  *(&v14 + 1) = v3;
  v40 = *(a1 + 16);
  v41 = v14;
  v32 = v40;
  v33 = v12;
  v34 = v3;
  *&v14 = v13;
  *(&v14 + 1) = v5;
  v42 = *(a1 + 48);
  v43 = v14;
  v35 = v42;
  v36 = v13;
  v37 = v5;
  v38 = v44;
  v39 = v26;
  v15 = lazy protocol witness table accessor for type RequiresPlatformItemListRepresentation and conformance RequiresPlatformItemListRepresentation();
  v57 = v5;
  v58 = &protocol witness table for PlatformItemListTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v55 = swift_getWitnessTable();
  v56 = &protocol witness table for SharingActivityPickerModifier;
  v17 = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>();
  v53 = v17;
  v54 = v18;
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x1E69805D0];
  v19 = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type _PreferenceWritingModifier<AnyShareConfiguration.Key> and conformance _PreferenceWritingModifier<A>();
  v49 = v19;
  v50 = v20;
  v24 = swift_getWitnessTable();
  StaticIf<>.init(_:then:else:)();
  v46 = v15;
  v47 = WitnessTable;
  v48 = v24;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v6, v21);
  v22 = *(v30 + 8);
  v22(v8, v6);
  static ViewBuilder.buildExpression<A>(_:)(v11, v6, v21);
  return (v22)(v11, v6);
}

uint64_t closure #1 in ShareLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v30 = a8;
  v31 = a1;
  v27[1] = a7;
  v34 = a9;
  v28 = a10;
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v17 = type metadata accessor for ModifiedContent();
  v33 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v29 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v32 = v27 - v20;
  *&v46 = a2;
  *(&v46 + 1) = a3;
  *&v47 = a4;
  *(&v47 + 1) = a5;
  *&v48 = a6;
  *(&v48 + 1) = a7;
  v21 = v28;
  *&v49 = v30;
  *(&v49 + 1) = v28;
  *&v50 = a11;
  v27[2] = *(type metadata accessor for ShareLink() + 108);
  specialized AnyShareConfiguration.init<A, B, C, D>(_:optimizeForSharingPicker:)(v31, 1, a2, v40);
  v37 = v40[0];
  v38 = v40[1];
  *&v39[0] = v41 & 3 | 0x8000000000000000;
  *(v39 + 8) = v42;
  *(&v39[1] + 8) = v43;
  *(&v39[2] + 8) = v44;
  *(&v39[3] + 8) = v45;
  v22 = v29;
  View.platformItemSystemType(_:)(&v37, a5, v21);
  v50 = v39[2];
  v51 = v39[3];
  v52 = *&v39[4];
  v46 = v37;
  v47 = v38;
  v48 = v39[0];
  v49 = v39[1];
  _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_3(&v46, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
  v35 = v21;
  v36 = &protocol witness table for PlatformItemListTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v24 = v32;
  static ViewBuilder.buildExpression<A>(_:)(v22, v17, WitnessTable);
  v25 = *(v33 + 8);
  v25(v22, v17);
  static ViewBuilder.buildExpression<A>(_:)(v24, v17, WitnessTable);
  return (v25)(v24, v17);
}

uint64_t closure #2 in ShareLink.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v95 = a8;
  v12 = a6;
  v99 = a3;
  v90 = a9;
  v118 = a2;
  v119 = a3;
  v120 = a4;
  v121 = a5;
  v122 = a6;
  v123 = a7;
  v124 = a8;
  v125 = a10;
  v126 = a11;
  v96 = type metadata accessor for ShareLink();
  v83 = *(v96 - 8);
  v85 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v81 = &v70 - v17;
  v75 = type metadata accessor for Button();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v70 - v18;
  v78 = type metadata accessor for ModifiedContent();
  v88 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v97 = &v70 - v19;
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
  v84 = type metadata accessor for ModifiedContent();
  v80 = type metadata accessor for ModifiedContent();
  v89 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v70 - v20;
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<AnyShareConfiguration.Key>, &type metadata for AnyShareConfiguration.Key, &protocol witness table for AnyShareConfiguration.Key, MEMORY[0x1E6980750]);
  v86 = type metadata accessor for ModifiedContent();
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v79 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v70 - v23;
  v24 = a2;
  v91 = a2;
  v25 = a2;
  v26 = v99;
  v92 = a4;
  v27 = a5;
  v28 = a5;
  v98 = v12;
  v29 = v95;
  v30 = implicit closure #1 in closure #2 in ShareLink.body.getter(a1, v25, v99, a4, v28, v12, a7, v95, a10, a11);
  v100 = v24;
  v101 = v26;
  v102 = a4;
  v103 = v27;
  v104 = v12;
  v105 = a7;
  v31 = a7;
  v70 = a7;
  v106 = v29;
  v107 = a10;
  v32 = v29;
  v108 = a11;
  v109 = a1;
  v73 = a11;
  v93 = a1;
  v33 = v74;
  v94 = v27;
  v71 = a10;
  Button.init(action:label:)(v30, v34, partial apply for closure #1 in closure #2 in ShareLink.body.getter, v74);
  v35 = ShareLink.$isPresented.getter();
  v37 = v36;
  LOBYTE(v12) = v38;
  v39 = v75;
  WitnessTable = swift_getWitnessTable();
  v68 = v31;
  v69 = v32;
  v40 = v93;
  v41 = v91;
  v42 = v99;
  v43 = v92;
  View.sharingPicker<A, B, C, D>(isPresented:link:)(v35, v37, v12 & 1, v93, v39, v91, v99, v92, v27, WitnessTable, v98, v68, v69, a10, a11);

  (*(v77 + 8))(v33, v39);
  v44 = v96;
  v45 = v40;
  LOBYTE(v118) = ShareLink.isPresented.getter() & 1;
  v46 = v83;
  v47 = v81;
  (*(v83 + 16))(v81, v45, v44);
  v48 = v46;
  v49 = (*(v46 + 80) + 88) & ~*(v46 + 80);
  v50 = swift_allocObject();
  *(v50 + 2) = v41;
  *(v50 + 3) = v42;
  v51 = v94;
  *(v50 + 4) = v43;
  *(v50 + 5) = v51;
  v52 = v70;
  *(v50 + 6) = v98;
  *(v50 + 7) = v52;
  v53 = v71;
  *(v50 + 8) = v95;
  *(v50 + 9) = v53;
  *(v50 + 10) = v73;
  (*(v48 + 32))(&v50[v49], v47, v44);
  v116 = WitnessTable;
  v117 = &protocol witness table for SharingActivityPickerModifier;
  v54 = v78;
  v55 = swift_getWitnessTable();
  v56 = v76;
  v57 = v97;
  View.onChange<A>(of:initial:_:)();

  (*(v88 + 8))(v57, v54);
  v58 = lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>();
  v114 = v55;
  v115 = v58;
  v112 = swift_getWitnessTable();
  v113 = MEMORY[0x1E69805D0];
  v59 = v80;
  v60 = swift_getWitnessTable();
  v61 = v79;
  View.shareConfiguration<A, B, C, D>(_:)(v93, v59, v91);
  (*(v89 + 8))(v56, v59);
  v62 = lazy protocol witness table accessor for type _PreferenceWritingModifier<AnyShareConfiguration.Key> and conformance _PreferenceWritingModifier<A>();
  v110 = v60;
  v111 = v62;
  v63 = v86;
  v64 = swift_getWitnessTable();
  v65 = v82;
  static ViewBuilder.buildExpression<A>(_:)(v61, v63, v64);
  v66 = *(v87 + 8);
  v66(v61, v63);
  static ViewBuilder.buildExpression<A>(_:)(v65, v63, v64);
  return (v66)(v65, v63);
}

unint64_t lazy protocol witness table accessor for type RequiresPlatformItemListRepresentation and conformance RequiresPlatformItemListRepresentation()
{
  result = lazy protocol witness table cache variable for type RequiresPlatformItemListRepresentation and conformance RequiresPlatformItemListRepresentation;
  if (!lazy protocol witness table cache variable for type RequiresPlatformItemListRepresentation and conformance RequiresPlatformItemListRepresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequiresPlatformItemListRepresentation and conformance RequiresPlatformItemListRepresentation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<AnyShareConfiguration.Key> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<AnyShareConfiguration.Key> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<AnyShareConfiguration.Key> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<AnyShareConfiguration.Key>, &type metadata for AnyShareConfiguration.Key, &protocol witness table for AnyShareConfiguration.Key, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<AnyShareConfiguration.Key> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t (*implicit closure #1 in closure #2 in ShareLink.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v27 = a7;
  v28 = a8;
  v25 = a10;
  v26 = a6;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  v37 = a10;
  v15 = type metadata accessor for ShareLink();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(v16 + 16))(&v24 - v18, a1, v15, v17);
  v20 = (*(v16 + 80) + 88) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  *(v21 + 4) = a4;
  *(v21 + 5) = a5;
  v22 = v27;
  *(v21 + 6) = v26;
  *(v21 + 7) = v22;
  *(v21 + 8) = v28;
  *(v21 + 9) = a9;
  *(v21 + 10) = v25;
  (*(v16 + 32))(&v21[v20], v19, v15);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #2 in ShareLink.body.getter;
}

uint64_t ShareLink.show()(uint64_t a1)
{
  v3 = v1 + *(a1 + 116);
  v4 = *(v3 + 112);
  v48 = *(v3 + 96);
  v49 = v4;
  v50 = *(v3 + 128);
  v51 = *(v3 + 144);
  v5 = *(v3 + 48);
  v44 = *(v3 + 32);
  v45 = v5;
  v6 = *(v3 + 80);
  v46 = *(v3 + 64);
  v47 = v6;
  v7 = *(v3 + 16);
  v42 = *v3;
  v43 = v7;
  specialized Environment.wrappedValue.getter(v34);
  v48 = v34[6];
  v49 = v34[7];
  v50 = v34[8];
  v44 = v34[2];
  v45 = v34[3];
  v46 = v34[4];
  v47 = v34[5];
  v42 = v34[0];
  v43 = v34[1];
  result = _s7SwiftUI27ScrollableCollectionSubviewVSgWOg(&v42);
  if (result == 1)
  {
    v9 = *(v1 + *(a1 + 120) + 8);
    LOBYTE(v33[0]) = 1;
    if (v9)
    {
      return dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }

  else
  {
    specialized AnyIdentifiableShareConfiguration.init<A, B, C, D>(_:)(v1, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), &v35, *(a1 + 72), *(a1 + 80));
    v23[4] = v39;
    v23[5] = v40;
    v23[6] = v41;
    v23[0] = v35;
    v23[1] = v36;
    v23[2] = v37;
    v23[3] = v38;
    v10 = (v1 + *(a1 + 112));
    v11 = v10[1];
    *&v24 = *v10;
    *(&v24 + 1) = v11;
    v27 = v37;
    v28 = v38;
    v25 = v35;
    v26 = v36;
    v31 = v41;
    v32 = v24;
    v29 = v39;
    v30 = v40;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v25, v12, v13, v14);
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v18 = v28;
    outlined init with copy of AnyIdentifiableShareConfiguration(&v35, v33);
    outlined copy of AppIntentExecutor?(v24);
    outlined init with copy of SharingPickerHostModifier.Model(v23, v33);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of AnyIdentifiableShareConfiguration(&v35);
    outlined destroy of SharingPickerHostModifier.Model(v23);
    v33[4] = v19;
    v33[5] = v20;
    v33[6] = v21;
    v33[7] = v22;
    v33[0] = v15;
    v33[1] = v16;
    v33[2] = v17;
    v33[3] = v18;
    _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_3(v33, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
    return _s7SwiftUI16PlatformItemListV0D0V06SystemD0OSgWOhTm_3(v34, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction);
  }

  return result;
}

uint64_t closure #1 in closure #2 in ShareLink.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = v14;
  v24[2] = v15;
  v24[3] = v16;
  v24[4] = v17;
  v24[5] = v18;
  v24[6] = v19;
  v24[7] = v20;
  v24[8] = a9;
  v24[9] = v21;
  v22 = type metadata accessor for ShareLink();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v22 + 108), a5, a9);
  static ViewBuilder.buildExpression<A>(_:)(v13, a5, a9);
  return (*(v11 + 8))(v13, a5);
}

uint64_t ShareLink.init<A>(item:subject:message:preview:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v76 = a7;
  v77 = a8;
  v74 = a5;
  v75 = a6;
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v60 = a1;
  v70 = a9;
  v67 = a12;
  v68 = a13;
  v65 = a20;
  v66 = a21;
  v69 = a10;
  v58 = a11;
  v63 = a19;
  v59 = a18;
  v79 = a16;
  v62 = a15;
  v78 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v24;
  v81 = v23;
  v82 = v26;
  v83 = v25;
  v27 = type metadata accessor for SharePreview();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v55 - v29;
  v61 = *(a17 - 8);
  v31 = v61;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for CollectionOfOne();
  v35 = MEMORY[0x1EEE9AC00](v56);
  v57 = &v55 - v36;
  (*(v31 + 16))(v34, a1, a17, v35);
  v55 = a17;
  CollectionOfOne.init(_:)();
  v37 = v27;
  (*(v28 + 16))(v30, a11, v27);
  v38 = (*(v28 + 80) + 80) & ~*(v28 + 80);
  v39 = swift_allocObject();
  v40 = v62;
  v39[2] = v78;
  v39[3] = v40;
  v39[4] = v79;
  v39[5] = a17;
  v41 = v59;
  v42 = v63;
  v39[6] = v59;
  v39[7] = v42;
  v44 = v65;
  v43 = v66;
  v39[8] = v65;
  v39[9] = v43;
  v45 = v39 + v38;
  v46 = v37;
  v47 = (*(v28 + 32))(v45, v30, v37);
  v48 = v64;
  v67(v47);
  v49 = v56;
  *(&v54 + 1) = v44;
  *(&v53 + 1) = v41;
  *&v54 = v42;
  *&v53 = swift_getWitnessTable();
  *&v52 = v40;
  *(&v52 + 1) = v79;
  *&v51 = v49;
  *(&v51 + 1) = v78;
  ShareLink.init(items:subject:message:preview:label:)(v57, v71, v72, v73, v74, v75, v76, v77, v70, v69, partial apply for closure #1 in ShareLink.init<A>(item:subject:message:preview:label:), v39, v48, v51, v52, v53, v54, v43);
  (*(v28 + 8))(v58, v46);
  return (*(v61 + 8))(v60, v55);
}

uint64_t ShareLink.init(items:subject:message:preview:onPresentationChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, __int128 a21, uint64_t a22)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v31 = a1;
  v37 = a9;
  v36 = a10;
  v46 = a12;
  v35 = a11;
  v45 = a13;
  v34 = a14;
  v47 = a17;
  v30 = *(&a20 + 1);
  v33 = a15;
  v22 = *(a16 - 8);
  v32 = a22;
  v23 = MEMORY[0x1EEE9AC00](a1);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v23);
  v26 = v37;
  ShareLink.init(items:subject:message:preview:label:)(v25, v38, v39, v40, v41, v42, v43, v44, v37, v36, *(&v36 + 1), v35, v34, v33, a16, v47, a18, a19, a20, a21, a22);
  (*(v22 + 8))(v31, a16);
  v48 = a16;
  v49 = v47;
  v50 = a18;
  v51 = a19;
  v52 = a20;
  v53 = v30;
  v54 = a21;
  v55 = v32;
  v27 = &v26[*(type metadata accessor for ShareLink() + 112)];
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v27);
  v29 = v45;
  *v27 = v46;
  v27[1] = v29;
  return result;
}

uint64_t ShareLink.init<A>(item:subject:message:preview:onPresentationChanged:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, void (*a13)(uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v71 = a7;
  v72 = a8;
  v69 = a5;
  v70 = a6;
  v67 = a3;
  v68 = a4;
  v66 = a2;
  v54 = a1;
  v65 = a9;
  v63 = a12;
  v61 = a14;
  v62 = a13;
  v59 = a21;
  v60 = a22;
  v64 = a10;
  v73 = a11;
  v56 = a17;
  v57 = a20;
  v58 = a19;
  v53 = a16;
  v74 = a15;
  v75 = a16;
  v49 = a15;
  v76 = a19;
  v77 = a20;
  v23 = type metadata accessor for SharePreview();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  v48 = &v47 - v25;
  v55 = *(a18 - 8);
  v27 = v55;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CollectionOfOne();
  v31 = MEMORY[0x1EEE9AC00](v51);
  v52 = &v47 - v32;
  (*(v27 + 16))(v30, a1, a18, v31);
  v50 = a18;
  CollectionOfOne.init(_:)();
  v33 = v23;
  (*(v24 + 16))(v26, v73, v23);
  v34 = (*(v24 + 80) + 80) & ~*(v24 + 80);
  v35 = swift_allocObject();
  v36 = v53;
  *(v35 + 2) = a15;
  *(v35 + 3) = v36;
  v37 = v56;
  *(v35 + 4) = v56;
  *(v35 + 5) = a18;
  v38 = v58;
  v39 = v57;
  *(v35 + 6) = v58;
  *(v35 + 7) = v39;
  v41 = v59;
  v40 = v60;
  *(v35 + 8) = v59;
  *(v35 + 9) = v40;
  (*(v24 + 32))(&v35[v34], v48, v33);
  v42 = v51;
  *(&v46 + 1) = v41;
  *(&v45 + 1) = v38;
  *&v46 = v39;
  *&v45 = swift_getWitnessTable();
  *(&v44 + 1) = partial apply for closure #1 in ShareLink.init<A>(item:subject:message:preview:onPresentationChanged:label:);
  *&v44 = v64;
  ShareLink.init(items:subject:message:preview:onPresentationChanged:label:)(v52, v66, v67, v68, v69, v70, v71, v72, v65, v44, v35, v63, *(&v63 + 1), v62, v61, v42, v49, v36, v37, v45, v46, v40);
  (*(v24 + 8))(v73, v33);
  return (*(v55 + 8))(v54, v50);
}

uint64_t partial apply for closure #1 in ShareLink.init<A>(item:subject:message:preview:label:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharePreview() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = type metadata accessor for SharePreview();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t ShareLink<>.init(items:subject:message:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v33 = a9;
  v34 = a2;
  v32 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a13 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (*(v19 + 16))(v23, a1, a13, v21);
  a11(v24);
  v25 = _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  *(&v30 + 1) = a16;
  *&v30 = MEMORY[0x1E6965C48];
  *&v29 = a15;
  *(&v29 + 1) = MEMORY[0x1E6965C48];
  *&v28 = MEMORY[0x1E69E73E0];
  *(&v28 + 1) = a14;
  *&v27 = a13;
  *(&v27 + 1) = MEMORY[0x1E69E73E0];
  ShareLink.init(items:subject:message:preview:label:)(v23, v34, v35, v36, v37, v38, v39, v40, v33, v32, 0, 0, v18, v27, v28, v29, v30, v25);
  return (*(v19 + 8))(a1, a13);
}

{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v33 = a9;
  v34 = a2;
  v32 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a13 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = (*(v19 + 16))(v23, a1, a13, v21);
  a11(v24);
  v25 = lazy protocol witness table accessor for type String and conformance String();
  *(&v30 + 1) = a16;
  *&v30 = MEMORY[0x1E6965C48];
  *&v29 = a15;
  *(&v29 + 1) = MEMORY[0x1E6965C48];
  *&v28 = MEMORY[0x1E69E73E0];
  *(&v28 + 1) = a14;
  *&v27 = a13;
  *(&v27 + 1) = MEMORY[0x1E69E73E0];
  ShareLink.init(items:subject:message:preview:label:)(v23, v34, v35, v36, v37, v38, v39, v40, v33, v32, 0, 0, v18, v27, v28, v29, v30, v25);
  return (*(v19 + 8))(a1, a13);
}

uint64_t ShareLink<>.init<>(item:subject:message:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v33 = a9;
  v34 = a2;
  v32 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 16))(v20, a1, v21);
  a11(v23);
  v24 = lazy protocol witness table accessor for type CollectionOfOne<URL> and conformance CollectionOfOne<A>();
  v25 = _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  *(&v30 + 1) = a14;
  *&v30 = MEMORY[0x1E6965C48];
  *&v29 = v24;
  *(&v29 + 1) = MEMORY[0x1E6965C48];
  *&v28 = MEMORY[0x1E69E73E0];
  *(&v28 + 1) = a13;
  *&v27 = v18;
  *(&v27 + 1) = MEMORY[0x1E69E73E0];
  ShareLink.init(items:subject:message:preview:label:)(v20, v34, v35, v36, v37, v38, v39, v40, v33, v32, 0, 0, v16, v27, v28, v29, v30, v25);
  return (*(v22 + 8))(a1, v21);
}

unint64_t lazy protocol witness table accessor for type CollectionOfOne<URL> and conformance CollectionOfOne<A>()
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<URL> and conformance CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<URL> and conformance CollectionOfOne<A>)
  {
    type metadata accessor for CollectionOfOne<URL>(255, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<URL> and conformance CollectionOfOne<A>);
  }

  return result;
}

uint64_t ShareLink<>.init<>(item:subject:message:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v20;
  v36[1] = v21;
  v22(v17);
  type metadata accessor for CollectionOfOne<String>(0, &lazy cache variable for type metadata for CollectionOfOne<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6BC0]);
  v24 = v23;
  v25 = lazy protocol witness table accessor for type CollectionOfOne<String> and conformance CollectionOfOne<A>();
  v26 = lazy protocol witness table accessor for type String and conformance String();
  *(&v31 + 1) = a14;
  *&v31 = MEMORY[0x1E6965C48];
  *&v30 = v25;
  *(&v30 + 1) = MEMORY[0x1E6965C48];
  *&v29 = MEMORY[0x1E69E73E0];
  *(&v29 + 1) = a13;
  *&v28 = v24;
  *(&v28 + 1) = MEMORY[0x1E69E73E0];
  return ShareLink.init(items:subject:message:preview:label:)(v36, a2, a3, v32, v33, v34, v35, a9, a8, a10, 0, 0, v19, v28, v29, v30, v31, v26);
}

unint64_t lazy protocol witness table accessor for type CollectionOfOne<String> and conformance CollectionOfOne<A>()
{
  result = lazy protocol witness table cache variable for type CollectionOfOne<String> and conformance CollectionOfOne<A>;
  if (!lazy protocol witness table cache variable for type CollectionOfOne<String> and conformance CollectionOfOne<A>)
  {
    type metadata accessor for CollectionOfOne<String>(255, &lazy cache variable for type metadata for CollectionOfOne<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionOfOne<String> and conformance CollectionOfOne<A>);
  }

  return result;
}

void DefaultShareLinkLabel.body.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  outlined copy of Text.Storage(v3, v4, v5);

  specialized Image.init(systemName:)(0xD000000000000013, 0x800000018CD56FF0);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

void protocol witness for View.body.getter in conformance DefaultShareLinkLabel(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  outlined copy of Text.Storage(v3, v4, v5);

  specialized Image.init(systemName:)(0xD000000000000013, 0x800000018CD56FF0);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t ShareLink<>.init(items:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v25 = a15;
  v26 = a10;
  v19 = *(a12 - 8);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, a12, v20);
  *(&v24 + 1) = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  *&v24 = a16;
  ShareLink.init(items:subject:message:preview:label:)(v22, v27, v28, v29, v30, v31, v32, v33, a9, v26, *(&v26 + 1), a11, closure #1 in ShareLink<>.init(items:subject:message:preview:), 0, a12, a13, a14, &type metadata for DefaultShareLinkLabel, v25, v24, a17);
  return (*(v19 + 8))(a1, a12);
}

uint64_t ShareLink<>.init(items:subject:message:preview:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19)
{
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v28 = a1;
  v30 = a10;
  v39 = a12;
  v29 = a11;
  v38 = a13;
  v20 = *(a14 - 8);
  v21 = MEMORY[0x1EEE9AC00](a1);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  ShareLink<>.init(items:subject:message:preview:)(v23, v31, v32, v33, v34, v35, v36, v37, a9, v30, v29, a14, a15, a16, a17, a18, a19);
  (*(v20 + 8))(v28, a14);
  v24 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  v40 = a14;
  v41 = a15;
  v42 = a16;
  v43 = &type metadata for DefaultShareLinkLabel;
  v44 = a17;
  v45 = a18;
  v46 = v24;
  v47 = a19;
  v25 = &a9[*(type metadata accessor for ShareLink() + 112)];
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v25);
  v27 = v38;
  *v25 = v39;
  v25[1] = v27;
  return result;
}

uint64_t ShareLink<>.init(_:items:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v43 = a7;
  v44 = a8;
  v37 = a9;
  v41 = a10;
  v42 = a6;
  v39 = a12;
  v40 = a11;
  v38 = a13;
  v36 = a14;
  v33 = a17;
  v34 = a5;
  v32 = a19;
  v35 = a15;
  v25 = *(a16 - 8);
  v26 = MEMORY[0x1EEE9AC00](a1);
  v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v29, a16, v26);
  v46 = a1;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  *(&v31 + 1) = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  *&v31 = a20;
  ShareLink.init(items:subject:message:preview:label:)(v28, v42, v43, v44, v41, v40, v39, v38, v37, v36, *(&v36 + 1), v35, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v45, a16, v33, a18, &type metadata for DefaultShareLinkLabel, v32, v31, a21);

  return (*(v25 + 8))(v34, a16);
}

{
  v43 = a7;
  v44 = a8;
  v37 = a9;
  v41 = a10;
  v42 = a6;
  v39 = a12;
  v40 = a11;
  v38 = a13;
  v36 = a14;
  v33 = a17;
  v34 = a5;
  v32 = a19;
  v35 = a15;
  v25 = *(a16 - 8);
  v26 = MEMORY[0x1EEE9AC00](a1);
  v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v28, v29, a16, v26);
  v46 = a1;
  v47 = a2;
  a3 &= 1u;
  v48 = a3;
  v49 = a4;
  *(&v31 + 1) = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  *&v31 = a20;
  ShareLink.init(items:subject:message:preview:label:)(v28, v42, v43, v44, v41, v40, v39, v38, v37, v36, *(&v36 + 1), v35, partial apply for closure #1 in ShareLink<>.init(_:items:subject:message:preview:), v45, a16, v33, a18, &type metadata for DefaultShareLinkLabel, v32, v31, a21);
  outlined consume of Text.Storage(a1, a2, a3);

  return (*(v25 + 8))(v34, a16);
}

uint64_t ShareLink<>.init<A>(_:items:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v40 = a4;
  v38 = a3;
  v34 = a2;
  v37 = a9;
  v39 = a10;
  v36 = a11;
  v32 = a20;
  v31 = a17;
  v33 = a16;
  v35 = a12;
  v22 = *(a13 - 8);
  v23 = MEMORY[0x1EEE9AC00](a1);
  v25 = &v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v23);
  v46 = a13;
  v47 = a14;
  v48 = a15;
  v49 = a16;
  v26 = v31;
  v50 = v31;
  v51 = a18;
  v52 = a19;
  v53 = v32;
  v54 = a21;
  v55 = a1;
  *(&v29 + 1) = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  *(&v28 + 1) = a18;
  *&v29 = a19;
  *&v28 = v26;
  ShareLink.init(items:subject:message:preview:label:)(v25, v38, v40, v41, v42, v43, v44, v39, v37, v36, *(&v36 + 1), v35, partial apply for closure #1 in ShareLink<>.init<A>(_:items:subject:message:preview:), v45, a13, a14, a15, &type metadata for DefaultShareLinkLabel, v28, v29, a21);
  (*(v22 + 8))(v34, a13);
  return (*(*(v33 - 8) + 8))(a1);
}

uint64_t closure #1 in ShareLink<>.init<A>(_:items:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t ShareLink<>.init<A>(item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v41 = a7;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v38 = a4;
  v35 = a9;
  v36 = a2;
  v30 = a1;
  v31 = a11;
  v32 = a17;
  v33 = a12;
  v34 = a10;
  v43 = a12;
  v44 = a13;
  v45 = a15;
  v46 = a16;
  v18 = type metadata accessor for SharePreview();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v22 = *(a14 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v26, a1, a14, v24);
  v27 = v31;
  (*(v19 + 16))(v21, v31, v18);
  v28 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  ShareLink.init<A>(item:subject:message:preview:label:)(v26, v36, v37, v38, v39, v40, v41, v42, v35, v34, v21, closure #1 in ShareLink<>.init(items:subject:message:preview:), 0, v33, a13, &type metadata for DefaultShareLinkLabel, a14, a15, a16, v28, v32);
  (*(v19 + 8))(v27, v18);
  return (*(v22 + 8))(v30, a14);
}

uint64_t ShareLink<>.init<A>(item:subject:message:preview:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v54 = a7;
  v55 = a8;
  v52 = a5;
  v53 = a6;
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v41 = a1;
  v48 = a9;
  v56 = a12;
  v57 = a13;
  v47 = a10;
  v43 = a19;
  v44 = a17;
  v45 = a15;
  v46 = a14;
  v58 = a14;
  v59 = a15;
  v60 = a17;
  v61 = a18;
  v42 = a18;
  v20 = type metadata accessor for SharePreview();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - v22;
  v24 = *(a16 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28, a1, a16, v26);
  (*(v21 + 16))(v23, a11, v20);
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v39 = v23;
  v32 = v48;
  ShareLink<>.init<A>(item:subject:message:preview:)(v28, v49, v50, v51, v52, v53, v54, v55, v48, v47, v39, v46, v45, a16, v44, a18, a19);
  (*(v21 + 8))(a11, v20);
  (*(v24 + 8))(v41, a16);
  v33 = type metadata accessor for CollectionOfOne();
  WitnessTable = swift_getWitnessTable();
  v35 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  v58 = v33;
  v59 = v31;
  v60 = v30;
  v61 = &type metadata for DefaultShareLinkLabel;
  v62 = WitnessTable;
  v63 = v29;
  v64 = v42;
  v65 = v35;
  v66 = v43;
  v36 = &v32[*(type metadata accessor for ShareLink() + 112)];
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v36);
  v38 = v57;
  *v36 = v56;
  v36[1] = v38;
  return result;
}

uint64_t ShareLink<>.init<A>(_:item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v49 = a7;
  v50 = a8;
  v48 = a6;
  v34 = a5;
  v41 = a4;
  v40 = a3;
  v38 = a2;
  v36 = a1;
  v43 = a9;
  v46 = a11;
  v47 = a10;
  v44 = a13;
  v45 = a12;
  v42 = a14;
  v33 = a15;
  v37 = a21;
  v35 = a17;
  v39 = a16;
  v56 = a16;
  v57 = a17;
  v58 = a19;
  v59 = a20;
  v22 = type metadata accessor for SharePreview();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - v24;
  v26 = *(a18 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, a5, a18, v28);
  (*(v23 + 16))(v25, a15, v22);
  v52 = v36;
  v53 = v38;
  v54 = v40;
  v55 = v41;
  v31 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  ShareLink.init<A>(item:subject:message:preview:label:)(v30, v48, v49, v50, v47, v46, v45, v44, v43, v42, v25, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), v51, v39, v35, &type metadata for DefaultShareLinkLabel, a18, a19, a20, v31, v37);

  (*(v23 + 8))(v33, v22);
  return (*(v26 + 8))(v34, a18);
}

{
  v55 = a7;
  v56 = a8;
  v54 = a6;
  v39 = a5;
  v47 = a4;
  v45 = a3;
  v43 = a2;
  v49 = a9;
  v52 = a11;
  v53 = a10;
  v50 = a13;
  v51 = a12;
  v48 = a14;
  v38 = a15;
  v44 = a21;
  v40 = a20;
  v41 = a19;
  v42 = a17;
  v46 = a16;
  v62 = a16;
  v63 = a17;
  v64 = a19;
  v65 = a20;
  v23 = type metadata accessor for SharePreview();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  v27 = *(a18 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v37 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31, a5, a18, v29);
  (*(v24 + 16))(v26, a15, v23);
  v58 = a1;
  v32 = a1;
  v33 = v43;
  v59 = v43;
  v34 = v45 & 1;
  v60 = v45 & 1;
  v61 = v47;
  v35 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  ShareLink.init<A>(item:subject:message:preview:label:)(v31, v54, v55, v56, v53, v52, v51, v50, v49, v48, v26, partial apply for closure #2 in TableColumn<>.init(_:sortUsing:content:), v57, v46, v42, &type metadata for DefaultShareLinkLabel, a18, v41, v40, v35, v44);
  outlined consume of Text.Storage(v32, v33, v34);

  (*(v24 + 8))(v38, v23);
  return (*(v27 + 8))(v39, a18);
}

uint64_t ShareLink<>.init<A, B>(_:item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v47 = a7;
  v48 = a8;
  v46 = a6;
  v45 = a5;
  v44 = a4;
  v42 = a3;
  v50 = a1;
  v51 = a2;
  v41 = a9;
  v43 = a10;
  v40 = a11;
  v39 = a20;
  v38 = a19;
  v36 = a18;
  v37 = a17;
  v49 = a15;
  v35 = a12;
  v62 = a13;
  v63 = a14;
  v64 = a17;
  v65 = a18;
  v20 = type metadata accessor for SharePreview();
  v34 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  v24 = *(a16 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v28, v51, a16, v26);
  (*(v21 + 16))(v23, a12, v20);
  v53 = a13;
  v54 = a14;
  v55 = v49;
  v56 = a16;
  v29 = v37;
  v30 = v36;
  v57 = v37;
  v58 = v36;
  v31 = v39;
  v59 = v38;
  v60 = v39;
  v61 = v50;
  v32 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  ShareLink.init<A>(item:subject:message:preview:label:)(v28, v42, v44, v45, v46, v47, v48, v43, v41, v40, v23, partial apply for closure #1 in ShareLink<>.init<A, B>(_:item:subject:message:preview:), v52, a13, a14, &type metadata for DefaultShareLinkLabel, a16, v29, v30, v32, v31);
  (*(v21 + 8))(v35, v34);
  (*(v24 + 8))(v51, a16);
  return (*(*(v49 - 8) + 8))(v50);
}

uint64_t closure #1 in ShareLink<>.init<A, B>(_:item:subject:message:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t ShareLink<>.init(items:subject:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return ShareLink<>.init(items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, closure #1 in ShareLink<>.init(items:subject:message:preview:), ShareLink<>.init(items:subject:message:label:));
}

{
  return ShareLink<>.init(items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, closure #1 in ShareLink<>.init(items:subject:message:preview:), ShareLink<>.init(items:subject:message:label:));
}

uint64_t ShareLink<>.init(_:items:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  return ShareLink<>.init(_:items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), ShareLink<>.init(items:subject:message:label:));
}

{
  return ShareLink<>.init(_:items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, partial apply for closure #1 in ShareLink<>.init(_:items:subject:message:preview:), ShareLink<>.init(items:subject:message:label:));
}

{
  return ShareLink<>.init(_:items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, partial apply for closure #1 in TextField<>.init<A>(_:value:format:prompt:), ShareLink<>.init(items:subject:message:label:));
}

{
  return ShareLink<>.init(_:items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, partial apply for closure #1 in ShareLink<>.init(_:items:subject:message:preview:), ShareLink<>.init(items:subject:message:label:));
}

uint64_t ShareLink<>.init<A>(_:items:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  return ShareLink<>.init<A>(_:items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in ShareLink<>.init<A>(_:items:subject:message:), ShareLink<>.init(items:subject:message:label:));
}

{
  return ShareLink<>.init<A>(_:items:subject:message:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, partial apply for closure #1 in ShareLink<>.init<A>(_:items:subject:message:), ShareLink<>.init(items:subject:message:label:));
}

uint64_t ShareLink<>.init(items:subject:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  v26 = a7;
  v27 = a8;
  v24 = a5;
  v25 = a6;
  v22 = a13;
  v23 = a4;
  v16 = *(a10 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, a10, v17);
  v20 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  v22(v19, a2, a3, v23, v24, v25, v26, v27, a9, a12, 0, a10, &type metadata for DefaultShareLinkLabel, a11, v20);
  return (*(v16 + 8))(a1, a10);
}

uint64_t closure #1 in ShareLink<>.init(items:subject:message:preview:)@<X0>(uint64_t a1@<X8>)
{
  result = static Text.System.shareEllipses.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t ShareLink<>.init(_:items:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, _BYTE *, uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  v37 = a7;
  v38 = a8;
  v30[1] = a9;
  v35 = a10;
  v36 = a6;
  v33 = a12;
  v34 = a11;
  v31 = a18;
  v32 = a13;
  v30[0] = a14;
  v23 = *(a15 - 8);
  v24 = MEMORY[0x1EEE9AC00](a1);
  v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26, v27, a15, v24);
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v28 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  v31(v26, v36, v37, v38, v35, v34, v33, v32, v30[0], a17, v39, a15, &type metadata for DefaultShareLinkLabel, a16, v28);

  return (*(v23 + 8))(a5, a15);
}

{
  v37 = a7;
  v38 = a8;
  v30[1] = a9;
  v35 = a10;
  v36 = a6;
  v33 = a12;
  v34 = a11;
  v31 = a18;
  v32 = a13;
  v30[0] = a14;
  v23 = *(a15 - 8);
  v24 = MEMORY[0x1EEE9AC00](a1);
  v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26, v27, a15, v24);
  v40 = a1;
  v41 = a2;
  a3 &= 1u;
  v42 = a3;
  v43 = a4;
  v28 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  v31(v26, v36, v37, v38, v35, v34, v33, v32, v30[0], a17, v39, a15, &type metadata for DefaultShareLinkLabel, a16, v28);
  outlined consume of Text.Storage(a1, a2, a3);

  return (*(v23 + 8))(a5, a15);
}

uint64_t ShareLink<>.init<A>(_:items:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *, uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v25[1] = a9;
  v28 = a10;
  v29 = a4;
  v26 = a17;
  v27 = a3;
  v19 = *(a12 - 8);
  v20 = MEMORY[0x1EEE9AC00](a1);
  v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v20);
  v35 = a12;
  v36 = a13;
  v37 = a14;
  v38 = a15;
  v39 = a1;
  v23 = lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
  v26(v22, v27, v29, v30, v31, v32, v33, v28, a11, a16, v34, a12, &type metadata for DefaultShareLinkLabel, a14, v23);
  (*(v19 + 8))(a2, a12);
  return (*(*(a13 - 8) + 8))(a1, a13);
}

uint64_t closure #1 in ShareLink<>.init<A>(_:items:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t ShareLink<>.init<>(item:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v82 = a8;
  v80 = a7;
  v79 = a6;
  v85 = a5;
  v84 = a4;
  v83 = a3;
  v81 = a2;
  v78 = a10;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v70 - v16;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v70 - v18;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v26;
  v30 = *(v26 + 16);
  v77 = a1;
  v30(v29, a1, v25, v27);
  v74 = v29;
  (v30)(v24, v29, v25);
  v31 = static Text.System.shareEllipses.getter();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  type metadata accessor for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>();
  v39 = v38;
  v40 = a9 + v38[27];
  *v40 = v31;
  *(v40 + 1) = v33;
  v40[16] = v35 & 1;
  *(v40 + 3) = v37;
  *a9 = 0;
  v41 = (a9 + v38[24]);
  v42 = (a9 + v38[25]);
  v43 = (a9 + v38[26]);
  v44 = (a9 + v38[28]);
  *v44 = 0;
  v44[1] = 0;
  v45 = a9 + v38[29];
  *&v88[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v88);
  v46 = v88[7];
  *(v45 + 6) = v88[6];
  *(v45 + 7) = v46;
  *(v45 + 8) = v88[8];
  v45[144] = v89;
  v47 = v88[3];
  *(v45 + 2) = v88[2];
  *(v45 + 3) = v47;
  v48 = v88[5];
  *(v45 + 4) = v88[4];
  *(v45 + 5) = v48;
  v49 = v88[1];
  *v45 = v88[0];
  *(v45 + 1) = v49;
  v50 = a9 + v39[30];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = v39[23];
  v52 = v84;
  v71 = v51;
  v76 = v24;
  v53 = v24;
  v54 = v83;
  outlined init with copy of CollectionOfOne<URL>(v53, a9 + v51);
  v55 = v78;
  v56 = v79;
  v57 = v80;
  v58 = v82;
  v59 = v81;
  *v41 = v81;
  v41[1] = v54;
  v60 = v85;
  v41[2] = v52;
  v41[3] = v60;
  *v42 = v56;
  v42[1] = v57;
  v42[2] = v58;
  v42[3] = v55;
  *v43 = 0;
  v43[1] = 0;
  if (v60)
  {
    v61 = v60;
    outlined copy of Text?(v56, v57, v58, v55);
    v62 = outlined copy of Text?(v59, v54, v52, v61);
    MEMORY[0x18D009CE0](&v87, v62);
    v86 = v52 & 1;
    Text.assertUnstyled(_:options:)();
  }

  else
  {
    outlined copy of Text?(v56, v57, v58, v55);
  }

  v63 = v72;
  outlined init with copy of CollectionOfOne<URL>(a9 + v71, v72);
  v64 = v75;
  v65 = v73;
  (*(v75 + 32))(v73, v63, v25);
  v66 = v64[7];
  v66(v65, 0, 1, v25);
  v66(v19, 1, 1, v25);
  outlined assign with take of URL?(v65, v19);
  outlined init with take of URL?(v19, v14);
  v66(v19, 1, 1, v25);
  v67 = v64[6];
  while (v67(v14, 1, v25) != 1)
  {
    outlined destroy of CollectionOfOne<URL>.Iterator(v14, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
    outlined init with take of URL?(v19, v14);
    v66(v19, 1, 1, v25);
  }

  outlined destroy of CollectionOfOne<URL>.Iterator(v19, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  outlined consume of Text?(v79, v80, v82, v78);
  outlined consume of Text?(v81, v83, v84, v85);
  v68 = v64[1];
  v68(v77, v25);
  outlined destroy of CollectionOfOne<URL>.Iterator(v76, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  return (v68)(v74, v25);
}

double ShareLink<>.init<>(item:subject:message:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = static Text.System.shareEllipses.getter();
  v30 = v19;
  v31 = v18;
  v32 = v20;
  v46 = v21 & 1;
  *&v47[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v47);
  v42 = v47[6];
  v43 = v47[7];
  v44 = v47[8];
  v45 = v48;
  v38 = v47[2];
  v39 = v47[3];
  v40 = v47[4];
  v41 = v47[5];
  v36 = v47[0];
  v37 = v47[1];
  if (a6)
  {
    outlined copy of Text?(a7, a8, a10, a11);
    v22 = outlined copy of Text?(a3, a4, a5, a6);
    MEMORY[0x18D009CE0](&v35, v22);
    Text.assertUnstyled(_:options:)();
    outlined consume of Text?(a7, a8, a10, a11);
  }

  outlined consume of Text?(a3, a4, a5, a6);
  v23 = v43;
  *(a9 + 248) = v42;
  v24 = v44;
  *(a9 + 264) = v23;
  *(a9 + 280) = v24;
  v25 = v39;
  *(a9 + 184) = v38;
  *(a9 + 200) = v25;
  v26 = v41;
  *(a9 + 216) = v40;
  *(a9 + 232) = v26;
  result = *&v36;
  v28 = v37;
  *(a9 + 152) = v36;
  v29 = v46;
  *a9 = 0;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = v31;
  *(a9 + 112) = v30;
  *(a9 + 120) = v29;
  *(a9 + 136) = 0;
  *(a9 + 144) = 0;
  *(a9 + 128) = v32;
  *(a9 + 296) = v45;
  *(a9 + 168) = v28;
  *(a9 + 304) = 0;
  *(a9 + 312) = 0;
  return result;
}

uint64_t ShareLink<>.init<>(_:item:subject:message:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v87 = a7;
  v86 = a6;
  v85 = a5;
  v78 = a3;
  LODWORD(v73) = a2;
  v72[1] = a1;
  v84 = a13;
  v82 = a12;
  v81 = a11;
  v80 = a10;
  v83 = a9;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = v72 - v19;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v72 - v21;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v74 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v72 - v26;
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v29;
  v33 = *(v29 + 16);
  v79 = a4;
  v33(v32, a4, v28, v30);
  v76 = v32;
  (v33)(v27, v32, v28);
  v34 = Text.init(_:tableName:bundle:comment:)();
  v36 = v35;
  LOBYTE(v32) = v37;
  v39 = v38;
  type metadata accessor for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>();
  v41 = v40;
  v42 = a8 + v40[27];
  *v42 = v34;
  *(v42 + 1) = v36;
  v42[16] = v32 & 1;
  *(v42 + 3) = v39;
  *a8 = 0;
  v43 = (a8 + v40[24]);
  v44 = (a8 + v40[25]);
  v45 = (a8 + v40[26]);
  v46 = (a8 + v40[28]);
  *v46 = 0;
  v46[1] = 0;
  v47 = a8 + v40[29];
  *&v90[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v90);
  v48 = v90[7];
  v49 = v90[8];
  *(v47 + 6) = v90[6];
  *(v47 + 7) = v48;
  *(v47 + 8) = v49;
  v47[144] = v91;
  v50 = v90[3];
  *(v47 + 2) = v90[2];
  *(v47 + 3) = v50;
  v51 = v90[5];
  *(v47 + 4) = v90[4];
  *(v47 + 5) = v51;
  v52 = v90[1];
  *v47 = v90[0];
  *(v47 + 1) = v52;
  v53 = a8 + v41[30];
  *v53 = 0;
  *(v53 + 1) = 0;
  v73 = v41[23];
  v78 = v27;
  v54 = v27;
  v55 = v86;
  outlined init with copy of CollectionOfOne<URL>(v54, a8 + v73);
  v56 = v80;
  v57 = v81;
  v58 = v82;
  v59 = v84;
  v60 = v85;
  *v43 = v85;
  v43[1] = v55;
  v61 = v83;
  v43[2] = v87;
  v43[3] = v61;
  *v44 = v56;
  v44[1] = v57;
  v44[2] = v58;
  v44[3] = v59;
  *v45 = 0;
  v45[1] = 0;
  outlined copy of Text?(v56, v57, v58, v59);
  if (v61)
  {
    v62 = v60;
    v63 = v87;
    v64 = outlined copy of Text?(v62, v55, v87, v61);
    MEMORY[0x18D009CE0](&v89, v64);
    v88 = v63 & 1;
    Text.assertUnstyled(_:options:)();
  }

  v65 = v74;
  outlined init with copy of CollectionOfOne<URL>(a8 + v73, v74);
  v66 = v77;
  v67 = v75;
  (*(v77 + 32))(v75, v65, v28);
  v68 = v66[7];
  v68(v67, 0, 1, v28);
  v68(v22, 1, 1, v28);
  outlined assign with take of URL?(v67, v22);
  outlined init with take of URL?(v22, v17);
  v68(v22, 1, 1, v28);
  v69 = v66[6];
  while (v69(v17, 1, v28) != 1)
  {
    outlined destroy of CollectionOfOne<URL>.Iterator(v17, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
    outlined init with take of URL?(v22, v17);
    v68(v22, 1, 1, v28);
  }

  outlined destroy of CollectionOfOne<URL>.Iterator(v22, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  outlined consume of Text?(v80, v81, v82, v84);
  outlined consume of Text?(v85, v86, v87, v83);
  v70 = v66[1];
  v70(v79, v28);
  outlined destroy of CollectionOfOne<URL>.Iterator(v78, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  return (v70)(v76, v28);
}

uint64_t ShareLink<>.init<>(_:item:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v78 = a8;
  v82 = a7;
  v77 = a6;
  v81 = a4;
  v80 = a3;
  v85 = a2;
  v76 = a14;
  v84 = a13;
  v83 = a12;
  v74 = a11;
  v75 = a10;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = v65 - v21;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v65 - v23;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v68 = v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v65 - v28;
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v31;
  v35 = *(v31 + 16);
  v73 = a5;
  v35(v34, a5, v30, v32);
  v70 = v34;
  (v35)(v29, v34, v30);
  type metadata accessor for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>();
  v37 = v36;
  v38 = a9 + v36[27];
  v79 = a1;
  v39 = v85;
  *v38 = a1;
  *(v38 + 1) = v39;
  v67 = v80 & 1;
  v38[16] = v80 & 1;
  *(v38 + 3) = v81;
  *a9 = 0;
  v40 = (a9 + v36[24]);
  v41 = (a9 + v36[25]);
  v42 = (a9 + v36[26]);
  v43 = (a9 + v36[28]);
  *v43 = 0;
  v43[1] = 0;
  v44 = a9 + v36[29];
  *&v88[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v88);
  v45 = v88[7];
  *(v44 + 6) = v88[6];
  *(v44 + 7) = v45;
  *(v44 + 8) = v88[8];
  v44[144] = v89;
  v46 = v88[3];
  *(v44 + 2) = v88[2];
  *(v44 + 3) = v46;
  v47 = v88[5];
  *(v44 + 4) = v88[4];
  *(v44 + 5) = v47;
  v48 = v88[1];
  *v44 = v88[0];
  *(v44 + 1) = v48;
  v49 = v78;
  v50 = a9 + v37[30];
  *v50 = 0;
  *(v50 + 1) = 0;
  v66 = v37[23];
  v72 = v29;
  outlined init with copy of CollectionOfOne<URL>(v29, a9 + v66);
  v51 = v77;
  *v40 = v77;
  v40[1] = v82;
  v40[2] = v49;
  v52 = v75;
  v40[3] = v75;
  v53 = v76;
  v54 = v74;
  *v41 = v74;
  v55 = v84;
  v41[1] = v83;
  v41[2] = v55;
  v41[3] = v53;
  *v42 = 0;
  v42[1] = 0;
  if (v52)
  {
    v56 = v52;
    v65[1] = "square.and.arrow.up";

    outlined copy of Text.Storage(v79, v85, v67);
    outlined copy of Text?(v54, v83, v84, v53);
    v57 = outlined copy of Text?(v51, v82, v49, v56);
    MEMORY[0x18D009CE0](&v87, v57);
    v86 = v49 & 1;
    Text.assertUnstyled(_:options:)();
  }

  else
  {

    outlined copy of Text.Storage(v79, v85, v67);
    outlined copy of Text?(v54, v83, v84, v53);
  }

  v58 = v68;
  outlined init with copy of CollectionOfOne<URL>(a9 + v66, v68);
  v59 = v71;
  v60 = v69;
  (*(v71 + 32))(v69, v58, v30);
  v61 = v59[7];
  v61(v60, 0, 1, v30);
  v61(v24, 1, 1, v30);
  outlined assign with take of URL?(v60, v24);
  outlined init with take of URL?(v24, v19);
  v61(v24, 1, 1, v30);
  v62 = v59[6];
  while (v62(v19, 1, v30) != 1)
  {
    outlined destroy of CollectionOfOne<URL>.Iterator(v19, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
    outlined init with take of URL?(v24, v19);
    v61(v24, 1, 1, v30);
  }

  outlined destroy of CollectionOfOne<URL>.Iterator(v24, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  outlined consume of Text?(v74, v83, v84, v76);
  outlined consume of Text?(v77, v82, v78, v75);
  outlined consume of Text.Storage(v79, v85, v80 & 1);

  v63 = v59[1];
  v63(v73, v30);
  outlined destroy of CollectionOfOne<URL>.Iterator(v72, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  return (v63)(v70, v30);
}

double ShareLink<>.init<>(_:item:subject:message:)@<D0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = Text.init(_:tableName:bundle:comment:)();
  v26 = v16;
  v27 = v15;
  v28 = v17;
  v41 = v18 & 1;
  *&v42[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v42);
  v38 = v42[7];
  v39 = v42[8];
  v40 = v43;
  v33 = v42[2];
  v34 = v42[3];
  v35 = v42[4];
  v36 = v42[5];
  v37 = v42[6];
  v31 = v42[0];
  v32 = v42[1];
  if (a7)
  {
    outlined copy of Text?(a8, a9, a10, a11);
    v19 = outlined copy of Text?(a3, a4, a6, a7);
    MEMORY[0x18D009CE0](&v30, v19);
    Text.assertUnstyled(_:options:)();
    outlined consume of Text?(a8, a9, a10, a11);
  }

  outlined consume of Text?(a3, a4, a6, a7);
  *(a5 + 248) = v37;
  v20 = v39;
  *(a5 + 264) = v38;
  *(a5 + 280) = v20;
  v21 = v34;
  *(a5 + 184) = v33;
  *(a5 + 200) = v21;
  v22 = v36;
  *(a5 + 216) = v35;
  *(a5 + 232) = v22;
  result = *&v31;
  v24 = v32;
  *(a5 + 152) = v31;
  v25 = v41;
  *a5 = 0;
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  *(a5 + 40) = a6;
  *(a5 + 48) = a7;
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a10;
  *(a5 + 80) = a11;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 104) = v27;
  *(a5 + 112) = v26;
  *(a5 + 120) = v25;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 128) = v28;
  *(a5 + 296) = v40;
  *(a5 + 168) = v24;
  *(a5 + 304) = 0;
  *(a5 + 312) = 0;
  return result;
}

double ShareLink<>.init<>(_:item:subject:message:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = a3 & 1;
  v43 = a3 & 1;
  *&v44[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v44);
  v39 = v44[6];
  v40 = v44[7];
  v41 = v44[8];
  v42 = v45;
  v35 = v44[2];
  v36 = v44[3];
  v37 = v44[4];
  v38 = v44[5];
  v33 = v44[0];
  v34 = v44[1];
  if (a11)
  {

    outlined copy of Text.Storage(a1, a2, v20);
    outlined copy of Text?(a12, a13, a14, a15);
    v21 = outlined copy of Text?(a7, a8, a10, a11);
    MEMORY[0x18D009CE0](&v32, v21);
    Text.assertUnstyled(_:options:)();
    outlined consume of Text.Storage(a1, a2, v20);

    outlined consume of Text?(a12, a13, a14, a15);
  }

  outlined consume of Text?(a7, a8, a10, a11);
  v22 = v40;
  *(a9 + 248) = v39;
  v23 = v41;
  *(a9 + 264) = v22;
  *(a9 + 280) = v23;
  v24 = v36;
  *(a9 + 184) = v35;
  *(a9 + 200) = v24;
  v25 = v38;
  *(a9 + 216) = v37;
  *(a9 + 232) = v25;
  result = *&v33;
  v27 = v34;
  *(a9 + 152) = v33;
  v28 = v43;
  *a9 = 0;
  *(a9 + 8) = a5;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a12;
  *(a9 + 64) = a13;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = a1;
  *(a9 + 112) = a2;
  *(a9 + 120) = v28;
  *(a9 + 136) = 0;
  *(a9 + 144) = 0;
  *(a9 + 128) = a4;
  *(a9 + 296) = v42;
  *(a9 + 168) = v27;
  *(a9 + 304) = 0;
  *(a9 + 312) = 0;
  return result;
}

uint64_t ShareLink<>.init<A>(_:item:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v82 = a8;
  v81 = a7;
  v72 = a6;
  v85 = a5;
  v84 = a4;
  v83 = a3;
  v86 = a1;
  v80 = a11;
  v79 = a10;
  v76 = a13;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v69 - v19;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v69 - v21;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v71 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - v26;
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v29;
  v33 = *(v29 + 16);
  v77 = a2;
  v33(v32, a2, v28, v30);
  v74 = v32;
  (v33)(v27, v32, v28);
  v78 = a12;
  closure #1 in ShareLink<>.init<A>(_:item:subject:message:)(v86, v89);
  v34 = v89[0];
  v35 = v89[1];
  v36 = v90;
  v37 = v91;
  type metadata accessor for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>();
  v39 = v38;
  v40 = a9 + v38[27];
  *v40 = v34;
  *(v40 + 1) = v35;
  v40[16] = v36;
  *(v40 + 3) = v37;
  *a9 = 0;
  v41 = (a9 + v38[24]);
  v42 = (a9 + v38[25]);
  v43 = (a9 + v38[26]);
  v44 = (a9 + v38[28]);
  *v44 = 0;
  v44[1] = 0;
  v45 = a9 + v38[29];
  *&v92[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v92);
  v46 = v92[7];
  *(v45 + 6) = v92[6];
  *(v45 + 7) = v46;
  *(v45 + 8) = v92[8];
  v45[144] = v93;
  v47 = v92[3];
  *(v45 + 2) = v92[2];
  *(v45 + 3) = v47;
  v48 = v92[5];
  *(v45 + 4) = v92[4];
  *(v45 + 5) = v48;
  v49 = v92[1];
  *v45 = v92[0];
  *(v45 + 1) = v49;
  v50 = v85;
  v51 = a9 + v39[30];
  *v51 = 0;
  *(v51 + 1) = 0;
  v70 = v39[23];
  v76 = v27;
  v52 = v27;
  v53 = v84;
  outlined init with copy of CollectionOfOne<URL>(v52, a9 + v70);
  v54 = v79;
  v55 = v80;
  v56 = v81;
  v57 = v82;
  v58 = v83;
  *v41 = v83;
  v41[1] = v53;
  v59 = v72;
  v41[2] = v50;
  v41[3] = v59;
  *v42 = v56;
  v42[1] = v57;
  v42[2] = v54;
  v42[3] = v55;
  *v43 = 0;
  v43[1] = 0;
  v60 = v59;
  if (v59)
  {
    outlined copy of Text?(v56, v57, v54, v55);
    v61 = outlined copy of Text?(v58, v53, v50, v60);
    MEMORY[0x18D009CE0](&v88, v61);
    v87 = v50 & 1;
    Text.assertUnstyled(_:options:)();
  }

  else
  {
    outlined copy of Text?(v56, v57, v54, v55);
  }

  v62 = v71;
  outlined init with copy of CollectionOfOne<URL>(a9 + v70, v71);
  v63 = v75;
  v64 = v73;
  (*(v75 + 32))(v73, v62, v28);
  v65 = v63[7];
  v65(v64, 0, 1, v28);
  v65(v22, 1, 1, v28);
  outlined assign with take of URL?(v64, v22);
  outlined init with take of URL?(v22, v17);
  v65(v22, 1, 1, v28);
  v66 = v63[6];
  while (v66(v17, 1, v28) != 1)
  {
    outlined destroy of CollectionOfOne<URL>.Iterator(v17, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
    outlined init with take of URL?(v22, v17);
    v65(v22, 1, 1, v28);
  }

  outlined destroy of CollectionOfOne<URL>.Iterator(v22, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  outlined consume of Text?(v81, v82, v79, v80);
  outlined consume of Text?(v83, v84, v85, v60);
  v67 = v63[1];
  v67(v77, v28);
  outlined destroy of CollectionOfOne<URL>.Iterator(v76, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  v67(v74, v28);
  return (*(*(v78 - 8) + 8))(v86);
}

uint64_t ShareLink<>.init<A>(_:item:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  closure #1 in ShareLink<>.init<A>(_:item:subject:message:)(a1, v34);
  v27 = v34[1];
  v28 = v34[0];
  v29 = v36;
  v47 = v35;
  *&v48[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v48);
  v43 = v48[6];
  v44 = v48[7];
  v45 = v48[8];
  v46 = v49;
  v39 = v48[2];
  v40 = v48[3];
  v41 = v48[4];
  v42 = v48[5];
  v37 = v48[0];
  v38 = v48[1];
  if (a7)
  {
    outlined copy of Text?(a8, a10, a11, a12);
    v19 = outlined copy of Text?(a4, a5, a6, a7);
    MEMORY[0x18D009CE0](&v33, v19);
    Text.assertUnstyled(_:options:)();
    outlined consume of Text?(a8, a10, a11, a12);
    outlined consume of Text?(a4, a5, a6, a7);
  }

  v20 = v44;
  *(a9 + 248) = v43;
  v21 = v45;
  *(a9 + 264) = v20;
  *(a9 + 280) = v21;
  v22 = v40;
  *(a9 + 184) = v39;
  *(a9 + 200) = v22;
  v23 = v42;
  *(a9 + 216) = v41;
  *(a9 + 232) = v23;
  v24 = v38;
  *(a9 + 152) = v37;
  v25 = v47;
  *a9 = 0;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = v28;
  *(a9 + 112) = v27;
  *(a9 + 120) = v25;
  *(a9 + 136) = 0;
  *(a9 + 144) = 0;
  *(a9 + 128) = v29;
  *(a9 + 296) = v46;
  *(a9 + 168) = v24;
  *(a9 + 304) = 0;
  *(a9 + 312) = 0;
  return (*(*(a13 - 8) + 8))(a1, a13);
}

uint64_t closure #1 in ShareLink<>.init<A>(_:item:subject:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t ShareLink<>.init<>(item:subject:message:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v90 = a8;
  v88 = a7;
  v87 = a6;
  v78 = a5;
  v92 = a4;
  v91 = a3;
  v89 = a2;
  v86 = a10;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v75 - v18;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v75 - v20;
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v77 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  v85 = &v75 - v25;
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v75 - v33;
  v84 = v28;
  v35 = *(v28 + 16);
  v83 = a1;
  v35(&v75 - v33, a1, v27, v32);
  v81 = v34;
  (v35)(v30, v34, v27);
  v82 = v30;
  (v35)(v26, v30, v27);
  v36 = static Text.System.shareEllipses.getter();
  v38 = v37;
  LOBYTE(v26) = v39;
  v41 = v40;
  type metadata accessor for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>();
  v43 = v42;
  v44 = a9 + v42[27];
  *v44 = v36;
  *(v44 + 1) = v38;
  v44[16] = v26 & 1;
  *(v44 + 3) = v41;
  *a9 = 0;
  v45 = (a9 + v42[24]);
  v46 = (a9 + v42[25]);
  v47 = (a9 + v42[26]);
  v48 = (a9 + v42[28]);
  *v48 = 0;
  v48[1] = 0;
  v79 = v48;
  v49 = a9 + v42[29];
  *&v95[0] = swift_getKeyPath();
  _s7SwiftUI11EnvironmentV7ContentOyAA26PresentSharingPickerActionVSg_GWOi_(v95);
  v50 = v95[7];
  *(v49 + 6) = v95[6];
  *(v49 + 7) = v50;
  *(v49 + 8) = v95[8];
  v49[144] = v96;
  v51 = v95[3];
  *(v49 + 2) = v95[2];
  *(v49 + 3) = v51;
  v52 = v95[5];
  *(v49 + 4) = v95[4];
  *(v49 + 5) = v52;
  v53 = v95[1];
  *v49 = v95[0];
  *(v49 + 1) = v53;
  v54 = v91;
  v55 = a9 + v43[30];
  *v55 = 0;
  *(v55 + 1) = 0;
  v76 = v43[23];
  outlined init with copy of CollectionOfOne<URL>(v85, a9 + v76);
  v56 = v86;
  v57 = v87;
  v58 = v88;
  v59 = v90;
  v60 = v89;
  *v45 = v89;
  v45[1] = v54;
  v61 = v92;
  v45[2] = v92;
  v62 = v78;
  v45[3] = v78;
  *v46 = v57;
  v46[1] = v58;
  v46[2] = v59;
  v46[3] = v56;
  v63 = v62;
  *v47 = 0;
  v47[1] = 0;
  if (v62)
  {
    outlined copy of Text?(v57, v58, v59, v56);
    v64 = outlined copy of Text?(v60, v54, v61, v63);
    MEMORY[0x18D009CE0](&v94, v64);
    v93 = v61 & 1;
    v65 = v63;
    Text.assertUnstyled(_:options:)();
  }

  else
  {
    v65 = 0;
    outlined copy of Text?(v57, v58, v59, v56);
  }

  v78 = a11;
  v66 = a9 + v76;
  v67 = v77;
  outlined init with copy of CollectionOfOne<URL>(v66, v77);
  v68 = v84;
  v69 = v80;
  (*(v84 + 32))(v80, v67, v27);
  v70 = *(v68 + 56);
  v70(v69, 0, 1, v27);
  v70(v21, 1, 1, v27);
  outlined assign with take of URL?(v69, v21);
  outlined init with take of URL?(v21, v16);
  v70(v21, 1, 1, v27);
  v71 = *(v68 + 48);
  while (v71(v16, 1, v27) != 1)
  {
    outlined destroy of CollectionOfOne<URL>.Iterator(v16, &lazy cache variable for type metadata for URL?, MEMORY[0x1E69E6720]);
    outlined init with take of URL?(v21, v16);
    v70(v21, 1, 1, v27);
  }

  outlined destroy of CollectionOfOne<URL>.Iterator(v21, &lazy cache variable for type metadata for CollectionOfOne<URL>.Iterator, MEMORY[0x1E69E6BB0]);
  outlined consume of Text?(v87, v88, v90, v86);
  outlined consume of Text?(v89, v91, v92, v65);
  v72 = *(v84 + 8);
  v72(v83, v27);
  outlined destroy of CollectionOfOne<URL>.Iterator(v85, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  v72(v82, v27);
  result = (v72)(v81, v27);
  v74 = v79;
  *v79 = v78;
  v74[1] = a12;
  return result;
}

unint64_t lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel()
{
  result = lazy protocol witness table cache variable for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel;
  if (!lazy protocol witness table cache variable for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel);
  }

  return result;
}

void type metadata accessor for CollectionOfOne<URL>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for URL();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>()
{
  if (!lazy cache variable for type metadata for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>)
  {
    type metadata accessor for CollectionOfOne<URL>(255, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
    lazy protocol witness table accessor for type CollectionOfOne<URL> and conformance CollectionOfOne<A>();
    lazy protocol witness table accessor for type DefaultShareLinkLabel and conformance DefaultShareLinkLabel();
    _s7SwiftUI5LabelVyAA4TextVAA5ImageVGACyxq_GAA4ViewAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v0 = type metadata accessor for ShareLink();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ShareLink<CollectionOfOne<URL>, Never, Never, DefaultShareLinkLabel>);
    }
  }
}

uint64_t outlined init with copy of CollectionOfOne<URL>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<URL>(0, &lazy cache variable for type metadata for CollectionOfOne<URL>, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CollectionOfOne<URL>.Iterator(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for CollectionOfOne<URL>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata completion function for ShareLink()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ShareLink(void *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = (v9 | v5) <= 7 && ((*(v8 + 80) | *(v4 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v6 + 7, v13 = v10 + 7, ((((v10 + 7 + ((v9 + ((((((v6 + 7 + ((v5 + 8) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18))
  {
    *a1 = *a2;
    v14 = (a1 + v5 + 8) & ~v5;
    v15 = (a2 + v5 + 8) & ~v5;
    (*(v4 + 16))(v14, v15);
    v16 = (v12 + v14) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v12 + v15) & 0xFFFFFFFFFFFFFFF8;
    if (*(v17 + 24) < 0xFFFFFFFFuLL)
    {
      v23 = *(v17 + 16);
      *v16 = *v17;
      *(v16 + 16) = v23;
    }

    else
    {
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      outlined copy of Text.Storage(*v17, v19, v20);
      *v16 = v18;
      *(v16 + 8) = v19;
      *(v16 + 16) = v20;
      *(v16 + 24) = *(v17 + 24);
    }

    v24 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*(v25 + 24) < 0xFFFFFFFFuLL)
    {
      v29 = *(v25 + 16);
      *v24 = *v25;
      *(v24 + 16) = v29;
    }

    else
    {
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      outlined copy of Text.Storage(*v25, v27, v28);
      *v24 = v26;
      *(v24 + 8) = v27;
      *(v24 + 16) = v28;
      *(v24 + 24) = *(v25 + 24);
    }

    v30 = (v24 + 39) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v25 + 39) & 0xFFFFFFFFFFFFFFF8;
    if (*v31 < 0xFFFFFFFFuLL)
    {
      *v30 = *v31;
    }

    else
    {
      v32 = *(v31 + 8);
      *v30 = *v31;
      *(v30 + 8) = v32;
    }

    v33 = v31 + 16;
    (*(v8 + 16))(v30 + 16, v33, v7);
    v34 = (v13 + v30 + 16) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v13 + v33) & 0xFFFFFFFFFFFFFFF8;
    if (*v35 < 0xFFFFFFFFuLL)
    {
      *v34 = *v35;
    }

    else
    {
      v36 = *(v35 + 8);
      *v34 = *v35;
      *(v34 + 8) = v36;
    }

    v37 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v39 = *(v37 + 16);
    v40 = *(v37 + 24);
    v41 = *(v37 + 32);
    v42 = *(v37 + 40);
    v43 = *(v37 + 48);
    v44 = *(v37 + 56);
    v61 = v34;
    v62 = v35;
    v45 = *(v37 + 64);
    v51 = *(v37 + 72);
    v52 = *(v37 + 80);
    v53 = *(v37 + 88);
    v54 = *(v37 + 96);
    v55 = *(v37 + 104);
    v56 = *(v37 + 112);
    v57 = *(v37 + 120);
    v58 = *(v37 + 128);
    v59 = *(v37 + 136);
    v60 = *(v37 + 144);
    v46 = *v37;
    v47 = *(v37 + 8);
    outlined copy of Environment<PresentSharingPickerAction?>.Content(*v37, v47, v39, v40, v41, v42, v43, v44, v45, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    *v38 = v46;
    *(v38 + 8) = v47;
    *(v38 + 16) = v39;
    *(v38 + 24) = v40;
    *(v38 + 32) = v41;
    *(v38 + 40) = v42;
    *(v38 + 48) = v43;
    *(v38 + 56) = v44;
    *(v38 + 64) = v45;
    *(v38 + 72) = v51;
    *(v38 + 80) = v52;
    *(v38 + 88) = v53;
    *(v38 + 96) = v54;
    *(v38 + 104) = v55;
    *(v38 + 112) = v56;
    *(v38 + 120) = v57;
    *(v38 + 128) = v58;
    *(v38 + 136) = v59;
    *(v38 + 144) = v60;
    v48 = (v61 + 175) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v62 + 175) & 0xFFFFFFFFFFFFFFF8;
    *v48 = *v49;
    *(v48 + 8) = *(v49 + 8);
    v22 = a1;
  }

  else
  {
    v21 = *a2;
    *a1 = *a2;
    v22 = (v21 + (((v9 | v5) & 0xF8 ^ 0x1F8) & ((v9 | v5) + 16)));
  }

  return v22;
}

void outlined copy of Environment<PresentSharingPickerAction?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
    outlined copy of PresentSharingPickerAction?(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
  }
}

void outlined copy of PresentSharingPickerAction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {

    outlined copy of SharingPickerHostModifier.Model?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t outlined copy of SharingPickerHostModifier.Model?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15 != 1)
  {
    outlined copy of AnyIdentifiableShareConfiguration?(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, outlined copy of AnyShareConfiguration.Storage, outlined copy of Text?);

    return outlined copy of AppIntentExecutor?(a15);
  }

  return result;
}

uint64_t destroy for ShareLink(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8);
  v4 = v3 + 8;
  v5 = (a1 + *(v3 + 80) + 8) & ~*(v3 + 80);
  (*(v3 + 8))(v5);
  v6 = (*(v4 + 56) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v6, *(v6 + 8), *(v6 + 16));
  }

  v7 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  v8 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  if (*v8 >= 0xFFFFFFFFuLL)
  {
  }

  v9 = *(*(a2 + 40) - 8);
  v10 = v9 + 8;
  v11 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  (*(v9 + 8))(v11);
  v12 = ((*(v10 + 56) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v12 >= 0xFFFFFFFFuLL)
  {
  }

  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<PresentSharingPickerAction?>.Content(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32), *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72), *(v13 + 80), *(v13 + 88), *(v13 + 96), *(v13 + 104), *(v13 + 112), *(v13 + 120), *(v13 + 128), *(v13 + 136), *(v13 + 144));
}

void outlined consume of Environment<PresentSharingPickerAction?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
    outlined consume of PresentSharingPickerAction?(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
  }
}

void outlined consume of PresentSharingPickerAction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {

    outlined consume of SharingPickerHostModifier.Model?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }
}

uint64_t outlined consume of SharingPickerHostModifier.Model?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15 != 1)
  {
    outlined copy of AnyIdentifiableShareConfiguration?(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, outlined consume of AnyShareConfiguration.Storage, outlined consume of Text?);

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a15);
  }

  return result;
}

void *initializeWithCopy for ShareLink(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) < 0xFFFFFFFFuLL)
  {
    v15 = *(v11 + 16);
    *v10 = *v11;
    *(v10 + 16) = v15;
  }

  else
  {
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    outlined copy of Text.Storage(*v11, v13, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = *(v11 + 24);
  }

  v16 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v17 + 24) < 0xFFFFFFFFuLL)
  {
    v21 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v21;
  }

  else
  {
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    outlined copy of Text.Storage(*v17, v19, v20);
    *v16 = v18;
    *(v16 + 8) = v19;
    *(v16 + 16) = v20;
    *(v16 + 24) = *(v17 + 24);
  }

  v22 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    *v22 = *v23;
  }

  else
  {
    v24 = *(v23 + 8);
    *v22 = *v23;
    *(v22 + 8) = v24;
  }

  v25 = *(*(a3 + 40) - 8);
  v26 = v25 + 16;
  v27 = *(v25 + 80);
  v28 = (v22 + v27 + 16) & ~v27;
  v29 = (v23 + v27 + 16) & ~v27;
  (*(v25 + 16))(v28, v29);
  v30 = *(v26 + 48) + 7;
  v31 = (v30 + v28) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + v29) & 0xFFFFFFFFFFFFFFF8;
  if (*v32 < 0xFFFFFFFFuLL)
  {
    *v31 = *v32;
  }

  else
  {
    v33 = *(v32 + 8);
    *v31 = *v32;
    *(v31 + 8) = v33;
  }

  v34 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v34 + 16);
  v37 = *(v34 + 24);
  v38 = *(v34 + 32);
  v39 = *(v34 + 40);
  v40 = *(v34 + 48);
  v41 = *(v34 + 56);
  v58 = v31;
  v59 = v32;
  v42 = *(v34 + 64);
  v48 = *(v34 + 72);
  v49 = *(v34 + 80);
  v50 = *(v34 + 88);
  v51 = *(v34 + 96);
  v52 = *(v34 + 104);
  v53 = *(v34 + 112);
  v54 = *(v34 + 120);
  v55 = *(v34 + 128);
  v56 = *(v34 + 136);
  v57 = *(v34 + 144);
  v43 = *v34;
  v44 = *(v34 + 8);
  outlined copy of Environment<PresentSharingPickerAction?>.Content(*v34, v44, v36, v37, v38, v39, v40, v41, v42, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
  *v35 = v43;
  *(v35 + 8) = v44;
  *(v35 + 16) = v36;
  *(v35 + 24) = v37;
  *(v35 + 32) = v38;
  *(v35 + 40) = v39;
  *(v35 + 48) = v40;
  *(v35 + 56) = v41;
  *(v35 + 64) = v42;
  *(v35 + 72) = v48;
  *(v35 + 80) = v49;
  *(v35 + 88) = v50;
  *(v35 + 96) = v51;
  *(v35 + 104) = v52;
  *(v35 + 112) = v53;
  *(v35 + 120) = v54;
  *(v35 + 128) = v55;
  *(v35 + 136) = v56;
  *(v35 + 144) = v57;
  v45 = (v58 + 175) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v59 + 175) & 0xFFFFFFFFFFFFFFF8;
  *v45 = *v46;
  *(v45 + 8) = *(v46 + 8);

  return a1;
}

void *assignWithCopy for ShareLink(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 24);
  if (*(v10 + 24) < 0xFFFFFFFFuLL)
  {
    if (v12 >= 0xFFFFFFFF)
    {
      v19 = *v11;
      v20 = *(v11 + 8);
      v21 = *(v11 + 16);
      outlined copy of Text.Storage(*v11, v20, v21);
      *v10 = v19;
      *(v10 + 8) = v20;
      *(v10 + 16) = v21;
      *(v10 + 24) = *(v11 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v12 >= 0xFFFFFFFF)
    {
      v13 = *v11;
      v14 = *(v11 + 8);
      v15 = *(v11 + 16);
      outlined copy of Text.Storage(*v11, v14, v15);
      v16 = *v10;
      v17 = *(v10 + 8);
      v18 = *(v10 + 16);
      *v10 = v13;
      *(v10 + 8) = v14;
      *(v10 + 16) = v15;
      outlined consume of Text.Storage(v16, v17, v18);
      *(v10 + 24) = *(v11 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v10, *(v10 + 8), *(v10 + 16));
  }

  v22 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v22;
LABEL_8:
  v23 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v24 + 24);
  if (*(v23 + 24) < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      v32 = *v24;
      v33 = *(v24 + 8);
      v34 = *(v24 + 16);
      outlined copy of Text.Storage(*v24, v33, v34);
      *v23 = v32;
      *(v23 + 8) = v33;
      *(v23 + 16) = v34;
      *(v23 + 24) = *(v24 + 24);

      goto LABEL_15;
    }
  }

  else
  {
    if (v25 >= 0xFFFFFFFF)
    {
      v26 = *v24;
      v27 = *(v24 + 8);
      v28 = *(v24 + 16);
      outlined copy of Text.Storage(*v24, v27, v28);
      v29 = *v23;
      v30 = *(v23 + 8);
      v31 = *(v23 + 16);
      *v23 = v26;
      *(v23 + 8) = v27;
      *(v23 + 16) = v28;
      outlined consume of Text.Storage(v29, v30, v31);
      *(v23 + 24) = *(v24 + 24);

      goto LABEL_15;
    }

    outlined consume of Text.Storage(*v23, *(v23 + 8), *(v23 + 16));
  }

  v35 = *(v24 + 16);
  *v23 = *v24;
  *(v23 + 16) = v35;
LABEL_15:
  v36 = ((v23 + 39) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v24 + 39) & 0xFFFFFFFFFFFFFFF8);
  v38 = *v37;
  if (*v36 < 0xFFFFFFFFuLL)
  {
    if (v38 >= 0xFFFFFFFF)
    {
      v40 = v37[1];
      *v36 = v38;
      v36[1] = v40;

      goto LABEL_22;
    }
  }

  else
  {
    if (v38 >= 0xFFFFFFFF)
    {
      v39 = v37[1];
      *v36 = v38;
      v36[1] = v39;

      goto LABEL_22;
    }
  }

  *v36 = *v37;
LABEL_22:
  v41 = *(*(a3 + 40) - 8);
  v42 = v41 + 24;
  v43 = *(v41 + 80);
  v44 = (v36 + v43 + 16) & ~v43;
  v45 = (v37 + v43 + 16) & ~v43;
  (*(v41 + 24))(v44, v45);
  v46 = *(v42 + 40) + 7;
  v47 = ((v46 + v44) & 0xFFFFFFFFFFFFFFF8);
  v48 = ((v46 + v45) & 0xFFFFFFFFFFFFFFF8);
  v49 = *v48;
  if (*v47 < 0xFFFFFFFFuLL)
  {
    if (v49 >= 0xFFFFFFFF)
    {
      v51 = v48[1];
      *v47 = v49;
      v47[1] = v51;

      goto LABEL_29;
    }

LABEL_28:
    *v47 = *v48;
    goto LABEL_29;
  }

  if (v49 < 0xFFFFFFFF)
  {

    goto LABEL_28;
  }

  v50 = v48[1];
  *v47 = v49;
  v47[1] = v50;

LABEL_29:
  v52 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = *v52;
  v92 = v47;
  v54 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v55 = *(v52 + 16);
  v56 = *(v52 + 24);
  v57 = *(v52 + 32);
  v58 = *(v52 + 40);
  v59 = *(v52 + 48);
  v60 = *(v52 + 56);
  v61 = *(v52 + 64);
  v81 = *(v52 + 72);
  v91 = v48;
  v82 = *(v52 + 80);
  v83 = *(v52 + 88);
  v84 = *(v52 + 96);
  v85 = *(v52 + 104);
  v86 = *(v52 + 112);
  v87 = *(v52 + 120);
  v88 = *(v52 + 128);
  v89 = *(v52 + 136);
  v90 = *(v52 + 144);
  v62 = *(v52 + 8);
  outlined copy of Environment<PresentSharingPickerAction?>.Content(*v52, v62, v55, v56, v57, v58, v59, v60, v61, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
  v63 = *v54;
  v64 = *(v54 + 8);
  v65 = *(v54 + 16);
  v66 = *(v54 + 24);
  v67 = *(v54 + 32);
  v68 = *(v54 + 40);
  v69 = *(v54 + 48);
  v70 = *(v54 + 56);
  v71 = *(v54 + 64);
  v72 = *(v54 + 80);
  v73 = *(v54 + 96);
  v74 = *(v54 + 112);
  v75 = *(v54 + 128);
  v76 = *(v54 + 136);
  v77 = *(v54 + 144);
  *v54 = v53;
  *(v54 + 8) = v62;
  *(v54 + 16) = v55;
  *(v54 + 24) = v56;
  *(v54 + 32) = v57;
  *(v54 + 40) = v58;
  *(v54 + 48) = v59;
  *(v54 + 56) = v60;
  *(v54 + 64) = v61;
  *(v54 + 72) = v81;
  *(v54 + 80) = v82;
  *(v54 + 88) = v83;
  *(v54 + 96) = v84;
  *(v54 + 104) = v85;
  *(v54 + 112) = v86;
  *(v54 + 120) = v87;
  *(v54 + 128) = v88;
  *(v54 + 136) = v89;
  *(v54 + 144) = v90;
  outlined consume of Environment<PresentSharingPickerAction?>.Content(v63, v64, v65, v66, v67, v68, v69, v70, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, v76, v77);
  v78 = (v92 + 175) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v91 + 175) & 0xFFFFFFFFFFFFFFF8;
  *v78 = *v79;
  *(v78 + 8) = *(v79 + 8);

  return a1;
}

void *initializeWithTake for ShareLink(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 32;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 32))(v8, v9);
  v10 = *(v6 + 32) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v17 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v15 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*v18 < 0xFFFFFFFFuLL)
  {
    *v17 = *v18;
  }

  else
  {
    v19 = *(v18 + 8);
    *v17 = *v18;
    *(v17 + 8) = v19;
  }

  v20 = *(*(a3 + 40) - 8);
  v21 = v20 + 32;
  v22 = *(v20 + 80);
  v23 = (v17 + v22 + 16) & ~v22;
  v24 = (v18 + v22 + 16) & ~v22;
  (*(v20 + 32))(v23, v24);
  v25 = *(v21 + 32) + 7;
  v26 = (v25 + v23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v25 + v24) & 0xFFFFFFFFFFFFFFF8;
  if (*v27 < 0xFFFFFFFFuLL)
  {
    *v26 = *v27;
  }

  else
  {
    v28 = *(v27 + 8);
    *v26 = *v27;
    *(v26 + 8) = v28;
  }

  v29 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = *(v30 + 16);
  *v29 = *v30;
  *(v29 + 16) = v31;
  v32 = *(v30 + 32);
  v33 = *(v30 + 48);
  v34 = *(v30 + 80);
  *(v29 + 64) = *(v30 + 64);
  *(v29 + 80) = v34;
  *(v29 + 32) = v32;
  *(v29 + 48) = v33;
  v35 = *(v30 + 96);
  v36 = *(v30 + 112);
  v37 = *(v30 + 128);
  *(v29 + 144) = *(v30 + 144);
  *(v29 + 112) = v36;
  *(v29 + 128) = v37;
  *(v29 + 96) = v35;
  *((v26 + 175) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 175) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for ShareLink(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 40;
  v7 = *(v5 + 80);
  v8 = (a1 + v7 + 8) & ~v7;
  v9 = (a2 + v7 + 8) & ~v7;
  (*(v5 + 40))(v8, v9);
  v10 = *(v6 + 24) + 7;
  v11 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v12 + 24) >= 0xFFFFFFFFuLL)
    {
      v13 = *(v12 + 16);
      v14 = *v11;
      v15 = *(v11 + 8);
      v16 = *(v11 + 16);
      *v11 = *v12;
      *(v11 + 16) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(v11 + 24) = *(v12 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*v11, *(v11 + 8), *(v11 + 16));
  }

  v17 = *(v12 + 16);
  *v11 = *v12;
  *(v11 + 16) = v17;
LABEL_6:
  v18 = (v11 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v12 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v18 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v19 + 24) >= 0xFFFFFFFFuLL)
    {
      v20 = *(v19 + 16);
      v21 = *v18;
      v22 = *(v18 + 8);
      v23 = *(v18 + 16);
      *v18 = *v19;
      *(v18 + 16) = v20;
      outlined consume of Text.Storage(v21, v22, v23);
      *(v18 + 24) = *(v19 + 24);

      goto LABEL_11;
    }

    outlined consume of Text.Storage(*v18, *(v18 + 8), *(v18 + 16));
  }

  v24 = *(v19 + 16);
  *v18 = *v19;
  *(v18 + 16) = v24;
LABEL_11:
  v25 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v19 + 39) & 0xFFFFFFFFFFFFFFF8);
  v27 = *v26;
  if (*v25 < 0xFFFFFFFFuLL)
  {
    if (v27 >= 0xFFFFFFFF)
    {
      v29 = v26[1];
      *v25 = v27;
      v25[1] = v29;
      goto LABEL_18;
    }
  }

  else
  {
    if (v27 >= 0xFFFFFFFF)
    {
      v28 = v26[1];
      *v25 = v27;
      v25[1] = v28;

      goto LABEL_18;
    }
  }

  *v25 = *v26;
LABEL_18:
  v30 = *(*(a3 + 40) - 8);
  v31 = v30 + 40;
  v32 = *(v30 + 80);
  v33 = (v25 + v32 + 16) & ~v32;
  v34 = (v26 + v32 + 16) & ~v32;
  (*(v30 + 40))(v33, v34);
  v35 = *(v31 + 24) + 7;
  v36 = ((v35 + v33) & 0xFFFFFFFFFFFFFFF8);
  v37 = ((v35 + v34) & 0xFFFFFFFFFFFFFFF8);
  v38 = *v37;
  if (*v36 < 0xFFFFFFFFuLL)
  {
    if (v38 >= 0xFFFFFFFF)
    {
      v40 = v37[1];
      *v36 = v38;
      v36[1] = v40;
      goto LABEL_25;
    }

LABEL_24:
    *v36 = *v37;
    goto LABEL_25;
  }

  if (v38 < 0xFFFFFFFF)
  {

    goto LABEL_24;
  }

  v39 = v37[1];
  *v36 = v38;
  v36[1] = v39;

LABEL_25:
  v41 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = *(v41 + 144);
  v43 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = *(v43 + 16);
  v47 = *(v43 + 24);
  v48 = *(v43 + 32);
  v49 = *(v43 + 40);
  v50 = *(v43 + 48);
  v51 = *(v43 + 56);
  v52 = *(v43 + 64);
  v53 = *(v43 + 80);
  v54 = *(v43 + 96);
  v55 = *(v43 + 112);
  v56 = *(v43 + 128);
  v57 = *(v43 + 136);
  v58 = *(v43 + 144);
  v59 = *(v41 + 16);
  v60 = *(v41 + 32);
  v61 = *(v41 + 48);
  v62 = *(v41 + 64);
  v63 = *(v41 + 80);
  v64 = *(v41 + 96);
  v65 = *(v41 + 112);
  v66 = *(v41 + 128);
  *v43 = *v41;
  *(v43 + 16) = v59;
  *(v43 + 32) = v60;
  *(v43 + 48) = v61;
  *(v43 + 64) = v62;
  *(v43 + 80) = v63;
  *(v43 + 96) = v64;
  *(v43 + 112) = v65;
  *(v43 + 128) = v66;
  *(v43 + 144) = v42;
  outlined consume of Environment<PresentSharingPickerAction?>.Content(v44, v45, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, v58);
  v67 = (v36 + 175) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v37 + 175) & 0xFFFFFFFFFFFFFFF8;
  *v67 = *v68;
  *(v67 + 8) = *(v68 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ShareLink(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 40) - 8);
  v6 = *(v3 + 80);
  v7 = *(v5 + 80);
  if (v4 <= *(v5 + 84))
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v3 + 84);
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(*(*(a3 + 16) - 8) + 64) + 7;
  v11 = v7 + 16;
  if (v9 >= a2)
  {
    goto LABEL_30;
  }

  v12 = ((((*(*(*(a3 + 40) - 8) + 64) + ((v11 + ((((((v10 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v9 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v19 = v17 - 1;
    if (v13)
    {
      v19 = 0;
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    return v9 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v12);
    if (v17)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v21 = (a1 + v6 + 8) & ~v6;
  if (v4 == v9)
  {
    return (*(v3 + 48))(v21, v4, *(a3 + 16));
  }

  v22 = (v10 + v21) & 0xFFFFFFFFFFFFFFF8;
  if (v8 > 0x7FFFFFFE)
  {
    return (*(v5 + 48))((v11 + ((((v22 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v7);
  }

  v23 = *(v22 + 24);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  if ((v23 + 1) >= 2)
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for ShareLink(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 40) - 8);
  v7 = *(v4 + 80);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = ((((*(*(*(a4 + 40) - 8) + 64) + ((v9 + 16 + ((((((v8 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 175) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 >= a3)
  {
    v15 = 0;
    v16 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((*(*(*(a4 + 40) - 8) + 64) + ((v9 + 16 + ((((((v8 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & ~v9) + 7) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = a3 - v11 + 1;
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

    v16 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_20:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *(a1 + v12) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(a1 + v12) = 0;
      }

      else if (v15)
      {
        *(a1 + v12) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      v21 = (a1 + v7 + 8) & ~v7;
      if (v5 == v11)
      {
        v22 = *(v4 + 56);

        v22(v21);
      }

      else
      {
        v23 = (v8 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
        if (v10 > 0x7FFFFFFE)
        {
          v24 = *(v6 + 56);

          v24((v9 + 16 + ((((v23 + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v9);
        }

        else if (a2 > 0x7FFFFFFE)
        {
          result = 0.0;
          *v23 = 0u;
          *(v23 + 16) = 0u;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v23 + 24) = a2;
        }
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 40) - 8) + 64) + ((v9 + 16 + ((((((v8 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & ~v9) + 7) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1;
  }

  if (((((*(*(*(a4 + 40) - 8) + 64) + ((v9 + 16 + ((((((v8 + 7 + ((v7 + 8) & ~v7)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8)) & ~v9) + 7) & 0xFFFFFFF8) + 175) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v18 = ~v11 + a2;
    v19 = a1;
    bzero(a1, v12);
    a1 = v19;
    *v19 = v18;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      *(a1 + v12) = v17;
    }

    else
    {
      *(a1 + v12) = v17;
    }
  }

  else if (v15)
  {
    *(a1 + v12) = v17;
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #2 in ShareLink.body.getter(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(type metadata accessor for ShareLink() - 8);
  v6 = *a2;
  v8 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  result = type metadata accessor for ShareLink();
  v5 = (v2 + *(result + 112) + v8);
  if (*v5)
  {
    return (*v5)(v6);
  }

  return result;
}

uint64_t objectdestroy_8Tm_2()
{
  v7 = *(v0 + 16);
  v8 = *(v0 + 40);
  v1 = type metadata accessor for ShareLink();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 88) & ~*(*(v1 - 1) + 80));
  (*(*(v7 - 8) + 8))(v2 + v1[23]);
  v3 = v2 + v1[24];
  if (*(v3 + 24))
  {
    outlined consume of Text.Storage(*v3, *(v3 + 8), *(v3 + 16));
  }

  v4 = v2 + v1[25];
  if (*(v4 + 24))
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  if (*(v2 + v1[26]))
  {
  }

  (*(*(v8 - 8) + 8))(v2 + v1[27]);
  if (*(v2 + v1[28]))
  {
  }

  v5 = v2 + v1[29];
  outlined consume of Environment<PresentSharingPickerAction?>.Content(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 128), *(v5 + 136), *(v5 + 144));

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in closure #2 in ShareLink.body.getter()
{
  type metadata accessor for ShareLink();
  v0 = type metadata accessor for ShareLink();
  return ShareLink.show()(v0);
}

uint64_t Scene.windowToolbarStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WindowToolbarStyleModifier();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  (*(v6 + 32))(v13, v8, a3);
  Scene.modifier<A>(_:)(v13, a2, v9);
  return (*(v10 + 8))(v13, v9);
}

uint64_t static WindowToolbarStyleModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *v10;
  type metadata accessor for WindowToolbarStyleModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (v8)
  {
    closure #1 in static WindowToolbarStyleModifier._makeInputs(modifier:inputs:)(1, a3);
  }

  AGGraphCreateOffsetAttribute2();
  Value = AGGraphGetValue();
  (*(v7 + 16))(v9, Value, a3);
  v14 = AnyWindowToolbarStyle.init<A>(_:)(v9, a3);
  lazy protocol witness table accessor for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput();
  PropertyList.subscript.setter();
  _GraphValue.init(_:)();
  return (*(a4 + 24))(&v14, a2, a3, a4);
}

uint64_t closure #1 in static WindowToolbarStyleModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for WindowToolbarStyleModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.WindowToolbarConfigurationKey(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 24);
  v3 = *a2;
  v4 = *(a2 + 24);
  *v9 = *a1;
  v10 = *(a1 + 8);
  v11 = v2;
  *v6 = v3;
  v7 = *(a2 + 4);
  v8 = v4;
  return specialized static WindowToolbarConfiguration.== infix(_:_:)(v9, v6);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance WindowToolbarStyleInput@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnyWindowToolbarStyleStorage<DefaultWindowToolbarStyle>();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput()
{
  result = lazy protocol witness table cache variable for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput;
  if (!lazy protocol witness table cache variable for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput;
  if (!lazy protocol witness table cache variable for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for WindowToolbarStyleInput(uint64_t a1)
{
  result = lazy protocol witness table accessor for type WindowToolbarStyleInput and conformance WindowToolbarStyleInput();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for AnyWindowToolbarStyleStorage<DefaultWindowToolbarStyle>()
{
  if (!lazy cache variable for type metadata for AnyWindowToolbarStyleStorage<DefaultWindowToolbarStyle>)
  {
    v0 = type metadata accessor for AnyWindowToolbarStyleStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyWindowToolbarStyleStorage<DefaultWindowToolbarStyle>);
    }
  }
}

BOOL specialized static WindowToolbarConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = a1[24];
  v7 = *a2;
  v8 = a2[1];
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = a2[24];
  if (v2 == 5)
  {
    if (v7 != 5)
    {
      return 0;
    }
  }

  else if (v2 != v7)
  {
    return 0;
  }

  if (v3 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }
  }

  else if (v8 == 3 || v3 != v8)
  {
    return 0;
  }

  if ((~v4 & 0xF000000000000007) != 0 || v6 <= 0xFB)
  {
    v18 = *(a1 + 1);
    v19 = v4;
    v20 = v6;
    if ((~v9 & 0xF000000000000007) != 0 || v11 <= 0xFB)
    {
      v15 = v10;
      v16 = v9;
      v17 = v11;
      outlined copy of ToolbarLabelStyle.Data?(v5, v4, v6);
      outlined copy of ToolbarLabelStyle.Data?(v10, v9, v11);
      outlined copy of ToolbarLabelStyle.Data?(v5, v4, v6);
      v13 = specialized static ToolbarLabelStyle.Data.== infix(_:_:)(&v18, &v15);
      outlined consume of ToolbarLabelStyle.Data(v15, v16, v17);
      outlined consume of ToolbarLabelStyle.Data(v18, v19, v20);
      outlined consume of ToolbarLabelStyle.Data?(v5, v4, v6);
      return v13;
    }

    outlined copy of ToolbarLabelStyle.Data?(v5, v4, v6);
    outlined copy of ToolbarLabelStyle.Data?(v10, v9, v11);
    outlined copy of ToolbarLabelStyle.Data?(v5, v4, v6);
    outlined consume of ToolbarLabelStyle.Data(v5, v4, v6);
    goto LABEL_21;
  }

  outlined copy of ToolbarLabelStyle.Data?(*(a1 + 1), v4, v6);
  outlined copy of ToolbarLabelStyle.Data?(v10, v9, v11);
  if ((~v9 & 0xF000000000000007) != 0 || v11 <= 0xFB)
  {
LABEL_21:
    outlined consume of ToolbarLabelStyle.Data?(v5, v4, v6);
    outlined consume of ToolbarLabelStyle.Data?(v10, v9, v11);
    return 0;
  }

  outlined consume of ToolbarLabelStyle.Data?(v5, v4, v6);
  return 1;
}

uint64_t outlined copy of ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

uint64_t outlined consume of ToolbarLabelStyle.Data(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  return result;
}

uint64_t destroy for WindowToolbarConfiguration(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  if ((~v1 & 0xF000000000000007) != 0 || v2 <= 0xFB)
  {
    return outlined consume of ToolbarLabelStyle.Data(*(result + 8), v1, v2);
  }

  return result;
}

uint64_t initializeWithCopy for WindowToolbarConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if ((~v2 & 0xF000000000000007) != 0 || v3 <= 0xFB)
  {
    v4 = *(a2 + 8);
    v5 = result;
    outlined copy of ToolbarLabelStyle.Data(v4, *(a2 + 16), v3);
    result = v5;
    *(v5 + 8) = v4;
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
  }

  else
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
  }

  return result;
}

uint64_t assignWithCopy for WindowToolbarConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = (~v3 & 0xF000000000000007) == 0 && v4 > 0xFB;
  if ((~*(a1 + 16) & 0xF000000000000007) != 0 || *(a1 + 24) <= 0xFBu)
  {
    if (v6)
    {
      outlined destroy of ToolbarLabelStyle.Data(a1 + 8);
      v9 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v9;
    }

    else
    {
      v10 = *(a2 + 8);
      outlined copy of ToolbarLabelStyle.Data(v10, *(a2 + 16), v4);
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      *(a1 + 8) = v10;
      *(a1 + 16) = v3;
      v13 = *(a1 + 24);
      *(a1 + 24) = v4;
      outlined consume of ToolbarLabelStyle.Data(v11, v12, v13);
    }
  }

  else if (v6)
  {
    v7 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v7;
  }

  else
  {
    v14 = *(a2 + 8);
    outlined copy of ToolbarLabelStyle.Data(v14, *(a2 + 16), v4);
    *(a1 + 8) = v14;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
  }

  return a1;
}

uint64_t assignWithTake for WindowToolbarConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if ((~v2 & 0xF000000000000007) != 0 || v3 <= 0xFB)
  {
    if ((~v4 & 0xF000000000000007) != 0 || v5 <= 0xFB)
    {
      v8 = *(result + 8);
      *(result + 8) = *(a2 + 8);
      *(result + 16) = v4;
      *(result + 24) = v5;
      v9 = result;
      outlined consume of ToolbarLabelStyle.Data(v8, v2, v3);
      return v9;
    }

    else
    {
      v6 = result;
      outlined destroy of ToolbarLabelStyle.Data(result + 8);
      result = v6;
      *(v6 + 8) = *(a2 + 8);
      *(v6 + 24) = *(a2 + 24);
    }
  }

  else
  {
    *(result + 8) = *(a2 + 8);
    *(result + 24) = *(a2 + 24);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowToolbarConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 1 >= 0xFFF && *(a1 + 25))
  {
    return (*a1 + 8190);
  }

  v3 = *(a1 + 24);
  v4 = (*(a1 + 16) >> 57) & 0x78 | *(a1 + 16) & 7 | (((v3 >> 2) & 0x1F) << 7);
  v5 = 8190 - ((v3 >> 7) | (2 * v4));
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WindowToolbarConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 8190;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      v3 = ((a2 ^ 0x1FFF) << 12) | ((a2 ^ 0x1FFF) >> 1);
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = (v3 >> 5) & 0xFC;
    }
  }

  return result;
}

uint64_t one-time initialization function for tableHeaderFont()
{
  static Font.Weight.semibold.getter();
  result = static Font.system(_:design:weight:)();
  static ListMetrics.tableHeaderFont = result;
  return result;
}

uint64_t one-time initialization function for tableColumnContentPadding()
{
  result = static EdgeInsets.zero.getter();
  static ListMetrics.tableColumnContentPadding = v1;
  qword_1EAB09F00 = v2;
  qword_1EAB09F08 = v3;
  qword_1EAB09F10 = v4;
  return result;
}

uint64_t _ConditionalContent<>.CommandsProvider.detachOutputs()()
{

  PreferencesOutputs.detachIndirectOutputs()();
}

uint64_t protocol witness for ConditionalContentProvider.inputs.getter in conformance _ConditionalContent<A, B><>.CommandsProvider@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 12) = *(v1 + 44);
  v4 = *(v8 + 12);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 44) = v4;
  return outlined init with copy of _CommandsInputs(v7, &v6);
}

uint64_t protocol witness for ConditionalContentProvider.outputs.getter in conformance _ConditionalContent<A, B><>.CommandsProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance A?<A>.Child@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ConditionalContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

{
  v2 = type metadata accessor for _ConditionalContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t assignWithCopy for _ConditionalContent<>.CommandsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for _ConditionalContent<>.CommandsProvider(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t ControlWidgetConfiguration.preference<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = type metadata accessor for _PreferenceWritingModifier();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v7 + 16))(v9, a2, AssociatedTypeWitness, v12);
  _PreferenceWritingModifier.init(key:value:)();
  ControlWidgetConfiguration.modifier<A>(_:)(v14, v17, v10);
  return (*(v11 + 8))(v14, v10);
}

uint64_t ControlWidgetConfiguration.transformPreference<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8[0] = _PreferenceTransformModifier.init(key:transform:)();
  v8[1] = v5;
  v6 = type metadata accessor for _PreferenceTransformModifier();
  ControlWidgetConfiguration.modifier<A>(_:)(v8, a4, v6);
}

uint64_t static _PreferenceWritingModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(uint64_t a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  v6 = *a2;
  v5 = a2[1];
  *v13 = a2[2];
  *&v13[12] = *(a2 + 44);
  v9 = v6;
  v10 = v5;
  *v11 = a2[2];
  *&v11[12] = *(a2 + 44);
  outlined init with copy of _WidgetInputs(v12, &v18);
  PreferenceKeys.remove(_:)();
  v14[0] = v9;
  v14[1] = v10;
  v15[0] = *v11;
  *(v15 + 12) = *&v11[12];
  v18 = v9;
  v19 = v10;
  v20[0] = *v11;
  *(v20 + 12) = *&v11[12];
  v7 = outlined init with copy of _WidgetInputs(v14, v16);
  a3(v7, &v18);
  v16[0] = v18;
  v16[1] = v19;
  v17[0] = v20[0];
  *(v17 + 12) = *(v20 + 12);
  outlined destroy of _WidgetInputs(v16);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v18 = v9;
  v19 = v10;
  v20[0] = *v11;
  *(v20 + 12) = *&v11[12];
  return outlined destroy of _WidgetInputs(&v18);
}

uint64_t static _PreferenceTransformModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static _PreferenceTransformModifier._makeWidgetControlConfiguration(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a1;
  type metadata accessor for _PreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  v20 = a2;
  v21 = a3;
  KeyPath = swift_getKeyPath();
  v7 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v8)
  {
    v17 = v5;
    v18 = partial apply for closure #1 in Attribute.subscript.getter;
    v19 = KeyPath;
    MEMORY[0x1EEE9AC00](v7);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13[2] = swift_getFunctionTypeMetadata();
    v14 = type metadata accessor for Map();
    WitnessTable = swift_getWitnessTable();
    v9 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v13, v14, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    return AssociatedTypeWitness;
  }

  else
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

    return OffsetAttribute2;
  }
}

uint64_t get_witness_table_7SwiftUI26ControlWidgetConfigurationRzAA13PreferenceKeyRd__r__lAA15ModifiedContentVyxAA01_F15WritingModifierVyqd__GGAaBHpxAaBHD1__AhA0cdeK0HpyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

id EnvironmentValues.isUserAuthenticationEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v6)
    {
LABEL_3:
      _s7SwiftUI7WeakBoxVySo13UIWindowSceneCGSgWOhTm_0(&v5, type metadata accessor for WeakBox<UIWindowScene>?);
      return 0;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  _s7SwiftUI7WeakBoxVySo13UIWindowSceneCGSgWOhTm_0(&v5, type metadata accessor for WeakBox<UIWindowScene>);
  if (Strong)
  {
    v2 = [Strong systemProtectionManager];

    if (v2)
    {
      v3 = [v2 isUserAuthenticationEnabled];

      return v3;
    }
  }

  return 0;
}

double DragReorderableVStack.dragState.getter@<D0>(_OWORD *a1@<X8>)
{
  DragReorderableVStack.$state.getter(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

uint64_t DragReorderableVStack.init(alignment:spacing:padding:contentTypes:insertionPlaceholder:delegate:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v46 = a7;
  v50 = a6;
  v48 = a5;
  v40 = a3;
  v47 = a1;
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v39[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v53 = MEMORY[0x1E697E300];
  *&v53[8] = a11;
  v54 = MEMORY[0x1E697E2F0];
  v55 = a12;
  v56 = a13;
  v43 = type metadata accessor for DragReorderableLayoutAdaptor();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v23 = &v39[-v22];
  *v53 = a11;
  v44 = *(&a11 + 1);
  v45 = a13;
  *&v53[16] = a12;
  v54 = a13;
  v24 = type metadata accessor for DragReorderableVStack();
  v25 = *(v24 + 56);
  v49 = a9;
  v26 = a9 + v25;
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  *(v26 + 32) = 0;
  v51[0] = v47;
  v51[1] = a2;
  v47 = a2;
  v27 = v40 & 1;
  v52 = v40 & 1;
  v41();
  if (*(a4 + 32))
  {
    static EdgeInsets.zero.getter();
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  v32 = v46;
  outlined init with copy of _Benchmark(v46, v53);
  v33 = AGMakeUniqueID();
  v34 = AGMakeUniqueID();
  __swift_destroy_boxed_opaque_existential_1(v32);
  DragReorderableLayoutAdaptor.init(root:content:padding:contentTypes:spacing:delegate:containerID:placeholderID:)(v51, v21, v48, v47, v27, v53, v33, v34, v23, v16, v17, v18, v19, MEMORY[0x1E697E300], a11);
  v35 = v49;
  (*(v42 + 32))(v49, v23, v43);
  v36 = *(v24 + 52);
  type metadata accessor for Optional();
  v37 = type metadata accessor for Binding();
  return (*(*(v37 - 8) + 32))(v35 + v36, v50, v37);
}

uint64_t DragReorderableVStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return DragReorderableVStack.body.getter(a1, a2);
}

{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DragReorderableVStack.$state.getter(&v9);
  outlined destroy of Transaction(&v9);

  (*(v5 + 16))(v7, v2, a1);
  swift_getWitnessTable();
  return OptionalFormatInputToString.init(format:)(v7, a1, a2);
}

uint64_t DragReorderableVStack.insertionPlaceholder.getter()
{
  type metadata accessor for Optional();
  v0 = type metadata accessor for Binding();
  return MEMORY[0x18D00ACC0](v0);
}

double DragReorderableVStack.$state.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for State<_DragReorderableView_DragState>();
  State.projectedValue.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t DragReorderableLazyVStack.init(alignment:spacing:padding:contentTypes:insertionPlaceholder:delegate:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v46 = a7;
  v50 = a6;
  v48 = a5;
  v40 = a3;
  v47 = a1;
  v16 = *a4;
  v17 = *(a4 + 8);
  v18 = *(a4 + 16);
  v19 = *(a4 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v39[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v54 = MEMORY[0x1E697E9E8];
  *&v54[8] = a11;
  v55 = MEMORY[0x1E697E9E0];
  v56 = a12;
  v57 = a13;
  v43 = type metadata accessor for DragReorderableLayoutAdaptor();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v23 = &v39[-v22];
  *v54 = a11;
  v44 = *(&a11 + 1);
  v45 = a13;
  *&v54[16] = a12;
  v55 = a13;
  v24 = type metadata accessor for DragReorderableLazyVStack();
  v25 = *(v24 + 56);
  v49 = a9;
  v26 = a9 + v25;
  *v26 = 0;
  *(v26 + 8) = 1;
  *(v26 + 16) = 0;
  *(v26 + 24) = 1;
  *(v26 + 32) = 0;
  v51[0] = v47;
  v51[1] = a2;
  v47 = a2;
  v27 = v40 & 1;
  v52 = v40 & 1;
  v53 = 0;
  v41();
  if (*(a4 + 32))
  {
    static EdgeInsets.zero.getter();
    v16 = v28;
    v17 = v29;
    v18 = v30;
    v19 = v31;
  }

  v32 = v46;
  outlined init with copy of _Benchmark(v46, v54);
  v33 = AGMakeUniqueID();
  v34 = AGMakeUniqueID();
  __swift_destroy_boxed_opaque_existential_1(v32);
  DragReorderableLayoutAdaptor.init(root:content:padding:contentTypes:spacing:delegate:containerID:placeholderID:)(v51, v21, v48, v47, v27, v54, v33, v34, v23, v16, v17, v18, v19, MEMORY[0x1E697E9E8], a11);
  v35 = v49;
  (*(v42 + 32))(v49, v23, v43);
  v36 = *(v24 + 52);
  type metadata accessor for Optional();
  v37 = type metadata accessor for Binding();
  return (*(*(v37 - 8) + 32))(v35 + v36, v50, v37);
}

uint64_t instantiation function for generic protocol witness table for DragReorderableLazyVStack<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DragReorderableVStack<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for DragReorderableVStack()
{
  return type metadata completion function for DragReorderableVStack();
}

{
  result = type metadata accessor for DragReorderableLayoutAdaptor();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    result = type metadata accessor for Binding();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DragReorderableVStack(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = (v9 | v5) <= 7 && ((v9 | *(v4 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v6 + 7, v13 = ((((((((((v6 + 7 + ((v5 + 17) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, ((((v9 + 16) & ~v9) + v10 + 7 + ((v13 + (v9 | 7)) & ~(v9 | 7))) & 0xFFFFFFFFFFFFFFF8) + 40 <= 0x18))
  {
    __n = v10;
    v45 = ((v9 + 16) & ~v9) + v10 + 7;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v14 = (a1 + v5 + 17) & ~v5;
    v15 = (a2 + v5 + 17) & ~v5;
    (*(v4 + 16))(v14, v15);
    v17 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *v22 = v24;
    v25 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 24);
    *(v25 + 24) = v27;
    *(v25 + 32) = *(v26 + 32);
    v28 = **(v27 - 8);

    v28(v25, v26, v27);
    v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v26 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    *((v29 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v33;
    v34 = v33 + 1;
    v36 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v36 = v35;
    v37 = v36 + 1;
    v38 = *(v8 + 48);

    if (v38(v34, 1, v7))
    {
      memcpy(v37, v34, __n);
    }

    else
    {
      (*(v8 + 16))(v37, v34, v7);
      (*(v8 + 56))(v37, 0, 1, v7);
    }

    v40 = (v31 + v45) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v32 + v45) & 0xFFFFFFFFFFFFFFF8;
    v42 = *v41;
    *(v40 + 9) = *(v41 + 9);
    *v40 = v42;
    *(v40 + 32) = *(v41 + 32);
  }

  else
  {
    v39 = *a2;
    *v3 = *a2;
    v3 = (v39 + (((v9 | v5) & 0xF8 ^ 0x1F8) & ((v9 | v5) + 16)));
  }

  return v3;
}

uint64_t destroy for DragReorderableVStack(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  (*(v4 + 8))(v7);
  v8 = *(v5 + 56) + 7;

  __swift_destroy_boxed_opaque_existential_1((((((v8 + v7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v9 = (((((((((v8 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (a1 + (v12 | 7) + v9 + 8) & ~(v12 | 7);

  v14 = v12 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v11 + 48))(v14 & ~v12, 1, v10))
  {
    (*(v11 + 8))(v14 & ~v12, v10);
  }
}

uint64_t initializeWithCopy for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (v7 + 17 + a1) & ~v7;
  v9 = (v7 + 17 + a2) & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(v6 + 48) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 24);
  *(v19 + 24) = v21;
  *(v19 + 32) = *(v20 + 32);
  v22 = **(v21 - 8);

  v22(v19, v20, v21);
  v23 = ((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = *(a3 + 24);
  v26 = *(v25 - 8);
  v27 = *(v26 + 80);
  v28 = ((((((((((v10 + ((v7 + 17) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v27 | 7) + 8;
  v29 = ((v28 + a1) & ~(v27 | 7));
  v30 = ((v28 + a2) & ~(v27 | 7));
  *v29 = *v30;
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = v31 + v27 + 8;
  v47 = a1;
  v34 = v32 + v27 + 8;
  v35 = *(v26 + 48);

  if (v35(v34 & ~v27, 1, v25))
  {
    v36 = *(v26 + 84);
    v37 = *(v26 + 64);
    if (v36)
    {
      v38 = *(v26 + 64);
    }

    else
    {
      v38 = v37 + 1;
    }

    memcpy((v33 & ~v27), (v34 & ~v27), v38);
  }

  else
  {
    (*(v26 + 16))(v33 & ~v27, v34 & ~v27, v25);
    v40 = *(v26 + 56);
    v39 = v26 + 56;
    v40(v33 & ~v27, 0, 1, v25);
    v36 = *(v39 + 28);
    v37 = *(v39 + 8);
  }

  v41 = v37 + ((v27 + 16) & ~v27);
  if (!v36)
  {
    ++v41;
  }

  v42 = (v29 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v30 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  *(v42 + 9) = *(v43 + 9);
  *v42 = v44;
  *(v42 + 32) = *(v43 + 32);

  return v47;
}

uint64_t assignWithCopy for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v5;
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *(v12 + 8) = v13[1];
  *(v12 + 16) = v13[2];
  *(v12 + 24) = v13[3];
  v12 += 39;
  v14 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v12 & 0xFFFFFFFFFFFFFFF8) = *v14;
  v16 = (v12 & 0xFFFFFFFFFFFFFFF8) + 31;

  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 8) = *(v18 + 8);
  *v17 = v19;
  __swift_assign_boxed_opaque_existential_1((v16 & 0xFFFFFFFFFFFFFFF8), ((v14 + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = (((((((((v11 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = v22 + (v25 | 7) + 8;
  v27 = ((v26 + a1) & ~(v25 | 7));
  v43 = ((v26 + v3) & ~(v25 | 7));
  *v27 = *v43;

  v28 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *((v43 + 15) & 0xFFFFFFFFFFFFFFF8);

  v29 = v28 + v25 + 8;
  v30 = v25 + 8 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = *(v24 + 48);
  LODWORD(v3) = v31(v29 & ~v25, 1, v23);
  v32 = v31(v30 & ~v25, 1, v23);
  if (v3)
  {
    if (v32)
    {
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
LABEL_6:
      if (v33)
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 + 1;
      }

      memcpy((v29 & ~v25), (v30 & ~v25), v35);
      goto LABEL_12;
    }

    (*(v24 + 16))(v29 & ~v25, v30 & ~v25, v23);
    (*(v24 + 56))(v29 & ~v25, 0, 1, v23);
  }

  else
  {
    if (v32)
    {
      (*(v24 + 8))(v29 & ~v25, v23);
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
      goto LABEL_6;
    }

    (*(v24 + 24))(v29 & ~v25, v30 & ~v25, v23);
  }

LABEL_12:
  v36 = *(v24 + 64) + ((v25 + 16) & ~v25);
  if (!*(v24 + 84))
  {
    ++v36;
  }

  v37 = (v27 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v43 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 8);
  *v37 = *v38;
  *(v37 + 8) = v39;
  v40 = *(v38 + 24);
  *(v37 + 16) = *(v38 + 16);
  *(v37 + 24) = v40;
  *(v37 + 32) = *(v38 + 32);

  return a1;
}

uint64_t initializeWithTake for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v19;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v21;
  v22 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v23;
  *(v20 + 16) = v22;
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  *((v24 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = (((((((((v11 + ((v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(a3 + 24);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + (v29 | 7) + 8;
  v31 = ((v30 + a1) & ~(v29 | 7));
  v32 = ((v30 + a2) & ~(v29 | 7));
  *v31 = *v32;
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = v33 + v29 + 8;
  v36 = v34 + v29 + 8;
  if ((*(v28 + 48))(v36 & ~v29, 1, v27))
  {
    v37 = *(v28 + 84);
    v38 = *(v28 + 64);
    if (v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 + 1;
    }

    memcpy((v35 & ~v29), (v36 & ~v29), v39);
  }

  else
  {
    (*(v28 + 32))(v35 & ~v29, v36 & ~v29, v27);
    v41 = *(v28 + 56);
    v40 = v28 + 56;
    v41(v35 & ~v29, 0, 1, v27);
    v37 = *(v40 + 28);
    v38 = *(v40 + 8);
  }

  v42 = v38 + ((v29 + 16) & ~v29);
  if (!v37)
  {
    ++v42;
  }

  v43 = v31 + v42 + 7;
  v44 = (v32 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 16);
  v43 &= 0xFFFFFFFFFFFFFFF8;
  *(v43 + 32) = *(v44 + 32);
  *v43 = v45;
  *(v43 + 16) = v46;
  return a1;
}

uint64_t assignWithTake for DragReorderableVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v9 + 17 + a1) & ~v9;
  v11 = (v9 + 17 + a2) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *(v13 + 8) = v14[1];
  *(v13 + 16) = v14[2];
  *(v13 + 24) = v14[3];
  v13 += 39;
  v15 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15;
  v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v13 & 0xFFFFFFFFFFFFFFF8) = *v15;
  v18 = (v13 & 0xFFFFFFFFFFFFFFF8) + 31;

  v19 = v17 & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = v18 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v18 & 0xFFFFFFFFFFFFFFF8);
  v24 = *v23;
  v25 = *(v23 + 16);
  *(v22 + 32) = *(v23 + 32);
  *v22 = v24;
  *(v22 + 16) = v25;
  v26 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  *((v26 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = (((((((((v12 + ((v9 + 17) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(a3 + 24);
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + (v31 | 7) + 8;
  v33 = ((v32 + a1) & ~(v31 | 7));
  v49 = ((v32 + a2) & ~(v31 | 7));
  *v33 = *v49;

  v34 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;

  v36 = v34 + v31 + 8;
  v37 = v35 + v31 + 8;
  v38 = *(v30 + 48);
  LODWORD(v35) = v38(v36 & ~v31, 1, v29);
  v39 = v38(v37 & ~v31, 1, v29);
  if (v35)
  {
    if (v39)
    {
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
LABEL_6:
      if (v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 + 1;
      }

      memcpy((v36 & ~v31), (v37 & ~v31), v42);
      goto LABEL_12;
    }

    (*(v30 + 32))(v36 & ~v31, v37 & ~v31, v29);
    (*(v30 + 56))(v36 & ~v31, 0, 1, v29);
  }

  else
  {
    if (v39)
    {
      (*(v30 + 8))(v36 & ~v31, v29);
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
      goto LABEL_6;
    }

    (*(v30 + 40))(v36 & ~v31, v37 & ~v31, v29);
  }

LABEL_12:
  v43 = *(v30 + 64) + ((v31 + 16) & ~v31);
  if (!*(v30 + 84))
  {
    ++v43;
  }

  v44 = (v33 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v49 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = *(v45 + 8);
  *v44 = *v45;
  *(v44 + 8) = v46;
  v47 = *(v45 + 24);
  *(v44 + 16) = *(v45 + 16);
  *(v44 + 24) = v47;
  *(v44 + 32) = *(v45 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableVStack(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = *(*(*(a3 + 16) - 8) + 64);
  v15 = *(v8 + 80);
  if (v10)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + 7;
  v18 = v15 | 7;
  v19 = ((((((((((v14 + 7 + ((v13 + 17) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 8;
  if (v12 >= a2)
  {
    goto LABEL_36;
  }

  v20 = ((v16 + *(*(v7 - 8) + 64) + ((v15 + 16) & ~v15) + (v19 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 40;
  v21 = a2 - v12;
  v22 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = v21 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v12 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v20);
    if (v26)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if (v11 <= v6)
  {
    v31 = (a1 + v13 + 17) & ~v13;
    if (v5 < 0x7FFFFFFF)
    {
      v33 = *((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    else
    {
      v32 = *(v4 + 48);

      return v32(v31);
    }
  }

  else
  {
    v30 = (*(v9 + 48))((v15 + ((((a1 + v19) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v10, v7);
    if (v30 >= 2)
    {
      return v30 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for DragReorderableVStack(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v10 + 80);
  if (v11)
  {
    v15 = v11 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 + 7;
  v19 = ((((((((((v13 + 7 + ((v12 + 17) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 + (v14 | 7);
  v21 = (v14 + 16) & ~v14;
  if (v11)
  {
    v22 = *(*(v9 - 8) + 64);
  }

  else
  {
    v22 = *(*(v9 - 8) + 64) + 1;
  }

  v23 = v21 + v22;
  v24 = ((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v17 < a3)
  {
    v25 = a3 - v17;
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v26 < 0x100)
    {
      v5 = 1;
    }

    if (v26 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v27 = a2 - v17;
    }

    else
    {
      v27 = 1;
    }

    if (v24)
    {
      v28 = ~v17 + a2;
      v29 = a1;
      bzero(a1, v24);
      a1 = v29;
      *v29 = v28;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v24) = v27;
      }

      else
      {
        *(a1 + v24) = v27;
      }
    }

    else if (v5)
    {
      *(a1 + v24) = v27;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v24) = 0;
  }

  else if (v5)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v15 <= v8)
  {
    if (v8 < a2)
    {
      if (!v19)
      {
        return;
      }

      v32 = ~v8 + a2;
      v30 = a1;
      bzero(a1, v19);
      goto LABEL_86;
    }

    v35 = (a1 + v12 + 17) & ~v12;
    if (v7 < 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v39 = a2 - 1;
      }

      *((((v18 + v35) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v39;
    }

    else
    {
      v36 = *(v6 + 56);

      v36(v35);
    }
  }

  else
  {
    v30 = ((a1 + v20) & ~(v14 | 7));
    if (v16 >= a2)
    {
      v30 = ((v14 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
      if (v15 >= a2)
      {
        v37 = *(v10 + 56);
        v38 = a2 + 1;

        v37(v30, v38, v11, v9);
      }

      else
      {
        if (v22 <= 3)
        {
          v34 = ~(-1 << (8 * v22));
        }

        else
        {
          v34 = -1;
        }

        if (v22)
        {
          v32 = v34 & (~v15 + a2);
          if (v22 <= 3)
          {
            v33 = v22;
          }

          else
          {
            v33 = 4;
          }

          bzero(v30, v22);
          if (v33 <= 2)
          {
            if (v33 == 1)
            {
              goto LABEL_56;
            }

            goto LABEL_73;
          }

          goto LABEL_84;
        }
      }
    }

    else
    {
      if (v23 <= 3)
      {
        v31 = ~(-1 << (8 * v23));
      }

      else
      {
        v31 = -1;
      }

      if (v23)
      {
        v32 = v31 & (~v16 + a2);
        if (v23 <= 3)
        {
          v33 = v21 + v22;
        }

        else
        {
          v33 = 4;
        }

        bzero(v30, v23);
        if (v33 <= 2)
        {
          if (v33 == 1)
          {
LABEL_56:
            *v30 = v32;
            return;
          }

LABEL_73:
          *v30 = v32;
          return;
        }

LABEL_84:
        if (v33 == 3)
        {
          *v30 = v32;
          v30[2] = BYTE2(v32);
          return;
        }

LABEL_86:
        *v30 = v32;
      }
    }
  }
}

void *initializeBufferWithCopyOfBuffer for DragReorderableLazyVStack(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = (v9 | v5) <= 7 && ((v9 | *(v4 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v6 + 7, v13 = ((((((((((v6 + 7 + ((v5 + 24) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, ((((v9 + 16) & ~v9) + v10 + 7 + ((v13 + (v9 | 7)) & ~(v9 | 7))) & 0xFFFFFFFFFFFFFFF8) + 40 <= 0x18))
  {
    __n = v10;
    v45 = ((v9 + 16) & ~v9) + v10 + 7;
    *a1 = *a2;
    a1[2] = a2[2];
    v14 = (a1 + v5 + 24) & ~v5;
    v15 = (a2 + v5 + 24) & ~v5;
    (*(v4 + 16))(v14, v15);
    v17 = ((v12 + v14) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + 39) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *v22 = v24;
    v25 = (v20 + 31) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v21 + 31) & 0xFFFFFFFFFFFFFFF8;
    v27 = *(v26 + 24);
    *(v25 + 24) = v27;
    *(v25 + 32) = *(v26 + 32);
    v28 = **(v27 - 8);

    v28(v25, v26, v27);
    v29 = ((v25 + 47) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v26 + 47) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    *((v29 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = *v33;
    v34 = v33 + 1;
    v36 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v36 = v35;
    v37 = v36 + 1;
    v38 = *(v8 + 48);

    if (v38(v34, 1, v7))
    {
      memcpy(v37, v34, __n);
    }

    else
    {
      (*(v8 + 16))(v37, v34, v7);
      (*(v8 + 56))(v37, 0, 1, v7);
    }

    v40 = (v31 + v45) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v32 + v45) & 0xFFFFFFFFFFFFFFF8;
    v42 = *v41;
    *(v40 + 9) = *(v41 + 9);
    *v40 = v42;
    *(v40 + 32) = *(v41 + 32);
  }

  else
  {
    v39 = *a2;
    *v3 = *a2;
    v3 = (v39 + (((v9 | v5) & 0xF8 ^ 0x1F8) & ((v9 | v5) + 16)));
  }

  return v3;
}

uint64_t destroy for DragReorderableLazyVStack(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = *(v4 + 80);
  v7 = (v6 + 24 + a1) & ~v6;
  (*(v4 + 8))(v7);
  v8 = *(v5 + 56) + 7;

  __swift_destroy_boxed_opaque_existential_1((((((v8 + v7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v9 = (((((((((v8 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (a1 + (v12 | 7) + v9 + 8) & ~(v12 | 7);

  v14 = v12 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!(*(v11 + 48))(v14 & ~v12, 1, v10))
  {
    (*(v11 + 8))(v14 & ~v12, v10);
  }
}

uint64_t initializeWithCopy for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(*(a3 + 16) - 8);
  v6 = v5 + 16;
  v7 = *(v5 + 80);
  v8 = (v7 + 24 + a1) & ~v7;
  v9 = (v7 + 24 + a2) & ~v7;
  (*(v5 + 16))(v8, v9);
  v10 = *(v6 + 48) + 7;
  v11 = ((v10 + v8) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = ((v11 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v17 + 8);
  *v16 = *v17;
  *(v16 + 8) = v18;
  v19 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 24);
  *(v19 + 24) = v21;
  *(v19 + 32) = *(v20 + 32);
  v22 = **(v21 - 8);

  v22(v19, v20, v21);
  v23 = ((v19 + 47) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = *(a3 + 24);
  v26 = *(v25 - 8);
  v27 = *(v26 + 80);
  v28 = ((((((((((v10 + ((v7 + 24) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v27 | 7) + 8;
  v29 = ((v28 + a1) & ~(v27 | 7));
  v30 = ((v28 + a2) & ~(v27 | 7));
  *v29 = *v30;
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = v31 + v27 + 8;
  v47 = a1;
  v34 = v32 + v27 + 8;
  v35 = *(v26 + 48);

  if (v35(v34 & ~v27, 1, v25))
  {
    v36 = *(v26 + 84);
    v37 = *(v26 + 64);
    if (v36)
    {
      v38 = *(v26 + 64);
    }

    else
    {
      v38 = v37 + 1;
    }

    memcpy((v33 & ~v27), (v34 & ~v27), v38);
  }

  else
  {
    (*(v26 + 16))(v33 & ~v27, v34 & ~v27, v25);
    v40 = *(v26 + 56);
    v39 = v26 + 56;
    v40(v33 & ~v27, 0, 1, v25);
    v36 = *(v39 + 28);
    v37 = *(v39 + 8);
  }

  v41 = v37 + ((v27 + 16) & ~v27);
  if (!v36)
  {
    ++v41;
  }

  v42 = (v29 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v30 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = *v43;
  *(v42 + 9) = *(v43 + 9);
  *v42 = v44;
  *(v42 + 32) = *(v43 + 32);

  return v47;
}

uint64_t assignWithCopy for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a1 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v5;
  *(a1 + 20) = *(a2 + 20);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 24 + a1) & ~v8;
  v10 = (v8 + 24 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *(v12 + 8) = v13[1];
  *(v12 + 16) = v13[2];
  *(v12 + 24) = v13[3];
  v12 += 39;
  v14 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = (v12 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v12 & 0xFFFFFFFFFFFFFFF8) = *v14;
  v16 = (v12 & 0xFFFFFFFFFFFFFFF8) + 31;

  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  *(v17 + 8) = *(v18 + 8);
  *v17 = v19;
  __swift_assign_boxed_opaque_existential_1((v16 & 0xFFFFFFFFFFFFFFF8), ((v14 + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = (((((((((v11 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = v22 + (v25 | 7) + 8;
  v27 = ((v26 + a1) & ~(v25 | 7));
  v43 = ((v26 + v3) & ~(v25 | 7));
  *v27 = *v43;

  v28 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *((v43 + 15) & 0xFFFFFFFFFFFFFFF8);

  v29 = v28 + v25 + 8;
  v30 = v25 + 8 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = *(v24 + 48);
  LODWORD(v3) = v31(v29 & ~v25, 1, v23);
  v32 = v31(v30 & ~v25, 1, v23);
  if (v3)
  {
    if (v32)
    {
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
LABEL_6:
      if (v33)
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 + 1;
      }

      memcpy((v29 & ~v25), (v30 & ~v25), v35);
      goto LABEL_12;
    }

    (*(v24 + 16))(v29 & ~v25, v30 & ~v25, v23);
    (*(v24 + 56))(v29 & ~v25, 0, 1, v23);
  }

  else
  {
    if (v32)
    {
      (*(v24 + 8))(v29 & ~v25, v23);
      v33 = *(v24 + 84);
      v34 = *(v24 + 64);
      goto LABEL_6;
    }

    (*(v24 + 24))(v29 & ~v25, v30 & ~v25, v23);
  }

LABEL_12:
  v36 = *(v24 + 64) + ((v25 + 16) & ~v25);
  if (!*(v24 + 84))
  {
    ++v36;
  }

  v37 = (v27 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v43 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 8);
  *v37 = *v38;
  *(v37 + 8) = v39;
  v40 = *(v38 + 24);
  *(v37 + 16) = *(v38 + 16);
  *(v37 + 24) = v40;
  *(v37 + 32) = *(v38 + 32);

  return a1;
}

uint64_t initializeWithTake for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (v8 + 24 + a1) & ~v8;
  v10 = (v8 + 24 + a2) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = ((v12 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v13 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v19;
  v20 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v21;
  v22 = *(v21 + 16);
  *(v20 + 32) = *(v21 + 32);
  *v20 = v23;
  *(v20 + 16) = v22;
  v24 = ((v20 + 47) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v21 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  *((v24 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = (((((((((v11 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(a3 + 24);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + (v29 | 7) + 8;
  v31 = ((v30 + a1) & ~(v29 | 7));
  v32 = ((v30 + a2) & ~(v29 | 7));
  *v31 = *v32;
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = v33 + v29 + 8;
  v36 = v34 + v29 + 8;
  if ((*(v28 + 48))(v36 & ~v29, 1, v27))
  {
    v37 = *(v28 + 84);
    v38 = *(v28 + 64);
    if (v37)
    {
      v39 = v38;
    }

    else
    {
      v39 = v38 + 1;
    }

    memcpy((v35 & ~v29), (v36 & ~v29), v39);
  }

  else
  {
    (*(v28 + 32))(v35 & ~v29, v36 & ~v29, v27);
    v41 = *(v28 + 56);
    v40 = v28 + 56;
    v41(v35 & ~v29, 0, 1, v27);
    v37 = *(v40 + 28);
    v38 = *(v40 + 8);
  }

  v42 = v38 + ((v29 + 16) & ~v29);
  if (!v37)
  {
    ++v42;
  }

  v43 = v31 + v42 + 7;
  v44 = (v32 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  v46 = *(v44 + 16);
  v43 &= 0xFFFFFFFFFFFFFFF8;
  *(v43 + 32) = *(v44 + 32);
  *v43 = v45;
  *(v43 + 16) = v46;
  return a1;
}

uint64_t assignWithTake for DragReorderableLazyVStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + a1) & ~v9;
  v11 = (v9 + 24 + a2) & ~v9;
  (*(v7 + 40))(v10, v11);
  v12 = *(v8 + 24) + 7;
  v13 = (v12 + v10) & 0xFFFFFFFFFFFFFFF8;
  v14 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  *(v13 + 8) = v14[1];
  *(v13 + 16) = v14[2];
  *(v13 + 24) = v14[3];
  v13 += 39;
  v15 = ((v14 + 39) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15;
  v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v13 & 0xFFFFFFFFFFFFFFF8) = *v15;
  v18 = (v13 & 0xFFFFFFFFFFFFFFF8) + 31;

  v19 = v17 & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = v18 & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v18 & 0xFFFFFFFFFFFFFFF8);
  v24 = *v23;
  v25 = *(v23 + 16);
  *(v22 + 32) = *(v23 + 32);
  *v22 = v24;
  *(v22 + 16) = v25;
  v26 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v23 + 47) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  *((v26 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = (((((((((v12 + ((v9 + 24) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(a3 + 24);
  v30 = *(v29 - 8);
  v31 = *(v30 + 80);
  v32 = v28 + (v31 | 7) + 8;
  v33 = ((v32 + a1) & ~(v31 | 7));
  v49 = ((v32 + a2) & ~(v31 | 7));
  *v33 = *v49;

  v34 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;

  v36 = v34 + v31 + 8;
  v37 = v35 + v31 + 8;
  v38 = *(v30 + 48);
  LODWORD(v35) = v38(v36 & ~v31, 1, v29);
  v39 = v38(v37 & ~v31, 1, v29);
  if (v35)
  {
    if (v39)
    {
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
LABEL_6:
      if (v40)
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 + 1;
      }

      memcpy((v36 & ~v31), (v37 & ~v31), v42);
      goto LABEL_12;
    }

    (*(v30 + 32))(v36 & ~v31, v37 & ~v31, v29);
    (*(v30 + 56))(v36 & ~v31, 0, 1, v29);
  }

  else
  {
    if (v39)
    {
      (*(v30 + 8))(v36 & ~v31, v29);
      v40 = *(v30 + 84);
      v41 = *(v30 + 64);
      goto LABEL_6;
    }

    (*(v30 + 40))(v36 & ~v31, v37 & ~v31, v29);
  }

LABEL_12:
  v43 = *(v30 + 64) + ((v31 + 16) & ~v31);
  if (!*(v30 + 84))
  {
    ++v43;
  }

  v44 = (v33 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v49 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = *(v45 + 8);
  *v44 = *v45;
  *(v44 + 8) = v46;
  v47 = *(v45 + 24);
  *(v44 + 16) = *(v45 + 16);
  *(v44 + 24) = v47;
  *(v44 + 32) = *(v45 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for DragReorderableLazyVStack(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = *(*(*(a3 + 16) - 8) + 64);
  v15 = *(v8 + 80);
  if (v10)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v14 + 7;
  v18 = v15 | 7;
  v19 = ((((((((((v14 + 7 + ((v13 + 24) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 8;
  if (v12 >= a2)
  {
    goto LABEL_36;
  }

  v20 = ((v16 + *(*(v7 - 8) + 64) + ((v15 + 16) & ~v15) + (v19 & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 40;
  v21 = a2 - v12;
  v22 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = v21 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v26 = *(a1 + v20);
      if (!v26)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v12 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v20);
    if (v26)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if (v11 <= v6)
  {
    v31 = (a1 + v13 + 24) & ~v13;
    if (v5 < 0x7FFFFFFF)
    {
      v33 = *((((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    else
    {
      v32 = *(v4 + 48);

      return v32(v31);
    }
  }

  else
  {
    v30 = (*(v9 + 48))((v15 + ((((a1 + v19) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v10, v7);
    if (v30 >= 2)
    {
      return v30 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for DragReorderableLazyVStack(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v10 + 80);
  if (v11)
  {
    v15 = v11 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 + 7;
  v19 = ((((((((((v13 + 7 + ((v12 + 24) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = v19 + (v14 | 7);
  v21 = (v14 + 16) & ~v14;
  if (v11)
  {
    v22 = *(*(v9 - 8) + 64);
  }

  else
  {
    v22 = *(*(v9 - 8) + 64) + 1;
  }

  v23 = v21 + v22;
  v24 = ((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v17 < a3)
  {
    v25 = a3 - v17;
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v5 = 4;
    }

    else
    {
      v5 = 2;
    }

    if (v26 < 0x100)
    {
      v5 = 1;
    }

    if (v26 < 2)
    {
      v5 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((v21 + v22 + (v20 & ~(v14 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v27 = a2 - v17;
    }

    else
    {
      v27 = 1;
    }

    if (v24)
    {
      v28 = ~v17 + a2;
      v29 = a1;
      bzero(a1, v24);
      a1 = v29;
      *v29 = v28;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v24) = v27;
      }

      else
      {
        *(a1 + v24) = v27;
      }
    }

    else if (v5)
    {
      *(a1 + v24) = v27;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v24) = 0;
  }

  else if (v5)
  {
    *(a1 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v15 <= v8)
  {
    if (v8 < a2)
    {
      if (!v19)
      {
        return;
      }

      v32 = ~v8 + a2;
      v30 = a1;
      bzero(a1, v19);
      goto LABEL_86;
    }

    v35 = (a1 + v12 + 24) & ~v12;
    if (v7 < 0x7FFFFFFF)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v39 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v39 = a2 - 1;
      }

      *((((v18 + v35) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) = v39;
    }

    else
    {
      v36 = *(v6 + 56);

      v36(v35);
    }
  }

  else
  {
    v30 = ((a1 + v20) & ~(v14 | 7));
    if (v16 >= a2)
    {
      v30 = ((v14 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
      if (v15 >= a2)
      {
        v37 = *(v10 + 56);
        v38 = a2 + 1;

        v37(v30, v38, v11, v9);
      }

      else
      {
        if (v22 <= 3)
        {
          v34 = ~(-1 << (8 * v22));
        }

        else
        {
          v34 = -1;
        }

        if (v22)
        {
          v32 = v34 & (~v15 + a2);
          if (v22 <= 3)
          {
            v33 = v22;
          }

          else
          {
            v33 = 4;
          }

          bzero(v30, v22);
          if (v33 <= 2)
          {
            if (v33 == 1)
            {
              goto LABEL_56;
            }

            goto LABEL_73;
          }

          goto LABEL_84;
        }
      }
    }

    else
    {
      if (v23 <= 3)
      {
        v31 = ~(-1 << (8 * v23));
      }

      else
      {
        v31 = -1;
      }

      if (v23)
      {
        v32 = v31 & (~v16 + a2);
        if (v23 <= 3)
        {
          v33 = v21 + v22;
        }

        else
        {
          v33 = 4;
        }

        bzero(v30, v23);
        if (v33 <= 2)
        {
          if (v33 == 1)
          {
LABEL_56:
            *v30 = v32;
            return;
          }

LABEL_73:
          *v30 = v32;
          return;
        }

LABEL_84:
        if (v33 == 3)
        {
          *v30 = v32;
          v30[2] = BYTE2(v32);
          return;
        }

LABEL_86:
        *v30 = v32;
      }
    }
  }
}