unint64_t DisplayList.Item.printMinimally(into:)(void *a1)
{
  v3 = type metadata accessor for DisplayList.ArchiveIDs();
  v178 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DisplayList.ArchiveIDs?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v179 = &v172 - v10;
  v12 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  *&v184 = 14921;
  *(&v184 + 1) = 0xE200000000000000;
  LODWORD(v182) = v15;
  v174 = v11;
  v173 = v13;
  v175 = v14;
  outlined copy of DisplayList.Item.Value(v12, v11, v13, v14);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v16);

  v17 = v184;
  v18 = a1[2];
  if (v18)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](v17, *(&v17 + 1));
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_244:
      __break(1u);
      goto LABEL_245;
    }

    a1[2] = v20;
    MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    MEMORY[0x193ABEDD0](v17, *(&v17 + 1));
    v20 = 0;
  }

  v21 = v175 >> 30;
  v180 = v12;
  if (v175 >> 30 > 1)
  {
    if (v21 != 2)
    {
LABEL_172:
      if (!v20)
      {
        return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      }

LABEL_240:
      if (!__OFSUB__(v20, 1))
      {
        a1[2] = v20 - 1;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
        return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      }

      goto LABEL_244;
    }

    if (v20)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](a1[3], a1[4]);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      result = MEMORY[0x193ABEDD0](0x736574617473, 0xE600000000000000);
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_245:
        __break(1u);
        goto LABEL_246;
      }

      a1[2] = v25;
      MEMORY[0x193ABEDD0](8224, 0xE200000000000000);
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      MEMORY[0x193ABEDD0](0x736574617473, 0xE600000000000000);
      v25 = 0;
    }

    v179 = *(v12 + 16);
    if (!v179)
    {
LABEL_39:
      result = outlined consume of DisplayList.Item.Value(v12, v174, v173, v175);
      if (v25)
      {
        v20 = v25 - 1;
        if (__OFSUB__(v25, 1))
        {
          goto LABEL_248;
        }

        a1[2] = v20;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
      }

      else
      {
        v20 = 0;
      }

      result = MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (!v20)
      {
        return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      }

      goto LABEL_240;
    }

    v29 = 0;
    v177 = "(display-list-item";
    v178 = v12 + 32;
    v176 = xmmword_18DDAB8A0;
    while (v29 < *(v12 + 16))
    {
      v30 = a1;
      v31 = v178 + 40 * v29;
      v32 = *(v31 + 24);
      v34 = *(v31 + 12);
      v33 = *(v31 + 16);
      LODWORD(v12) = *(v31 + 4);
      v35 = *(v31 + 8);
      v36 = *v31;
      *&v184 = 0;
      *(&v184 + 1) = 0xE000000000000000;
      type metadata accessor for _ContiguousArrayStorage<CVarArg>();
      v37 = swift_allocObject();
      *(v37 + 16) = v176;
      v38 = MEMORY[0x1E69E7668];
      *(v37 + 56) = MEMORY[0x1E69E7668];
      v39 = MEMORY[0x1E69E76D0];
      *(v37 + 64) = MEMORY[0x1E69E76D0];
      *(v37 + 32) = v33;
      *(v37 + 96) = v38;
      *(v37 + 104) = v39;
      *(v37 + 72) = v34;
      *(v37 + 136) = v38;
      *(v37 + 144) = v39;
      *(v37 + 112) = v35;
      *(v37 + 176) = v38;
      *(v37 + 184) = v39;
      *(v37 + 152) = v12;
      *(v37 + 216) = v38;
      *(v37 + 224) = v39;
      *(v37 + 192) = v36;

      v40 = String.init(format:_:)();
      MEMORY[0x193ABEDD0](v40);

      v41 = v184;
      if (v25)
      {
        a1 = v30;
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v30[3], v30[4]);
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        MEMORY[0x193ABEDD0](v41, *(&v41 + 1));
        if (__OFADD__(v25, 1))
        {
          goto LABEL_222;
        }

        v30[2] = v25 + 1;
        v42 = 8224;
        v43 = 0xE200000000000000;
      }

      else
      {
        a1 = v30;
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        v43 = *(&v41 + 1);
        v42 = v41;
      }

      MEMORY[0x193ABEDD0](v42, v43);

      v44 = *(v32 + 16);
      v12 = v180;
      if (v44)
      {
        v45 = *(v32 + 48);
        v46 = *(v32 + 80);
        v186 = *(v32 + 64);
        v187[0] = v46;
        *(v187 + 12) = *(v32 + 92);
        v184 = *(v32 + 32);
        v185 = v45;
        DisplayList.Item.printMinimally(into:)(a1);
        v47 = v44 - 1;
        if (v47)
        {
          v48 = (v32 + 112);
          do
          {
            v185 = v48[1];
            v186 = v48[2];
            v187[0] = v48[3];
            *(v187 + 12) = *(v48 + 60);
            v49 = *v48;
            v48 += 5;
            v184 = v49;
            DisplayList.Item.printMinimally(into:)(a1);
            --v47;
          }

          while (v47);
        }
      }

      v50 = a1[2];
      if (v50)
      {
        v25 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          goto LABEL_223;
        }

        a1[2] = v25;
        v51 = a1[4];
        if ((v51 & 0x2000000000000000) != 0)
        {
          v52 = HIBYTE(v51) & 0xF;
        }

        else
        {
          v52 = a1[3] & 0xFFFFFFFFFFFFLL;
        }

        result = String.index(_:offsetBy:limitedBy:)();
        if (v53)
        {
          goto LABEL_253;
        }

        if (4 * v52 < result >> 14)
        {
          goto LABEL_224;
        }

        String.removeSubrange(_:)();
      }

      else
      {
        v25 = 0;
      }

      ++v29;
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v29 == v179)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    v120 = 32;
    v121 = 0xE100000000000000;
  }

  else
  {
    if (!v21)
    {
      v22 = v173;
      switch(v12 >> 60)
      {
        case 1uLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v75 = a1[3];
            v76 = a1[4];
          }

          else
          {
            v75 = 32;
            v76 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v75, v76);
          v145 = 67;
          goto LABEL_170;
        case 2uLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v69 = a1[3];
            v70 = a1[4];
          }

          else
          {
            v69 = 32;
            v70 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v69, v70);
          v145 = 18499;
          v146 = 0xE200000000000000;
          goto LABEL_171;
        case 3uLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v71 = a1[3];
            v72 = a1[4];
          }

          else
          {
            v71 = 32;
            v72 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v71, v72);
          v145 = 19785;
          v146 = 0xE200000000000000;
          goto LABEL_171;
        case 4uLL:
          if (!v20)
          {
            goto LABEL_136;
          }

          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v63 = a1[3];
          v64 = a1[4];
          goto LABEL_137;
        case 5uLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v77 = a1[3];
            v78 = a1[4];
          }

          else
          {
            v77 = 32;
            v78 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v77, v78);
          v145 = 17491;
          v146 = 0xE200000000000000;
          goto LABEL_171;
        case 6uLL:
          v84 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          outlined copy of DisplayList.Item.Value(v12, v174, v173, v175);
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            MEMORY[0x193ABEDD0](a1[3], a1[4]);
            MEMORY[0x193ABEDD0](40, 0xE100000000000000);
            result = MEMORY[0x193ABEDD0](19795, 0xE200000000000000);
            if (__OFADD__(v20, 1))
            {
              goto LABEL_250;
            }

            a1[2] = v20 + 1;
            v85 = 8224;
          }

          else
          {
            MEMORY[0x193ABEDD0](40, 0xE100000000000000);
            v85 = 19795;
          }

          result = MEMORY[0x193ABEDD0](v85, 0xE200000000000000);
          v149 = *(v84 + 16);
          if (v149)
          {
            v150 = *(v84 + 48);
            v151 = *(v84 + 80);
            v186 = *(v84 + 64);
            v187[0] = v151;
            *(v187 + 12) = *(v84 + 92);
            v184 = *(v84 + 32);
            v185 = v150;
            result = DisplayList.Item.printMinimally(into:)(a1);
            v152 = v149 - 1;
            if (v152)
            {
              v153 = (v84 + 112);
              do
              {
                v185 = v153[1];
                v186 = v153[2];
                v187[0] = v153[3];
                *(v187 + 12) = *(v153 + 60);
                v154 = *v153;
                v153 += 5;
                v184 = v154;
                result = DisplayList.Item.printMinimally(into:)(a1);
                --v152;
              }

              while (v152);
            }
          }

          v155 = a1[2];
          if (!v155)
          {
            goto LABEL_164;
          }

          v20 = v155 - 1;
          if (!__OFSUB__(v155, 1))
          {
            goto LABEL_163;
          }

          goto LABEL_251;
        case 7uLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v73 = a1[3];
            v74 = a1[4];
          }

          else
          {
            v73 = 32;
            v74 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v73, v74);
          v145 = 18515;
          v146 = 0xE200000000000000;
          goto LABEL_171;
        case 8uLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v88 = a1[3];
            v89 = a1[4];
          }

          else
          {
            v88 = 32;
            v89 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v88, v89);
          v145 = 22096;
          v146 = 0xE200000000000000;
          goto LABEL_171;
        case 9uLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v67 = a1[3];
            v68 = a1[4];
          }

          else
          {
            v67 = 32;
            v68 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v67, v68);
          v145 = 19536;
          v146 = 0xE200000000000000;
          goto LABEL_171;
        case 0xAuLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v86 = a1[3];
            v87 = a1[4];
          }

          else
          {
            v86 = 32;
            v87 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v86, v87);
          v145 = 84;
          goto LABEL_170;
        case 0xBuLL:
          v60 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          outlined copy of DisplayList.Item.Value(v12, v174, v173, v175);
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            MEMORY[0x193ABEDD0](a1[3], a1[4]);
            MEMORY[0x193ABEDD0](40, 0xE100000000000000);
            result = MEMORY[0x193ABEDD0](70, 0xE100000000000000);
            if (__OFADD__(v20, 1))
            {
              goto LABEL_249;
            }

            a1[2] = v20 + 1;
            v61 = 8224;
            v62 = 0xE200000000000000;
          }

          else
          {
            MEMORY[0x193ABEDD0](40, 0xE100000000000000);
            v61 = 70;
            v62 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v61, v62);
          v138 = *(v60 + 16);
          if (v138)
          {
            v139 = *(v60 + 48);
            v140 = *(v60 + 80);
            v186 = *(v60 + 64);
            v187[0] = v140;
            *(v187 + 12) = *(v60 + 92);
            v184 = *(v60 + 32);
            v185 = v139;
            DisplayList.Item.printMinimally(into:)(a1);
            v141 = v138 - 1;
            if (v141)
            {
              v142 = (v60 + 112);
              do
              {
                v185 = v142[1];
                v186 = v142[2];
                v187[0] = v142[3];
                *(v187 + 12) = *(v142 + 60);
                v143 = *v142;
                v142 += 5;
                v184 = v143;
                DisplayList.Item.printMinimally(into:)(a1);
                --v141;
              }

              while (v141);
            }
          }

          v144 = a1[2];
          if (v144)
          {
            v20 = v144 - 1;
            if (__OFSUB__(v144, 1))
            {
              __break(1u);
LABEL_136:
              v63 = 32;
              v64 = 0xE100000000000000;
LABEL_137:
              MEMORY[0x193ABEDD0](v63, v64);
              v145 = 83;
LABEL_170:
              v146 = 0xE100000000000000;
LABEL_171:
              MEMORY[0x193ABEDD0](v145, v146);
              result = outlined consume of DisplayList.Item.Value(v12, v174, v22, v175);
              goto LABEL_172;
            }

LABEL_163:
            a1[2] = v20;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
          }

          else
          {
LABEL_164:
            v20 = 0;
          }

          MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          v147 = v174;
          v148 = v175;
          outlined consume of DisplayList.Item.Value(v12, v174, v22, v175);
LABEL_166:
          result = outlined consume of DisplayList.Item.Value(v12, v147, v22, v148);
          if (v20)
          {
            goto LABEL_240;
          }

          break;
        case 0xCuLL:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v65 = a1[3];
            v66 = a1[4];
          }

          else
          {
            v65 = 32;
            v66 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v65, v66);
          v145 = 68;
          goto LABEL_170;
        case 0xDuLL:
          outlined init with copy of AnyTrackedValue((v12 & 0xFFFFFFFFFFFFFFFLL) + 16, &v184);
          v182 = 14934;
          v183 = 0xE200000000000000;
          __swift_project_boxed_opaque_existential_1(&v184, *(&v185 + 1));
          swift_getDynamicType();
          outlined copy of DisplayList.Item.Value(v12, v174, v22, v175);
          v79 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v79);

          v81 = v182;
          v80 = v183;
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v82 = a1[3];
            v83 = a1[4];
          }

          else
          {
            v82 = 32;
            v83 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v82, v83);
          MEMORY[0x193ABEDD0](v81, v80);

          v147 = v174;
          v148 = v175;
          outlined consume of DisplayList.Item.Value(v12, v174, v22, v175);
          __swift_destroy_boxed_opaque_existential_1(&v184);
          goto LABEL_166;
        case 0xEuLL:
          *&v184 = 64;
          *(&v184 + 1) = 0xE100000000000000;
          v182 = 35;
          v183 = 0xE100000000000000;
          v181 = v12;
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x193ABEDD0](v56);

          MEMORY[0x193ABEDD0](v182, v183);

          v57 = v184;
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v58 = a1[3];
            v59 = a1[4];
          }

          else
          {
            v58 = 32;
            v59 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v58, v59);
          MEMORY[0x193ABEDD0](v57, *(&v57 + 1));
          outlined consume of DisplayList.Item.Value(v12, v174, v22, v175);

          if (!v20)
          {
            return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
          }

          goto LABEL_240;
        default:
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v23 = a1[3];
            v24 = a1[4];
          }

          else
          {
            v23 = 32;
            v24 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v23, v24);
          v145 = 66;
          goto LABEL_170;
      }

      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

    if (v20)
    {
      MEMORY[0x193ABEDD0](10, 0xE100000000000000);
      MEMORY[0x193ABEDD0](a1[3], a1[4]);
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      result = MEMORY[0x193ABEDD0](69, 0xE100000000000000);
      if (__OFADD__(v20++, 1))
      {
LABEL_246:
        __break(1u);
        goto LABEL_247;
      }

      a1[2] = v20;
      v27 = 8224;
      v28 = 0xE200000000000000;
    }

    else
    {
      MEMORY[0x193ABEDD0](40, 0xE100000000000000);
      v27 = 69;
      v28 = 0xE100000000000000;
    }

    MEMORY[0x193ABEDD0](v27, v28);
    v12 = HIDWORD(v174);
    switch(BYTE4(v174))
    {
      case 1:
        v114 = swift_projectBox();
        v115 = v179;
        outlined init with copy of DisplayList.ArchiveIDs?(v114, v179);
        outlined init with copy of DisplayList.ArchiveIDs?(v115, v8);
        if ((*(v178 + 48))(v8, 1, v3) == 1)
        {
          v116 = 0xE300000000000000;
          v117 = 7104878;
        }

        else
        {
          outlined init with take of DisplayList.ArchiveIDs(v8, v5);
          type metadata accessor for UUID();
          lazy protocol witness table accessor for type UUID and conformance UUID();
          v156 = dispatch thunk of CustomStringConvertible.description.getter();
          v116 = v157;
          outlined destroy of DisplayList.ArchiveIDs?(v5, type metadata accessor for DisplayList.ArchiveIDs);
          v117 = v156;
        }

        *&v184 = 14913;
        *(&v184 + 1) = 0xE200000000000000;
        MEMORY[0x193ABEDD0](v117, v116);

        v158 = v184;
        v25 = v173;
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v159 = a1[3];
          v160 = a1[4];
        }

        else
        {
          v159 = 32;
          v160 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v159, v160);
        MEMORY[0x193ABEDD0](v158, *(&v158 + 1));

        outlined destroy of DisplayList.ArchiveIDs?(v179, type metadata accessor for DisplayList.ArchiveIDs?);
        goto LABEL_231;
      case 2:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v106 = a1[3];
          v107 = a1[4];
        }

        else
        {
          v106 = 32;
          v107 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v106, v107);
        v25 = v173;
        v161 = 21072;
        goto LABEL_229;
      case 3:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v110 = a1[3];
          v111 = a1[4];
        }

        else
        {
          v110 = 32;
          v111 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v110, v111);
        v25 = v173;
        v161 = 18256;
        goto LABEL_229;
      case 4:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v100 = a1[3];
          v101 = a1[4];
        }

        else
        {
          v100 = 32;
          v101 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v100, v101);
        v25 = v173;
        v161 = 79;
        v162 = 0xE100000000000000;
        goto LABEL_230;
      case 5:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v122 = a1[3];
          v123 = a1[4];
        }

        else
        {
          v122 = 32;
          v123 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v122, v123);
        v25 = v173;
        v161 = 66;
        v162 = 0xE100000000000000;
        goto LABEL_230;
      case 6:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v128 = a1[3];
          v129 = a1[4];
        }

        else
        {
          v128 = 32;
          v129 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v128, v129);
        v25 = v173;
        v161 = 67;
        v162 = 0xE100000000000000;
        goto LABEL_230;
      case 7:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v112 = a1[3];
          v113 = a1[4];
        }

        else
        {
          v112 = 32;
          v113 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v112, v113);
        v25 = v173;
        v161 = 77;
        v162 = 0xE100000000000000;
        goto LABEL_230;
      case 8:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v134 = a1[3];
          v135 = a1[4];
        }

        else
        {
          v134 = 32;
          v135 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v134, v135);
        v25 = v173;
        v161 = 17491;
        goto LABEL_229;
      case 9:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v104 = a1[3];
          v105 = a1[4];
        }

        else
        {
          v104 = 32;
          v105 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v104, v105);
        v25 = v173;
        v161 = 84;
        v162 = 0xE100000000000000;
        goto LABEL_230;
      case 0xA:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v132 = a1[3];
          v133 = a1[4];
        }

        else
        {
          v132 = 32;
          v133 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v132, v133);
        v25 = v173;
        v161 = 70;
        v162 = 0xE100000000000000;
        goto LABEL_230;
      case 0xB:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v98 = a1[3];
          v99 = a1[4];
        }

        else
        {
          v98 = 32;
          v99 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v98, v99);
        v25 = v173;
        v161 = 20033;
        goto LABEL_229;
      case 0xC:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v102 = a1[3];
          v103 = a1[4];
        }

        else
        {
          v102 = 32;
          v103 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v102, v103);
        v25 = v173;
        v161 = 21076;
        goto LABEL_229;
      case 0xD:
        outlined init with copy of AnyTrackedValue(v180 + 16, &v184);
        v182 = 14934;
        v183 = 0xE200000000000000;
        __swift_project_boxed_opaque_existential_1(&v184, *(&v185 + 1));
        swift_getDynamicType();
        v124 = _typeName(_:qualified:)();
        MEMORY[0x193ABEDD0](v124);

        v125 = v182;
        v126 = v183;
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          MEMORY[0x193ABEDD0](a1[3], a1[4]);
          MEMORY[0x193ABEDD0](40, 0xE100000000000000);
          result = MEMORY[0x193ABEDD0](v125, v126);
          v127 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_252;
          }

          a1[2] = v127;
          MEMORY[0x193ABEDD0](8224, 0xE200000000000000);

          v25 = v173;
          if (v20 != -1)
          {
            if (__OFSUB__(v127, 1))
            {
              goto LABEL_254;
            }

            a1[2] = v20;
            specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
          }
        }

        else
        {
          MEMORY[0x193ABEDD0](40, 0xE100000000000000);
          MEMORY[0x193ABEDD0](v125, v126);

          v25 = v173;
        }

        MEMORY[0x193ABEDD0](41, 0xE100000000000000);
        __swift_destroy_boxed_opaque_existential_1(&v184);
        goto LABEL_231;
      case 0xE:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v96 = a1[3];
          v97 = a1[4];
        }

        else
        {
          v96 = 32;
          v97 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v96, v97);
        v25 = v173;
        v161 = 22593;
        goto LABEL_229;
      case 0xF:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v108 = a1[3];
          v109 = a1[4];
        }

        else
        {
          v108 = 32;
          v109 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v108, v109);
        v25 = v173;
        v161 = 19536;
        goto LABEL_229;
      case 0x10:
        v90 = *(v180 + 16);
        v91 = *(v180 + 24);
        v92 = *(v180 + 32);
        *&v184 = 0;
        *(&v184 + 1) = 0xE000000000000000;
        MEMORY[0x193ABEDD0](14920, 0xE200000000000000);
        specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v90, v91, v92);
        v93 = v184;
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v94 = a1[3];
          v95 = a1[4];
        }

        else
        {
          v94 = 32;
          v95 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v94, v95);
        v25 = v173;
        MEMORY[0x193ABEDD0](v93, *(&v93 + 1));

        goto LABEL_231;
      case 0x11:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v118 = a1[3];
          v119 = a1[4];
        }

        else
        {
          v118 = 32;
          v119 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v118, v119);
        v25 = v173;
        v161 = 21065;
        goto LABEL_229;
      case 0x12:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v130 = a1[3];
          v131 = a1[4];
        }

        else
        {
          v130 = 32;
          v131 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v130, v131);
        v25 = v173;
        v161 = 19529;
        goto LABEL_229;
      case 0x13:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v136 = a1[3];
          v137 = a1[4];
        }

        else
        {
          v136 = 32;
          v137 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v136, v137);
        v25 = v173;
        v161 = 16713;
        goto LABEL_229;
      case 0x14:
        v25 = v173;
        if (!(v180 | v174))
        {
          goto LABEL_231;
        }

        if (v180 ^ 1 | v174)
        {
          if (v20)
          {
            MEMORY[0x193ABEDD0](10, 0xE100000000000000);
            v163 = a1[3];
            v164 = a1[4];
          }

          else
          {
            v163 = 32;
            v164 = 0xE100000000000000;
          }

          MEMORY[0x193ABEDD0](v163, v164);
          v161 = 18243;
          goto LABEL_229;
        }

        if (!v20)
        {
          goto LABEL_225;
        }

        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v120 = a1[3];
        v121 = a1[4];
        break;
      default:
        if (v20)
        {
          MEMORY[0x193ABEDD0](10, 0xE100000000000000);
          v54 = a1[3];
          v55 = a1[4];
        }

        else
        {
          v54 = 32;
          v55 = 0xE100000000000000;
        }

        MEMORY[0x193ABEDD0](v54, v55);
        v25 = v173;
        v161 = 18242;
        goto LABEL_229;
    }
  }

  MEMORY[0x193ABEDD0](v120, v121);
  v161 = 18247;
