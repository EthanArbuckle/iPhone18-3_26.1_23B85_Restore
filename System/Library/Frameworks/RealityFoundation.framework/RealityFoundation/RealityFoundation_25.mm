uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v26 = a13;
    v25 = a14;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v190 = a11;
            v191 = a12;
            v199 = a9;
            v201 = a10;
            v203 = a8;
            v207 = a7;
            v195 = a15;
            v196 = a16;
            v197 = a5;
            v193 = a13;
            v26 = a14;
            v27 = *a2;
            v25 = *(a2 + 8);
            v29 = *(a2 + 24);
            v28 = *(a2 + 32);
            v30 = *(a2 + 40);
            v16.i32[0] = *(a2 + 56);
            v184 = *(a2 + 64);
            v187 = *(a2 + 48);
            v181 = *(a2 + 72);
            v31 = *(a2 + 88);
            v17 = *(a2 + 96);
            v179 = *(a2 + 104);
            v189 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v32 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v206 = a8;
        v210 = a7;
        v195 = a15;
        v196 = a16;
        v198 = a5;
        v63 = *a2;
        v64 = *(a2 + 8);
        v66 = *(a2 + 24);
        v65 = *(a2 + 32);
        v67 = *(a2 + 40);
        v68 = *(a2 + 64);
        v69 = *(a2 + 72);
        v180 = *(a2 + 80);
        v183 = *(a2 + 88);
        v186 = *(a2 + 56);
        v188 = *(a2 + 96);
        v189 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v70 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v89 = specialized static Entity.entityInfoType(_:)();
          if (v89)
          {
            v71 = (*(v89 + 232))();
            v90 = *(v71 + 16);

            MEMORY[0x1C68F9740](v90, 0);
            *(v71 + 16) = v63;
            MEMORY[0x1C68F9740](v63, v71);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v91 = swift_allocObject();
            *(v91 + 40) = 0;
            swift_weakInit();
            *(v91 + 16) = v64;
            swift_weakAssign();
            v92 = *(v71 + 16);

            *(v91 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v71 + 16));
            v93 = Hasher._finalize()();

            *(v91 + 24) = v93;
            v94 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v65, 0, v67, v94, v95, &v218);

            if (v68)
            {
              v96 = a14;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                v98 = a13;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v99 = swift_dynamicCastClassUnconditional();
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

                  v159 = specialized static Entity.entityInfoType(_:)();
                  if (v159)
                  {
                    v100 = (*(v159 + 232))();
                    v160 = *(v100 + 16);

                    MEMORY[0x1C68F9740](v160, 0);
                    *(v100 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v100);

                    goto LABEL_126;
                  }

                  v99 = makeEntity(for:)(Entity);
                }

                v100 = v99;
              }

              else
              {
                v100 = 0;
                v98 = a13;
              }
            }

            else
            {
              v100 = 0;
              v96 = a14;
              v98 = a13;
            }

LABEL_126:
            specialized ActionEventData.action<A>()(v210, v206, a9, a10, &v213);
            if (!v215)
            {
              goto LABEL_153;
            }

            __src[3] = v215;
            __src[4] = v216;
            LOBYTE(__src[5]) = v217;
            __src[1] = v213;
            __src[2] = v214;
            v161 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
            *(&__src[6] + 8) = vcvtq_f64_f32(v69);
            v162 = v218;
            *(&__src[12] + 8) = v219;
            *(&__src[13] + 8) = v220;
            *(&__src[14] + 8) = v221;
            *(&__src[15] + 8) = v222;
            BYTE1(__src[5]) = v161 & 1;
            *&__src[0] = v91;
            *(&__src[5] + 1) = v100;
            LOBYTE(__src[6]) = v180;
            *(&__src[7] + 1) = v24;
            *&__src[8] = v186;
            *(&__src[8] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[9]) = 0;
            v163 = v183;
            goto LABEL_145;
          }

          v70 = makeEntity(for:)(v63);
LABEL_32:
          v71 = v70;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v205 = a8;
        v209 = a7;
        v195 = a15;
        v196 = a16;
        v198 = a5;
        v49 = *a2;
        v50 = *(a2 + 8);
        v52 = *(a2 + 24);
        v51 = *(a2 + 32);
        v53 = *(a2 + 40);
        v54 = *(a2 + 56);
        v55 = *(a2 + 64);
        v182 = *(a2 + 72);
        v185 = *(a2 + 80);
        v188 = *(a2 + 88);
        v189 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v56 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          v144 = specialized static Entity.entityInfoType(_:)();
          if (v144)
          {
            v57 = (*(v144 + 232))();
            v145 = *(v57 + 16);

            MEMORY[0x1C68F9740](v145, 0);
            *(v57 + 16) = v49;
            MEMORY[0x1C68F9740](v49, v57);

LABEL_103:
            type metadata accessor for AnimationPlaybackController();
            v146 = swift_allocObject();
            *(v146 + 40) = 0;
            swift_weakInit();
            *(v146 + 16) = v50;
            swift_weakAssign();
            v147 = *(v57 + 16);

            *(v146 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v57 + 16));
            v148 = Hasher._finalize()();

            *(v146 + 24) = v148;
            v149 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v51, 0, v53, v149, v150, &v218);

            if (v54)
            {
              v96 = a14;
              if (REBindPointBoundComponent())
              {
                v151 = REComponentGetEntity();
                v98 = a13;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v152 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_183:
                    __break(1u);
                    goto LABEL_184;
                  }

                  v172 = specialized static Entity.entityInfoType(_:)();
                  if (v172)
                  {
                    v153 = (*(v172 + 232))();
                    v173 = *(v153 + 16);

                    MEMORY[0x1C68F9740](v173, 0);
                    *(v153 + 16) = v151;
                    MEMORY[0x1C68F9740](v151, v153);

                    goto LABEL_143;
                  }

                  v152 = makeEntity(for:)(v151);
                }

                v153 = v152;
              }

              else
              {
                v153 = 0;
                v98 = a13;
              }
            }

            else
            {
              v153 = 0;
              v96 = a14;
              v98 = a13;
            }

LABEL_143:
            specialized ActionEventData.action<A>()(v209, v205, a9, a10, &v213);
            if (!v215)
            {
              goto LABEL_153;
            }

            __src[3] = v215;
            __src[4] = v216;
            LOBYTE(__src[5]) = v217;
            __src[1] = v213;
            __src[2] = v214;
            v174 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
            *(&__src[6] + 8) = vcvtq_f64_f32(v55);
            v162 = v218;
            *(&__src[12] + 8) = v219;
            *(&__src[13] + 8) = v220;
            *(&__src[14] + 8) = v221;
            *(&__src[15] + 8) = v222;
            BYTE1(__src[5]) = v174 & 1;
            *&__src[0] = v146;
            *(&__src[5] + 1) = v153;
            LOBYTE(__src[6]) = v182;
            __src[8] = 0uLL;
            *(&__src[7] + 1) = v24;
            LOBYTE(__src[9]) = 1;
            v163 = v185;
LABEL_145:
            *(&__src[9] + 1) = v163;
            LOBYTE(__src[10]) = 0;
            v167 = v188;
            goto LABEL_146;
          }

          v56 = makeEntity(for:)(v49);
        }

        v57 = v56;
        goto LABEL_103;
      }

      v190 = a11;
      v192 = a12;
      v200 = a9;
      v202 = a10;
      v204 = a8;
      v208 = a7;
      v195 = a15;
      v196 = a16;
      v198 = a5;
      v194 = a13;
      v41 = a14;
      v46 = *a2;
      v78 = *(a2 + 8);
      v80 = *(a2 + 24);
      v79 = *(a2 + 32);
      v81 = *(a2 + 40);
      v82 = *(a2 + 64);
      v187 = *(a2 + 56);
      v16 = *(a2 + 72);
      LOBYTE(v184) = *(a2 + 80);
      v189 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v83 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      v108 = specialized static Entity.entityInfoType(_:)();
      if (v108)
      {
        v84 = (*(v108 + 232))();
        v109 = *(v84 + 16);

        MEMORY[0x1C68F9740](v109, 0);
        *(v84 + 16) = v46;
        MEMORY[0x1C68F9740](v46, v84);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v110 = swift_allocObject();
        *(v110 + 40) = 0;
        swift_weakInit();
        *(v110 + 16) = v78;
        swift_weakAssign();
        v111 = *(v84 + 16);

        *(v110 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v84 + 16));
        v112 = Hasher._finalize()();

        *(v110 + 24) = v112;
        v113 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v79, 0, v81, v113, v114, &v218);

        if (v82)
        {
          v96 = v41;
          if (REBindPointBoundComponent())
          {
            v115 = REComponentGetEntity();
            v98 = v194;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v116 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
                goto LABEL_182;
              }

              v164 = specialized static Entity.entityInfoType(_:)();
              if (v164)
              {
                v117 = (*(v164 + 232))();
                v165 = *(v117 + 16);

                MEMORY[0x1C68F9740](v165, 0);
                *(v117 + 16) = v115;
                MEMORY[0x1C68F9740](v115, v117);

                goto LABEL_132;
              }

              v116 = makeEntity(for:)(v115);
            }

            v117 = v116;
          }

          else
          {
            v117 = 0;
            v98 = v194;
          }
        }

        else
        {
          v117 = 0;
          v96 = v41;
          v98 = v194;
        }

LABEL_132:
        specialized ActionEventData.action<A>()(v208, v204, v200, v202, &v213);
        if (!v215)
        {
          goto LABEL_153;
        }

        __src[3] = v215;
        __src[4] = v216;
        LOBYTE(__src[5]) = v217;
        __src[1] = v213;
        __src[2] = v214;
        v166 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v190, v192);
        *(&__src[6] + 8) = vcvtq_f64_f32(v16);
        v162 = v218;
        *(&__src[12] + 8) = v219;
        *(&__src[13] + 8) = v220;
        *(&__src[14] + 8) = v221;
        *(&__src[15] + 8) = v222;
        BYTE1(__src[5]) = v166 & 1;
        *&__src[0] = v110;
        *(&__src[5] + 1) = v117;
        LOBYTE(__src[6]) = v184;
        *(&__src[7] + 1) = v24;
        *&__src[8] = v187;
        v167 = 0xBFF0000000000000;
        *(&__src[8] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[9]) = 0;
        *(&__src[9] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[10]) = 0;
LABEL_146:
        *(&__src[10] + 1) = v167;
        LOBYTE(__src[11]) = 0;
        *(&__src[11] + 8) = v162;
        *(&__src[16] + 1) = v189;
        v198(__src);

        memcpy(__dst, __src, sizeof(__dst));
        v135 = v98;
        v136 = v96;
        goto LABEL_154;
      }

      v83 = makeEntity(for:)(v46);
LABEL_38:
      v84 = v83;
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

        v200 = a9;
        v202 = a10;
        v204 = a8;
        v208 = a7;
        v195 = a15;
        v196 = a16;
        v198 = a5;
        v40 = a13;
        v41 = a14;
        v42 = *a2;
        v43 = *(a2 + 8);
        v44 = *(a2 + 24);
        v192 = *(a2 + 32);
        v45 = *(a2 + 40);
        v46 = *(a2 + 56);
        v194 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v47 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v137 = specialized static Entity.entityInfoType(_:)();
          if (v137)
          {
            v48 = (*(v137 + 232))();
            v138 = *(v48 + 16);

            MEMORY[0x1C68F9740](v138, 0);
            *(v48 + 16) = v42;
            MEMORY[0x1C68F9740](v42, v48);

LABEL_89:
            type metadata accessor for AnimationPlaybackController();
            v81 = swift_allocObject();
            *(v81 + 40) = 0;
            swift_weakInit();
            *(v81 + 16) = v43;
            swift_weakAssign();
            v139 = *(v48 + 16);

            *(v81 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v48 + 16));
            v140 = Hasher._finalize()();

            *(v81 + 24) = v140;
            v141 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v45, v141, v142, &v218);

            if (v46)
            {
              v79 = a14;
              if (REBindPointBoundComponent())
              {
                v82 = REComponentGetEntity();
                v78 = a13;
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_92;
                }

                result = REEntityIsBeingDestroyed();
                v107 = v208;
                if (result)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                goto LABEL_138;
              }

LABEL_94:
              v46 = 0;
              goto LABEL_95;
            }

            goto LABEL_93;
          }

          v47 = makeEntity(for:)(v42);
        }

        v48 = v47;
        goto LABEL_89;
      }

      v200 = a9;
      v202 = a10;
      v204 = a8;
      v208 = a7;
      v195 = a15;
      v196 = a16;
      v198 = a5;
      v40 = a13;
      v41 = a14;
      v72 = *a2;
      v73 = *(a2 + 8);
      v74 = *(a2 + 24);
      v192 = *(a2 + 32);
      v75 = *(a2 + 40);
      v46 = *(a2 + 56);
      v194 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v76 = swift_dynamicCastClassUnconditional();
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

        v101 = specialized static Entity.entityInfoType(_:)();
        if (v101)
        {
          v77 = (*(v101 + 232))();
          v102 = *(v77 + 16);

          MEMORY[0x1C68F9740](v102, 0);
          *(v77 + 16) = v72;
          MEMORY[0x1C68F9740](v72, v77);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v81 = swift_allocObject();
          *(v81 + 40) = 0;
          swift_weakInit();
          *(v81 + 16) = v73;
          swift_weakAssign();
          v103 = *(v77 + 16);

          *(v81 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v77 + 16));
          v104 = Hasher._finalize()();

          *(v81 + 24) = v104;
          v105 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v75, v105, v106, &v218);

          if (v46)
          {
            v79 = a14;
            if (REBindPointBoundComponent())
            {
              v82 = REComponentGetEntity();
              v78 = a13;
              if (REEntityGetSwiftObject())
              {
LABEL_92:
                type metadata accessor for Entity();
                v46 = swift_dynamicCastClassUnconditional();
LABEL_96:
                v143 = v208;
                goto LABEL_97;
              }

              v107 = v208;
              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_138:
              v170 = specialized static Entity.entityInfoType(_:)();
              if (v170)
              {
                v46 = (*(v170 + 232))();
                v171 = *(v46 + 16);

                MEMORY[0x1C68F9740](v171, 0);
                *(v46 + 16) = v82;
                MEMORY[0x1C68F9740](v82, v46);
              }

              else
              {
                v46 = makeEntity(for:)(v82);
              }

              v143 = v107;
LABEL_97:
              specialized ActionEventData.action<A>()(v143, v204, v200, v202, &v213);
              if (v215)
              {
                __src[3] = v215;
                __src[4] = v216;
                __src[1] = v213;
                __src[2] = v214;
                *(&__src[12] + 8) = v219;
                *(&__src[13] + 8) = v220;
                *(&__src[14] + 8) = v221;
                *(&__src[15] + 8) = v222;
                LOBYTE(__src[5]) = v217;
                BYTE1(__src[5]) = 1;
                *&__src[0] = v81;
                *(&__src[5] + 1) = v46;
                LOBYTE(__src[6]) = 0;
                *(&__src[6] + 8) = 0uLL;
                __src[8] = 0uLL;
                *(&__src[7] + 1) = v24;
                LOBYTE(__src[9]) = 1;
                *(&__src[9] + 1) = v192;
                LOBYTE(__src[10]) = 0;
                *(&__src[10] + 1) = 0;
                LOBYTE(__src[11]) = 1;
                *(&__src[11] + 8) = v218;
                *(&__src[16] + 1) = v194;
                v198(__src);

                memcpy(__dst, __src, sizeof(__dst));
                v135 = v78;
                v136 = v79;
                goto LABEL_154;
              }

LABEL_153:

              __dst[2] = v215;
              __dst[3] = v216;
              LOBYTE(__dst[4]) = v217;
              __dst[0] = v213;
              __dst[1] = v214;
              v135 = v195;
              v136 = v196;
              goto LABEL_154;
            }

            goto LABEL_94;
          }

LABEL_93:
          v79 = v41;
LABEL_95:
          v78 = v40;
          goto LABEL_96;
        }

        v76 = makeEntity(for:)(v72);
      }

      v77 = v76;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v199 = a9;
      v201 = a10;
      v203 = a8;
      v207 = a7;
      v195 = a15;
      v196 = a16;
      v197 = a5;
      v58 = *a2;
      v59 = *(a2 + 8);
      v60 = *(a2 + 16);
      v30 = *(a2 + 24);
      v28 = *(a2 + 40);
      v193 = *(a2 + 32);
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
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v154 = specialized static Entity.entityInfoType(_:)();
        if (v154)
        {
          v62 = (*(v154 + 232))();
          v155 = *(v62 + 16);

          MEMORY[0x1C68F9740](v155, 0);
          *(v62 + 16) = v58;
          MEMORY[0x1C68F9740](v58, v62);

LABEL_111:
          type metadata accessor for AnimationPlaybackController();
          v31 = swift_allocObject();
          *(v31 + 40) = 0;
          swift_weakInit();
          *(v31 + 16) = v59;
          swift_weakAssign();
          v156 = *(v62 + 16);

          *(v31 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v62 + 16));
          v157 = Hasher._finalize()();

          *(v31 + 24) = v157;
          if (!v28)
          {
            goto LABEL_151;
          }

          if (REBindPointBoundComponent())
          {
            v122 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_114;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_184:
              __break(1u);
              return result;
            }

LABEL_149:
            v175 = specialized static Entity.entityInfoType(_:)();
            if (!v175)
            {
              v158 = makeEntity(for:)(v122);
              goto LABEL_115;
            }

            v28 = (*(v175 + 232))();
            v176 = *(v28 + 16);

            MEMORY[0x1C68F9740](v176, 0);
            *(v28 + 16) = v122;
            MEMORY[0x1C68F9740](v122, v28);

LABEL_151:
            v177 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v30, v177, v178, &v218);

            specialized ActionEventData.action<A>()(v207, v203, v199, v201, &v213);
            if (v215)
            {
              __src[3] = v215;
              __src[4] = v216;
              __src[1] = v213;
              __src[2] = v214;
              *(&__src[12] + 8) = v219;
              *(&__src[13] + 8) = v220;
              *(&__src[14] + 8) = v221;
              *(&__src[15] + 8) = v222;
              LOBYTE(__src[5]) = v217;
              BYTE1(__src[5]) = 1;
              *&__src[0] = v31;
              *(&__src[5] + 1) = v28;
              LOBYTE(__src[6]) = 0;
              *(&__src[6] + 8) = 0uLL;
              __src[8] = 0uLL;
              *(&__src[7] + 1) = v24;
              LOBYTE(__src[9]) = 1;
              *(&__src[9] + 1) = 0;
              LOBYTE(__src[10]) = 1;
              *(&__src[10] + 1) = 0;
              LOBYTE(__src[11]) = 1;
              *(&__src[11] + 8) = v218;
              *(&__src[16] + 1) = v193;
              v197(__src);

              memcpy(__dst, __src, sizeof(__dst));
              v135 = a13;
              v136 = a14;
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          goto LABEL_116;
        }

        v61 = makeEntity(for:)(v58);
      }

      v62 = v61;
      goto LABEL_111;
    }

    v199 = a9;
    v201 = a10;
    v203 = a8;
    v207 = a7;
    v195 = a15;
    v196 = a16;
    v197 = a5;
    v85 = *a2;
    v86 = *(a2 + 8);
    v27 = *(a2 + 16);
    v30 = *(a2 + 24);
    v28 = *(a2 + 40);
    v193 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v87 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v118 = specialized static Entity.entityInfoType(_:)();
      if (v118)
      {
        v88 = (*(v118 + 232))();
        v119 = *(v88 + 16);

        MEMORY[0x1C68F9740](v119, 0);
        *(v88 + 16) = v85;
        MEMORY[0x1C68F9740](v85, v88);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v31 = swift_allocObject();
        *(v31 + 40) = 0;
        swift_weakInit();
        *(v31 + 16) = v86;
        swift_weakAssign();
        v120 = *(v88 + 16);

        *(v31 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v88 + 16));
        v121 = Hasher._finalize()();

        *(v31 + 24) = v121;
        if (!v28)
        {
          goto LABEL_151;
        }

        if (REBindPointBoundComponent())
        {
          v122 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_114:
            type metadata accessor for Entity();
            v158 = swift_dynamicCastClassUnconditional();
LABEL_115:
            v28 = v158;
            goto LABEL_151;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v123 = specialized static Entity.entityInfoType(_:)();
              if (v123)
              {
                v33 = (*(v123 + 232))();
                v124 = *(v33 + 16);

                MEMORY[0x1C68F9740](v124, 0);
                *(v33 + 16) = v27;
                MEMORY[0x1C68F9740](v27, v33);

LABEL_78:
                type metadata accessor for AnimationPlaybackController();
                v125 = swift_allocObject();
                *(v125 + 40) = 0;
                swift_weakInit();
                *(v125 + 16) = v25;
                swift_weakAssign();
                v126 = *(v33 + 16);

                *(v125 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v33 + 16));
                v127 = Hasher._finalize()();

                *(v125 + 24) = v127;
                v128 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v28, 0, v30, v128, v129, &v218);

                if (!v31 || !REBindPointBoundComponent())
                {
                  v133 = 0;
                  v131 = v193;
                  goto LABEL_84;
                }

                v130 = REComponentGetEntity();
                v131 = v193;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v132 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v133 = v132;
                  goto LABEL_84;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v168 = specialized static Entity.entityInfoType(_:)();
                  if (!v168)
                  {
                    v132 = makeEntity(for:)(v130);
                    goto LABEL_82;
                  }

                  v133 = (*(v168 + 232))();
                  v169 = *(v133 + 16);

                  MEMORY[0x1C68F9740](v169, 0);
                  *(v133 + 16) = v130;
                  MEMORY[0x1C68F9740](v130, v133);

LABEL_84:
                  specialized ActionEventData.action<A>()(v207, v203, v199, v201, &v213);
                  if (v215)
                  {
                    __src[3] = v215;
                    __src[4] = v216;
                    LOBYTE(__src[5]) = v217;
                    __src[1] = v213;
                    __src[2] = v214;
                    v134 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v190, v191);
                    *(&__src[6] + 8) = vcvtq_f64_f32(v17);
                    *(&__src[8] + 1) = v16.f32[0];
                    *(&__src[12] + 8) = v219;
                    *(&__src[13] + 8) = v220;
                    BYTE1(__src[5]) = v134 & 1;
                    *&__src[0] = v125;
                    *(&__src[5] + 1) = v133;
                    LOBYTE(__src[6]) = v179;
                    *(&__src[7] + 1) = v24;
                    *&__src[8] = v181;
                    LOBYTE(__src[9]) = 0;
                    *(&__src[9] + 1) = v187;
                    LOBYTE(__src[10]) = 0;
                    *(&__src[10] + 1) = v184;
                    LOBYTE(__src[11]) = 0;
                    *(&__src[14] + 8) = v221;
                    *(&__src[15] + 8) = v222;
                    *(&__src[11] + 8) = v218;
                    *(&__src[16] + 1) = v189;
                    v197(__src);

                    memcpy(__dst, __src, sizeof(__dst));
                    v135 = v131;
                    v136 = v26;
LABEL_154:
                    outlined destroy of BodyTrackingComponent?(__dst, v135, v136);
                    return 0;
                  }

                  goto LABEL_153;
                }

                goto LABEL_181;
              }

              v32 = makeEntity(for:)(v27);
LABEL_8:
              v33 = v32;
              goto LABEL_78;
            }

            goto LABEL_175;
          }

          goto LABEL_149;
        }

LABEL_116:
        v28 = 0;
        goto LABEL_151;
      }

      v87 = makeEntity(for:)(v85);
    }

    v88 = v87;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static AnimationLogger.logger);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&__dst[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v35, v36, "%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1C6902A30](v38, -1, -1);
    MEMORY[0x1C6902A30](v37, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = a16;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v199 = a11;
            v200 = a12;
            v209 = a9;
            v211 = a7;
            v203 = a10;
            v205 = a15;
            v26 = a8;
            v202 = a16;
            v206 = a5;
            v207 = a13;
            v27 = *a2;
            v28 = *(a2 + 8);
            v30 = *(a2 + 24);
            v29 = *(a2 + 32);
            v31 = *(a2 + 40);
            v16.i32[0] = *(a2 + 56);
            v193 = *(a2 + 64);
            v196 = *(a2 + 48);
            v190 = *(a2 + 72);
            v32 = *(a2 + 88);
            v198 = *(a2 + 80);
            v17 = *(a2 + 96);
            v188 = *(a2 + 104);
            v208 = a14;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v33 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v214 = a7;
        v205 = a15;
        v65 = a8;
        v202 = a16;
        v206 = a5;
        v207 = a13;
        v66 = *a2;
        v67 = *(a2 + 8);
        v68 = *(a2 + 24);
        v69 = *(a2 + 32);
        v70 = *(a2 + 40);
        v71 = *(a2 + 64);
        v72 = *(a2 + 72);
        v189 = *(a2 + 80);
        v192 = *(a2 + 88);
        v195 = *(a2 + 56);
        v197 = *(a2 + 96);
        v198 = *(a2 + 48);
        v208 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v73 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v92 = specialized static Entity.entityInfoType(_:)();
          if (v92)
          {
            v74 = (*(v92 + 232))();
            v93 = *(v74 + 16);

            MEMORY[0x1C68F9740](v93, 0);
            *(v74 + 16) = v66;
            MEMORY[0x1C68F9740](v66, v74);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v94 = swift_allocObject();
            *(v94 + 40) = 0;
            swift_weakInit();
            *(v94 + 16) = v67;
            swift_weakAssign();
            v95 = *(v74 + 16);

            *(v94 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v74 + 16));
            v96 = Hasher._finalize()();

            *(v94 + 24) = v96;
            v97 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v69, 0, v70, v97, v98, &v223);

            if (v71)
            {
              v99 = v65;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                v101 = v214;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v102 = swift_dynamicCastClassUnconditional();
LABEL_50:
                  v103 = v102;
                  goto LABEL_123;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_179:
                  __break(1u);
                  goto LABEL_180;
                }

                v166 = specialized static Entity.entityInfoType(_:)();
                if (!v166)
                {
                  v102 = makeEntity(for:)(Entity);
                  goto LABEL_50;
                }

                v103 = (*(v166 + 232))();
                v167 = *(v103 + 16);

                MEMORY[0x1C68F9740](v167, 0);
                *(v103 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v103);
              }

              else
              {
                v103 = 0;
                v101 = v214;
              }
            }

            else
            {
              v103 = 0;
              v99 = v65;
              v101 = v214;
            }

LABEL_123:
            specialized ActionEventData.action<A>()(v101, v99, a9, a10, &v217);
            if (v217 != 1)
            {
              __src[3] = v219;
              __src[4] = v220;
              __src[5] = v221;
              __src[6] = v222;
              __src[1] = v217;
              __src[2] = v218;
              v168 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v226;
              *(&__src[17] + 8) = v227;
              *(&__src[8] + 8) = vcvtq_f64_f32(v72);
              v140 = v223;
              *(&__src[14] + 8) = v224;
              *(&__src[15] + 8) = v225;
              LOBYTE(__src[7]) = v168 & 1;
              *&__src[0] = v94;
              *(&__src[7] + 1) = v103;
              LOBYTE(__src[8]) = v189;
              *(&__src[9] + 1) = v24;
              *&__src[10] = v195;
              *(&__src[10] + 1) = 0xBFF0000000000000;
              LOBYTE(__src[11]) = 0;
              v169 = v192;
LABEL_145:
              *(&__src[11] + 1) = v169;
              LOBYTE(__src[12]) = 0;
              v173 = v197;
              goto LABEL_146;
            }

            goto LABEL_152;
          }

          v73 = makeEntity(for:)(v66);
LABEL_32:
          v74 = v73;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v213 = a7;
        v205 = a15;
        v49 = a8;
        v202 = a16;
        v206 = a5;
        v207 = a13;
        v50 = *a2;
        v51 = *(a2 + 8);
        v52 = *(a2 + 24);
        v53 = *(a2 + 32);
        v54 = *(a2 + 40);
        v55 = *(a2 + 56);
        v56 = *(a2 + 64);
        v191 = *(a2 + 72);
        v194 = *(a2 + 80);
        v197 = *(a2 + 88);
        v198 = *(a2 + 48);
        v208 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v57 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          v149 = specialized static Entity.entityInfoType(_:)();
          if (v149)
          {
            v58 = (*(v149 + 232))();
            v150 = *(v58 + 16);

            MEMORY[0x1C68F9740](v150, 0);
            *(v58 + 16) = v50;
            MEMORY[0x1C68F9740](v50, v58);

LABEL_99:
            type metadata accessor for AnimationPlaybackController();
            v151 = swift_allocObject();
            *(v151 + 40) = 0;
            swift_weakInit();
            *(v151 + 16) = v51;
            swift_weakAssign();
            v152 = *(v58 + 16);

            *(v151 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v58 + 16));
            v153 = Hasher._finalize()();

            *(v151 + 24) = v153;
            v154 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v53, 0, v54, v154, v155, &v223);

            if (v55)
            {
              v156 = v49;
              if (REBindPointBoundComponent())
              {
                v157 = REComponentGetEntity();
                v158 = v213;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v159 = swift_dynamicCastClassUnconditional();
LABEL_103:
                  v160 = v159;
                  goto LABEL_142;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_183:
                  __break(1u);
                  goto LABEL_184;
                }

                v181 = specialized static Entity.entityInfoType(_:)();
                if (!v181)
                {
                  v159 = makeEntity(for:)(v157);
                  goto LABEL_103;
                }

                v160 = (*(v181 + 232))();
                v182 = *(v160 + 16);

                MEMORY[0x1C68F9740](v182, 0);
                *(v160 + 16) = v157;
                MEMORY[0x1C68F9740](v157, v160);
              }

              else
              {
                v160 = 0;
                v158 = v213;
              }
            }

            else
            {
              v160 = 0;
              v156 = v49;
              v158 = v213;
            }

