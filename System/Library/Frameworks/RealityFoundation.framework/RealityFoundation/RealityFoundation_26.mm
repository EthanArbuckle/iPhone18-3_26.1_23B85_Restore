uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v162 = a5;
            v13 = *a2;
            v12 = *(a2 + 8);
            v15 = *(a2 + 24);
            v14 = *(a2 + 32);
            v16 = *(a2 + 40);
            v5.i32[0] = *(a2 + 56);
            v157 = *(a2 + 64);
            v159 = *(a2 + 48);
            v154 = *(a2 + 72);
            v17 = *(a2 + 88);
            v6 = *(a2 + 96);
            v152 = *(a2 + 104);
            v161 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v18 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v162 = a5;
        v49 = *a2;
        v48 = *(a2 + 8);
        v51 = *(a2 + 24);
        v50 = *(a2 + 32);
        v52 = *(a2 + 40);
        v53 = *(a2 + 64);
        v54 = *(a2 + 72);
        v153 = *(a2 + 80);
        v156 = *(a2 + 56);
        v158 = *(a2 + 88);
        v160 = *(a2 + 96);
        v161 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v55 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v72 = specialized static Entity.entityInfoType(_:)();
          if (v72)
          {
            v56 = (*(v72 + 232))();
            v73 = *(v56 + 16);

            MEMORY[0x1C68F9740](v73, 0);
            *(v56 + 16) = v49;
            MEMORY[0x1C68F9740](v49, v56);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v74 = swift_allocObject();
            *(v74 + 40) = 0;
            swift_weakInit();
            *(v74 + 16) = v48;
            swift_weakAssign();
            v75 = *(v56 + 16);

            *(v74 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v56 + 16));
            v76 = Hasher._finalize()();

            *(v74 + 24) = v76;
            v77 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v50, 0, v52, v77, v78, &v181);

            if (!v53)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v80 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v53 = v80;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              v131 = specialized static Entity.entityInfoType(_:)();
              if (!v131)
              {
                v80 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v53 = (*(v131 + 232))();
              v132 = *(v53 + 16);

              MEMORY[0x1C68F9740](v132, 0);
              *(v53 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v53);
            }

            else
            {
              v53 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v178);
            v133 = v179;
            if (v179 != -1)
            {
              *&v163[8] = v178;
              v163[24] = v179 & 1;
              v163[25] = v180 & 1;
              v163[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
              *v163 = v74;
              *&v164 = v53;
              BYTE8(v164) = v153;
              v165 = vcvtq_f64_f32(v54);
              *&v166 = v11;
              *(&v166 + 1) = v156;
              *&v167 = 0xBFF0000000000000;
              BYTE8(v167) = 0;
LABEL_139:
              v139 = v158;
              v136 = v160;
              goto LABEL_140;
            }

            goto LABEL_137;
          }

          v55 = makeEntity(for:)(v49);
LABEL_32:
          v56 = v55;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_168;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v162 = a5;
        v35 = *a2;
        v34 = *(a2 + 8);
        v37 = *(a2 + 24);
        v36 = *(a2 + 32);
        v38 = *(a2 + 40);
        v39 = *(a2 + 56);
        v40 = *(a2 + 64);
        v155 = *(a2 + 72);
        v158 = *(a2 + 80);
        v160 = *(a2 + 88);
        v161 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v41 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v117 = specialized static Entity.entityInfoType(_:)();
          if (v117)
          {
            v42 = (*(v117 + 232))();
            v118 = *(v42 + 16);

            MEMORY[0x1C68F9740](v118, 0);
            *(v42 + 16) = v35;
            MEMORY[0x1C68F9740](v35, v42);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v119 = swift_allocObject();
            *(v119 + 40) = 0;
            swift_weakInit();
            *(v119 + 16) = v34;
            swift_weakAssign();
            v120 = *(v42 + 16);

            *(v119 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v42 + 16));
            v121 = Hasher._finalize()();

            *(v119 + 24) = v121;
            v122 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v38, v122, v123, &v181);

            if (!v39)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v124 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v125 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v39 = v125;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              v143 = specialized static Entity.entityInfoType(_:)();
              if (!v143)
              {
                v125 = makeEntity(for:)(v124);
                goto LABEL_99;
              }

              v39 = (*(v143 + 232))();
              v144 = *(v39 + 16);

              MEMORY[0x1C68F9740](v144, 0);
              *(v39 + 16) = v124;
              MEMORY[0x1C68F9740](v124, v39);
            }

            else
            {
              v39 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v178);
            v133 = v179;
            if (v179 != -1)
            {
              *&v163[8] = v178;
              v163[24] = v179 & 1;
              v163[25] = v180 & 1;
              v163[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
              *v163 = v119;
              *&v164 = v39;
              BYTE8(v164) = v155;
              v165 = vcvtq_f64_f32(v40);
              *&v167 = 0;
              v166 = v11;
              BYTE8(v167) = 1;
              goto LABEL_139;
            }

LABEL_137:

            v146 = *(&v178 + 1);
            v145 = v178;
            v147 = v133;
LABEL_148:
            outlined consume of SetEntityEnabledAction?(v145, v146, v147);
            return 0;
          }

          v41 = makeEntity(for:)(v35);
        }

        v42 = v41;
        goto LABEL_95;
      }

      v162 = a5;
      v63 = *a2;
      v57 = *(a2 + 8);
      v64 = *(a2 + 24);
      v59 = *(a2 + 32);
      v65 = *(a2 + 40);
      v31 = *(a2 + 64);
      v159 = *(a2 + 56);
      v5 = *(a2 + 72);
      LOBYTE(v157) = *(a2 + 80);
      v161 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v87 = specialized static Entity.entityInfoType(_:)();
      if (v87)
      {
        v67 = (*(v87 + 232))();
        v88 = *(v67 + 16);

        MEMORY[0x1C68F9740](v88, 0);
        *(v67 + 16) = v63;
        MEMORY[0x1C68F9740](v63, v67);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v89 = swift_allocObject();
        *(v89 + 40) = 0;
        swift_weakInit();
        *(v89 + 16) = v57;
        swift_weakAssign();
        v90 = *(v67 + 16);

        *(v89 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v67 + 16));
        v91 = Hasher._finalize()();

        *(v89 + 24) = v91;
        v92 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v65, v92, v93, &v181);

        if (!v31)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v94 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v95 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v31 = v95;
            goto LABEL_121;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          v134 = specialized static Entity.entityInfoType(_:)();
          if (!v134)
          {
            v95 = makeEntity(for:)(v94);
            goto LABEL_66;
          }

          v31 = (*(v134 + 232))();
          v135 = *(v31 + 16);

          MEMORY[0x1C68F9740](v135, 0);
          *(v31 + 16) = v94;
          MEMORY[0x1C68F9740](v94, v31);
        }

        else
        {
          v31 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v178);
        v133 = v179;
        if (v179 != -1)
        {
          *&v163[8] = v178;
          v163[24] = v179 & 1;
          v163[25] = v180 & 1;
          v163[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
          *v163 = v89;
          *&v164 = v31;
          BYTE8(v164) = v157;
          v165 = vcvtq_f64_f32(v5);
          *&v166 = v11;
          *(&v166 + 1) = v159;
          v136 = 0xBFF0000000000000;
          *&v167 = 0xBFF0000000000000;
          BYTE8(v167) = 0;
          *&v168 = 0xBFF0000000000000;
LABEL_141:
          BYTE8(v168) = 0;
          *&v169 = v136;
          BYTE8(v169) = 0;
          v172 = v183;
          v173 = v184;
          v174 = v185;
          v171 = v182;
          v170 = v181;
          v175 = v161;
LABEL_151:
          v162(v163);

          v176[10] = v172;
          v176[11] = v173;
          v176[12] = v174;
          v177 = v175;
          v176[6] = v168;
          v176[7] = v169;
          v176[8] = v170;
          v176[9] = v171;
          v176[2] = v164;
          v176[3] = v165;
          v176[4] = v166;
          v176[5] = v167;
          v176[0] = *v163;
          v176[1] = *&v163[16];
          outlined destroy of BodyTrackingComponent?(v176, &_s17RealityFoundation11ActionEventVyAA016SetEntityEnabledC0VGMd, &_s17RealityFoundation11ActionEventVyAA016SetEntityEnabledC0VGMR);
          return 0;
        }

        goto LABEL_137;
      }

      v66 = makeEntity(for:)(v63);
LABEL_38:
      v67 = v66;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v162 = a5;
        v27 = *a2;
        v26 = *(a2 + 8);
        v28 = *(a2 + 24);
        v29 = *(a2 + 40);
        v30 = *(a2 + 48);
        v31 = *(a2 + 56);
        v161 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v32 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v110 = specialized static Entity.entityInfoType(_:)();
          if (v110)
          {
            v33 = (*(v110 + 232))();
            v111 = *(v33 + 16);

            MEMORY[0x1C68F9740](v111, 0);
            *(v33 + 16) = v27;
            MEMORY[0x1C68F9740](v27, v33);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v63 = swift_allocObject();
            *(v63 + 40) = 0;
            swift_weakInit();
            *(v63 + 16) = v26;
            swift_weakAssign();
            v112 = *(v33 + 16);

            *(v63 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v33 + 16));
            v113 = Hasher._finalize()();

            *(v63 + 24) = v113;
            v114 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v114, v115, &v181);

            if (!v31)
            {
              goto LABEL_131;
            }

            if (REBindPointBoundComponent())
            {
              v65 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

LABEL_129:
              v140 = specialized static Entity.entityInfoType(_:)();
              if (!v140)
              {
                v116 = makeEntity(for:)(v65);
                goto LABEL_90;
              }

              v31 = (*(v140 + 232))();
              v141 = *(v31 + 16);

              MEMORY[0x1C68F9740](v141, 0);
              *(v31 + 16) = v65;
              MEMORY[0x1C68F9740](v65, v31);

LABEL_131:
              specialized ActionEventData.action<A>()(&v178);
              v142 = v179;
              if (v179 != -1)
              {
                *&v163[8] = v178;
                v163[24] = v179 & 1;
                v163[25] = v180 & 1;
                v163[26] = 1;
                *v163 = v63;
                *&v164 = v31;
                BYTE8(v164) = 0;
                v165 = 0uLL;
                *&v167 = 0;
                v166 = v11;
                BYTE8(v167) = 1;
                *&v168 = v161;
                BYTE8(v168) = 0;
LABEL_150:
                *&v169 = 0;
                BYTE8(v169) = 1;
                v172 = v183;
                v173 = v184;
                v174 = v185;
                v171 = v182;
                v170 = v181;
                v175 = v30;
                goto LABEL_151;
              }

              goto LABEL_147;
            }

            goto LABEL_91;
          }

          v32 = makeEntity(for:)(v27);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v162 = a5;
      v58 = *a2;
      v57 = *(a2 + 8);
      v59 = *(a2 + 24);
      v60 = *(a2 + 40);
      v30 = *(a2 + 48);
      v31 = *(a2 + 56);
      v161 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v61 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v81 = specialized static Entity.entityInfoType(_:)();
        if (v81)
        {
          v62 = (*(v81 + 232))();
          v82 = *(v62 + 16);

          MEMORY[0x1C68F9740](v82, 0);
          *(v62 + 16) = v58;
          MEMORY[0x1C68F9740](v58, v62);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v63 = swift_allocObject();
          *(v63 + 40) = 0;
          swift_weakInit();
          *(v63 + 16) = v57;
          swift_weakAssign();
          v83 = *(v62 + 16);

          *(v63 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v62 + 16));
          v84 = Hasher._finalize()();

          *(v63 + 24) = v84;
          v85 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v85, v86, &v181);

          if (!v31)
          {
            goto LABEL_131;
          }

          if (REBindPointBoundComponent())
          {
            v65 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v116 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v31 = v116;
              goto LABEL_131;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_129;
          }

LABEL_91:
          v31 = 0;
          goto LABEL_131;
        }

        v61 = makeEntity(for:)(v58);
      }

      v62 = v61;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v162 = a5;
      v44 = *a2;
      v43 = *(a2 + 8);
      v45 = *(a2 + 16);
      v13 = *(a2 + 24);
      v30 = *(a2 + 32);
      v14 = *(a2 + 40);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v46 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v126 = specialized static Entity.entityInfoType(_:)();
        if (v126)
        {
          v47 = (*(v126 + 232))();
          v127 = *(v47 + 16);

          MEMORY[0x1C68F9740](v127, 0);
          *(v47 + 16) = v44;
          MEMORY[0x1C68F9740](v44, v47);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v16 = swift_allocObject();
          *(v16 + 40) = 0;
          swift_weakInit();
          *(v16 + 16) = v43;
          swift_weakAssign();
          v128 = *(v47 + 16);

          *(v16 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v47 + 16));
          v129 = Hasher._finalize()();

          *(v16 + 24) = v129;
          if (!v14)
          {
            goto LABEL_146;
          }

          if (REBindPointBoundComponent())
          {
            v12 = v30;
            v100 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_180:
              __break(1u);
              return result;
            }

            goto LABEL_143;
          }

          goto LABEL_108;
        }

        v46 = makeEntity(for:)(v44);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v162 = a5;
    v69 = *a2;
    v68 = *(a2 + 8);
    v17 = *(a2 + 16);
    v13 = *(a2 + 24);
    v30 = *(a2 + 32);
    v14 = *(a2 + 40);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v70 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v96 = specialized static Entity.entityInfoType(_:)();
      if (v96)
      {
        v71 = (*(v96 + 232))();
        v97 = *(v71 + 16);

        MEMORY[0x1C68F9740](v97, 0);
        *(v71 + 16) = v69;
        MEMORY[0x1C68F9740](v69, v71);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v16 = swift_allocObject();
        *(v16 + 40) = 0;
        swift_weakInit();
        *(v16 + 16) = v68;
        swift_weakAssign();
        v98 = *(v71 + 16);

        *(v16 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v71 + 16));
        v99 = Hasher._finalize()();

        *(v16 + 24) = v99;
        if (!v14)
        {
          goto LABEL_146;
        }

        if (REBindPointBoundComponent())
        {
          v12 = v30;
          v100 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v130 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v101 = specialized static Entity.entityInfoType(_:)();
              if (v101)
              {
                v19 = (*(v101 + 232))();
                v102 = *(v19 + 16);

                MEMORY[0x1C68F9740](v102, 0);
                *(v19 + 16) = v13;
                MEMORY[0x1C68F9740](v13, v19);

                goto LABEL_78;
              }

              v18 = makeEntity(for:)(v13);
LABEL_8:
              v19 = v18;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v103 = swift_allocObject();
              *(v103 + 40) = 0;
              swift_weakInit();
              *(v103 + 16) = v12;
              swift_weakAssign();
              v104 = *(v19 + 16);

              *(v103 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v19 + 16));
              v105 = Hasher._finalize()();

              *(v103 + 24) = v105;
              v106 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v16, v106, v107, &v181);

              if (!v17)
              {
                goto LABEL_126;
              }

              if (!REBindPointBoundComponent())
              {
                v17 = 0;
                goto LABEL_126;
              }

              v108 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v109 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v17 = v109;
                goto LABEL_126;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v137 = specialized static Entity.entityInfoType(_:)();
                if (!v137)
                {
                  v109 = makeEntity(for:)(v108);
                  goto LABEL_82;
                }

                v17 = (*(v137 + 232))();
                v138 = *(v17 + 16);

                MEMORY[0x1C68F9740](v138, 0);
                *(v17 + 16) = v108;
                MEMORY[0x1C68F9740](v108, v17);

LABEL_126:
                specialized ActionEventData.action<A>()(&v178);
                v133 = v179;
                if (v179 != -1)
                {
                  *&v163[8] = v178;
                  v163[24] = v179 & 1;
                  v163[25] = v180 & 1;
                  v163[26] = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc7EnabledD0VGMR) & 1;
                  *v163 = v103;
                  *&v164 = v17;
                  BYTE8(v164) = v152;
                  v165 = vcvtq_f64_f32(v6);
                  *&v166 = v11;
                  *(&v166 + 1) = v154;
                  *&v167 = v5.f32[0];
                  BYTE8(v167) = 0;
                  v136 = v157;
                  v139 = v159;
LABEL_140:
                  *&v168 = v139;
                  goto LABEL_141;
                }

                goto LABEL_137;
              }

              goto LABEL_177;
            }

            goto LABEL_171;
          }