LABEL_229:
  v162 = 0xE200000000000000;
LABEL_230:
  MEMORY[0x193ABEDD0](v161, v162);
LABEL_231:
  v165 = *(v25 + 16);
  if (v165)
  {
    v166 = *(v25 + 48);
    v167 = *(v25 + 80);
    v186 = *(v25 + 64);
    v187[0] = v167;
    *(v187 + 12) = *(v25 + 92);
    v184 = *(v25 + 32);
    v185 = v166;
    DisplayList.Item.printMinimally(into:)(a1);
    v168 = v165 - 1;
    if (v168)
    {
      v169 = (v25 + 112);
      do
      {
        v185 = v169[1];
        v186 = v169[2];
        v187[0] = v169[3];
        *(v187 + 12) = *(v169 + 60);
        v170 = *v169;
        v169 += 5;
        v184 = v170;
        DisplayList.Item.printMinimally(into:)(a1);
        --v168;
      }

      while (v168);
    }
  }

  v171 = a1[2];
  if (!v171)
  {
    v20 = 0;
LABEL_239:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    result = outlined consume of DisplayList.Effect(v180, v174, v12);
    if (!v20)
    {
      return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    }

    goto LABEL_240;
  }

  v20 = v171 - 1;
  if (!__OFSUB__(v171, 1))
  {
    a1[2] = v20;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    goto LABEL_239;
  }

LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
  return result;
}

void DisplayList.Item.description.getter()
{
  v0._countAndFlagsBits = 0xD000000000000012;
  v0._object = 0x800000018DD75BC0;
  v1 = xmmword_18DDAB890;
  v2 = 0xE200000000000000;
  DisplayList.Item.print(into:)(&v0);
  if (!v1)
  {
    goto LABEL_4;
  }

  if (!__OFSUB__(v1, 1))
  {
    *&v1 = v1 - 1;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
LABEL_4:
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);

    return;
  }

  __break(1u);
}

uint64_t GraphicsFilter.print(into:)(void *a1)
{
  v3 = v1[5];
  v98[4] = v1[4];
  v98[5] = v3;
  v99[0] = v1[6];
  *(v99 + 12) = *(v1 + 108);
  v4 = v1[1];
  v98[0] = *v1;
  v98[1] = v4;
  v5 = v1[3];
  v98[2] = v1[2];
  v98[3] = v5;
  switch(_s7SwiftUI14GraphicsFilterOWOg(v98))
  {
    case 1u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      _StringGuts.grow(_:)(27);

      v84 = 0xD000000000000018;
      v88 = 0x800000018DD75FF0;
      goto LABEL_23;
    case 2u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      _StringGuts.grow(_:)(30);

      v35 = 0x800000018DD75FD0;
      v36 = 0xD00000000000001BLL;
      goto LABEL_19;
    case 3u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      _StringGuts.grow(_:)(38);

      v35 = 0x800000018DD75FA0;
      v36 = 0xD000000000000023;
LABEL_19:
      v84 = v36;
      v88 = v35;
      goto LABEL_23;
    case 4u:
      v17 = _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v22 = a1[2];
      if (v22)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        MEMORY[0x193ABEDD0](a1[3], a1[4]);
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        v23 = MEMORY[0x193ABEDD0](0x776F64616873, 0xE600000000000000);
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          goto LABEL_82;
        }

        a1[2] = v22;
        v26 = 8224;
        v27 = 0xE200000000000000;
      }

      else
      {
        MEMORY[0x193ABEDD0](40, 0xE100000000000000);
        v26 = 0x776F64616873;
        v27 = 0xE600000000000000;
      }

      MEMORY[0x193ABEDD0](v26, v27);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v68);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v22)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v69 = a1[3];
        v70 = a1[4];
      }

      else
      {
        v69 = 32;
        v70 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v69, v70);
      MEMORY[0x193ABEDD0](0x20646E696B28, 0xE600000000000000);

      v73 = Double.description.getter();
      MEMORY[0x193ABEDD0](v73);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v22)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v74 = a1[3];
        v75 = a1[4];
      }

      else
      {
        v74 = 32;
        v75 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v74, v75);
      MEMORY[0x193ABEDD0](0x2073756964617228, 0xE800000000000000);

      v76 = Double.description.getter();
      MEMORY[0x193ABEDD0](v76);

      MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
      v77 = Double.description.getter();
      MEMORY[0x193ABEDD0](v77);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v22)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v78 = a1[3];
        v79 = a1[4];
      }

      else
      {
        v78 = 32;
        v79 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v78, v79);
      MEMORY[0x193ABEDD0](0x2074657366666F28, 0xE900000000000028);

      v84 = 0x20726F6C6F6328;
      v88 = 0xE700000000000000;
      Color.Resolved.description.getter(v18, v19, v20, v21);
      v93 = v80;
      v97 = v81;
      MEMORY[0x193ABEDD0](94, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x193ABEDD0](0, 0xE000000000000000);

      MEMORY[0x193ABEDD0](v93, v97);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      if (v22)
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v82 = a1[3];
        v83 = a1[4];
      }

      else
      {
        v82 = 32;
        v83 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v82, v83);
      MEMORY[0x193ABEDD0](0x20726F6C6F6328, 0xE700000000000000);

      if (!v22)
      {
LABEL_79:
        v71 = 41;
        v72 = 0xE100000000000000;
        return MEMORY[0x193ABEDD0](v71, v72);
      }

      if (!__OFSUB__(v22, 1))
      {
        a1[2] = v22 - 1;
        specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
        goto LABEL_79;
      }

LABEL_82:
      __break(1u);
      v51 = v24;
LABEL_38:
      v45 = v51;
LABEL_39:
      MEMORY[0x193ABEDD0](v23, v45);

LABEL_44:
      v29 = 41;
      v30 = 0xE100000000000000;
LABEL_45:
      MEMORY[0x193ABEDD0](v29, v30);
LABEL_46:
      v61 = v88;
      v62 = v84;
      if (a1[2])
      {
LABEL_47:
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v63 = a1[3];
        v64 = a1[4];
      }

      else
      {
LABEL_53:
        v63 = 32;
        v64 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v63, v64);
      MEMORY[0x193ABEDD0](v62, v61);

    case 5u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      *&v90 = 0;
      *(&v90 + 1) = 0xE000000000000000;
      MEMORY[0x193ABEDD0](0x7463656A6F727028, 0xEC000000206E6F69);
      goto LABEL_52;
    case 6u:
      if (*(_s7SwiftUI14GraphicsFilterOWOj6_(v98) + 80))
      {
        *&v86 = 0;
        *(&v86 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v90 = v86;
        v37 = "(color-multiply ";
        v38 = 0xD00000000000001CLL;
LABEL_31:
        v47 = v37 | 0x8000000000000000;
      }

      else
      {
        *&v87 = 0;
        *(&v87 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(17);
        v90 = v87;
        v38 = 0x6D2D726F6C6F6328;
        v47 = 0xEE00207869727461;
      }

      MEMORY[0x193ABEDD0](v38, v47);
LABEL_52:
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      v61 = *(&v90 + 1);
      v62 = v90;
      if (!a1[2])
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    case 7u:
      v39 = _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[2];
      v43 = v39[3];
      v44 = "(color-multiply ";
      goto LABEL_37;
    case 8u:
      v48 = _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v40 = *v48;
      v41 = v48[1];
      v42 = v48[2];
      v43 = v48[3];
      v44 = "(alpha-multiply ";
LABEL_37:
      v84 = 0xD000000000000010;
      v88 = (v44 - 32) | 0x8000000000000000;
      Color.Resolved.description.getter(v40, v41, v42, v43);
      v91 = v49;
      v95 = v50;
      MEMORY[0x193ABEDD0](94, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x193ABEDD0](0, 0xE000000000000000);

      v51 = v95;
      v23 = v91;
      goto LABEL_38;
    case 9u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);
      MEMORY[0x193ABEDD0](0x746F722D65756828, 0xEE00206E6F697461);
      Double.write<A>(to:)();
      v29 = 694642020;
      v30 = 0xE400000000000000;
      goto LABEL_45;
    case 0xAu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      v15 = 0x7461727574617328;
      v16 = 544108393;
      goto LABEL_34;
    case 0xBu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      v15 = 0x6E74686769726228;
      v16 = 544437093;
LABEL_34:
      v28 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      goto LABEL_35;
    case 0xCu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      v15 = 0x736172746E6F6328;
      v28 = 0xEA00000000002074;
      goto LABEL_35;
    case 0xDu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      v15 = 0x6163737961726728;
      v28 = 0xEB0000000020656CLL;
LABEL_35:
      MEMORY[0x193ABEDD0](v15, v28);
      Double.write<A>(to:)();
      goto LABEL_44;
    case 0xEu:
      v8 = _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      v12 = v8[3];
      v84 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);
      MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD75F00);
      Color.Resolved.description.getter(v9, v10, v11, v12);
      v89 = v13;
      v94 = v14;
      MEMORY[0x193ABEDD0](94, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x193ABEDD0](0, 0xE000000000000000);

      MEMORY[0x193ABEDD0](v89, v94);

      MEMORY[0x193ABEDD0](0x6E756F6D613A2320, 0xEA00000000002074);
      Float.write<A>(to:)();
      v6 = 0x20736169623A2320;
      v7 = 0xE800000000000000;
      goto LABEL_43;
    case 0xFu:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      *&v85 = 0;
      *(&v85 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      v90 = v85;
      v37 = "(luminance-curve ";
      v38 = 0xD000000000000016;
      goto LABEL_31;
    case 0x10u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD75EC0);
      _print_unlocked<A, B>(_:_:)();
      v6 = 0x6E756F6D613A2320;
      v7 = 0xEA00000000002074;
      goto LABEL_43;
    case 0x11u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      MEMORY[0x193ABEDD0](0xD000000000000014, 0x800000018DD75EA0);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](0x6E656572673A2320, 0xE900000000000020);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](0x2065756C623A2320, 0xE800000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](0x696361706F3A2320, 0xEB00000000207974);
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_44;
    case 0x12u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      *&v90 = 0;
      *(&v90 + 1) = 0xE000000000000000;
      MEMORY[0x193ABEDD0](0x2072656461687328, 0xE800000000000000);
      goto LABEL_52;
    case 0x13u:
      v54 = _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v55 = *v54;
      v56 = v54[1];
      v57 = v54[2];
      v58 = v54[3];
      v84 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD75E80);
      Color.Resolved.description.getter(v55, v56, v57, v58);
      v92 = v59;
      v96 = v60;
      MEMORY[0x193ABEDD0](94, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x193ABEDD0](0, 0xE000000000000000);

      MEMORY[0x193ABEDD0](v92, v96);

      v6 = 0x6E756F6D613A2320;
      v7 = 0xEA00000000002074;
      goto LABEL_43;
    case 0x14u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v6 = 0xD00000000000001DLL;
      v7 = 0x800000018DD75E60;
LABEL_43:
      MEMORY[0x193ABEDD0](v6, v7);
      Float.write<A>(to:)();
      goto LABEL_44;
    case 0x15u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      v84 = 0xD00000000000001CLL;
      v88 = 0x800000018DD75E40;
      v46 = Double.description.getter();
      MEMORY[0x193ABEDD0](v46);

      goto LABEL_46;
    case 0x16u:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      if (a1[2])
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v52 = a1[3];
        v53 = a1[4];
      }

      else
      {
        v52 = 32;
        v53 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v52, v53);
      v71 = 0x65746C6966616328;
      v72 = 0xEA00000000002972;
      return MEMORY[0x193ABEDD0](v71, v72);
    case 0x17u:
      if (a1[2])
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v65 = a1[3];
        v66 = a1[4];
      }

      else
      {
        v65 = 32;
        v66 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v65, v66);
      v71 = 0x6567617265766128;
      v72 = 0xEF29726F6C6F632DLL;
      return MEMORY[0x193ABEDD0](v71, v72);
    case 0x18u:
      if (a1[2])
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v33 = a1[3];
        v34 = a1[4];
      }

      else
      {
        v33 = 32;
        v34 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v33, v34);
      v71 = 0xD000000000000014;
      v72 = 0x800000018DD75F20;
      return MEMORY[0x193ABEDD0](v71, v72);
    case 0x19u:
      if (a1[2])
      {
        MEMORY[0x193ABEDD0](10, 0xE100000000000000);
        v31 = a1[3];
        v32 = a1[4];
      }

      else
      {
        v31 = 32;
        v32 = 0xE100000000000000;
      }

      MEMORY[0x193ABEDD0](v31, v32);
      v71 = 0x692D726F6C6F6328;
      v72 = 0xEE0029747265766ELL;
      return MEMORY[0x193ABEDD0](v71, v72);
    default:
      _s7SwiftUI14GraphicsFilterOWOj6_(v98);
      _StringGuts.grow(_:)(18);

      v84 = 0x3A232072756C6228;
      v88 = 0xEF20737569646172;
LABEL_23:
      v23 = Double.description.getter();
      goto LABEL_39;
  }
}

uint64_t closure #2 in DisplayList.Item.print(into:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v11 = 0x6974616D696E6128;
  (*(*v3 + 88))(v10);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CustomAnimation);
  v4 = String.init<A>(describing:)();
  MEMORY[0x193ABEDD0](v4);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  v6 = v11;
  v5 = v12;
  if (a2[2])
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    v7 = a2[3];
    v8 = a2[4];
  }

  else
  {
    v7 = 32;
    v8 = 0xE100000000000000;
  }

  MEMORY[0x193ABEDD0](v7, v8);
  MEMORY[0x193ABEDD0](v6, v5);
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    goto LABEL_14;
  }

  if (4 * v3 < result >> 14)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = v2 - result;
      if (v3)
      {
        return specialized Array.replaceSubrange<A>(_:with:)(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<CVarArg>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for CVarArg);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    }
  }
}

uint64_t outlined init with take of DisplayList.ArchiveIDs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayList.ArchiveIDs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, char a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      specialized _NativeDictionary._delete(at:)(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  if (a4)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if (v9)
    {
      v10 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v5;
      v17 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v12 = v17;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v12);
      *v6 = v12;
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, v7, v16);
    *v5 = v18;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (*(a1 + 24))
  {
    outlined init with take of AnyTrackedValue(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    outlined destroy of _DisplayList_AnyEffectAnimator?(a1, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      outlined init with take of AnyTrackedValue((*(v13 + 56) + 40 * v11), v16);
      specialized _NativeDictionary._delete(at:)(v11, v13);
      *v4 = v13;
    }

    else
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
    }

    return outlined destroy of _DisplayList_AnyEffectAnimator?(v16, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator?, &lazy cache variable for type metadata for _DisplayList_AnyEffectAnimator);
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v5;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v18;
      }

      specialized _NativeDictionary._delete(at:)(v14, v16);

      *v5 = v16;
    }

    else
    {
    }
  }

  return result;
}