LABEL_142:
            specialized ActionEventData.action<A>()(v158, v156, a9, a10, &v217);
            if (v217 != 1)
            {
              __src[3] = v219;
              __src[4] = v220;
              __src[5] = v221;
              __src[6] = v222;
              __src[1] = v217;
              __src[2] = v218;
              v183 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v226;
              *(&__src[17] + 8) = v227;
              *(&__src[8] + 8) = vcvtq_f64_f32(v56);
              v140 = v223;
              *(&__src[14] + 8) = v224;
              *(&__src[15] + 8) = v225;
              LOBYTE(__src[7]) = v183 & 1;
              *&__src[0] = v151;
              *(&__src[7] + 1) = v160;
              LOBYTE(__src[8]) = v191;
              __src[10] = 0uLL;
              *(&__src[9] + 1) = v24;
              LOBYTE(__src[11]) = 1;
              v169 = v194;
              goto LABEL_145;
            }

LABEL_152:

            __dst[2] = v219;
            __dst[3] = v220;
            __dst[4] = v221;
            __dst[5] = v222;
            __dst[0] = v217;
            __dst[1] = v218;
            v178 = v205;
            v179 = v202;
            goto LABEL_155;
          }

          v57 = makeEntity(for:)(v50);
        }

        v58 = v57;
        goto LABEL_99;
      }

      v199 = a11;
      v201 = a12;
      v210 = a9;
      v212 = a7;
      v204 = a10;
      v205 = a15;
      v41 = a8;
      v202 = a16;
      v206 = a5;
      v207 = a13;
      v82 = *a2;
      v83 = *(a2 + 8);
      v84 = *(a2 + 24);
      v25 = *(a2 + 32);
      v78 = *(a2 + 40);
      v85 = *(a2 + 64);
      v196 = *(a2 + 56);
      v198 = *(a2 + 48);
      v16 = *(a2 + 72);
      LOBYTE(v193) = *(a2 + 80);
      v208 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v86 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      v111 = specialized static Entity.entityInfoType(_:)();
      if (v111)
      {
        v87 = (*(v111 + 232))();
        v112 = *(v87 + 16);

        MEMORY[0x1C68F9740](v112, 0);
        *(v87 + 16) = v82;
        MEMORY[0x1C68F9740](v82, v87);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v113 = swift_allocObject();
        *(v113 + 40) = 0;
        swift_weakInit();
        *(v113 + 16) = v83;
        swift_weakAssign();
        v114 = *(v87 + 16);

        *(v113 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v87 + 16));
        v115 = Hasher._finalize()();

        *(v113 + 24) = v115;
        v116 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v25, 0, v78, v116, v117, &v223);

        if (v85)
        {
          v118 = v41;
          if (REBindPointBoundComponent())
          {
            v119 = REComponentGetEntity();
            v120 = v212;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v121 = swift_dynamicCastClassUnconditional();
LABEL_66:
              v122 = v121;
              goto LABEL_128;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            v170 = specialized static Entity.entityInfoType(_:)();
            if (!v170)
            {
              v121 = makeEntity(for:)(v119);
              goto LABEL_66;
            }

            v122 = (*(v170 + 232))();
            v171 = *(v122 + 16);

            MEMORY[0x1C68F9740](v171, 0);
            *(v122 + 16) = v119;
            MEMORY[0x1C68F9740](v119, v122);
          }

          else
          {
            v122 = 0;
            v120 = v212;
          }
        }

        else
        {
          v122 = 0;
          v118 = v41;
          v120 = v212;
        }

LABEL_128:
        specialized ActionEventData.action<A>()(v120, v118, v210, v204, &v217);
        if (v217 != 1)
        {
          __src[3] = v219;
          __src[4] = v220;
          __src[5] = v221;
          __src[6] = v222;
          __src[1] = v217;
          __src[2] = v218;
          v172 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v199, v201);
          *(&__src[16] + 8) = v226;
          *(&__src[17] + 8) = v227;
          *(&__src[8] + 8) = vcvtq_f64_f32(v16);
          v140 = v223;
          *(&__src[14] + 8) = v224;
          *(&__src[15] + 8) = v225;
          LOBYTE(__src[7]) = v172 & 1;
          *&__src[0] = v113;
          *(&__src[7] + 1) = v122;
          LOBYTE(__src[8]) = v193;
          *(&__src[9] + 1) = v24;
          *&__src[10] = v196;
          v173 = 0xBFF0000000000000;
          *(&__src[10] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[11]) = 0;
          *(&__src[11] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[12]) = 0;
LABEL_146:
          *(&__src[12] + 1) = v173;
          LOBYTE(__src[13]) = 0;
          goto LABEL_147;
        }

        goto LABEL_152;
      }

      v86 = makeEntity(for:)(v82);
LABEL_38:
      v87 = v86;
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

        v210 = a9;
        v212 = a7;
        v204 = a10;
        v205 = a15;
        v41 = a8;
        v206 = a5;
        v207 = a13;
        v42 = *a2;
        v43 = *(a2 + 8);
        v44 = *(a2 + 24);
        v45 = *(a2 + 40);
        v201 = *(a2 + 32);
        v202 = *(a2 + 48);
        v46 = *(a2 + 56);
        v208 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v47 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v141 = specialized static Entity.entityInfoType(_:)();
          if (v141)
          {
            v48 = (*(v141 + 232))();
            v142 = *(v48 + 16);

            MEMORY[0x1C68F9740](v142, 0);
            *(v48 + 16) = v42;
            MEMORY[0x1C68F9740](v42, v48);

LABEL_89:
            type metadata accessor for AnimationPlaybackController();
            v82 = swift_allocObject();
            *(v82 + 40) = 0;
            swift_weakInit();
            *(v82 + 16) = v43;
            swift_weakAssign();
            v143 = *(v48 + 16);

            *(v82 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v48 + 16));
            v144 = Hasher._finalize()();

            *(v82 + 24) = v144;
            v145 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v45, v145, v146, &v223);

            if (v46)
            {
              v85 = v41;
              if (REBindPointBoundComponent())
              {
                v110 = REComponentGetEntity();
                v83 = v212;
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_92;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                goto LABEL_134;
              }

              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v47 = makeEntity(for:)(v42);
        }

        v48 = v47;
        goto LABEL_89;
      }

      v210 = a9;
      v212 = a7;
      v204 = a10;
      v205 = a15;
      v41 = a8;
      v206 = a5;
      v207 = a13;
      v75 = *a2;
      v76 = *(a2 + 8);
      v77 = *(a2 + 24);
      v78 = *(a2 + 40);
      v201 = *(a2 + 32);
      v202 = *(a2 + 48);
      v79 = *(a2 + 56);
      v208 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v80 = swift_dynamicCastClassUnconditional();
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

        v104 = specialized static Entity.entityInfoType(_:)();
        if (v104)
        {
          v81 = (*(v104 + 232))();
          v105 = *(v81 + 16);

          MEMORY[0x1C68F9740](v105, 0);
          *(v81 + 16) = v75;
          MEMORY[0x1C68F9740](v75, v81);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v82 = swift_allocObject();
          *(v82 + 40) = 0;
          swift_weakInit();
          *(v82 + 16) = v76;
          swift_weakAssign();
          v106 = *(v81 + 16);

          *(v82 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v81 + 16));
          v107 = Hasher._finalize()();

          *(v82 + 24) = v107;
          v108 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v78, v108, v109, &v223);

          if (v79)
          {
            v85 = v41;
            if (REBindPointBoundComponent())
            {
              v110 = REComponentGetEntity();
              v83 = v212;
              if (REEntityGetSwiftObject())
              {
LABEL_92:
                type metadata accessor for Entity();
                v147 = swift_dynamicCastClassUnconditional();
LABEL_93:
                v148 = v147;
LABEL_136:
                specialized ActionEventData.action<A>()(v83, v85, v210, v204, &v217);
                if (v217 != 1)
                {
                  __src[3] = v219;
                  __src[4] = v220;
                  __src[5] = v221;
                  __src[6] = v222;
                  __src[1] = v217;
                  __src[2] = v218;
                  *(&__src[16] + 8) = v226;
                  *(&__src[17] + 8) = v227;
                  *(&__src[14] + 8) = v224;
                  *(&__src[15] + 8) = v225;
                  LOBYTE(__src[7]) = 1;
                  *&__src[0] = v82;
                  *(&__src[7] + 1) = v148;
                  LOBYTE(__src[8]) = 0;
                  *(&__src[8] + 1) = 0;
                  *&__src[9] = 0;
                  __src[10] = 0uLL;
                  *(&__src[9] + 1) = v24;
                  LOBYTE(__src[11]) = 1;
                  *(&__src[11] + 1) = v201;
                  LOBYTE(__src[12]) = 0;
                  *(&__src[12] + 1) = 0;
                  LOBYTE(__src[13]) = 1;
                  *(&__src[13] + 8) = v223;
                  v180 = v202;
LABEL_154:
                  *(&__src[18] + 1) = v180;
                  v206(__src);

                  memcpy(__dst, __src, sizeof(__dst));
                  v178 = v207;
                  v179 = v208;
                  goto LABEL_155;
                }

                __dst[2] = v219;
                __dst[3] = v220;
                __dst[4] = v221;
                __dst[5] = v222;
                __dst[0] = v217;
                __dst[1] = v218;
                v178 = v205;
                v179 = a16;
LABEL_155:
                outlined destroy of BodyTrackingComponent?(__dst, v178, v179);
                return 0;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_134:
              v176 = specialized static Entity.entityInfoType(_:)();
              if (v176)
              {
                v148 = (*(v176 + 232))();
                v177 = *(v148 + 16);

                MEMORY[0x1C68F9740](v177, 0);
                *(v148 + 16) = v110;
                MEMORY[0x1C68F9740](v110, v148);

                goto LABEL_136;
              }

              v147 = makeEntity(for:)(v110);
              goto LABEL_93;
            }

LABEL_95:
            v148 = 0;
            v83 = v212;
            goto LABEL_136;
          }

LABEL_94:
          v148 = 0;
          v85 = v41;
          v83 = v212;
          goto LABEL_136;
        }

        v80 = makeEntity(for:)(v75);
      }

      v81 = v80;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v209 = a9;
      v211 = a7;
      v59 = a8;
      v205 = a15;
      v206 = a5;
      v207 = a13;
      v60 = *a2;
      v61 = *(a2 + 8);
      v62 = *(a2 + 16);
      v202 = a16;
      v203 = *(a2 + 24);
      v29 = *(a2 + 40);
      v208 = a14;
      v200 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        v31 = a10;
        type metadata accessor for Entity();
        v63 = swift_dynamicCastClassUnconditional();
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

        v161 = specialized static Entity.entityInfoType(_:)();
        v31 = a10;
        if (v161)
        {
          v64 = (*(v161 + 232))();
          v162 = *(v64 + 16);

          MEMORY[0x1C68F9740](v162, 0);
          *(v64 + 16) = v60;
          MEMORY[0x1C68F9740](v60, v64);

LABEL_107:
          type metadata accessor for AnimationPlaybackController();
          v32 = swift_allocObject();
          *(v32 + 40) = 0;
          swift_weakInit();
          *(v32 + 16) = v61;
          swift_weakAssign();
          v163 = *(v64 + 16);

          *(v32 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v64 + 16));
          v164 = Hasher._finalize()();

          *(v32 + 24) = v164;
          if (v29)
          {
            v28 = v59;
            if (REBindPointBoundComponent())
            {
              v127 = REComponentGetEntity();
              v26 = v211;
              if (REEntityGetSwiftObject())
              {
                goto LABEL_110;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_184:
                __break(1u);
                return result;
              }

LABEL_149:
              v184 = specialized static Entity.entityInfoType(_:)();
              if (!v184)
              {
                v165 = makeEntity(for:)(v127);
                goto LABEL_111;
              }

              v29 = (*(v184 + 232))();
              v185 = *(v29 + 16);

              MEMORY[0x1C68F9740](v185, 0);
              *(v29 + 16) = v127;
              MEMORY[0x1C68F9740](v127, v29);

LABEL_151:
              v186 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v203, v186, v187, &v223);

              specialized ActionEventData.action<A>()(v26, v28, v209, v31, &v217);
              if (v217 != 1)
              {
                __src[3] = v219;
                __src[4] = v220;
                __src[5] = v221;
                __src[6] = v222;
                __src[1] = v217;
                __src[2] = v218;
                *(&__src[16] + 8) = v226;
                *(&__src[17] + 8) = v227;
                *(&__src[14] + 8) = v224;
                *(&__src[15] + 8) = v225;
                LOBYTE(__src[7]) = 1;
                *&__src[0] = v32;
                *(&__src[7] + 1) = v29;
                LOBYTE(__src[8]) = 0;
                *(&__src[8] + 1) = 0;
                *&__src[9] = 0;
                __src[10] = 0uLL;
                *(&__src[9] + 1) = v24;
                LOBYTE(__src[11]) = 1;
                *(&__src[11] + 1) = 0;
                LOBYTE(__src[12]) = 1;
                *(&__src[12] + 1) = 0;
                LOBYTE(__src[13]) = 1;
                *(&__src[13] + 8) = v223;
                v180 = v200;
                goto LABEL_154;
              }

              goto LABEL_152;
            }

            goto LABEL_113;
          }

          goto LABEL_112;
        }

        v63 = makeEntity(for:)(v60);
      }

      v64 = v63;
      goto LABEL_107;
    }

    v209 = a9;
    v211 = a7;
    v59 = a8;
    v205 = a15;
    v206 = a5;
    v207 = a13;
    v88 = *a2;
    v89 = *(a2 + 8);
    v27 = *(a2 + 16);
    v202 = a16;
    v203 = *(a2 + 24);
    v29 = *(a2 + 40);
    v208 = a14;
    v200 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      v31 = a10;
      type metadata accessor for Entity();
      v90 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v123 = specialized static Entity.entityInfoType(_:)();
      v31 = a10;
      if (v123)
      {
        v91 = (*(v123 + 232))();
        v124 = *(v91 + 16);

        MEMORY[0x1C68F9740](v124, 0);
        *(v91 + 16) = v88;
        MEMORY[0x1C68F9740](v88, v91);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v32 = swift_allocObject();
        *(v32 + 40) = 0;
        swift_weakInit();
        *(v32 + 16) = v89;
        swift_weakAssign();
        v125 = *(v91 + 16);

        *(v32 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v91 + 16));
        v126 = Hasher._finalize()();

        *(v32 + 24) = v126;
        if (v29)
        {
          v28 = v59;
          if (REBindPointBoundComponent())
          {
            v127 = REComponentGetEntity();
            v26 = v211;
            if (REEntityGetSwiftObject())
            {
LABEL_110:
              type metadata accessor for Entity();
              v165 = swift_dynamicCastClassUnconditional();
LABEL_111:
              v29 = v165;
              goto LABEL_151;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v128 = specialized static Entity.entityInfoType(_:)();
                if (v128)
                {
                  v34 = (*(v128 + 232))();
                  v129 = *(v34 + 16);

                  MEMORY[0x1C68F9740](v129, 0);
                  *(v34 + 16) = v27;
                  MEMORY[0x1C68F9740](v27, v34);

LABEL_78:
                  type metadata accessor for AnimationPlaybackController();
                  v130 = swift_allocObject();
                  *(v130 + 40) = 0;
                  swift_weakInit();
                  *(v130 + 16) = v28;
                  swift_weakAssign();
                  v131 = *(v34 + 16);

                  *(v130 + 32) = REEntityGetLocalId();
                  Hasher.init(_seed:)();
                  MEMORY[0x1C68F4C10](*(v34 + 16));
                  v132 = Hasher._finalize()();

                  *(v130 + 24) = v132;
                  v133 = String.init(cString:)();
                  specialized ActionEventData.init(eventID:coreData:typeName:)(v29, 0, v31, v133, v134, &v223);

                  if (!v32 || !REBindPointBoundComponent())
                  {
                    v138 = 0;
                    v136 = v211;
                    goto LABEL_84;
                  }

                  v135 = REComponentGetEntity();
                  v136 = v211;
                  if (REEntityGetSwiftObject())
                  {
                    type metadata accessor for Entity();
                    v137 = swift_dynamicCastClassUnconditional();
LABEL_82:
                    v138 = v137;
                    goto LABEL_84;
                  }

                  result = REEntityIsBeingDestroyed();
                  if ((result & 1) == 0)
                  {
                    v174 = specialized static Entity.entityInfoType(_:)();
                    if (!v174)
                    {
                      v137 = makeEntity(for:)(v135);
                      goto LABEL_82;
                    }

                    v138 = (*(v174 + 232))();
                    v175 = *(v138 + 16);

                    MEMORY[0x1C68F9740](v175, 0);
                    *(v138 + 16) = v135;
                    MEMORY[0x1C68F9740](v135, v138);

LABEL_84:
                    specialized ActionEventData.action<A>()(v136, v26, v209, v203, &v217);
                    if (v217 != 1)
                    {
                      __src[3] = v219;
                      __src[4] = v220;
                      __src[5] = v221;
                      __src[6] = v222;
                      __src[1] = v217;
                      __src[2] = v218;
                      v139 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v199, v200);
                      *(&__src[16] + 8) = v226;
                      *(&__src[17] + 8) = v227;
                      *(&__src[8] + 8) = vcvtq_f64_f32(v17);
                      *(&__src[10] + 1) = v16.f32[0];
                      v140 = v223;
                      *(&__src[14] + 8) = v224;
                      LOBYTE(__src[7]) = v139 & 1;
                      *&__src[0] = v130;
                      *(&__src[7] + 1) = v138;
                      LOBYTE(__src[8]) = v188;
                      *(&__src[9] + 1) = v24;
                      *&__src[10] = v190;
                      LOBYTE(__src[11]) = 0;
                      *(&__src[11] + 1) = v196;
                      LOBYTE(__src[12]) = 0;
                      *(&__src[12] + 1) = v193;
                      LOBYTE(__src[13]) = 0;
                      *(&__src[15] + 8) = v225;
LABEL_147:
                      *(&__src[13] + 8) = v140;
                      v180 = v198;
                      goto LABEL_154;
                    }

                    goto LABEL_152;
                  }

                  goto LABEL_181;
                }

                v33 = makeEntity(for:)(v27);
LABEL_8:
                v34 = v33;
                goto LABEL_78;
              }

              goto LABEL_175;
            }

            goto LABEL_149;
          }

LABEL_113:
          v29 = 0;
          v26 = v211;
          goto LABEL_151;
        }

LABEL_112:
        v28 = v59;
        v26 = v211;
        goto LABEL_151;
      }

      v90 = makeEntity(for:)(v88);
    }

    v91 = v90;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static AnimationLogger.logger);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&__dst[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v36, v37, "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1C6902A30](v39, -1, -1);
    MEMORY[0x1C6902A30](v38, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = a16;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v198 = a11;
            v199 = a12;
            v208 = a9;
            v210 = a7;
            v202 = a10;
            v204 = a15;
            v26 = a8;
            v201 = a16;
            v205 = a5;
            v206 = a13;
            v27 = *a2;
            v28 = *(a2 + 8);
            v30 = *(a2 + 24);
            v29 = *(a2 + 32);
            v31 = *(a2 + 40);
            v16.i32[0] = *(a2 + 56);
            v192 = *(a2 + 64);
            v195 = *(a2 + 48);
            v189 = *(a2 + 72);
            v32 = *(a2 + 88);
            v197 = *(a2 + 80);
            v17 = *(a2 + 96);
            v187 = *(a2 + 104);
            v207 = a14;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v33 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_75;
          }

LABEL_42:

          return 0;
        }

        v213 = a7;
        v204 = a15;
        v65 = a8;
        v201 = a16;
        v205 = a5;
        v206 = a13;
        v66 = *a2;
        v67 = *(a2 + 8);
        v68 = *(a2 + 24);
        v69 = *(a2 + 32);
        v70 = *(a2 + 40);
        v71 = *(a2 + 64);
        v72 = *(a2 + 72);
        v188 = *(a2 + 80);
        v191 = *(a2 + 88);
        v194 = *(a2 + 56);
        v196 = *(a2 + 96);
        v197 = *(a2 + 48);
        v207 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v73 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v92 = specialized static Entity.entityInfoType(_:)();
          if (v92)
          {
            v74 = (*(v92 + 232))();
            v93 = *(v74 + 16);

            MEMORY[0x1C68F9740](v93, 0);
            *(v74 + 16) = v66;
            MEMORY[0x1C68F9740](v66, v74);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v94 = swift_allocObject();
            *(v94 + 40) = 0;
            swift_weakInit();
            *(v94 + 16) = v67;
            swift_weakAssign();
            v95 = *(v74 + 16);

            *(v94 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v74 + 16));
            v96 = Hasher._finalize()();

            *(v94 + 24) = v96;
            v97 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v69, 0, v70, v97, v98, &v223);

            if (v71)
            {
              v99 = v65;
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                v101 = v213;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v102 = swift_dynamicCastClassUnconditional();
LABEL_50:
                  v103 = v102;
                  goto LABEL_123;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_179:
                  __break(1u);
                  goto LABEL_180;
                }

                v165 = specialized static Entity.entityInfoType(_:)();
                if (!v165)
                {
                  v102 = makeEntity(for:)(Entity);
                  goto LABEL_50;
                }

                v103 = (*(v165 + 232))();
                v166 = *(v103 + 16);

                MEMORY[0x1C68F9740](v166, 0);
                *(v103 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v103);
              }

              else
              {
                v103 = 0;
                v101 = v213;
              }
            }

            else
            {
              v103 = 0;
              v99 = v65;
              v101 = v213;
            }

LABEL_123:
            specialized ActionEventData.action<A>()(v101, v99, a9, a10, &v216);
            if (v222 != 1)
            {
              __src[5] = v220;
              __src[6] = v221;
              __src[7] = v222;
              __src[1] = v216;
              __src[2] = v217;
              __src[3] = v218;
              __src[4] = v219;
              v167 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v225;
              *(&__src[17] + 8) = v226;
              *(&__src[18] + 8) = v227;
              *(&__src[9] + 8) = vcvtq_f64_f32(v72);
              v139 = v223;
              *(&__src[15] + 8) = v224;
              LOBYTE(__src[8]) = v167 & 1;
              *&__src[0] = v94;
              *(&__src[8] + 1) = v103;
              LOBYTE(__src[9]) = v188;
              *(&__src[10] + 1) = v24;
              *&__src[11] = v194;
              *(&__src[11] + 1) = 0xBFF0000000000000;
              LOBYTE(__src[12]) = 0;
              v168 = v191;
LABEL_145:
              *(&__src[12] + 1) = v168;
              LOBYTE(__src[13]) = 0;
              v172 = v196;
              goto LABEL_146;
            }

            goto LABEL_152;
          }

          v73 = makeEntity(for:)(v66);
LABEL_32:
          v74 = v73;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_172;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v212 = a7;
        v204 = a15;
        v49 = a8;
        v201 = a16;
        v205 = a5;
        v206 = a13;
        v50 = *a2;
        v51 = *(a2 + 8);
        v52 = *(a2 + 24);
        v53 = *(a2 + 32);
        v54 = *(a2 + 40);
        v55 = *(a2 + 56);
        v56 = *(a2 + 64);
        v190 = *(a2 + 72);
        v193 = *(a2 + 80);
        v196 = *(a2 + 88);
        v197 = *(a2 + 48);
        v207 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v57 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          v148 = specialized static Entity.entityInfoType(_:)();
          if (v148)
          {
            v58 = (*(v148 + 232))();
            v149 = *(v58 + 16);

            MEMORY[0x1C68F9740](v149, 0);
            *(v58 + 16) = v50;
            MEMORY[0x1C68F9740](v50, v58);

LABEL_99:
            type metadata accessor for AnimationPlaybackController();
            v150 = swift_allocObject();
            *(v150 + 40) = 0;
            swift_weakInit();
            *(v150 + 16) = v51;
            swift_weakAssign();
            v151 = *(v58 + 16);

            *(v150 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v58 + 16));
            v152 = Hasher._finalize()();

            *(v150 + 24) = v152;
            v153 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v53, 0, v54, v153, v154, &v223);

            if (v55)
            {
              v155 = v49;
              if (REBindPointBoundComponent())
              {
                v156 = REComponentGetEntity();
                v157 = v212;
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v158 = swift_dynamicCastClassUnconditional();
LABEL_103:
                  v159 = v158;
                  goto LABEL_142;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_183:
                  __break(1u);
                  goto LABEL_184;
                }

                v180 = specialized static Entity.entityInfoType(_:)();
                if (!v180)
                {
                  v158 = makeEntity(for:)(v156);
                  goto LABEL_103;
                }

                v159 = (*(v180 + 232))();
                v181 = *(v159 + 16);

                MEMORY[0x1C68F9740](v181, 0);
                *(v159 + 16) = v156;
                MEMORY[0x1C68F9740](v156, v159);
              }

              else
              {
                v159 = 0;
                v157 = v212;
              }
            }

            else
            {
              v159 = 0;
              v155 = v49;
              v157 = v212;
            }

LABEL_142:
            specialized ActionEventData.action<A>()(v157, v155, a9, a10, &v216);
            if (v222 != 1)
            {
              __src[5] = v220;
              __src[6] = v221;
              __src[7] = v222;
              __src[1] = v216;
              __src[2] = v217;
              __src[3] = v218;
              __src[4] = v219;
              v182 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12);
              *(&__src[16] + 8) = v225;
              *(&__src[17] + 8) = v226;
              *(&__src[18] + 8) = v227;
              *(&__src[9] + 8) = vcvtq_f64_f32(v56);
              v139 = v223;
              *(&__src[15] + 8) = v224;
              LOBYTE(__src[8]) = v182 & 1;
              *&__src[0] = v150;
              *(&__src[8] + 1) = v159;
              LOBYTE(__src[9]) = v190;
              __src[11] = 0uLL;
              *(&__src[10] + 1) = v24;
              LOBYTE(__src[12]) = 1;
              v168 = v193;
              goto LABEL_145;
            }

LABEL_152:

            __dst[4] = v220;
            __dst[5] = v221;
            __dst[6] = v222;
            __dst[0] = v216;
            __dst[1] = v217;
            __dst[2] = v218;
            __dst[3] = v219;
            v177 = v204;
            v178 = v201;
            goto LABEL_155;
          }

          v57 = makeEntity(for:)(v50);
        }

        v58 = v57;
        goto LABEL_99;
      }

      v198 = a11;
      v200 = a12;
      v209 = a9;
      v211 = a7;
      v203 = a10;
      v204 = a15;
      v41 = a8;
      v201 = a16;
      v205 = a5;
      v206 = a13;
      v82 = *a2;
      v83 = *(a2 + 8);
      v84 = *(a2 + 24);
      v25 = *(a2 + 32);
      v78 = *(a2 + 40);
      v85 = *(a2 + 64);
      v195 = *(a2 + 56);
      v197 = *(a2 + 48);
      v16 = *(a2 + 72);
      LOBYTE(v192) = *(a2 + 80);
      v207 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v86 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_59:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

      v111 = specialized static Entity.entityInfoType(_:)();
      if (v111)
      {
        v87 = (*(v111 + 232))();
        v112 = *(v87 + 16);

        MEMORY[0x1C68F9740](v112, 0);
        *(v87 + 16) = v82;
        MEMORY[0x1C68F9740](v82, v87);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v113 = swift_allocObject();
        *(v113 + 40) = 0;
        swift_weakInit();
        *(v113 + 16) = v83;
        swift_weakAssign();
        v114 = *(v87 + 16);

        *(v113 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v87 + 16));
        v115 = Hasher._finalize()();

        *(v113 + 24) = v115;
        v116 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v25, 0, v78, v116, v117, &v223);

        if (v85)
        {
          v118 = v41;
          if (REBindPointBoundComponent())
          {
            v119 = REComponentGetEntity();
            v120 = v211;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v121 = swift_dynamicCastClassUnconditional();
LABEL_66:
              v122 = v121;
              goto LABEL_128;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            v169 = specialized static Entity.entityInfoType(_:)();
            if (!v169)
            {
              v121 = makeEntity(for:)(v119);
              goto LABEL_66;
            }

            v122 = (*(v169 + 232))();
            v170 = *(v122 + 16);

            MEMORY[0x1C68F9740](v170, 0);
            *(v122 + 16) = v119;
            MEMORY[0x1C68F9740](v119, v122);
          }

          else
          {
            v122 = 0;
            v120 = v211;
          }
        }

        else
        {
          v122 = 0;
          v118 = v41;
          v120 = v211;
        }

LABEL_128:
        specialized ActionEventData.action<A>()(v120, v118, v209, v203, &v216);
        if (v222 != 1)
        {
          __src[5] = v220;
          __src[6] = v221;
          __src[7] = v222;
          __src[1] = v216;
          __src[2] = v217;
          __src[3] = v218;
          __src[4] = v219;
          v171 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v198, v200);
          *(&__src[16] + 8) = v225;
          *(&__src[17] + 8) = v226;
          *(&__src[18] + 8) = v227;
          *(&__src[9] + 8) = vcvtq_f64_f32(v16);
          v139 = v223;
          *(&__src[15] + 8) = v224;
          LOBYTE(__src[8]) = v171 & 1;
          *&__src[0] = v113;
          *(&__src[8] + 1) = v122;
          LOBYTE(__src[9]) = v192;
          *(&__src[10] + 1) = v24;
          *&__src[11] = v195;
          v172 = 0xBFF0000000000000;
          *(&__src[11] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[12]) = 0;
          *(&__src[12] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[13]) = 0;