LABEL_143:
          v148 = specialized static Entity.entityInfoType(_:)();
          if (v148)
          {
            v14 = (*(v148 + 232))();
            v149 = *(v14 + 16);

            MEMORY[0x1C68F9740](v149, 0);
            *(v14 + 16) = v100;
            MEMORY[0x1C68F9740](v100, v14);

            goto LABEL_145;
          }

          v130 = makeEntity(for:)(v100);
LABEL_107:
          v14 = v130;
LABEL_145:
          v30 = v12;
LABEL_146:
          v150 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v150, v151, &v181);

          specialized ActionEventData.action<A>()(&v178);
          v142 = v179;
          if (v179 != -1)
          {
            *&v163[8] = v178;
            v163[24] = v179 & 1;
            v163[25] = v180 & 1;
            v163[26] = 1;
            *v163 = v16;
            *&v164 = v14;
            BYTE8(v164) = 0;
            v165 = 0uLL;
            *&v167 = 0;
            v166 = v11;
            BYTE8(v167) = 1;
            *&v168 = 0;
            BYTE8(v168) = 1;
            goto LABEL_150;
          }

LABEL_147:

          v146 = *(&v178 + 1);
          v145 = v178;
          v147 = v142;
          goto LABEL_148;
        }

LABEL_108:
        v14 = 0;
        goto LABEL_146;
      }

      v70 = makeEntity(for:)(v69);
    }

    v71 = v70;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static AnimationLogger.logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v176[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v176);
    _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), void (*a6)(__int128 *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            a6 = a5;
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v158 = *(a2 + 64);
            v160 = *(a2 + 48);
            v155 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v153 = *(a2 + 104);
            v162 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v20 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        a6 = a5;
        v51 = *a2;
        v50 = *(a2 + 8);
        v53 = *(a2 + 24);
        v52 = *(a2 + 32);
        v54 = *(a2 + 40);
        v55 = *(a2 + 64);
        v56 = *(a2 + 72);
        v154 = *(a2 + 80);
        v157 = *(a2 + 56);
        v159 = *(a2 + 88);
        v161 = *(a2 + 96);
        v162 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v57 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v74 = specialized static Entity.entityInfoType(_:)();
          if (v74)
          {
            v58 = (*(v74 + 232))();
            v75 = *(v58 + 16);

            MEMORY[0x1C68F9740](v75, 0);
            *(v58 + 16) = v51;
            MEMORY[0x1C68F9740](v51, v58);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v76 = swift_allocObject();
            *(v76 + 40) = 0;
            swift_weakInit();
            *(v76 + 16) = v50;
            swift_weakAssign();
            v77 = *(v58 + 16);

            *(v76 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v58 + 16));
            v78 = Hasher._finalize()();

            *(v76 + 24) = v78;
            v79 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v52, 0, v54, v79, v80, &v176);

            if (v55)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v82 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_174:
                    __break(1u);
                    goto LABEL_175;
                  }

                  v133 = specialized static Entity.entityInfoType(_:)();
                  if (v133)
                  {
                    v55 = (*(v133 + 232))();
                    v134 = *(v55 + 16);

                    MEMORY[0x1C68F9740](v134, 0);
                    *(v55 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v55);

                    goto LABEL_116;
                  }

                  v82 = makeEntity(for:)(Entity);
                }

                v55 = v82;
              }

              else
              {
                v55 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v174);
            if (!v175)
            {
              goto LABEL_150;
            }

            v135 = v174;
            v166 = v175;
            LOBYTE(v167) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
            *&v165 = v76;
            *(&v165 + 1) = v135;
            *(&v167 + 1) = v55;
            v168[0] = v154;
            *&v168[8] = vcvtq_f64_f32(v56);
            *&v168[24] = v13;
            *&v169 = v157;
            *(&v169 + 1) = 0xBFF0000000000000;
            LOBYTE(v170) = 0;
LABEL_139:
            v143 = v159;
            v139 = v161;
            goto LABEL_140;
          }

          v57 = makeEntity(for:)(v51);
LABEL_32:
          v58 = v57;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_167;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        a6 = a5;
        v37 = *a2;
        v36 = *(a2 + 8);
        v39 = *(a2 + 24);
        v38 = *(a2 + 32);
        v40 = *(a2 + 40);
        v41 = *(a2 + 56);
        v42 = *(a2 + 64);
        v156 = *(a2 + 72);
        v159 = *(a2 + 80);
        v161 = *(a2 + 88);
        v162 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v43 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v119 = specialized static Entity.entityInfoType(_:)();
          if (v119)
          {
            v44 = (*(v119 + 232))();
            v120 = *(v44 + 16);

            MEMORY[0x1C68F9740](v120, 0);
            *(v44 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v44);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v121 = swift_allocObject();
            *(v121 + 40) = 0;
            swift_weakInit();
            *(v121 + 16) = v36;
            swift_weakAssign();
            v122 = *(v44 + 16);

            *(v121 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v44 + 16));
            v123 = Hasher._finalize()();

            *(v121 + 24) = v123;
            v124 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v40, v124, v125, &v176);

            if (v41)
            {
              if (REBindPointBoundComponent())
              {
                v126 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v127 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  v146 = specialized static Entity.entityInfoType(_:)();
                  if (v146)
                  {
                    v41 = (*(v146 + 232))();
                    v147 = *(v41 + 16);

                    MEMORY[0x1C68F9740](v147, 0);
                    *(v41 + 16) = v126;
                    MEMORY[0x1C68F9740](v126, v41);

                    goto LABEL_137;
                  }

                  v127 = makeEntity(for:)(v126);
                }

                v41 = v127;
              }

              else
              {
                v41 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v174);
            if (!v175)
            {
              goto LABEL_150;
            }

            v148 = v174;
            v166 = v175;
            LOBYTE(v167) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
            *&v165 = v121;
            *(&v165 + 1) = v148;
            *(&v167 + 1) = v41;
            v168[0] = v156;
            *&v168[8] = vcvtq_f64_f32(v42);
            v169 = 0uLL;
            *&v168[24] = v13;
            LOBYTE(v170) = 1;
            goto LABEL_139;
          }

          v43 = makeEntity(for:)(v37);
        }

        v44 = v43;
        goto LABEL_95;
      }

      a6 = a5;
      v65 = *a2;
      v59 = *(a2 + 8);
      v66 = *(a2 + 24);
      v61 = *(a2 + 32);
      v67 = *(a2 + 40);
      v33 = *(a2 + 64);
      v160 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v158) = *(a2 + 80);
      v162 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v68 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v89 = specialized static Entity.entityInfoType(_:)();
      if (v89)
      {
        v69 = (*(v89 + 232))();
        v90 = *(v69 + 16);

        MEMORY[0x1C68F9740](v90, 0);
        *(v69 + 16) = v65;
        MEMORY[0x1C68F9740](v65, v69);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v91 = swift_allocObject();
        *(v91 + 40) = 0;
        swift_weakInit();
        *(v91 + 16) = v59;
        swift_weakAssign();
        v92 = *(v69 + 16);

        *(v91 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v69 + 16));
        v93 = Hasher._finalize()();

        *(v91 + 24) = v93;
        v94 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v61, 0, v67, v94, v95, &v176);

        if (!v33)
        {
          goto LABEL_122;
        }

        if (REBindPointBoundComponent())
        {
          v96 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v97 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v33 = v97;
            goto LABEL_122;
          }

          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v136 = specialized static Entity.entityInfoType(_:)();
          if (!v136)
          {
            v97 = makeEntity(for:)(v96);
            goto LABEL_66;
          }

          v33 = (*(v136 + 232))();
          v137 = *(v33 + 16);

          MEMORY[0x1C68F9740](v137, 0);
          *(v33 + 16) = v96;
          MEMORY[0x1C68F9740](v96, v33);
        }

        else
        {
          v33 = 0;
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v174);
        if (v175)
        {
          v138 = v174;
          v166 = v175;
          LOBYTE(v167) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
          *&v165 = v91;
          *(&v165 + 1) = v138;
          *(&v167 + 1) = v33;
          v168[0] = v158;
          *&v168[8] = vcvtq_f64_f32(v6);
          *&v168[24] = v13;
          *&v169 = v160;
          v139 = 0xBFF0000000000000;
          *(&v169 + 1) = 0xBFF0000000000000;
          LOBYTE(v170) = 0;
          *(&v170 + 1) = 0xBFF0000000000000;
LABEL_141:
          LOBYTE(v171) = 0;
          *(&v171 + 1) = v139;
          v172[0] = 0;
          *&v172[8] = v176;
          *&v172[72] = v180;
          *&v172[56] = v179;
          *&v172[40] = v178;
          *&v172[24] = v177;
          *&v172[88] = v162;
          a6(&v165);
          goto LABEL_149;
        }

        goto LABEL_150;
      }

      v68 = makeEntity(for:)(v65);
LABEL_38:
      v69 = v68;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v163 = a5;
        v29 = *a2;
        v28 = *(a2 + 8);
        v30 = *(a2 + 24);
        v31 = *(a2 + 40);
        v32 = *(a2 + 48);
        v33 = *(a2 + 56);
        v162 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v34 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v112 = specialized static Entity.entityInfoType(_:)();
          if (v112)
          {
            v35 = (*(v112 + 232))();
            v113 = *(v35 + 16);

            MEMORY[0x1C68F9740](v113, 0);
            *(v35 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v35);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v65 = swift_allocObject();
            *(v65 + 40) = 0;
            swift_weakInit();
            *(v65 + 16) = v28;
            swift_weakAssign();
            v114 = *(v35 + 16);

            *(v65 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v35 + 16));
            v115 = Hasher._finalize()();

            *(v65 + 24) = v115;
            v116 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v31, v116, v117, &v176);

            if (!v33)
            {
              goto LABEL_132;
            }

            if (REBindPointBoundComponent())
            {
              v67 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

LABEL_130:
              v144 = specialized static Entity.entityInfoType(_:)();
              if (!v144)
              {
                v118 = makeEntity(for:)(v67);
                goto LABEL_90;
              }

              v33 = (*(v144 + 232))();
              v145 = *(v33 + 16);

              MEMORY[0x1C68F9740](v145, 0);
              *(v33 + 16) = v67;
              MEMORY[0x1C68F9740](v67, v33);

LABEL_132:
              specialized ActionEventData.action<A>()(&v174);
              if (v175)
              {
                *&v172[24] = v177;
                *&v172[40] = v178;
                *&v172[56] = v179;
                *&v172[72] = v180;
                v166 = v175;
                LOBYTE(v167) = 1;
                *&v165 = v65;
                *(&v165 + 1) = v174;
                *(&v167 + 1) = v33;
                v168[0] = 0;
                *&v168[8] = 0;
                *&v168[16] = 0;
                v169 = 0uLL;
                *&v168[24] = v13;
                LOBYTE(v170) = 1;
                *(&v170 + 1) = v162;
                LOBYTE(v171) = 0;
                *(&v171 + 1) = 0;
                v172[0] = 1;
                *&v172[8] = v176;
                *&v172[88] = v32;
                v163(&v165);
LABEL_149:

                v173[10] = *&v172[32];
                v173[11] = *&v172[48];
                v173[12] = *&v172[64];
                v173[13] = *&v172[80];
                v173[6] = v170;
                v173[7] = v171;
                v173[8] = *v172;
                v173[9] = *&v172[16];
                v173[2] = v167;
                v173[3] = *v168;
                v173[4] = *&v168[16];
                v173[5] = v169;
                v173[0] = v165;
                v173[1] = v166;
                outlined destroy of BodyTrackingComponent?(v173, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMd, &_s17RealityFoundation11ActionEventVyAA012NotificationC0VGMR);
                return 0;
              }

              goto LABEL_150;
            }

            goto LABEL_91;
          }

          v34 = makeEntity(for:)(v29);
        }

        v35 = v34;
        goto LABEL_86;
      }

      v163 = a5;
      v60 = *a2;
      v59 = *(a2 + 8);
      v61 = *(a2 + 24);
      v62 = *(a2 + 40);
      v32 = *(a2 + 48);
      v33 = *(a2 + 56);
      v162 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v63 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        v83 = specialized static Entity.entityInfoType(_:)();
        if (v83)
        {
          v64 = (*(v83 + 232))();
          v84 = *(v64 + 16);

          MEMORY[0x1C68F9740](v84, 0);
          *(v64 + 16) = v60;
          MEMORY[0x1C68F9740](v60, v64);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v65 = swift_allocObject();
          *(v65 + 40) = 0;
          swift_weakInit();
          *(v65 + 16) = v59;
          swift_weakAssign();
          v85 = *(v64 + 16);

          *(v65 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v64 + 16));
          v86 = Hasher._finalize()();

          *(v65 + 24) = v86;
          v87 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v62, v87, v88, &v176);

          if (!v33)
          {
            goto LABEL_132;
          }

          if (REBindPointBoundComponent())
          {
            v67 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v118 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v33 = v118;
              goto LABEL_132;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_130;
          }

LABEL_91:
          v33 = 0;
          goto LABEL_132;
        }

        v63 = makeEntity(for:)(v60);
      }

      v64 = v63;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v46 = *a2;
      v45 = *(a2 + 8);
      v47 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v164 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v48 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        v128 = specialized static Entity.entityInfoType(_:)();
        if (v128)
        {
          v49 = (*(v128 + 232))();
          v129 = *(v49 + 16);

          MEMORY[0x1C68F9740](v129, 0);
          *(v49 + 16) = v46;
          MEMORY[0x1C68F9740](v46, v49);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v18 = swift_allocObject();
          *(v18 + 40) = 0;
          swift_weakInit();
          *(v18 + 16) = v45;
          swift_weakAssign();
          v130 = *(v49 + 16);

          *(v18 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v49 + 16));
          v131 = Hasher._finalize()();

          *(v18 + 24) = v131;
          if (!v16)
          {
            goto LABEL_147;
          }

          if (REBindPointBoundComponent())
          {
            v14 = a5;
            v102 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_179:
              __break(1u);
              return result;
            }

            goto LABEL_144;
          }

          goto LABEL_108;
        }

        v48 = makeEntity(for:)(v46);
      }

      v49 = v48;
      goto LABEL_103;
    }

    v71 = *a2;
    v70 = *(a2 + 8);
    v19 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v164 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v72 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v98 = specialized static Entity.entityInfoType(_:)();
      if (v98)
      {
        v73 = (*(v98 + 232))();
        v99 = *(v73 + 16);

        MEMORY[0x1C68F9740](v99, 0);
        *(v73 + 16) = v71;
        MEMORY[0x1C68F9740](v71, v73);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v18 = swift_allocObject();
        *(v18 + 40) = 0;
        swift_weakInit();
        *(v18 + 16) = v70;
        swift_weakAssign();
        v100 = *(v73 + 16);

        *(v18 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v73 + 16));
        v101 = Hasher._finalize()();

        *(v18 + 24) = v101;
        if (!v16)
        {
          goto LABEL_147;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a5;
          v102 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v132 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v103 = specialized static Entity.entityInfoType(_:)();
              if (v103)
              {
                v21 = (*(v103 + 232))();
                v104 = *(v21 + 16);

                MEMORY[0x1C68F9740](v104, 0);
                *(v21 + 16) = v15;
                MEMORY[0x1C68F9740](v15, v21);

                goto LABEL_78;
              }

              v20 = makeEntity(for:)(v15);
LABEL_8:
              v21 = v20;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v105 = swift_allocObject();
              *(v105 + 40) = 0;
              swift_weakInit();
              *(v105 + 16) = v14;
              swift_weakAssign();
              v106 = *(v21 + 16);

              *(v105 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v21 + 16));
              v107 = Hasher._finalize()();

              *(v105 + 24) = v107;
              v108 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v108, v109, &v176);

              if (!v19)
              {
                goto LABEL_127;
              }

              if (!REBindPointBoundComponent())
              {
                v19 = 0;
                goto LABEL_127;
              }

              v110 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v111 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v19 = v111;
                goto LABEL_127;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v140 = specialized static Entity.entityInfoType(_:)();
                if (!v140)
                {
                  v111 = makeEntity(for:)(v110);
                  goto LABEL_82;
                }

                v19 = (*(v140 + 232))();
                v141 = *(v19 + 16);

                MEMORY[0x1C68F9740](v141, 0);
                *(v19 + 16) = v110;
                MEMORY[0x1C68F9740](v110, v19);