_OWORD *specialized Dictionary.subscript.setter(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    outlined destroy of NamedImage.VectorInfo?(a1, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v14;
      }

      outlined init with take of Any((*(v12 + 56) + 32 * v10), v15);
      specialized _NativeDictionary._delete(at:)(v10, v12);
      *v3 = v12;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return outlined destroy of NamedImage.VectorInfo?(v15, &lazy cache variable for type metadata for Any?, v7 + 8);
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + 24 * a1);
    v10 = v9[4];
    v9 += 4;
    v11 = v9[2];
    *a2 = v10;
    a2[1] = v9[1];
    a2[2] = v11;
    result = memmove(v9, v9 + 3, 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 656 * a1;
    memcpy(a2, (v9 + 32), 0x289uLL);
    result = memmove((v9 + 32), (v9 + 688), 656 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 344 * a1;
    memcpy(a2, (v9 + 32), 0x154uLL);
    result = memmove((v9 + 32), (v9 + 376), 344 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 112 * a1);
    v9 = v8[7];
    v10 = v7 - 1;
    a2[4] = v8[6];
    a2[5] = v9;
    *(a2 + 89) = *(v8 + 121);
    v11 = v8[3];
    *a2 = v8[2];
    a2[1] = v11;
    v12 = v8[5];
    a2[2] = v8[4];
    a2[3] = v12;
    result = memmove(v8 + 2, v8 + 9, 112 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    *a2 = *(v9 + 32);
    result = memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + (a1 << 7));
    v9 = v8[7];
    v10 = v7 - 1;
    a2[4] = v8[6];
    a2[5] = v9;
    a2[6] = v8[8];
    *(a2 + 108) = *(v8 + 140);
    v11 = v8[3];
    *a2 = v8[2];
    a2[1] = v11;
    v12 = v8[5];
    a2[2] = v8[4];
    a2[3] = v12;
    result = memmove(v8 + 2, v8 + 10, (v7 - 1 - a1) << 7);
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t DisplayList.GraphicsRenderer.Cache.CallbackKey.hash(into:)()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  v6 = 0.0;
  if (v4 != 0.0)
  {
    v6 = v4;
  }

  return MEMORY[0x193AC11E0](*&v6);
}

Swift::Int DisplayList.GraphicsRenderer.Cache.CallbackKey.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
  }

  MEMORY[0x193AC11E0](*&v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.GraphicsRenderer.Cache.CallbackKey()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  v7 = 0.0;
  if (v5 != 0.0)
  {
    v7 = v5;
  }

  MEMORY[0x193AC11E0](*&v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t DisplayList.GraphicsRenderer.platformViewMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 112);
  return result;
}

uint64_t DisplayList.GraphicsRenderer.platformViewMode.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 112) = v2;
  return result;
}

uint64_t DisplayList.GraphicsRenderer.__allocating_init(platformViewMode:)(char *a1)
{
  v2 = swift_allocObject();
  DisplayList.GraphicsRenderer.init(platformViewMode:)(a1);
  return v2;
}