LABEL_146:
          *(&__src[13] + 1) = v172;
          LOBYTE(__src[14]) = 0;
          goto LABEL_147;
        }

        goto LABEL_152;
      }

      v86 = makeEntity(for:)(v82);
LABEL_38:
      v87 = v86;
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

        v209 = a9;
        v211 = a7;
        v203 = a10;
        v204 = a15;
        v41 = a8;
        v205 = a5;
        v206 = a13;
        v42 = *a2;
        v43 = *(a2 + 8);
        v44 = *(a2 + 24);
        v45 = *(a2 + 40);
        v200 = *(a2 + 32);
        v201 = *(a2 + 48);
        v46 = *(a2 + 56);
        v207 = a14;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v47 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v140 = specialized static Entity.entityInfoType(_:)();
          if (v140)
          {
            v48 = (*(v140 + 232))();
            v141 = *(v48 + 16);

            MEMORY[0x1C68F9740](v141, 0);
            *(v48 + 16) = v42;
            MEMORY[0x1C68F9740](v42, v48);

LABEL_89:
            type metadata accessor for AnimationPlaybackController();
            v82 = swift_allocObject();
            *(v82 + 40) = 0;
            swift_weakInit();
            *(v82 + 16) = v43;
            swift_weakAssign();
            v142 = *(v48 + 16);

            *(v82 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v48 + 16));
            v143 = Hasher._finalize()();

            *(v82 + 24) = v143;
            v144 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v45, v144, v145, &v223);

            if (v46)
            {
              v85 = v41;
              if (REBindPointBoundComponent())
              {
                v110 = REComponentGetEntity();
                v83 = v211;
                if (REEntityGetSwiftObject())
                {
                  goto LABEL_92;
                }

                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                goto LABEL_134;
              }

              goto LABEL_95;
            }

            goto LABEL_94;
          }

          v47 = makeEntity(for:)(v42);
        }

        v48 = v47;
        goto LABEL_89;
      }

      v209 = a9;
      v211 = a7;
      v203 = a10;
      v204 = a15;
      v41 = a8;
      v205 = a5;
      v206 = a13;
      v75 = *a2;
      v76 = *(a2 + 8);
      v77 = *(a2 + 24);
      v78 = *(a2 + 40);
      v200 = *(a2 + 32);
      v201 = *(a2 + 48);
      v79 = *(a2 + 56);
      v207 = a14;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v80 = swift_dynamicCastClassUnconditional();
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

        v104 = specialized static Entity.entityInfoType(_:)();
        if (v104)
        {
          v81 = (*(v104 + 232))();
          v105 = *(v81 + 16);

          MEMORY[0x1C68F9740](v105, 0);
          *(v81 + 16) = v75;
          MEMORY[0x1C68F9740](v75, v81);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v82 = swift_allocObject();
          *(v82 + 40) = 0;
          swift_weakInit();
          *(v82 + 16) = v76;
          swift_weakAssign();
          v106 = *(v81 + 16);

          *(v82 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v81 + 16));
          v107 = Hasher._finalize()();

          *(v82 + 24) = v107;
          v108 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v78, v108, v109, &v223);

          if (v79)
          {
            v85 = v41;
            if (REBindPointBoundComponent())
            {
              v110 = REComponentGetEntity();
              v83 = v211;
              if (REEntityGetSwiftObject())
              {
LABEL_92:
                type metadata accessor for Entity();
                v146 = swift_dynamicCastClassUnconditional();
LABEL_93:
                v147 = v146;
LABEL_136:
                specialized ActionEventData.action<A>()(v83, v85, v209, v203, &v216);
                if (v222 != 1)
                {
                  __src[5] = v220;
                  __src[6] = v221;
                  __src[7] = v222;
                  __src[1] = v216;
                  __src[2] = v217;
                  __src[3] = v218;
                  __src[4] = v219;
                  *(&__src[16] + 8) = v225;
                  *(&__src[17] + 8) = v226;
                  *(&__src[18] + 8) = v227;
                  *(&__src[15] + 8) = v224;
                  LOBYTE(__src[8]) = 1;
                  *&__src[0] = v82;
                  *(&__src[8] + 1) = v147;
                  LOBYTE(__src[9]) = 0;
                  *(&__src[9] + 1) = 0;
                  *&__src[10] = 0;
                  __src[11] = 0uLL;
                  *(&__src[10] + 1) = v24;
                  LOBYTE(__src[12]) = 1;
                  *(&__src[12] + 1) = v200;
                  LOBYTE(__src[13]) = 0;
                  *(&__src[13] + 1) = 0;
                  LOBYTE(__src[14]) = 1;
                  *(&__src[14] + 8) = v223;
                  v179 = v201;
LABEL_154:
                  *(&__src[19] + 1) = v179;
                  v205(__src);

                  memcpy(__dst, __src, sizeof(__dst));
                  v177 = v206;
                  v178 = v207;
                  goto LABEL_155;
                }

                __dst[4] = v220;
                __dst[5] = v221;
                __dst[6] = v222;
                __dst[0] = v216;
                __dst[1] = v217;
                __dst[2] = v218;
                __dst[3] = v219;
                v177 = v204;
                v178 = a16;
LABEL_155:
                outlined destroy of BodyTrackingComponent?(__dst, v177, v178);
                return 0;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_134:
              v175 = specialized static Entity.entityInfoType(_:)();
              if (v175)
              {
                v147 = (*(v175 + 232))();
                v176 = *(v147 + 16);

                MEMORY[0x1C68F9740](v176, 0);
                *(v147 + 16) = v110;
                MEMORY[0x1C68F9740](v110, v147);

                goto LABEL_136;
              }

              v146 = makeEntity(for:)(v110);
              goto LABEL_93;
            }

LABEL_95:
            v147 = 0;
            v83 = v211;
            goto LABEL_136;
          }

LABEL_94:
          v147 = 0;
          v85 = v41;
          v83 = v211;
          goto LABEL_136;
        }

        v80 = makeEntity(for:)(v75);
      }

      v81 = v80;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v208 = a9;
      v210 = a7;
      v59 = a8;
      v204 = a15;
      v205 = a5;
      v206 = a13;
      v60 = *a2;
      v61 = *(a2 + 8);
      v62 = *(a2 + 16);
      v201 = a16;
      v202 = *(a2 + 24);
      v29 = *(a2 + 40);
      v207 = a14;
      v199 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        v31 = a10;
        type metadata accessor for Entity();
        v63 = swift_dynamicCastClassUnconditional();
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

        v160 = specialized static Entity.entityInfoType(_:)();
        v31 = a10;
        if (v160)
        {
          v64 = (*(v160 + 232))();
          v161 = *(v64 + 16);

          MEMORY[0x1C68F9740](v161, 0);
          *(v64 + 16) = v60;
          MEMORY[0x1C68F9740](v60, v64);

LABEL_107:
          type metadata accessor for AnimationPlaybackController();
          v32 = swift_allocObject();
          *(v32 + 40) = 0;
          swift_weakInit();
          *(v32 + 16) = v61;
          swift_weakAssign();
          v162 = *(v64 + 16);

          *(v32 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v64 + 16));
          v163 = Hasher._finalize()();

          *(v32 + 24) = v163;
          if (v29)
          {
            v28 = v59;
            if (REBindPointBoundComponent())
            {
              v127 = REComponentGetEntity();
              v26 = v210;
              if (REEntityGetSwiftObject())
              {
                goto LABEL_110;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_184:
                __break(1u);
                return result;
              }

LABEL_149:
              v183 = specialized static Entity.entityInfoType(_:)();
              if (!v183)
              {
                v164 = makeEntity(for:)(v127);
                goto LABEL_111;
              }

              v29 = (*(v183 + 232))();
              v184 = *(v29 + 16);

              MEMORY[0x1C68F9740](v184, 0);
              *(v29 + 16) = v127;
              MEMORY[0x1C68F9740](v127, v29);

LABEL_151:
              v185 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v202, v185, v186, &v223);

              specialized ActionEventData.action<A>()(v26, v28, v208, v31, &v216);
              if (v222 != 1)
              {
                __src[5] = v220;
                __src[6] = v221;
                __src[7] = v222;
                __src[1] = v216;
                __src[2] = v217;
                __src[3] = v218;
                __src[4] = v219;
                *(&__src[16] + 8) = v225;
                *(&__src[17] + 8) = v226;
                *(&__src[18] + 8) = v227;
                *(&__src[15] + 8) = v224;
                LOBYTE(__src[8]) = 1;
                *&__src[0] = v32;
                *(&__src[8] + 1) = v29;
                LOBYTE(__src[9]) = 0;
                *(&__src[9] + 1) = 0;
                *&__src[10] = 0;
                __src[11] = 0uLL;
                *(&__src[10] + 1) = v24;
                LOBYTE(__src[12]) = 1;
                *(&__src[12] + 1) = 0;
                LOBYTE(__src[13]) = 1;
                *(&__src[13] + 1) = 0;
                LOBYTE(__src[14]) = 1;
                *(&__src[14] + 8) = v223;
                v179 = v199;
                goto LABEL_154;
              }

              goto LABEL_152;
            }

            goto LABEL_113;
          }

          goto LABEL_112;
        }

        v63 = makeEntity(for:)(v60);
      }

      v64 = v63;
      goto LABEL_107;
    }

    v208 = a9;
    v210 = a7;
    v59 = a8;
    v204 = a15;
    v205 = a5;
    v206 = a13;
    v88 = *a2;
    v89 = *(a2 + 8);
    v27 = *(a2 + 16);
    v201 = a16;
    v202 = *(a2 + 24);
    v29 = *(a2 + 40);
    v207 = a14;
    v199 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      v31 = a10;
      type metadata accessor for Entity();
      v90 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v123 = specialized static Entity.entityInfoType(_:)();
      v31 = a10;
      if (v123)
      {
        v91 = (*(v123 + 232))();
        v124 = *(v91 + 16);

        MEMORY[0x1C68F9740](v124, 0);
        *(v91 + 16) = v88;
        MEMORY[0x1C68F9740](v88, v91);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v32 = swift_allocObject();
        *(v32 + 40) = 0;
        swift_weakInit();
        *(v32 + 16) = v89;
        swift_weakAssign();
        v125 = *(v91 + 16);

        *(v32 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v91 + 16));
        v126 = Hasher._finalize()();

        *(v32 + 24) = v126;
        if (v29)
        {
          v28 = v59;
          if (REBindPointBoundComponent())
          {
            v127 = REComponentGetEntity();
            v26 = v210;
            if (REEntityGetSwiftObject())
            {
LABEL_110:
              type metadata accessor for Entity();
              v164 = swift_dynamicCastClassUnconditional();
LABEL_111:
              v29 = v164;
              goto LABEL_151;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
LABEL_75:
              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v128 = specialized static Entity.entityInfoType(_:)();
                if (v128)
                {
                  v34 = (*(v128 + 232))();
                  v129 = *(v34 + 16);

                  MEMORY[0x1C68F9740](v129, 0);
                  *(v34 + 16) = v27;
                  MEMORY[0x1C68F9740](v27, v34);

LABEL_78:
                  type metadata accessor for AnimationPlaybackController();
                  v130 = swift_allocObject();
                  *(v130 + 40) = 0;
                  swift_weakInit();
                  *(v130 + 16) = v28;
                  swift_weakAssign();
                  v131 = *(v34 + 16);

                  *(v130 + 32) = REEntityGetLocalId();
                  Hasher.init(_seed:)();
                  MEMORY[0x1C68F4C10](*(v34 + 16));
                  v132 = Hasher._finalize()();

                  *(v130 + 24) = v132;
                  v133 = String.init(cString:)();
                  specialized ActionEventData.init(eventID:coreData:typeName:)(v29, 0, v31, v133, v134, &v223);

                  if (!v32 || !REBindPointBoundComponent())
                  {
                    v138 = 0;
                    v136 = v210;
                    goto LABEL_84;
                  }

                  v135 = REComponentGetEntity();
                  v136 = v210;
                  if (REEntityGetSwiftObject())
                  {
                    type metadata accessor for Entity();
                    v137 = swift_dynamicCastClassUnconditional();
LABEL_82:
                    v138 = v137;
                    goto LABEL_84;
                  }

                  result = REEntityIsBeingDestroyed();
                  if ((result & 1) == 0)
                  {
                    v173 = specialized static Entity.entityInfoType(_:)();
                    if (!v173)
                    {
                      v137 = makeEntity(for:)(v135);
                      goto LABEL_82;
                    }

                    v138 = (*(v173 + 232))();
                    v174 = *(v138 + 16);

                    MEMORY[0x1C68F9740](v174, 0);
                    *(v138 + 16) = v135;
                    MEMORY[0x1C68F9740](v135, v138);

LABEL_84:
                    specialized ActionEventData.action<A>()(v136, v26, v208, v202, &v216);
                    if (v222 != 1)
                    {
                      __src[5] = v220;
                      __src[6] = v221;
                      __src[7] = v222;
                      __src[1] = v216;
                      __src[2] = v217;
                      __src[3] = v218;
                      __src[4] = v219;
                      LOBYTE(__src[8]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v198, v199) & 1;
                      *&__src[0] = v130;
                      *(&__src[8] + 1) = v138;
                      LOBYTE(__src[9]) = v187;
                      *(&__src[9] + 8) = vcvtq_f64_f32(v17);
                      *(&__src[10] + 1) = v24;
                      *&__src[11] = v189;
                      *(&__src[11] + 1) = v16.f32[0];
                      LOBYTE(__src[12]) = 0;
                      *(&__src[12] + 1) = v195;
                      LOBYTE(__src[13]) = 0;
                      *(&__src[13] + 1) = v192;
                      LOBYTE(__src[14]) = 0;
                      *(&__src[16] + 8) = v225;
                      *(&__src[17] + 8) = v226;
                      *(&__src[18] + 8) = v227;
                      v139 = v223;
                      *(&__src[15] + 8) = v224;
LABEL_147:
                      *(&__src[14] + 8) = v139;
                      v179 = v197;
                      goto LABEL_154;
                    }

                    goto LABEL_152;
                  }

                  goto LABEL_181;
                }

                v33 = makeEntity(for:)(v27);
LABEL_8:
                v34 = v33;
                goto LABEL_78;
              }

              goto LABEL_175;
            }

            goto LABEL_149;
          }

LABEL_113:
          v29 = 0;
          v26 = v210;
          goto LABEL_151;
        }

LABEL_112:
        v28 = v59;
        v26 = v210;
        goto LABEL_151;
      }

      v90 = makeEntity(for:)(v88);
    }

    v91 = v90;
    goto LABEL_70;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static AnimationLogger.logger);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&__dst[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v36, v37, "%s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1C6902A30](v39, -1, -1);
    MEMORY[0x1C6902A30](v38, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v172 = a11;
            v173 = a12;
            v175 = a9;
            v179 = a10;
            v181 = Strong;
            v177 = a5;
            v22 = *a2;
            v23 = *(a2 + 8);
            v25 = *(a2 + 24);
            v24 = *(a2 + 32);
            v26 = *(a2 + 40);
            v14.i32[0] = *(a2 + 56);
            v166 = *(a2 + 64);
            v168 = *(a2 + 48);
            v163 = *(a2 + 72);
            v27 = *(a2 + 88);
            v15 = *(a2 + 96);
            v161 = *(a2 + 104);
            v170 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v28 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            goto LABEL_81;
          }

LABEL_42:

          return 0;
        }

        v184 = Strong;
        v178 = a5;
        v58 = *a2;
        v59 = *(a2 + 8);
        v61 = *(a2 + 24);
        v60 = *(a2 + 32);
        v62 = *(a2 + 40);
        v63 = *(a2 + 64);
        v64 = *(a2 + 72);
        v162 = *(a2 + 80);
        v165 = *(a2 + 56);
        v167 = *(a2 + 88);
        v169 = *(a2 + 96);
        v171 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v65 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v81 = specialized static Entity.entityInfoType(_:)();
          if (v81)
          {
            v66 = (*(v81 + 232))();
            v82 = *(v66 + 16);

            MEMORY[0x1C68F9740](v82, 0);
            *(v66 + 16) = v58;
            MEMORY[0x1C68F9740](v58, v66);

            goto LABEL_46;
          }

          v65 = makeEntity(for:)(v58);
LABEL_32:
          v66 = v65;
LABEL_46:
          type metadata accessor for AnimationPlaybackController();
          v83 = swift_allocObject();
          *(v83 + 40) = 0;
          swift_weakInit();
          *(v83 + 16) = v59;
          swift_weakAssign();
          v84 = *(v66 + 16);

          *(v83 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v66 + 16));
          v85 = Hasher._finalize()();

          *(v83 + 24) = v85;
          v86 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v60, 0, v62, v86, v87, &v221);

          if (v63 && REBindPointBoundComponent())
          {
            Entity = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v89 = swift_dynamicCastClassUnconditional();
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

              v147 = specialized static Entity.entityInfoType(_:)();
              if (v147)
              {
                v90 = (*(v147 + 232))();
                v148 = *(v90 + 16);

                MEMORY[0x1C68F9740](v148, 0);
                *(v90 + 16) = Entity;
                MEMORY[0x1C68F9740](Entity, v90);

                goto LABEL_52;
              }

              v89 = makeEntity(for:)(Entity);
            }

            v90 = v89;
          }

          else
          {
            v90 = 0;
          }

LABEL_52:
          specialized ActionEventData.action<A>()(a7, a8, a9, a10, &v216);
          if (!*(&v218 + 1))
          {
            goto LABEL_150;
          }

          *&v185[8] = v216;
          v185[24] = v217 & 1;
          v186 = v218;
          *&v187 = v219;
          BYTE8(v187) = v220 & 1;
          BYTE9(v187) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12) & 1;
          *v185 = v83;
          *&v188 = v90;
          BYTE8(v188) = v162;
          v189 = vcvtq_f64_f32(v64);
          *&v190 = v184;
          *(&v190 + 1) = v165;
          *&v191 = 0xBFF0000000000000;
          BYTE8(v191) = 0;
          goto LABEL_113;
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

        v183 = Strong;
        v178 = a5;
        v44 = *a2;
        v45 = *(a2 + 8);
        v47 = *(a2 + 24);
        v46 = *(a2 + 32);
        v48 = *(a2 + 40);
        v49 = *(a2 + 56);
        v50 = *(a2 + 64);
        v164 = *(a2 + 72);
        v167 = *(a2 + 80);
        v169 = *(a2 + 88);
        v171 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v51 = swift_dynamicCastClassUnconditional();
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

          v132 = specialized static Entity.entityInfoType(_:)();
          if (v132)
          {
            v52 = (*(v132 + 232))();
            v133 = *(v52 + 16);

            MEMORY[0x1C68F9740](v133, 0);
            *(v52 + 16) = v44;
            MEMORY[0x1C68F9740](v44, v52);

            goto LABEL_105;
          }

          v51 = makeEntity(for:)(v44);
        }

        v52 = v51;
LABEL_105:
        type metadata accessor for AnimationPlaybackController();
        v134 = swift_allocObject();
        *(v134 + 40) = 0;
        swift_weakInit();
        *(v134 + 16) = v45;
        swift_weakAssign();
        v135 = *(v52 + 16);

        *(v134 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v52 + 16));
        v136 = Hasher._finalize()();

        *(v134 + 24) = v136;
        v137 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v46, 0, v48, v137, v138, &v221);

        if (v49 && REBindPointBoundComponent())
        {
          v139 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v140 = swift_dynamicCastClassUnconditional();
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

            v155 = specialized static Entity.entityInfoType(_:)();
            if (v155)
            {
              v141 = (*(v155 + 232))();
              v156 = *(v141 + 16);

              MEMORY[0x1C68F9740](v156, 0);
              *(v141 + 16) = v139;
              MEMORY[0x1C68F9740](v139, v141);

              goto LABEL_111;
            }

            v140 = makeEntity(for:)(v139);
          }

          v141 = v140;
        }

        else
        {
          v141 = 0;
        }

LABEL_111:
        specialized ActionEventData.action<A>()(a7, a8, a9, a10, &v216);
        if (!*(&v218 + 1))
        {
          goto LABEL_150;
        }

        *&v185[8] = v216;
        v185[24] = v217 & 1;
        v186 = v218;
        *&v187 = v219;
        BYTE8(v187) = v220 & 1;
        BYTE9(v187) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a11, a12) & 1;
        *v185 = v134;
        *&v188 = v141;
        BYTE8(v188) = v164;
        v189 = vcvtq_f64_f32(v50);
        *&v191 = 0;
        v190 = v183;
        BYTE8(v191) = 1;
LABEL_113:
        *&v192 = v167;
        BYTE8(v192) = 0;
        *&v193 = v169;
        BYTE8(v193) = 0;
        v196 = v223;
        v197 = v224;
        v198 = v225;
        v195 = v222;
        v194 = v221;
        v199 = v171;
        v178(v185);
        goto LABEL_114;
      }

      v172 = a11;
      v174 = a12;
      v176 = a9;
      v180 = a10;
      v182 = Strong;
      v177 = a5;
      v41 = *a2;
      v68 = *(a2 + 8);
      v73 = *(a2 + 24);
      v69 = *(a2 + 32);
      v74 = *(a2 + 40);
      v75 = *(a2 + 64);
      v168 = *(a2 + 56);
      v14 = *(a2 + 72);
      LOBYTE(v166) = *(a2 + 80);
      v170 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v76 = swift_dynamicCastClassUnconditional();
        goto LABEL_38;
      }

LABEL_62:
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v97 = specialized static Entity.entityInfoType(_:)();
      if (v97)
      {
        v77 = (*(v97 + 232))();
        v98 = *(v77 + 16);

        MEMORY[0x1C68F9740](v98, 0);
        *(v77 + 16) = v41;
        MEMORY[0x1C68F9740](v41, v77);

        goto LABEL_65;
      }

      v76 = makeEntity(for:)(v41);
LABEL_38:
      v77 = v76;
LABEL_65:
      type metadata accessor for AnimationPlaybackController();
      v99 = swift_allocObject();
      *(v99 + 40) = 0;
      swift_weakInit();
      *(v99 + 16) = v68;
      swift_weakAssign();
      v100 = *(v77 + 16);

      *(v99 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v77 + 16));
      v101 = Hasher._finalize()();

      *(v99 + 24) = v101;
      v102 = String.init(cString:)();
      specialized ActionEventData.init(eventID:coreData:typeName:)(v69, 0, v74, v102, v103, &v221);

      if (v75 && REBindPointBoundComponent())
      {
        v104 = REComponentGetEntity();
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v105 = swift_dynamicCastClassUnconditional();
LABEL_69:
          v106 = v105;
          goto LABEL_71;
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

        v149 = specialized static Entity.entityInfoType(_:)();
        if (!v149)
        {
          v105 = makeEntity(for:)(v104);
          goto LABEL_69;
        }

        v106 = (*(v149 + 232))();
        v150 = *(v106 + 16);

        MEMORY[0x1C68F9740](v150, 0);
        *(v106 + 16) = v104;
        MEMORY[0x1C68F9740](v104, v106);
      }

      else
      {
        v106 = 0;
      }

LABEL_71:
      specialized ActionEventData.action<A>()(a7, a8, v176, v180, &v216);
      if (*(&v218 + 1))
      {
        v107 = v216;
        v185[24] = v217 & 1;
        v186 = v218;
        *&v187 = v219;
        BYTE8(v187) = v220 & 1;
        BYTE9(v187) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v172, v174) & 1;
        *&v185[8] = v107;
        *v185 = v99;
        *&v188 = v106;
        BYTE8(v188) = v166;
        v189 = vcvtq_f64_f32(v14);
        *&v190 = v182;
        *(&v190 + 1) = v168;
        v108 = 0xBFF0000000000000;
        *&v191 = 0xBFF0000000000000;
        BYTE8(v191) = 0;
        *&v192 = 0xBFF0000000000000;
LABEL_92:
        BYTE8(v192) = 0;
        *&v193 = v108;
        BYTE8(v193) = 0;
        v196 = v223;
        v197 = v224;
        v198 = v225;
        v195 = v222;
        v194 = v221;
        v199 = v170;
        v177(v185);
LABEL_114:

        v212 = v196;
        v213 = v197;
        v214 = v198;
        v215 = v199;
        v208 = v192;
        v209 = v193;
        v210 = v194;
        v211 = v195;
        v204 = v188;
        v205 = v189;
        v206 = v190;
        v207 = v191;
        v200 = *v185;
        v201 = *&v185[16];
        v202 = v186;
        v203 = v187;
LABEL_149:
        outlined destroy of BodyTrackingComponent?(&v200, a13, a14);
        return 0;
      }

LABEL_150:

      outlined consume of SetEntityPropertyAction<Bool>?(v216, *(&v216 + 1), v217, v218, 0);
      return 0;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v36 = a9;
        v180 = a10;
        v182 = Strong;
        v177 = a5;
        v37 = *a2;
        v38 = *(a2 + 8);
        v39 = *(a2 + 24);
        v174 = *(a2 + 32);
        v40 = *(a2 + 40);
        v41 = *(a2 + 56);
        v176 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v42 = swift_dynamicCastClassUnconditional();
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

          v125 = specialized static Entity.entityInfoType(_:)();
          if (v125)
          {
            v43 = (*(v125 + 232))();
            v126 = *(v43 + 16);

            MEMORY[0x1C68F9740](v126, 0);
            *(v43 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v43);

LABEL_96:
            type metadata accessor for AnimationPlaybackController();
            v74 = swift_allocObject();
            *(v74 + 40) = 0;
            swift_weakInit();
            *(v74 + 16) = v38;
            swift_weakAssign();
            v127 = *(v43 + 16);

            *(v74 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v43 + 16));
            v128 = Hasher._finalize()();

            *(v74 + 24) = v128;
            v129 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v40, v129, v130, &v221);

            if (!v41)
            {
              goto LABEL_138;
            }

            if (REBindPointBoundComponent())
            {
              v75 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                goto LABEL_99;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

LABEL_136:
              v153 = specialized static Entity.entityInfoType(_:)();
              if (!v153)
              {
                v131 = makeEntity(for:)(v75);
                goto LABEL_100;
              }

              v41 = (*(v153 + 232))();
              v154 = *(v41 + 16);

              MEMORY[0x1C68F9740](v154, 0);
              *(v41 + 16) = v75;
              MEMORY[0x1C68F9740](v75, v41);

LABEL_138:
              specialized ActionEventData.action<A>()(a7, a8, v36, v180, &v216);
              if (*(&v218 + 1))
              {
                *&v185[8] = v216;
                v185[24] = v217 & 1;
                v186 = v218;
                *&v187 = v219;
                BYTE8(v187) = v220 & 1;
                BYTE9(v187) = 1;
                *v185 = v74;
                *&v188 = v41;
                BYTE8(v188) = 0;
                v189 = 0uLL;
                *&v191 = 0;
                v190 = v182;
                BYTE8(v191) = 1;
                *&v192 = v174;
                BYTE8(v192) = 0;
                *&v193 = 0;
                BYTE8(v193) = 1;
                v196 = v223;
                v197 = v224;
                v198 = v225;
                v195 = v222;
                v194 = v221;
                v199 = v176;
                v177(v185);

                v212 = v196;
                v213 = v197;
                v214 = v198;
                v215 = v199;
                v208 = v192;
                v209 = v193;
                v210 = v194;
                v211 = v195;
                v204 = v188;
                v205 = v189;
                v206 = v190;
                v207 = v191;
                v200 = *v185;
                v201 = *&v185[16];
                v202 = v186;
                v203 = v187;
                goto LABEL_149;
              }

              goto LABEL_150;
            }

            goto LABEL_101;
          }

          v42 = makeEntity(for:)(v37);
        }

        v43 = v42;
        goto LABEL_96;
      }

      v36 = a9;
      v180 = a10;
      v182 = Strong;
      v177 = a5;
      v67 = *a2;
      v68 = *(a2 + 8);
      v69 = *(a2 + 24);
      v174 = *(a2 + 32);
      v70 = *(a2 + 40);
      v41 = *(a2 + 56);
      v176 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v71 = swift_dynamicCastClassUnconditional();
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

        v91 = specialized static Entity.entityInfoType(_:)();
        if (v91)
        {
          v72 = (*(v91 + 232))();
          v92 = *(v72 + 16);

          MEMORY[0x1C68F9740](v92, 0);
          *(v72 + 16) = v67;
          MEMORY[0x1C68F9740](v67, v72);

LABEL_57:
          type metadata accessor for AnimationPlaybackController();
          v74 = swift_allocObject();
          *(v74 + 40) = 0;
          swift_weakInit();
          *(v74 + 16) = v68;
          swift_weakAssign();
          v93 = *(v72 + 16);

          *(v74 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v72 + 16));
          v94 = Hasher._finalize()();

          *(v74 + 24) = v94;
          v95 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v70, v95, v96, &v221);

          if (!v41)
          {
            goto LABEL_138;
          }

          if (REBindPointBoundComponent())
          {
            v75 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_99:
              type metadata accessor for Entity();
              v131 = swift_dynamicCastClassUnconditional();
LABEL_100:
              v41 = v131;
              goto LABEL_138;
            }

            if (REEntityIsBeingDestroyed())
            {
              __break(1u);
              goto LABEL_62;
            }

            goto LABEL_136;
          }