LABEL_127:
                specialized ActionEventData.action<A>()(&v174);
                if (v175)
                {
                  v142 = v174;
                  v166 = v175;
                  LOBYTE(v167) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA012NotificationD0VGMR) & 1;
                  *&v165 = v105;
                  *(&v165 + 1) = v142;
                  *(&v167 + 1) = v19;
                  v168[0] = v153;
                  *&v168[8] = vcvtq_f64_f32(v7);
                  *&v168[24] = v13;
                  *&v169 = v155;
                  *(&v169 + 1) = v6.f32[0];
                  LOBYTE(v170) = 0;
                  v139 = v158;
                  v143 = v160;
LABEL_140:
                  *(&v170 + 1) = v143;
                  goto LABEL_141;
                }

LABEL_150:

                outlined consume of NotificationAction?(v174, 0);
                return 0;
              }

              goto LABEL_176;
            }

            goto LABEL_170;
          }

LABEL_144:
          v149 = specialized static Entity.entityInfoType(_:)();
          if (v149)
          {
            v16 = (*(v149 + 232))();
            v150 = *(v16 + 16);

            MEMORY[0x1C68F9740](v150, 0);
            *(v16 + 16) = v102;
            MEMORY[0x1C68F9740](v102, v16);

            goto LABEL_146;
          }

          v132 = makeEntity(for:)(v102);
LABEL_107:
          v16 = v132;
LABEL_146:
          a5 = v14;
LABEL_147:
          v151 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v151, v152, &v176);

          specialized ActionEventData.action<A>()(&v174);
          if (v175)
          {
            *&v172[24] = v177;
            *&v172[40] = v178;
            *&v172[56] = v179;
            *&v172[72] = v180;
            v166 = v175;
            LOBYTE(v167) = 1;
            *&v165 = v18;
            *(&v165 + 1) = v174;
            *(&v167 + 1) = v16;
            v168[0] = 0;
            *&v168[8] = 0;
            *&v168[16] = 0;
            v169 = 0uLL;
            *&v168[24] = v13;
            LOBYTE(v170) = 1;
            *(&v170 + 1) = 0;
            LOBYTE(v171) = 1;
            *(&v171 + 1) = 0;
            v172[0] = 1;
            *&v172[8] = v176;
            *&v172[88] = v164;
            a5(&v165);
            goto LABEL_149;
          }

          goto LABEL_150;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_147;
      }

      v72 = makeEntity(for:)(v71);
    }

    v73 = v72;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static AnimationLogger.logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v173[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v173);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            a6 = a5;
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v161 = *(a2 + 64);
            v164 = *(a2 + 48);
            v158 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v156 = *(a2 + 104);
            v166 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v20 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        a6 = a5;
        v51 = *a2;
        v50 = *(a2 + 8);
        v53 = *(a2 + 24);
        v52 = *(a2 + 32);
        v54 = *(a2 + 40);
        v55 = *(a2 + 64);
        v56 = *(a2 + 72);
        v157 = *(a2 + 80);
        v160 = *(a2 + 88);
        v163 = *(a2 + 56);
        v165 = *(a2 + 96);
        v166 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v57 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v74 = specialized static Entity.entityInfoType(_:)();
          if (v74)
          {
            v58 = (*(v74 + 232))();
            v75 = *(v58 + 16);

            MEMORY[0x1C68F9740](v75, 0);
            *(v58 + 16) = v51;
            MEMORY[0x1C68F9740](v51, v58);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v76 = swift_allocObject();
            *(v76 + 40) = 0;
            swift_weakInit();
            *(v76 + 16) = v50;
            swift_weakAssign();
            v77 = *(v58 + 16);

            *(v76 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v58 + 16));
            v78 = Hasher._finalize()();

            *(v76 + 24) = v78;
            v79 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v52, 0, v54, v79, v80, &v193);

            if (v55)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v82 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_175:
                    __break(1u);
                    goto LABEL_176;
                  }

                  v133 = specialized static Entity.entityInfoType(_:)();
                  if (v133)
                  {
                    v55 = (*(v133 + 232))();
                    v134 = *(v55 + 16);

                    MEMORY[0x1C68F9740](v134, 0);
                    *(v55 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v55);

                    goto LABEL_116;
                  }

                  v82 = makeEntity(for:)(Entity);
                }

                v55 = v82;
              }

              else
              {
                v55 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v190);
            if (!*(&v190 + 1))
            {
              goto LABEL_150;
            }

            *&v169[8] = v190;
            *&v169[24] = v191;
            *&v169[40] = v192[0];
            *&v169[50] = *(v192 + 10);
            v135 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
            *&v170[8] = vcvtq_f64_f32(v56);
            v136 = v193;
            *&v174[24] = v194;
            *&v174[40] = v195;
            *&v174[56] = v196;
            *&v174[72] = v197;
            v169[66] = v135 & 1;
            *v169 = v76;
            *&v169[72] = v55;
            v170[0] = v157;
            *&v170[24] = v13;
            *&v171 = v163;
            *(&v171 + 1) = 0xBFF0000000000000;
            LOBYTE(v172) = 0;
            v137 = v160;
            goto LABEL_139;
          }

          v57 = makeEntity(for:)(v51);
LABEL_32:
          v58 = v57;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_168;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        a6 = a5;
        v37 = *a2;
        v36 = *(a2 + 8);
        v39 = *(a2 + 24);
        v38 = *(a2 + 32);
        v40 = *(a2 + 40);
        v41 = *(a2 + 56);
        v42 = *(a2 + 64);
        v159 = *(a2 + 72);
        v162 = *(a2 + 80);
        v165 = *(a2 + 88);
        v166 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v43 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v119 = specialized static Entity.entityInfoType(_:)();
          if (v119)
          {
            v44 = (*(v119 + 232))();
            v120 = *(v44 + 16);

            MEMORY[0x1C68F9740](v120, 0);
            *(v44 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v44);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v121 = swift_allocObject();
            *(v121 + 40) = 0;
            swift_weakInit();
            *(v121 + 16) = v36;
            swift_weakAssign();
            v122 = *(v44 + 16);

            *(v121 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v44 + 16));
            v123 = Hasher._finalize()();

            *(v121 + 24) = v123;
            v124 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v40, v124, v125, &v193);

            if (v41)
            {
              if (REBindPointBoundComponent())
              {
                v126 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v127 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }

                  v147 = specialized static Entity.entityInfoType(_:)();
                  if (v147)
                  {
                    v41 = (*(v147 + 232))();
                    v148 = *(v41 + 16);

                    MEMORY[0x1C68F9740](v148, 0);
                    *(v41 + 16) = v126;
                    MEMORY[0x1C68F9740](v126, v41);

                    goto LABEL_137;
                  }

                  v127 = makeEntity(for:)(v126);
                }

                v41 = v127;
              }

              else
              {
                v41 = 0;
              }
            }

LABEL_137:
            specialized ActionEventData.action<A>()(&v190);
            if (!*(&v190 + 1))
            {
              goto LABEL_150;
            }

            *&v169[8] = v190;
            *&v169[24] = v191;
            *&v169[40] = v192[0];
            *&v169[50] = *(v192 + 10);
            v149 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
            *&v170[8] = vcvtq_f64_f32(v42);
            v136 = v193;
            *&v174[24] = v194;
            *&v174[40] = v195;
            *&v174[56] = v196;
            *&v174[72] = v197;
            v169[66] = v149 & 1;
            *v169 = v121;
            *&v169[72] = v41;
            v170[0] = v159;
            v171 = 0uLL;
            *&v170[24] = v13;
            LOBYTE(v172) = 1;
            v137 = v162;
LABEL_139:
            *(&v172 + 1) = v137;
            LOBYTE(v173) = 0;
            v141 = v165;
            goto LABEL_140;
          }

          v43 = makeEntity(for:)(v37);
        }

        v44 = v43;
        goto LABEL_95;
      }

      a6 = a5;
      v65 = *a2;
      v59 = *(a2 + 8);
      v66 = *(a2 + 24);
      v61 = *(a2 + 32);
      v67 = *(a2 + 40);
      v33 = *(a2 + 64);
      v164 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v161) = *(a2 + 80);
      v166 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v68 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v89 = specialized static Entity.entityInfoType(_:)();
      if (v89)
      {
        v69 = (*(v89 + 232))();
        v90 = *(v69 + 16);

        MEMORY[0x1C68F9740](v90, 0);
        *(v69 + 16) = v65;
        MEMORY[0x1C68F9740](v65, v69);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v91 = swift_allocObject();
        *(v91 + 40) = 0;
        swift_weakInit();
        *(v91 + 16) = v59;
        swift_weakAssign();
        v92 = *(v69 + 16);

        *(v91 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v69 + 16));
        v93 = Hasher._finalize()();

        *(v91 + 24) = v93;
        v94 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v61, 0, v67, v94, v95, &v193);

        if (v33)
        {
          if (REBindPointBoundComponent())
          {
            v96 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v97 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

              v138 = specialized static Entity.entityInfoType(_:)();
              if (v138)
              {
                v33 = (*(v138 + 232))();
                v139 = *(v33 + 16);

                MEMORY[0x1C68F9740](v139, 0);
                *(v33 + 16) = v96;
                MEMORY[0x1C68F9740](v96, v33);

                goto LABEL_122;
              }

              v97 = makeEntity(for:)(v96);
            }

            v33 = v97;
          }

          else
          {
            v33 = 0;
          }
        }

LABEL_122:
        specialized ActionEventData.action<A>()(&v190);
        if (!*(&v190 + 1))
        {
          goto LABEL_150;
        }

        *&v169[8] = v190;
        *&v169[24] = v191;
        *&v169[40] = v192[0];
        *&v169[50] = *(v192 + 10);
        v140 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
        *&v170[8] = vcvtq_f64_f32(v6);
        v136 = v193;
        *&v174[24] = v194;
        *&v174[40] = v195;
        *&v174[56] = v196;
        *&v174[72] = v197;
        v169[66] = v140 & 1;
        *v169 = v91;
        *&v169[72] = v33;
        v170[0] = v161;
        *&v170[24] = v13;
        *&v171 = v164;
        v141 = 0xBFF0000000000000;
        *(&v171 + 1) = 0xBFF0000000000000;
        LOBYTE(v172) = 0;
        *(&v172 + 1) = 0xBFF0000000000000;
        LOBYTE(v173) = 0;
LABEL_140:
        *(&v173 + 1) = v141;
        v174[0] = 0;
        goto LABEL_141;
      }

      v68 = makeEntity(for:)(v65);
LABEL_38:
      v69 = v68;
      goto LABEL_62;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v167 = a5;
        v29 = *a2;
        v28 = *(a2 + 8);
        v30 = *(a2 + 24);
        v31 = *(a2 + 40);
        v32 = *(a2 + 48);
        v33 = *(a2 + 56);
        v166 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v34 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_172:
            __break(1u);
            goto LABEL_173;
          }

          v112 = specialized static Entity.entityInfoType(_:)();
          if (v112)
          {
            v35 = (*(v112 + 232))();
            v113 = *(v35 + 16);

            MEMORY[0x1C68F9740](v113, 0);
            *(v35 + 16) = v29;
            MEMORY[0x1C68F9740](v29, v35);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v65 = swift_allocObject();
            *(v65 + 40) = 0;
            swift_weakInit();
            *(v65 + 16) = v28;
            swift_weakAssign();
            v114 = *(v35 + 16);

            *(v65 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v35 + 16));
            v115 = Hasher._finalize()();

            *(v65 + 24) = v115;
            v116 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v31, v116, v117, &v193);

            if (!v33)
            {
              goto LABEL_132;
            }

            if (REBindPointBoundComponent())
            {
              v67 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_89;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

LABEL_130:
              v145 = specialized static Entity.entityInfoType(_:)();
              if (!v145)
              {
                v118 = makeEntity(for:)(v67);
                goto LABEL_90;
              }

              v33 = (*(v145 + 232))();
              v146 = *(v33 + 16);

              MEMORY[0x1C68F9740](v146, 0);
              *(v33 + 16) = v67;
              MEMORY[0x1C68F9740](v67, v33);

LABEL_132:
              specialized ActionEventData.action<A>()(&v190);
              if (*(&v190 + 1))
              {
                *&v169[8] = v190;
                *&v169[24] = v191;
                *&v169[40] = v192[0];
                *&v169[50] = *(v192 + 10);
                *&v174[24] = v194;
                *&v174[40] = v195;
                *&v174[56] = v196;
                *&v174[72] = v197;
                v169[66] = 1;
                *v169 = v65;
                *&v169[72] = v33;
                v170[0] = 0;
                *&v170[8] = 0;
                *&v170[16] = 0;
                v171 = 0uLL;
                *&v170[24] = v13;
                LOBYTE(v172) = 1;
                *(&v172 + 1) = v166;
                LOBYTE(v173) = 0;
                *(&v173 + 1) = 0;
                v174[0] = 1;
                *&v174[8] = v193;
                *&v174[88] = v32;
                v167(v169);
LABEL_149:

                v186 = *&v174[32];
                v187 = *&v174[48];
                v188 = *&v174[64];
                v189 = *&v174[80];
                v182 = v172;
                v183 = v173;
                v184 = *v174;
                v185 = *&v174[16];
                v178 = *&v169[64];
                v179 = *v170;
                v180 = *&v170[16];
                v181 = v171;
                v175 = *v169;
                v176 = *&v169[16];
                *v177 = *&v169[32];
                *&v177[16] = *&v169[48];
                v154 = &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMd;
                v155 = &_s17RealityFoundation11ActionEventVyAA013PlayAnimationC0VGMR;
LABEL_151:
                outlined destroy of BodyTrackingComponent?(&v175, v154, v155);
                return 0;
              }

              goto LABEL_150;
            }

            goto LABEL_91;
          }

          v34 = makeEntity(for:)(v29);
        }

        v35 = v34;
        goto LABEL_86;
      }

      v167 = a5;
      v60 = *a2;
      v59 = *(a2 + 8);
      v61 = *(a2 + 24);
      v62 = *(a2 + 40);
      v32 = *(a2 + 48);
      v33 = *(a2 + 56);
      v166 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v63 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v83 = specialized static Entity.entityInfoType(_:)();
        if (v83)
        {
          v64 = (*(v83 + 232))();
          v84 = *(v64 + 16);

          MEMORY[0x1C68F9740](v84, 0);
          *(v64 + 16) = v60;
          MEMORY[0x1C68F9740](v60, v64);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v65 = swift_allocObject();
          *(v65 + 40) = 0;
          swift_weakInit();
          *(v65 + 16) = v59;
          swift_weakAssign();
          v85 = *(v64 + 16);

          *(v65 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v64 + 16));
          v86 = Hasher._finalize()();

          *(v65 + 24) = v86;
          v87 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v62, v87, v88, &v193);

          if (!v33)
          {
            goto LABEL_132;
          }

          if (REBindPointBoundComponent())
          {
            v67 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v118 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v33 = v118;
              goto LABEL_132;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_59;
            }

            goto LABEL_130;
          }