uint64_t DisplayList.GraphicsRenderer.render(at:do:)(void *a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *(v2 + 64);
  *(v2 + 72) = *a1;
  *(v2 + 80) = 0x7FF0000000000000;
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  a2();
  swift_beginAccess();

  v7 = MEMORY[0x1E69E7CC8];
  *(v3 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v8 = *(v3 + 32);
  *(v3 + 32) = v7;
  *(v3 + 40) = v7;
  *(v3 + 16) = v8;
  result = swift_endAccess();
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  *(v3 + 64) = v4;
  return result;
}

uint64_t DisplayList.GraphicsRenderer.renderDisplayList(_:at:in:)(uint64_t a1, void *a2, CGFloat *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  v8 = *(v3 + 64);
  *(v3 + 72) = *a2;
  *(v3 + 80) = 0x7FF0000000000000;
  v14 = v5;
  v15 = v6;
  v16 = v7;

  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  DisplayList.GraphicsRenderer.render(list:in:)(&v14, a3);
  swift_beginAccess();

  v11 = MEMORY[0x1E69E7CC8];
  *(v3 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v12 = *(v3 + 32);
  *(v3 + 32) = v11;
  *(v3 + 40) = v11;
  *(v3 + 16) = v12;
  swift_endAccess();
  *(v3 + 48) = v9;
  *(v3 + 56) = v10;
  *(v3 + 64) = v8;
}

uint64_t closure #2 in DisplayList.GraphicsRenderer.render(item:in:)(void *a1, double *a2, void *a3, uint64_t a4)
{
  v7 = a2[2];
  v8 = a2[3];
  if (*a2 != 0.0 || a2[1] != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  return (*(v10 + 32))(*a1, a4, v9, v10, v7, v8);
}

uint64_t DisplayList.GraphicsRenderer.drawImplicitLayer(in:content:)(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v4 = *(v3 + 96);
  *(v3 + 96) = 0;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 16;
  }

  result = GraphicsContext.drawLayer(flags:content:)(v5, a2, a3, *a1);
  *(v3 + 96) = v4;
  return result;
}

void DisplayList.GraphicsRenderer.renderPlatformView(_:in:size:viewType:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_beginAccess();
  v9 = *(v4 + 112);
  if (v9 != 2)
  {
    if (v9 == 3 || a1 == 0)
    {
      _StringGuts.grow(_:)(41);

      v11 = _typeName(_:qualified:)();
      MEMORY[0x193ABEDD0](v11);

      MEMORY[0x193ABEDD0](46, 0xE100000000000000);
      specialized static Log.externalWarning(_:)(0xD000000000000026, 0x800000018DD76060);

      specialized GraphicsContext.drawLayer(flags:content:)(0, a2, a3, a4);
    }

    else
    {
      v12 = swift_unknownObjectRetain();
      v13 = CoreViewSpeculativeLayer(v12);
      if (v13)
      {
        v14 = v13;
        if (v9)
        {
          [v13 setBounds_];
          [v14 layoutIfNeeded];
        }

        v15 = v14;
        specialized GraphicsContext.drawLayer(flags:content:)(0, a2, v15, a4);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall GraphicsContext.renderMissingPlatformView(size:)(CGSize size)
{
  v2 = v1;
  height = size.height;
  width = size.width;
  v49 = *MEMORY[0x1E69E9840];
  v5 = size.width * 0.5;
  v6 = size.height * 0.5;
  if (size.height >= size.width)
  {
    size.height = size.width;
  }

  v32 = size.height * 0.5 * 0.2;
  v7 = size.height * 0.5 - v32;
  v8 = size.width * 0.5;
  v9 = v5 - v7;
  v33 = v6;
  v10 = v6 - v7;
  v50.origin.x = v5 - v7;
  v50.origin.y = v6 - v7;
  v50.size.width = v7 + v7;
  v50.size.height = v7 + v7;
  if (CGRectIsNull(v50))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 6;
  }

  else
  {
    v38.a = 1.0;
    v38.b = 0.0;
    v38.c = 0.0;
    v38.d = 1.0;
    v38.tx = 0.0;
    v38.ty = 0.0;
    v51.origin.x = v9;
    v51.origin.y = v10;
    v51.size.width = v7 + v7;
    v51.size.height = v7 + v7;
    v52 = CGRectApplyAffineTransform(v51, &v38);
    v11 = *&v52.origin.x;
    v12 = *&v52.origin.y;
    v13 = *&v52.size.width;
    v14 = *&v52.size.height;
    v15 = 1;
  }

  v16 = v7 * 0.707106781;
  type metadata accessor for Path.PathBox();
  v17 = swift_allocObject();
  *(v17 + 24) = 0u;
  v18 = (v17 + 24);
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 16) = 2;
  RBPathStorageInit();
  v19 = *(v17 + 16);

  if (v19 != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  Path.append(to:)(v18);
  swift_retain_n();
  outlined consume of Path.Storage(v11, v12, v13, v14, v15);
  if (*(v17 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  v38.a = v8 + v16;
  v38.b = v33 + v16;
  MEMORY[0x193AC35E0](v18, 0, &v38, 0);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v20 = v17;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 104) = 0u;
    v21 = *(v17 + 16);
    *(v20 + 16) = v21;
    if (v21)
    {
      if (v21 == 1)
      {

        *(v20 + 24) = RBPathRetain();
        *(v20 + 32) = v22;
      }

      else
      {
        RBPathStorageInit();
      }
    }

    else
    {
      v23 = *v18;
      if (!*v18)
      {
        __break(1u);
        return;
      }

      *(v20 + 24) = v23;
      v24 = v23;
    }
  }

  v25 = v8 - v16;
  v26 = v33 - v16;
  v27 = *(v20 + 16);

  if (v27 != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  v38.a = v25;
  v38.b = v26;
  MEMORY[0x193AC35E0](v20 + 24, 1, &v38, 0);

  v40[0] = v20;
  memset(&v40[1], 0, 24);
  v41 = 5;
  v53.origin.x = 0.0;
  v53.origin.y = 0.0;
  v53.size.width = width;
  v53.size.height = height;
  IsNull = CGRectIsNull(v53);
  if (IsNull)
  {
    v29 = 0;
  }

  else
  {
    v29 = *&width;
  }

  if (IsNull)
  {
    v30 = 0;
  }

  else
  {
    v30 = *&height;
  }

  if (IsNull)
  {
    v31 = 6;
  }

  else
  {
    v31 = 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v42[2] = v29;
  v42[3] = v30;
  v43 = v31;
  if (one-time initialization token for yellow != -1)
  {
    swift_once();
  }

  *&v38.a = static Color.yellow;
  v39 = 1;
  v34 = 256;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;

  GraphicsContext.draw(_:with:style:)(v42, &v38, &v34, v2);
  outlined consume of Path.Storage(0, 0, v29, v30, v31);

  if (one-time initialization token for red != -1)
  {
    swift_once();
  }

  *&v38.a = static Color.red;
  v39 = 1;
  v34 = *&v32;
  v35 = xmmword_18DDAB920;
  v36 = MEMORY[0x1E69E7CC0];
  v37 = 1;

  GraphicsContext.draw(_:with:style:)(v40, &v38, &v34, v2);

  outlined consume of PathDrawingStyle(v34, v35, *(&v35 + 1), v36, *(&v36 + 1), v37);
}

uint64_t DisplayList.GraphicsRenderer.deinit()
{

  return v0;
}

BOOL specialized static DisplayList.GraphicsRenderer.Cache.CallbackKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && *(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t partial apply for closure #10 in DisplayList.GraphicsRenderer.render(item:in:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  v5 = *(v1 + 24);
  v6 = v2;
  v7 = v3;
  return DisplayList.GraphicsRenderer.render(list:in:)(&v5, a1);
}

uint64_t getEnumTagSinglePayload for DisplayList.GraphicsRenderer.PlatformViewMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for DisplayList.GraphicsRenderer.PlatformViewMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for DisplayList.GraphicsRenderer.PlatformViewMode(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for DisplayList.GraphicsRenderer.PlatformViewMode(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DisplayList.GraphicsRenderer.Cache(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for DisplayList.GraphicsRenderer.Cache(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for DisplayList.GraphicsRenderer.Cache(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

unint64_t type metadata accessor for CUICatalog()
{
  result = lazy cache variable for type metadata for CUICatalog;
  if (!lazy cache variable for type metadata for CUICatalog)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CUICatalog);
  }

  return result;
}

void type metadata accessor for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>?()
{
  if (!lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>?)
  {
    type metadata accessor for Any?(255, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey()
{
  result = lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey;
  if (!lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey;
  if (!lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.GraphicsRenderer.Cache.AnimatorKey and conformance DisplayList.GraphicsRenderer.Cache.AnimatorKey);
  }

  return result;
}

uint64_t CoreInteractionRepresentableFeature.modifyViewOutputs<A>(inputs:outputs:proxy:)(uint64_t a1, uint64_t a2)
{
  return _ViewInputs.base.modify(a1, a2);
}

{
  return _ViewInputs.base.modify(a1, a2);
}

_DWORD *CoreInteractionRepresentableFeatureBuffer.index(after:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  if (*v2)
  {
    v3 = *result + 1;
    if (v3 == *(v2 + 12))
    {
      *a2 = v3;
      a2[1] = 0;
    }

    else
    {
      v4 = *(*v2 + result[1] + 8) + result[1];
      *a2 = v3;
      a2[1] = v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *CoreInteractionRepresentableFeatureBuffer.formIndex(after:)(int *result)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 3);
    v4 = result[1];
    v5 = *result + 1;
    *result = v5;
    if (v5 == v3)
    {
      result[1] = 0;
    }

    else
    {
      result[1] = *(v2 + v4 + 8) + v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoreInteractionRepresentableFeatureBuffer.subscript.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*v2)
  {
    *a2 = *v2 + *(result + 4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoreInteractionRepresentableFeatureBuffer.subscript.getter(uint64_t result)
{
  v2 = *(v1 + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  if (*v1)
  {
    v4 = result;
    v5 = 0;
    for (i = v2 - 1; ; --i)
    {
      v8 = (v3 + v5);
      if ((*(*v8 + 80))() == v4)
      {
        break;
      }

      if (i)
      {
        v5 += v8[2];
      }

      else
      {
        v5 = 0;
      }

      if (!(i | v5))
      {
        return 0;
      }
    }

    return _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CoreInteractionRepresentableFeatureBuffer.Element.modifyViewInputs<A>(inputs:proxy:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *v4;
  v7 = **v4;
  v10 = v6;
  v9 = v5;
  return (*(v7 + 112))(&v10, a1, &v9, a3, a4);
}

uint64_t static CoreInteractionRepresentableFeatureBuffer._VTable.moveInitialize(elt:from:)(uint64_t a1)
{
  v2 = *(v1 + 128);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v5;
  v11 = *v7;
  v8 = _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v11 = v6;
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  UnsafeMutablePointer.move()();
  return _sSpsRi_zrlE10initialize2toyxn_tF(v4, v8, v2);
}

uint64_t static CoreInteractionRepresentableFeatureBuffer._VTable.modifyViewInputs<A>(elt:inputs:proxy:)(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v13 = *a1;
  v10 = *(v5 + 128);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  v12 = v9;
  return (*(*(v5 + 136) + 8))(a2, &v12, a4, a5, v10);
}

void *protocol witness for Collection.subscript.read in conformance CoreInteractionRepresentableFeatureBuffer(void *result, uint64_t a2)
{
  if (*v2)
  {
    *result = *v2 + *(a2 + 4);
    return _ViewInputs.base.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance CoreInteractionRepresentableFeatureBuffer(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
}

int *protocol witness for Collection.index(_:offsetBy:) in conformance CoreInteractionRepresentableFeatureBuffer@<X0>(int *result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *result;
  v4 = result[1];
  if (!a2)
  {
    *a3 = v5;
    a3[1] = v4;
    return result;
  }

  if (!*v3)
  {
    goto LABEL_13;
  }

  v6 = *(v3 + 12);
  for (i = 1; !(v5 - v6 + i); ++i)
  {
    v4 = 0;
    if (i >= a2)
    {
      goto LABEL_10;
    }

LABEL_6:
    ;
  }

  v4 += *(*v3 + 8 + v4);
  if (i < a2)
  {
    goto LABEL_6;
  }

  v6 = v5 + i;
LABEL_10:
  *a3 = v6;
  a3[1] = v4;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance CoreInteractionRepresentableFeatureBuffer(uint64_t result, int *a2)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 < *result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = *(result + 4);
  v6 = a2[1];
  v7 = v3 - v4;
  if (v3 == v4 && v5 == v6)
  {
    return 0;
  }

  if (*v2)
  {
    v9 = *(v2 + 12);
    v11 = v9 == v3 && v6 == 0;
    v12 = v9 - v4;
    result = 1;
    do
    {
      if (v12 == result)
      {
        if (v11)
        {
          return result;
        }

        v5 = 0;
      }

      else
      {
        v5 += *(*v2 + 8 + v5);
        if (v7 == result && v5 == v6)
        {
          return result;
        }
      }
    }

    while (!__OFADD__(result++, 1));
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

_DWORD *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CoreInteractionRepresentableFeatureBuffer(_DWORD *result, _DWORD *a2)
{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*result >= a2[2])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2[2] < *result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2[2] < result[2])
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

int *protocol witness for Collection.formIndex(after:) in conformance CoreInteractionRepresentableFeatureBuffer(int *result)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 3);
    v4 = result[1];
    v5 = *result + 1;
    *result = v5;
    if (v5 == v3)
    {
      result[1] = 0;
    }

    else
    {
      result[1] = *(v2 + v4 + 8) + v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double protocol witness for Sequence.makeIterator() in conformance CoreInteractionRepresentableFeatureBuffer@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance CoreInteractionRepresentableFeatureBuffer()
{
  result = *(v0 + 12);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!result)
    {
      return 0;
    }

    v2 = *(v0 + 12);
    while (*v0)
    {
      if (!--v2)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer()
{
  result = lazy protocol witness table cache variable for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer;
  if (!lazy protocol witness table cache variable for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer;
  if (!lazy protocol witness table cache variable for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeHeterogeneousBuffer.Index and conformance UnsafeHeterogeneousBuffer.Index()
{
  result = lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer.Index and conformance UnsafeHeterogeneousBuffer.Index;
  if (!lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer.Index and conformance UnsafeHeterogeneousBuffer.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer.Index and conformance UnsafeHeterogeneousBuffer.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer.Index and conformance UnsafeHeterogeneousBuffer.Index;
  if (!lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer.Index and conformance UnsafeHeterogeneousBuffer.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeHeterogeneousBuffer.Index and conformance UnsafeHeterogeneousBuffer.Index);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<CoreInteractionRepresentableFeatureBuffer> and conformance DefaultIndices<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultIndices<CoreInteractionRepresentableFeatureBuffer>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for DefaultIndices<CoreInteractionRepresentableFeatureBuffer>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type CoreInteractionRepresentableFeatureBuffer and conformance CoreInteractionRepresentableFeatureBuffer();
    v7 = a3(a1, &type metadata for CoreInteractionRepresentableFeatureBuffer, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t DisplayList.InterpolatorGroup.maxDuration.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t DisplayList.InterpolatorGroup.__deallocating_deinit()
{
  (*(*v0 + 88))();

  return swift_deallocClassInstance();
}

uint64_t DisplayList.UnaryInterpolatorGroup.__allocating_init()()
{
  v0 = swift_allocObject();
  DisplayList.UnaryInterpolatorGroup.init()();
  return v0;
}

uint64_t DisplayList.UnaryInterpolatorGroup.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 36) = 0;
  *(v0 + 52) = 0;
  *(v0 + 44) = 0;
  *(v0 + 60) = 0;
  *(v0 + 64) = 0x7FF0000000000000;
  *(v0 + 72) = 0;
  *(v0 + 76) = 1;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v2 = static RasterizationOptions.Flags.defaultFlags;
  *(v0 + 112) = -1;
  *(v0 + 116) = 768;
  *(v0 + 120) = v2;
  *(v0 + 124) = 3;
  *(v0 + 16) = 0x7FF0000000000000;
  return v0;
}

Swift::Void __swiftcall DisplayList.UnaryInterpolatorGroup.reset()()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = v3[3];
      v5 = v3[4];
      v6 = *(v3 + 89);
      v13[0] = v3[5];
      v7 = v3[1];
      v8 = v3[2];
      v12[0] = *v3;
      v12[1] = v7;
      *(v13 + 9) = v6;
      v12[3] = v4;
      v12[4] = v5;
      v12[2] = v8;
      if (*&v13[0])
      {
        v9 = *(**&v13[0] + 96);
        outlined init with copy of DisplayList.InterpolatorLayer.Removed(v12, &v11);

        v9(v10);
        outlined destroy of DisplayList.InterpolatorLayer.Removed(v12);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = 0;
  *(v0 + 107) = 1;
  swift_endAccess();
}

SwiftUI::Time __swiftcall DisplayList.UnaryInterpolatorGroup.nextUpdate(after:)(SwiftUI::Time after)
{
  v3 = v1;
  swift_beginAccess();
  v4 = v2 + 8;
  if (*(v2[10] + 16))
  {
    v4 = v2 + 11;
  }

  *&result.seconds = *v4;
  *v3 = *v4;
  return result;
}

uint64_t DisplayList.UnaryInterpolatorGroup.__ivar_destroyer()
{

  swift_unknownObjectRelease();
}

uint64_t DisplayList.UnaryInterpolatorGroup.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = v3[3];
      v5 = v3[4];
      v6 = *(v3 + 89);
      v14[0] = v3[5];
      v7 = v3[1];
      v8 = v3[2];
      v13[0] = *v3;
      v13[1] = v7;
      *(v14 + 9) = v6;
      v13[3] = v4;
      v13[4] = v5;
      v13[2] = v8;
      if (*&v14[0])
      {
        v9 = *(**&v14[0] + 96);
        outlined init with copy of DisplayList.InterpolatorLayer.Removed(v13, &v12);

        v9(v10);
        outlined destroy of DisplayList.InterpolatorLayer.Removed(v13);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = 0;
  *(v0 + 107) = 1;
  swift_endAccess();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t DisplayList.UnaryInterpolatorGroup.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = v3[3];
      v5 = v3[4];
      v6 = *(v3 + 89);
      v14[0] = v3[5];
      v7 = v3[1];
      v8 = v3[2];
      v13[0] = *v3;
      v13[1] = v7;
      *(v14 + 9) = v6;
      v13[3] = v4;
      v13[4] = v5;
      v13[2] = v8;
      if (*&v14[0])
      {
        v9 = *(**&v14[0] + 96);
        outlined init with copy of DisplayList.InterpolatorLayer.Removed(v13, &v12);

        v9(v10);
        outlined destroy of DisplayList.InterpolatorLayer.Removed(v13);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = 0;
  *(v0 + 107) = 1;
  swift_endAccess();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in idsAreDisjoint(_:_:)(int *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 4 * v8 + 32) = v4;
  return result;
}

unsigned int *closure #3 in idsAreDisjoint(_:_:)(unsigned int *result, _BYTE *a2, uint64_t a3)
{
  v3 = *(*a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *result;
    v6 = *a3 + 32;
    v7 = *(*a3 + 16);
    while (1)
    {
      v8 = v7 >> 1;
      v9 = v4 + (v7 >> 1);
      if (__OFADD__(v4, v7 >> 1))
      {
        break;
      }

      if (v9 >= v3)
      {
        goto LABEL_16;
      }

      if (*(v6 + 4 * v9) < v5)
      {
        v4 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_10:
          if (v4 == v3)
          {
            return result;
          }

          if (v4 < v3)
          {
            if (*(v6 + 4 * v4) == v5)
            {
              *a2 = 1;
            }

            return result;
          }

LABEL_17:
          __break(1u);
          return result;
        }

        v8 = v7 + ~v8;
      }

      v7 = v8;
      if (v8 <= 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

uint64_t assignWithCopy for DisplayList.InterpolatorLayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 83) = *(a2 + 83);
  return a1;
}

uint64_t assignWithTake for DisplayList.InterpolatorLayer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 83) = *(a2 + 83);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.InterpolatorLayer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.InterpolatorLayer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 84) = 1;
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

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for DisplayList.InterpolatorLayer.Removed(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v4;
  v5 = *(a1 + 56);
  v6 = *(a2 + 56);
  *(a1 + 56) = v6;
  v7 = v6;

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  *(a1 + 64) = v9;
  v10 = v9;

  v11 = *(a2 + 72);
  v12 = *(a1 + 72);
  *(a1 + 72) = v11;
  v13 = v11;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for DisplayList.InterpolatorLayer.Removed(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);

  v4 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.InterpolatorLayer.Removed(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.InterpolatorLayer.Removed(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for DisplayList.InterpolatorLayer.Contents()
{

  return swift_unknownObjectRelease();
}

uint64_t assignWithCopy for DisplayList.InterpolatorLayer.Contents(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t assignWithTake for DisplayList.InterpolatorLayer.Contents(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayList.InterpolatorLayer.Contents(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayList.InterpolatorLayer.Contents(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.InterpolatorLayer.Phase and conformance DisplayList.InterpolatorLayer.Phase()
{
  result = lazy protocol witness table cache variable for type DisplayList.InterpolatorLayer.Phase and conformance DisplayList.InterpolatorLayer.Phase;
  if (!lazy protocol witness table cache variable for type DisplayList.InterpolatorLayer.Phase and conformance DisplayList.InterpolatorLayer.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.InterpolatorLayer.Phase and conformance DisplayList.InterpolatorLayer.Phase);
  }

  return result;
}

id static EnableScrollPrefetchFeature.defaults.getter()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v1 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v0 = 0;
  }

  v2 = v0;
  return v1;
}

uint64_t static EnableScrollPrefetchFeature.cachedValue.setter(char a1)
{
  result = swift_beginAccess();
  static EnableScrollPrefetchFeature.cachedValue = a1;
  return result;
}

uint64_t static ScrollPrefetchState.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return static ScrollPrefetchState.defaultValue;
}

uint64_t ScrollPrefetchState.init(deadline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = AGMakeUniqueID();
  *a2 = result;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return result;
}

uint64_t ScrollPrefetchState.commit(to:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v7 = AGGraphGetAttributeGraph();
    result = AGGraphGetContext();
    if (result)
    {
      v8 = result;

      v12 = 0;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA014FromScrollViewF033_D678D328B3677F8DE2F4D58DFD0AC9C2LLVG_Tt2g5(&v12, 1);
      v9 = v12;
      v10 = _threadTransactionID();
      v13 = a1;
      v14 = 0;
      v15 = v3;
      v16 = v4;
      v17 = v5;
      specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(v9, v10, &v13, 1, 0);
      v11[0] = 9;

      static Update.enqueueAction(reason:_:)(v11, partial apply for closure #1 in ScrollPrefetchState.commit(to:), v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ScrollPrefetchState@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ScrollPrefetchState.defaultValue;
  return result;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, char a4, char *a5)
{
  v7 = v5;
  LODWORD(v11) = a2;
  v58 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v13 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v14 = (a4 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a5 & 1;
  v15 = swift_beginAccess();
  v16 = *(v7 + 144);
  v17 = *(v16 + 2);
  v47 = v11;
  if (v17)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *(v7 + 144) = v16;
    }

    if (v17 > *(v16 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v51[0]) = v17;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v16;
        swift_endAccess();
        if (v14)
        {
LABEL_47:
          v41 = *(v7 + 144);
          v42 = *(v41 + 16);
          if (v42)
          {
            v26 = *(v41 + 24 * v42 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v26 = 0;
          goto LABEL_50;
        }

        v6 = v13;
        swift_beginAccess();
        if (*(v16 + 2))
        {
          specialized Array._customRemoveLast()(&v53);
          LODWORD(a3) = v54;
          v13 = v55;
          a1 = v53;
          if (v55)
          {
            v11 = HIDWORD(v54);
          }

          else
          {
            outlined consume of AsyncTransaction?(v53, v54, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v53);
            a1 = v53;
            LODWORD(a3) = v54;
            LODWORD(v11) = HIDWORD(v54);
            v13 = v55;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a5 = *(v7 + 144);

          v37 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = a5;
          if (v37)
          {
LABEL_44:
            v39 = *(a5 + 2);
            v38 = *(a5 + 3);
            if (v39 >= v38 >> 1)
            {
              a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, a5);
            }

            *(a5 + 2) = v39 + 1;
            v40 = &a5[24 * v39];
            *(v40 + 4) = a1;
            *(v40 + 10) = a3;
            *(v40 + 11) = v11;
            *(v40 + 6) = v13;
            *(v7 + 144) = a5;
            swift_endAccess();

            v13 = v6;
            goto LABEL_47;
          }

LABEL_56:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
          *(v7 + 144) = a5;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v17 = &v16[24 * v17];
    if (*(v17 + 16) == v11)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        if (a1)
        {
          v51[0] = MEMORY[0x1E69E7CC0];

          LODWORD(v11) = compareLists(_:_:ignoredTypes:)(v19, a1, v51);
          v6 = v51[0];

          if (v11)
          {
LABEL_15:
            a5 = (v17 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3);
            LODWORD(v17) = *(v17 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    v46 = v13;
    *(v7 + 144) = v16;
    swift_endAccess();
    if (!v14)
    {
      GraphHost.flushTransactions()();
    }
  }

  else
  {
    v46 = v13;
    if ((*(*v7 + 192))(v15))
    {
      v21 = v20;
      ObjectType = swift_getObjectType();
      (*(v21 + 32))(ObjectType, v21);
      swift_unknownObjectRelease();
    }
  }

  v56 = &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation;
  v57 = &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation;
  v53 = swift_allocObject();
  outlined init with copy of LazyLayoutCacheItem.SingleItemPhaseMutation(a3, v53 + 16);
  swift_beginAccess();
  v45 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v53, v51);
  v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(&v53);
  v27 = v52;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v29);
  v49 = &type metadata for LazyLayoutCacheItem.SingleItemPhaseMutation;
  v50 = &protocol witness table for LazyLayoutCacheItem.SingleItemPhaseMutation;
  *&v48 = swift_allocObject();
  outlined init with take of LazyLayoutCacheItem.SingleItemPhaseMutation(v31, v48 + 16);
  v23[2] = v26;
  outlined init with take of AnyTrackedValue(&v48, &v23[5 * v25 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v51);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v13 = v46;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v26 = (v45 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v53) = v26;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v27 = *(v7 + 144);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v27;
    if (v33)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
  *(v7 + 144) = v27;
LABEL_39:
  v35 = *(v27 + 2);
  v34 = *(v27 + 3);
  if (v35 >= v34 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v27);
  }

  *(v27 + 2) = v35 + 1;
  v36 = &v27[24 * v35];
  *(v36 + 4) = a1;
  *(v36 + 10) = v47;
  *(v36 + 11) = v26;
  *(v36 + 6) = v23;
  *(v7 + 144) = v27;
  swift_endAccess();

LABEL_50:
  _MovableLockUnlock(v13);
  return v26;
}

{
  v7 = v5;
  LODWORD(v11) = a2;
  v58 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v13 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v14 = (a4 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a5 & 1;
  v15 = swift_beginAccess();
  v16 = *(v7 + 144);
  v17 = *(v16 + 2);
  v47 = v11;
  if (v17)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *(v7 + 144) = v16;
    }

    if (v17 > *(v16 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v51[0]) = v17;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v16;
        swift_endAccess();
        if (v14)
        {
LABEL_47:
          v41 = *(v7 + 144);
          v42 = *(v41 + 16);
          if (v42)
          {
            v26 = *(v41 + 24 * v42 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v26 = 0;
          goto LABEL_50;
        }

        v6 = v13;
        swift_beginAccess();
        if (*(v16 + 2))
        {
          specialized Array._customRemoveLast()(&v53);
          LODWORD(a3) = v54;
          v13 = v55;
          a1 = v53;
          if (v55)
          {
            v11 = HIDWORD(v54);
          }

          else
          {
            outlined consume of AsyncTransaction?(v53, v54, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v53);
            a1 = v53;
            LODWORD(a3) = v54;
            LODWORD(v11) = HIDWORD(v54);
            v13 = v55;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a5 = *(v7 + 144);

          v37 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = a5;
          if (v37)
          {
LABEL_44:
            v39 = *(a5 + 2);
            v38 = *(a5 + 3);
            if (v39 >= v38 >> 1)
            {
              a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, a5);
            }

            *(a5 + 2) = v39 + 1;
            v40 = &a5[24 * v39];
            *(v40 + 4) = a1;
            *(v40 + 10) = a3;
            *(v40 + 11) = v11;
            *(v40 + 6) = v13;
            *(v7 + 144) = a5;
            swift_endAccess();

            v13 = v6;
            goto LABEL_47;
          }

LABEL_56:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
          *(v7 + 144) = a5;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v17 = &v16[24 * v17];
    if (*(v17 + 16) == v11)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        if (a1)
        {
          v51[0] = MEMORY[0x1E69E7CC0];

          LODWORD(v11) = compareLists(_:_:ignoredTypes:)(v19, a1, v51);
          v6 = v51[0];

          if (v11)
          {
LABEL_15:
            a5 = (v17 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3);
            LODWORD(v17) = *(v17 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    v46 = v13;
    *(v7 + 144) = v16;
    swift_endAccess();
    if (!v14)
    {
      GraphHost.flushTransactions()();
    }
  }

  else
  {
    v46 = v13;
    if ((*(*v7 + 192))(v15))
    {
      v21 = v20;
      ObjectType = swift_getObjectType();
      (*(v21 + 32))(ObjectType, v21);
      swift_unknownObjectRelease();
    }
  }

  v56 = &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation;
  v57 = &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation;
  v53 = swift_allocObject();
  outlined init with copy of LazyLayoutCacheItem.AllItemsPhaseMutation(a3, v53 + 16);
  swift_beginAccess();
  v45 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v53, v51);
  v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = v23[2];
  v24 = v23[3];
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  __swift_destroy_boxed_opaque_existential_1(&v53);
  v27 = v52;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v29);
  v49 = &type metadata for LazyLayoutCacheItem.AllItemsPhaseMutation;
  v50 = &protocol witness table for LazyLayoutCacheItem.AllItemsPhaseMutation;
  *&v48 = swift_allocObject();
  outlined init with take of LazyLayoutCacheItem.AllItemsPhaseMutation(v31, v48 + 16);
  v23[2] = v26;
  outlined init with take of AnyTrackedValue(&v48, &v23[5 * v25 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v51);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v13 = v46;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v26 = (v45 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v53) = v26;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v27 = *(v7 + 144);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v27;
    if (v33)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
  *(v7 + 144) = v27;
LABEL_39:
  v35 = *(v27 + 2);
  v34 = *(v27 + 3);
  if (v35 >= v34 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v27);
  }

  *(v27 + 2) = v35 + 1;
  v36 = &v27[24 * v35];
  *(v36 + 4) = a1;
  *(v36 + 10) = v47;
  *(v36 + 11) = v26;
  *(v36 + 6) = v23;
  *(v7 + 144) = v27;
  swift_endAccess();

LABEL_50:
  _MovableLockUnlock(v13);
  return v26;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, __int128 *a3, char a4, char *a5)
{
  v7 = v5;
  LODWORD(v11) = a2;
  v65 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v13 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v14 = (a4 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a5 & 1;
  v15 = swift_beginAccess();
  v16 = *(v7 + 144);
  v17 = *(v16 + 2);
  v55 = v11;
  if (v17)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *(v7 + 144) = v16;
    }

    if (v17 > *(v16 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v59[0]) = v17;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v16;
        swift_endAccess();
        if (v14)
        {
LABEL_47:
          v49 = *(v7 + 144);
          v50 = *(v49 + 16);
          if (v50)
          {
            v30 = *(v49 + 24 * v50 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v30 = 0;
          goto LABEL_50;
        }

        v6 = v13;
        swift_beginAccess();
        if (*(v16 + 2))
        {
          specialized Array._customRemoveLast()(&v60);
          LODWORD(a3) = v61;
          v13 = v62;
          a1 = v60;
          if (v62)
          {
            v11 = HIDWORD(v61);
          }

          else
          {
            outlined consume of AsyncTransaction?(v60, v61, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v60);
            a1 = v60;
            LODWORD(a3) = v61;
            LODWORD(v11) = HIDWORD(v61);
            v13 = v62;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a5 = *(v7 + 144);

          v45 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = a5;
          if (v45)
          {
LABEL_44:
            v47 = *(a5 + 2);
            v46 = *(a5 + 3);
            if (v47 >= v46 >> 1)
            {
              a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, a5);
            }

            *(a5 + 2) = v47 + 1;
            v48 = &a5[24 * v47];
            *(v48 + 4) = a1;
            *(v48 + 10) = a3;
            *(v48 + 11) = v11;
            *(v48 + 6) = v13;
            *(v7 + 144) = a5;
            swift_endAccess();

            v13 = v6;
            goto LABEL_47;
          }

LABEL_56:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
          *(v7 + 144) = a5;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v17 = &v16[24 * v17];
    if (*(v17 + 16) == v11)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        if (a1)
        {
          v59[0] = MEMORY[0x1E69E7CC0];

          LODWORD(v11) = compareLists(_:_:ignoredTypes:)(v19, a1, v59);
          v6 = v59[0];

          if (v11)
          {
LABEL_15:
            a5 = (v17 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3);
            LODWORD(v17) = *(v17 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v7 + 144) = v16;
    swift_endAccess();
    if (!v14)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v7 + 192))(v15))
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 32))(ObjectType, v21);
    swift_unknownObjectRelease();
  }

  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<EdgeInsets>);
  v24 = v23;
  v63 = v23;
  v64 = &protocol witness table for AssignmentGraphMutation<A>;
  v25 = swift_allocObject();
  v60 = v25;
  v26 = a3[1];
  v25[1] = *a3;
  v25[2] = v26;
  v25[3] = a3[2];
  swift_beginAccess();
  HIDWORD(v52) = static AsyncTransaction.nextTraceID;
  v53 = a1;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v60, v59);
  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = v27[2];
  v28 = v27[3];
  v30 = v29 + 1;
  v54 = v13;
  v31 = &protocol witness table for AssignmentGraphMutation<A>;
  if (v29 >= v28 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
  }

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v33);
  v37 = *v35;
  v38 = v35[8];
  v57 = v24;
  v58 = &protocol witness table for AssignmentGraphMutation<A>;
  v39 = swift_allocObject();
  *&v56 = v39;
  *(v39 + 16) = v37;
  *(v39 + 24) = v38;
  v40 = *(v35 + 2);
  *(v39 + 32) = *(v35 + 1);
  *(v39 + 48) = v40;
  v27[2] = v30;
  outlined init with take of AnyTrackedValue(&v56, &v27[5 * v29 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v59);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v13 = v54;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v30 = ((HIDWORD(v52) >> 1) + 1);
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v60) = v30;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v24 = *(v7 + 144);
    v31 = v53;

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v24;
    if (v41)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
  *(v7 + 144) = v24;
LABEL_39:
  v43 = *(v24 + 2);
  v42 = *(v24 + 3);
  if (v43 >= v42 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v24);
  }

  *(v24 + 2) = v43 + 1;
  v44 = &v24[24 * v43];
  *(v44 + 4) = v31;
  *(v44 + 10) = v55;
  *(v44 + 11) = v30;
  *(v44 + 6) = v27;
  *(v7 + 144) = v24;
  swift_endAccess();

LABEL_50:
  _MovableLockUnlock(v13);
  return v30;
}

_UNKNOWN **specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, char a4, char *a5)
{
  v7 = v5;
  LODWORD(v11) = a2;
  v68 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v13 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v14 = (a4 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a5 & 1;
  v15 = swift_beginAccess();
  v16 = *(v7 + 144);
  v17 = *(v16 + 2);
  v58 = v11;
  if (v17)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *(v7 + 144) = v16;
    }

    if (v17 > *(v16 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v62[0]) = v17;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v16;
        swift_endAccess();
        if (v14)
        {
LABEL_47:
          v50 = *(v7 + 144);
          v51 = *(v50 + 16);
          if (v51)
          {
            v30 = *(v50 + 24 * v51 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v30 = 0;
          goto LABEL_50;
        }

        v6 = v13;
        swift_beginAccess();
        if (*(v16 + 2))
        {
          specialized Array._customRemoveLast()(&v63);
          LODWORD(a3) = v64;
          a1 = v65;
          v13 = v63;
          if (v65)
          {
            v11 = HIDWORD(v64);
          }

          else
          {
            outlined consume of AsyncTransaction?(v63, v64, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v63);
            v13 = v63;
            LODWORD(a3) = v64;
            LODWORD(v11) = HIDWORD(v64);
            a1 = v65;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a5 = *(v7 + 144);

          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = a5;
          if (v46)
          {
LABEL_44:
            v48 = *(a5 + 2);
            v47 = *(a5 + 3);
            if (v48 >= v47 >> 1)
            {
              a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, a5);
            }

            *(a5 + 2) = v48 + 1;
            v49 = &a5[24 * v48];
            *(v49 + 4) = v13;
            *(v49 + 10) = a3;
            *(v49 + 11) = v11;
            *(v49 + 6) = a1;
            *(v7 + 144) = a5;
            swift_endAccess();

            v13 = v6;
            goto LABEL_47;
          }

LABEL_56:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
          *(v7 + 144) = a5;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v17 = &v16[24 * v17];
    if (*(v17 + 16) == v11)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        if (a1)
        {
          v62[0] = MEMORY[0x1E69E7CC0];

          LODWORD(v11) = compareLists(_:_:ignoredTypes:)(v19, a1, v62);
          v6 = v62[0];

          if (v11)
          {
LABEL_15:
            a5 = (v17 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3);
            LODWORD(v17) = *(v17 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v7 + 144) = v16;
    swift_endAccess();
    if (!v14)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v7 + 192))(v15))
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 32))(ObjectType, v21);
    swift_unknownObjectRelease();
  }

  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<PlatformGlassInteractionState>);
  v24 = v23;
  v66 = v23;
  v67 = &protocol witness table for AssignmentGraphMutation<A>;
  v25 = swift_allocObject();
  v63 = v25;
  v26 = *(a3 + 16);
  *(v25 + 16) = *a3;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a3 + 32);
  *(v25 + 64) = *(a3 + 48);
  swift_beginAccess();
  v54 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v63, v62);
  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = v27[2];
  v28 = v27[3];
  v57 = v13;
  v56 = a1;
  v55 = v29 + 1;
  v30 = &protocol witness table for AssignmentGraphMutation<A>;
  if (v29 >= v28 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
  }

  __swift_destroy_boxed_opaque_existential_1(&v63);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, v32);
  v36 = *v34;
  v37 = v34[8];
  v38 = v34[48];
  v60 = v24;
  v61 = &protocol witness table for AssignmentGraphMutation<A>;
  v39 = swift_allocObject();
  *&v59 = v39;
  *(v39 + 16) = v36;
  *(v39 + 24) = v37;
  v40 = *(v34 + 2);
  *(v39 + 32) = *(v34 + 1);
  *(v39 + 48) = v40;
  *(v39 + 64) = v38;
  v27[2] = v55;
  outlined init with take of AnyTrackedValue(&v59, &v27[5 * v29 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v62);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v13 = v57;
  v41 = v56;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v30 = ((v54 >> 1) + 1);
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v63) = v30;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v24 = *(v7 + 144);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v24;
    if (v42)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
  *(v7 + 144) = v24;
LABEL_39:
  v44 = *(v24 + 2);
  v43 = *(v24 + 3);
  if (v44 >= v43 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v24);
  }

  *(v24 + 2) = v44 + 1;
  v45 = &v24[24 * v44];
  *(v45 + 4) = v41;
  *(v45 + 10) = v58;
  *(v45 + 11) = v30;
  *(v45 + 6) = v27;
  *(v7 + 144) = v24;
  swift_endAccess();

LABEL_50:
  _MovableLockUnlock(v13);
  return v30;
}

uint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, char a4, char *a5)
{
  v7 = v5;
  LODWORD(v11) = a2;
  v68 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v13 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v14 = (a4 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v7 + 168) &= a5 & 1;
  v15 = swift_beginAccess();
  v16 = *(v7 + 144);
  v17 = *(v16 + 2);
  v58 = v11;
  if (v17)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      *(v7 + 144) = v16;
    }

    if (v17 > *(v16 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v62[0]) = v17;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v16;
        swift_endAccess();
        if (v14)
        {
LABEL_47:
          v49 = *(v7 + 144);
          v50 = *(v49 + 16);
          if (v50)
          {
            v38 = *(v49 + 24 * v50 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v38 = 0;
          goto LABEL_50;
        }

        a1 = v13;
        swift_beginAccess();
        if (*(v16 + 2))
        {
          specialized Array._customRemoveLast()(&v63);
          LODWORD(a3) = v64;
          v6 = v65;
          v13 = v63;
          if (v65)
          {
            v11 = HIDWORD(v64);
          }

          else
          {
            outlined consume of AsyncTransaction?(v63, v64, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v63);
            v13 = v63;
            LODWORD(a3) = v64;
            LODWORD(v11) = HIDWORD(v64);
            v6 = v65;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a5 = *(v7 + 144);

          v45 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = a5;
          if (v45)
          {
LABEL_44:
            v47 = *(a5 + 2);
            v46 = *(a5 + 3);
            if (v47 >= v46 >> 1)
            {
              a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, a5);
            }

            *(a5 + 2) = v47 + 1;
            v48 = &a5[24 * v47];
            *(v48 + 4) = v13;
            *(v48 + 10) = a3;
            *(v48 + 11) = v11;
            *(v48 + 6) = v6;
            *(v7 + 144) = a5;
            swift_endAccess();

            v13 = a1;
            goto LABEL_47;
          }

LABEL_56:
          a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a5 + 2) + 1, 1, a5);
          *(v7 + 144) = a5;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v17 = &v16[24 * v17];
    if (*(v17 + 16) == v11)
    {
      v19 = *(v17 + 8);
      if (v19)
      {
        if (a1)
        {
          v62[0] = MEMORY[0x1E69E7CC0];

          LODWORD(v11) = compareLists(_:_:ignoredTypes:)(v19, a1, v62);
          v6 = v62[0];

          if (v11)
          {
LABEL_15:
            a5 = (v17 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3);
            LODWORD(v17) = *(v17 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v7 + 144) = v16;
    swift_endAccess();
    if (!v14)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v7 + 192))(v15))
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 32))(ObjectType, v21);
    swift_unknownObjectRelease();
  }

  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<ScrollPrefetchState>);
  v24 = v23;
  v66 = v23;
  v67 = &protocol witness table for AssignmentGraphMutation<A>;
  v25 = swift_allocObject();
  v63 = v25;
  v26 = *(a3 + 16);
  *(v25 + 16) = *a3;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a3 + 32);
  swift_beginAccess();
  v53 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v63, v62);
  v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = v27[2];
  v28 = v27[3];
  v57 = v13;
  v56 = a1;
  v55 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v27);
  }

  __swift_destroy_boxed_opaque_existential_1(&v63);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
  v54 = v52;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v52[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v34 + 16))(v33, v31);
  v35 = *v33;
  v36 = v33[8];
  v37 = *(v33 + 2);
  v38 = *(v33 + 3);
  LOBYTE(v33) = v33[32];
  v60 = v24;
  v61 = &protocol witness table for AssignmentGraphMutation<A>;
  v39 = swift_allocObject();
  *&v59 = v39;
  *(v39 + 16) = v35;
  *(v39 + 24) = v36;
  *(v39 + 32) = v37;
  *(v39 + 40) = v38;
  *(v39 + 48) = v33;
  v27[2] = v55;
  outlined init with take of AnyTrackedValue(&v59, &v27[5 * v29 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v62);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v13 = v57;
  v40 = v56;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v38 = (v53 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v63) = v38;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v24 = *(v7 + 144);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v24;
    if (v41)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
  *(v7 + 144) = v24;
LABEL_39:
  v43 = *(v24 + 2);
  v42 = *(v24 + 3);
  if (v43 >= v42 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v24);
  }

  *(v24 + 2) = v43 + 1;
  v44 = &v24[24 * v43];
  *(v44 + 4) = v40;
  *(v44 + 10) = v58;
  *(v44 + 11) = v38;
  *(v44 + 6) = v27;
  *(v7 + 144) = v24;
  swift_endAccess();

LABEL_50:
  _MovableLockUnlock(v13);
  return v38;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, char a4, char a5, char *a6, float a7)
{
  v9 = v7;
  v70 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v17 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v9 + 16))
  {
    v19 = 0;
    goto LABEL_43;
  }

  v59 = v17;
  v18 = (a5 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v9 + 168) &= a6 & 1;
  v20 = swift_beginAccess();
  v21 = *(v9 + 144);
  v22 = *(v21 + 16);
  v58 = a2;
  if (v22)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 144) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      *(v9 + 144) = v21;
    }

    if (v22 > *(v21 + 16))
    {
      __break(1u);
LABEL_55:
      swift_once();
LABEL_17:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v63[0]) = v22;
          AGGraphAddTraceEvent();
        }

        *(v9 + 144) = v21;
        swift_endAccess();
        if (v18)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v21 + 16))
        {
          specialized Array._customRemoveLast()(&v65);
          LODWORD(a3) = v66;
          v18 = v67;
          v8 = v65;
          if (v67)
          {
            v21 = HIDWORD(v66);
          }

          else
          {
            outlined consume of AsyncTransaction?(v65, v66, 0);
            specialized Array.remove(at:)(*(*(v9 + 144) + 16) - 1, &v65);
            v8 = v65;
            LODWORD(a3) = v66;
            LODWORD(v21) = HIDWORD(v66);
            v18 = v67;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a6 = *(v9 + 144);

          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(v9 + 144) = a6;
          if (v51)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_58:
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
      *(v9 + 144) = a6;
LABEL_46:
      v53 = *(a6 + 2);
      v52 = *(a6 + 3);
      if (v53 >= v52 >> 1)
      {
        a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, a6);
      }

      *(a6 + 2) = v53 + 1;
      v54 = &a6[24 * v53];
      *(v54 + 4) = v8;
      *(v54 + 10) = a3;
      *(v54 + 11) = v21;
      *(v54 + 6) = v18;
      *(v9 + 144) = a6;
      swift_endAccess();

LABEL_49:
      v55 = *(v9 + 144);
      v56 = *(v55 + 16);
      if (v56)
      {
        v19 = *(v55 + 24 * v56 + 20);
      }

      else
      {
        v19 = 0;
      }

      v17 = v59;
      goto LABEL_43;
    }

    v22 = v21 + 24 * v22;
    if (*(v22 + 16) == a2)
    {
      v24 = *(v22 + 8);
      if (v24)
      {
        if (a1)
        {
          v63[0] = MEMORY[0x1E69E7CC0];

          v25 = compareLists(_:_:ignoredTypes:)(v24, a1, v63);
          v8 = a1;

          if (v25)
          {
LABEL_16:
            a6 = (v22 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3, a4 & 1, a7);
            LODWORD(v22) = *(v22 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_55;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_16;
      }
    }

    *(v9 + 144) = v21;
    swift_endAccess();
    if (!v18)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v9 + 192))(v20))
  {
    v27 = v26;
    ObjectType = swift_getObjectType();
    (*(v27 + 32))(ObjectType, v27);
    swift_unknownObjectRelease();
  }

  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<Float>);
  v30 = v29;
  v17 = &protocol witness table for AssignmentGraphMutation<A>;
  v68 = v29;
  v69 = &protocol witness table for AssignmentGraphMutation<A>;
  v65 = a3;
  LOBYTE(v66) = a4 & 1;
  *(&v66 + 1) = a7;
  swift_beginAccess();
  v31 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v65, v63);
  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v34 = v32[2];
  v33 = v32[3];
  v19 = v34 + 1;
  v57 = a1;
  if (v34 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
  }

  __swift_destroy_boxed_opaque_existential_1(&v65);
  v35 = v64;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39, v37);
  v41 = *v39;
  v42 = v39[8];
  v43 = *(v39 + 3);
  v61 = v30;
  v62 = &protocol witness table for AssignmentGraphMutation<A>;
  *&v60 = v41;
  BYTE8(v60) = v42;
  HIDWORD(v60) = v43;
  v32[2] = v19;
  outlined init with take of AnyTrackedValue(&v60, &v32[5 * v34 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v63);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v44 = v58;
  v45 = v57;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v19 = (v31 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v65) = (v31 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v35 = *(v9 + 144);

    v46 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 144) = v35;
    v17 = v59;
    if (v46)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
  *(v9 + 144) = v35;
LABEL_40:
  v48 = *(v35 + 2);
  v47 = *(v35 + 3);
  if (v48 >= v47 >> 1)
  {
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v35);
  }

  *(v35 + 2) = v48 + 1;
  v49 = &v35[24 * v48];
  *(v49 + 4) = v45;
  *(v49 + 10) = v44;
  *(v49 + 11) = v19;
  *(v49 + 6) = v32;
  *(v9 + 144) = v35;
  swift_endAccess();

LABEL_43:
  _MovableLockUnlock(v17);
  return v19;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, __int16 a4, char a5, char a6)
{
  v7 = v6;
  v67 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v14 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v7 + 16))
  {
    goto LABEL_49;
  }

  v56 = v14;
  v15 = (a5 & 1) != 0 || AGGraphGetCounter() != 0;
  LODWORD(v16) = a4 & 0x100;
  swift_beginAccess();
  *(v7 + 168) &= a6 & 1;
  v17 = swift_beginAccess();
  v18 = *(v7 + 144);
  v19 = *(v18 + 2);
  v55 = a2;
  if (v19)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      *(v7 + 144) = v18;
    }

    if (v19 > *(v18 + 2))
    {
      __break(1u);
LABEL_53:
      swift_once();
LABEL_16:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v60[0]) = v16;
          AGGraphAddTraceEvent();
        }

        *(v7 + 144) = v18;
        swift_endAccess();
        if (v15)
        {
LABEL_47:
          v50 = *(v7 + 144);
          v51 = *(v50 + 16);
          v14 = v56;
          if (v51)
          {
            v31 = *(v50 + 24 * v51 + 20);
            goto LABEL_50;
          }

LABEL_49:
          v31 = 0;
          goto LABEL_50;
        }

        swift_beginAccess();
        if (*(v18 + 2))
        {
          specialized Array._customRemoveLast()(&v62);
          LODWORD(a3) = v63;
          v15 = v64;
          a1 = v62;
          if (v64)
          {
            v16 = HIDWORD(v63);
          }

          else
          {
            outlined consume of AsyncTransaction?(v62, v63, 0);
            specialized Array.remove(at:)(*(*(v7 + 144) + 16) - 1, &v62);
            a1 = v62;
            LODWORD(a3) = v63;
            LODWORD(v16) = HIDWORD(v63);
            v15 = v64;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          v19 = *(v7 + 144);

          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 144) = v19;
          if (v46)
          {
LABEL_44:
            v48 = *(v19 + 2);
            v47 = *(v19 + 3);
            if (v48 >= v47 >> 1)
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v19);
            }

            *(v19 + 2) = v48 + 1;
            v49 = &v19[24 * v48];
            *(v49 + 4) = a1;
            *(v49 + 10) = a3;
            *(v49 + 11) = v16;
            *(v49 + 6) = v15;
            *(v7 + 144) = v19;
            swift_endAccess();

            goto LABEL_47;
          }

LABEL_56:
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          *(v7 + 144) = v19;
          goto LABEL_44;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v21 = &v18[24 * v19];
    if (*(v21 + 4) == a2)
    {
      v22 = *(v21 + 1);
      if (v22)
      {
        if (a1)
        {
          v60[0] = MEMORY[0x1E69E7CC0];

          v54 = compareLists(_:_:ignoredTypes:)(v22, a1, v60);

          if (v54)
          {
LABEL_15:
            v19 = v21 + 8;
            specialized AsyncTransaction.append<A>(_:)(a3, a4 & 0x101);
            LODWORD(v16) = *(v21 + 5);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_16;
            }

            goto LABEL_53;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_15;
      }
    }

    *(v7 + 144) = v18;
    swift_endAccess();
    if (!v15)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v7 + 192))(v17))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    (*(v24 + 32))(ObjectType, v24);
    swift_unknownObjectRelease();
  }

  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<Bool>);
  v27 = v26;
  v65 = v26;
  v66 = &protocol witness table for AssignmentGraphMutation<A>;
  v62 = a3;
  LOBYTE(v63) = a4 & 1;
  BYTE1(v63) = (a4 & 0x100) >> 8;
  swift_beginAccess();
  v54 = static AsyncTransaction.nextTraceID;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v62, v60);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = v28[2];
  v29 = v28[3];
  v31 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(&v62);
  v32 = v61;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v53 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = *v36;
  v39 = v36[8];
  v40 = v36[9];
  v58 = v27;
  v59 = &protocol witness table for AssignmentGraphMutation<A>;
  *&v57 = v38;
  BYTE8(v57) = v39;
  BYTE9(v57) = v40;
  v28[2] = v31;
  outlined init with take of AnyTrackedValue(&v57, &v28[5 * v30 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v60);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v41 = v55;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v31 = (v54 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v62) = v31;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v32 = *(v7 + 144);

    v42 = swift_isUniquelyReferenced_nonNull_native();
    *(v7 + 144) = v32;
    if (v42)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
  *(v7 + 144) = v32;
LABEL_39:
  v44 = *(v32 + 2);
  v43 = *(v32 + 3);
  if (v44 >= v43 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v32);
  }

  *(v32 + 2) = v44 + 1;
  v45 = &v32[24 * v44];
  *(v45 + 4) = a1;
  *(v45 + 10) = v41;
  *(v45 + 11) = v31;
  *(v45 + 6) = v28;
  *(v7 + 144) = v32;
  swift_endAccess();

  v14 = v56;
LABEL_50:
  _MovableLockUnlock(v14);
  return v31;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(__int128 *a1)
{
  v2 = v1;
  v3 = a1[2];
  v24 = a1[1];
  v25 = v3;
  v23 = *a1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  v10 = *(v9 + 16);
  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<EdgeInsets>);
  result = v10(&v23, v11, &protocol witness table for AssignmentGraphMutation<A>, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    v12 = v23;
    v13 = BYTE8(v23);
    v18 = v25;
    v19 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v15 = v4[2];
    v14 = v4[3];
    if (v15 >= v14 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v4);
    }

    type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<EdgeInsets>);
    v21 = v16;
    v22 = &protocol witness table for AssignmentGraphMutation<A>;
    v17 = swift_allocObject();
    *&v20 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v19;
    *(v17 + 48) = v18;
    v4[2] = v15 + 1;
    result = outlined init with take of AnyTrackedValue(&v20, &v4[5 * v15 + 4]);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v27 = *(a1 + 48);
  v3 = a1[2];
  v25 = a1[1];
  v26 = v3;
  v24 = *a1;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  v10 = *(v9 + 16);
  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<PlatformGlassInteractionState>);
  result = v10(&v24, v11, &protocol witness table for AssignmentGraphMutation<A>, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    v12 = v24;
    v13 = BYTE8(v24);
    v19 = v26;
    v20 = v25;
    v14 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
    }

    type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<PlatformGlassInteractionState>);
    v22 = v17;
    v23 = &protocol witness table for AssignmentGraphMutation<A>;
    v18 = swift_allocObject();
    *&v21 = v18;
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    *(v18 + 32) = v20;
    *(v18 + 48) = v19;
    *(v18 + 64) = v14;
    v4[2] = v16 + 1;
    result = outlined init with take of AnyTrackedValue(&v21, &v4[5 * v16 + 4]);
    *(v2 + 16) = v4;
  }

  return result;
}