LABEL_101:
          v41 = 0;
          goto LABEL_138;
        }

        v71 = makeEntity(for:)(v67);
      }

      v72 = v71;
      goto LABEL_57;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v175 = a9;
      v179 = a10;
      v181 = Strong;
      v177 = a5;
      v53 = *a2;
      v54 = *(a2 + 8);
      v55 = *(a2 + 16);
      v26 = *(a2 + 24);
      v24 = *(a2 + 40);
      v173 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v56 = swift_dynamicCastClassUnconditional();
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

        v142 = specialized static Entity.entityInfoType(_:)();
        if (v142)
        {
          v57 = (*(v142 + 232))();
          v143 = *(v57 + 16);

          MEMORY[0x1C68F9740](v143, 0);
          *(v57 + 16) = v53;
          MEMORY[0x1C68F9740](v53, v57);

LABEL_119:
          type metadata accessor for AnimationPlaybackController();
          v27 = swift_allocObject();
          *(v27 + 40) = 0;
          swift_weakInit();
          *(v27 + 16) = v54;
          swift_weakAssign();
          v144 = *(v57 + 16);

          *(v27 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v57 + 16));
          v145 = Hasher._finalize()();

          *(v27 + 24) = v145;
          if (!v24)
          {
            goto LABEL_147;
          }

          if (REBindPointBoundComponent())
          {
            v113 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              goto LABEL_122;
            }

            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_179:
              __break(1u);
              return result;
            }

LABEL_145:
            v157 = specialized static Entity.entityInfoType(_:)();
            if (!v157)
            {
              v146 = makeEntity(for:)(v113);
              goto LABEL_123;
            }

            v24 = (*(v157 + 232))();
            v158 = *(v24 + 16);

            MEMORY[0x1C68F9740](v158, 0);
            *(v24 + 16) = v113;
            MEMORY[0x1C68F9740](v113, v24);

LABEL_147:
            v159 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v26, v159, v160, &v221);

            specialized ActionEventData.action<A>()(a7, a8, v175, v179, &v216);
            if (*(&v218 + 1))
            {
              *&v185[8] = v216;
              v185[24] = v217 & 1;
              v186 = v218;
              *&v187 = v219;
              BYTE8(v187) = v220 & 1;
              BYTE9(v187) = 1;
              *v185 = v27;
              *&v188 = v24;
              BYTE8(v188) = 0;
              v189 = 0uLL;
              *&v191 = 0;
              v190 = v181;
              BYTE8(v191) = 1;
              *&v192 = 0;
              BYTE8(v192) = 1;
              *&v193 = 0;
              BYTE8(v193) = 1;
              v196 = v223;
              v197 = v224;
              v198 = v225;
              v195 = v222;
              v194 = v221;
              v199 = v173;
              v177(v185);

              v212 = v196;
              v213 = v197;
              v214 = v198;
              v215 = v199;
              v208 = v192;
              v209 = v193;
              v210 = v194;
              v211 = v195;
              v204 = v188;
              v205 = v189;
              v206 = v190;
              v207 = v191;
              v200 = *v185;
              v201 = *&v185[16];
              v202 = v186;
              v203 = v187;
              goto LABEL_149;
            }

            goto LABEL_150;
          }

          goto LABEL_124;
        }

        v56 = makeEntity(for:)(v53);
      }

      v57 = v56;
      goto LABEL_119;
    }

    v175 = a9;
    v179 = a10;
    v181 = Strong;
    v177 = a5;
    v78 = *a2;
    v23 = *(a2 + 8);
    v22 = *(a2 + 16);
    v26 = *(a2 + 24);
    v24 = *(a2 + 40);
    v173 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v79 = swift_dynamicCastClassUnconditional();
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

      v109 = specialized static Entity.entityInfoType(_:)();
      if (v109)
      {
        v80 = (*(v109 + 232))();
        v110 = *(v80 + 16);

        MEMORY[0x1C68F9740](v110, 0);
        *(v80 + 16) = v78;
        MEMORY[0x1C68F9740](v78, v80);

LABEL_76:
        type metadata accessor for AnimationPlaybackController();
        v27 = swift_allocObject();
        *(v27 + 40) = 0;
        swift_weakInit();
        *(v27 + 16) = v23;
        swift_weakAssign();
        v111 = *(v80 + 16);

        *(v27 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v80 + 16));
        v112 = Hasher._finalize()();

        *(v27 + 24) = v112;
        if (!v24)
        {
          goto LABEL_147;
        }

        if (REBindPointBoundComponent())
        {
          v113 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_122:
            type metadata accessor for Entity();
            v146 = swift_dynamicCastClassUnconditional();
LABEL_123:
            v24 = v146;
            goto LABEL_147;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_81:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v114 = specialized static Entity.entityInfoType(_:)();
              if (v114)
              {
                v29 = (*(v114 + 232))();
                v115 = *(v29 + 16);

                MEMORY[0x1C68F9740](v115, 0);
                *(v29 + 16) = v22;
                MEMORY[0x1C68F9740](v22, v29);

LABEL_84:
                type metadata accessor for AnimationPlaybackController();
                v116 = swift_allocObject();
                *(v116 + 40) = 0;
                swift_weakInit();
                *(v116 + 16) = v23;
                swift_weakAssign();
                v117 = *(v29 + 16);

                *(v116 + 32) = REEntityGetLocalId();
                Hasher.init(_seed:)();
                MEMORY[0x1C68F4C10](*(v29 + 16));
                v118 = Hasher._finalize()();

                *(v116 + 24) = v118;
                v119 = String.init(cString:)();
                specialized ActionEventData.init(eventID:coreData:typeName:)(v24, 0, v26, v119, v120, &v221);

                if (!v27 || !REBindPointBoundComponent())
                {
                  v123 = 0;
                  goto LABEL_90;
                }

                v121 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v122 = swift_dynamicCastClassUnconditional();
LABEL_88:
                  v123 = v122;
                  goto LABEL_90;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v151 = specialized static Entity.entityInfoType(_:)();
                  if (!v151)
                  {
                    v122 = makeEntity(for:)(v121);
                    goto LABEL_88;
                  }

                  v123 = (*(v151 + 232))();
                  v152 = *(v123 + 16);

                  MEMORY[0x1C68F9740](v152, 0);
                  *(v123 + 16) = v121;
                  MEMORY[0x1C68F9740](v121, v123);

LABEL_90:
                  specialized ActionEventData.action<A>()(a7, a8, v175, v179, &v216);
                  if (*(&v218 + 1))
                  {
                    v124 = v216;
                    v185[24] = v217 & 1;
                    v186 = v218;
                    *&v187 = v219;
                    BYTE8(v187) = v220 & 1;
                    BYTE9(v187) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(v172, v173) & 1;
                    *&v185[8] = v124;
                    *v185 = v116;
                    *&v188 = v123;
                    BYTE8(v188) = v161;
                    v189 = vcvtq_f64_f32(v15);
                    *&v190 = v181;
                    *(&v190 + 1) = v163;
                    *&v191 = v14.f32[0];
                    BYTE8(v191) = 0;
                    v108 = v166;
                    *&v192 = v168;
                    goto LABEL_92;
                  }

                  goto LABEL_150;
                }

                goto LABEL_176;
              }

              v28 = makeEntity(for:)(v22);
LABEL_8:
              v29 = v28;
              goto LABEL_84;
            }

            goto LABEL_170;
          }

          goto LABEL_145;
        }

LABEL_124:
        v24 = 0;
        goto LABEL_147;
      }

      v79 = makeEntity(for:)(v78);
    }

    v80 = v79;
    goto LABEL_76;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static AnimationLogger.logger);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v200 = v34;
    *v33 = 136315138;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, &v200);
    _os_log_impl(&dword_1C1358000, v31, v32, "%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1C6902A30](v34, -1, -1);
    MEMORY[0x1C6902A30](v33, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v190 = a5;
            v11 = *a2;
            v10 = *(a2 + 8);
            v13 = *(a2 + 24);
            v12 = *(a2 + 32);
            v14 = *(a2 + 40);
            v15 = *(a2 + 56);
            v182 = *(a2 + 64);
            v185 = *(a2 + 48);
            v179 = *(a2 + 72);
            v16 = *(a2 + 88);
            v17 = *(a2 + 96);
            v177 = *(a2 + 104);
            v188 = *(a2 + 80);
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v18 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v115 = specialized static Entity.entityInfoType(_:)();
              if (v115)
              {
                v19 = (*(v115 + 232))();
                v116 = *(v19 + 16);

                MEMORY[0x1C68F9740](v116, 0);
                *(v19 + 16) = v11;
                MEMORY[0x1C68F9740](v11, v19);

                goto LABEL_78;
              }

              v18 = makeEntity(for:)(v11);
LABEL_8:
              v19 = v18;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v117 = swift_allocObject();
              *(v117 + 40) = 0;
              swift_weakInit();
              *(v117 + 16) = v10;
              swift_weakAssign();
              v118 = *(v19 + 16);

              *(v117 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v19 + 16));
              v119 = Hasher._finalize()();

              *(v117 + 24) = v119;
              v120 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v12, 0, v14, v120, v121, &v337);

              if (!v16)
              {
LABEL_143:
                specialized ActionEventData.action<A>()(&v207);
                v333 = v219;
                v334 = v220;
                v335 = v221;
                v336 = v222;
                v329 = v215;
                v330 = v216;
                v331 = v217;
                v332 = v218;
                v325 = v211;
                v326 = v212;
                v327 = v213;
                v328 = v214;
                v321 = v207;
                v322 = v208;
                v323 = v209;
                v324 = v210;
                if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
                {

                  __dst[12] = v219;
                  __dst[13] = v220;
                  __dst[14] = v221;
                  __dst[15] = v222;
                  __dst[8] = v215;
                  __dst[9] = v216;
                  __dst[10] = v217;
                  __dst[11] = v218;
                  __dst[4] = v211;
                  __dst[5] = v212;
                  __dst[6] = v213;
                  __dst[7] = v214;
                  __dst[0] = v207;
                  __dst[1] = v208;
                  v150 = v209;
                  v151 = v210;
                  goto LABEL_168;
                }

                __src[13] = v219;
                __src[14] = v220;
                __src[15] = v221;
                __src[16] = v222;
                __src[9] = v215;
                __src[10] = v216;
                __src[11] = v217;
                __src[12] = v218;
                __src[5] = v211;
                __src[6] = v212;
                __src[7] = v213;
                __src[8] = v214;
                __src[1] = v207;
                __src[2] = v208;
                __src[3] = v209;
                __src[4] = v210;
                LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
                *&__src[0] = v117;
                *(&__src[17] + 1) = v16;
                LOBYTE(__src[18]) = v177;
                *(&__src[18] + 8) = vcvtq_f64_f32(v17);
                *(&__src[19] + 1) = v9;
                *&__src[20] = v179;
                *(&__src[20] + 1) = v15;
                LOBYTE(__src[21]) = 0;
                LOBYTE(__src[22]) = 0;
                *(&__src[21] + 1) = v185;
                *(&__src[22] + 1) = v182;
                LOBYTE(__src[23]) = 0;
                *(&__src[25] + 8) = v339;
                *(&__src[26] + 8) = v340;
                *(&__src[27] + 8) = v341;
                *(&__src[23] + 8) = v337;
                *(&__src[24] + 8) = v338;
                goto LABEL_161;
              }

              if (!REBindPointBoundComponent())
              {
                v16 = 0;
                goto LABEL_143;
              }

              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v123 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v16 = v123;
                goto LABEL_143;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v165 = specialized static Entity.entityInfoType(_:)();
                if (v165)
                {
                  v16 = (*(v165 + 232))();
                  v166 = *(v16 + 16);

                  MEMORY[0x1C68F9740](v166, 0);
                  *(v16 + 16) = Entity;
                  MEMORY[0x1C68F9740](Entity, v16);

                  goto LABEL_143;
                }

                v123 = makeEntity(for:)(Entity);
                goto LABEL_82;
              }

              goto LABEL_203;
            }

            goto LABEL_195;
          }

LABEL_42:

          return 0;
        }

        v190 = a5;
        v51 = *a2;
        v50 = *(a2 + 8);
        v53 = *(a2 + 24);
        v52 = *(a2 + 32);
        v54 = *(a2 + 40);
        v55 = *(a2 + 64);
        v56 = *(a2 + 72);
        v178 = *(a2 + 80);
        v181 = *(a2 + 56);
        v183 = *(a2 + 88);
        v186 = *(a2 + 96);
        v188 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v57 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v80 = specialized static Entity.entityInfoType(_:)();
          if (v80)
          {
            v58 = (*(v80 + 232))();
            v81 = *(v58 + 16);

            MEMORY[0x1C68F9740](v81, 0);
            *(v58 + 16) = v51;
            MEMORY[0x1C68F9740](v51, v58);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v82 = swift_allocObject();
            *(v82 + 40) = 0;
            swift_weakInit();
            *(v82 + 16) = v50;
            swift_weakAssign();
            v83 = *(v58 + 16);

            *(v82 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v58 + 16));
            v84 = Hasher._finalize()();

            *(v82 + 24) = v84;
            v85 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v52, 0, v54, v85, v86, &v337);

            if (v55)
            {
              if (REBindPointBoundComponent())
              {
                v87 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v88 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_199:
                    __break(1u);
                    goto LABEL_200;
                  }

                  v148 = specialized static Entity.entityInfoType(_:)();
                  if (v148)
                  {
                    v55 = (*(v148 + 232))();
                    v149 = *(v55 + 16);

                    MEMORY[0x1C68F9740](v149, 0);
                    *(v55 + 16) = v87;
                    MEMORY[0x1C68F9740](v87, v55);

                    goto LABEL_118;
                  }

                  v88 = makeEntity(for:)(v87);
                }

                v55 = v88;
              }

              else
              {
                v55 = 0;
              }
            }

LABEL_118:
            specialized ActionEventData.action<A>()(&v191);
            v333 = v203;
            v334 = v204;
            v335 = v205;
            v336 = v206;
            v329 = v199;
            v330 = v200;
            v331 = v201;
            v332 = v202;
            v325 = v195;
            v326 = v196;
            v327 = v197;
            v328 = v198;
            v321 = v191;
            v322 = v192;
            v323 = v193;
            v324 = v194;
            if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
            {

              __dst[12] = v203;
              __dst[13] = v204;
              __dst[14] = v205;
              __dst[15] = v206;
              __dst[8] = v199;
              __dst[9] = v200;
              __dst[10] = v201;
              __dst[11] = v202;
              __dst[4] = v195;
              __dst[5] = v196;
              __dst[6] = v197;
              __dst[7] = v198;
              __dst[0] = v191;
              __dst[1] = v192;
              v150 = v193;
              v151 = v194;
LABEL_168:
              __dst[2] = v150;
              __dst[3] = v151;
              v175 = &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMd;
              v176 = &_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgMR;
LABEL_173:
              outlined destroy of BodyTrackingComponent?(__dst, v175, v176);
              return 0;
            }

            __src[13] = v203;
            __src[14] = v204;
            __src[15] = v205;
            __src[16] = v206;
            __src[9] = v199;
            __src[10] = v200;
            __src[11] = v201;
            __src[12] = v202;
            __src[5] = v195;
            __src[6] = v196;
            __src[7] = v197;
            __src[8] = v198;
            __src[1] = v191;
            __src[2] = v192;
            __src[3] = v193;
            __src[4] = v194;
            LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
            *&__src[0] = v82;
            *(&__src[17] + 1) = v55;
            LOBYTE(__src[18]) = v178;
            *(&__src[18] + 8) = vcvtq_f64_f32(v56);
            *(&__src[19] + 1) = v9;
            *&__src[20] = v181;
            LOBYTE(__src[21]) = 0;
            *(&__src[20] + 1) = 0xBFF0000000000000;
            goto LABEL_159;
          }

          v57 = makeEntity(for:)(v51);
LABEL_32:
          v58 = v57;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_192;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v190 = a5;
        v35 = *a2;
        v34 = *(a2 + 8);
        v37 = *(a2 + 24);
        v36 = *(a2 + 32);
        v38 = *(a2 + 40);
        v39 = *(a2 + 56);
        v40 = *(a2 + 64);
        v180 = *(a2 + 72);
        v183 = *(a2 + 80);
        v186 = *(a2 + 88);
        v188 = *(a2 + 48);
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
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          v132 = specialized static Entity.entityInfoType(_:)();
          if (v132)
          {
            v42 = (*(v132 + 232))();
            v133 = *(v42 + 16);

            MEMORY[0x1C68F9740](v133, 0);
            *(v42 + 16) = v35;
            MEMORY[0x1C68F9740](v35, v42);

LABEL_94:
            type metadata accessor for AnimationPlaybackController();
            v134 = swift_allocObject();
            *(v134 + 40) = 0;
            swift_weakInit();
            *(v134 + 16) = v34;
            swift_weakAssign();
            v135 = *(v42 + 16);

            *(v134 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v42 + 16));
            v136 = Hasher._finalize()();

            *(v134 + 24) = v136;
            v137 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v38, v137, v138, &v337);

            if (v39)
            {
              if (REBindPointBoundComponent())
              {
                v139 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v140 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_205:
                    __break(1u);
                    goto LABEL_206;
                  }

                  v169 = specialized static Entity.entityInfoType(_:)();
                  if (v169)
                  {
                    v39 = (*(v169 + 232))();
                    v170 = *(v39 + 16);

                    MEMORY[0x1C68F9740](v170, 0);
                    *(v39 + 16) = v139;
                    MEMORY[0x1C68F9740](v139, v39);

                    goto LABEL_156;
                  }

                  v140 = makeEntity(for:)(v139);
                }

                v39 = v140;
              }

              else
              {
                v39 = 0;
              }
            }

LABEL_156:
            specialized ActionEventData.action<A>()(&v239);
            v333 = v251;
            v334 = v252;
            v335 = v253;
            v336 = v254;
            v329 = v247;
            v330 = v248;
            v331 = v249;
            v332 = v250;
            v325 = v243;
            v326 = v244;
            v327 = v245;
            v328 = v246;
            v321 = v239;
            v322 = v240;
            v323 = v241;
            v324 = v242;
            if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
            {

              __dst[12] = v251;
              __dst[13] = v252;
              __dst[14] = v253;
              __dst[15] = v254;
              __dst[8] = v247;
              __dst[9] = v248;
              __dst[10] = v249;
              __dst[11] = v250;
              __dst[4] = v243;
              __dst[5] = v244;
              __dst[6] = v245;
              __dst[7] = v246;
              __dst[0] = v239;
              __dst[1] = v240;
              v150 = v241;
              v151 = v242;
              goto LABEL_168;
            }

            __src[13] = v251;
            __src[14] = v252;
            __src[15] = v253;
            __src[16] = v254;
            __src[9] = v247;
            __src[10] = v248;
            __src[11] = v249;
            __src[12] = v250;
            __src[5] = v243;
            __src[6] = v244;
            __src[7] = v245;
            __src[8] = v246;
            __src[1] = v239;
            __src[2] = v240;
            __src[3] = v241;
            __src[4] = v242;
            LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
            *&__src[0] = v134;
            *(&__src[17] + 1) = v39;
            LOBYTE(__src[18]) = v180;
            *(&__src[18] + 8) = vcvtq_f64_f32(v40);
            *(&__src[19] + 1) = v9;
            __src[20] = 0uLL;
            LOBYTE(__src[21]) = 1;
LABEL_159:
            *(&__src[21] + 1) = v183;
            LOBYTE(__src[22]) = 0;
            LOBYTE(__src[23]) = 0;
            *(&__src[25] + 8) = v339;
            *(&__src[26] + 8) = v340;
            *(&__src[27] + 8) = v341;
            *(&__src[23] + 8) = v337;
            *(&__src[24] + 8) = v338;
            v158 = v186;
            goto LABEL_160;
          }

          v41 = makeEntity(for:)(v35);
        }

        v42 = v41;
        goto LABEL_94;
      }

      v190 = a5;
      v66 = *a2;
      v65 = *(a2 + 8);
      v68 = *(a2 + 24);
      v67 = *(a2 + 32);
      v69 = *(a2 + 40);
      v70 = *(a2 + 64);
      v187 = *(a2 + 56);
      v71 = *(a2 + 72);
      v184 = *(a2 + 80);
      v188 = *(a2 + 48);
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
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v98 = specialized static Entity.entityInfoType(_:)();
        if (v98)
        {
          v73 = (*(v98 + 232))();
          v99 = *(v73 + 16);

          MEMORY[0x1C68F9740](v99, 0);
          *(v73 + 16) = v66;
          MEMORY[0x1C68F9740](v66, v73);

LABEL_62:
          type metadata accessor for AnimationPlaybackController();
          v100 = swift_allocObject();
          *(v100 + 40) = 0;
          swift_weakInit();
          *(v100 + 16) = v65;
          swift_weakAssign();
          v101 = *(v73 + 16);

          *(v100 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v73 + 16));
          v102 = Hasher._finalize()();

          *(v100 + 24) = v102;
          v103 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v67, 0, v69, v103, v104, &v337);

          if (v70)
          {
            if (REBindPointBoundComponent())
            {
              v105 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v106 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_201:
                  __break(1u);
                  goto LABEL_202;
                }

                v156 = specialized static Entity.entityInfoType(_:)();
                if (v156)
                {
                  v70 = (*(v156 + 232))();
                  v157 = *(v70 + 16);

                  MEMORY[0x1C68F9740](v157, 0);
                  *(v70 + 16) = v105;
                  MEMORY[0x1C68F9740](v105, v70);

                  goto LABEL_130;
                }

                v106 = makeEntity(for:)(v105);
              }

              v70 = v106;
            }

            else
            {
              v70 = 0;
            }
          }

LABEL_130:
          specialized ActionEventData.action<A>()(&v223);
          v333 = v235;
          v334 = v236;
          v335 = v237;
          v336 = v238;
          v329 = v231;
          v330 = v232;
          v331 = v233;
          v332 = v234;
          v325 = v227;
          v326 = v228;
          v327 = v229;
          v328 = v230;
          v321 = v223;
          v322 = v224;
          v323 = v225;
          v324 = v226;
          if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
          {

            __dst[12] = v235;
            __dst[13] = v236;
            __dst[14] = v237;
            __dst[15] = v238;
            __dst[8] = v231;
            __dst[9] = v232;
            __dst[10] = v233;
            __dst[11] = v234;
            __dst[4] = v227;
            __dst[5] = v228;
            __dst[6] = v229;
            __dst[7] = v230;
            __dst[0] = v223;
            __dst[1] = v224;
            v150 = v225;
            v151 = v226;
            goto LABEL_168;
          }

          __src[13] = v235;
          __src[14] = v236;
          __src[15] = v237;
          __src[16] = v238;
          __src[9] = v231;
          __src[10] = v232;
          __src[11] = v233;
          __src[12] = v234;
          __src[5] = v227;
          __src[6] = v228;
          __src[7] = v229;
          __src[8] = v230;
          __src[1] = v223;
          __src[2] = v224;
          __src[3] = v225;
          __src[4] = v226;
          LOBYTE(__src[17]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0Vy0A3Kit9TransformVGGMR) & 1;
          *&__src[0] = v100;
          *(&__src[17] + 1) = v70;
          LOBYTE(__src[18]) = v184;
          *(&__src[18] + 8) = vcvtq_f64_f32(v71);
          *(&__src[19] + 1) = v9;
          *&__src[20] = v187;
          v158 = 0xBFF0000000000000;
          LOBYTE(__src[21]) = 0;
          *(&__src[20] + 1) = 0xBFF0000000000000;
          *(&__src[21] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[22]) = 0;
          LOBYTE(__src[23]) = 0;
          *(&__src[25] + 8) = v339;
          *(&__src[26] + 8) = v340;
          *(&__src[27] + 8) = v341;
          *(&__src[23] + 8) = v337;
          *(&__src[24] + 8) = v338;
LABEL_160:
          *(&__src[22] + 1) = v158;
LABEL_161:
          *(&__src[28] + 1) = v188;
LABEL_172:
          v190(__src);

          memcpy(__dst, __src, sizeof(__dst));
          v175 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMd;
          v176 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0Vy0A3Kit9TransformVGGMR;
          goto LABEL_173;
        }

        v72 = makeEntity(for:)(v66);
      }

      v73 = v72;
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

        v190 = a5;
        v27 = *a2;
        v26 = *(a2 + 8);
        v28 = *(a2 + 24);
        v29 = *(a2 + 40);
        v30 = *(a2 + 48);
        v31 = *(a2 + 56);
        v189 = *(a2 + 32);
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
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }

          v124 = specialized static Entity.entityInfoType(_:)();
          if (v124)
          {
            v33 = (*(v124 + 232))();
            v125 = *(v33 + 16);

            MEMORY[0x1C68F9740](v125, 0);
            *(v33 + 16) = v27;
            MEMORY[0x1C68F9740](v27, v33);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v91 = swift_allocObject();
            *(v91 + 40) = 0;
            swift_weakInit();
            *(v91 + 16) = v26;
            swift_weakAssign();
            v126 = *(v33 + 16);

            *(v91 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v33 + 16));
            v127 = Hasher._finalize()();

            *(v91 + 24) = v127;
            v128 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v128, v129, &v337);

            if (v31)
            {
              if (REBindPointBoundComponent())
              {
                v130 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v131 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_204:
                    __break(1u);
                    goto LABEL_205;
                  }

                  v167 = specialized static Entity.entityInfoType(_:)();
                  if (v167)
                  {
                    v31 = (*(v167 + 232))();
                    v168 = *(v31 + 16);

                    MEMORY[0x1C68F9740](v168, 0);
                    *(v31 + 16) = v130;
                    MEMORY[0x1C68F9740](v130, v31);

                    goto LABEL_149;
                  }

                  v131 = makeEntity(for:)(v130);
                }

                v31 = v131;
              }

              else
              {
                v31 = 0;
              }
            }

LABEL_149:
            specialized ActionEventData.action<A>()(&v271);
            v333 = v283;
            v334 = v284;
            v335 = v285;
            v336 = v286;
            v329 = v279;
            v330 = v280;
            v331 = v281;
            v332 = v282;
            v325 = v275;
            v326 = v276;
            v327 = v277;
            v328 = v278;
            v321 = v271;
            v322 = v272;
            v323 = v273;
            v324 = v274;
            if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
            {

              __dst[12] = v283;
              __dst[13] = v284;
              __dst[14] = v285;
              __dst[15] = v286;
              __dst[8] = v279;
              __dst[9] = v280;
              __dst[10] = v281;
              __dst[11] = v282;
              __dst[4] = v275;
              __dst[5] = v276;
              __dst[6] = v277;
              __dst[7] = v278;
              __dst[0] = v271;
              __dst[1] = v272;
              v150 = v273;
              v151 = v274;
              goto LABEL_168;
            }

            __src[13] = v283;
            __src[14] = v284;
            __src[15] = v285;
            __src[16] = v286;
            __src[9] = v279;
            __src[10] = v280;
            __src[11] = v281;
            __src[12] = v282;
            __src[5] = v275;
            __src[6] = v276;
            __src[7] = v277;
            __src[8] = v278;
            __src[1] = v271;
            __src[2] = v272;
            v154 = v273;
            v155 = v274;
LABEL_152:
            __src[3] = v154;
            __src[4] = v155;
            LOBYTE(__src[17]) = 1;
            *&__src[0] = v91;
            *(&__src[17] + 1) = v31;
            LOBYTE(__src[18]) = 0;
            *&__src[19] = 0;
            *(&__src[18] + 1) = 0;
            *(&__src[19] + 1) = v9;
            __src[20] = 0uLL;
            LOBYTE(__src[21]) = 1;
            *(&__src[21] + 1) = v189;
            LOBYTE(__src[22]) = 0;
LABEL_171:
            LOBYTE(__src[23]) = 1;
            *(&__src[25] + 8) = v339;
            *(&__src[26] + 8) = v340;
            *(&__src[27] + 8) = v341;
            *(&__src[23] + 8) = v337;
            *(&__src[24] + 8) = v338;
            *(&__src[22] + 1) = 0;
            *(&__src[28] + 1) = v30;
            goto LABEL_172;
          }

          v32 = makeEntity(for:)(v27);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v190 = a5;
      v60 = *a2;
      v59 = *(a2 + 8);
      v61 = *(a2 + 24);
      v62 = *(a2 + 40);
      v30 = *(a2 + 48);
      v31 = *(a2 + 56);
      v189 = *(a2 + 32);
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
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v89 = specialized static Entity.entityInfoType(_:)();
        if (v89)
        {
          v64 = (*(v89 + 232))();
          v90 = *(v64 + 16);

          MEMORY[0x1C68F9740](v90, 0);
          *(v64 + 16) = v60;
          MEMORY[0x1C68F9740](v60, v64);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v91 = swift_allocObject();
          *(v91 + 40) = 0;
          swift_weakInit();
          *(v91 + 16) = v59;
          swift_weakAssign();
          v92 = *(v64 + 16);

          *(v91 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v64 + 16));
          v93 = Hasher._finalize()();

          *(v91 + 24) = v93;
          v94 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v62, v94, v95, &v337);

          if (v31)
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
LABEL_200:
                  __break(1u);
                  goto LABEL_201;
                }

                v152 = specialized static Entity.entityInfoType(_:)();
                if (v152)
                {
                  v31 = (*(v152 + 232))();
                  v153 = *(v31 + 16);

                  MEMORY[0x1C68F9740](v153, 0);
                  *(v31 + 16) = v96;
                  MEMORY[0x1C68F9740](v96, v31);

                  goto LABEL_124;
                }

                v97 = makeEntity(for:)(v96);
              }

              v31 = v97;
            }

            else
            {
              v31 = 0;
            }
          }