LABEL_91:
          v33 = 0;
          goto LABEL_132;
        }

        v63 = makeEntity(for:)(v60);
      }

      v64 = v63;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v46 = *a2;
      v45 = *(a2 + 8);
      v47 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v168 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v48 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v128 = specialized static Entity.entityInfoType(_:)();
        if (v128)
        {
          v49 = (*(v128 + 232))();
          v129 = *(v49 + 16);

          MEMORY[0x1C68F9740](v129, 0);
          *(v49 + 16) = v46;
          MEMORY[0x1C68F9740](v46, v49);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v18 = swift_allocObject();
          *(v18 + 40) = 0;
          swift_weakInit();
          *(v18 + 16) = v45;
          swift_weakAssign();
          v130 = *(v49 + 16);

          *(v18 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v49 + 16));
          v131 = Hasher._finalize()();

          *(v18 + 24) = v131;
          if (!v16)
          {
            goto LABEL_147;
          }

          if (REBindPointBoundComponent())
          {
            a6 = a5;
            v102 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_106;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_180:
              __break(1u);
              return result;
            }

            goto LABEL_144;
          }

          goto LABEL_108;
        }

        v48 = makeEntity(for:)(v46);
      }

      v49 = v48;
      goto LABEL_103;
    }

    v71 = *a2;
    v70 = *(a2 + 8);
    v19 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v168 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v72 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v98 = specialized static Entity.entityInfoType(_:)();
      if (v98)
      {
        v73 = (*(v98 + 232))();
        v99 = *(v73 + 16);

        MEMORY[0x1C68F9740](v99, 0);
        *(v73 + 16) = v71;
        MEMORY[0x1C68F9740](v71, v73);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v18 = swift_allocObject();
        *(v18 + 40) = 0;
        swift_weakInit();
        *(v18 + 16) = v70;
        swift_weakAssign();
        v100 = *(v73 + 16);

        *(v18 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v73 + 16));
        v101 = Hasher._finalize()();

        *(v18 + 24) = v101;
        if (!v16)
        {
          goto LABEL_147;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a6;
          a6 = a5;
          v102 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v132 = swift_dynamicCastClassUnconditional();
            goto LABEL_107;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v103 = specialized static Entity.entityInfoType(_:)();
              if (v103)
              {
                v21 = (*(v103 + 232))();
                v104 = *(v21 + 16);

                MEMORY[0x1C68F9740](v104, 0);
                *(v21 + 16) = v15;
                MEMORY[0x1C68F9740](v15, v21);

                goto LABEL_78;
              }

              v20 = makeEntity(for:)(v15);
LABEL_8:
              v21 = v20;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v105 = swift_allocObject();
              *(v105 + 40) = 0;
              swift_weakInit();
              *(v105 + 16) = v14;
              swift_weakAssign();
              v106 = *(v21 + 16);

              *(v105 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v21 + 16));
              v107 = Hasher._finalize()();

              *(v105 + 24) = v107;
              v108 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v108, v109, &v193);

              if (!v19)
              {
                goto LABEL_127;
              }

              if (!REBindPointBoundComponent())
              {
                v19 = 0;
                goto LABEL_127;
              }

              v110 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v111 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v19 = v111;
                goto LABEL_127;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v142 = specialized static Entity.entityInfoType(_:)();
                if (!v142)
                {
                  v111 = makeEntity(for:)(v110);
                  goto LABEL_82;
                }

                v19 = (*(v142 + 232))();
                v143 = *(v19 + 16);

                MEMORY[0x1C68F9740](v143, 0);
                *(v19 + 16) = v110;
                MEMORY[0x1C68F9740](v110, v19);

LABEL_127:
                specialized ActionEventData.action<A>()(&v190);
                if (*(&v190 + 1))
                {
                  *&v169[8] = v190;
                  *&v169[24] = v191;
                  *&v169[40] = v192[0];
                  *&v169[50] = *(v192 + 10);
                  v144 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA013PlayAnimationD0VGMR);
                  *&v170[8] = vcvtq_f64_f32(v7);
                  *(&v171 + 1) = v6.f32[0];
                  v136 = v193;
                  *&v174[24] = v194;
                  *&v174[40] = v195;
                  v169[66] = v144 & 1;
                  *v169 = v105;
                  *&v169[72] = v19;
                  v170[0] = v156;
                  *&v170[24] = v13;
                  *&v171 = v158;
                  LOBYTE(v172) = 0;
                  *(&v172 + 1) = v164;
                  LOBYTE(v173) = 0;
                  *(&v173 + 1) = v161;
                  v174[0] = 0;
                  *&v174[56] = v196;
                  *&v174[72] = v197;
LABEL_141:
                  *&v174[8] = v136;
                  *&v174[88] = v166;
                  a6(v169);
                  goto LABEL_149;
                }

LABEL_150:

                v175 = v190;
                v176 = v191;
                *v177 = v192[0];
                *&v177[10] = *(v192 + 10);
                v154 = &_s17RealityFoundation19PlayAnimationActionVSgMd;
                v155 = &_s17RealityFoundation19PlayAnimationActionVSgMR;
                goto LABEL_151;
              }

              goto LABEL_177;
            }

            goto LABEL_171;
          }

LABEL_144:
          v150 = specialized static Entity.entityInfoType(_:)();
          if (v150)
          {
            v16 = (*(v150 + 232))();
            v151 = *(v16 + 16);

            MEMORY[0x1C68F9740](v151, 0);
            *(v16 + 16) = v102;
            MEMORY[0x1C68F9740](v102, v16);

            goto LABEL_146;
          }

          v132 = makeEntity(for:)(v102);
LABEL_107:
          v16 = v132;
LABEL_146:
          a5 = a6;
LABEL_147:
          v152 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v152, v153, &v193);

          specialized ActionEventData.action<A>()(&v190);
          if (*(&v190 + 1))
          {
            *&v169[8] = v190;
            *&v169[24] = v191;
            *&v169[40] = v192[0];
            *&v169[50] = *(v192 + 10);
            *&v174[24] = v194;
            *&v174[40] = v195;
            *&v174[56] = v196;
            *&v174[72] = v197;
            v169[66] = 1;
            *v169 = v18;
            *&v169[72] = v16;
            v170[0] = 0;
            *&v170[8] = 0;
            *&v170[16] = 0;
            v171 = 0uLL;
            *&v170[24] = v13;
            LOBYTE(v172) = 1;
            *(&v172 + 1) = 0;
            LOBYTE(v173) = 1;
            *(&v173 + 1) = 0;
            v174[0] = 1;
            *&v174[8] = v193;
            *&v174[88] = v168;
            a5(v169);
            goto LABEL_149;
          }

          goto LABEL_150;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_147;
      }

      v72 = makeEntity(for:)(v71);
    }

    v73 = v72;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static AnimationLogger.logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v175 = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, &v175);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, void (*a3)(__int128 *))
{
  static ForceEffectParameters.__fromCore(_:)(a2, v47);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v47, &v31);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA010TurbulencecD0V_Tt2B5(v5, v7, v47, &v15);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v15, v8);
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  if (sub_1C13651A4(&v31) == 1)
  {
    outlined destroy of ForceEffectParameters(v47);
    outlined consume of Data._Representation(v5, v7);
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = v22;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGSgMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGSgMR;
    v11 = &v31;
  }

  else
  {
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = v22;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    a3(&v31);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v47);
    v13[12] = v43;
    v13[13] = v44;
    v13[14] = v45;
    v14 = v46;
    v13[8] = v39;
    v13[9] = v40;
    v13[10] = v41;
    v13[11] = v42;
    v13[4] = v35;
    v13[5] = v36;
    v13[6] = v37;
    v13[7] = v38;
    v13[0] = v31;
    v13[1] = v32;
    v13[2] = v33;
    v13[3] = v34;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA010TurbulencecD0VGMR;
    v11 = v13;
  }

  outlined destroy of BodyTrackingComponent?(v11, v9, v10);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v44);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v44, &v29);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA04DragcD0V_Tt2B5Tm(v5, v7, v44, lazy protocol witness table accessor for type DragForceEffect and conformance DragForceEffect, &v14);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v14, v8);
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  if (getEnumTag for EnvironmentResource.OptionError(&v29) == 1)
  {
    outlined destroy of ForceEffectParameters(v44);
    outlined consume of Data._Representation(v5, v7);
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGSgMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGSgMR;
    v11 = &v29;
  }

  else
  {
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    a3(&v29);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v44);
    v13[12] = v41;
    v13[13] = v42;
    v13[14] = v43;
    v13[8] = v37;
    v13[9] = v38;
    v13[10] = v39;
    v13[11] = v40;
    v13[4] = v33;
    v13[5] = v34;
    v13[6] = v35;
    v13[7] = v36;
    v13[0] = v29;
    v13[1] = v30;
    v13[2] = v31;
    v13[3] = v32;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA04DragcD0VGMR;
    v11 = v13;
  }

  outlined destroy of BodyTrackingComponent?(v11, v9, v10);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v47);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v47, &v31);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06RadialcD0V_Tt2B5(v5, v7, v47, &v15);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v15, v8);
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  if (sub_1C13651A4(&v31) == 1)
  {
    outlined destroy of ForceEffectParameters(v47);
    outlined consume of Data._Representation(v5, v7);
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = v22;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGSgMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGSgMR;
    v11 = &v31;
  }

  else
  {
    v43 = v27;
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v39 = v23;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = v22;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    a3(&v31);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v47);
    v13[12] = v43;
    v13[13] = v44;
    v13[14] = v45;
    v14 = v46;
    v13[8] = v39;
    v13[9] = v40;
    v13[10] = v41;
    v13[11] = v42;
    v13[4] = v35;
    v13[5] = v36;
    v13[6] = v37;
    v13[7] = v38;
    v13[0] = v31;
    v13[1] = v32;
    v13[2] = v33;
    v13[3] = v34;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA06RadialcD0VGMR;
    v11 = v13;
  }

  outlined destroy of BodyTrackingComponent?(v11, v9, v10);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v44);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v44, &v29);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA04DragcD0V_Tt2B5Tm(v5, v7, v44, lazy protocol witness table accessor for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect, &v14);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(&v14, v8);
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  if (getEnumTag for EnvironmentResource.OptionError(&v29) == 1)
  {
    outlined destroy of ForceEffectParameters(v44);
    outlined consume of Data._Representation(v5, v7);
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGSgMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGSgMR;
    v11 = &v29;
  }

  else
  {
    v41 = v26;
    v42 = v27;
    v43 = v28;
    v37 = v22;
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v29 = v14;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    a3(&v29);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v44);
    v13[12] = v41;
    v13[13] = v42;
    v13[14] = v43;
    v13[8] = v37;
    v13[9] = v38;
    v13[10] = v39;
    v13[11] = v40;
    v13[4] = v33;
    v13[5] = v34;
    v13[6] = v35;
    v13[7] = v36;
    v13[0] = v29;
    v13[1] = v30;
    v13[2] = v31;
    v13[3] = v32;
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA014ConstantRadialcD0VGMR;
    v11 = v13;
  }

  outlined destroy of BodyTrackingComponent?(v11, v9, v10);
  return 0;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  static ForceEffectParameters.__fromCore(_:)(a2, v16);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v16, __src);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06VortexcD0V_Tt2B5Tm(v5, v7, v16, lazy protocol witness table accessor for type VortexForceEffect and conformance VortexForceEffect, __dst);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(__dst, v8);
  memcpy(__src, __dst, 0x110uLL);
  if (sub_1C13651E8(__src) == 1)
  {
    outlined destroy of ForceEffectParameters(v16);
    outlined consume of Data._Representation(v5, v7);
    memcpy(__src, __dst, 0x110uLL);
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGSgMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGSgMR;
    v11 = __src;
  }

  else
  {
    memcpy(__src, __dst, 0x110uLL);
    a3(__src);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v16);
    memcpy(v13, __src, 0x110uLL);
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA06VortexcD0VGMR;
    v11 = v13;
  }

  outlined destroy of BodyTrackingComponent?(v11, v9, v10);
  return 0;
}

{
  static ForceEffectParameters.__fromCore(_:)(a2, v16);
  v5 = specialized Data.init(bytes:count:)(*(a2 + 120), *(a2 + 128));
  v7 = v6;
  outlined copy of Data._Representation(v5, v6);
  outlined init with copy of ForceEffectParameters(v16, __src);
  _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06VortexcD0V_Tt2B5Tm(v5, v7, v16, lazy protocol witness table accessor for type ConstantForceEffect and conformance ConstantForceEffect, __dst);
  destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError(__dst, v8);
  memcpy(__src, __dst, 0x110uLL);
  if (sub_1C13651E8(__src) == 1)
  {
    outlined destroy of ForceEffectParameters(v16);
    outlined consume of Data._Representation(v5, v7);
    memcpy(__src, __dst, 0x110uLL);
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGSgMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGSgMR;
    v11 = __src;
  }

  else
  {
    memcpy(__src, __dst, 0x110uLL);
    a3(__src);
    outlined consume of Data._Representation(v5, v7);
    outlined destroy of ForceEffectParameters(v16);
    memcpy(v13, __src, 0x110uLL);
    v9 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGMd;
    v10 = &_s17RealityFoundation16ForceEffectEventVyAA08ConstantcD0VGMR;
    v11 = v13;
  }

  outlined destroy of BodyTrackingComponent?(v11, v9, v10);
  return 0;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA010TurbulencecD0V_Tt2B5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type TurbulenceForceEffect and conformance TurbulenceForceEffect();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v4)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v16[179] = *(a3 + 176);
    *&v16[195] = *(a3 + 192);
    *&v16[211] = *(a3 + 208);
    *&v16[115] = *(a3 + 112);
    *&v16[131] = *(a3 + 128);
    *&v16[147] = *(a3 + 144);
    *&v16[163] = *(a3 + 160);
    *&v16[51] = *(a3 + 48);
    *&v16[67] = *(a3 + 64);
    *&v16[227] = *(a3 + 224);
    *&v16[83] = *(a3 + 80);
    *&v16[99] = *(a3 + 96);
    *&v16[3] = *a3;
    *&v16[19] = *(a3 + 16);
    *&v16[35] = *(a3 + 32);
    *a4 = v13;
    *(a4 + 8) = v14;
    *(a4 + 189) = *&v16[176];
    *(a4 + 205) = *&v16[192];
    *(a4 + 221) = *&v16[208];
    *(a4 + 232) = *&v16[219];
    *(a4 + 125) = *&v16[112];
    *(a4 + 141) = *&v16[128];
    *(a4 + 157) = *&v16[144];
    *(a4 + 173) = *&v16[160];
    *(a4 + 61) = *&v16[48];
    *(a4 + 77) = *&v16[64];
    *(a4 + 93) = *&v16[80];
    *(a4 + 109) = *&v16[96];
    result = *v16;
    *(a4 + 13) = *v16;
    *(a4 + 12) = v15;
    *(a4 + 29) = *&v16[16];
    *(a4 + 45) = *&v16[32];
  }

  return result;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06RadialcD0V_Tt2B5@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type RadialForceEffect and conformance RadialForceEffect();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v4)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v15[183] = *(a3 + 176);
    *&v15[199] = *(a3 + 192);
    *&v15[215] = *(a3 + 208);
    *&v15[231] = *(a3 + 224);
    *&v15[119] = *(a3 + 112);
    *&v15[135] = *(a3 + 128);
    *&v15[151] = *(a3 + 144);
    *&v15[167] = *(a3 + 160);
    *&v15[55] = *(a3 + 48);
    *&v15[71] = *(a3 + 64);
    *&v15[87] = *(a3 + 80);
    *&v15[103] = *(a3 + 96);
    *&v15[7] = *a3;
    *&v15[23] = *(a3 + 16);
    *&v15[39] = *(a3 + 32);
    *a4 = v13;
    *(a4 + 185) = *&v15[176];
    *(a4 + 201) = *&v15[192];
    *(a4 + 217) = *&v15[208];
    *(a4 + 232) = *&v15[223];
    *(a4 + 121) = *&v15[112];
    *(a4 + 137) = *&v15[128];
    *(a4 + 153) = *&v15[144];
    *(a4 + 169) = *&v15[160];
    *(a4 + 57) = *&v15[48];
    *(a4 + 73) = *&v15[64];
    *(a4 + 89) = *&v15[80];
    *(a4 + 105) = *&v15[96];
    result = *v15;
    *(a4 + 9) = *v15;
    *(a4 + 25) = *&v15[16];
    *(a4 + 8) = v14;
    *(a4 + 41) = *&v15[32];
  }

  return result;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA04DragcD0V_Tt2B5Tm@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  a4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v5)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v17[179] = *(a3 + 176);
    *&v17[195] = *(a3 + 192);
    *&v17[211] = *(a3 + 208);
    *&v17[115] = *(a3 + 112);
    *&v17[131] = *(a3 + 128);
    *&v17[147] = *(a3 + 144);
    *&v17[163] = *(a3 + 160);
    *&v17[51] = *(a3 + 48);
    *&v17[67] = *(a3 + 64);
    *&v17[227] = *(a3 + 224);
    *&v17[83] = *(a3 + 80);
    *&v17[99] = *(a3 + 96);
    *&v17[3] = *a3;
    *&v17[19] = *(a3 + 16);
    *&v17[35] = *(a3 + 32);
    *a5 = v15;
    *(a5 + 181) = *&v17[176];
    *(a5 + 197) = *&v17[192];
    *(a5 + 213) = *&v17[208];
    *(a5 + 224) = *&v17[219];
    *(a5 + 117) = *&v17[112];
    *(a5 + 133) = *&v17[128];
    *(a5 + 149) = *&v17[144];
    *(a5 + 165) = *&v17[160];
    *(a5 + 53) = *&v17[48];
    *(a5 + 69) = *&v17[64];
    *(a5 + 85) = *&v17[80];
    *(a5 + 101) = *&v17[96];
    result = *v17;
    *(a5 + 5) = *v17;
    *(a5 + 4) = v16;
    *(a5 + 21) = *&v17[16];
    *(a5 + 37) = *&v17[32];
  }

  return result;
}