{
  v2 = v1;
  v25 = *(a1 + 32);
  v3 = a1[1];
  v23 = *a1;
  v24 = v3;
  v4 = *(v1 + 16);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
  }

  if (v5 > v4[2])
  {
    __break(1u);
    return result;
  }

  v7 = &v4[5 * v5];
  v8 = v7[2];
  v9 = v7[3];
  __swift_mutable_project_boxed_opaque_existential_1((v7 - 1), v8);
  v10 = *(v9 + 16);
  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<ScrollPrefetchState>);
  result = v10(&v23, v11, &protocol witness table for AssignmentGraphMutation<A>, v8, v9);
  *(v2 + 16) = v4;
  if ((result & 1) == 0)
  {
LABEL_6:
    v12 = v23;
    v13 = BYTE8(v23);
    v14 = v24;
    v15 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v17 = v4[2];
    v16 = v4[3];
    if (v17 >= v16 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v4);
    }

    type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<ScrollPrefetchState>);
    v21 = v18;
    v22 = &protocol witness table for AssignmentGraphMutation<A>;
    v19 = swift_allocObject();
    *&v20 = v19;
    *(v19 + 16) = v12;
    *(v19 + 24) = v13;
    *(v19 + 32) = v14;
    *(v19 + 48) = v15;
    v4[2] = v17 + 1;
    result = outlined init with take of AnyTrackedValue(&v20, &v4[5 * v17 + 4]);
    *(v2 + 16) = v4;
  }

  return result;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2 & 1;
  v24 = a3;
  v5 = *(v3 + 16);
  v6 = v5[2];
  if (!v6)
  {
    v15 = a3;
    v14 = a2;
    v13 = a1;
    goto LABEL_8;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  if (v6 > v5[2])
  {
    __break(1u);
    return result;
  }

  v8 = &v5[5 * v6];
  v9 = v8[2];
  v10 = v8[3];
  __swift_mutable_project_boxed_opaque_existential_1((v8 - 1), v9);
  v11 = *(v10 + 16);
  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<Float>);
  result = v11(&v22, v12, &protocol witness table for AssignmentGraphMutation<A>, v9, v10);
  *(v3 + 16) = v5;
  if ((result & 1) == 0)
  {
    v13 = v22;
    v14 = v23;
    v15 = v24;
LABEL_8:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    }

    v17 = v5[2];
    v16 = v5[3];
    if (v17 >= v16 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
    }

    type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<Float>);
    v20 = v18;
    v21 = &protocol witness table for AssignmentGraphMutation<A>;
    *&v19 = v13;
    BYTE8(v19) = v14 & 1;
    *(&v19 + 3) = v15;
    v5[2] = v17 + 1;
    result = outlined init with take of AnyTrackedValue(&v19, &v5[5 * v17 + 4]);
    *(v4 + 16) = v5;
  }

  return result;
}