LABEL_124:
          specialized ActionEventData.action<A>()(&v255);
          v333 = v267;
          v334 = v268;
          v335 = v269;
          v336 = v270;
          v329 = v263;
          v330 = v264;
          v331 = v265;
          v332 = v266;
          v325 = v259;
          v326 = v260;
          v327 = v261;
          v328 = v262;
          v321 = v255;
          v322 = v256;
          v323 = v257;
          v324 = v258;
          if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
          {

            __dst[12] = v267;
            __dst[13] = v268;
            __dst[14] = v269;
            __dst[15] = v270;
            __dst[8] = v263;
            __dst[9] = v264;
            __dst[10] = v265;
            __dst[11] = v266;
            __dst[4] = v259;
            __dst[5] = v260;
            __dst[6] = v261;
            __dst[7] = v262;
            __dst[0] = v255;
            __dst[1] = v256;
            v150 = v257;
            v151 = v258;
            goto LABEL_168;
          }

          __src[13] = v267;
          __src[14] = v268;
          __src[15] = v269;
          __src[16] = v270;
          __src[9] = v263;
          __src[10] = v264;
          __src[11] = v265;
          __src[12] = v266;
          __src[5] = v259;
          __src[6] = v260;
          __src[7] = v261;
          __src[8] = v262;
          __src[1] = v255;
          __src[2] = v256;
          v154 = v257;
          v155 = v258;
          goto LABEL_152;
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

      v190 = a5;
      v44 = *a2;
      v43 = *(a2 + 8);
      v46 = *(a2 + 16);
      v45 = *(a2 + 24);
      v30 = *(a2 + 32);
      v47 = *(a2 + 40);
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
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        v141 = specialized static Entity.entityInfoType(_:)();
        if (v141)
        {
          v49 = (*(v141 + 232))();
          v142 = *(v49 + 16);

          MEMORY[0x1C68F9740](v142, 0);
          *(v49 + 16) = v44;
          MEMORY[0x1C68F9740](v44, v49);

LABEL_102:
          type metadata accessor for AnimationPlaybackController();
          v109 = swift_allocObject();
          *(v109 + 40) = 0;
          swift_weakInit();
          *(v109 + 16) = v43;
          swift_weakAssign();
          v143 = *(v49 + 16);

          *(v109 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v49 + 16));
          v144 = Hasher._finalize()();

          *(v109 + 24) = v144;
          if (v47)
          {
            if (REBindPointBoundComponent())
            {
              v145 = v30;
              v146 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v147 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_206:
                  __break(1u);
                  return result;
                }

                v171 = specialized static Entity.entityInfoType(_:)();
                if (v171)
                {
                  v47 = (*(v171 + 232))();
                  v172 = *(v47 + 16);

                  MEMORY[0x1C68F9740](v172, 0);
                  *(v47 + 16) = v146;
                  MEMORY[0x1C68F9740](v146, v47);

                  goto LABEL_165;
                }

                v147 = makeEntity(for:)(v146);
              }

              v47 = v147;
LABEL_165:
              v30 = v145;
              goto LABEL_166;
            }

            v47 = 0;
          }

LABEL_166:
          v173 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v45, v173, v174, &v337);

          specialized ActionEventData.action<A>()(&v305);
          v333 = v317;
          v334 = v318;
          v335 = v319;
          v336 = v320;
          v329 = v313;
          v330 = v314;
          v331 = v315;
          v332 = v316;
          v325 = v309;
          v326 = v310;
          v327 = v311;
          v328 = v312;
          v321 = v305;
          v322 = v306;
          v323 = v307;
          v324 = v308;
          if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
          {

            __dst[12] = v317;
            __dst[13] = v318;
            __dst[14] = v319;
            __dst[15] = v320;
            __dst[8] = v313;
            __dst[9] = v314;
            __dst[10] = v315;
            __dst[11] = v316;
            __dst[4] = v309;
            __dst[5] = v310;
            __dst[6] = v311;
            __dst[7] = v312;
            __dst[0] = v305;
            __dst[1] = v306;
            v150 = v307;
            v151 = v308;
            goto LABEL_168;
          }

          __src[13] = v317;
          __src[14] = v318;
          __src[15] = v319;
          __src[16] = v320;
          __src[9] = v313;
          __src[10] = v314;
          __src[11] = v315;
          __src[12] = v316;
          __src[5] = v309;
          __src[6] = v310;
          __src[7] = v311;
          __src[8] = v312;
          __src[1] = v305;
          __src[2] = v306;
          v163 = v307;
          v164 = v308;
LABEL_170:
          __src[3] = v163;
          __src[4] = v164;
          LOBYTE(__src[17]) = 1;
          *&__src[0] = v109;
          *(&__src[17] + 1) = v47;
          LOBYTE(__src[18]) = 0;
          *&__src[19] = 0;
          *(&__src[18] + 1) = 0;
          *(&__src[19] + 1) = v9;
          __src[20] = 0uLL;
          LOBYTE(__src[21]) = 1;
          *(&__src[21] + 1) = 0;
          LOBYTE(__src[22]) = 1;
          goto LABEL_171;
        }

        v48 = makeEntity(for:)(v44);
      }

      v49 = v48;
      goto LABEL_102;
    }

    v190 = a5;
    v75 = *a2;
    v74 = *(a2 + 8);
    v77 = *(a2 + 16);
    v76 = *(a2 + 24);
    v30 = *(a2 + 32);
    v47 = *(a2 + 40);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v78 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
        goto LABEL_196;
      }

      v107 = specialized static Entity.entityInfoType(_:)();
      if (v107)
      {
        v79 = (*(v107 + 232))();
        v108 = *(v79 + 16);

        MEMORY[0x1C68F9740](v108, 0);
        *(v79 + 16) = v75;
        MEMORY[0x1C68F9740](v75, v79);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v109 = swift_allocObject();
        *(v109 + 40) = 0;
        swift_weakInit();
        *(v109 + 16) = v74;
        swift_weakAssign();
        v110 = *(v79 + 16);

        *(v109 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v79 + 16));
        v111 = Hasher._finalize()();

        *(v109 + 24) = v111;
        if (v47)
        {
          if (REBindPointBoundComponent())
          {
            v112 = v30;
            v113 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v114 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
                goto LABEL_204;
              }

              v159 = specialized static Entity.entityInfoType(_:)();
              if (v159)
              {
                v47 = (*(v159 + 232))();
                v160 = *(v47 + 16);

                MEMORY[0x1C68F9740](v160, 0);
                *(v47 + 16) = v113;
                MEMORY[0x1C68F9740](v113, v47);

                goto LABEL_136;
              }

              v114 = makeEntity(for:)(v113);
            }

            v47 = v114;
LABEL_136:
            v30 = v112;
            goto LABEL_137;
          }

          v47 = 0;
        }

LABEL_137:
        v161 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v76, v161, v162, &v337);

        specialized ActionEventData.action<A>()(&v287);
        v333 = v299;
        v334 = v300;
        v335 = v301;
        v336 = v302;
        v329 = v295;
        v330 = v296;
        v331 = v297;
        v332 = v298;
        v325 = v291;
        v326 = v292;
        v327 = v293;
        v328 = v294;
        v321 = v287;
        v322 = v288;
        v323 = v289;
        v324 = v290;
        if (_s17RealityFoundation14FromToByActionVy0A3Kit9TransformVGSgWOg(&v321) == 1)
        {

          __dst[12] = v299;
          __dst[13] = v300;
          __dst[14] = v301;
          __dst[15] = v302;
          __dst[8] = v295;
          __dst[9] = v296;
          __dst[10] = v297;
          __dst[11] = v298;
          __dst[4] = v291;
          __dst[5] = v292;
          __dst[6] = v293;
          __dst[7] = v294;
          __dst[0] = v287;
          __dst[1] = v288;
          v150 = v289;
          v151 = v290;
          goto LABEL_168;
        }

        __src[13] = v299;
        __src[14] = v300;
        __src[15] = v301;
        __src[16] = v302;
        __src[9] = v295;
        __src[10] = v296;
        __src[11] = v297;
        __src[12] = v298;
        __src[5] = v291;
        __src[6] = v292;
        __src[7] = v293;
        __src[8] = v294;
        __src[1] = v287;
        __src[2] = v288;
        v163 = v289;
        v164 = v290;
        goto LABEL_170;
      }

      v78 = makeEntity(for:)(v75);
    }

    v79 = v78;
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
    *&__dst[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  return 1;
}

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
            v166 = a5;
            v13 = *a2;
            v12 = *(a2 + 8);
            v15 = *(a2 + 24);
            v14 = *(a2 + 32);
            v16 = *(a2 + 40);
            v5.i32[0] = *(a2 + 56);
            v160 = *(a2 + 64);
            v163 = *(a2 + 48);
            v157 = *(a2 + 72);
            v17 = *(a2 + 88);
            v6 = *(a2 + 96);
            v155 = *(a2 + 104);
            v165 = *(a2 + 80);
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

        v166 = a5;
        v49 = *a2;
        v48 = *(a2 + 8);
        v51 = *(a2 + 24);
        v50 = *(a2 + 32);
        v52 = *(a2 + 40);
        v53 = *(a2 + 64);
        v54 = *(a2 + 72);
        v156 = *(a2 + 80);
        v159 = *(a2 + 88);
        v162 = *(a2 + 56);
        v164 = *(a2 + 96);
        v165 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v50, 0, v52, v77, v78, &v175);

            if (v53)
            {
              if (REBindPointBoundComponent())
              {
                Entity = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v80 = swift_dynamicCastClassUnconditional();
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

                  v131 = specialized static Entity.entityInfoType(_:)();
                  if (v131)
                  {
                    v53 = (*(v131 + 232))();
                    v132 = *(v53 + 16);

                    MEMORY[0x1C68F9740](v132, 0);
                    *(v53 + 16) = Entity;
                    MEMORY[0x1C68F9740](Entity, v53);

                    goto LABEL_116;
                  }

                  v80 = makeEntity(for:)(Entity);
                }

                v53 = v80;
              }

              else
              {
                v53 = 0;
              }
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v169);
            if (v174 == 1)
            {
              goto LABEL_147;
            }

            __src[3] = v171;
            __src[4] = v172;
            __src[5] = v173;
            __src[6] = v174;
            __src[1] = v169;
            __src[2] = v170;
            v133 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
            *(&__src[16] + 8) = v178;
            *(&__src[17] + 8) = v179;
            *(&__src[8] + 8) = vcvtq_f64_f32(v54);
            v134 = v175;
            *(&__src[14] + 8) = v176;
            *(&__src[15] + 8) = v177;
            LOBYTE(__src[7]) = v133 & 1;
            *&__src[0] = v74;
            *(&__src[7] + 1) = v53;
            LOBYTE(__src[8]) = v156;
            *(&__src[9] + 1) = v11;
            *&__src[10] = v162;
            *(&__src[10] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[11]) = 0;
            v135 = v159;
            goto LABEL_139;
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

        v166 = a5;
        v35 = *a2;
        v34 = *(a2 + 8);
        v37 = *(a2 + 24);
        v36 = *(a2 + 32);
        v38 = *(a2 + 40);
        v39 = *(a2 + 56);
        v40 = *(a2 + 64);
        v158 = *(a2 + 72);
        v161 = *(a2 + 80);
        v164 = *(a2 + 88);
        v165 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v38, v122, v123, &v175);

            if (v39)
            {
              if (REBindPointBoundComponent())
              {
                v124 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v125 = swift_dynamicCastClassUnconditional();
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

                  v146 = specialized static Entity.entityInfoType(_:)();
                  if (v146)
                  {
                    v39 = (*(v146 + 232))();
                    v147 = *(v39 + 16);

                    MEMORY[0x1C68F9740](v147, 0);
                    *(v39 + 16) = v124;
                    MEMORY[0x1C68F9740](v124, v39);

                    goto LABEL_136;
                  }

                  v125 = makeEntity(for:)(v124);
                }

                v39 = v125;
              }

              else
              {
                v39 = 0;
              }
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v169);
            if (v174 == 1)
            {
              goto LABEL_147;
            }

            __src[3] = v171;
            __src[4] = v172;
            __src[5] = v173;
            __src[6] = v174;
            __src[1] = v169;
            __src[2] = v170;
            v148 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
            *(&__src[16] + 8) = v178;
            *(&__src[17] + 8) = v179;
            *(&__src[8] + 8) = vcvtq_f64_f32(v40);
            v134 = v175;
            *(&__src[14] + 8) = v176;
            *(&__src[15] + 8) = v177;
            LOBYTE(__src[7]) = v148 & 1;
            *&__src[0] = v119;
            *(&__src[7] + 1) = v39;
            LOBYTE(__src[8]) = v158;
            __src[10] = 0uLL;
            *(&__src[9] + 1) = v11;
            LOBYTE(__src[11]) = 1;
            v135 = v161;
LABEL_139:
            *(&__src[11] + 1) = v135;
            LOBYTE(__src[12]) = 0;
            v139 = v164;
            goto LABEL_140;
          }

          v41 = makeEntity(for:)(v35);
        }

        v42 = v41;
        goto LABEL_95;
      }

      v166 = a5;
      v63 = *a2;
      v57 = *(a2 + 8);
      v64 = *(a2 + 24);
      v59 = *(a2 + 32);
      v65 = *(a2 + 40);
      v31 = *(a2 + 64);
      v163 = *(a2 + 56);
      v5 = *(a2 + 72);
      LOBYTE(v160) = *(a2 + 80);
      v165 = *(a2 + 48);
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
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v65, v92, v93, &v175);

        if (v31)
        {
          if (REBindPointBoundComponent())
          {
            v94 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v95 = swift_dynamicCastClassUnconditional();
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

              v136 = specialized static Entity.entityInfoType(_:)();
              if (v136)
              {
                v31 = (*(v136 + 232))();
                v137 = *(v31 + 16);

                MEMORY[0x1C68F9740](v137, 0);
                *(v31 + 16) = v94;
                MEMORY[0x1C68F9740](v94, v31);

                goto LABEL_121;
              }

              v95 = makeEntity(for:)(v94);
            }

            v31 = v95;
          }

          else
          {
            v31 = 0;
          }
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v169);
        if (v174 == 1)
        {
          goto LABEL_147;
        }

        __src[3] = v171;
        __src[4] = v172;
        __src[5] = v173;
        __src[6] = v174;
        __src[1] = v169;
        __src[2] = v170;
        v138 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
        *(&__src[16] + 8) = v178;
        *(&__src[17] + 8) = v179;
        *(&__src[8] + 8) = vcvtq_f64_f32(v5);
        v134 = v175;
        *(&__src[14] + 8) = v176;
        *(&__src[15] + 8) = v177;
        LOBYTE(__src[7]) = v138 & 1;
        *&__src[0] = v89;
        *(&__src[7] + 1) = v31;
        LOBYTE(__src[8]) = v160;
        *(&__src[9] + 1) = v11;
        *&__src[10] = v163;
        v139 = 0xBFF0000000000000;
        *(&__src[10] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[11]) = 0;
        *(&__src[11] + 1) = 0xBFF0000000000000;
        LOBYTE(__src[12]) = 0;
LABEL_140:
        *(&__src[12] + 1) = v139;
        LOBYTE(__src[13]) = 0;
        goto LABEL_141;
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

        v166 = a5;
        v27 = *a2;
        v26 = *(a2 + 8);
        v28 = *(a2 + 24);
        v29 = *(a2 + 40);
        v30 = *(a2 + 48);
        v31 = *(a2 + 56);
        v165 = *(a2 + 32);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v114, v115, &v175);

            if (v31)
            {
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

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v32 = makeEntity(for:)(v27);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v166 = a5;
      v58 = *a2;
      v57 = *(a2 + 8);
      v59 = *(a2 + 24);
      v60 = *(a2 + 40);
      v30 = *(a2 + 48);
      v31 = *(a2 + 56);
      v165 = *(a2 + 32);
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
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v85, v86, &v175);

          if (v31)
          {
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

LABEL_129:
              v143 = specialized static Entity.entityInfoType(_:)();
              if (v143)
              {
                v31 = (*(v143 + 232))();
                v144 = *(v31 + 16);

                MEMORY[0x1C68F9740](v144, 0);
                *(v31 + 16) = v65;
                MEMORY[0x1C68F9740](v65, v31);

                goto LABEL_131;
              }

              v116 = makeEntity(for:)(v65);
              goto LABEL_90;
            }

LABEL_91:
            v31 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(&v169);
          if (v174 == 1)
          {
            goto LABEL_147;
          }

          __src[3] = v171;
          __src[4] = v172;
          __src[5] = v173;
          __src[6] = v174;
          __src[1] = v169;
          __src[2] = v170;
          *(&__src[16] + 8) = v178;
          *(&__src[17] + 8) = v179;
          v145 = v175;
          *(&__src[14] + 8) = v176;
          *(&__src[15] + 8) = v177;
          LOBYTE(__src[7]) = 1;
          *&__src[0] = v63;
          *(&__src[7] + 1) = v31;
          LOBYTE(__src[8]) = 0;
          *(&__src[8] + 1) = 0;
          *&__src[9] = 0;
          __src[10] = 0uLL;
          *(&__src[9] + 1) = v11;
          LOBYTE(__src[11]) = 1;
          *(&__src[11] + 1) = v165;
          LOBYTE(__src[12]) = 0;
          goto LABEL_149;
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

      v166 = a5;
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
          if (v14)
          {
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

LABEL_108:
            v14 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v46 = makeEntity(for:)(v44);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v166 = a5;
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
        if (v14)
        {
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
                specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v16, v106, v107, &v175);

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
                  v140 = specialized static Entity.entityInfoType(_:)();
                  if (!v140)
                  {
                    v109 = makeEntity(for:)(v108);
                    goto LABEL_82;
                  }

                  v17 = (*(v140 + 232))();
                  v141 = *(v17 + 16);

                  MEMORY[0x1C68F9740](v141, 0);
                  *(v17 + 16) = v108;
                  MEMORY[0x1C68F9740](v108, v17);

LABEL_126:
                  specialized ActionEventData.action<A>()(&v169);
                  if (v174 != 1)
                  {
                    __src[3] = v171;
                    __src[4] = v172;
                    __src[5] = v173;
                    __src[6] = v174;
                    __src[1] = v169;
                    __src[2] = v170;
                    v142 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA08FromToByD0VySfGGMR);
                    *(&__src[16] + 8) = v178;
                    *(&__src[17] + 8) = v179;
                    *(&__src[8] + 8) = vcvtq_f64_f32(v6);
                    *(&__src[10] + 1) = v5.f32[0];
                    v134 = v175;
                    *(&__src[14] + 8) = v176;
                    LOBYTE(__src[7]) = v142 & 1;
                    *&__src[0] = v103;
                    *(&__src[7] + 1) = v17;
                    LOBYTE(__src[8]) = v155;
                    *(&__src[9] + 1) = v11;
                    *&__src[10] = v157;
                    LOBYTE(__src[11]) = 0;
                    *(&__src[11] + 1) = v163;
                    LOBYTE(__src[12]) = 0;
                    *(&__src[12] + 1) = v160;
                    LOBYTE(__src[13]) = 0;
                    *(&__src[15] + 8) = v177;
LABEL_141:
                    *(&__src[13] + 8) = v134;
                    *(&__src[18] + 1) = v165;
LABEL_150:
                    v166(__src);

                    memcpy(__dst, __src, sizeof(__dst));
                    v153 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySfGGMd;
                    v154 = &_s17RealityFoundation11ActionEventVyAA08FromToByC0VySfGGMR;
                    goto LABEL_151;
                  }

LABEL_147:

                  __dst[2] = v171;
                  __dst[3] = v172;
                  __dst[4] = v173;
                  __dst[5] = v174;
                  __dst[0] = v169;
                  __dst[1] = v170;
                  v153 = &_s17RealityFoundation14FromToByActionVySfGSgMd;
                  v154 = &_s17RealityFoundation14FromToByActionVySfGSgMR;
LABEL_151:
                  outlined destroy of BodyTrackingComponent?(__dst, v153, v154);
                  return 0;
                }

                goto LABEL_177;
              }

              goto LABEL_171;
            }

LABEL_143:
            v149 = specialized static Entity.entityInfoType(_:)();
            if (v149)
            {
              v14 = (*(v149 + 232))();
              v150 = *(v14 + 16);

              MEMORY[0x1C68F9740](v150, 0);
              *(v14 + 16) = v100;
              MEMORY[0x1C68F9740](v100, v14);

              goto LABEL_145;
            }

            v130 = makeEntity(for:)(v100);
LABEL_107:
            v14 = v130;
LABEL_145:
            v30 = v12;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v151 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v151, v152, &v175);

        specialized ActionEventData.action<A>()(&v169);
        if (v174 == 1)
        {
          goto LABEL_147;
        }

        __src[3] = v171;
        __src[4] = v172;
        __src[5] = v173;
        __src[6] = v174;
        __src[1] = v169;
        __src[2] = v170;
        *(&__src[16] + 8) = v178;
        *(&__src[17] + 8) = v179;
        v145 = v175;
        *(&__src[14] + 8) = v176;
        *(&__src[15] + 8) = v177;
        LOBYTE(__src[7]) = 1;
        *&__src[0] = v16;
        *(&__src[7] + 1) = v14;
        LOBYTE(__src[8]) = 0;
        *(&__src[8] + 1) = 0;
        *&__src[9] = 0;
        __src[10] = 0uLL;
        *(&__src[9] + 1) = v11;
        LOBYTE(__src[11]) = 1;
        *(&__src[11] + 1) = 0;
        LOBYTE(__src[12]) = 1;
LABEL_149:
        *(&__src[12] + 1) = 0;
        LOBYTE(__src[13]) = 1;
        *(&__src[13] + 8) = v145;
        *(&__src[18] + 1) = v30;
        goto LABEL_150;
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
    *&__dst[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  return 1;
}

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
          if (a4 != 2)
          {
            goto LABEL_148;
          }

          v164 = a5;
          v13 = *a2;
          v12 = *(a2 + 8);
          v15 = *(a2 + 24);
          v14 = *(a2 + 32);
          v16 = *(a2 + 40);
          v5.i32[0] = *(a2 + 56);
          v158 = *(a2 + 64);
          v161 = *(a2 + 48);
          v155 = *(a2 + 72);
          v17 = *(a2 + 88);
          v6 = *(a2 + 96);
          v153 = *(a2 + 104);
          v163 = *(a2 + 80);
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v18 = swift_dynamicCastClassUnconditional();
            goto LABEL_8;
          }

          goto LABEL_75;
        }

        v164 = a5;
        v49 = *a2;
        v48 = *(a2 + 8);
        v51 = *(a2 + 24);
        v50 = *(a2 + 32);
        v52 = *(a2 + 40);
        v53 = *(a2 + 64);
        v54 = *(a2 + 72);
        v154 = *(a2 + 80);
        v157 = *(a2 + 88);
        v160 = *(a2 + 56);
        v162 = *(a2 + 96);
        v163 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v50, 0, v52, v77, v78, &v172);

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
            specialized ActionEventData.action<A>()(&v167);
            if ((~v169 & 0xFF00000000) != 0)
            {
              __src[3] = v169;
              __src[4] = v170;
              __src[5] = *v171;
              *(&__src[5] + 13) = *&v171[13];
              __src[1] = v167;
              __src[2] = v168;
              v133 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
              *(&__src[16] + 8) = v176;
              *(&__src[7] + 8) = vcvtq_f64_f32(v54);
              v134 = v172;
              *(&__src[13] + 8) = v173;
              *(&__src[14] + 8) = v174;
              *(&__src[15] + 8) = v175;
              BYTE5(__src[6]) = v133 & 1;
              *&__src[0] = v74;
              *(&__src[6] + 1) = v53;
              LOBYTE(__src[7]) = v154;
              *(&__src[8] + 1) = v11;
              *&__src[9] = v160;
              *(&__src[9] + 1) = 0xBFF0000000000000;
              LOBYTE(__src[10]) = 0;
              v135 = v157;
LABEL_139:
              *(&__src[10] + 1) = v135;
              LOBYTE(__src[11]) = 0;
              v139 = v162;
              goto LABEL_140;
            }

            goto LABEL_147;
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
          goto LABEL_148;
        }

        v164 = a5;
        v35 = *a2;
        v34 = *(a2 + 8);
        v37 = *(a2 + 24);
        v36 = *(a2 + 32);
        v38 = *(a2 + 40);
        v39 = *(a2 + 56);
        v40 = *(a2 + 64);
        v156 = *(a2 + 72);
        v159 = *(a2 + 80);
        v162 = *(a2 + 88);
        v163 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v36, 0, v38, v122, v123, &v172);

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

              v146 = specialized static Entity.entityInfoType(_:)();
              if (!v146)
              {
                v125 = makeEntity(for:)(v124);
                goto LABEL_99;
              }

              v39 = (*(v146 + 232))();
              v147 = *(v39 + 16);

              MEMORY[0x1C68F9740](v147, 0);
              *(v39 + 16) = v124;
              MEMORY[0x1C68F9740](v124, v39);
            }

            else
            {
              v39 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v167);
            if ((~v169 & 0xFF00000000) != 0)
            {
              __src[3] = v169;
              __src[4] = v170;
              __src[5] = *v171;
              *(&__src[5] + 13) = *&v171[13];
              __src[1] = v167;
              __src[2] = v168;
              v148 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
              *(&__src[16] + 8) = v176;
              *(&__src[7] + 8) = vcvtq_f64_f32(v40);
              v134 = v172;
              *(&__src[13] + 8) = v173;
              *(&__src[14] + 8) = v174;
              *(&__src[15] + 8) = v175;
              BYTE5(__src[6]) = v148 & 1;
              *&__src[0] = v119;
              *(&__src[6] + 1) = v39;
              LOBYTE(__src[7]) = v156;
              __src[9] = 0uLL;
              *(&__src[8] + 1) = v11;
              LOBYTE(__src[10]) = 1;
              v135 = v159;
              goto LABEL_139;
            }

LABEL_147:

LABEL_148:

            return 0;
          }

          v41 = makeEntity(for:)(v35);
        }

        v42 = v41;
        goto LABEL_95;
      }

      v164 = a5;
      v63 = *a2;
      v57 = *(a2 + 8);
      v64 = *(a2 + 24);
      v59 = *(a2 + 32);
      v65 = *(a2 + 40);
      v31 = *(a2 + 64);
      v161 = *(a2 + 56);
      v5 = *(a2 + 72);
      LOBYTE(v158) = *(a2 + 80);
      v163 = *(a2 + 48);
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
        specialized ActionEventData.init(eventID:coreData:typeName:)(v59, 0, v65, v92, v93, &v172);

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

          v136 = specialized static Entity.entityInfoType(_:)();
          if (!v136)
          {
            v95 = makeEntity(for:)(v94);
            goto LABEL_66;
          }

          v31 = (*(v136 + 232))();
          v137 = *(v31 + 16);

          MEMORY[0x1C68F9740](v137, 0);
          *(v31 + 16) = v94;
          MEMORY[0x1C68F9740](v94, v31);
        }

        else
        {
          v31 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v167);
        if ((~v169 & 0xFF00000000) != 0)
        {
          __src[3] = v169;
          __src[4] = v170;
          __src[5] = *v171;
          *(&__src[5] + 13) = *&v171[13];
          __src[1] = v167;
          __src[2] = v168;
          v138 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
          *(&__src[16] + 8) = v176;
          *(&__src[7] + 8) = vcvtq_f64_f32(v5);
          v134 = v172;
          *(&__src[13] + 8) = v173;
          *(&__src[14] + 8) = v174;
          *(&__src[15] + 8) = v175;
          BYTE5(__src[6]) = v138 & 1;
          *&__src[0] = v89;
          *(&__src[6] + 1) = v31;
          LOBYTE(__src[7]) = v158;
          *(&__src[8] + 1) = v11;
          *&__src[9] = v161;
          v139 = 0xBFF0000000000000;
          *(&__src[9] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[10]) = 0;
          *(&__src[10] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[11]) = 0;
LABEL_140:
          *(&__src[11] + 1) = v139;
          LOBYTE(__src[12]) = 0;
          goto LABEL_141;
        }

        goto LABEL_147;
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
          goto LABEL_148;
        }

        v164 = a5;
        v27 = *a2;
        v26 = *(a2 + 8);
        v28 = *(a2 + 24);
        v29 = *(a2 + 40);
        v30 = *(a2 + 48);
        v31 = *(a2 + 56);
        v163 = *(a2 + 32);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v29, v114, v115, &v172);

            if (v31)
            {
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

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v32 = makeEntity(for:)(v27);
        }

        v33 = v32;
        goto LABEL_86;
      }

      v164 = a5;
      v58 = *a2;
      v57 = *(a2 + 8);
      v59 = *(a2 + 24);
      v60 = *(a2 + 40);
      v30 = *(a2 + 48);
      v31 = *(a2 + 56);
      v163 = *(a2 + 32);
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
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v60, v85, v86, &v172);

          if (v31)
          {
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

LABEL_129:
              v143 = specialized static Entity.entityInfoType(_:)();
              if (v143)
              {
                v31 = (*(v143 + 232))();
                v144 = *(v31 + 16);

                MEMORY[0x1C68F9740](v144, 0);
                *(v31 + 16) = v65;
                MEMORY[0x1C68F9740](v65, v31);

                goto LABEL_131;
              }

              v116 = makeEntity(for:)(v65);
              goto LABEL_90;
            }