double _s17RealityFoundation16ForceEffectEventV10effectData10parametersACyxG0B00G0V_AA0cD10ParametersVtKcSeRzSERzrlufCAA06VortexcD0V_Tt2B5Tm@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for JSONDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  a4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v5)
  {
    outlined destroy of ForceEffectParameters(a3);
    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
    *&v18[183] = *(a3 + 176);
    *&v18[199] = *(a3 + 192);
    *&v18[215] = *(a3 + 208);
    *&v18[119] = *(a3 + 112);
    *&v18[135] = *(a3 + 128);
    *&v18[151] = *(a3 + 144);
    *&v18[167] = *(a3 + 160);
    *&v18[55] = *(a3 + 48);
    *&v18[71] = *(a3 + 64);
    *&v18[87] = *(a3 + 80);
    *&v18[103] = *(a3 + 96);
    *&v18[7] = *a3;
    *&v18[231] = *(a3 + 224);
    *&v18[23] = *(a3 + 16);
    *&v18[39] = *(a3 + 32);
    *a5 = v15;
    *(a5 + 16) = v16;
    *(a5 + 209) = *&v18[176];
    *(a5 + 225) = *&v18[192];
    *(a5 + 241) = *&v18[208];
    *(a5 + 256) = *&v18[223];
    *(a5 + 145) = *&v18[112];
    *(a5 + 161) = *&v18[128];
    *(a5 + 177) = *&v18[144];
    *(a5 + 193) = *&v18[160];
    *(a5 + 81) = *&v18[48];
    *(a5 + 97) = *&v18[64];
    *(a5 + 32) = v17;
    *(a5 + 113) = *&v18[80];
    *(a5 + 129) = *&v18[96];
    result = *v18;
    *(a5 + 33) = *v18;
    *(a5 + 49) = *&v18[16];
    *(a5 + 65) = *&v18[32];
  }

  return result;
}

uint64_t _s17RealityFoundation10REEventBusC16DispatcherHandle33_C907048D367572FD9E6EC4CB4F65EE59LLV5event12sourceObject13componentType8matchingAFxm_0A3Kit11EventSource_pSgAK9Component_pXpSgSSSgtclufCAK012EngineUpdateV0V_Ttt3g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t *a7@<X8>)
{
  v13 = a6();
  if (a2)
  {
    v14 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v14 + 80, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit14__SceneService_pMd, &_s10RealityKit14__SceneService_pMR);
    type metadata accessor for SceneManager();
    swift_dynamicCast();
    v15 = SceneManager.componentTypeToComponentClass(_:)(a2, a3);
    if (v15)
    {
      goto LABEL_5;
    }

    (*(a3 + 80))(v26, a2, a3);
    if (LODWORD(v26[0]) == 36)
    {
      v15 = specialized static SceneManager.customComponentType(_:)(a2, a3);
LABEL_5:
      v16 = v15;

      if (*(a1 + 24))
      {
        goto LABEL_6;
      }

LABEL_15:
      result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      v19 = 0;
      goto LABEL_16;
    }
  }

  v16 = 0;
  if (!*(a1 + 24))
  {
    goto LABEL_15;
  }

LABEL_6:
  outlined init with copy of [String : String](a1, v21, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  if (!v22)
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pMd, &_s10RealityKit11EventSource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14RECoreBridging_pMd, &_s17RealityFoundation14RECoreBridging_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_12;
  }

  if (!*(&v24 + 1))
  {
LABEL_12:
    outlined destroy of BodyTrackingComponent?(&v23, &_s17RealityFoundation14RECoreBridging_pSgMd, &_s17RealityFoundation14RECoreBridging_pSgMR);
    outlined init with copy of [String : String](a1, v26, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v19 = Optional._bridgeToObjectiveC()();
    outlined destroy of BodyTrackingComponent?(v26, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_unknownObjectRelease();
    result = outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    goto LABEL_16;
  }

  outlined init with take of ForceEffectBase(&v23, v26);
  v17 = v27;
  v18 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v19 = (*(v18 + 8))(v17, v18);
  outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
  result = __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_16:
  *a7 = v13;
  a7[1] = v19;
  a7[2] = v16;
  a7[3] = a4;
  a7[4] = a5;
  return result;
}

uint64_t _s17RealityFoundation10REEventBusC21getOrCreateDispatcher33_C907048D367572FD9E6EC4CB4F65EE59LL6handle2ofAA0cH0CyxGAC0H6HandleAELLV_xmts8SendableRzlF0A3Kit17EngineUpdateEventV_Tt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  swift_beginAccess();
  v8 = *(v3 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  swift_endAccess();
  if (!*(&v19 + 1))
  {
    outlined destroy of BodyTrackingComponent?(&v18, &_sypSgMd, &_sypSgMR);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v12 = *(v6 + 16);
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    v21 = *(a1 + 24);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v11 + 64) = v16;
    *(v11 + 72) = 0;
    *(v11 + 16) = v6;
    *(v11 + 24) = v12;
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    *(v11 + 48) = *(a1 + 24);
    v20[3] = v15;
    v20[0] = v11;
    swift_beginAccess();
    outlined init with copy of [String : String](&v21, &v18, &_sSSSgMd, &_sSSSgMR);
    outlined init with copy of REEventBus.DispatcherHandle(a1, &v18);
    swift_unownedRetain();

    specialized Dictionary.subscript.setter(v20, a1);
    swift_endAccess();
    return v11;
  }

  return v20[0];
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v9 = *(a1 + 192);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09EmphasizecD0V_Tt0B5(v8);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v9 = *(a1 + 192);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09EmphasizecD0V_Tt0B5(v8);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09EmphasizecD0V_Tt0G5Tm(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  v23 = *(a1 + 160);
  v24 = v3;
  v25 = *(a1 + 192);
  v4 = *(a1 + 112);
  v19 = *(a1 + 96);
  v20 = v4;
  v5 = *(a1 + 144);
  v21 = *(a1 + 128);
  v22 = v5;
  v6 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v16 = v6;
  v7 = *(a1 + 80);
  v17 = *(a1 + 64);
  v18 = v7;
  v8 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v8;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v15);
  if (v10)
  {
    v11 = result;
    v12 = v10;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, v16, &type metadata for EmphasizeAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v13 = v25;
    v14[3] = &type metadata for EmphasizeActionHandler;
    v14[4] = &protocol witness table for EmphasizeActionHandler;
    v14[0] = v11;
    v14[1] = v12;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v14, v13);
    swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v12[10] = *(a1 + 160);
  v12[11] = v1;
  v13 = *(a1 + 192);
  v2 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v2;
  v3 = *(a1 + 144);
  v12[8] = *(a1 + 128);
  v12[9] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v5;
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v12);
  if (v7)
  {
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = v13;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09EmphasizecD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v14[10] = *(a1 + 160);
  v14[11] = v1;
  v15 = *(a1 + 192);
  v2 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v2;
  v3 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v3;
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v7 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09EmphasizecD0V_Tt1B5(v14);
  if (v8)
  {
    v9 = &protocol witness table for EmphasizeActionHandler;
    v10 = &type metadata for EmphasizeActionHandler;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v9 = 0;
    v13[2] = 0;
  }

  v13[0] = v7;
  v13[1] = v8;
  v13[3] = v10;
  v13[4] = v9;
  v11 = v15;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA09PlayAudiocD0V_Tt0B5(v9);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0B5Tm(v9, MEMORY[0x1E6998798]);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA09PlayAudiocD0V_Tt0G5Tm(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  v21 = *(a1 + 192);
  v22 = v3;
  v23 = *(a1 + 224);
  v24 = *(a1 + 240);
  v4 = *(a1 + 144);
  v17 = *(a1 + 128);
  v18 = v4;
  v5 = *(a1 + 176);
  v19 = *(a1 + 160);
  v20 = v5;
  v6 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v6;
  v7 = *(a1 + 112);
  v15 = *(a1 + 96);
  v16 = v7;
  v8 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v8;
  v9 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v14);
  if (result != 1)
  {
    v11 = result;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, v15, &type metadata for PlayAudioAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v12 = v24;
    v13[3] = &type metadata for PlayAudioActionHandler;
    v13[4] = &protocol witness table for PlayAudioActionHandler;
    v13[0] = v11;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v13, v12);
    swift_endAccess();
    return sub_1C136529C(v11);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA09PlayAudiocD0V_Tt0B5Tm(v9, MEMORY[0x1E6998768]);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v9[12] = *(a1 + 192);
  v9[13] = v1;
  v9[14] = *(a1 + 224);
  v10 = *(a1 + 240);
  v2 = *(a1 + 144);
  v9[8] = *(a1 + 128);
  v9[9] = v2;
  v3 = *(a1 + 176);
  v9[10] = *(a1 + 160);
  v9[11] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v5;
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v7 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v7;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA09PlayAudiocD0V_Tt0B5(v9);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  v8 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v13);
  if (v8 != 1)
  {
    sub_1C136529C(v8);
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = v14;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA09PlayAudiocD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v14[12] = *(a1 + 192);
  v14[13] = v1;
  v14[14] = *(a1 + 224);
  v15 = *(a1 + 240);
  v2 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v2;
  v3 = *(a1 + 176);
  v14[10] = *(a1 + 160);
  v14[11] = v3;
  v4 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v4;
  v5 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v7 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09PlayAudiocD0V_Tt1B5(v14);
  if (v8 == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  else
  {
    v10 = &protocol witness table for PlayAudioActionHandler;
    v9 = &type metadata for PlayAudioActionHandler;
  }

  v13[0] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v11 = v15;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5Tm(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, __dst[19], &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation23SetEntityPropertyActionVy0A3Kit9TransformVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v4 = __dst[37];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    v7 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Transform> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v5, v4);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5Tm(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(__dst);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[37];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Transform> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0Vy0A3Kit9TransformVG_Tt1B5(__dst))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Transform> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVy0A3Kit9TransformVGMR);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySSG_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v4 = a1[15];
  v25 = a1[14];
  v26 = v4;
  v5 = a1[9];
  v19 = a1[8];
  v20 = v5;
  v6 = a1[11];
  v21 = a1[10];
  v22 = v6;
  v7 = a1[5];
  v16[4] = a1[4];
  v16[5] = v7;
  v8 = a1[7];
  v17 = a1[6];
  v18 = v8;
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a1[3];
  v16[2] = a1[2];
  v16[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v16);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, *(&v17 + 1), &_s17RealityFoundation23SetEntityPropertyActionVySSGMd, &_s17RealityFoundation23SetEntityPropertyActionVySSGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v12 = *(&v26 + 1);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    v15 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<String> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v13, v12);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySSG_Tt0G5Tm(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v14);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v14);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v10 = *(&v15 + 1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<String> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v11, v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySSG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v2 = a1[15];
  v13[14] = a1[14];
  v14 = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[11];
  v13[10] = a1[10];
  v13[11] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[7];
  v13[6] = a1[6];
  v13[7] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v8 = a1[3];
  v13[2] = a1[2];
  v13[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v14 + 1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySSG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySSG_Tt1B5(v14))
  {
    v9 = 0;
    v10 = 0;
    memset(v13, 0, 24);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
    v10 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<String> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySSGMR);
  }

  v13[3] = v9;
  v13[4] = v10;
  v11 = *(&v15 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySbG_Tt0G5Tm(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v13);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = *(&v14 + 1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Bool> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySbG_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v25 = a1[14];
  v4 = a1[9];
  v19 = a1[8];
  v20 = v4;
  v5 = a1[11];
  v21 = a1[10];
  v22 = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v16 = v6;
  v7 = a1[7];
  v17 = a1[6];
  v18 = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v15, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, *(&v16 + 1), &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v11 = *(&v25 + 1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    v14 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Bool> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v12, v11);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySbG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v12[12] = a1[12];
  v12[13] = v1;
  v13 = a1[14];
  v2 = a1[9];
  v12[8] = a1[8];
  v12[9] = v2;
  v3 = a1[11];
  v12[10] = a1[10];
  v12[11] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[7];
  v12[6] = a1[6];
  v12[7] = v5;
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v12, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = *(&v13 + 1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySbG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySbGMd, &_s17RealityFoundation23SetEntityPropertyActionVySbGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Bool> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySbGMR);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = *(&v14 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, v14, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySiG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = v14;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[33];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[33];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[15], &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5Tm(void *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, a2, a3, a4, a5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = __dst[33];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR))
  {
    v1 = 0;
    v2 = 0;
    memset(v5, 0, 24);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v2 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  }

  v5[3] = v1;
  v5[4] = v2;
  v3 = __dst[33];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v3);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, v14, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = v14;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(2, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v20 = *(a1 + 192);
  v21 = v1;
  v22 = *(a1 + 224);
  v23 = *(a1 + 240);
  v2 = *(a1 + 144);
  v16 = *(a1 + 128);
  v17 = v2;
  v3 = *(a1 + 176);
  v18 = *(a1 + 160);
  v19 = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v14 = *(a1 + 96);
  v15 = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, v14, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v23;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySiG_Tt0G5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 208);
  v16[12] = *(a1 + 192);
  v16[13] = v5;
  v16[14] = *(a1 + 224);
  v17 = *(a1 + 240);
  v6 = *(a1 + 144);
  v16[8] = *(a1 + 128);
  v16[9] = v6;
  v7 = *(a1 + 176);
  v16[10] = *(a1 + 160);
  v16[11] = v7;
  v8 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v8;
  v9 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v9;
  v10 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v10;
  v11 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v11;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v16, a2, a3, a4, a5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v12 = v17;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v14, v12);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySdG_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = v14;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySfG_Tt0G5Tm(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v13);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = *(&v14 + 1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Float> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA017SetEntityPropertycD0VySfG_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v25 = a1[14];
  v4 = a1[9];
  v19 = a1[8];
  v20 = v4;
  v5 = a1[11];
  v21 = a1[10];
  v22 = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v16 = v6;
  v7 = a1[7];
  v17 = a1[6];
  v18 = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v15, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, *(&v16 + 1), &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v11 = *(&v25 + 1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    v14 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Float> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v12, v11);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA017SetEntityPropertycD0VySfG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v12[12] = a1[12];
  v12[13] = v1;
  v13 = a1[14];
  v2 = a1[9];
  v12[8] = a1[8];
  v12[9] = v2;
  v3 = a1[11];
  v12[10] = a1[10];
  v12[11] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[7];
  v12[6] = a1[6];
  v12[7] = v5;
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v7 = a1[3];
  v12[2] = a1[2];
  v12[3] = v7;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v12, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = *(&v13 + 1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA017SetEntityPropertycD0VySfG_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v14 = a1[14];
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v3 = a1[11];
  v13[10] = a1[10];
  v13[11] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySbG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySfGMd, &_s17RealityFoundation23SetEntityPropertyActionVySfGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
    v9 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Float> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySfGMR);
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = *(&v14 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA17BlendShapeWeightsVGMR, v3);
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*&v3[0]);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAA15JointTransformsVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VyAA17BlendShapeWeightsVG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMd, &_s17RealityFoundation21FromToByActionHandlerVyAA15JointTransformsVGMR, v3);
  _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(*&v3[0]);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