uint64_t specialized AsyncTransaction.append<A>(_:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v4 = (a2 >> 8) & 1;
  v21 = a1;
  v22 = a2 & 0x101;
  v5 = *(v2 + 16);
  v6 = v5[2];
  if (!v6)
  {
    v14 = a2;
    v13 = a1;
    goto LABEL_8;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  if (v6 > v5[2])
  {
    __break(1u);
    return result;
  }

  v8 = &v5[5 * v6];
  v9 = v8[2];
  v10 = v8[3];
  __swift_mutable_project_boxed_opaque_existential_1((v8 - 1), v9);
  v11 = *(v10 + 16);
  type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<Bool>);
  result = v11(&v21, v12, &protocol witness table for AssignmentGraphMutation<A>, v9, v10);
  *(v2 + 16) = v5;
  if ((result & 1) == 0)
  {
    v13 = v21;
    v14 = v22;
    LOBYTE(v4) = HIBYTE(v22);
LABEL_8:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
    }

    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
    }

    type metadata accessor for AssignmentGraphMutation<EdgeInsets>(0, &lazy cache variable for type metadata for AssignmentGraphMutation<Bool>);
    v19 = v17;
    v20 = &protocol witness table for AssignmentGraphMutation<A>;
    *&v18 = v13;
    BYTE8(v18) = v14 & 1;
    BYTE9(v18) = v4;
    v5[2] = v16 + 1;
    result = outlined init with take of AnyTrackedValue(&v18, &v5[5 * v16 + 4]);
    *(v3 + 16) = v5;
  }

  return result;
}

uint64_t outlined consume of AsyncTransaction?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void type metadata accessor for AssignmentGraphMutation<EdgeInsets>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for AssignmentGraphMutation();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TimerTimelineSchedule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t initializeWithCopy for TimerTimelineSchedule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for TimerTimelineSchedule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for TimerTimelineSchedule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for TimerTimelineSchedule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata completion function for TimerTimelineSchedule()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EverySecondEntries(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (v9(a2, 1, v7))
    {
      _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(a1, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = *(a3 + 20);
    if (v9((a2 + v12), 1, v7))
    {
      _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(a1 + v12, a2 + v12, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1 + v12, a2 + v12, v7);
      (*(v8 + 56))(a1 + v12, 0, 1, v7);
    }
  }

  return a1;
}

uint64_t destroy for EverySecondEntries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v9 = *(v4 - 8);
  v5 = *(v9 + 48);
  if (!v5(a1, 1, v4))
  {
    (*(v9 + 8))(a1, v4);
  }

  v6 = *(a2 + 20);
  result = (v5)(a1 + v6, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(a1 + v6, v4);
  }

  return result;
}

char *initializeWithCopy for EverySecondEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  return a1;
}

char *assignWithCopy for EverySecondEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 24))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 24))(&a1[v12], &a2[v12], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

char *initializeWithTake for EverySecondEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  if (v8(&a2[v10], 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v10], &a2[v10], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v10], &a2[v10], v6);
    (*(v7 + 56))(&a1[v10], 0, 1, v6);
  }

  return a1;
}

char *assignWithTake for EverySecondEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v10)
  {
    (*(v7 + 8))(a1, v6);
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 40))(a1, a2, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = v8(&a1[v12], 1, v6);
  v14 = v8(&a2[v12], 1, v6);
  if (!v13)
  {
    if (!v14)
    {
      (*(v7 + 40))(&a1[v12], &a2[v12], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v12], v6);
    goto LABEL_12;
  }

  if (v14)
  {
LABEL_12:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v12], &a2[v12], v6);
  (*(v7 + 56))(&a1[v12], 0, 1, v6);
  return a1;
}

void type metadata completion function for EverySecondEntries()
{
  _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TimerTimelineSchedule.ReducedFrequencyEntries(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 20);
    v12 = type metadata accessor for DateComponents();
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  }

  return a1;
}

uint64_t destroy for TimerTimelineSchedule.ReducedFrequencyEntries(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 20);
  v7 = type metadata accessor for DateComponents();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for TimerTimelineSchedule.ReducedFrequencyEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
  return a1;
}

char *assignWithCopy for TimerTimelineSchedule.ReducedFrequencyEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for DateComponents();
  (*(*(v13 - 8) + 24))(&a1[v12], &a2[v12], v13);
  return a1;
}

char *initializeWithTake for TimerTimelineSchedule.ReducedFrequencyEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 20);
  v10 = type metadata accessor for DateComponents();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  return a1;
}

char *assignWithTake for TimerTimelineSchedule.ReducedFrequencyEntries(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 20);
  v13 = type metadata accessor for DateComponents();
  (*(*(v13 - 8) + 40))(&a1[v12], &a2[v12], v13);
  return a1;
}

void type metadata completion function for TimerTimelineSchedule.ReducedFrequencyEntries()
{
  _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DateComponents();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TimerIntervalTimelineSchedule(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for TimerTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t initializeWithCopy for TimerIntervalTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for TimerIntervalTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for TimerIntervalTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for TimerIntervalTimelineSchedule(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t type metadata completion function for TimerIntervalTimelineSchedule()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnySequence<Date> and conformance AnySequence<A>()
{
  result = lazy protocol witness table cache variable for type AnySequence<Date> and conformance AnySequence<A>;
  if (!lazy protocol witness table cache variable for type AnySequence<Date> and conformance AnySequence<A>)
  {
    _s10Foundation4DateVSgMaTm_0(255, &lazy cache variable for type metadata for AnySequence<Date>, MEMORY[0x1E6969530], MEMORY[0x1E69E69E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySequence<Date> and conformance AnySequence<A>);
  }

  return result;
}

void *TimerIntervalTimelineSchedule.entries(from:mode:)(uint64_t a1, _BYTE *a2)
{
  v34 = a1;
  v3 = type metadata accessor for DateInterval();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for EverySecondEntries(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  v21 = type metadata accessor for TimerIntervalTimelineSchedule(0);
  if (a2)
  {
    v22 = v35;
    v23 = *(v35 + *(v21 + 20));
    (*(v12 + 16))(v17, v34, v11);
    if (v23 == 1)
    {
      DateInterval.end.getter();
      TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.init(start:end:)(v17, v14, v10);
      type metadata accessor for _SequenceBox<TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries>();
      v24 = swift_allocObject();
      v25 = type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries;
      v26 = v24 + *(*v24 + *MEMORY[0x1E69E6AD8] + 16);
      v27 = v10;
    }

    else
    {
      (*(v32 + 16))(v5, v22, v3);
      v30 = v33;
      TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.init(start:interval:)(v17, v5, v33);
      type metadata accessor for _SequenceBox<TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries>();
      v24 = swift_allocObject();
      v25 = type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries;
      v26 = v24 + *(*v24 + *MEMORY[0x1E69E6AD8] + 16);
      v27 = v30;
    }
  }

  else
  {
    (*(v12 + 16))(v17, v34, v11);
    v28 = *(v18 + 20);
    DateInterval.end.getter();
    v29 = *(v12 + 56);
    v29(&v20[v28], 0, 1, v11);
    v29(v20, 1, 1, v11);
    outlined destroy of Date?(v20);
    (*(v12 + 32))(v20, v17, v11);
    v29(v20, 0, 1, v11);
    type metadata accessor for _SequenceBox<EverySecondEntries>();
    v24 = swift_allocObject();
    v25 = type metadata accessor for EverySecondEntries;
    v26 = v24 + *(*v24 + *MEMORY[0x1E69E6AD8] + 16);
    v27 = v20;
  }

  outlined init with take of TimerTimelineSchedule.ReducedFrequencyEntries(v27, v26, v25);
  return v24;
}

uint64_t TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.init(start:end:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v92 = a1;
  v94 = a3;
  v75 = type metadata accessor for Calendar.SearchDirection();
  v69 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v67 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v79 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Calendar.MatchingPolicy();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v66 - v14;
  v15 = type metadata accessor for Date();
  v82 = *(v15 - 8);
  v16 = v82;
  v83 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateComponents();
  v93 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Calendar();
  v89 = *(v21 - 8);
  v90 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v16 + 56);
  v77 = v16 + 56;
  v76(a3, 1, 1, v15, v22);
  static Calendar.current.getter();
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v25 = *(v8 + 72);
  v81 = v8;
  v26 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18DDAB4C0;
  v28 = v27 + v26;
  v29 = *(v9 + 104);
  v30 = v27 + v26;
  v31 = v7;
  v29(v30, *MEMORY[0x1E6969A98], v7);
  v29(v28 + v25, *MEMORY[0x1E6969A00], v7);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v27);
  v32 = v87;
  Calendar.dateComponents(_:from:)();

  v33 = type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(0);
  v34 = v94;
  v35 = *(v93 + 16);
  v36 = v94 + *(v33 + 24);
  v88 = v20;
  v37 = v20;
  v91 = v18;
  v38 = v18;
  v39 = v82;
  v40 = v24;
  v35(v36, v37, v38);
  v80 = v33;
  v41 = v34 + *(v33 + 20);
  v42 = v32;
  v43 = v83;
  v70 = *(v39 + 16);
  v70(v41, v42, v83);
  v44 = v85;
  v45 = v31;
  v29(v85, *MEMORY[0x1E6969A88], v31);
  v46 = v84;
  v47 = v44;
  v48 = v40;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v81 + 8))(v47, v45);
  v49 = *(v39 + 48);
  if (v49(v46, 1, v43) != 1)
  {
    v53 = v86;
    (*(v39 + 32))(v86, v46, v43);
    goto LABEL_5;
  }

  v50 = v86;
  v70(v86, v42, v43);
  v51 = v49(v46, 1, v43);
  v52 = v50;
  if (v51 != 1)
  {
    v53 = v50;
    outlined destroy of Date?(v46);
LABEL_5:
    v52 = v53;
  }

  v54 = *(v39 + 32);
  v55 = v94;
  v54(v94 + *(v80 + 28), v52, v43);
  lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v56 = v92;
  v57 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v58 = v88;
  if (v57 & 1) != 0 || (Calendar.date(_:matchesComponents:)())
  {
    (*(v39 + 8))(v42, v43);
    (*(v93 + 8))(v58, v91);
    (*(v89 + 8))(v48, v90);
    outlined destroy of Date?(v55);
    v54(v55, v56, v43);
    return (v76)(v55, 0, 1, v43);
  }

  else
  {
    (*(v72 + 104))(v78, *MEMORY[0x1E69698D0], v73);
    v60 = v67;
    (*(v67 + 104))(v79, *MEMORY[0x1E69699C8], v74);
    v61 = *MEMORY[0x1E6969998];
    v62 = v69;
    v63 = *(v69 + 104);
    v66 = v48;
    v64 = v68;
    v63(v68, v61, v75);
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    v65 = *(v39 + 8);
    v65(v42, v43);
    v65(v56, v43);
    (*(v62 + 8))(v64, v75);
    (*(v60 + 8))(v79, v74);
    (*(v72 + 8))(v78, v73);
    (*(v93 + 8))(v58, v91);
    (*(v89 + 8))(v66, v90);
    return outlined assign with take of Date?(v71, v55);
  }
}

uint64_t TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.init(start:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v43 = type metadata accessor for Calendar.Component();
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v37 - v16;
  v17 = type metadata accessor for Calendar();
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(0);
  (*(v12 + 56))(a3 + *(v20 + 24), 1, 1, v11);
  v41 = v20;
  v21 = *(v12 + 16);
  v22 = a3 + *(v20 + 20);
  v48 = a1;
  v21(v22, a1, v11);
  v23 = type metadata accessor for DateInterval();
  v38 = *(v23 - 8);
  v39 = v23;
  v24 = *(v38 + 16);
  v47 = a3;
  v25 = a3;
  v26 = v40;
  v24(v25, v40);
  static Calendar.current.getter();
  v27 = v7;
  v28 = v7;
  v29 = v43;
  (*(v5 + 104))(v28, *MEMORY[0x1E6969A88], v43);
  DateInterval.start.getter();
  v44 = v19;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v37 = *(v12 + 8);
  v37(v14, v11);
  (*(v5 + 8))(v27, v29);
  v30 = *(v12 + 48);
  if (v30(v10, 1, v11) == 1)
  {
    v31 = v42;
    DateInterval.start.getter();
    v32 = v30(v10, 1, v11);
    v33 = v31;
    if (v32 != 1)
    {
      outlined destroy of Date?(v10);
      v33 = v31;
    }
  }

  else
  {
    v34 = v42;
    (*(v12 + 32))(v42, v10, v11);
    v33 = v34;
  }

  (*(v12 + 32))(v47 + *(v41 + 28), v33, v11);
  v35 = v48;
  TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.makeNext(current:)(v48);
  (*(v38 + 8))(v26, v39);
  v37(v35, v11);
  return (*(v45 + 8))(v44, v46);
}

void *protocol witness for TimelineSchedule.entries(from:mode:) in conformance TimerIntervalTimelineSchedule@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  result = TimerIntervalTimelineSchedule.entries(from:mode:)(a1, a2);
  *a3 = result;
  return result;
}