LABEL_91:
            v31 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(&v167);
          if ((~v169 & 0xFF00000000) == 0)
          {
            goto LABEL_147;
          }

          *(&__src[16] + 8) = v176;
          __src[3] = v169;
          __src[4] = v170;
          __src[5] = *v171;
          __src[1] = v167;
          __src[2] = v168;
          v145 = v172;
          *(&__src[13] + 8) = v173;
          *(&__src[14] + 8) = v174;
          *(&__src[15] + 8) = v175;
          *(&__src[5] + 13) = *&v171[13];
          BYTE5(__src[6]) = 1;
          *&__src[0] = v63;
          *(&__src[6] + 1) = v31;
          LOBYTE(__src[7]) = 0;
          *(&__src[7] + 8) = 0uLL;
          __src[9] = 0uLL;
          *(&__src[8] + 1) = v11;
          LOBYTE(__src[10]) = 1;
          *(&__src[10] + 1) = v163;
          LOBYTE(__src[11]) = 0;
          goto LABEL_150;
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
        goto LABEL_148;
      }

      v164 = a5;
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
          if (v14)
          {
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

LABEL_108:
            v14 = 0;
            goto LABEL_146;
          }

          goto LABEL_146;
        }

        v46 = makeEntity(for:)(v44);
      }

      v47 = v46;
      goto LABEL_103;
    }

    v164 = a5;
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
        if (v14)
        {
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
                specialized ActionEventData.init(eventID:coreData:typeName:)(v14, 0, v16, v106, v107, &v172);

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
                  v140 = specialized static Entity.entityInfoType(_:)();
                  if (!v140)
                  {
                    v109 = makeEntity(for:)(v108);
                    goto LABEL_82;
                  }

                  v17 = (*(v140 + 232))();
                  v141 = *(v17 + 16);

                  MEMORY[0x1C68F9740](v141, 0);
                  *(v17 + 16) = v108;
                  MEMORY[0x1C68F9740](v108, v17);

LABEL_126:
                  specialized ActionEventData.action<A>()(&v167);
                  if ((~v169 & 0xFF00000000) != 0)
                  {
                    __src[3] = v169;
                    __src[4] = v170;
                    __src[5] = *v171;
                    *(&__src[5] + 13) = *&v171[13];
                    __src[1] = v167;
                    __src[2] = v168;
                    v142 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA09BillboardD0VGMR);
                    *(&__src[16] + 8) = v176;
                    *(&__src[7] + 8) = vcvtq_f64_f32(v6);
                    *(&__src[9] + 1) = v5.f32[0];
                    v134 = v172;
                    *(&__src[13] + 8) = v173;
                    *(&__src[14] + 8) = v174;
                    BYTE5(__src[6]) = v142 & 1;
                    *&__src[0] = v103;
                    *(&__src[6] + 1) = v17;
                    LOBYTE(__src[7]) = v153;
                    *(&__src[8] + 1) = v11;
                    *&__src[9] = v155;
                    LOBYTE(__src[10]) = 0;
                    *(&__src[10] + 1) = v161;
                    LOBYTE(__src[11]) = 0;
                    *(&__src[11] + 1) = v158;
                    LOBYTE(__src[12]) = 0;
                    *(&__src[15] + 8) = v175;
LABEL_141:
                    *(&__src[12] + 8) = v134;
                    *(&__src[17] + 1) = v163;
LABEL_151:
                    v164(__src);

                    memcpy(__dst, __src, sizeof(__dst));
                    outlined destroy of BodyTrackingComponent?(__dst, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMd, &_s17RealityFoundation11ActionEventVyAA09BillboardC0VGMR);
                    return 0;
                  }

                  goto LABEL_147;
                }

                goto LABEL_177;
              }

              goto LABEL_171;
            }

LABEL_143:
            v149 = specialized static Entity.entityInfoType(_:)();
            if (v149)
            {
              v14 = (*(v149 + 232))();
              v150 = *(v14 + 16);

              MEMORY[0x1C68F9740](v150, 0);
              *(v14 + 16) = v100;
              MEMORY[0x1C68F9740](v100, v14);

              goto LABEL_145;
            }

            v130 = makeEntity(for:)(v100);
LABEL_107:
            v14 = v130;
LABEL_145:
            v30 = v12;
            goto LABEL_146;
          }

          goto LABEL_108;
        }

LABEL_146:
        v151 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v13, v151, v152, &v172);

        specialized ActionEventData.action<A>()(&v167);
        if ((~v169 & 0xFF00000000) == 0)
        {
          goto LABEL_147;
        }

        *(&__src[16] + 8) = v176;
        __src[3] = v169;
        __src[4] = v170;
        __src[5] = *v171;
        __src[1] = v167;
        __src[2] = v168;
        v145 = v172;
        *(&__src[13] + 8) = v173;
        *(&__src[14] + 8) = v174;
        *(&__src[15] + 8) = v175;
        *(&__src[5] + 13) = *&v171[13];
        BYTE5(__src[6]) = 1;
        *&__src[0] = v16;
        *(&__src[6] + 1) = v14;
        LOBYTE(__src[7]) = 0;
        *(&__src[7] + 8) = 0uLL;
        __src[9] = 0uLL;
        *(&__src[8] + 1) = v11;
        LOBYTE(__src[10]) = 1;
        *(&__src[10] + 1) = 0;
        LOBYTE(__src[11]) = 1;
LABEL_150:
        *(&__src[11] + 1) = 0;
        LOBYTE(__src[12]) = 1;
        *(&__src[12] + 8) = v145;
        *(&__src[17] + 1) = v30;
        goto LABEL_151;
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
    __dst[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v21, v22, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1C6902A30](v24, -1, -1);
    MEMORY[0x1C6902A30](v23, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_OWORD *), uint64_t a6, void (*a7)(__int128 *__return_ptr, uint64_t), unsigned int (*a8)(__int128 *), uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v215 = a7;
            v207 = a13;
            v208 = a14;
            v209 = a11;
            v210 = a12;
            v21 = *a2;
            v22 = *(a2 + 8);
            v24 = *(a2 + 24);
            v23 = *(a2 + 32);
            v25 = *(a2 + 40);
            v26 = *(a2 + 56);
            v196 = *(a2 + 64);
            v200 = *(a2 + 48);
            v193 = *(a2 + 72);
            v27 = *(a2 + 88);
            v204 = *(a2 + 80);
            v28 = *(a2 + 96);
            v191 = *(a2 + 104);
            v211 = a5;
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v29 = swift_dynamicCastClassUnconditional();
              goto LABEL_8;
            }

            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v132 = specialized static Entity.entityInfoType(_:)();
              if (v132)
              {
                v30 = (*(v132 + 232))();
                v133 = *(v30 + 16);

                MEMORY[0x1C68F9740](v133, 0);
                *(v30 + 16) = v21;
                MEMORY[0x1C68F9740](v21, v30);

                goto LABEL_82;
              }

              v29 = makeEntity(for:)(v21);
LABEL_8:
              v30 = v29;
LABEL_82:
              type metadata accessor for AnimationPlaybackController();
              v134 = swift_allocObject();
              *(v134 + 40) = 0;
              swift_weakInit();
              *(v134 + 16) = v22;
              swift_weakAssign();
              v135 = *(v30 + 16);

              *(v134 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v30 + 16));
              v136 = Hasher._finalize()();

              *(v134 + 24) = v136;
              v137 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v23, 0, v25, v137, v138, &v315);

              if (!v27)
              {
LABEL_147:
                v215(&v233, v139);
                v311 = v239;
                v312 = v240;
                v313 = v241;
                v314 = v242;
                v307 = v235;
                v308 = v236;
                v309 = v237;
                v310 = v238;
                v305 = v233;
                v306 = v234;
                if (a8(&v305) == 1)
                {

                  __dst[6] = v239;
                  __dst[7] = v240;
                  __dst[8] = v241;
                  __dst[9] = v242;
                  __dst[2] = v235;
                  __dst[3] = v236;
                  __dst[4] = v237;
                  __dst[5] = v238;
                  v112 = v233;
                  v113 = v234;
                  goto LABEL_166;
                }

                __src[7] = v239;
                __src[8] = v240;
                __src[9] = v241;
                __src[10] = v242;
                __src[3] = v235;
                __src[4] = v236;
                __src[5] = v237;
                __src[6] = v238;
                __src[1] = v233;
                __src[2] = v234;
                LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
                *&__src[0] = v134;
                *(&__src[11] + 1) = v27;
                LOBYTE(__src[12]) = v191;
                *(&__src[12] + 8) = vcvtq_f64_f32(v28);
                *(&__src[13] + 1) = v20;
                *&__src[14] = v193;
                *(&__src[14] + 1) = v26;
                LOBYTE(__src[15]) = 0;
                LOBYTE(__src[16]) = 0;
                *(&__src[15] + 1) = v200;
                *(&__src[16] + 1) = v196;
                LOBYTE(__src[17]) = 0;
                goto LABEL_150;
              }

              v139 = REBindPointBoundComponent();
              if (!v139)
              {
                v27 = 0;
                goto LABEL_147;
              }

              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v139 = swift_dynamicCastClassUnconditional();
LABEL_86:
                v27 = v139;
                goto LABEL_147;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v178 = specialized static Entity.entityInfoType(_:)();
                if (v178)
                {
                  v27 = (*(v178 + 232))();
                  v179 = *(v27 + 16);

                  MEMORY[0x1C68F9740](v179, 0);
                  *(v27 + 16) = Entity;
                  MEMORY[0x1C68F9740](Entity, v27);

                  goto LABEL_147;
                }

                v139 = makeEntity(for:)(Entity);
                goto LABEL_86;
              }

              goto LABEL_200;
            }

            goto LABEL_192;
          }

LABEL_42:

          return 0;
        }

        v219 = a7;
        v207 = a13;
        v208 = a14;
        v209 = a11;
        v210 = a12;
        v61 = *a2;
        v62 = *(a2 + 8);
        v64 = *(a2 + 24);
        v63 = *(a2 + 32);
        v65 = *(a2 + 40);
        v66 = *(a2 + 64);
        v67 = *(a2 + 72);
        v192 = *(a2 + 80);
        v202 = *(a2 + 88);
        v204 = *(a2 + 48);
        v195 = *(a2 + 56);
        v198 = *(a2 + 96);
        v211 = a5;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v68 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v92 = specialized static Entity.entityInfoType(_:)();
          if (v92)
          {
            v69 = (*(v92 + 232))();
            v93 = *(v69 + 16);

            MEMORY[0x1C68F9740](v93, 0);
            *(v69 + 16) = v61;
            MEMORY[0x1C68F9740](v61, v69);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v94 = swift_allocObject();
            *(v94 + 40) = 0;
            swift_weakInit();
            *(v94 + 16) = v62;
            swift_weakAssign();
            v95 = *(v69 + 16);

            *(v94 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v69 + 16));
            v96 = Hasher._finalize()();

            *(v94 + 24) = v96;
            v97 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v63, 0, v65, v97, v98, &v315);

            if (v66)
            {
              v99 = REBindPointBoundComponent();
              if (v99)
              {
                v100 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v99 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_196:
                    __break(1u);
                    goto LABEL_197;
                  }

                  v164 = specialized static Entity.entityInfoType(_:)();
                  if (v164)
                  {
                    v66 = (*(v164 + 232))();
                    v165 = *(v66 + 16);

                    MEMORY[0x1C68F9740](v165, 0);
                    *(v66 + 16) = v100;
                    MEMORY[0x1C68F9740](v100, v66);

                    goto LABEL_125;
                  }

                  v99 = makeEntity(for:)(v100);
                }

                v66 = v99;
              }

              else
              {
                v66 = 0;
              }
            }

LABEL_125:
            v219(&v223, v99);
            v311 = v229;
            v312 = v230;
            v313 = v231;
            v314 = v232;
            v307 = v225;
            v308 = v226;
            v309 = v227;
            v310 = v228;
            v305 = v223;
            v306 = v224;
            if (a8(&v305) == 1)
            {

              __dst[6] = v229;
              __dst[7] = v230;
              __dst[8] = v231;
              __dst[9] = v232;
              __dst[2] = v225;
              __dst[3] = v226;
              __dst[4] = v227;
              __dst[5] = v228;
              v112 = v223;
              v113 = v224;
              goto LABEL_166;
            }

            __src[7] = v229;
            __src[8] = v230;
            __src[9] = v231;
            __src[10] = v232;
            __src[3] = v225;
            __src[4] = v226;
            __src[5] = v227;
            __src[6] = v228;
            __src[1] = v223;
            __src[2] = v224;
            LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
            *&__src[0] = v94;
            *(&__src[11] + 1) = v66;
            LOBYTE(__src[12]) = v192;
            *(&__src[12] + 8) = vcvtq_f64_f32(v67);
            *(&__src[13] + 1) = v20;
            *&__src[14] = v195;
            *(&__src[14] + 1) = 0xBFF0000000000000;
            LOBYTE(__src[15]) = 0;
            LOBYTE(__src[16]) = 0;
            v166 = v198;
            *(&__src[15] + 1) = v202;
LABEL_137:
            *(&__src[16] + 1) = v166;
            LOBYTE(__src[17]) = 0;
LABEL_150:
            *(&__src[19] + 8) = v317;
            *(&__src[20] + 8) = v318;
            *(&__src[21] + 8) = v319;
LABEL_160:
            *(&__src[17] + 8) = v315;
            *(&__src[18] + 8) = v316;
            *(&__src[22] + 1) = v204;
            v211(__src);
            goto LABEL_169;
          }

          v68 = makeEntity(for:)(v61);
LABEL_32:
          v69 = v68;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_189;
      }

      if (a4 != 4)
      {
        if (a4 != 8)
        {
          goto LABEL_42;
        }

        v217 = a7;
        v207 = a13;
        v208 = a14;
        v209 = a11;
        v210 = a12;
        v45 = *a2;
        v46 = *(a2 + 8);
        v48 = *(a2 + 24);
        v47 = *(a2 + 32);
        v49 = *(a2 + 40);
        v50 = *(a2 + 56);
        v51 = *(a2 + 64);
        v194 = *(a2 + 72);
        v201 = *(a2 + 80);
        v204 = *(a2 + 48);
        v197 = *(a2 + 88);
        v211 = a5;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v52 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v149 = specialized static Entity.entityInfoType(_:)();
          if (v149)
          {
            v53 = (*(v149 + 232))();
            v150 = *(v53 + 16);

            MEMORY[0x1C68F9740](v150, 0);
            *(v53 + 16) = v45;
            MEMORY[0x1C68F9740](v45, v53);

LABEL_103:
            type metadata accessor for AnimationPlaybackController();
            v151 = swift_allocObject();
            *(v151 + 40) = 0;
            swift_weakInit();
            *(v151 + 16) = v46;
            swift_weakAssign();
            v152 = *(v53 + 16);

            *(v151 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v53 + 16));
            v153 = Hasher._finalize()();

            *(v151 + 24) = v153;
            v154 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v47, 0, v49, v154, v155, &v315);

            if (v50)
            {
              v156 = REBindPointBoundComponent();
              if (v156)
              {
                v157 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v156 = swift_dynamicCastClassUnconditional();
                }

                else
                {
                  result = REEntityIsBeingDestroyed();
                  if (result)
                  {
LABEL_202:
                    __break(1u);
                    goto LABEL_203;
                  }

                  v182 = specialized static Entity.entityInfoType(_:)();
                  if (v182)
                  {
                    v50 = (*(v182 + 232))();
                    v183 = *(v50 + 16);

                    MEMORY[0x1C68F9740](v183, 0);
                    *(v50 + 16) = v157;
                    MEMORY[0x1C68F9740](v157, v50);

                    goto LABEL_157;
                  }

                  v156 = makeEntity(for:)(v157);
                }

                v50 = v156;
              }

              else
              {
                v50 = 0;
              }
            }

LABEL_157:
            v217(&v253, v156);
            v311 = v259;
            v312 = v260;
            v313 = v261;
            v314 = v262;
            v307 = v255;
            v308 = v256;
            v309 = v257;
            v310 = v258;
            v305 = v253;
            v306 = v254;
            if (a8(&v305) == 1)
            {

              __dst[6] = v259;
              __dst[7] = v260;
              __dst[8] = v261;
              __dst[9] = v262;
              __dst[2] = v255;
              __dst[3] = v256;
              __dst[4] = v257;
              __dst[5] = v258;
              v112 = v253;
              v113 = v254;
              goto LABEL_166;
            }

            __src[7] = v259;
            __src[8] = v260;
            __src[9] = v261;
            __src[10] = v262;
            __src[3] = v255;
            __src[4] = v256;
            __src[5] = v257;
            __src[6] = v258;
            __src[1] = v253;
            __src[2] = v254;
            LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
            *&__src[0] = v151;
            *(&__src[11] + 1) = v50;
            LOBYTE(__src[12]) = v194;
            *(&__src[12] + 8) = vcvtq_f64_f32(v51);
            *(&__src[13] + 1) = v20;
            __src[14] = 0uLL;
            LOBYTE(__src[15]) = 1;
            LOBYTE(__src[16]) = 0;
            *(&__src[15] + 1) = v201;
            *(&__src[16] + 1) = v197;
            LOBYTE(__src[17]) = 0;
            *(&__src[20] + 8) = v318;
            *(&__src[21] + 8) = v319;
            *(&__src[19] + 8) = v317;
            goto LABEL_160;
          }

          v52 = makeEntity(for:)(v45);
        }

        v53 = v52;
        goto LABEL_103;
      }

      v221 = a7;
      v207 = a13;
      v208 = a14;
      v209 = a11;
      v210 = a12;
      v77 = *a2;
      v78 = *(a2 + 8);
      v80 = *(a2 + 24);
      v79 = *(a2 + 32);
      v81 = *(a2 + 40);
      v82 = *(a2 + 64);
      v203 = *(a2 + 56);
      v204 = *(a2 + 48);
      v83 = *(a2 + 72);
      v199 = *(a2 + 80);
      v211 = a5;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v84 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        v116 = specialized static Entity.entityInfoType(_:)();
        if (v116)
        {
          v85 = (*(v116 + 232))();
          v117 = *(v85 + 16);

          MEMORY[0x1C68F9740](v117, 0);
          *(v85 + 16) = v77;
          MEMORY[0x1C68F9740](v77, v85);

LABEL_66:
          type metadata accessor for AnimationPlaybackController();
          v118 = swift_allocObject();
          *(v118 + 40) = 0;
          swift_weakInit();
          *(v118 + 16) = v78;
          swift_weakAssign();
          v119 = *(v85 + 16);

          *(v118 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v85 + 16));
          v120 = Hasher._finalize()();

          *(v118 + 24) = v120;
          v121 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(v79, 0, v81, v121, v122, &v315);

          if (v82)
          {
            v123 = REBindPointBoundComponent();
            if (v123)
            {
              v124 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v123 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_198:
                  __break(1u);
                  goto LABEL_199;
                }

                v169 = specialized static Entity.entityInfoType(_:)();
                if (v169)
                {
                  v82 = (*(v169 + 232))();
                  v170 = *(v82 + 16);

                  MEMORY[0x1C68F9740](v170, 0);
                  *(v82 + 16) = v124;
                  MEMORY[0x1C68F9740](v124, v82);

                  goto LABEL_134;
                }

                v123 = makeEntity(for:)(v124);
              }

              v82 = v123;
            }

            else
            {
              v82 = 0;
            }
          }

LABEL_134:
          v221(&v243, v123);
          v311 = v249;
          v312 = v250;
          v313 = v251;
          v314 = v252;
          v307 = v245;
          v308 = v246;
          v309 = v247;
          v310 = v248;
          v305 = v243;
          v306 = v244;
          if (a8(&v305) == 1)
          {

            __dst[6] = v249;
            __dst[7] = v250;
            __dst[8] = v251;
            __dst[9] = v252;
            __dst[2] = v245;
            __dst[3] = v246;
            __dst[4] = v247;
            __dst[5] = v248;
            v112 = v243;
            v113 = v244;
            goto LABEL_166;
          }

          __src[7] = v249;
          __src[8] = v250;
          __src[9] = v251;
          __src[10] = v252;
          __src[3] = v245;
          __src[4] = v246;
          __src[5] = v247;
          __src[6] = v248;
          __src[1] = v243;
          __src[2] = v244;
          LOBYTE(__src[11]) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(a9, a10) & 1;
          *&__src[0] = v118;
          *(&__src[11] + 1) = v82;
          LOBYTE(__src[12]) = v199;
          *(&__src[12] + 8) = vcvtq_f64_f32(v83);
          *(&__src[13] + 1) = v20;
          *&__src[14] = v203;
          v166 = 0xBFF0000000000000;
          *(&__src[14] + 1) = 0xBFF0000000000000;
          LOBYTE(__src[15]) = 0;
          LOBYTE(__src[16]) = 0;
          *(&__src[15] + 1) = 0xBFF0000000000000;
          goto LABEL_137;
        }

        v84 = makeEntity(for:)(v77);
      }

      v85 = v84;
      goto LABEL_66;
    }

    if (a4 <= 63)
    {
      if (a4 != 16)
      {
        if (a4 != 32)
        {
          goto LABEL_42;
        }

        v216 = a7;
        v207 = a13;
        v208 = a14;
        v210 = a12;
        v212 = a5;
        v209 = a11;
        v37 = *a2;
        v38 = *(a2 + 8);
        v39 = *(a2 + 24);
        v40 = *(a2 + 32);
        v41 = *(a2 + 40);
        v205 = *(a2 + 48);
        v42 = *(a2 + 56);
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
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          v141 = specialized static Entity.entityInfoType(_:)();
          if (v141)
          {
            v44 = (*(v141 + 232))();
            v142 = *(v44 + 16);

            MEMORY[0x1C68F9740](v142, 0);
            *(v44 + 16) = v37;
            MEMORY[0x1C68F9740](v37, v44);

            goto LABEL_90;
          }

          v43 = makeEntity(for:)(v37);
        }

        v44 = v43;
LABEL_90:
        type metadata accessor for AnimationPlaybackController();
        v103 = swift_allocObject();
        *(v103 + 40) = 0;
        swift_weakInit();
        *(v103 + 16) = v38;
        swift_weakAssign();
        v143 = *(v44 + 16);

        *(v103 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v44 + 16));
        v144 = Hasher._finalize()();

        *(v103 + 24) = v144;
        v145 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v41, v145, v146, &v315);

        if (v42 && REBindPointBoundComponent())
        {
          v147 = REComponentGetEntity();
          v109 = v212;
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v148 = swift_dynamicCastClassUnconditional();
          }

          else
          {
            result = REEntityIsBeingDestroyed();
            if (result)
            {
LABEL_201:
              __break(1u);
              goto LABEL_202;
            }

            v180 = specialized static Entity.entityInfoType(_:)();
            if (v180)
            {
              v111 = (*(v180 + 232))();
              v181 = *(v111 + 16);

              MEMORY[0x1C68F9740](v181, 0);
              *(v111 + 16) = v147;
              MEMORY[0x1C68F9740](v147, v111);

              goto LABEL_96;
            }

            v148 = makeEntity(for:)(v147);
          }

          v111 = v148;
        }

        else
        {
          v111 = 0;
          v109 = v212;
        }

LABEL_96:
        v216(&v273);
        v311 = v279;
        v312 = v280;
        v313 = v281;
        v314 = v282;
        v307 = v275;
        v308 = v276;
        v309 = v277;
        v310 = v278;
        v305 = v273;
        v306 = v274;
        if (a8(&v305) == 1)
        {

          __dst[6] = v279;
          __dst[7] = v280;
          __dst[8] = v281;
          __dst[9] = v282;
          __dst[2] = v275;
          __dst[3] = v276;
          __dst[4] = v277;
          __dst[5] = v278;
          v112 = v273;
          v113 = v274;
          goto LABEL_166;
        }

        __src[7] = v279;
        __src[8] = v280;
        __src[9] = v281;
        __src[10] = v282;
        __src[3] = v275;
        __src[4] = v276;
        __src[5] = v277;
        __src[6] = v278;
        v114 = v273;
        v115 = v274;
        goto LABEL_99;
      }

      v220 = a7;
      v207 = a13;
      v208 = a14;
      v210 = a12;
      v214 = a5;
      v209 = a11;
      v70 = *a2;
      v71 = *(a2 + 8);
      v72 = *(a2 + 24);
      v40 = *(a2 + 32);
      v73 = *(a2 + 40);
      v205 = *(a2 + 48);
      v74 = *(a2 + 56);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v75 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        v101 = specialized static Entity.entityInfoType(_:)();
        if (v101)
        {
          v76 = (*(v101 + 232))();
          v102 = *(v76 + 16);

          MEMORY[0x1C68F9740](v102, 0);
          *(v76 + 16) = v70;
          MEMORY[0x1C68F9740](v70, v76);

          goto LABEL_54;
        }

        v75 = makeEntity(for:)(v70);
      }

      v76 = v75;
LABEL_54:
      type metadata accessor for AnimationPlaybackController();
      v103 = swift_allocObject();
      *(v103 + 40) = 0;
      swift_weakInit();
      *(v103 + 16) = v71;
      swift_weakAssign();
      v104 = *(v76 + 16);

      *(v103 + 32) = REEntityGetLocalId();
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v76 + 16));
      v105 = Hasher._finalize()();

      *(v103 + 24) = v105;
      v106 = String.init(cString:)();
      specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v73, v106, v107, &v315);

      if (v74 && REBindPointBoundComponent())
      {
        v108 = REComponentGetEntity();
        v109 = v214;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v110 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          result = REEntityIsBeingDestroyed();
          if (result)
          {
LABEL_197:
            __break(1u);
            goto LABEL_198;
          }

          v167 = specialized static Entity.entityInfoType(_:)();
          if (v167)
          {
            v111 = (*(v167 + 232))();
            v168 = *(v111 + 16);

            MEMORY[0x1C68F9740](v168, 0);
            *(v111 + 16) = v108;
            MEMORY[0x1C68F9740](v108, v111);

            goto LABEL_60;
          }

          v110 = makeEntity(for:)(v108);
        }

        v111 = v110;
      }

      else
      {
        v111 = 0;
        v109 = v214;
      }

LABEL_60:
      v220(&v263);
      v311 = v269;
      v312 = v270;
      v313 = v271;
      v314 = v272;
      v307 = v265;
      v308 = v266;
      v309 = v267;
      v310 = v268;
      v305 = v263;
      v306 = v264;
      if (a8(&v305) == 1)
      {

        __dst[6] = v269;
        __dst[7] = v270;
        __dst[8] = v271;
        __dst[9] = v272;
        __dst[2] = v265;
        __dst[3] = v266;
        __dst[4] = v267;
        __dst[5] = v268;
        v112 = v263;
        v113 = v264;
LABEL_166:
        __dst[0] = v112;
        __dst[1] = v113;
        v189 = v207;
        v190 = v208;
LABEL_170:
        outlined destroy of BodyTrackingComponent?(__dst, v189, v190);
        return 0;
      }

      __src[7] = v269;
      __src[8] = v270;
      __src[9] = v271;
      __src[10] = v272;
      __src[3] = v265;
      __src[4] = v266;
      __src[5] = v267;
      __src[6] = v268;
      v114 = v263;
      v115 = v264;
LABEL_99:
      __src[1] = v114;
      __src[2] = v115;
      LOBYTE(__src[11]) = 1;
      *&__src[0] = v103;
      *(&__src[11] + 1) = v111;
      LOBYTE(__src[12]) = 0;
      *&__src[13] = 0;
      *(&__src[12] + 1) = 0;
      *(&__src[13] + 1) = v20;
      __src[14] = 0uLL;
      LOBYTE(__src[15]) = 1;
      LOBYTE(__src[16]) = 0;
      *(&__src[15] + 1) = v40;
      *(&__src[16] + 1) = 0;
      LOBYTE(__src[17]) = 1;
      *(&__src[20] + 8) = v318;
      *(&__src[21] + 8) = v319;
      *(&__src[18] + 8) = v316;
      *(&__src[19] + 8) = v317;
      *(&__src[17] + 8) = v315;
      *(&__src[22] + 1) = v205;
      v109(__src);
LABEL_169:

      memcpy(__dst, __src, sizeof(__dst));
      v189 = v209;
      v190 = v210;
      goto LABEL_170;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v218 = a7;
      v207 = a13;
      v208 = a14;
      v213 = a5;
      v209 = a11;
      v54 = *a2;
      v55 = *(a2 + 8);
      v57 = *(a2 + 16);
      v56 = *(a2 + 24);
      v58 = *(a2 + 40);
      v206 = *(a2 + 32);
      v210 = a12;
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v59 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        result = REEntityIsBeingDestroyed();
        if (result)
        {
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        v158 = specialized static Entity.entityInfoType(_:)();
        if (v158)
        {
          v60 = (*(v158 + 232))();
          v159 = *(v60 + 16);

          MEMORY[0x1C68F9740](v159, 0);
          *(v60 + 16) = v54;
          MEMORY[0x1C68F9740](v54, v60);

LABEL_111:
          type metadata accessor for AnimationPlaybackController();
          v127 = swift_allocObject();
          *(v127 + 40) = 0;
          swift_weakInit();
          *(v127 + 16) = v55;
          swift_weakAssign();
          v160 = *(v60 + 16);

          *(v127 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v60 + 16));
          v161 = Hasher._finalize()();

          *(v127 + 24) = v161;
          if (v58)
          {
            if (REBindPointBoundComponent())
            {
              v162 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v163 = swift_dynamicCastClassUnconditional();
              }

              else
              {
                result = REEntityIsBeingDestroyed();
                if (result)
                {
LABEL_203:
                  __break(1u);
                  return result;
                }

                v184 = specialized static Entity.entityInfoType(_:)();
                if (v184)
                {
                  v58 = (*(v184 + 232))();
                  v185 = *(v58 + 16);

                  MEMORY[0x1C68F9740](v185, 0);
                  *(v58 + 16) = v162;
                  MEMORY[0x1C68F9740](v162, v58);

                  goto LABEL_164;
                }

                v163 = makeEntity(for:)(v162);
              }

              v58 = v163;
            }

            else
            {
              v58 = 0;
            }
          }