void _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VyAE9TransformVG_Tt0G5Tm(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(__dst, v8);
  if ((v9 & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, __dst[39], &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMd, &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v3 = __dst[57];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Transform> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v4 = swift_allocObject();
    v7[0] = v4;
    v5 = v8[1];
    v4[1] = v8[0];
    v4[2] = v5;
    v6 = v8[3];
    v4[3] = v8[2];
    v4[4] = v6;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v3);
    swift_endAccess();
  }
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(__dst, v5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[57];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VyAE9TransformVG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vy0A3Kit9TransformVG_Tt1B5(__dst, v9);
  if (v10)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Transform> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMd, &_s17RealityFoundation21FromToByActionHandlerVy0A3Kit9TransformVGMR);
    v1 = swift_allocObject();
    v4 = v9[1];
    v1[1] = v9[0];
    v1[2] = v4;
    v5 = v9[3];
    v1[3] = v9[2];
    v1[4] = v5;
  }

  v8[0] = v1;
  v8[3] = v2;
  v8[4] = v3;
  v6 = __dst[57];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v8, v6);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[27], &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGMR, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR, &v10);
  if (v13)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v4 = v12;
    v5 = v11;
    v6 = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<simd_quatf> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation21FromToByActionHandlerVySo10simd_quatfaGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    *(v1 + 32) = v5 & 1;
    *(v1 + 40) = v4;
  }

  v9[0] = v1;
  v9[3] = v2;
  v9[4] = v3;
  v7 = __dst[45];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD4VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR, &v10);
  if (v13)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v4 = v12;
    v5 = v11;
    v6 = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD4<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD4VySfGGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    *(v1 + 32) = v5 & 1;
    *(v1 + 40) = v4;
  }

  v9[0] = v1;
  v9[3] = v2;
  v9[4] = v3;
  v7 = __dst[45];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v8);
  if ((v11 & 1) == 0)
  {
    v2 = v8;
    v3 = v10;
    v4 = v9;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[27], &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v5 = __dst[45];
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v7[4] = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v6 = swift_allocObject();
    v7[0] = v6;
    *(v6 + 16) = v2;
    *(v6 + 32) = v4 & 1;
    *(v6 + 40) = v3;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v7, v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VySo10simd_quatfaG_Tt0G5Tm(void *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, a2, a3, a4, a5, v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = __dst[45];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD3VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR, &v10);
  if (v13)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  else
  {
    v4 = v12;
    v5 = v11;
    v6 = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v3 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD3<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD3VySfGGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    *(v1 + 32) = v5 & 1;
    *(v1 + 40) = v4;
  }

  v9[0] = v1;
  v9[3] = v2;
  v9[4] = v3;
  v7 = __dst[45];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[21], &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
  }

  else
  {
    v5 = v1;
    v9 = v2;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<SIMD2<Float>> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation21FromToByActionHandlerVys5SIMD2VySfGGMR);
    LOBYTE(v13) = v9 & 1;
  }

  v12 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = __dst[39];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(1, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(4, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(8, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(16, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(32, __dst[21], &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[39];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v9 = v5;
    v10 = v6 & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0Vys5SIMD2VySfGG_Tt0G5Tm(void *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, a2, a3, a4, a5);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = __dst[39];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySdG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0Vys5SIMD2VySfGG_Tt1B5Tm(__dst, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
  }

  else
  {
    v5 = v1;
    v9 = v2;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    v8 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Double> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySdGMd, &_s17RealityFoundation21FromToByActionHandlerVySdGMR);
    LOBYTE(v13) = v9 & 1;
  }

  v12 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v10 = __dst[39];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA08FromToBycD0VySfG_Tt0G5Tm(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(__dst);
  if ((v5 & 1) == 0)
  {
    v6 = result;
    v7 = v4;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA03Setc8PropertyD0VyAH9TransformVG_Tt1B5Tm(a2, __dst[19], &_s17RealityFoundation14FromToByActionVySfGMd, &_s17RealityFoundation14FromToByActionVySfGMR);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = __dst[37];
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v9 = v6;
    v10 = BYTE4(v6) & 1;
    v13 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Float> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v11 = v7;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA08FromToBycD0VySfG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(__dst);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[37];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA08FromToBycD0VySfG_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA08FromToBycD0VySfG_Tt1B5(__dst);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v10[0] = 0;
    v10[2] = 0;
  }

  else
  {
    v7 = v1;
    v4 = v2;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    v6 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type FromToByActionHandler<Float> and conformance FromToByActionHandler<A>, &_s17RealityFoundation21FromToByActionHandlerVySfGMd, &_s17RealityFoundation21FromToByActionHandlerVySfGMR);
    LODWORD(v10[0]) = v7;
    BYTE4(v10[0]) = BYTE4(v7) & 1;
  }

  v10[1] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v8 = __dst[37];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA09BillboardcD0V_Tt0G5(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA09BillboardcD0V_Tt1B5(__dst, v3);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v1 = __dst[35];
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v3, v1);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA04SpincD0V_Tt0G5(__int128 *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA04SpincD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA04SpincD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA04SpincD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA04SpincD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v27 = a1[12];
  v28 = v3;
  v4 = a1[15];
  v29 = a1[14];
  v30 = v4;
  v5 = a1[9];
  v23 = a1[8];
  v24 = v5;
  v6 = a1[11];
  v25 = a1[10];
  v26 = v6;
  v7 = a1[5];
  v20[4] = a1[4];
  v20[5] = v7;
  v8 = a1[7];
  v21 = a1[6];
  v22 = v8;
  v9 = a1[1];
  v20[0] = *a1;
  v20[1] = v9;
  v10 = a1[3];
  v20[2] = a1[2];
  v20[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v20);
  if ((v13 & 0x100) == 0)
  {
    v14 = result;
    v15 = v12;
    v16 = v13;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v21 + 1), &type metadata for SpinAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v17 = *(&v30 + 1);
    v19[3] = &type metadata for SpinActionHandler;
    v19[4] = &protocol witness table for SpinActionHandler;
    v18 = swift_allocObject();
    v19[0] = v18;
    *(v18 + 16) = v14;
    *(v18 + 24) = v15;
    *(v18 + 32) = v16 & 1;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v19, v17);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA04SpincD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v2 = a1[15];
  v13[14] = a1[14];
  v14 = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[11];
  v13[10] = a1[10];
  v13[11] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[7];
  v13[6] = a1[6];
  v13[7] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v8 = a1[3];
  v13[2] = a1[2];
  v13[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v14 + 1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA04SpincD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v21[12] = a1[12];
  v21[13] = v1;
  v2 = a1[15];
  v21[14] = a1[14];
  v22 = v2;
  v3 = a1[9];
  v21[8] = a1[8];
  v21[9] = v3;
  v4 = a1[11];
  v21[10] = a1[10];
  v21[11] = v4;
  v5 = a1[5];
  v21[4] = a1[4];
  v21[5] = v5;
  v6 = a1[7];
  v21[6] = a1[6];
  v21[7] = v6;
  v7 = a1[1];
  v21[0] = *a1;
  v21[1] = v7;
  v8 = a1[3];
  v21[2] = a1[2];
  v21[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA04SpincD0V_Tt1B5(v21);
  if ((v11 & 0x100) != 0)
  {
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v20[1] = 0;
    v20[2] = 0;
  }

  else
  {
    v12 = v9;
    v13 = v10;
    v14 = v11;
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v13;
    *(v15 + 32) = v14 & 1;
    v16 = &protocol witness table for SpinActionHandler;
    v17 = &type metadata for SpinActionHandler;
  }

  v20[0] = v15;
  v20[3] = v17;
  v20[4] = v16;
  v18 = *(&v22 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v20, v18);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0B5Tm(v10, OrbitEntityActionHandler.actionStarted(event:));
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA011OrbitEntitycD0V_Tt0B5Tm(v10, OrbitEntityActionHandler.actionUpdated(event:));
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 4);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU2_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 8);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU3_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 16);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU4_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA011OrbitEntitycD0V_Tt0B5Tm(v10, 32);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v35[12] = a1[12];
  v35[13] = v1;
  v2 = a1[15];
  v35[14] = a1[14];
  v36 = v2;
  v3 = a1[9];
  v35[8] = a1[8];
  v35[9] = v3;
  v4 = a1[11];
  v35[10] = a1[10];
  v35[11] = v4;
  v5 = a1[5];
  v35[4] = a1[4];
  v35[5] = v5;
  v6 = a1[7];
  v35[6] = a1[6];
  v35[7] = v6;
  v7 = a1[1];
  v35[0] = *a1;
  v35[1] = v7;
  v8 = a1[3];
  v35[2] = a1[2];
  v35[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA011OrbitEntitycD0V_Tt1B5(v35, &v23);
  v37[8] = v31;
  v37[9] = v32;
  v37[10] = v33;
  v37[11] = v34;
  v37[4] = v27;
  v37[5] = v28;
  v37[6] = v29;
  v37[7] = v30;
  v37[0] = v23;
  v37[1] = v24;
  v37[2] = v25;
  v37[3] = v26;
  _s17RealityFoundation24OrbitEntityActionHandlerVSgWOg(v37);
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  outlined destroy of BodyTrackingComponent?(&v11, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMd, &_s17RealityFoundation24OrbitEntityActionHandlerVSgMR);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v36 + 1);
  *&v13 = 0;
  v11 = 0u;
  v12 = 0u;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(&v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA011OrbitEntitycD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA011OrbitEntitycD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA07ImpulsecD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v23 = a1[12];
  v24 = v3;
  v4 = a1[15];
  v25 = a1[14];
  v26 = v4;
  v5 = a1[9];
  v19 = a1[8];
  v20 = v5;
  v6 = a1[11];
  v21 = a1[10];
  v22 = v6;
  v7 = a1[5];
  v16[4] = a1[4];
  v16[5] = v7;
  v8 = a1[7];
  v17 = a1[6];
  v18 = v8;
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v10 = a1[3];
  v16[2] = a1[2];
  v16[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(v16);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v17 + 1), &type metadata for ImpulseAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v12 = *(&v26 + 1);
    v14 = &type metadata for ImpulseActionHandler;
    v15 = &protocol witness table for ImpulseActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v13, v12);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA07ImpulsecD0V_Tt0G5Tm(float32x4_t *a1)
{
  v1 = a1[13];
  v39 = a1[12];
  v40 = v1;
  v2 = a1[15];
  v41 = a1[14];
  v42 = v2;
  v3 = a1[9];
  v35 = a1[8];
  v36 = v3;
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[5];
  v31 = a1[4];
  v32 = v5;
  v6 = a1[7];
  v33 = a1[6];
  v34 = v6;
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(&v27);
  if ((result & 1) == 0)
  {
    v24 = v40;
    v25 = v41;
    v26 = v42;
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v15 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v11 = v27;
    v12 = v28;
    v13 = v29;
    v14 = v30;
    specialized ImpulseActionHandler.applyImpulse(event:)(&v11);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v10 = v42.i64[1];
    v12.i64[1] = &type metadata for ImpulseActionHandler;
    v13.i64[0] = &protocol witness table for ImpulseActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v11, v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA07ImpulsecD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v13[12] = a1[12];
  v13[13] = v1;
  v2 = a1[15];
  v13[14] = a1[14];
  v14 = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[11];
  v13[10] = a1[10];
  v13[11] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[7];
  v13[6] = a1[6];
  v13[7] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v8 = a1[3];
  v13[2] = a1[2];
  v13[3] = v8;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(v13);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = *(&v14 + 1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA07ImpulsecD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA07ImpulsecD0V_Tt1B5(v14))
  {
    v9 = 0;
    v10 = 0;
    memset(v13, 0, 24);
  }

  else
  {
    v10 = &protocol witness table for ImpulseActionHandler;
    v9 = &type metadata for ImpulseActionHandler;
  }

  v13[3] = v9;
  v13[4] = v10;
  v11 = *(&v15 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v13, v11);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA016SetEntityEnabledcD0V_Tt0G5Tm(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 176);
  v21 = *(a1 + 160);
  v22 = v3;
  v23 = *(a1 + 192);
  v24 = *(a1 + 208);
  v4 = *(a1 + 112);
  v17 = *(a1 + 96);
  v18 = v4;
  v5 = *(a1 + 144);
  v19 = *(a1 + 128);
  v20 = v5;
  v6 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v6;
  v7 = *(a1 + 80);
  v15 = *(a1 + 64);
  v16 = v7;
  v8 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v8;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(v14);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, v15, &type metadata for SetEntityEnabledAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v10 = v24;
    v12 = &type metadata for SetEntityEnabledActionHandler;
    v13 = &protocol witness table for SetEntityEnabledActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v11, v10);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA016SetEntityEnabledcD0V_Tt0G5Tm(__int128 *a1)
{
  v1 = a1[11];
  v33 = a1[10];
  v34 = v1;
  v35 = a1[12];
  v36 = *(a1 + 26);
  v2 = a1[7];
  v29 = a1[6];
  v30 = v2;
  v3 = a1[9];
  v31 = a1[8];
  v32 = v3;
  v4 = a1[3];
  v25 = a1[2];
  v26 = v4;
  v5 = a1[5];
  v27 = a1[4];
  v28 = v5;
  v6 = a1[1];
  v23 = *a1;
  v24 = v6;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(&v23);
  if ((result & 1) == 0)
  {
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    v22 = v36;
    v18 = v32;
    v19 = v33;
    v11 = v25;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v9 = v23;
    v10 = v24;
    specialized SetEntityEnabledActionHandler.setEntityEnabled(event:)(&v9);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v8 = v36;
    *(&v10 + 1) = &type metadata for SetEntityEnabledActionHandler;
    *&v11 = &protocol witness table for SetEntityEnabledActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v9, v8);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA016SetEntityEnabledcD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v1;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v3 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v5;
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(v11);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v7 = v12;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v9, v7);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA016SetEntityEnabledcD0V_Tt0G5(uint64_t a1)
{
  v1 = *(a1 + 176);
  v12[10] = *(a1 + 160);
  v12[11] = v1;
  v12[12] = *(a1 + 192);
  v13 = *(a1 + 208);
  v2 = *(a1 + 112);
  v12[6] = *(a1 + 96);
  v12[7] = v2;
  v3 = *(a1 + 144);
  v12[8] = *(a1 + 128);
  v12[9] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v5;
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA016SetEntityEnabledcD0V_Tt1B5(v12))
  {
    v7 = 0;
    v8 = 0;
    memset(v11, 0, 24);
  }

  else
  {
    v8 = &protocol witness table for SetEntityEnabledActionHandler;
    v7 = &type metadata for SetEntityEnabledActionHandler;
  }

  v11[3] = v7;
  v11[4] = v8;
  v9 = v13;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v11, v9);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA012NotificationcD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[11];
  v22 = a1[10];
  v23 = v3;
  v4 = a1[13];
  v24 = a1[12];
  v25 = v4;
  v5 = a1[7];
  v18 = a1[6];
  v19 = v5;
  v6 = a1[9];
  v20 = a1[8];
  v21 = v6;
  v7 = a1[3];
  v15[2] = a1[2];
  v15[3] = v7;
  v8 = a1[5];
  v16 = a1[4];
  v17 = v8;
  v9 = a1[1];
  v15[0] = *a1;
  v15[1] = v9;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(v15);
  if ((result & 1) == 0)
  {
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v16 + 1), &type metadata for NotificationAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v11 = *(&v25 + 1);
    v13 = &type metadata for NotificationActionHandler;
    v14 = &protocol witness table for NotificationActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v12, v11);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA012NotificationcD0V_Tt0G5Tm(__int128 *a1)
{
  v1 = a1[11];
  v34 = a1[10];
  v35 = v1;
  v2 = a1[13];
  v36 = a1[12];
  v37 = v2;
  v3 = a1[7];
  v30 = a1[6];
  v31 = v3;
  v4 = a1[9];
  v32 = a1[8];
  v33 = v4;
  v5 = a1[3];
  v26 = a1[2];
  v27 = v5;
  v6 = a1[5];
  v28 = a1[4];
  v29 = v6;
  v7 = a1[1];
  v24 = *a1;
  v25 = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(&v24);
  if ((result & 1) == 0)
  {
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v12 = v26;
    v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v10 = v24;
    v11 = v25;
    specialized NotificationActionHandler.postNotification(event:)(&v10);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = *(&v37 + 1);
    *(&v11 + 1) = &type metadata for NotificationActionHandler;
    *&v12 = &protocol witness table for NotificationActionHandler;
    swift_beginAccess();
    specialized Dictionary.subscript.setter(&v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA012NotificationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[11];
  v12[10] = a1[10];
  v12[11] = v1;
  v2 = a1[13];
  v12[12] = a1[12];
  v13 = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[9];
  v12[8] = a1[8];
  v12[9] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = a1[5];
  v12[4] = a1[4];
  v12[5] = v6;
  v7 = a1[1];
  v12[0] = *a1;
  v12[1] = v7;
  _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(v12);
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v8 = *(&v13 + 1);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v10, v8);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA012NotificationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[11];
  v13[10] = a1[10];
  v13[11] = v1;
  v2 = a1[13];
  v13[12] = a1[12];
  v14 = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[9];
  v13[8] = a1[8];
  v13[9] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = a1[5];
  v13[4] = a1[4];
  v13[5] = v6;
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  if (_s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA012NotificationcD0V_Tt1B5(v13))
  {
    v8 = 0;
    v9 = 0;
    memset(v12, 0, 24);
  }

  else
  {
    v9 = &protocol witness table for NotificationActionHandler;
    v8 = &type metadata for NotificationActionHandler;
  }

  v12[3] = v8;
  v12[4] = v9;
  v10 = *(&v14 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA013PlayAnimationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU1_AA013PlayAnimationcD0V_Tt0B5(v10);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU0_AA013PlayAnimationcD0V_Tt0G5Tm(_OWORD *a1, uint64_t a2)
{
  v3 = a1[13];
  v22 = a1[12];
  v23 = v3;
  v4 = a1[15];
  v24 = a1[14];
  v25 = v4;
  v5 = a1[9];
  v18 = a1[8];
  v19 = v5;
  v6 = a1[11];
  v20 = a1[10];
  v21 = v6;
  v7 = a1[5];
  v15[4] = a1[4];
  v15[5] = v7;
  v8 = a1[7];
  v16 = a1[6];
  v17 = v8;
  v9 = a1[1];
  v15[0] = *a1;
  v15[1] = v9;
  v10 = a1[3];
  v15[2] = a1[2];
  v15[3] = v10;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(v15);
  if (result != 1)
  {
    v12 = result;
    _s17RealityFoundation12EntityActionPAAE13__unsubscribe4from_yAA0D9EventTypeV_0A3Kit8__EngineCSgtFZAA09EmphasizeD0V_Tt1B5Tm(a2, *(&v16 + 1), &type metadata for PlayAnimationAction);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v13 = *(&v25 + 1);
    v14[3] = &type metadata for PlayAnimationActionHandler;
    v14[4] = &protocol witness table for PlayAnimationActionHandler;
    v14[0] = v12;
    swift_beginAccess();

    specialized Dictionary.subscript.setter(v14, v13);
    swift_endAccess();
    return sub_1C136529C(v12);
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU5_AA013PlayAnimationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v14[12] = a1[12];
  v14[13] = v1;
  v2 = a1[15];
  v14[14] = a1[14];
  v15 = v2;
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v4 = a1[11];
  v14[10] = a1[10];
  v14[11] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[7];
  v14[6] = a1[6];
  v14[7] = v6;
  v7 = a1[1];
  v14[0] = *a1;
  v14[1] = v7;
  v8 = a1[3];
  v14[2] = a1[2];
  v14[3] = v8;
  v9 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(v14);
  if (v9 != 1)
  {
    sub_1C136529C(v9);
  }

  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v10 = *(&v15 + 1);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v12, v10);
  return swift_endAccess();
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU6_AA013PlayAnimationcD0V_Tt0G5(_OWORD *a1)
{
  v1 = a1[13];
  v15[12] = a1[12];
  v15[13] = v1;
  v2 = a1[15];
  v15[14] = a1[14];
  v16 = v2;
  v3 = a1[9];
  v15[8] = a1[8];
  v15[9] = v3;
  v4 = a1[11];
  v15[10] = a1[10];
  v15[11] = v4;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = v5;
  v6 = a1[7];
  v15[6] = a1[6];
  v15[7] = v6;
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  v8 = a1[3];
  v15[2] = a1[2];
  v15[3] = v8;
  if (one-time initialization token for actionHandlers != -1)
  {
    swift_once();
  }

  v9 = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA013PlayAnimationcD0V_Tt1B5(v15);
  if (v9 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  else
  {
    v11 = &protocol witness table for PlayAnimationActionHandler;
    v10 = &type metadata for PlayAnimationActionHandler;
  }

  v14[0] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v12 = *(&v16 + 1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v14, v12);
  return swift_endAccess();
}

uint64_t specialized __Engine.Configuration.device.setter(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (REGetRetainCount() <= 1)
  {
    v10 = *(v4 + 16);
  }

  else
  {
    v6 = *(*v2 + 16);

    v7 = REEngineConfigurationClone();
    type metadata accessor for EngineConfiguration();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    v9 = *v2;

    v10 = v7;
    *v2 = v8;
  }

  return a2(v10, a1);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t keypath_get_55Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v4 = a2(*(*a1 + 16));
  result = __Engine.Configuration.toServiceSet(_:)(v4);
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TurbulenceForceEffect and conformance TurbulenceForceEffect()
{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect;
  if (!lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TurbulenceForceEffect and conformance TurbulenceForceEffect);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Atomic.store(_:)(uint64_t *a1)
{
  return specialized closure #1 in Atomic.store(_:)(a1, *(v1 + 16));
}

{
  return partial apply for specialized closure #1 in Atomic.store(_:)(a1);
}

{
  v3 = **(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

uint64_t partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  v3 = *(v2 + 24);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  v3 = *(v2 + 24);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  v3 = *(v2 + 24);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  v3 = *(v2 + 24);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

{
  v3 = *(v2 + 24);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static ForceEffectProtocol<>.__register(engine:_:)(a1, a2, *(v2 + 16));
}

unint64_t lazy protocol witness table accessor for type DragForceEffect and conformance DragForceEffect()
{
  result = lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect;
  if (!lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect;
  if (!lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragForceEffect and conformance DragForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VortexForceEffect and conformance VortexForceEffect()
{
  result = lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect;
  if (!lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect;
  if (!lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VortexForceEffect and conformance VortexForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadialForceEffect and conformance RadialForceEffect()
{
  result = lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect;
  if (!lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect;
  if (!lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadialForceEffect and conformance RadialForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect()
{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantRadialForceEffect and conformance ConstantRadialForceEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConstantForceEffect and conformance ConstantForceEffect()
{
  result = lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect;
  if (!lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConstantForceEffect and conformance ConstantForceEffect);
  }

  return result;
}

uint64_t partial apply for specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

{
  v10 = *(v9 + 24);
  return specialized creationWrapper #1 <A>(playbackController:eventData:reversed:startTime:duration:engine:instanceID:targetEntity:) in static ActionHandlerProtocol.__registerCommon(engine:_:)(a1, a2, a3, a4, a5, a6, *(v9 + 16), a7, a8, a9);
}

uint64_t partial apply for specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  v3 = *(v2 + 40);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySiGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySiGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySiGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySiGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySiGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySiGGMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySo10simd_quatfaGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySo10simd_quatfaGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySo10simd_quatfaGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGSgMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0Vys5SIMD2VySfGGGMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySdGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA03Setc8PropertyD0VySdGGMR, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySdGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA03Setc8PropertyD0VySdGGMR, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySdGGMd, &_s17RealityFoundation11ActionEventVyAA017SetEntityPropertyC0VySdGGMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMR, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA17BlendShapeWeightsVGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA17BlendShapeWeightsVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA17BlendShapeWeightsVGGMR, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGSgMd, &_s17RealityFoundation14FromToByActionVyAA17BlendShapeWeightsVGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMR, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VyAA15JointTransformsVGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA15JointTransformsVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VyAA15JointTransformsVGGMR, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGSgMd, &_s17RealityFoundation14FromToByActionVyAA15JointTransformsVGSgMR);
}

{
  v3 = *(v2 + 40);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), specialized ActionEventData.action<A>(), _s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySo10simd_quatfaGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySo10simd_quatfaGGMR, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMd, &_s17RealityFoundation14FromToByActionVySo10simd_quatfaGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), specialized ActionEventData.action<A>(), _s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD4VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), specialized ActionEventData.action<A>(), _s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD3VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD3VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD2VySfGGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vys5SIMD2VySfGGGMR, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGSgMd, &_s17RealityFoundation14FromToByActionVys5SIMD2VySfGGSgMR);
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySdGGMd, &_s17RealityFoundation19EntityActionWrapperCyAA08FromToByD0VySdGGMR, &_s17RealityFoundation14FromToByActionVySdGMd, &_s17RealityFoundation14FromToByActionVySdGMR, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySdGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySdGGMR, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySdGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySdGGMR, &_s17RealityFoundation14FromToByActionVySdGSgMd, &_s17RealityFoundation14FromToByActionVySdGSgMR);
}

{
  v3 = *(v2 + 40);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  v3 = *(v2 + 40);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  v3 = *(v2 + 40);
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

{
  return specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

void specialized FromToByActionHandler.getStartEnd(event:base:)(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  v5 = a4;
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 64);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  v14 = *(a1 + 144);
  v13 = *(a1 + 152);
  v15 = *(a1 + 192);
  if (v9)
  {
    v16 = a3;
    v17 = a5;
    if (*(a1 + 128))
    {
      goto LABEL_3;
    }
  }

  v54 = *(a1 + 96);
  v55 = *(a1 + 80);
  v56 = *(a1 + 112);
  v59 = *(a1 + 104);
  v62 = *(a1 + 120);
  v65 = *(a1 + 144);
  v66 = *(a1 + 152);
  v67 = *(a1 + 160);
  v68 = *(a1 + 168);
  v69 = *(a1 + 176);
  v53 = *(a1 + 184);
  v74 = a3;
  v77 = a4;
  v71 = *(a1 + 32);
  v72 = a5;
  v70 = *(a1 + 48);
  v20 = *a1;
  v83 = *(a1 + 232);
  v84 = *(a1 + 248);
  v21 = *(a1 + 280);
  outlined init with copy of [String : String](a1, &v79, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  specialized FromToByActionHandler<>.getFromToToParent(transformMode:playbackController:targetEntity:base:)(&v83, v20, v21, &v79, v74, v77, v72);
  if ((v82 & 1) == 0)
  {
    v27 = v79;
    v28 = *&v80;
    v29 = *&v81;
    if (v9)
    {
      if (v12)
      {
        outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
        a3 = v74;
        v5 = v77;
        v16 = v74;
        a4 = v77;
        a5 = v72;
        v17 = v72;
        v13 = v66;
        v14 = v65;
        goto LABEL_3;
      }
    }

    else
    {
      v30.i64[0] = v8;
      v30.i64[1] = v7;
      v51 = *&v80;
      v52 = v79;
      v50 = *&v81;
      *&v31 = specialized static Transform.* infix(_:_:)(v79, *&v80, *&v81, v30);
      v7 = v32;
      v8 = v31;
      v70 = v34;
      v71 = v33;
      if (v12)
      {
        outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
        v17 = v70;
        a4 = v71;
        v35 = 1;
        a3 = v74;
        v5 = v77;
        v13 = v66;
        v14 = v65;
        v36 = v62;
        v37 = v59;
        v39 = v55;
        v38 = v56;
        v40 = v54;
LABEL_22:
        v16.i64[0] = v8;
        v16.i64[1] = v7;
        if ((v35 & 1) == 0)
        {
          a3.n128_u64[0] = v39;
          a3.n128_u64[1] = v10;
          v18.n128_u64[0] = v40;
          v18.n128_u64[1] = v37;
          v19.n128_u64[0] = v38;
          v19.n128_u64[1] = v36;
LABEL_10:
          v23 = 0;
          goto LABEL_11;
        }

        a5 = v72;
LABEL_3:
        if (v15)
        {
          v18 = v5;
          v19 = a5;
        }

        else
        {
          v24.i64[0] = v14;
          v24.i64[1] = v13;
          v75 = v17;
          v78 = v16;
          v73 = a4;
          a3.n128_f64[0] = specialized static Transform.* infix(_:_:)(v16, a4.n128_f64[0], v17.n128_f64[0], v24);
          v17 = v75;
          v16 = v78;
          v18 = v25;
          v19 = v26;
          a4 = v73;
        }

        goto LABEL_10;
      }

      v28 = v51;
      v27 = v52;
      v29 = v50;
    }

    v41.i64[0] = v55;
    v41.i64[1] = v10;
    *v42.i64 = specialized static Transform.* infix(_:_:)(v27, v28, v29, v41);
    v60 = v43;
    v63 = v42;
    v57 = v44;
    outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
    v19.n128_u64[0] = v57;
    v18.n128_u64[0] = v60;
    v10 = v63.i64[1];
    v45.n128_u64[0] = v63.i64[0];
    v37 = *(&v60 + 1);
    v36 = *(&v57 + 1);
    if (v9)
    {
      v45.n128_u64[1] = v63.u64[1];
      v18.n128_u64[1] = *(&v60 + 1);
      v19.n128_u64[1] = *(&v57 + 1);
      v16 = v74;
      a4 = v77;
      if (v15)
      {
        v17 = v72;
        a3 = v45;
      }

      else
      {
        v58 = v19;
        v61 = v18;
        v64 = v45;
        RESRTInverse();
        v47 = v46;
        if (one-time initialization token for identity != -1)
        {
          v76 = v46;
          swift_once();
          v47 = v76;
        }

        *v48.i64 = specialized static Transform.* infix(_:_:)(v64, v61.n128_f64[0], v58.n128_f64[0], v47);
        v19 = v58;
        v18 = v61;
        v16 = v48;
        a3 = v64;
        v17 = v49;
      }

      goto LABEL_10;
    }

    v39 = v63.i64[0];
    v40 = v60;
    v38 = v57;
    v35 = 0;
    v17 = v70;
    a4 = v71;
    a3 = v74;
    v5 = v77;
    v13 = v66;
    v14 = v65;
    goto LABEL_22;
  }

  outlined destroy of BodyTrackingComponent?(a1, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR);
  v23 = 1;
  v16 = 0uLL;
  a4 = 0uLL;
  v17 = 0uLL;
  a3 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
LABEL_11:
  *a2 = v16;
  *(a2 + 16) = a4;
  *(a2 + 32) = v17;
  *(a2 + 48) = a3;
  *(a2 + 64) = v18;
  *(a2 + 80) = v19;
  *(a2 + 96) = v23;
}

void specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if ((*(a1 + 368) & 1) == 0)
  {
    v8 = *(a1 + 360);
    specialized ActionEvent.animationState.getter(&v50);
    v9 = *(&v51 + 1);
    if (*(&v51 + 1))
    {
      v10 = v52.i64[0];
      __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v38.i64[0] = *(v10 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v12 = type metadata accessor for Optional();
      v39.i64[0] = v32;
      v37.i64[0] = v12;
      v13 = *(v12 - 8);
      v14 = *(v13 + 64);
      MEMORY[0x1EEE9AC00](v12);
      v16 = v32 - v15;
      (v38.i64[0])(v9, v10);
      v17 = *(AssociatedTypeWitness - 8);
      if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
      {
        (*(v13 + 8))(v16, v37.i64[0]);
        AssociatedConformanceWitness = 0;
        v47 = 0u;
        v48 = 0u;
      }

      else
      {
        *(&v48 + 1) = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
        (*(v17 + 32))(boxed_opaque_existential_1, v16, AssociatedTypeWitness);
      }

      __swift_destroy_boxed_opaque_existential_1(&v50);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v50, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
      v47 = 0u;
      v48 = 0u;
      AssociatedConformanceWitness = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
    if (!swift_dynamicCast() || (v46 = 0, v19 = v45.n128_u32[0], v37 = v44, v38 = v43, v39 = v45, specialized FromToByActionHandler.getStartEnd(event:base:)(a1, &v50, v43, v44, v45), (v56 & 1) != 0))
    {
      v4 = 1;
      v5 = 0uLL;
      v6 = 0uLL;
      v3 = 0uLL;
      goto LABEL_18;
    }

    v35 = v51;
    v36 = v50;
    v33 = v53;
    v34 = v52;
    v32[0] = v55;
    v32[1] = v54;
    v20 = *(a1 + 249);
    v40[0] = *(a1 + 208);
    *(v40 + 13) = *(a1 + 221);
    AnimationTimingFunction.coreEasingFunction.getter();
    if (*(v21 + 16))
    {
      v22 = *(v21 + 16);
      REEasingFunctionEvaluateEx();
    }

    RESRTLerp();
    if (one-time initialization token for identity == -1)
    {
      if ((v20 & 1) == 0)
      {
LABEL_17:
        v4 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      v35 = v6;
      v36 = v3;
      v34 = v5;
      swift_once();
      v5 = v34;
      v6 = v35;
      v3 = v36;
      if ((v20 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v35 = v6;
    v36 = v3;
    v34 = v5;
    *&v23 = simd_matrix4x4(v37);
    v40[0] = v23;
    v40[1] = v24;
    v41 = v25;
    v42 = v26;
    simd_float4x4.scale(_:)(v38);
    v27.i64[0] = __PAIR64__(v39.u32[1], v19);
    v27.i64[1] = vextq_s8(v39, v39, 8uLL).u64[0];
    v57.columns[2] = v41;
    v57.columns[3] = vaddq_f32(v42, v27);
    v57.columns[3].i32[3] = v42.i32[3];
    v57.columns[0] = v40[0];
    v57.columns[1] = v40[1];
    v58 = __invert_f4(v57);
    v33 = v58.columns[0];
    v37 = v58.columns[1];
    v38 = v58.columns[2];
    v39 = v58.columns[3];
    *&v28 = simd_matrix4x4(v34);
    v40[0] = v28;
    v40[1] = v29;
    v41 = v30;
    v42 = v31;
    simd_float4x4.scale(_:)(v36);
    REMakeSRTFromMatrix();
    goto LABEL_17;
  }

  v4 = 1;
  v5 = 0uLL;
  v6 = 0uLL;
LABEL_18:
  *a2 = v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v4;
}

double specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1)
{
  v5 = 0uLL;
  if (*(a1 + 272))
  {
    return *v5.i64;
  }

  v63 = v4;
  v64 = v3;
  v65 = v1;
  v66 = v2;
  v7 = *(a1 + 264);
  specialized ActionEvent.animationState.getter(&v58, 0);
  v8 = v59;
  if (v59)
  {
    v9 = v60;
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    v10 = *(v9 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = type metadata accessor for Optional();
    v57.i64[0] = &v55;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = &v55 - v15;
    v10(v8, v9);
    v17 = *(AssociatedTypeWitness - 8);
    if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
    {
      (*(v13 + 8))(v16, v12);
      AssociatedConformanceWitness = 0;
      memset(v61, 0, sizeof(v61));
    }

    else
    {
      *(&v61[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
      (*(v17 + 32))(boxed_opaque_existential_1, v16, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v58, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v61, 0, sizeof(v61));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  type metadata accessor for simd_quatf(0);
  if (!swift_dynamicCast())
  {
    v5.i64[0] = 0;
    return *v5.i64;
  }

  v19 = *(a1 + 32);
  v21 = *(a1 + 48);
  v20 = *(a1 + 56);
  v22 = *(a1 + 64);
  v24 = *(a1 + 80);
  v23 = *(a1 + 88);
  v25 = *(a1 + 96);
  v55 = v58;
  if (v19)
  {
    v26 = v58;
    if ((v22 & 1) == 0)
    {
      v26 = v58;
      if ((v25 & 1) == 0)
      {
        *v27.f32 = v21;
        v27.i64[1] = v20;
        v28.i64[0] = v24;
        v28.i64[1] = v23;
        v29 = vmulq_f32(v28, xmmword_1C1899C90);
        v30 = vmulq_f32(v28, v28);
        *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
        v30.i32[0] = vadd_f32(*v30.i8, vdup_lane_s32(*v30.i8, 1)).u32[0];
        v31 = vrecpe_f32(v30.u32[0]);
        v32 = vmul_f32(v31, vrecps_f32(v30.u32[0], v31));
        v33 = vmulq_n_f32(v29, vmul_f32(v32, vrecps_f32(v30.u32[0], v32)).f32[0]);
        v34 = vnegq_f32(v33);
        v35 = vtrn2q_s32(v33, vtrn1q_s32(v33, v34));
        v36 = vrev64q_s32(v33);
        v36.i32[0] = v34.i32[1];
        v36.i32[3] = v34.i32[2];
        v26 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v33, v27, 3), v36, v27, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v33, v34, 8uLL), v21, 1), vextq_s8(v35, v35, 8uLL), v21.f32[0]));
      }

      goto LABEL_17;
    }
  }

  else
  {
    v26 = *(a1 + 16);
    if ((v22 & 1) == 0)
    {
LABEL_17:
      v57 = v26;
      *v37.f32 = v21;
      v37.i64[1] = v20;
LABEL_19:
      v56 = v37;
      goto LABEL_20;
    }
  }

  v57 = v26;
  if ((v25 & 1) == 0)
  {
    v38.i64[0] = v24;
    v38.i64[1] = v23;
    v39 = vnegq_f32(v38);
    v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
    v41 = vrev64q_s32(v38);
    v41.i32[0] = v39.i32[1];
    v41.i32[3] = v39.i32[2];
    v37 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v39, 8uLL), *v26.f32, 1), vextq_s8(v40, v40, 8uLL), v26.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v38, v26, 3), v41, v26, 2));
    goto LABEL_19;
  }

  v56 = v58;
LABEL_20:
  v42 = *(a1 + 153);
  v61[0] = *(a1 + 112);
  *(v61 + 13) = *(a1 + 125);
  v43 = v7;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v44 + 16))
  {
    v45 = *(v44 + 16);
    REEasingFunctionEvaluateEx();
    v43 = v46;
  }

  simd_slerp(v57, v56, v43);
  if (v42)
  {
    v47 = vmulq_f32(v55, v55);
    *v47.i8 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
    v47.i32[0] = vadd_f32(*v47.i8, vdup_lane_s32(*v47.i8, 1)).u32[0];
    v48 = vrecpe_f32(v47.u32[0]);
    v49 = vmul_f32(v48, vrecps_f32(v47.u32[0], v48));
    v50 = vmulq_n_f32(vmulq_f32(v55, xmmword_1C1899C90), vmul_f32(v49, vrecps_f32(v47.u32[0], v49)).f32[0]);
    v51 = vnegq_f32(v5);
    v52 = vtrn2q_s32(v5, vtrn1q_s32(v5, v51));
    v53 = vrev64q_s32(v5);
    v53.i32[0] = v51.i32[1];
    v53.i32[3] = v51.i32[2];
    v5.i64[0] = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v5, v51, 8uLL), *v50.f32, 1), vextq_s8(v52, v52, 8uLL), v50.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v5, v50, 3), v53, v50, 2)).u64[0];
  }

  return *v5.i64;
}

uint64_t specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1, __n128 a2)
{
  v6.i64[0] = 0;
  if (*(a1 + 272))
  {
    return v6.i64[0];
  }

  v50 = v5;
  v51 = v4;
  v52 = v2;
  v53 = v3;
  v8 = *(a1 + 264);
  specialized ActionEvent.animationState.getter(&v45, a2);
  v9 = v46;
  if (v46)
  {
    v10 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, v46);
    v11 = *(v10 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = type metadata accessor for Optional();
    v44.i64[0] = &v41;
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    v17 = &v41 - v16;
    v11(v9, v10);
    v18 = *(AssociatedTypeWitness - 8);
    if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
    {
      (*(v14 + 8))(v17, v13);
      AssociatedConformanceWitness = 0;
      memset(v48, 0, sizeof(v48));
    }

    else
    {
      *(&v48[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
      (*(v18 + 32))(boxed_opaque_existential_1, v17, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v45, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v48, 0, sizeof(v48));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (!swift_dynamicCast())
  {
    v6.i64[0] = 0;
    return v6.i64[0];
  }

  v20 = v45;
  v21 = *(a1 + 32);
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v28 = *(a1 + 153);
  v41 = v45;
  if (v21)
  {
    v29 = v45;
    if ((v24 & 1) == 0)
    {
      v29 = v45;
      if ((v27 & 1) == 0)
      {
        v30.i64[0] = v23;
        v30.i64[1] = v22;
        v44 = v30;
        v31.i64[0] = v25;
        v31.i64[1] = v26;
        *v32.i64 = SIMD4<>.__rk_animationInverse.getter(v31);
        v33 = v44;
        v33.i32[0] = v23;
        v29 = vaddq_f32(v32, v33);
      }

      goto LABEL_17;
    }

LABEL_15:
    v43 = v29;
    if ((v27 & 1) == 0)
    {
      v34.i64[1] = v26;
      v34.i64[0] = v25;
      v20 = vaddq_f32(v29, v34);
    }

    goto LABEL_18;
  }

  v29 = *(a1 + 16);
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_17:
  v43 = v29;
  v20.i64[0] = v23;
  v20.i64[1] = v22;
LABEL_18:
  v42 = v20;
  v48[0] = *(a1 + 112);
  v35 = v48[0];
  *(v48 + 13) = *(a1 + 125);
  v35.f32[0] = v8;
  v44 = v35;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v36 + 16))
  {
    v37 = *(v36 + 16);
    REEasingFunctionEvaluateEx();
    v44 = v38;
  }

  v6 = vmlaq_n_f32(v43, vsubq_f32(v42, v43), v44.f32[0]);
  if (v28)
  {
    v43 = v6;
    *v39.i64 = SIMD4<>.__rk_animationInverse.getter(v41);
    v6.i64[0] = vaddq_f32(v43, v39).u64[0];
  }

  return v6.i64[0];
}

{
  v6 = 0;
  if (*(a1 + 272))
  {
    return v6;
  }

  v47 = v5;
  v48 = v4;
  v49 = v2;
  v50 = v3;
  v8 = *(a1 + 264);
  specialized ActionEvent.animationState.getter(&v42, a2);
  v9 = v43;
  if (v43)
  {
    v10 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v11 = *(v10 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13 = type metadata accessor for Optional();
    *&v41 = &v38;
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v13);
    v17 = &v38 - v16;
    v11(v9, v10);
    v18 = *(AssociatedTypeWitness - 8);
    if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
    {
      (*(v14 + 8))(v17, v13);
      AssociatedConformanceWitness = 0;
      memset(v45, 0, sizeof(v45));
    }

    else
    {
      *(&v45[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      (*(v18 + 32))(boxed_opaque_existential_1, v17, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v42, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v45, 0, sizeof(v45));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v20 = v42.i32[0];
  v21 = *(a1 + 32);
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  v24 = *(a1 + 64);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v38 = v42;
  if (v21)
  {
    v28 = v42;
    if ((v24 & 1) == 0)
    {
      v28 = v42;
      if ((v27 & 1) == 0)
      {
        *v28.f32 = vadd_f32(vsub_f32(0, v25), v23);
        v28.f32[2] = *&v22 + (0.0 - COERCE_FLOAT(vdupq_n_s64(v26).i32[2]));
        v28.i32[3] = 0;
      }

      goto LABEL_17;
    }

LABEL_15:
    v40 = v28;
    if (v27)
    {
      v39 = v42;
    }

    else
    {
      *v30.f32 = vadd_f32(*v28.f32, v25);
      v30.i64[1] = vaddq_f32(v28, vdupq_n_s64(v26)).u32[2];
      v39 = v30;
    }

    goto LABEL_19;
  }

  v28 = *(a1 + 16);
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_17:
  *v29.f32 = v23;
  v29.i64[1] = v22;
  v39 = v29;
  v40 = v28;
LABEL_19:
  v31 = *(a1 + 153);
  v45[0] = *(a1 + 112);
  v32 = v45[0];
  *(v45 + 13) = *(a1 + 125);
  *&v32 = v8;
  v41 = v32;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v33 + 16))
  {
    v34 = *(v33 + 16);
    REEasingFunctionEvaluateEx();
    v41 = v35;
  }

  v36 = vmlaq_n_f32(v40, vsubq_f32(v39, v40), *&v41).u64[0];
  if (v31)
  {
    return vadd_f32(vsub_f32(0, __PAIR64__(v38.u32[1], v20)), v36);
  }

  else
  {
    return v36;
  }
}

uint64_t specialized FromToByActionHandler.evaluateResult(_:)(uint64_t a1)
{
  if (*(a1 + 224))
  {
    return 0;
  }

  v41 = v6;
  v42 = v5;
  v43 = v4;
  v44 = v3;
  v45 = v1;
  v46 = v2;
  v9 = *(a1 + 216);
  specialized ActionEvent.animationState.getter(v36);
  v10 = v37;
  if (v37)
  {
    v11 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v12 = *(v11 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = type metadata accessor for Optional();
    *&v35 = &v34;
    v15 = *(v14 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v14);
    v18 = &v34 - v17;
    v12(v10, v11);
    v19 = *(AssociatedTypeWitness - 8);
    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
    {
      (*(v15 + 8))(v18, v14);
      AssociatedConformanceWitness = 0;
      memset(v39, 0, sizeof(v39));
    }

    else
    {
      *(&v39[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      (*(v19 + 32))(boxed_opaque_existential_1, v18, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v36, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v39, 0, sizeof(v39));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v22 = v36[0];
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  if (*(a1 + 24))
  {
    *&v21 = v36[0];
    if ((*(a1 + 40) & 1) == 0)
    {
      *&v21 = v36[0];
      if ((*(a1 + 56) & 1) == 0)
      {
        *&v21 = (0.0 - v25.f32[0]) + v23.f32[0];
        *(&v21 + 1) = (0.0 - v25.f32[1]) + v23.f32[1];
      }

      goto LABEL_18;
    }

LABEL_16:
    v34 = v21;
    if (v26)
    {
      v27 = v36[0];
    }

    else
    {
      v27 = vadd_f32(*&v21, v25);
    }

    goto LABEL_20;
  }

  *&v21 = *(a1 + 16);
  if (*(a1 + 40))
  {
    goto LABEL_16;
  }

LABEL_18:
  v34 = v21;
  v27 = v23;
LABEL_20:
  v28 = *(a1 + 105);
  v39[0] = *(a1 + 64);
  v29 = v39[0];
  *(v39 + 13) = *(a1 + 77);
  *&v29 = v9;
  v35 = v29;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v30 + 16))
  {
    v31 = *(v30 + 16);
    REEasingFunctionEvaluateEx();
    v35 = v32;
  }

  v33 = vmla_n_f32(*&v34, vsub_f32(v27, *&v34), *&v35);
  if (v28)
  {
    return vadd_f32(vsub_f32(0, v22), v33);
  }

  else
  {
    return v33;
  }
}

{
  if (*(a1 + 224))
  {
    return 0;
  }

  v40 = v6;
  v41 = v5;
  v42 = v4;
  v43 = v3;
  v44 = v1;
  v45 = v2;
  v9 = *(a1 + 216);
  specialized ActionEvent.animationState.getter(v35);
  v10 = v36;
  if (v36)
  {
    v11 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v12 = *(v11 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = type metadata accessor for Optional();
    v34 = &v34;
    v15 = *(v14 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v14);
    v18 = &v35[-1] - v17;
    v12(v10, v11);
    v19 = *(AssociatedTypeWitness - 8);
    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
    {
      (*(v15 + 8))(v18, v14);
      AssociatedConformanceWitness = 0;
      memset(v38, 0, sizeof(v38));
    }

    else
    {
      *(&v38[1] + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
      (*(v19 + 32))(boxed_opaque_existential_1, v18, AssociatedTypeWitness);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v35, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    memset(v38, 0, sizeof(v38));
    AssociatedConformanceWitness = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pSgMd, &_s17RealityFoundation14AnimatableData_pSgMR);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v21 = *v35;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  if (*(a1 + 24))
  {
    v25 = *v35;
    if ((*(a1 + 40) & 1) == 0)
    {
      v26 = *(a1 + 48);
      if (*(a1 + 56))
      {
        v25 = *v35;
      }

      else
      {
        v25 = *(a1 + 32) - v23;
      }

      goto LABEL_20;
    }

LABEL_17:
    if (*(a1 + 56))
    {
      v27 = *v35;
    }

    else
    {
      v27 = v25 + v23;
    }

    goto LABEL_21;
  }

  v25 = *(a1 + 16);
  if (*(a1 + 40))
  {
    goto LABEL_17;
  }

LABEL_20:
  v27 = *(a1 + 32);
LABEL_21:
  v28 = *(a1 + 105);
  v38[0] = *(a1 + 64);
  *(v38 + 13) = *(a1 + 77);
  v29 = v9;
  AnimationTimingFunction.coreEasingFunction.getter();
  if (*(v30 + 16))
  {
    v31 = *(v30 + 16);
    REEasingFunctionEvaluateEx();
    v29 = v32;
  }

  v33 = v27 * v29 + v25 * (1.0 - v29);
  if (v28)
  {
    v33 = v33 - v21;
  }

  return *&v33;
}