void *TimerTimelineSchedule.entries(from:mode:)(uint64_t a1, char *a2)
{
  v26 = a1;
  v3 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for EverySecondEntries(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(v7 + 16);
  v18(v12, v26, v6, v14);
  if (v17)
  {
    (v18)(v9, v25, v6);
    TimerTimelineSchedule.ReducedFrequencyEntries.init(start:alignment:)(v12, v9, v5);
    type metadata accessor for _SequenceBox<TimerTimelineSchedule.ReducedFrequencyEntries>();
    v19 = swift_allocObject();
    v20 = type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries;
    v21 = v19 + *(*v19 + *MEMORY[0x1E69E6AD8] + 16);
    v22 = v5;
  }

  else
  {
    v23 = *(v7 + 56);
    v23(&v16[*(v13 + 20)], 1, 1, v6);
    v23(v16, 1, 1, v6);
    outlined destroy of Date?(v16);
    (*(v7 + 32))(v16, v12, v6);
    v23(v16, 0, 1, v6);
    type metadata accessor for _SequenceBox<EverySecondEntries>();
    v19 = swift_allocObject();
    v20 = type metadata accessor for EverySecondEntries;
    v21 = v19 + *(*v19 + *MEMORY[0x1E69E6AD8] + 16);
    v22 = v16;
  }

  outlined init with take of TimerTimelineSchedule.ReducedFrequencyEntries(v22, v21, v20);
  return v19;
}

uint64_t TimerTimelineSchedule.ReducedFrequencyEntries.init(start:alignment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v52 = a1;
  v4 = type metadata accessor for Calendar.SearchDirection();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Calendar.MatchingPolicy();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v54 = &v39 - v10;
  v11 = type metadata accessor for DateComponents();
  v12 = *(v11 - 8);
  v40 = v11;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Calendar();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  (*(v18 + 56))(a3, 1, 1, v17);
  static Calendar.current.getter();
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_18DDAB4C0;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x1E6969A98], v19);
  v25(v24 + v21, *MEMORY[0x1E6969A00], v19);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v53;
  Calendar.dateComponents(_:from:)();

  v27 = *(type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0) + 20);
  v28 = *(v12 + 16);
  v42 = a3;
  v28(a3 + v27, v26, v11);
  (*(v56 + 104))(v55, *MEMORY[0x1E69698D0], v58);
  v30 = v47;
  v29 = v48;
  (*(v47 + 104))(v57, *MEMORY[0x1E69699C8], v48);
  v31 = v49;
  v32 = v50;
  v33 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x1E6969998], v51);
  v34 = v52;
  v35 = v31;
  Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
  v36 = v43;
  v37 = *(v44 + 8);
  v37(v59, v43);
  v37(v34, v36);
  (*(v32 + 8))(v35, v33);
  (*(v30 + 8))(v57, v29);
  (*(v56 + 8))(v55, v58);
  (*(v41 + 8))(v53, v40);
  (*(v45 + 8))(v16, v46);
  return outlined assign with take of Date?(v54, v42);
}

void *protocol witness for TimelineSchedule.entries(from:mode:) in conformance TimerTimelineSchedule@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  result = TimerTimelineSchedule.entries(from:mode:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t EverySecondEntries.next()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  outlined init with copy of Date?(v2, v11);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    outlined destroy of Date?(v11);
    return (*(v13 + 56))(a1, 1, 1, v12);
  }

  v28 = a1;
  v21 = v11;
  v22 = *(v13 + 32);
  v22(v18, v21, v12);
  v23 = type metadata accessor for EverySecondEntries(0);
  outlined init with copy of Date?(v2 + *(v23 + 20), v8);
  if (v19(v8, 1, v12) == 1)
  {
    outlined destroy of Date?(v8);
LABEL_7:
    v26 = v29;
    Date.addingTimeInterval(_:)();
    v25 = *(v13 + 56);
    v25(v26, 0, 1, v12);
    outlined assign with take of Date?(v26, v2);
    goto LABEL_8;
  }

  v22(v15, v8, v12);
  lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v24 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v13 + 8))(v15, v12);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  outlined destroy of Date?(v2);
  v25 = *(v13 + 56);
  v25(v2, 1, 1, v12);
LABEL_8:
  v27 = v28;
  v22(v28, v18, v12);
  return (v25)(v27, 0, 1, v12);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance EverySecondEntries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(v0, type metadata accessor for EverySecondEntries);
  return v1;
}

uint64_t TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Calendar.SearchDirection();
  v78 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v76 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.MatchingPolicy();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  outlined init with copy of Date?(v2, v21);
  v70 = *(v23 + 48);
  if (v70(v21, 1, v22) == 1)
  {
    outlined destroy of Date?(v21);
    return (*(v23 + 56))(a1, 1, 1, v22);
  }

  else
  {
    v64 = v4;
    v65 = v23;
    v29 = *(v23 + 32);
    v67 = v23 + 32;
    v68 = a1;
    v66 = v29;
    v29(v27, v21, v22);
    v30 = v2;
    v31 = type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(0);
    v32 = *(v31 + 28);
    lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    if (dispatch thunk of static Comparable.>= infix(_:_:)())
    {
      if (dispatch thunk of static Comparable.>= infix(_:_:)())
      {
        v33 = 1;
      }

      else
      {
        Date.addingTimeInterval(_:)();
        v33 = 0;
      }

      v53 = v68;
      v54 = *(v65 + 56);
      v54(v18, v33, 1, v22);
      outlined assign with take of Date?(v18, v30);
      v66(v53, v27, v22);
      return (v54)(v53, 0, 1, v22);
    }

    else
    {
      v61 = v32;
      v34 = v11;
      static Calendar.current.getter();
      v63 = *(v31 + 24);
      (*(v80 + 104))(v79, *MEMORY[0x1E69698D0], v81);
      v35 = *MEMORY[0x1E69699C8];
      v62 = v30;
      v37 = v75;
      v36 = v76;
      (*(v76 + 104))(v75, v35, v82);
      v38 = v77;
      v39 = v78;
      v40 = v64;
      (*(v78 + 104))(v77, *MEMORY[0x1E6969998], v64);
      v41 = v71;
      v63 = v27;
      v42 = v79;
      Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
      (*(v39 + 8))(v38, v40);
      (*(v36 + 8))(v37, v82);
      (*(v80 + 8))(v42, v81);
      v43 = v34;
      v44 = v41;
      (*(v73 + 8))(v43, v74);
      v45 = v41;
      v46 = v72;
      outlined init with copy of Date?(v45, v72);
      v47 = v70(v46, 1, v22);
      v48 = v62;
      if (v47 == 1)
      {
        outlined destroy of Date?(v44);
        outlined destroy of Date?(v46);
        outlined destroy of Date?(v48);
        v49 = 1;
        v50 = v68;
        v51 = v65;
        v52 = v66;
      }

      else
      {
        v55 = v69;
        v52 = v66;
        v66(v69, v46, v22);
        v56 = v61;
        v57 = static Date.> infix(_:_:)();
        outlined destroy of Date?(v44);
        v50 = v68;
        v51 = v65;
        if (v57)
        {
          (*(v65 + 8))(v55, v22);
          outlined destroy of Date?(v48);
          (*(v51 + 16))(v48, v48 + v56, v22);
        }

        else
        {
          outlined destroy of Date?(v48);
          v52(v48, v55, v22);
        }

        v49 = 0;
      }

      v58 = v63;
      v59 = *(v51 + 56);
      v59(v48, v49, 1, v22);
      v52(v50, v58, v22);
      return (v59)(v50, 0, 1, v22);
    }
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(v0, type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries);
  return v1;
}

uint64_t TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.makeNext(current:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Calendar.SearchDirection();
  v78 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Calendar.MatchingPolicy();
  v81 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v80 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v68 - v13;
  v14 = type metadata accessor for DateComponents();
  v88 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Calendar();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v93 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v79 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  v24 = type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(0);
  if (static Date.< infix(_:_:)())
  {
    Date.addingTimeInterval(_:)();
    (*(v9 + 56))(v23, 0, 1, v8);
    return outlined assign with take of Date?(v23, v2 + *(v24 + 24));
  }

  else
  {
    v76 = v24;
    v77 = v14;
    v71 = v11;
    static Calendar.current.getter();
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v26 = type metadata accessor for Calendar.Component();
    v27 = *(v26 - 8);
    v73 = v4;
    v28 = v9;
    v29 = v78;
    v30 = v27;
    v90 = v8;
    v74 = a1;
    v31 = v2;
    v32 = *(v27 + 72);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_18DDAB4C0;
    v35 = v34 + v33;
    v36 = *(v30 + 104);
    v36(v35, *MEMORY[0x1E6969A98], v26);
    v36(v35 + v32, *MEMORY[0x1E6969A00], v26);
    v72 = v28;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v34);
    v37 = v89;
    v75 = v31;
    DateInterval.start.getter();
    Calendar.dateComponents(_:from:)();

    v38 = *(v28 + 8);
    v70 = v28 + 8;
    v69 = v38;
    v38(v37, v90);
    v40 = v80;
    v39 = v81;
    (*(v81 + 104))(v80, *MEMORY[0x1E69698D0], v92);
    v41 = v82;
    v42 = v83;
    v43 = v87;
    (*(v83 + 104))(v82, *MEMORY[0x1E69699C8], v87);
    v44 = v29;
    v45 = *(v29 + 104);
    v46 = v85;
    v47 = v73;
    v45(v85, *MEMORY[0x1E6969998], v73);
    v48 = v91;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    v49 = *(v44 + 8);
    v50 = v72;
    v49(v46, v47);
    (*(v42 + 8))(v41, v43);
    (*(v39 + 8))(v40, v92);
    v51 = v90;
    v52 = v79;
    outlined init with copy of Date?(v48, v79);
    if ((*(v50 + 48))(v52, 1, v51) == 1)
    {
      outlined destroy of Date?(v91);
      (*(v88 + 8))(v94, v77);
      (*(v84 + 8))(v93, v86);
      outlined destroy of Date?(v52);
      v53 = v75;
      v54 = *(v76 + 24);
      outlined destroy of Date?(v75 + v54);
      return (*(v50 + 56))(v53 + v54, 1, 1, v51);
    }

    else
    {
      v55 = v50 + 32;
      v56 = *(v50 + 32);
      v57 = v71;
      v56(v71, v52, v51);
      v58 = v89;
      v59 = v75;
      DateInterval.end.getter();
      lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v60 = dispatch thunk of static Comparable.<= infix(_:_:)();
      v61 = v69;
      v69(v58, v51);
      outlined destroy of Date?(v91);
      (*(v88 + 8))(v94, v77);
      (*(v84 + 8))(v93, v86);
      v62 = (v55 + 24);
      v63 = v76;
      if (v60)
      {
        v64 = *(v76 + 24);
        outlined destroy of Date?(v59 + v64);
        v65 = v90;
        v56((v59 + v64), v57, v90);
        return (*v62)(v59 + v64, 0, 1, v65);
      }

      else
      {
        v66 = v90;
        v61(v57, v90);
        v67 = *(v63 + 24);
        outlined destroy of Date?(v59 + v67);
        return (*v62)(v59 + v67, 1, 1, v66);
      }
    }
  }
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(v0, type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries);
  return v1;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  outlined init with copy of Date?(v2 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Date?(v7);
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    outlined init with copy of Date?(v2 + v12, a2);
    TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries.makeNext(current:)(v11);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t TimerTimelineSchedule.ReducedFrequencyEntries.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v40 = type metadata accessor for Calendar.SearchDirection();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.MatchingPolicy();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  outlined init with copy of Date?(v2, &v32 - v17);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of Date?(v18);
    v21 = 1;
  }

  else
  {
    v22 = *(v20 + 32);
    v35 = v2;
    v33 = v13;
    v22();
    static Calendar.current.getter();
    v32 = *(type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(0) + 20);
    v23 = *MEMORY[0x1E69698D0];
    v24 = v8;
    v25 = *(v8 + 104);
    v34 = v7;
    v25(v10, v23, v7);
    v26 = v4;
    (*(v4 + 104))(v6, *MEMORY[0x1E69699C8], v42);
    v27 = v38;
    v28 = v39;
    v29 = v40;
    (*(v38 + 104))(v39, *MEMORY[0x1E6969998], v40);
    v30 = v33;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*(v27 + 8))(v28, v29);
    (*(v26 + 8))(v6, v42);
    (*(v24 + 8))(v10, v34);
    (*(v36 + 8))(v30, v37);
    outlined assign with take of Date?(v41, v35);
    v21 = 0;
  }

  return (*(v20 + 56))(v43, v21, 1, v19);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance TimerTimelineSchedule.ReducedFrequencyEntries()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(v0, type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries);
  return v1;
}

uint64_t lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of TimerTimelineSchedule.ReducedFrequencyEntries(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _SequenceBox<TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries>)
  {
    type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(255);
    lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries, type metadata accessor for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries>);
    }
  }
}

void type metadata accessor for _SequenceBox<TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries>)
  {
    type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(255);
    lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries, type metadata accessor for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries>);
    }
  }
}

void type metadata accessor for _SequenceBox<EverySecondEntries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<EverySecondEntries>)
  {
    type metadata accessor for EverySecondEntries(255);
    lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type EverySecondEntries and conformance EverySecondEntries, type metadata accessor for EverySecondEntries);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<EverySecondEntries>);
    }
  }
}

void type metadata accessor for _SequenceBox<TimerTimelineSchedule.ReducedFrequencyEntries>()
{
  if (!lazy cache variable for type metadata for _SequenceBox<TimerTimelineSchedule.ReducedFrequencyEntries>)
  {
    type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries(255);
    lazy protocol witness table accessor for type TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries and conformance TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(&lazy protocol witness table cache variable for type TimerTimelineSchedule.ReducedFrequencyEntries and conformance TimerTimelineSchedule.ReducedFrequencyEntries, type metadata accessor for TimerTimelineSchedule.ReducedFrequencyEntries);
    v0 = type metadata accessor for _SequenceBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SequenceBox<TimerTimelineSchedule.ReducedFrequencyEntries>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
      v10 = *(v8 + 16);
    }

    else
    {
      v10 = *(v8 + 16);
      v10(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v10((a1 + a3[5]), (a2 + a3[5]), v7);
    v12 = a3[6];
    v13 = type metadata accessor for DateComponents();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
    v10((a1 + a3[7]), (a2 + a3[7]), v7);
  }

  return a1;
}

uint64_t destroy for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Date();
  v11 = *(v4 - 8);
  v5 = (*(v11 + 48))(a1, 1, v4);
  v10 = *(v11 + 8);
  if (!v5)
  {
    v10(a1, v4);
  }

  v10(a1 + a2[5], v4);
  v6 = a2[6];
  v7 = type metadata accessor for DateComponents();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = a1 + a2[7];

  return (v10)(v8, v4);
}

char *initializeWithCopy for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    v9 = *(v7 + 16);
  }

  else
  {
    v9 = *(v7 + 16);
    v9(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9(&a1[a3[5]], &a2[a3[5]], v6);
  v10 = a3[6];
  v11 = type metadata accessor for DateComponents();
  (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
  v9(&a1[a3[7]], &a2[a3[7]], v6);
  return a1;
}

char *assignWithCopy for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(v7 + 24);
  v12(&a1[a3[5]], &a2[a3[5]], v6);
  v13 = a3[6];
  v14 = type metadata accessor for DateComponents();
  (*(*(v14 - 8) + 24))(&a1[v13], &a2[v13], v14);
  v12(&a1[a3[7]], &a2[a3[7]], v6);
  return a1;
}

char *initializeWithTake for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    v9 = *(v7 + 32);
  }

  else
  {
    v9 = *(v7 + 32);
    v9(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9(&a1[a3[5]], &a2[a3[5]], v6);
  v10 = a3[6];
  v11 = type metadata accessor for DateComponents();
  (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
  v9(&a1[a3[7]], &a2[a3[7]], v6);
  return a1;
}

char *assignWithTake for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(v7 + 40);
  v12(&a1[a3[5]], &a2[a3[5]], v6);
  v13 = a3[6];
  v14 = type metadata accessor for DateComponents();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  v12(&a1[a3[7]], &a2[a3[7]], v6);
  return a1;
}

void type metadata completion function for TimerIntervalTimelineSchedule.CountdownReducedFrequencyEntries()
{
  _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DateComponents();
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(char *a1, char *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for DateInterval();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = type metadata accessor for Date();
    v10 = *(v9 - 8);
    v11 = *(v10 + 16);
    v11(&a1[v8], &a2[v8], v9);
    v12 = a3[6];
    if ((*(v10 + 48))(&a2[v12], 1, v9))
    {
      _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      memcpy(&a1[v12], &a2[v12], *(*(v13 - 8) + 64));
    }

    else
    {
      v11(&a1[v12], &a2[v12], v9);
      (*(v10 + 56))(&a1[v12], 0, 1, v9);
    }

    v11(&a1[a3[7]], &a2[a3[7]], v9);
  }

  return a1;
}

uint64_t destroy for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a2[5];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v11 = *(v7 + 8);
  v11(a1 + v5, v6);
  v8 = a2[6];
  if (!(*(v7 + 48))(a1 + v8, 1, v6))
  {
    v11(a1 + v8, v6);
  }

  v9 = a1 + a2[7];

  return (v11)(v9, v6);
}

uint64_t initializeWithCopy for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(a1 + v7, a2 + v7, v8);
  v11 = a3[6];
  if ((*(v9 + 48))(a2 + v11, 1, v8))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v11), (a2 + v11), *(*(v12 - 8) + 64));
  }

  else
  {
    v10(a1 + v11, a2 + v11, v8);
    (*(v9 + 56))(a1 + v11, 0, 1, v8);
  }

  v10(a1 + a3[7], a2 + a3[7], v8);
  return a1;
}

uint64_t assignWithCopy for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v16 = *(v9 + 24);
  v16(a1 + v7, a2 + v7, v8);
  v10 = a3[6];
  v11 = *(v9 + 48);
  LODWORD(v7) = v11(a1 + v10, 1, v8);
  v12 = v11(a2 + v10, 1, v8);
  if (!v7)
  {
    if (!v12)
    {
      v14 = v16;
      v16(a1 + v10, a2 + v10, v8);
      goto LABEL_8;
    }

    (*(v9 + 8))(a1 + v10, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 16))(a1 + v10, a2 + v10, v8);
  (*(v9 + 56))(a1 + v10, 0, 1, v8);
LABEL_7:
  v14 = v16;
LABEL_8:
  v14(a1 + a3[7], a2 + a3[7], v8);
  return a1;
}

uint64_t initializeWithTake for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 32);
  v10(a1 + v7, a2 + v7, v8);
  v11 = a3[6];
  if ((*(v9 + 48))(a2 + v11, 1, v8))
  {
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v11), (a2 + v11), *(*(v12 - 8) + 64));
  }

  else
  {
    v10(a1 + v11, a2 + v11, v8);
    (*(v9 + 56))(a1 + v11, 0, 1, v8);
  }

  v10(a1 + a3[7], a2 + a3[7], v8);
  return a1;
}