LABEL_164:
          v186 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v56, v186, v187, &v315);

          v218(&v295, v188);
          v311 = v301;
          v312 = v302;
          v313 = v303;
          v314 = v304;
          v307 = v297;
          v308 = v298;
          v309 = v299;
          v310 = v300;
          v305 = v295;
          v306 = v296;
          if (a8(&v305) == 1)
          {

            __dst[6] = v301;
            __dst[7] = v302;
            __dst[8] = v303;
            __dst[9] = v304;
            __dst[2] = v297;
            __dst[3] = v298;
            __dst[4] = v299;
            __dst[5] = v300;
            v112 = v295;
            v113 = v296;
            goto LABEL_166;
          }

          __src[7] = v301;
          __src[8] = v302;
          __src[9] = v303;
          __src[10] = v304;
          __src[3] = v297;
          __src[4] = v298;
          __src[5] = v299;
          __src[6] = v300;
          v176 = v295;
          v177 = v296;
          goto LABEL_168;
        }

        v59 = makeEntity(for:)(v54);
      }

      v60 = v59;
      goto LABEL_111;
    }

    v222 = a7;
    v207 = a13;
    v208 = a14;
    v213 = a5;
    v209 = a11;
    v86 = *a2;
    v87 = *(a2 + 8);
    v89 = *(a2 + 16);
    v88 = *(a2 + 24);
    v58 = *(a2 + 40);
    v206 = *(a2 + 32);
    v210 = a12;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v90 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      result = REEntityIsBeingDestroyed();
      if (result)
      {
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
        goto LABEL_193;
      }

      v125 = specialized static Entity.entityInfoType(_:)();
      if (v125)
      {
        v91 = (*(v125 + 232))();
        v126 = *(v91 + 16);

        MEMORY[0x1C68F9740](v126, 0);
        *(v91 + 16) = v86;
        MEMORY[0x1C68F9740](v86, v91);

LABEL_74:
        type metadata accessor for AnimationPlaybackController();
        v127 = swift_allocObject();
        *(v127 + 40) = 0;
        swift_weakInit();
        *(v127 + 16) = v87;
        swift_weakAssign();
        v128 = *(v91 + 16);

        *(v127 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v91 + 16));
        v129 = Hasher._finalize()();

        *(v127 + 24) = v129;
        if (v58)
        {
          if (REBindPointBoundComponent())
          {
            v130 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
              type metadata accessor for Entity();
              v131 = swift_dynamicCastClassUnconditional();
            }

            else
            {
              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
                goto LABEL_201;
              }

              v171 = specialized static Entity.entityInfoType(_:)();
              if (v171)
              {
                v58 = (*(v171 + 232))();
                v172 = *(v58 + 16);

                MEMORY[0x1C68F9740](v172, 0);
                *(v58 + 16) = v130;
                MEMORY[0x1C68F9740](v130, v58);

                goto LABEL_141;
              }

              v131 = makeEntity(for:)(v130);
            }

            v58 = v131;
          }

          else
          {
            v58 = 0;
          }
        }

LABEL_141:
        v173 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v88, v173, v174, &v315);

        v222(&v283, v175);
        v311 = v289;
        v312 = v290;
        v313 = v291;
        v314 = v292;
        v307 = v285;
        v308 = v286;
        v309 = v287;
        v310 = v288;
        v305 = v283;
        v306 = v284;
        if (a8(&v305) == 1)
        {

          __dst[6] = v289;
          __dst[7] = v290;
          __dst[8] = v291;
          __dst[9] = v292;
          __dst[2] = v285;
          __dst[3] = v286;
          __dst[4] = v287;
          __dst[5] = v288;
          v112 = v283;
          v113 = v284;
          goto LABEL_166;
        }

        __src[7] = v289;
        __src[8] = v290;
        __src[9] = v291;
        __src[10] = v292;
        __src[3] = v285;
        __src[4] = v286;
        __src[5] = v287;
        __src[6] = v288;
        v176 = v283;
        v177 = v284;
LABEL_168:
        __src[1] = v176;
        __src[2] = v177;
        LOBYTE(__src[11]) = 1;
        *&__src[0] = v127;
        *(&__src[11] + 1) = v58;
        LOBYTE(__src[12]) = 0;
        *&__src[13] = 0;
        *(&__src[12] + 1) = 0;
        *(&__src[13] + 1) = v20;
        __src[14] = 0uLL;
        LOBYTE(__src[15]) = 1;
        LOBYTE(__src[16]) = 1;
        *(&__src[15] + 1) = 0;
        *(&__src[16] + 1) = 0;
        LOBYTE(__src[17]) = 1;
        *(&__src[20] + 8) = v318;
        *(&__src[21] + 8) = v319;
        *(&__src[18] + 8) = v316;
        *(&__src[19] + 8) = v317;
        *(&__src[17] + 8) = v315;
        *(&__src[22] + 1) = v206;
        v213(__src);
        goto LABEL_169;
      }

      v90 = makeEntity(for:)(v86);
    }

    v91 = v90;
    goto LABEL_74;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static AnimationLogger.logger);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&__dst[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, __dst);
    _os_log_impl(&dword_1C1358000, v32, v33, "%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1C6902A30](v35, -1, -1);
    MEMORY[0x1C6902A30](v34, -1, -1);
  }

  return 1;
}

uint64_t specialized dispatchEvent #1 <A>(sourceObject:payloadRef:) in static EntityAction.__subscribe(to:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
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
          if (a4 != 2)
          {
            goto LABEL_147;
          }

          v15 = *a2;
          v14 = *(a2 + 8);
          v17 = *(a2 + 24);
          v16 = *(a2 + 32);
          v18 = *(a2 + 40);
          v6.i32[0] = *(a2 + 56);
          v175 = *(a2 + 64);
          v178 = *(a2 + 48);
          v171 = *(a2 + 72);
          v19 = *(a2 + 88);
          v7 = *(a2 + 96);
          v168 = *(a2 + 104);
          v180 = *(a2 + 80);
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v20 = swift_dynamicCastClassUnconditional();
            goto LABEL_8;
          }

          goto LABEL_75;
        }

        v51 = *a2;
        v50 = *(a2 + 8);
        v53 = *(a2 + 24);
        v52 = *(a2 + 32);
        v54 = *(a2 + 40);
        v55 = *(a2 + 64);
        v56 = *(a2 + 72);
        v169 = *(a2 + 80);
        v173 = *(a2 + 88);
        v177 = *(a2 + 56);
        v179 = *(a2 + 96);
        v180 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v52, 0, v54, v79, v80, &v200);

            if (!v55)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v82 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v55 = v82;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              v133 = specialized static Entity.entityInfoType(_:)();
              if (!v133)
              {
                v82 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v55 = (*(v133 + 232))();
              v134 = *(v55 + 16);

              MEMORY[0x1C68F9740](v134, 0);
              *(v55 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v55);
            }

            else
            {
              v55 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(v195);
            v135 = v198 | (v199 << 32);
            if ((v135 & 0xFF0000000000) != 0x20000000000)
            {
              v136 = v195[0];
              v167 = v196;
              v182 = a5;
              v137 = v197;
              v138 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR);
              v186 = v167;
              *&v189[8] = vcvtq_f64_f32(v56);
              v139 = v200;
              *&v193[24] = v201;
              v140 = v203;
              *&v193[40] = v202;
              LODWORD(v185) = v136;
              v187 = v137;
              LODWORD(v188) = v135;
              BYTE4(v188) = BYTE4(v135);
              BYTE5(v188) = BYTE5(v135) & 1;
              BYTE6(v188) = v138 & 1;
              *&v184 = v76;
              *(&v188 + 1) = v55;
              v189[0] = v169;
              *&v189[24] = v13;
              *&v190 = v177;
              *(&v190 + 1) = 0xBFF0000000000000;
              LOBYTE(v191) = 0;
              v141 = v173;
LABEL_139:
              *(&v191 + 1) = v141;
              LOBYTE(v192) = 0;
              v148 = v179;
              goto LABEL_140;
            }

            goto LABEL_146;
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
          goto LABEL_147;
        }

        v37 = *a2;
        v36 = *(a2 + 8);
        v39 = *(a2 + 24);
        v38 = *(a2 + 32);
        v40 = *(a2 + 40);
        v41 = *(a2 + 56);
        v42 = *(a2 + 64);
        v172 = *(a2 + 72);
        v176 = *(a2 + 80);
        v179 = *(a2 + 88);
        v180 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v40, v124, v125, &v200);

            if (!v41)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v126 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v127 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v41 = v127;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v155 = specialized static Entity.entityInfoType(_:)();
              if (!v155)
              {
                v127 = makeEntity(for:)(v126);
                goto LABEL_99;
              }

              v41 = (*(v155 + 232))();
              v156 = *(v41 + 16);

              MEMORY[0x1C68F9740](v156, 0);
              *(v41 + 16) = v126;
              MEMORY[0x1C68F9740](v126, v41);
            }

            else
            {
              v41 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(v195);
            v157 = v198 | (v199 << 32);
            if ((v157 & 0xFF0000000000) != 0x20000000000)
            {
              v158 = v195[0];
              v170 = v196;
              v159 = v197;
              v182 = a5;
              v160 = *(&v197 + 1);
              v161 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR);
              v186 = v170;
              *&v189[8] = vcvtq_f64_f32(v42);
              v139 = v200;
              *&v193[24] = v201;
              v140 = v203;
              *&v193[40] = v202;
              LODWORD(v185) = v158;
              *&v187 = v159;
              *(&v187 + 1) = v160;
              LODWORD(v188) = v157;
              BYTE4(v188) = BYTE4(v157);
              BYTE5(v188) = BYTE5(v157) & 1;
              BYTE6(v188) = v161 & 1;
              *&v184 = v121;
              *(&v188 + 1) = v41;
              v189[0] = v172;
              v190 = 0uLL;
              *&v189[24] = v13;
              LOBYTE(v191) = 1;
              v141 = v176;
              goto LABEL_139;
            }

LABEL_146:

LABEL_147:

            return 0;
          }

          v43 = makeEntity(for:)(v37);
        }

        v44 = v43;
        goto LABEL_95;
      }

      v65 = *a2;
      v59 = *(a2 + 8);
      v66 = *(a2 + 24);
      v61 = *(a2 + 32);
      v67 = *(a2 + 40);
      v33 = *(a2 + 64);
      v178 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v175) = *(a2 + 80);
      v180 = *(a2 + 48);
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
        specialized ActionEventData.init(eventID:coreData:typeName:)(v61, 0, v67, v94, v95, &v200);

        if (!v33)
        {
          goto LABEL_121;
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
            goto LABEL_121;
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

          v142 = specialized static Entity.entityInfoType(_:)();
          if (!v142)
          {
            v97 = makeEntity(for:)(v96);
            goto LABEL_66;
          }

          v33 = (*(v142 + 232))();
          v143 = *(v33 + 16);

          MEMORY[0x1C68F9740](v143, 0);
          *(v33 + 16) = v96;
          MEMORY[0x1C68F9740](v96, v33);
        }

        else
        {
          v33 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(v195);
        v144 = v198 | (v199 << 32);
        if ((v144 & 0xFF0000000000) != 0x20000000000)
        {
          v145 = v195[0];
          v174 = v196;
          v182 = a5;
          v146 = v197;
          v147 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR);
          v186 = v174;
          *&v189[8] = vcvtq_f64_f32(v6);
          v139 = v200;
          *&v193[24] = v201;
          v140 = v203;
          *&v193[40] = v202;
          LODWORD(v185) = v145;
          v187 = v146;
          LODWORD(v188) = v144;
          BYTE4(v188) = BYTE4(v144);
          BYTE5(v188) = BYTE5(v144) & 1;
          BYTE6(v188) = v147 & 1;
          *&v184 = v91;
          *(&v188 + 1) = v33;
          v189[0] = v175;
          *&v189[24] = v13;
          *&v190 = v178;
          v148 = 0xBFF0000000000000;
          *(&v190 + 1) = 0xBFF0000000000000;
          LOBYTE(v191) = 0;
          *(&v191 + 1) = 0xBFF0000000000000;
          LOBYTE(v192) = 0;
LABEL_140:
          *(&v192 + 1) = v148;
          v193[0] = 0;
          *&v193[56] = v140;
          *&v193[72] = v204;
          *&v193[8] = v139;
          goto LABEL_141;
        }

        goto LABEL_146;
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
          goto LABEL_147;
        }

        v29 = *a2;
        v28 = *(a2 + 8);
        v30 = *(a2 + 24);
        v31 = *(a2 + 40);
        v32 = *(a2 + 48);
        v33 = *(a2 + 56);
        v181 = *(a2 + 32);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v31, v116, v117, &v200);

            if (v33)
            {
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

                goto LABEL_129;
              }

              goto LABEL_91;
            }

            goto LABEL_131;
          }

          v34 = makeEntity(for:)(v29);
        }

        v35 = v34;
        goto LABEL_86;
      }

      v60 = *a2;
      v59 = *(a2 + 8);
      v61 = *(a2 + 24);
      v62 = *(a2 + 40);
      v32 = *(a2 + 48);
      v33 = *(a2 + 56);
      v181 = *(a2 + 32);
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
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v62, v87, v88, &v200);

          if (v33)
          {
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
                goto LABEL_131;
              }

              if (REEntityIsBeingDestroyed())
              {
                __break(1u);
                goto LABEL_59;
              }

LABEL_129:
              v152 = specialized static Entity.entityInfoType(_:)();
              if (v152)
              {
                v33 = (*(v152 + 232))();
                v153 = *(v33 + 16);

                MEMORY[0x1C68F9740](v153, 0);
                *(v33 + 16) = v67;
                MEMORY[0x1C68F9740](v67, v33);

                goto LABEL_131;
              }

              v118 = makeEntity(for:)(v67);
              goto LABEL_90;
            }

LABEL_91:
            v33 = 0;
          }

LABEL_131:
          specialized ActionEventData.action<A>()(v195);
          v154 = v198 | (v199 << 32);
          if ((v154 & 0xFF0000000000) == 0x20000000000)
          {
            goto LABEL_146;
          }

          v187 = v197;
          *&v193[24] = v201;
          *&v193[40] = v202;
          *&v193[56] = v203;
          *&v193[72] = v204;
          LODWORD(v185) = v195[0];
          v186 = v196;
          LODWORD(v188) = v198;
          BYTE4(v188) = BYTE4(v154);
          BYTE5(v188) = BYTE5(v154) & 1;
          BYTE6(v188) = 1;
          *&v184 = v65;
          *(&v188 + 1) = v33;
          v189[0] = 0;
          *&v189[8] = 0;
          *&v189[16] = 0;
          v190 = 0uLL;
          *&v189[24] = v13;
          LOBYTE(v191) = 1;
          *(&v191 + 1) = v181;
          LOBYTE(v192) = 0;
          *(&v192 + 1) = 0;
          v193[0] = 1;
          *&v193[8] = v200;
          *&v193[88] = v32;
          goto LABEL_149;
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
        goto LABEL_147;
      }

      v46 = *a2;
      v45 = *(a2 + 8);
      v47 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v183 = *(a2 + 32);
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
          if (v16)
          {
            if (REBindPointBoundComponent())
            {
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

              goto LABEL_143;
            }

            goto LABEL_108;
          }

          goto LABEL_145;
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
    v183 = *(a2 + 32);
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
        if (v16)
        {
          if (REBindPointBoundComponent())
          {
            v14 = a6;
            v102 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_106:
              type metadata accessor for Entity();
              v132 = swift_dynamicCastClassUnconditional();
LABEL_107:
              v16 = v132;
              goto LABEL_145;
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
                specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v108, v109, &v200);

                if (!v19)
                {
                  goto LABEL_126;
                }

                if (!REBindPointBoundComponent())
                {
                  v19 = 0;
                  goto LABEL_126;
                }

                v110 = REComponentGetEntity();
                if (REEntityGetSwiftObject())
                {
                  type metadata accessor for Entity();
                  v111 = swift_dynamicCastClassUnconditional();
LABEL_82:
                  v19 = v111;
                  goto LABEL_126;
                }

                result = REEntityIsBeingDestroyed();
                if ((result & 1) == 0)
                {
                  v149 = specialized static Entity.entityInfoType(_:)();
                  if (!v149)
                  {
                    v111 = makeEntity(for:)(v110);
                    goto LABEL_82;
                  }

                  v19 = (*(v149 + 232))();
                  v150 = *(v19 + 16);

                  MEMORY[0x1C68F9740](v150, 0);
                  *(v19 + 16) = v110;
                  MEMORY[0x1C68F9740](v110, v19);

LABEL_126:
                  specialized ActionEventData.action<A>()(v195);
                  v151 = v198 | (v199 << 32);
                  if ((v151 & 0xFF0000000000) != 0x20000000000)
                  {
                    v182 = a5;
                    LODWORD(v185) = v195[0];
                    v186 = v196;
                    v187 = v197;
                    LODWORD(v188) = v198;
                    BYTE4(v188) = BYTE4(v151);
                    BYTE5(v188) = BYTE5(v151) & 1;
                    BYTE6(v188) = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA04SpinD0VGMR) & 1;
                    *&v184 = v105;
                    *(&v188 + 1) = v19;
                    v189[0] = v168;
                    *&v189[8] = vcvtq_f64_f32(v7);
                    *&v189[24] = v13;
                    *&v190 = v171;
                    *(&v190 + 1) = v6.f32[0];
                    LOBYTE(v191) = 0;
                    *(&v191 + 1) = v178;
                    LOBYTE(v192) = 0;
                    *(&v192 + 1) = v175;
                    v193[0] = 0;
                    *&v193[24] = v201;
                    *&v193[40] = v202;
                    *&v193[56] = v203;
                    *&v193[72] = v204;
                    *&v193[8] = v200;
LABEL_141:
                    *&v193[88] = v180;
                    v182(&v184);
LABEL_150:

                    v194[12] = *&v193[32];
                    v194[13] = *&v193[48];
                    v194[14] = *&v193[64];
                    v194[15] = *&v193[80];
                    v194[8] = v191;
                    v194[9] = v192;
                    v194[10] = *v193;
                    v194[11] = *&v193[16];
                    v194[4] = v188;
                    v194[5] = *v189;
                    v194[6] = *&v189[16];
                    v194[7] = v190;
                    v194[0] = v184;
                    v194[1] = v185;
                    v194[2] = v186;
                    v194[3] = v187;
                    outlined destroy of BodyTrackingComponent?(v194, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMd, &_s17RealityFoundation11ActionEventVyAA04SpinC0VGMR);
                    return 0;
                  }

                  goto LABEL_146;
                }

                goto LABEL_176;
              }

              goto LABEL_170;
            }

LABEL_143:
            v162 = specialized static Entity.entityInfoType(_:)();
            if (v162)
            {
              v16 = (*(v162 + 232))();
              v163 = *(v16 + 16);

              MEMORY[0x1C68F9740](v163, 0);
              *(v16 + 16) = v102;
              MEMORY[0x1C68F9740](v102, v16);

              goto LABEL_145;
            }

            v132 = makeEntity(for:)(v102);
            goto LABEL_107;
          }

LABEL_108:
          v16 = 0;
        }

LABEL_145:
        v164 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v164, v165, &v200);

        specialized ActionEventData.action<A>()(v195);
        v166 = v198 | (v199 << 32);
        if ((v166 & 0xFF0000000000) == 0x20000000000)
        {
          goto LABEL_146;
        }

        v187 = v197;
        *&v193[24] = v201;
        *&v193[40] = v202;
        *&v193[56] = v203;
        *&v193[72] = v204;
        LODWORD(v185) = v195[0];
        v186 = v196;
        LODWORD(v188) = v198;
        BYTE4(v188) = BYTE4(v166);
        BYTE5(v188) = BYTE5(v166) & 1;
        BYTE6(v188) = 1;
        *&v184 = v18;
        *(&v188 + 1) = v16;
        v189[0] = 0;
        *&v189[8] = 0;
        *&v189[16] = 0;
        v190 = 0uLL;
        *&v189[24] = v13;
        LOBYTE(v191) = 1;
        *(&v191 + 1) = 0;
        LOBYTE(v192) = 1;
        *(&v192 + 1) = 0;
        v193[0] = 1;
        *&v193[8] = v200;
        *&v193[88] = v183;
LABEL_149:
        a5(&v184);
        goto LABEL_150;
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
    *&v194[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v194);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a4 <= 15)
    {
      if (a4 <= 3)
      {
        if (a4 != 1)
        {
          if (a4 == 2)
          {
            v13 = Strong;
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v189 = *(a2 + 64);
            v192 = *(a2 + 48);
            v185 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v181 = *(a2 + 104);
            v194 = *(a2 + 80);
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

        v52 = Strong;
        v54 = *a2;
        v53 = *(a2 + 8);
        v56 = *(a2 + 24);
        v55 = *(a2 + 32);
        v57 = *(a2 + 40);
        v58 = *(a2 + 64);
        v59 = *(a2 + 72);
        v182 = *(a2 + 80);
        v187 = *(a2 + 88);
        v191 = *(a2 + 56);
        v193 = *(a2 + 96);
        v194 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v60 = swift_dynamicCastClassUnconditional();
          goto LABEL_32;
        }

        result = REEntityIsBeingDestroyed();
        if ((result & 1) == 0)
        {
          v77 = specialized static Entity.entityInfoType(_:)();
          if (v77)
          {
            v61 = (*(v77 + 232))();
            v78 = *(v61 + 16);

            MEMORY[0x1C68F9740](v78, 0);
            *(v61 + 16) = v54;
            MEMORY[0x1C68F9740](v54, v61);

LABEL_46:
            type metadata accessor for AnimationPlaybackController();
            v79 = swift_allocObject();
            *(v79 + 40) = 0;
            swift_weakInit();
            *(v79 + 16) = v53;
            swift_weakAssign();
            v80 = *(v61 + 16);

            *(v79 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v61 + 16));
            v81 = Hasher._finalize()();

            *(v79 + 24) = v81;
            v82 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v55, 0, v57, v82, v83, &v213);

            if (!v58)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v85 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v58 = v85;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              v136 = specialized static Entity.entityInfoType(_:)();
              if (!v136)
              {
                v85 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v58 = (*(v136 + 232))();
              v137 = *(v58 + 16);

              MEMORY[0x1C68F9740](v137, 0);
              *(v58 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v58);
            }

            else
            {
              v58 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v209);
            v138 = v210;
            if (v210 != 0xFF)
            {
              v139 = *(&v209 + 1);
              v140 = v212;
              v141 = HIDWORD(v210);
              v178 = v211;
              v179 = v209;
              v196 = a5;
              v142 = *(&v211 + 1);
              v143 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
              *&v203[8] = vcvtq_f64_f32(v59);
              v144 = v213;
              *&v207[24] = v214;
              *&v207[40] = v215;
              *&v207[56] = v216;
              *&v207[72] = v217;
              LOBYTE(v200) = v138 & 1;
              DWORD1(v200) = v141;
              *&v201 = v178;
              *(&v201 + 1) = v142;
              LOWORD(v202) = v140 & 0x101;
              BYTE2(v202) = v143 & 1;
              *&v199 = v179;
              *(&v199 + 1) = v139;
              *&v198 = v79;
              *(&v202 + 1) = v58;
              v203[0] = v182;
              *&v203[24] = v52;
              *&v204 = v191;
              *(&v204 + 1) = 0xBFF0000000000000;
              LOBYTE(v205) = 0;
              v145 = v187;
LABEL_139:
              *(&v205 + 1) = v145;
              LOBYTE(v206) = 0;
              v153 = v193;
              goto LABEL_140;
            }

            goto LABEL_137;
          }

          v60 = makeEntity(for:)(v54);
LABEL_32:
          v61 = v60;
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

        v37 = Strong;
        v39 = *a2;
        v38 = *(a2 + 8);
        v41 = *(a2 + 24);
        v40 = *(a2 + 32);
        v42 = *(a2 + 40);
        v43 = *(a2 + 56);
        v44 = *(a2 + 64);
        v186 = *(a2 + 72);
        v190 = *(a2 + 80);
        v193 = *(a2 + 88);
        v194 = *(a2 + 48);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v45 = swift_dynamicCastClassUnconditional();
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

          v122 = specialized static Entity.entityInfoType(_:)();
          if (v122)
          {
            v46 = (*(v122 + 232))();
            v123 = *(v46 + 16);

            MEMORY[0x1C68F9740](v123, 0);
            *(v46 + 16) = v39;
            MEMORY[0x1C68F9740](v39, v46);

LABEL_95:
            type metadata accessor for AnimationPlaybackController();
            v124 = swift_allocObject();
            *(v124 + 40) = 0;
            swift_weakInit();
            *(v124 + 16) = v38;
            swift_weakAssign();
            v125 = *(v46 + 16);

            *(v124 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v46 + 16));
            v126 = Hasher._finalize()();

            *(v124 + 24) = v126;
            v127 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(v40, 0, v42, v127, v128, &v213);

            if (!v43)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v129 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v130 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v43 = v130;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v164 = specialized static Entity.entityInfoType(_:)();
              if (!v164)
              {
                v130 = makeEntity(for:)(v129);
                goto LABEL_99;
              }

              v43 = (*(v164 + 232))();
              v165 = *(v43 + 16);

              MEMORY[0x1C68F9740](v165, 0);
              *(v43 + 16) = v129;
              MEMORY[0x1C68F9740](v129, v43);
            }

            else
            {
              v43 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v209);
            v138 = v210;
            if (v210 != 0xFF)
            {
              v196 = a5;
              v169 = *(&v209 + 1);
              v170 = v212;
              v171 = HIDWORD(v210);
              v180 = v211;
              v184 = v209;
              v172 = *(&v211 + 1);
              v173 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
              *&v203[8] = vcvtq_f64_f32(v44);
              v144 = v213;
              *&v207[24] = v214;
              *&v207[40] = v215;
              *&v207[56] = v216;
              *&v207[72] = v217;
              LOBYTE(v200) = v138 & 1;
              DWORD1(v200) = v171;
              *&v201 = v180;
              *(&v201 + 1) = v172;
              LOWORD(v202) = v170 & 0x101;
              BYTE2(v202) = v173 & 1;
              *&v199 = v184;
              *(&v199 + 1) = v169;
              *&v198 = v124;
              *(&v202 + 1) = v43;
              v203[0] = v186;
              v204 = 0uLL;
              *&v203[24] = v37;
              LOBYTE(v205) = 1;
              v145 = v190;
              goto LABEL_139;
            }

LABEL_137:

            v167 = *(&v209 + 1);
            v166 = v209;
            v168 = v138;
LABEL_147:
            outlined consume of OrbitEntityAction?(v166, v167, v168);
            return 0;
          }

          v45 = makeEntity(for:)(v39);
        }

        v46 = v45;
        goto LABEL_95;
      }

      v28 = Strong;
      v68 = *a2;
      v62 = *(a2 + 8);
      v69 = *(a2 + 24);
      v64 = *(a2 + 32);
      v70 = *(a2 + 40);
      v34 = *(a2 + 64);
      v192 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v189) = *(a2 + 80);
      v194 = *(a2 + 48);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v71 = swift_dynamicCastClassUnconditional();
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

      v92 = specialized static Entity.entityInfoType(_:)();
      if (v92)
      {
        v72 = (*(v92 + 232))();
        v93 = *(v72 + 16);

        MEMORY[0x1C68F9740](v93, 0);
        *(v72 + 16) = v68;
        MEMORY[0x1C68F9740](v68, v72);

LABEL_62:
        type metadata accessor for AnimationPlaybackController();
        v94 = swift_allocObject();
        *(v94 + 40) = 0;
        swift_weakInit();
        *(v94 + 16) = v62;
        swift_weakAssign();
        v95 = *(v72 + 16);

        *(v94 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v72 + 16));
        v96 = Hasher._finalize()();

        *(v94 + 24) = v96;
        v97 = String.init(cString:)();
        specialized ActionEventData.init(eventID:coreData:typeName:)(v64, 0, v70, v97, v98, &v213);

        if (!v34)
        {
          goto LABEL_121;
        }

        if (REBindPointBoundComponent())
        {
          v99 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
            type metadata accessor for Entity();
            v100 = swift_dynamicCastClassUnconditional();
LABEL_66:
            v34 = v100;
            goto LABEL_121;
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

          v146 = specialized static Entity.entityInfoType(_:)();
          if (!v146)
          {
            v100 = makeEntity(for:)(v99);
            goto LABEL_66;
          }

          v34 = (*(v146 + 232))();
          v147 = *(v34 + 16);

          MEMORY[0x1C68F9740](v147, 0);
          *(v34 + 16) = v99;
          MEMORY[0x1C68F9740](v99, v34);
        }

        else
        {
          v34 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v209);
        v138 = v210;
        if (v210 != 0xFF)
        {
          v148 = *(&v209 + 1);
          v149 = v212;
          v150 = HIDWORD(v210);
          v183 = v211;
          v188 = v209;
          v196 = a5;
          v151 = *(&v211 + 1);
          v152 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
          *&v203[8] = vcvtq_f64_f32(v6);
          v144 = v213;
          *&v207[24] = v214;
          *&v207[40] = v215;
          *&v207[56] = v216;
          *&v207[72] = v217;
          LOBYTE(v200) = v138 & 1;
          DWORD1(v200) = v150;
          *&v201 = v183;
          *(&v201 + 1) = v151;
          LOWORD(v202) = v149 & 0x101;
          BYTE2(v202) = v152 & 1;
          *&v199 = v188;
          *(&v199 + 1) = v148;
          *&v198 = v94;
          *(&v202 + 1) = v34;
          v203[0] = v189;
          *&v203[24] = v28;
          *&v204 = v192;
          v153 = 0xBFF0000000000000;
          *(&v204 + 1) = 0xBFF0000000000000;
          LOBYTE(v205) = 0;
          *(&v205 + 1) = 0xBFF0000000000000;
          LOBYTE(v206) = 0;
LABEL_140:
          *(&v206 + 1) = v153;
          v207[0] = 0;
          goto LABEL_141;
        }

        goto LABEL_137;
      }

      v71 = makeEntity(for:)(v68);