uint64_t assignWithTake for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DateInterval();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v16 = *(v9 + 40);
  v16(a1 + v7, a2 + v7, v8);
  v10 = a3[6];
  v11 = *(v9 + 48);
  LODWORD(v7) = v11(a1 + v10, 1, v8);
  v12 = v11(a2 + v10, 1, v8);
  if (!v7)
  {
    if (!v12)
    {
      v14 = v16;
      v16(a1 + v10, a2 + v10, v8);
      goto LABEL_8;
    }

    (*(v9 + 8))(a1 + v10, v8);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    memcpy((a1 + v10), (a2 + v10), *(*(v13 - 8) + 64));
    goto LABEL_7;
  }

  (*(v9 + 32))(a1 + v10, a2 + v10, v8);
  (*(v9 + 56))(a1 + v10, 0, 1, v8);
LABEL_7:
  v14 = v16;
LABEL_8:
  v14(a1 + a3[7], a2 + a3[7], v8);
  return a1;
}

void type metadata completion function for TimerIntervalTimelineSchedule.CountupReducedFrequencyEntries()
{
  type metadata accessor for DateInterval();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      _s10Foundation4DateVSgMaTm_0(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void Image.Resolved.image.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *a1;
    v3 = *(*a1 + 186);
    v4 = *(*a1 + 8);
    if (v4 == 255)
    {
      v12 = 0;
    }

    else
    {
      if (v4 == 2)
      {
        v5 = *(*v2 + 32);
        v6 = *(*v2 + 48);
        v7 = *(*v2 + 16);
        outlined copy of Image.Location(v5);
        v8 = v6;
        outlined copy of Image.Location(v5);
        v16 = v5;
        _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v7 styleMask], &v16, &v13);

        outlined consume of Image.Location(v5);
        v9 = v13;
        LOWORD(v8) = v14;
        v10 = v15;

        *(v2 + 176) = v9;
        *(v2 + 184) = v8;
        if ((v3 & 2) != 0)
        {
LABEL_5:
          v11 = v10 | 2;
LABEL_10:
          *(v2 + 186) = v11;
          return;
        }

LABEL_9:
        v11 = v10 & 0xFD;
        goto LABEL_10;
      }

      v12 = *(v2 + 64) ^ 1;
    }

    v10 = 0;
    *(v2 + 176) = 0;
    *(v2 + 184) = v12;
    if ((v3 & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }
}

void Image.LayoutMetrics.init(baselineOffset:capHeight:contentSize:alignmentOrigin:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t Image.Resolved.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 12) = *(v1 + 92);
  v4 = *(v14 + 12);
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 92) = v4;
  return outlined init with copy of GraphicsImage(v10, &v9);
}

void Image.Resolved.image.setter(uint64_t a1)
{
  v3 = *(a1 + 64);
  v4 = *(v1 + 80);
  v23[4] = *(v1 + 64);
  v24[0] = v4;
  *(v24 + 12) = *(v1 + 92);
  v5 = *(v1 + 16);
  v23[0] = *v1;
  v23[1] = v5;
  v6 = *(v1 + 48);
  v23[2] = *(v1 + 32);
  v23[3] = v6;
  outlined destroy of GraphicsImage(v23);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  v8 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v8;
  *(v1 + 64) = v3;
  *(v1 + 65) = *(a1 + 65);
  *(v1 + 81) = *(a1 + 81);
  *(v1 + 92) = *(a1 + 92);
  v9 = *(v1 + 186);
  v10 = *(v1 + 8);
  if (v10 == 255)
  {
    v18 = 0;
    goto LABEL_7;
  }

  if (v10 != 2)
  {
    v18 = (v3 & 1) == 0;
LABEL_7:

    v16 = 0;
    *(v1 + 176) = 0;
    *(v1 + 184) = v18;
    if ((v9 & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v17 = v16 & 0xFD;
    goto LABEL_9;
  }

  v11 = *(*v1 + 32);
  v12 = *(*v1 + 48);
  v13 = *(*v1 + 16);
  outlined copy of Image.Location(v11);
  v14 = v12;
  outlined copy of Image.Location(v11);
  v19 = v11;
  _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v13 styleMask], &v19, &v20);

  outlined consume of Image.Location(v11);
  v15 = v20;
  LOWORD(v14) = v21;
  v16 = v22;

  *(v1 + 176) = v15;
  *(v1 + 184) = v14;
  if ((v9 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v17 = v16 | 2;
LABEL_9:
  *(v1 + 186) = v17;
}

uint64_t Image.Resolved.label.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return outlined copy of AccessibilityImageLabel?(v2, v3, v4);
}

__n128 Image.Resolved.label.setter(uint64_t a1)
{
  outlined consume of AccessibilityImageLabel?(v1[14], v1[15], v1[16]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 7) = *a1;
  *(v1 + 8) = v4;
  return result;
}

uint64_t Image.Resolved.basePlatformItemImage.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 144) = a1;
  return result;
}

_OWORD *property wrapper backing initializer of Image.Resolved.layoutMetrics@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 64))
  {
    result = 0;
  }

  else
  {
    result = swift_allocObject();
    v5 = *(a1 + 16);
    result[1] = *a1;
    result[2] = v5;
    v6 = *(a1 + 48);
    result[3] = *(a1 + 32);
    result[4] = v6;
  }

  *a2 = result;
  return result;
}

void Image.Resolved.layoutMetrics.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = 0;
    v4 = v2[2];
    *a1 = v2[1];
    *(a1 + 16) = v4;
    v5 = v2[4];
    *(a1 + 32) = v2[3];
    *(a1 + 48) = v5;
  }

  else
  {
    v3 = 1;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
  }

  *(a1 + 64) = v3;
}

uint64_t key path getter for Image.Resolved.layoutMetrics : Image.Resolved@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 152);
  if (v2)
  {
    v3 = 0;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[4];
  }

  else
  {
    v3 = 1;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v3;
  return result;
}

_OWORD *key path setter for Image.Resolved.layoutMetrics : Image.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);

  if (v4)
  {
    result = 0;
  }

  else
  {
    result = swift_allocObject();
    v6 = *(a1 + 16);
    result[1] = *a1;
    result[2] = v6;
    v7 = *(a1 + 48);
    result[3] = *(a1 + 32);
    result[4] = v7;
  }

  *(a2 + 152) = result;
  return result;
}

_OWORD *Image.Resolved.layoutMetrics.setter(uint64_t a1)
{
  v3 = *(a1 + 64);

  if (v3)
  {
    result = 0;
  }

  else
  {
    result = swift_allocObject();
    v5 = *(a1 + 16);
    result[1] = *a1;
    result[2] = v5;
    v6 = *(a1 + 48);
    result[3] = *(a1 + 32);
    result[4] = v6;
  }

  *(v1 + 152) = result;
  return result;
}

void (*Image.Resolved.layoutMetrics.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  v4 = *(v1 + 152);
  if (v4)
  {
    v5 = 0;
    v6 = v4[4];
    v8 = v4[1];
    v7 = v4[2];
    *(v3 + 32) = v4[3];
    *(v3 + 48) = v6;
    *v3 = v8;
    *(v3 + 16) = v7;
  }

  else
  {
    v5 = 1;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0u;
  }

  *(v3 + 64) = v5;
  return Image.Resolved.layoutMetrics.modify;
}

void Image.Resolved.layoutMetrics.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v7 = v2[1];
    v14[0] = *v2;
    v14[1] = v7;
    v8 = v2[3];
    v14[2] = v2[2];
    v14[3] = v8;
    v9 = *(v2 + 64);

    if ((v9 & 1) == 0)
    {
      v6 = v14;
      goto LABEL_7;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  v3 = v2[1];
  v13[0] = *v2;
  v13[1] = v3;
  v4 = v2[3];
  v13[2] = v2[2];
  v13[3] = v4;
  v5 = *(v2 + 64);

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = v13;
LABEL_7:
  v10 = swift_allocObject();
  v11 = v6[1];
  v10[1] = *v6;
  v10[2] = v11;
  v12 = v6[3];
  v10[3] = v6[2];
  v10[4] = v12;
LABEL_8:
  *(*(v2 + 9) + 152) = v10;

  free(v2);
}

uint64_t Image.Resolved.backgroundCornerRadius.setter(uint64_t result)
{
  *(v1 + 164) = result;
  *(v1 + 168) = BYTE4(result) & 1;
  return result;
}

id Image.Resolved.styleResolverMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 186);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 10) = v4;
  return v2;
}

void Image.Resolved.styleResolverMode.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);

  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
  *(v1 + 186) = v4;
}

double Image.Resolved.size.getter()
{
  v1 = *(v0 + 16);
  result = 0.0;
  if (v1 != 0.0)
  {
    v3 = *(v0 + 24);
    if (*(v0 + 40) > 3u)
    {
      v3 = *(v0 + 32);
    }

    return 1.0 / v1 * v3;
  }

  return result;
}

double Image.Resolved.baselineOffset.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0.0;
  }
}

double Image.Resolved.capHeight.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    return *(v1 + 24);
  }

  v3 = *(v0 + 16);
  result = 0.0;
  if (v3 != 0.0)
  {
    v4 = *(v0 + 24);
    if (*(v0 + 40) <= 3u)
    {
      v4 = *(v0 + 32);
    }

    return 1.0 / v3 * v4;
  }

  return result;
}

double Image.Resolved.contentSize.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    return *(v1 + 32);
  }

  v3 = *(v0 + 16);
  result = 0.0;
  if (v3 != 0.0)
  {
    v4 = *(v0 + 24);
    if (*(v0 + 40) > 3u)
    {
      v4 = *(v0 + 32);
    }

    return 1.0 / v3 * v4;
  }

  return result;
}

double Image.Resolved.alignmentOrigin.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0.0;
  }
}

__n128 Image.Resolved.foregroundColor(_:)@<Q0>(void (*a1)(void *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = v2[9];
  v45 = v2[8];
  v46 = v5;
  *v47 = v2[10];
  *&v47[11] = *(v2 + 171);
  v6 = v2[5];
  v41 = v2[4];
  v42 = v6;
  v7 = v2[7];
  v43 = v2[6];
  v44 = v7;
  v8 = v2[1];
  v39[0] = *v2;
  v39[1] = v8;
  v9 = v2[3];
  *v40 = v2[2];
  *&v40[16] = v9;
  v10 = *&v39[0];
  v11 = BYTE8(v39[0]);
  v12 = *&v40[12];
  v13 = v9 >> 32;
  v38 = v41;
  v14 = *&v47[16];
  v15 = v47[26];
  if ((v41 & 1) == 0)
  {
    v18 = outlined init with copy of Image.Resolved(v39, v36);
    a1(v36, v18);
    v12 = v36[0];
    v13 = v36[1];
    v38 = 0;
    v30 = v10;
    v31 = v37;
    if (v11 == 255)
    {
      v16 = 0;
    }

    else
    {
      if (v11 == 2)
      {
        v19 = v10[2];
        v20 = v10[4];
        v21 = v10[6];
        v22 = v19;
        outlined copy of Image.Location(v20);
        v23 = v21;
        outlined copy of Image.Location(v20);
        v32 = v20;
        _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v22 styleMask], &v32, &v33);

        outlined consume of Image.Location(v20);
        v24 = v33;
        v16 = v34;
        v25 = v35;

        if ((v15 & 2) != 0)
        {
LABEL_6:
          v15 = v25 | 2;
LABEL_11:
          v14 = v24;
          v10 = v30;
          goto LABEL_12;
        }

LABEL_10:
        v15 = v25 & 0xFD;
        goto LABEL_11;
      }

      v16 = 1;
    }

    v24 = 0;
    v25 = 0;
    if ((v15 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v31 = HIDWORD(v9);
  v16 = *&v47[24];
  outlined init with copy of Image.Resolved(v39, v36);
LABEL_12:
  v26 = v38;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 9) = *(v3 + 9);
  *(a2 + 25) = *(v3 + 25);
  *(a2 + 40) = *(v3 + 10);
  *(a2 + 44) = v12;
  *(a2 + 52) = v13;
  *(a2 + 60) = v31;
  *(a2 + 64) = v26;
  *(a2 + 65) = *(v3 + 65);
  *(a2 + 81) = *(v3 + 81);
  *(a2 + 97) = *(v3 + 97);
  result = *(v3 + 113);
  v28 = *(v3 + 129);
  v29 = *(v3 + 145);
  *(a2 + 160) = v3[10];
  *(a2 + 145) = v29;
  *(a2 + 129) = v28;
  *(a2 + 113) = result;
  *(a2 + 176) = v14;
  *(a2 + 184) = v16;
  *(a2 + 186) = v15;
  return result;
}

uint64_t Image.NamedResolved.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Image.NamedResolved.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id Image.NamedResolved.location.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return outlined copy of Image.Location(v2);
}

void Image.NamedResolved.location.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of Image.Location(*(v1 + 16));
  *(v1 + 16) = v2;
}

uint64_t Image.NamedResolved.value.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t Image.NamedResolved.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t Image.NamedResolved.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

__C::CGRect __swiftcall Image.Resolved.frame(in:)(CGSize in)
{
  height = in.height;
  width = in.width;
  v4 = 0.0;
  v5 = 0.0;
  if (*(v1 + 104) == 2)
  {
    v6 = *(v1 + 16);
    v7 = *(v1 + 152);
    width = 0.0;
    if (v7)
    {
      v4 = *(v7 + 48);
      v5 = *(v7 + 56);
    }

    if (v6 == 0.0)
    {
      height = 0.0;
    }

    else
    {
      v8 = *(v1 + 24);
      if (*(v1 + 40) <= 3u)
      {
        v9 = *(v1 + 32);
      }

      else
      {
        v9 = *(v1 + 24);
      }

      if (*(v1 + 40) > 3u)
      {
        v8 = *(v1 + 32);
      }

      v10 = 1.0 / v6;
      width = v10 * v8;
      height = v10 * v9;
    }
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

double Image.Resolved.shape(in:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  *v15 = *(v1 + 32);
  *&v15[16] = v2;
  *&v16[28] = *(v1 + 92);
  v3 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v3;
  v4 = *(v1 + 80);
  *v16 = *(v1 + 64);
  *&v16[16] = v4;
  v5 = *(v1 + 152);
  v6 = *v15;
  v7 = *&v15[24];
  v8 = v16[40];
  v9 = *v16 & 0xFFFFFFFFC000FFFFLL;
  v10 = *&v16[40] & 0x30301FF | 0x60000000;
  *a1 = v14[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v6;
  *(a1 + 40) = *&v15[8];
  *(a1 + 56) = v7;
  *(a1 + 64) = v9;
  *(a1 + 72) = *&v16[8];
  *(a1 + 88) = *&v16[24];
  v11 = 0.0;
  *(a1 + 104) = v10;
  if (v8 == 2 && v5)
  {
    v11 = *(v5 + 48);
  }

  outlined init with copy of GraphicsImage(v14, &v13);
  return v11;
}

double Image.Resolved.backgroundShape(in:)(uint64_t a1, double a2, double a3)
{
  v5 = *(v3 + 152);
  if (*(v3 + 161) == 3 || v5 == 0)
  {
    *(a1 + 96) = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    v10 = -1610612736;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v7 = *(v3 + 164);
    v8 = v5[8] * (a2 / v5[4]);
    v9 = v5[9] * (a3 / v5[5]);
    LOBYTE(v14[0]) = *(v3 + 168);
    SymbolVariants.Shape.path(in:cornerRadius:)(v7 | (LOBYTE(v14[0]) << 32), v14, 0.0, 0.0, v8, v9);
    v10 = 0;
    v11 = v15;
    v12 = v14[1];
    *a1 = v14[0];
    *(a1 + 16) = v12;
    *(a1 + 32) = v11 | 0x10000;
    *(a1 + 64) = 0;
  }

  *(a1 + 104) = v10;
  return 0.0;
}

BOOL Image.Resolved.isClear(styles:)(uint64_t *a1)
{
  v2 = *a1;
  if (v1[8] == 2)
  {
    v3 = *(*v1 + 16);
    v4 = *(*v1 + 24);
    v5 = *(*v1 + 32);
    v6 = *(*v1 + 40);
    v7 = *(*v1 + 44);
    v8 = *(*v1 + 45);
    v9 = *(*v1 + 48);
    v12 = *a1;
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    if (!ResolvedVectorGlyph.isClear(styles:)(&v12))
    {
      return 0;
    }
  }

  else
  {
    if (v1[64])
    {
      return 0;
    }

    v13 = *a1;
    LOBYTE(v12) = 0;
    if (!_ShapeStyle_Pack.isClear(name:)(&v12))
    {
      return 0;
    }
  }

  v13 = v2;
  LOBYTE(v12) = 1;
  return _ShapeStyle_Pack.isClear(name:)(&v12);
}

uint64_t _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_C3SetV7WrapperV_Tt5B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 48);
    v62 = *(a2 + 32);
    v63 = v13;
    v64 = *(a2 + 64);
    v65 = *(a2 + 80);
    v14 = *(a2 + 16);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 48);
    v62 = *(a2 + 32);
    v63 = v16;
    v64 = *(a2 + 64);
    v65 = *(a2 + 80);
    v17 = *(a2 + 16);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 60);
    v50 = *(a2 + 68);
    v51 = *(a2 + 76);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper, type metadata accessor for ShapeStyledDisplayList);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeSet.Wrapper> and conformance ShapeStyledDisplayList<A>();
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of InterpolatedDisplayList<Image.Resolved>(&v60, &lazy cache variable for type metadata for ShapeStyledDisplayList<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper, type metadata accessor for ShapeStyledDisplayList);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 16);
    v62 = *(a2 + 32);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 80);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 48);
    v62 = *(a2 + 32);
    v63 = v28;
    v64 = *(a2 + 64);
    v65 = *(a2 + 80);
    v29 = *(a2 + 16);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 60);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<Image.Resolved>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeSet.Wrapper>>, &lazy cache variable for type metadata for ShapeStyledResponderData<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0;
    *(v32 + 128) = v8;
    *(v32 + 24) = 0;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ShapeStyledResponderFilter<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper, type metadata accessor for ShapeStyledResponderFilter);
        lazy protocol witness table accessor for type ShapeStyledResponderFilter<_ShapeSet.Wrapper> and conformance ShapeStyledResponderFilter<A>();
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 64);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for LeafLayoutComputer<Image.Resolved>(0, &lazy cache variable for type metadata for ContentResponderPathDataRule<_ShapeSet.Wrapper>, &type metadata for _ShapeSet.Wrapper, &protocol witness table for _ShapeSet.Wrapper, type metadata accessor for ContentResponderPathDataRule);
    lazy protocol witness table accessor for type ContentResponderPathDataRule<_ShapeSet.Wrapper> and conformance ContentResponderPathDataRule<A>();
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  v46 = a5;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  result = AGWeakAttributeGetAttribute();
  if (result != v53)
  {
    v59[0] = v9;
    v47 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    v47(&v60, 0);
    a5 = v46;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}