LABEL_38:
      v72 = v71;
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

        v28 = Strong;
        v30 = *a2;
        v29 = *(a2 + 8);
        v31 = *(a2 + 24);
        v32 = *(a2 + 40);
        v33 = *(a2 + 48);
        v34 = *(a2 + 56);
        v195 = *(a2 + 32);
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v35 = swift_dynamicCastClassUnconditional();
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

          v115 = specialized static Entity.entityInfoType(_:)();
          if (v115)
          {
            v36 = (*(v115 + 232))();
            v116 = *(v36 + 16);

            MEMORY[0x1C68F9740](v116, 0);
            *(v36 + 16) = v30;
            MEMORY[0x1C68F9740](v30, v36);

LABEL_86:
            type metadata accessor for AnimationPlaybackController();
            v68 = swift_allocObject();
            *(v68 + 40) = 0;
            swift_weakInit();
            *(v68 + 16) = v29;
            swift_weakAssign();
            v117 = *(v36 + 16);

            *(v68 + 32) = REEntityGetLocalId();
            Hasher.init(_seed:)();
            MEMORY[0x1C68F4C10](*(v36 + 16));
            v118 = Hasher._finalize()();

            *(v68 + 24) = v118;
            v119 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v32, v119, v120, &v213);

            if (!v34)
            {
              goto LABEL_131;
            }

            if (REBindPointBoundComponent())
            {
              v70 = REComponentGetEntity();
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

LABEL_129:
              v161 = specialized static Entity.entityInfoType(_:)();
              if (!v161)
              {
                v121 = makeEntity(for:)(v70);
                goto LABEL_90;
              }

              v34 = (*(v161 + 232))();
              v162 = *(v34 + 16);

              MEMORY[0x1C68F9740](v162, 0);
              *(v34 + 16) = v70;
              MEMORY[0x1C68F9740](v70, v34);

LABEL_131:
              specialized ActionEventData.action<A>()(&v209);
              v163 = v210;
              if (v210 != 0xFF)
              {
                v199 = v209;
                *&v207[24] = v214;
                *&v207[40] = v215;
                *&v207[56] = v216;
                *&v207[72] = v217;
                LOBYTE(v200) = v210 & 1;
                DWORD1(v200) = HIDWORD(v210);
                v201 = v211;
                LOWORD(v202) = v212 & 0x101;
                BYTE2(v202) = 1;
                *&v198 = v68;
                *(&v202 + 1) = v34;
                v203[0] = 0;
                *&v203[8] = 0;
                *&v203[16] = 0;
                v204 = 0uLL;
                *&v203[24] = v28;
                LOBYTE(v205) = 1;
                *(&v205 + 1) = v195;
                LOBYTE(v206) = 0;
                *(&v206 + 1) = 0;
                v207[0] = 1;
                *&v207[8] = v213;
                *&v207[88] = v33;
LABEL_149:
                a5(&v198);
                goto LABEL_150;
              }

              goto LABEL_146;
            }

            goto LABEL_91;
          }

          v35 = makeEntity(for:)(v30);
        }

        v36 = v35;
        goto LABEL_86;
      }

      v28 = Strong;
      v63 = *a2;
      v62 = *(a2 + 8);
      v64 = *(a2 + 24);
      v65 = *(a2 + 40);
      v33 = *(a2 + 48);
      v34 = *(a2 + 56);
      v195 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v66 = swift_dynamicCastClassUnconditional();
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

        v86 = specialized static Entity.entityInfoType(_:)();
        if (v86)
        {
          v67 = (*(v86 + 232))();
          v87 = *(v67 + 16);

          MEMORY[0x1C68F9740](v87, 0);
          *(v67 + 16) = v63;
          MEMORY[0x1C68F9740](v63, v67);

LABEL_54:
          type metadata accessor for AnimationPlaybackController();
          v68 = swift_allocObject();
          *(v68 + 40) = 0;
          swift_weakInit();
          *(v68 + 16) = v62;
          swift_weakAssign();
          v88 = *(v67 + 16);

          *(v68 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v67 + 16));
          v89 = Hasher._finalize()();

          *(v68 + 24) = v89;
          v90 = String.init(cString:)();
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v65, v90, v91, &v213);

          if (!v34)
          {
            goto LABEL_131;
          }

          if (REBindPointBoundComponent())
          {
            v70 = REComponentGetEntity();
            if (REEntityGetSwiftObject())
            {
LABEL_89:
              type metadata accessor for Entity();
              v121 = swift_dynamicCastClassUnconditional();
LABEL_90:
              v34 = v121;
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
          v34 = 0;
          goto LABEL_131;
        }

        v66 = makeEntity(for:)(v63);
      }

      v67 = v66;
      goto LABEL_54;
    }

    if (a4 != 64)
    {
      if (a4 != 128)
      {
        goto LABEL_42;
      }

      v13 = Strong;
      v48 = *a2;
      v47 = *(a2 + 8);
      v49 = *(a2 + 16);
      v15 = *(a2 + 24);
      v16 = *(a2 + 40);
      v197 = *(a2 + 32);
      if (REEntityGetSwiftObject())
      {
        type metadata accessor for Entity();
        v50 = swift_dynamicCastClassUnconditional();
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

        v131 = specialized static Entity.entityInfoType(_:)();
        if (v131)
        {
          v51 = (*(v131 + 232))();
          v132 = *(v51 + 16);

          MEMORY[0x1C68F9740](v132, 0);
          *(v51 + 16) = v48;
          MEMORY[0x1C68F9740](v48, v51);

LABEL_103:
          type metadata accessor for AnimationPlaybackController();
          v18 = swift_allocObject();
          *(v18 + 40) = 0;
          swift_weakInit();
          *(v18 + 16) = v47;
          swift_weakAssign();
          v133 = *(v51 + 16);

          *(v18 + 32) = REEntityGetLocalId();
          Hasher.init(_seed:)();
          MEMORY[0x1C68F4C10](*(v51 + 16));
          v134 = Hasher._finalize()();

          *(v18 + 24) = v134;
          if (!v16)
          {
            goto LABEL_145;
          }

          if (REBindPointBoundComponent())
          {
            v105 = REComponentGetEntity();
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

LABEL_143:
            v174 = specialized static Entity.entityInfoType(_:)();
            if (!v174)
            {
              v135 = makeEntity(for:)(v105);
              goto LABEL_107;
            }

            v16 = (*(v174 + 232))();
            v175 = *(v16 + 16);

            MEMORY[0x1C68F9740](v175, 0);
            *(v16 + 16) = v105;
            MEMORY[0x1C68F9740](v105, v16);

LABEL_145:
            v176 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v176, v177, &v213);

            specialized ActionEventData.action<A>()(&v209);
            v163 = v210;
            if (v210 != 0xFF)
            {
              v199 = v209;
              *&v207[24] = v214;
              *&v207[40] = v215;
              *&v207[56] = v216;
              *&v207[72] = v217;
              LOBYTE(v200) = v210 & 1;
              DWORD1(v200) = HIDWORD(v210);
              v201 = v211;
              LOWORD(v202) = v212 & 0x101;
              BYTE2(v202) = 1;
              *&v198 = v18;
              *(&v202 + 1) = v16;
              v203[0] = 0;
              *&v203[8] = 0;
              *&v203[16] = 0;
              v204 = 0uLL;
              *&v203[24] = v13;
              LOBYTE(v205) = 1;
              *(&v205 + 1) = 0;
              LOBYTE(v206) = 1;
              *(&v206 + 1) = 0;
              v207[0] = 1;
              *&v207[8] = v213;
              *&v207[88] = v197;
              goto LABEL_149;
            }

LABEL_146:

            v167 = *(&v209 + 1);
            v166 = v209;
            v168 = v163;
            goto LABEL_147;
          }

          goto LABEL_108;
        }

        v50 = makeEntity(for:)(v48);
      }

      v51 = v50;
      goto LABEL_103;
    }

    v13 = Strong;
    v74 = *a2;
    v73 = *(a2 + 8);
    v19 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v197 = *(a2 + 32);
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v75 = swift_dynamicCastClassUnconditional();
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

      v101 = specialized static Entity.entityInfoType(_:)();
      if (v101)
      {
        v76 = (*(v101 + 232))();
        v102 = *(v76 + 16);

        MEMORY[0x1C68F9740](v102, 0);
        *(v76 + 16) = v74;
        MEMORY[0x1C68F9740](v74, v76);

LABEL_70:
        type metadata accessor for AnimationPlaybackController();
        v18 = swift_allocObject();
        *(v18 + 40) = 0;
        swift_weakInit();
        *(v18 + 16) = v73;
        swift_weakAssign();
        v103 = *(v76 + 16);

        *(v18 + 32) = REEntityGetLocalId();
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v76 + 16));
        v104 = Hasher._finalize()();

        *(v18 + 24) = v104;
        if (!v16)
        {
          goto LABEL_145;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a6;
          v105 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v135 = swift_dynamicCastClassUnconditional();
LABEL_107:
            v16 = v135;
            goto LABEL_145;
          }

          if (REEntityIsBeingDestroyed())
          {
            __break(1u);
LABEL_75:
            result = REEntityIsBeingDestroyed();
            if ((result & 1) == 0)
            {
              v106 = specialized static Entity.entityInfoType(_:)();
              if (v106)
              {
                v21 = (*(v106 + 232))();
                v107 = *(v21 + 16);

                MEMORY[0x1C68F9740](v107, 0);
                *(v21 + 16) = v15;
                MEMORY[0x1C68F9740](v15, v21);

                goto LABEL_78;
              }

              v20 = makeEntity(for:)(v15);
LABEL_8:
              v21 = v20;
LABEL_78:
              type metadata accessor for AnimationPlaybackController();
              v108 = swift_allocObject();
              *(v108 + 40) = 0;
              swift_weakInit();
              *(v108 + 16) = v14;
              swift_weakAssign();
              v109 = *(v21 + 16);

              *(v108 + 32) = REEntityGetLocalId();
              Hasher.init(_seed:)();
              MEMORY[0x1C68F4C10](*(v21 + 16));
              v110 = Hasher._finalize()();

              *(v108 + 24) = v110;
              v111 = String.init(cString:)();
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v111, v112, &v213);

              if (!v19)
              {
                goto LABEL_126;
              }

              if (!REBindPointBoundComponent())
              {
                v19 = 0;
                goto LABEL_126;
              }

              v113 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v114 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v19 = v114;
                goto LABEL_126;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v154 = specialized static Entity.entityInfoType(_:)();
                if (!v154)
                {
                  v114 = makeEntity(for:)(v113);
                  goto LABEL_82;
                }

                v19 = (*(v154 + 232))();
                v155 = *(v19 + 16);

                MEMORY[0x1C68F9740](v155, 0);
                *(v19 + 16) = v113;
                MEMORY[0x1C68F9740](v113, v19);

LABEL_126:
                specialized ActionEventData.action<A>()(&v209);
                v138 = v210;
                if (v210 != 0xFF)
                {
                  v156 = v209;
                  v157 = v212;
                  v158 = HIDWORD(v210);
                  v196 = a5;
                  v159 = v211;
                  v160 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA05OrbitcD0VGMR);
                  *&v203[8] = vcvtq_f64_f32(v7);
                  *(&v204 + 1) = v6.f32[0];
                  v144 = v213;
                  *&v207[24] = v214;
                  *&v207[40] = v215;
                  LOBYTE(v200) = v138 & 1;
                  DWORD1(v200) = v158;
                  v201 = v159;
                  LOWORD(v202) = v157 & 0x101;
                  BYTE2(v202) = v160 & 1;
                  v199 = v156;
                  *&v198 = v108;
                  *(&v202 + 1) = v19;
                  v203[0] = v181;
                  *&v203[24] = v13;
                  *&v204 = v185;
                  LOBYTE(v205) = 0;
                  *(&v205 + 1) = v192;
                  LOBYTE(v206) = 0;
                  *(&v206 + 1) = v189;
                  v207[0] = 0;
                  *&v207[56] = v216;
                  *&v207[72] = v217;
LABEL_141:
                  *&v207[8] = v144;
                  *&v207[88] = v194;
                  v196(&v198);
LABEL_150:

                  v208[12] = *&v207[32];
                  v208[13] = *&v207[48];
                  v208[14] = *&v207[64];
                  v208[15] = *&v207[80];
                  v208[8] = v205;
                  v208[9] = v206;
                  v208[10] = *v207;
                  v208[11] = *&v207[16];
                  v208[4] = v202;
                  v208[5] = *v203;
                  v208[6] = *&v203[16];
                  v208[7] = v204;
                  v208[0] = v198;
                  v208[1] = v199;
                  v208[2] = v200;
                  v208[3] = v201;
                  outlined destroy of BodyTrackingComponent?(v208, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMd, &_s17RealityFoundation11ActionEventVyAA011OrbitEntityC0VGMR);
                  return 0;
                }

                goto LABEL_137;
              }

              goto LABEL_176;
            }

            goto LABEL_170;
          }

          goto LABEL_143;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_145;
      }

      v75 = makeEntity(for:)(v74);
    }

    v76 = v75;
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
    *&v208[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v208);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}

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
            v15 = *a2;
            v14 = *(a2 + 8);
            v17 = *(a2 + 24);
            v16 = *(a2 + 32);
            v18 = *(a2 + 40);
            v6.i32[0] = *(a2 + 56);
            v176 = *(a2 + 64);
            v179 = *(a2 + 48);
            v173 = *(a2 + 72);
            v19 = *(a2 + 88);
            v7 = *(a2 + 96);
            v171 = *(a2 + 104);
            v181 = *(a2 + 80);
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

        v51 = *a2;
        v50 = *(a2 + 8);
        v53 = *(a2 + 24);
        v52 = *(a2 + 32);
        v54 = *(a2 + 40);
        v55 = *(a2 + 64);
        v56 = *(a2 + 72);
        v172 = *(a2 + 80);
        v175 = *(a2 + 88);
        v178 = *(a2 + 56);
        v180 = *(a2 + 96);
        v181 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v52, 0, v54, v79, v80, &v199);

            if (!v55)
            {
              goto LABEL_116;
            }

            if (REBindPointBoundComponent())
            {
              Entity = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v82 = swift_dynamicCastClassUnconditional();
LABEL_50:
                v55 = v82;
                goto LABEL_116;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_174:
                __break(1u);
                goto LABEL_175;
              }

              v133 = specialized static Entity.entityInfoType(_:)();
              if (!v133)
              {
                v82 = makeEntity(for:)(Entity);
                goto LABEL_50;
              }

              v55 = (*(v133 + 232))();
              v134 = *(v55 + 16);

              MEMORY[0x1C68F9740](v134, 0);
              *(v55 + 16) = Entity;
              MEMORY[0x1C68F9740](Entity, v55);
            }

            else
            {
              v55 = 0;
            }

LABEL_116:
            specialized ActionEventData.action<A>()(&v196);
            v135 = v197;
            if (v197 != 0xFF)
            {
              v136 = v196;
              v137 = v198;
              v183 = a5;
              v138 = *(&v198 + 1);
              v139 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
              *&v190[8] = vcvtq_f64_f32(v56);
              v140 = v199;
              *&v194[24] = v200;
              *&v194[40] = v201;
              *&v194[56] = v202;
              *&v194[72] = v203;
              v186 = v136;
              LOBYTE(v187) = v135 & 1;
              *&v188 = v137;
              *(&v188 + 1) = v138;
              LOBYTE(v189) = v139 & 1;
              *&v185 = v76;
              *(&v189 + 1) = v55;
              v190[0] = v172;
              *&v190[24] = v13;
              *&v191 = v178;
              *(&v191 + 1) = 0xBFF0000000000000;
              LOBYTE(v192) = 0;
              v141 = v175;
LABEL_139:
              *(&v192 + 1) = v141;
              LOBYTE(v193) = 0;
              v148 = v180;
              goto LABEL_140;
            }

            goto LABEL_137;
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

        v37 = *a2;
        v36 = *(a2 + 8);
        v39 = *(a2 + 24);
        v38 = *(a2 + 32);
        v40 = *(a2 + 40);
        v41 = *(a2 + 56);
        v42 = *(a2 + 64);
        v174 = *(a2 + 72);
        v177 = *(a2 + 80);
        v180 = *(a2 + 88);
        v181 = *(a2 + 48);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(v38, 0, v40, v124, v125, &v199);

            if (!v41)
            {
              goto LABEL_136;
            }

            if (REBindPointBoundComponent())
            {
              v126 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v127 = swift_dynamicCastClassUnconditional();
LABEL_99:
                v41 = v127;
                goto LABEL_136;
              }

              result = REEntityIsBeingDestroyed();
              if (result)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v158 = specialized static Entity.entityInfoType(_:)();
              if (!v158)
              {
                v127 = makeEntity(for:)(v126);
                goto LABEL_99;
              }

              v41 = (*(v158 + 232))();
              v159 = *(v41 + 16);

              MEMORY[0x1C68F9740](v159, 0);
              *(v41 + 16) = v126;
              MEMORY[0x1C68F9740](v126, v41);
            }

            else
            {
              v41 = 0;
            }

LABEL_136:
            specialized ActionEventData.action<A>()(&v196);
            v135 = v197;
            if (v197 != 0xFF)
            {
              v163 = v196;
              v183 = a5;
              v164 = *(&v196 + 1);
              v165 = v198;
              v166 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
              *&v190[8] = vcvtq_f64_f32(v42);
              v140 = v199;
              *&v194[24] = v200;
              *&v194[40] = v201;
              *&v194[56] = v202;
              *&v194[72] = v203;
              *&v186 = v163;
              *(&v186 + 1) = v164;
              LOBYTE(v187) = v135 & 1;
              v188 = v165;
              LOBYTE(v189) = v166 & 1;
              *&v185 = v121;
              *(&v189 + 1) = v41;
              v190[0] = v174;
              v191 = 0uLL;
              *&v190[24] = v13;
              LOBYTE(v192) = 1;
              v141 = v177;
              goto LABEL_139;
            }

LABEL_137:

            v161 = *(&v196 + 1);
            v160 = v196;
            v162 = v135;
LABEL_147:
            outlined consume of OrbitEntityAction?(v160, v161, v162);
            return 0;
          }

          v43 = makeEntity(for:)(v37);
        }

        v44 = v43;
        goto LABEL_95;
      }

      v65 = *a2;
      v59 = *(a2 + 8);
      v66 = *(a2 + 24);
      v61 = *(a2 + 32);
      v67 = *(a2 + 40);
      v33 = *(a2 + 64);
      v179 = *(a2 + 56);
      v6 = *(a2 + 72);
      LOBYTE(v176) = *(a2 + 80);
      v181 = *(a2 + 48);
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
        specialized ActionEventData.init(eventID:coreData:typeName:)(v61, 0, v67, v94, v95, &v199);

        if (!v33)
        {
          goto LABEL_121;
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
            goto LABEL_121;
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

          v142 = specialized static Entity.entityInfoType(_:)();
          if (!v142)
          {
            v97 = makeEntity(for:)(v96);
            goto LABEL_66;
          }

          v33 = (*(v142 + 232))();
          v143 = *(v33 + 16);

          MEMORY[0x1C68F9740](v143, 0);
          *(v33 + 16) = v96;
          MEMORY[0x1C68F9740](v96, v33);
        }

        else
        {
          v33 = 0;
        }

LABEL_121:
        specialized ActionEventData.action<A>()(&v196);
        v135 = v197;
        if (v197 != 0xFF)
        {
          v144 = v196;
          v183 = a5;
          v145 = *(&v196 + 1);
          v146 = v198;
          v147 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
          *&v190[8] = vcvtq_f64_f32(v6);
          v140 = v199;
          *&v194[24] = v200;
          *&v194[40] = v201;
          *&v194[56] = v202;
          *&v194[72] = v203;
          *&v186 = v144;
          *(&v186 + 1) = v145;
          LOBYTE(v187) = v135 & 1;
          v188 = v146;
          LOBYTE(v189) = v147 & 1;
          *&v185 = v91;
          *(&v189 + 1) = v33;
          v190[0] = v176;
          *&v190[24] = v13;
          *&v191 = v179;
          v148 = 0xBFF0000000000000;
          *(&v191 + 1) = 0xBFF0000000000000;
          LOBYTE(v192) = 0;
          *(&v192 + 1) = 0xBFF0000000000000;
          LOBYTE(v193) = 0;
LABEL_140:
          *(&v193 + 1) = v148;
          v194[0] = 0;
          goto LABEL_141;
        }

        goto LABEL_137;
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

        v29 = *a2;
        v28 = *(a2 + 8);
        v30 = *(a2 + 24);
        v31 = *(a2 + 40);
        v32 = *(a2 + 48);
        v33 = *(a2 + 56);
        v182 = *(a2 + 32);
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
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v31, v116, v117, &v199);

            if (!v33)
            {
              goto LABEL_131;
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

LABEL_129:
              v155 = specialized static Entity.entityInfoType(_:)();
              if (!v155)
              {
                v118 = makeEntity(for:)(v67);
                goto LABEL_90;
              }

              v33 = (*(v155 + 232))();
              v156 = *(v33 + 16);

              MEMORY[0x1C68F9740](v156, 0);
              *(v33 + 16) = v67;
              MEMORY[0x1C68F9740](v67, v33);

LABEL_131:
              specialized ActionEventData.action<A>()(&v196);
              v157 = v197;
              if (v197 != 0xFF)
              {
                v186 = v196;
                *&v194[24] = v200;
                *&v194[40] = v201;
                *&v194[56] = v202;
                *&v194[72] = v203;
                LOBYTE(v187) = v197 & 1;
                v188 = v198;
                LOBYTE(v189) = 1;
                *&v185 = v65;
                *(&v189 + 1) = v33;
                v190[0] = 0;
                *&v190[8] = 0;
                *&v190[16] = 0;
                v191 = 0uLL;
                *&v190[24] = v13;
                LOBYTE(v192) = 1;
                *(&v192 + 1) = v182;
                LOBYTE(v193) = 0;
                *(&v193 + 1) = 0;
                v194[0] = 1;
                *&v194[8] = v199;
                *&v194[88] = v32;
LABEL_149:
                a5(&v185);
                goto LABEL_150;
              }

              goto LABEL_146;
            }

            goto LABEL_91;
          }

          v34 = makeEntity(for:)(v29);
        }

        v35 = v34;
        goto LABEL_86;
      }

      v60 = *a2;
      v59 = *(a2 + 8);
      v61 = *(a2 + 24);
      v62 = *(a2 + 40);
      v32 = *(a2 + 48);
      v33 = *(a2 + 56);
      v182 = *(a2 + 32);
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
          specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v62, v87, v88, &v199);

          if (!v33)
          {
            goto LABEL_131;
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
          v33 = 0;
          goto LABEL_131;
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
      v184 = *(a2 + 32);
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
            goto LABEL_145;
          }

          if (REBindPointBoundComponent())
          {
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

LABEL_143:
            v167 = specialized static Entity.entityInfoType(_:)();
            if (!v167)
            {
              v132 = makeEntity(for:)(v102);
              goto LABEL_107;
            }

            v16 = (*(v167 + 232))();
            v168 = *(v16 + 16);

            MEMORY[0x1C68F9740](v168, 0);
            *(v16 + 16) = v102;
            MEMORY[0x1C68F9740](v102, v16);

LABEL_145:
            v169 = String.init(cString:)();
            specialized ActionEventData.init(eventID:coreData:typeName:)(0, 0, v15, v169, v170, &v199);

            specialized ActionEventData.action<A>()(&v196);
            v157 = v197;
            if (v197 != 0xFF)
            {
              v186 = v196;
              *&v194[24] = v200;
              *&v194[40] = v201;
              *&v194[56] = v202;
              *&v194[72] = v203;
              LOBYTE(v187) = v197 & 1;
              v188 = v198;
              LOBYTE(v189) = 1;
              *&v185 = v18;
              *(&v189 + 1) = v16;
              v190[0] = 0;
              *&v190[8] = 0;
              *&v190[16] = 0;
              v191 = 0uLL;
              *&v190[24] = v13;
              LOBYTE(v192) = 1;
              *(&v192 + 1) = 0;
              LOBYTE(v193) = 1;
              *(&v193 + 1) = 0;
              v194[0] = 1;
              *&v194[8] = v199;
              *&v194[88] = v184;
              goto LABEL_149;
            }

LABEL_146:

            v161 = *(&v196 + 1);
            v160 = v196;
            v162 = v157;
            goto LABEL_147;
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
    v184 = *(a2 + 32);
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
          goto LABEL_145;
        }

        if (REBindPointBoundComponent())
        {
          v14 = a6;
          v102 = REComponentGetEntity();
          if (REEntityGetSwiftObject())
          {
LABEL_106:
            type metadata accessor for Entity();
            v132 = swift_dynamicCastClassUnconditional();
LABEL_107:
            v16 = v132;
            goto LABEL_145;
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
              specialized ActionEventData.init(eventID:coreData:typeName:)(v16, 0, v18, v108, v109, &v199);

              if (!v19)
              {
                goto LABEL_126;
              }

              if (!REBindPointBoundComponent())
              {
                v19 = 0;
                goto LABEL_126;
              }

              v110 = REComponentGetEntity();
              if (REEntityGetSwiftObject())
              {
                type metadata accessor for Entity();
                v111 = swift_dynamicCastClassUnconditional();
LABEL_82:
                v19 = v111;
                goto LABEL_126;
              }

              result = REEntityIsBeingDestroyed();
              if ((result & 1) == 0)
              {
                v149 = specialized static Entity.entityInfoType(_:)();
                if (!v149)
                {
                  v111 = makeEntity(for:)(v110);
                  goto LABEL_82;
                }

                v19 = (*(v149 + 232))();
                v150 = *(v19 + 16);

                MEMORY[0x1C68F9740](v150, 0);
                *(v19 + 16) = v110;
                MEMORY[0x1C68F9740](v110, v19);

LABEL_126:
                specialized ActionEventData.action<A>()(&v196);
                v135 = v197;
                if (v197 != 0xFF)
                {
                  v151 = v196;
                  v183 = a5;
                  v152 = *(&v196 + 1);
                  v153 = v198;
                  v154 = _s17RealityFoundation15ActionEventDataV9parameter4type0D13ParameterTypeQzSgxm_tAA06EntityC0RzlFAA09EmphasizeC0V_Tt0g5Tm(&_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMd, &_s17RealityFoundation28EntityActionParameterWrapperCyAA07ImpulseD0VGMR);
                  *&v190[8] = vcvtq_f64_f32(v7);
                  *(&v191 + 1) = v6.f32[0];
                  v140 = v199;
                  *&v194[24] = v200;
                  *&v194[40] = v201;
                  *&v186 = v151;
                  *(&v186 + 1) = v152;
                  LOBYTE(v187) = v135 & 1;
                  v188 = v153;
                  LOBYTE(v189) = v154 & 1;
                  *&v185 = v105;
                  *(&v189 + 1) = v19;
                  v190[0] = v171;
                  *&v190[24] = v13;
                  *&v191 = v173;
                  LOBYTE(v192) = 0;
                  *(&v192 + 1) = v179;
                  LOBYTE(v193) = 0;
                  *(&v193 + 1) = v176;
                  v194[0] = 0;
                  *&v194[56] = v202;
                  *&v194[72] = v203;
LABEL_141:
                  *&v194[8] = v140;
                  *&v194[88] = v181;
                  v183(&v185);
LABEL_150:

                  v195[12] = *&v194[32];
                  v195[13] = *&v194[48];
                  v195[14] = *&v194[64];
                  v195[15] = *&v194[80];
                  v195[8] = v192;
                  v195[9] = v193;
                  v195[10] = *v194;
                  v195[11] = *&v194[16];
                  v195[4] = v189;
                  v195[5] = *v190;
                  v195[6] = *&v190[16];
                  v195[7] = v191;
                  v195[0] = v185;
                  v195[1] = v186;
                  v195[2] = v187;
                  v195[3] = v188;
                  outlined destroy of BodyTrackingComponent?(v195, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMd, &_s17RealityFoundation11ActionEventVyAA07ImpulseC0VGMR);
                  return 0;
                }

                goto LABEL_137;
              }

              goto LABEL_176;
            }

            goto LABEL_170;
          }

          goto LABEL_143;
        }

LABEL_108:
        v16 = 0;
        goto LABEL_145;
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
    *&v195[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001C18E4580, v195);
    _os_log_impl(&dword_1C1358000, v23, v24, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1C6902A30](v26, -1, -1);
    MEMORY[0x1C6902A30](v25, -1, -1);
  }

  return 1;
}