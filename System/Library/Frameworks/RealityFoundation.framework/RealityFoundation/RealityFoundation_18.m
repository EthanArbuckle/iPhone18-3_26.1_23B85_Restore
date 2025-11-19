uint64_t __RKEntityTransformAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v236 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v188 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v216 = *(v9 - 8);
  v217 = v9;
  v10 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v215 = &v188 - v11;
  v12 = *(a1 + 8);
  swift_beginAccess();
  v13 = v2[1].i64[0];
  v235[0].i64[0] = 91;
  v235[0].i64[1] = 0xE100000000000000;
  if (v13)
  {
    v221[0].i64[0] = 0;
    v221[0].i64[1] = 0xE000000000000000;
    v220[0].i64[0] = v13;

    _print_unlocked<A, B>(_:_:)();
    v15 = v221[0].i64[1];
    v14 = v221[0].i64[0];
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x1C68F3410](v14, v15);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v16 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v17 = v235[0].u64[1];
  v18 = v235[0].i64[0];
  v19 = v2[1].i64[0];
  if (!v19)
  {
    v26 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v26, v235);

LABEL_18:
    v28 = 0;
LABEL_38:
    v40 = *MEMORY[0x1E69E9840];
    return v28;
  }

  swift_beginAccess();
  if (v2[6].i8[8] == 1 && v2[6].i64[0] == 1)
  {
    swift_beginAccess();
    if (v2[6].i8[9] == 1)
    {

LABEL_15:
      v235[0].i64[0] = v18;
      v235[0].i64[1] = v17;
      v27 = static os_log_type_t.error.getter();
      specialized InteractionsLogger.log(_:_:)(v27, v235);
LABEL_16:

LABEL_17:

      goto LABEL_18;
    }
  }

  v20 = *(v12 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_15;
  }

  v213 = v8;
  v21 = *(v19 + 16);
  RERigidBodyComponentGetComponentType();
  v214 = v21;
  if (REEntityGetComponentByClass())
  {
    v22 = v2[10].f32[3];
    LODWORD(v212) = v22 == 0.0;
    v23 = v12;
    if (v22 == 0.0)
    {
      v24 = v18;
      v235[0].i64[0] = v18;
      v235[0].i64[1] = v17;
      v25 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v25, v235);
      RERigidBodyComponentIncrementVersion();
      LODWORD(v211) = 0;
    }

    else
    {
      MotionType = RERigidBodyComponentGetMotionType();
      if (MotionType == 1)
      {
        v24 = v18;
        LODWORD(v211) = 1;
      }

      else
      {
        LODWORD(v211) = MotionType;
        v24 = v18;
        v235[0].i64[0] = v18;
        v235[0].i64[1] = v17;
        v30 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v30, v235);
        RERigidBodyComponentSetMotionType();
      }
    }

    REMotionStateComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v235[0].i64[0] = v24;
      v235[0].i64[1] = v17;
      v31 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v31, v235);
      REMotionStateComponentSetLinearVelocity();
      REMotionStateComponentSetAngularVelocity();
      RENetworkMarkComponentDirty();
    }

    RENetworkMarkComponentDirty();
    v18 = v24;
    v12 = v23;
  }

  else
  {
    LODWORD(v211) = 0;
    LODWORD(v212) = 1;
  }

  REAnimationComponentGetComponentType();
  v32 = REEntityGetOrAddComponentByClass();
  if (!REEntityGetSceneNullable())
  {
    v235[0].i64[0] = v18;
    v235[0].i64[1] = v17;
    v37 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v37, v235);
LABEL_37:

    v28 = 1;
    goto LABEL_38;
  }

  if (!RESceneGetECSManagerNullable())
  {
    v235[0].i64[0] = v18;
    v235[0].i64[1] = v17;
    v38 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v38, v235);
    goto LABEL_37;
  }

  ServiceLocator = REECSManagerGetServiceLocator();
  v34 = MEMORY[0x1C68FE1F0](ServiceLocator);
  if (!v34)
  {
    v235[0].i64[0] = v18;
    v235[0].i64[1] = v17;
    v39 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v39, v235);
    goto LABEL_37;
  }

  v205 = v32;
  v206 = v34;
  v35 = v2[11].u8[0];
  v208 = "e";
  if (v35)
  {
    v36 = "move by distance";
  }

  else
  {
    v36 = "e";
  }

  v209 = 0x80000001C18DD670;
  v210 = v18;
  if ((v36 | 0x8000000000000000) == 0x80000001C18DD670)
  {
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  swift_beginAccess();
  v43 = v2[12].i64[0];
  if (v43)
  {
    v44 = v2[12].i64[0];

    goto LABEL_44;
  }

LABEL_42:
  v45 = Entity.rcSceneEntity.getter();
  if (!v45)
  {
    v235[0].i64[0] = v210;
    v235[0].i64[1] = v17;
    v71 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v71, v235);
    goto LABEL_16;
  }

  v43 = v45;
LABEL_44:
  v46 = v210;
  v47 = specialized HasHierarchy.parent.getter();
  if (!v47)
  {
    v235[0].i64[0] = v46;
    v235[0].i64[1] = v17;
    v70 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v70, v235);

    goto LABEL_17;
  }

  v48 = v47;

  *v49.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v48, v43);
  v196 = v50;
  v197 = v49;
  v194 = v52;
  v195 = v51;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v193 = v4;
  v202 = static Transform.identity;
  v198 = xmmword_1EBEB2BC0;
  v199 = xmmword_1EBEB2BB0;
  *&v53 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v48, v43);
  v200 = v53;
  v201 = v54;
  v203 = v55;
  v207 = v56;
  specialized simd_float4x4.init(translation:rotation:scale:)(*&v198, v199, v202.f32[0]);
  REMakeSRTFromMatrix();
  v203 = v57;
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  *&v200 = v5;
  v58 = static os_log_type_t.debug.getter();
  if (one-time initialization token for interactionsLoggingEnabled != -1)
  {
    v187 = v58;
    swift_once();
    v58 = v187;
  }

  v59 = interactionsLoggingEnabled;
  *&v207 = v48;
  v204 = v43;
  if (interactionsLoggingEnabled)
  {
    v202.i64[0] = &v188;
    v60 = v58;
    v235[0].i64[0] = 0;
    v235[0].i64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18E2F20);
    v221[0] = v203;
    type metadata accessor for simd_quatf(0);
    _print_unlocked<A, B>(_:_:)();
    v61 = v235[0].u64[1];
    *&v199 = v235[0].i64[0];
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, interactionsLogger);

    v63 = Logger.logObject.getter();

    if (os_log_type_enabled(v63, v60))
    {
      v64 = swift_slowAlloc();
      *&v198 = v63;
      v65 = v64;
      v235[0].i64[0] = swift_slowAlloc();
      v201.i32[0] = 1;
      v66 = v235[0].i64[0];
      *v65 = 136315394;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v17, v235);
      *(v65 + 12) = 2080;
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v61, v235);

      *(v65 + 14) = v67;
      v46 = v210;
      v68 = v198;
      _os_log_impl(&dword_1C1358000, v198, v60, "%s%s", v65, 0x16u);
      swift_arrayDestroy();
      v69 = v66;
      v59 = v201.i32[0];
      MEMORY[0x1C6902A30](v69, -1, -1);
      MEMORY[0x1C6902A30](v65, -1, -1);
    }

    else
    {
    }

    v48 = v207;
    v43 = v204;
  }

  _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v48, v43);
  REMakeSRTFromMatrix();
  v202 = v72;

  v73 = static os_log_type_t.debug.getter();
  if (v59)
  {
    *&v199 = &v188;
    v201.i32[0] = v59;
    v74 = v73;
    v235[0].i64[0] = 0;
    v235[0].i64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v235[0].i64[0] = 0xD000000000000011;
    v235[0].i64[1] = 0x80000001C18E2F00;
    v221[0] = v202;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v75 = SIMD.description.getter();
    MEMORY[0x1C68F3410](v75);

    v76 = v235[0].u64[1];
    *&v198 = v235[0].i64[0];
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, interactionsLogger);

    v78 = Logger.logObject.getter();

    v79 = os_log_type_enabled(v78, v74);
    v46 = v210;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v191 = v78;
      v81 = v80;
      v192.i64[0] = swift_slowAlloc();
      v235[0].i64[0] = v192.i64[0];
      *v81 = 136315394;
      *(v81 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v17, v235);
      *(v81 + 12) = 2080;
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v76, v235);

      *(v81 + 14) = v82;
      v46 = v210;
      v83 = v191;
      _os_log_impl(&dword_1C1358000, v191, v74, "%s%s", v81, 0x16u);
      v84 = v192.i64[0];
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v84, -1, -1);
      MEMORY[0x1C6902A30](v81, -1, -1);
    }

    else
    {
    }

    v59 = v201.i32[0];
  }

  RETransformComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    v235[0].i64[0] = v46;
    v235[0].i64[1] = v17;
    v91 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v91, v235);

    goto LABEL_17;
  }

  RETransformComponentGetLocalUnanimatedSRT();
  v198 = v86;
  v199 = v85;
  v2[14] = v86;
  v2[15] = v85;
  v192 = v87;
  v2[13] = v87;
  v235[0].i64[0] = v46;
  v235[0].i64[1] = v17;
  v88 = static os_log_type_t.debug.getter();
  specialized InteractionsLogger.log(_:_:)(v88, v235, partial apply for implicit closure #15 in __RKEntityTransformAction.perform(with:), v2);
  if ((v2[8].i8[0] & 1) == 0)
  {
    v201 = v2[7];
    v89 = v208;
    goto LABEL_78;
  }

  v89 = v208;
  if (v2[11].i8[0])
  {
    v90 = v209;
  }

  else
  {
    v90 = v208 | 0x8000000000000000;
  }

  if (v209 == v90)
  {
  }

  else
  {
    v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v201 = 0u;
    if ((v92 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  *v93.i64 = simd_float4x4.transform(position:)(v2[13], v197, v196, v195, v194);
  v201 = v93;
LABEL_78:
  if ((v2[10].i8[0] & 1) == 0)
  {
    v95 = v2[9];
    goto LABEL_90;
  }

  if (v2[11].i8[0])
  {
    v94 = v209;
  }

  else
  {
    v94 = v89 | 0x8000000000000000;
  }

  if (v209 == v94)
  {
  }

  else
  {
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v96 & 1) == 0)
    {
      v95 = static simd_quatf.identity;
      goto LABEL_90;
    }
  }

  v97 = v2[14];
  v98 = vnegq_f32(v97);
  v99 = vtrn2q_s32(v97, vtrn1q_s32(v97, v98));
  v100 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v97, v98, 8uLL), *v203.f32, 1), vextq_s8(v99, v99, 8uLL), v203.f32[0]);
  v101 = vrev64q_s32(v97);
  v101.i32[0] = v98.i32[1];
  v101.i32[3] = v98.i32[2];
  v102 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v97, v203, 3), v101, v203, 2), v100);
  v103 = vmulq_f32(v102, v102);
  v104 = vadd_f32(*v103.i8, *&vextq_s8(v103, v103, 8uLL));
  if (vaddv_f32(v104) == 0.0)
  {
    v95 = *&zmmword_1C1887630[48];
  }

  else
  {
    v105 = vadd_f32(v104, vdup_lane_s32(v104, 1)).u32[0];
    v106 = vrsqrte_f32(v105);
    v107 = vmul_f32(v106, vrsqrts_f32(v105, vmul_f32(v106, v106)));
    v95 = vmulq_n_f32(v102, vmul_f32(v107, vrsqrts_f32(v105, vmul_f32(v107, v107))).f32[0]);
  }

LABEL_90:
  v203 = v95;
  if ((v2[10].i8[8] & 1) == 0)
  {
    v109 = &v2[10].f32[1];
    v110 = vld1q_dup_f32(v109);
    v110.i32[3] = 0;
    goto LABEL_97;
  }

  if (v2[11].i8[0])
  {
    v108 = v209;
  }

  else
  {
    v108 = v89 | 0x8000000000000000;
  }

  if (v209 != v108)
  {
    v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v111)
    {
      goto LABEL_99;
    }

    v110 = xmmword_1C1887620;
LABEL_97:
    v202 = v110;
    goto LABEL_100;
  }

LABEL_99:
  v112 = v2[15];
  *v113.f32 = vmul_f32(*v202.f32, *v112.f32);
  v113.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v202.f32[2], v112, 2));
  v202 = v113;
LABEL_100:
  v114 = static os_log_type_t.debug.getter();
  if (v59)
  {
    v115 = v114;
    v191 = &v188;
    v235[0].i64[0] = 0;
    v235[0].i64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    MEMORY[0x1C68F3410](0x736E61725477656ELL, 0xEF3D6E6F6974616CLL);
    v221[0] = v201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v116 = SIMD.description.getter();
    MEMORY[0x1C68F3410](v116);

    MEMORY[0x1C68F3410](0xD000000000000010, 0x80000001C18E2EE0);
    v221[0] = v203;
    type metadata accessor for simd_quatf(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0x6C61635377656E20, 0xEA00000000003D65);
    v221[0] = v202;
    v117 = SIMD.description.getter();
    MEMORY[0x1C68F3410](v117);

    v118 = v235[0].u64[1];
    v190 = v235[0].i64[0];
    if (one-time initialization token for interactionsLogger != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    __swift_project_value_buffer(v119, interactionsLogger);

    v120 = Logger.logObject.getter();

    v121 = os_log_type_enabled(v120, v115);
    v122 = v210;
    if (v121)
    {
      v123 = swift_slowAlloc();
      v189 = v120;
      v124 = v123;
      v125 = swift_slowAlloc();
      v235[0].i64[0] = v125;
      *v124 = 136315394;
      *(v124 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v17, v235);
      *(v124 + 12) = 2080;
      v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v118, v235);

      *(v124 + 14) = v126;
      v127 = v189;
      _os_log_impl(&dword_1C1358000, v189, v115, "%s%s", v124, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v125, -1, -1);
      MEMORY[0x1C6902A30](v124, -1, -1);
    }

    else
    {
    }

    v89 = v208;
  }

  REMakeSRT();
  v221[0] = v128;
  v221[1] = v129;
  v221[2] = v130;
  if (v2[11].i8[0])
  {
    v131 = v209;
  }

  else
  {
    v131 = v89 | 0x8000000000000000;
  }

  if (v209 == v131)
  {
  }

  else
  {
    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v132 & 1) == 0)
    {
      REMakeSRT();
      goto LABEL_115;
    }
  }

  v237.columns[1] = v196;
  v237.columns[0] = v197;
  v237.columns[3] = v194;
  v237.columns[2] = v195;
  __invert_f4(v237);
  REMakeSRTFromMatrix();
LABEL_115:
  v235[0] = v133;
  v235[1] = v134;
  v235[2] = v135;
  specialized static RESRT.* infix(_:_:)(v235, v221, v219);
  v220[0] = v219[0];
  v220[1] = v219[1];
  v220[2] = v219[2];
  if (v2[10].f32[3] == 0.0)
  {
    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (RERigidBodyComponentGetRigidBody())
      {
        RERigidBodySleep();
        RENetworkMarkComponentDirty();
      }
    }
  }

  REFromToByAnimationDefaultParameters();
  v136 = v2[10].f32[3];
  RESRTInverse();
  v234[0] = v137;
  v234[1] = v138;
  v234[2] = v139;
  RESRTIdentity();
  v218[3] = v140;
  v218[4] = v141;
  v218[5] = v142;
  specialized static RESRT.* infix(_:_:)(v234, v220, v218);
  LOBYTE(v225[0]) = v2[11].i8[1];
  LOBYTE(v222) = v2[11].i8[2];
  specialized static __RKEntityTransformAction.reEaseFunction(from:type:)(v225, &v222, v232);
  if (v233)
  {
    LOBYTE(v229) = 1;
    *(&v229 + 1) = "Transform.transform";
    LOBYTE(v230) = 1;
    *(&v230 + 1) = v136;
    if (REAssetManagerTimelineAssetCreateSRTAnimation())
    {
LABEL_123:
      *&v229 = 5;
      DWORD2(v229) = 4352;
      *&v230 = "SRTFROMTO";
      BYTE8(v230) = 0;
      v2[16].i64[0] = REAnimationComponentPlay();
      v2[16].i8[8] = 0;
      RERelease();
      v143 = *(v19 + 16);
      if ((REEntityGetSelfEnabled() & 1) == 0)
      {
        MEMORY[0x1C68F9730](*(v19 + 16), 0);
        v144 = *(v19 + 16);
        RENetworkMarkEntityMetadataDirty();
        v145 = *(v19 + 16);
        RERenderOptionsComponentGetComponentType();
        REEntityGetOrAddComponentByClass();
        RERenderOptionsComponentSetVisibilityMode();
        RENetworkMarkComponentDirty();
        MEMORY[0x1C68F9730](*(v19 + 16), 1);
        v146 = *(v19 + 16);
        RENetworkMarkEntityMetadataDirty();
      }

      v147 = *(v19 + 16);
      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      VisibilityMode = RERenderOptionsComponentGetVisibilityMode();
      v28 = 1;
      v149 = 1;
      if (!VisibilityMode)
      {
        v150 = *(v19 + 16);
        v149 = REEntityGetSelfEnabled() ^ 1;
      }

      v2[22].i8[0] = v149;
      v151 = v2[6].i64[0];
      v152 = v2[6].i8[8];
      v2[6].i64[0] = 1;
      v2[6].i8[8] = 1;
      *&v229 = v151;
      BYTE8(v229) = v152;
      __RKEntityAction.state.didset(&v229);
      v153 = swift_allocObject();
      swift_weakInit();
      v154 = swift_allocObject();
      v155 = v214;
      *(v154 + 16) = v153;
      *(v154 + 24) = v155;
      *(v154 + 32) = v211;
      *(v154 + 36) = v212;
      *(v154 + 40) = v19;
      v156 = v2[2].i64[0];
      v157 = v2[2].i64[1];
      v2[2].i64[0] = partial apply for specialized closure #1 in __RKEntityTransformAction.perform(with:);
      v2[2].i64[1] = v154;

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v156);

      v214 = type metadata accessor for Entity();
      v228 = &protocol witness table for Entity;
      v227 = *&v214;
      v225[0] = v19;
      v209 = swift_allocObject();
      swift_weakInit();

      Scene.eventService.getter(&v229);
      v158 = *(&v230 + 1);
      v159 = v231;
      __swift_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
      type metadata accessor for REAnimationHasCompletedEvent(0);
      EventService.publisher<A>(for:on:)(v160, v225, v158, v160, v159);
      v161 = v222;
      v211 = v12;
      v162 = v223;
      v163 = v224;
      __swift_destroy_boxed_opaque_existential_1(&v229);
      *(swift_allocObject() + 16) = 0;
      *&v229 = v161;
      *(&v229 + 1) = v162;
      *&v230 = v163;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
      v212 = &protocol conformance descriptor for Scene.CorePublisher<A>;
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
      v164 = v215;
      Publisher.compactMap<A>(_:)();

      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
      v166 = *(v165 + 48);
      v167 = *(v165 + 52);
      v168 = swift_allocObject();
      (*(v216 + 32))(&v168[*(*v168 + *MEMORY[0x1E695BEE8] + 16)], v164, v217);
      *&v229 = v168;
      v169 = swift_allocObject();
      v170 = v209;
      *(v169 + 16) = partial apply for closure #2 in __RKEntityTransformAction.perform(with:);
      *(v169 + 24) = v170;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
      v217 = &protocol conformance descriptor for Scene.Publisher<A>;
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
      v171 = Publisher<>.sink(receiveValue:)();

      v216 = type metadata accessor for AnyCancellable();
      *(&v230 + 1) = v216;
      v231 = MEMORY[0x1E695BF08];

      *&v229 = v171;
      outlined destroy of BodyTrackingComponent?(v225, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      swift_beginAccess();
      outlined assign with take of Cancellable?(&v229, &v2[17]);
      swift_endAccess();
      v228 = &protocol witness table for Entity;
      v227 = *&v214;
      v225[0] = v19;
      v215 = swift_allocObject();
      swift_weakInit();

      Scene.eventService.getter(&v229);
      v172 = *(&v230 + 1);
      v173 = v231;
      __swift_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
      type metadata accessor for REAnimationHasTerminatedEvent(0);
      EventService.publisher<A>(for:on:)(v174, v225, v172, v174, v173);
      v175 = v222;
      v176 = v223;
      v177 = v224;
      __swift_destroy_boxed_opaque_existential_1(&v229);
      *(swift_allocObject() + 16) = 0;
      *&v229 = v175;
      *(&v229 + 1) = v176;
      *&v230 = v177;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
      v178 = v213;
      Publisher.compactMap<A>(_:)();

      v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
      v180 = *(v179 + 48);
      v181 = *(v179 + 52);
      v182 = swift_allocObject();
      (*(v200 + 32))(&v182[*(*v182 + *MEMORY[0x1E695BEE8] + 16)], v178, v193);
      *&v229 = v182;
      v183 = swift_allocObject();
      v184 = v215;
      *(v183 + 16) = partial apply for closure #3 in __RKEntityTransformAction.perform(with:);
      *(v183 + 24) = v184;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
      lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
      v185 = Publisher<>.sink(receiveValue:)();

      *(&v230 + 1) = v216;
      v231 = MEMORY[0x1E695BF08];

      *&v229 = v185;
      outlined destroy of BodyTrackingComponent?(v225, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      swift_beginAccess();
      outlined assign with take of Cancellable?(&v229, &v2[19].i64[1]);
      swift_endAccess();
      *&v229 = v210;
      *(&v229 + 1) = v17;
      v186 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v186, &v229);

      goto LABEL_38;
    }

    __break(1u);
  }

  v229 = v232[0];
  v230 = v232[1];
  LOBYTE(v225[0]) = 1;
  v225[1] = "Transform.transform";
  v226 = 1;
  v227 = v136;
  result = REAssetManagerTimelineAssetCreateSRTAnimation();
  if (result)
  {
    goto LABEL_123;
  }

  __break(1u);
  return result;
}

uint64_t implicit closure #15 in __RKEntityTransformAction.perform(with:)(_OWORD *a1)
{
  _StringGuts.grow(_:)(62);
  MEMORY[0x1C68F3410](0xD000000000000014, 0x80000001C18E3060);
  v5 = a1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v2 = SIMD.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](0xD000000000000015, 0x80000001C18E3080);
  v6 = a1[14];
  type metadata accessor for simd_quatf(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x616E696769726F20, 0xEF3D656C6163536CLL);
  v7 = a1[15];
  v3 = SIMD.description.getter();
  MEMORY[0x1C68F3410](v3);

  return 0;
}

uint64_t specialized closure #1 in __RKEntityTransformAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v7 + 272, &v17);
    if (*(&v18 + 1))
    {
      outlined init with copy of __REAssetService(&v17, v15);
      outlined destroy of BodyTrackingComponent?(&v17, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v15, v16);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v17, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v17, v7 + 272);
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Cancellable?(v7 + 312, &v17);
    if (*(&v18 + 1))
    {
      outlined init with copy of __REAssetService(&v17, v15);
      outlined destroy of BodyTrackingComponent?(&v17, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v15, v16);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v17, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v17, v7 + 312);
    swift_endAccess();
    swift_beginAccess();
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v8 + 16);
      v10 = *(v7 + 16);

      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (REAnimationComponentHasRunningAnimations())
        {
          if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v7 + 104) == 1) && *(v7 + 96) == 3)
          {
            REAnimationComponentStopAllAnimations();
            RENetworkMarkComponentDirty();
          }
        }
      }

      *(v7 + 256) = 0;
      *(v7 + 264) = 1;
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }

    if (*(v7 + 352) == 1)
    {
      v11 = *(a4 + 16);
      RERenderOptionsComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      if (RERenderOptionsComponentGetVisibilityMode() || (v12 = *(a4 + 16), (REEntityGetSelfEnabled() & 1) == 0))
      {
        v13 = *(a4 + 16);
        if (REEntityGetSelfEnabled())
        {
          MEMORY[0x1C68F9730](*(a4 + 16), 0);
          v14 = *(a4 + 16);
          RENetworkMarkEntityMetadataDirty();
        }
      }
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntityTransformAction.perform(with:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if ((*(result + 264) & 1) != 0 || *(v1 + 16) != *(result + 256))
    {
    }

    else
    {
      swift_beginAccess();
      v4 = *(v3 + 96);
      v5 = *(v3 + 104);
      *(v3 + 96) = 2;
      *(v3 + 104) = 1;
      v6 = v4;
      v7 = v5;

      __RKEntityAction.state.didset(&v6);
    }
  }

  return result;
}

uint64_t __RKEntityTransformAction.reversed()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 172);
  swift_beginAccess();
  v8 = *(v0 + 192);
  type metadata accessor for __RKEntityTransformAction();
  v9 = swift_allocObject();
  *(v9 + 192) = 0;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 240) = xmmword_1C1887620;
  *(v9 + 256) = 0;
  *(v9 + 264) = 1;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0u;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 336) = 0u;
  *(v9 + 352) = 0;
  *(v9 + 112) = v3;
  *(v9 + 120) = v2;
  *(v9 + 128) = 0;
  *(v9 + 144) = v5;
  *(v9 + 152) = v4;
  *(v9 + 160) = 0;
  *(v9 + 164) = v6;
  *(v9 + 168) = 0;
  *(v9 + 172) = v7;
  *(v9 + 176) = 1;
  *(v9 + 184) = 0;
  *(v9 + 177) = 0;
  swift_beginAccess();
  *(v9 + 192) = v8;

  return __RKEntityAction.init(targetEntity:)(v10);
}

uint64_t __RKEntityTransformAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v7 = *(v1 + 144);
  v6 = *(v1 + 152);
  v19 = *(v1 + 164);
  v20 = *(v1 + 160);
  v8 = *(v1 + 172);
  v17 = *(v1 + 176);
  v18 = *(v1 + 168);
  v16 = *(v1 + 177);
  v21 = *(v1 + 179);
  v9 = *(v1 + 180);
  swift_beginAccess();
  v10 = *(v1 + 192);
  v11 = type metadata accessor for __RKEntityTransformAction();
  v12 = swift_allocObject();
  *(v12 + 192) = 0;
  v13 = (v12 + 192);
  *(v12 + 208) = 0u;
  *(v12 + 224) = 0u;
  *(v12 + 240) = xmmword_1C1887620;
  *(v12 + 256) = 0;
  *(v12 + 264) = 1;
  *(v12 + 272) = 0u;
  *(v12 + 288) = 0u;
  *(v12 + 304) = 0u;
  *(v12 + 320) = 0u;
  *(v12 + 336) = 0u;
  *(v12 + 352) = 0;
  *(v12 + 112) = v3;
  *(v12 + 120) = v4;
  *(v12 + 128) = v5;
  *(v12 + 144) = v7;
  *(v12 + 152) = v6;
  *(v12 + 160) = v20;
  *(v12 + 164) = v19;
  *(v12 + 168) = v18;
  *(v12 + 172) = v8;
  *(v12 + 176) = v17;
  *(v12 + 177) = v16;
  *(v12 + 180) = v9;
  *(v12 + 179) = v21;
  swift_beginAccess();
  *v13 = v10;

  result = __RKEntityAction.init(targetEntity:)(v14);
  a1[3] = v11;
  *a1 = result;
  return result;
}

uint64_t __RKEntityTransformAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 112);
    v6 = *(v1 + 120);
    v7 = *(v1 + 128);
    v8 = *(v1 + 144);
    v9 = *(v1 + 152);
    v18 = *(v1 + 164);
    v19 = *(v1 + 160);
    v10 = *(v1 + 172);
    v16 = *(v1 + 176);
    v17 = *(v1 + 168);
    v15 = *(v1 + 177);
    v20 = *(v1 + 179);
    v11 = *(v1 + 180);
    swift_beginAccess();
    v12 = *(v1 + 192);
    type metadata accessor for __RKEntityTransformAction();
    v13 = swift_allocObject();
    *(v13 + 192) = 0;
    *(v13 + 208) = 0u;
    *(v13 + 224) = 0u;
    *(v13 + 240) = xmmword_1C1887620;
    *(v13 + 256) = 0;
    *(v13 + 264) = 1;
    *(v13 + 272) = 0u;
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
    *(v13 + 320) = 0u;
    *(v13 + 336) = 0u;
    *(v13 + 352) = 0;
    *(v13 + 112) = v5;
    *(v13 + 120) = v6;
    *(v13 + 128) = v7;
    *(v13 + 144) = v8;
    *(v13 + 152) = v9;
    *(v13 + 160) = v19;
    *(v13 + 164) = v18;
    *(v13 + 168) = v17;
    *(v13 + 172) = v10;
    *(v13 + 176) = v16;
    *(v13 + 177) = v15;
    *(v13 + 180) = v11;
    *(v13 + 179) = v20;
    swift_beginAccess();
    *(v13 + 192) = v12;

    return __RKEntityAction.init(targetEntity:)(v14);
  }

  else
  {
    __RKEntityTransformAction.copy(with:)(v22);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityTransformAction.__ivar_destroyer()
{
  v1 = *(v0 + 192);

  outlined destroy of BodyTrackingComponent?(v0 + 272, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return outlined destroy of BodyTrackingComponent?(v0 + 312, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntityTransformAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  v6 = *(v0 + 192);

  outlined destroy of BodyTrackingComponent?(v0 + 272, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 312, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityTransformAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  v6 = *(v0 + 192);

  outlined destroy of BodyTrackingComponent?(v0 + 272, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 312, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return swift_deallocClassInstance();
}

double _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == a2)
    {
      *&result = 1065353216;
      return result;
    }

    v5 = *(a1 + 16);

    v6 = MEMORY[0x1C69004D0](v5);
    v7 = *(a1 + 16);
    if (v6)
    {
      v8 = *(a1 + 16);
      RETransformServiceGetWorldMatrix4x4F();
    }

    else
    {
      RETransformComponentGetComponentType();
      if (!REEntityGetComponentByClass())
      {
        v24 = specialized HasHierarchy.parent.getter();
        if (!v24)
        {

          v30 = *zmmword_1C1887630;
          if (a2)
          {
LABEL_12:
            v10 = *(a2 + 16);

            v11 = MEMORY[0x1C69004D0](v10);
            v12 = *(a2 + 16);
            if (v11)
            {
              v13 = *(a2 + 16);
              RETransformServiceGetWorldMatrix4x4F();
            }

            else
            {
              RETransformComponentGetComponentType();
              if (!REEntityGetComponentByClass())
              {
                v19 = specialized HasHierarchy.parent.getter();
                if (!v19)
                {

                  v18 = *zmmword_1C1887630;
                  goto LABEL_25;
                }

                *v20.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v19, 0);
                v28 = v21;
                v29 = v20;
                v26 = v23;
                v27 = v22;

LABEL_17:

                v18.columns[1] = v28;
                v18.columns[0] = v29;
                v18.columns[3] = v26;
                v18.columns[2] = v27;
LABEL_25:
                v31 = __invert_f4(v18);
                *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31.columns[0], v30.f32[0]), v31.columns[1], *v30.f32, 1), v31.columns[2], v30, 2), v31.columns[3], v30, 3).u64[0];
                return result;
              }

              RETransformComponentGetWorldMatrix4x4F();
            }

            v28 = v15;
            v29 = v14;
            v26 = v17;
            v27 = v16;
            goto LABEL_17;
          }

LABEL_24:
          v18 = *zmmword_1C1887630;
          goto LABEL_25;
        }

        *v25.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v24, 0);
        v30 = v25;

LABEL_11:

        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }

      RETransformComponentGetWorldMatrix4x4F();
    }

    v30 = v9;
    goto LABEL_11;
  }

  *&result = 1065353216;
  v30 = *zmmword_1C1887630;
  if (a2)
  {
    goto LABEL_12;
  }

  return result;
}

_BYTE *specialized static __RKEntityTransformAction.reEaseFunction(from:type:)@<X0>(_BYTE *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *result;
  v5 = *a2;
  if (v4 > 4)
  {
    if (*result <= 6u)
    {
      if (v4 == 5)
      {
        RECreateExponentialEase();
      }

      else
      {
        RECreateHermiteEase();
      }
    }

    else if (v4 == 7)
    {
      RECreateLogarithmicEase();
    }

    else if (v4 == 8)
    {
      RECreatePowerEase();
    }

    else
    {
      RECreateSineEase();
    }

    goto LABEL_20;
  }

  if (*result > 1u)
  {
    if (v4 == 2)
    {
      RECreateBounceEase();
    }

    else if (v4 == 3)
    {
      RECreateCircleEase();
    }

    else
    {
      RECreateElasticEase();
    }

    goto LABEL_20;
  }

  if (*result)
  {
    RECreateBackEase();
LABEL_20:
    result = REEasingFunctionSetMode();
    v7 = 0;
    v6 = v10;
    v8 = v11;
    goto LABEL_21;
  }

  v6 = 0uLL;
  v7 = 1;
  v8 = 0uLL;
LABEL_21:
  *a3 = v6;
  *(a3 + 16) = v8;
  *(a3 + 32) = v7;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 specialized static RESRT.* infix(_:_:)@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v4 = a2[1];
  result = vmulq_f32(*a1, *a2);
  result.n128_u32[3] = 0;
  v6 = vnegq_f32(v4);
  v7 = vtrn2q_s32(v4, vtrn1q_s32(v4, v6));
  v8 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v4, v6, 8uLL), *v3.f32, 1), vextq_s8(v7, v7, 8uLL), v3.f32[0]);
  v9 = vrev64q_s32(v4);
  v9.i32[0] = v6.i32[1];
  v9.i32[3] = v6.i32[2];
  v10 = vmlaq_laneq_f32(vmulq_laneq_f32(v4, v3, 3), v9, v3, 2);
  v11 = vmulq_f32(*a1, a2[2]);
  v12 = vmulq_f32(v3, xmmword_1C1899C90);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vrev64q_s32(v12);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v16 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v11.f32, 1), vextq_s8(v14, v14, 8uLL), v11.f32[0]), v15, v11, 2);
  v17 = vnegq_f32(v16);
  v18 = vtrn2q_s32(v16, vtrn1q_s32(v16, v17));
  v19 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v16, v17, 8uLL), *v3.f32, 1), vextq_s8(v18, v18, 8uLL), v3.f32[0]);
  v20 = vrev64q_s32(v16);
  v20.i32[0] = v17.i32[1];
  v20.i32[3] = v17.i32[2];
  v21 = vaddq_f32(a1[2], vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v16, v3, 3), v20, v3, 2), v19));
  v21.i32[3] = 0;
  *a3 = result;
  *(a3 + 16) = vaddq_f32(v10, v8);
  *(a3 + 32) = v21;
  return result;
}

uint64_t static AudioFileGroupResource.load(named:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](a1, a2);

  _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZAA05Audioh5GroupD0C_AOTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxv26_0B03URLVtKcfu_AA05Audiog5P9D0C_Tt2G5Tf1nnc_n(a3, a4, a5);
  v10 = v9;

  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v12 = type metadata accessor for AudioFileGroupResource();
    *(inited + 32) = v10;
    *(inited + 56) = v12;
    *(inited + 64) = &protocol witness table for AudioFileGroupResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v10;
}

uint64_t AudioFileGroupResource.addToLoadRequest(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

void *AnimationGroup.group.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;

    return v1;
  }

  v4 = *(v0 + 208);
  if (!*(v4 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  ChildrenTimelineCount = RETimelineDefinitionGetChildrenTimelineCount();
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ChildrenTimelineCount & ~(ChildrenTimelineCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if ((ChildrenTimelineCount & 0x8000000000000000) == 0)
  {
    v1 = result;
    if (ChildrenTimelineCount)
    {
      for (i = 0; i != ChildrenTimelineCount; ++i)
      {
        if (RETimelineDefinitionCreateChildTimelineRef())
        {
          RERetain();
          v8 = specialized static __ServiceLocator.shared.getter();
          swift_beginAccess();
          outlined init with copy of __REAssetService(v8 + 120, v30);
          v9 = v31;
          v10 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          (*(v10 + 32))(v9, v10);
          __swift_destroy_boxed_opaque_existential_1(v30);
          TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
          if (TimelineAsset)
          {
            v12 = TimelineAsset;
            RETimelineDefinitionGetName();
            v13 = String.init(cString:)();
            v15 = v14;
            type metadata accessor for AnimationResource();
            v16 = swift_allocObject();
            v16[2] = v12;
            v16[3] = v13;
            v16[4] = v15;
            RERetain();
            REAssetSetSwiftObject();
            RERelease();
            RERelease();
            AnimationResource.definition.getter(&v27);

            outlined init with take of ForceEffectBase(&v27, v30);
            outlined init with copy of __REAssetService(v30, &v27);
            v33 = v1;
            v18 = v1[2];
            v17 = v1[3];
            if (v18 >= v17 >> 1)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v1);
              v33 = v1;
            }

            __swift_destroy_boxed_opaque_existential_1(v30);
            v19 = v28;
            v20 = v29;
            v21 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
            v22 = *(*(v19 - 8) + 64);
            MEMORY[0x1EEE9AC00](v21);
            v24 = &v26[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (*(v25 + 16))(v24);
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, v24, &v33, v19, v20);
            __swift_destroy_boxed_opaque_existential_1(&v27);
          }

          else
          {
            RERelease();
          }

          RERelease();
        }
      }
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t AnimationGroup.group.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*AnimationGroup.group.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  v13 = *(v1 + 19);
  v14 = *(v1 + 21);
  v15 = *(v1 + 23);
  v16 = *(v1 + 25);
  v9 = *(v1 + 11);
  v10 = *(v1 + 13);
  v11 = *(v1 + 15);
  v12 = *(v1 + 17);
  v5 = *(v1 + 3);
  v6 = *(v1 + 5);
  v7 = *(v1 + 7);
  v8 = *(v1 + 9);
  v4 = *(v1 + 1);
  *a1 = AnimationGroup.group.getter();
  return AnimationGroup.group.modify;
}

uint64_t AnimationGroup.group.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *v3 = v4;
  }

  else
  {
    v7 = a1[2];

    *v3 = v4;
  }

  return result;
}

uint64_t AnimationGroup.name.getter()
{
  if (v0[21])
  {
    v1 = v0[20];
    v2 = v0[21];
  }

  else if (*(v0[26] + 16))
  {
    v3 = v0[21];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t key path getter for AnimationGroup.name : AnimationGroup@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[21];
  if (v4)
  {
    *a2 = a1[20];
    a2[1] = v4;
  }

  else if (*(a1[26] + 16))
  {
    RETimelineDefinitionGetName();
    *a2 = String.init(cString:)();
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t AnimationGroup.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t (*AnimationGroup.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[21];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = v1[20];
    v5 = v3;
  }

  else
  {
    v4 = *(v1[26] + 16);
    if (v4)
    {
      RETimelineDefinitionGetName();
      v4 = String.init(cString:)();
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  *a1 = v4;
  a1[1] = v5;

  return AnimationGroup.name.modify;
}

uint64_t AnimationGroup.name.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 160) = v3;
    *(v5 + 168) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 160) = v3;
    *(v5 + 168) = v2;
  }

  return result;
}

uint64_t AnimationGroup.blendLayer.getter()
{
  if (*(v0 + 200) != 1)
  {
    return *(v0 + 196);
  }

  result = *(*(v0 + 208) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t AnimationGroup.blendLayer.setter(uint64_t result)
{
  *(v1 + 196) = result;
  *(v1 + 200) = 0;
  return result;
}

uint64_t *(*AnimationGroup.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 200) == 1)
  {
    v2 = *(*(v1 + 208) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 208) + 16);
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 196);
  }

  *(a1 + 8) = v2;
  return AnimationGroup.blendLayer.modify;
}

uint64_t *AnimationGroup.blendLayer.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 196) = *(result + 2);
  *(v1 + 200) = 0;
  return result;
}

uint64_t AnimationGroup.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 192);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 208) + 16);
    if (v5)
    {
      v8 = *(v1 + 176);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t key path setter for AnimationGroup.bindTarget : AnimationGroup(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 176);
  v6 = *(a2 + 184);
  v7 = *(a1 + 16);
  v8 = *(a2 + 192);
  outlined copy of BindTarget(*a1, v4, v7);
  result = outlined consume of BindTarget?(v5, v6, v8);
  *(a2 + 176) = v3;
  *(a2 + 184) = v4;
  *(a2 + 192) = v7;
  return result;
}

uint64_t AnimationGroup.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 176), *(v1 + 184), *(v1 + 192));
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  return result;
}

uint64_t (*AnimationGroup.bindTarget.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 192);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 208) + 16);
    if (v6)
    {
      v9 = *(v1 + 176);
      v10 = *(*(v1 + 208) + 16);
      v11 = *(v1 + 184);
      v12 = *(v1 + 192);
      RETimelineDefinitionGetTargetPath();
      v13 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v13, v14, v16);

      LOBYTE(v5) = v12;
      v4 = v11;
      v3 = v9;
      v6 = v16[0];
      v7 = v16[1];
      v8 = v17;
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined copy of BindTarget?(v3, v4, v5);
  return AnimationGroup.bindTarget.modify;
}

uint64_t AnimationGroup.bindTarget.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 176);
  v7 = *(v2 + 184);
  v8 = *(v2 + 192);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 176) = v4;
    *(v2 + 184) = v3;
    *(v2 + 192) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 176), *(v2 + 184), *(v2 + 192));
    *(v2 + 176) = v4;
    *(v2 + 184) = v3;
    *(v2 + 192) = v5;
  }

  return result;
}

uint64_t AnimationGroup.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 202))
  {
    result = *(*(v1 + 208) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 201);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*AnimationGroup.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 202))
  {
    v2 = *(*(v1 + 208) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 208) + 16);
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 201);
  }

  *(a1 + 8) = v2;
  return AnimationGroup.fillMode.modify;
}

uint64_t AnimationGroup.additive.getter()
{
  LODWORD(v1) = *(v0 + 203);
  if (v1 == 2)
  {
    v1 = *(*(v0 + 208) + 16);
    if (v1)
    {
      LOBYTE(v1) = RETimelineDefinitionIsAdditive();
    }
  }

  return v1 & 1;
}

_BYTE *(*AnimationGroup.additive.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  LODWORD(v2) = *(v1 + 203);
  if (v2 == 2)
  {
    v2 = *(*(v1 + 208) + 16);
    if (v2)
    {
      v3 = a1;
      v4 = *(*(v1 + 208) + 16);
      LOBYTE(v2) = RETimelineDefinitionIsAdditive();
      a1 = v3;
    }
  }

  *(a1 + 8) = v2 & 1;
  return AnimationGroup.additive.modify;
}

uint64_t AnimationGroup.trimStart.getter()
{
  if (*(v0 + 17))
  {
    result = *(*(v0 + 152) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 8);
    v2 = *(v0 + 16);
  }

  return result;
}

uint64_t key path getter for AnimationGroup.trimStart : AnimationGroup@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 17))
  {
    result = *(*(result + 152) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 8);
    v3 = *(result + 16);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationGroup.trimStart.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  *(v2 + 17) = 0;
  return result;
}

uint64_t (*AnimationGroup.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 17))
  {
    if (*(*(v1 + 152) + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 8);
    v4 = *(v1 + 16);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return AnimationGroup.trimStart.modify;
}

uint64_t AnimationGroup.trimStart.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t AnimationGroup.trimEnd.getter()
{
  if (*(v0 + 33))
  {
    result = *(*(v0 + 152) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  return result;
}

uint64_t key path getter for AnimationGroup.trimEnd : AnimationGroup@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 33))
  {
    result = *(*(result + 152) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 24);
    v3 = *(result + 32);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationGroup.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  *(v2 + 33) = 0;
  return result;
}

uint64_t (*AnimationGroup.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 33))
  {
    if (*(*(v1 + 152) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return AnimationGroup.trimEnd.modify;
}

uint64_t AnimationGroup.trimEnd.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AnimationGroup.trimDuration.getter()
{
  if (*(v0 + 49))
  {
    result = *(*(v0 + 152) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  return result;
}

uint64_t key path getter for AnimationGroup.trimDuration : AnimationGroup@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 49))
  {
    result = *(*(result + 152) + 16);
    if (result)
    {
      v2 = a2;
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        v3 = 0;
        v4 = *result;
      }

      else
      {
        v4 = 0;
        v3 = 1;
      }

      a2 = v2;
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v4 = *(result + 40);
    v3 = *(result + 48);
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t AnimationGroup.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  *(v2 + 49) = 0;
  return result;
}

uint64_t (*AnimationGroup.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 49))
  {
    if (*(*(v1 + 152) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 40);
    v4 = *(v1 + 48);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return AnimationGroup.trimDuration.modify;
}

uint64_t AnimationGroup.trimDuration.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

double AnimationGroup.offset.getter()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return *(v0 + 56);
  }

  v1 = *(v0 + 152);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

uint64_t key path getter for AnimationGroup.offset : AnimationGroup@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 64))
  {
    v3 = *(result + 152);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipOffset();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 56);
  }

  *a2 = v4;
  return result;
}

void *(*AnimationGroup.offset.modify(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 64))
  {
    v3 = *(v1 + 152);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipOffset();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 56);
  }

  *a1 = v4;
  return AnimationGroup.offset.modify;
}

void *AnimationGroup.offset.modify(void *result)
{
  v1 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = 0;
  return result;
}

double AnimationGroup.delay.getter()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  v1 = *(v0 + 152);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

uint64_t key path getter for AnimationGroup.delay : AnimationGroup@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 80))
  {
    v3 = *(result + 152);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipDelay();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 72);
  }

  *a2 = v4;
  return result;
}

void *(*AnimationGroup.delay.modify(void *a1))(void *result)
{
  a1[1] = v1;
  if (*(v1 + 80))
  {
    v3 = *(v1 + 152);
    v4 = 0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipDelay();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 72);
  }

  *a1 = v4;
  return AnimationGroup.delay.modify;
}

void *AnimationGroup.delay.modify(void *result)
{
  v1 = result[1];
  *(v1 + 72) = *result;
  *(v1 + 80) = 0;
  return result;
}

float AnimationGroup.speed.getter()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 84);
  }

  v1 = *(v0 + 152);
  result = 1.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t key path getter for AnimationGroup.speed : AnimationGroup@<X0>(uint64_t result@<X0>, float *a2@<X8>)
{
  if (*(result + 88))
  {
    v3 = *(result + 152);
    v4 = 1.0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      result = RETimelineDefinitionGetTimelineType();
      if (result == 2)
      {
        result = RETimelineDefinitionGetClipSpeed();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(result + 84);
  }

  *a2 = v4;
  return result;
}

uint64_t *(*AnimationGroup.speed.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 88))
  {
    v3 = *(v1 + 152);
    v4 = 1.0;
    if (*(v3 + 16))
    {
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() == 2)
      {
        RETimelineDefinitionGetClipSpeed();
        v4 = v6;
      }
    }
  }

  else
  {
    v4 = *(v1 + 84);
  }

  *(a1 + 8) = v4;
  return AnimationGroup.speed.modify;
}

uint64_t *AnimationGroup.speed.modify(uint64_t *result)
{
  v1 = *result;
  *(v1 + 84) = *(result + 2);
  *(v1 + 88) = 0;
  return result;
}

uint64_t AnimationGroup.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v1 + 89);
  if (result == 4)
  {
    v3 = *(v1 + 152);
    if (!*(v3 + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    v5 = *(v3 + 16);
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

_BYTE *(*AnimationGroup.repeatMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 89);
  if (v2 == 4)
  {
    v3 = *(v1 + 152);
    if (*(v3 + 16))
    {
      v4 = a1;
      v5 = *(v3 + 16);
      if (RETimelineDefinitionGetTimelineType() != 2)
      {
        LOBYTE(v2) = 0;
        a1 = v4;
        goto LABEL_9;
      }

      ClipLoopBehavior = RETimelineDefinitionGetClipLoopBehavior();
      LOBYTE(v2) = ClipLoopBehavior;
      v7 = ClipLoopBehavior >= 4;
      a1 = v4;
      if (!v7)
      {
        goto LABEL_9;
      }

      a1 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LOBYTE(v2) = 0;
  }

LABEL_9:
  *(a1 + 8) = v2;
  return AnimationGroup.repeatMode.modify;
}

double AnimationGroup.duration.getter()
{
  v0 = AnimationGroup.group.getter();
  v1 = v0[2];
  if (v1)
  {
    v2 = (v0 + 4);
    v3 = 0.0;
    do
    {
      outlined init with copy of __REAssetService(v2, v8);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v6 = (*(v5 + 272))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v8);
      if (v3 <= v6)
      {
        v3 = v6;
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    return 0.0;
  }

  return v3;
}

double AnimationGroup.init(group:name:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, char a13, uint64_t a14, char a15)
{
  v22 = *a4;
  v23 = *a5;

  outlined consume of BindTarget?(0, 0, 0xFFu);
  type metadata accessor for TimelineDefinition();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(a9 + 160) = a2;
  *(a9 + 168) = a3;
  *(a9 + 176) = 0;
  *(a9 + 184) = 0;
  *(a9 + 192) = -1;
  *(a9 + 196) = 0;
  *(a9 + 200) = 0;
  *(a9 + 201) = v23;
  *(a9 + 202) = 0;
  *(a9 + 208) = v24;
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(a9 + 16) = a7 & 1;
  *(a9 + 17) = 0;
  *(a9 + 24) = a8;
  *(a9 + 32) = a13 & 1;
  *(a9 + 33) = 0;
  *(a9 + 40) = a14;
  *(a9 + 48) = a15 & 1;
  *(a9 + 49) = 0;
  *(a9 + 56) = a10;
  *(a9 + 64) = 0;
  *(a9 + 72) = a11;
  *(a9 + 80) = 0;
  *(a9 + 84) = a12;
  *(a9 + 88) = 0;
  *(a9 + 89) = v22;
  *(a9 + 96) = 0;
  *(a9 + 104) = a2;
  *(a9 + 112) = a3;
  result = 0.0;
  *(a9 + 120) = xmmword_1C1898800;
  *(a9 + 136) = 0;
  *(a9 + 140) = 0;
  *(a9 + 144) = 0;
  *(a9 + 145) = 0;
  *(a9 + 146) = 0;
  *(a9 + 147) = 0;
  *(a9 + 152) = v25;
  *a9 = a1;
  *(a9 + 8) = a6;
  return result;
}

uint64_t AnimationGroup.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  swift_retain_n();
  v6 = REAssetHandleAssetType();
  if (v6 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v9 = RETimelineDefinitionCreateFromTimeline();

      *(v4 + 16) = v9;
      if (v9)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v10 = 1;

          if (*(v4 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v12 = ClipSourceRef;
            v16 = swift_allocObject();
            *(v16 + 16) = v12;
            RERetain();
            RERelease();
            v19 = 0;
            v20 = 0;
            v13 = 0;
          }

          else
          {
            v19 = 0;
            v20 = 0;
            v13 = 0;
            v16 = swift_allocObject();
            *(v16 + 16) = 0;
          }

          v18 = 2;
          v17 = v4;
          v15 = 1;
          goto LABEL_17;
        }

        v9 = *(v4 + 16);
      }

      if (v9)
      {
        RETimelineDefinitionGetName();
        v19 = String.init(cString:)();
        v20 = v14;
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v18 = 0;
      v16 = v4;
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      v15 = 0;
      v10 = 0;
      v13 = v4;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 17) = 1;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 33) = 1;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 49) = 1;
      *(a2 + 56) = 0;
      *(a2 + 64) = 1;
      *(a2 + 72) = 0;
      *(a2 + 80) = 1;
      *(a2 + 84) = 0;
      *(a2 + 88) = 1;
      *(a2 + 89) = 4;
      *(a2 + 96) = v13;
      *(a2 + 104) = v19;
      *(a2 + 120) = 0;
      *(a2 + 128) = 0;
      *(a2 + 112) = v20;
      *(a2 + 136) = -1;
      *(a2 + 140) = 0;
      *(a2 + 144) = v15;
      *(a2 + 145) = 0;
      *(a2 + 146) = v10;
      *(a2 + 147) = v18;
      *(a2 + 152) = v17;
      *(a2 + 160) = 0u;
      *(a2 + 176) = 0u;
      *(a2 + 192) = -1;
      *(a2 + 196) = 0x201000100000000;
      *(a2 + 208) = v16;
      return result;
    }
  }

  else
  {
    if (v6 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnimationGroup.createResource()()
{
  v1 = *(v0 + 176);
  v75 = *(v0 + 160);
  v76 = v1;
  v77 = *(v0 + 192);
  v78 = *(v0 + 208);
  v2 = *(v0 + 112);
  *&v74[96] = *(v0 + 96);
  *&v74[112] = v2;
  v3 = *(v0 + 144);
  *&v74[128] = *(v0 + 128);
  *&v74[144] = v3;
  v4 = *(v0 + 48);
  *&v74[32] = *(v0 + 32);
  *&v74[48] = v4;
  v5 = *(v0 + 80);
  *&v74[64] = *(v0 + 64);
  *&v74[80] = v5;
  v6 = *(v0 + 16);
  *v74 = *v0;
  *&v74[16] = v6;
  if (*(&v75 + 1))
  {
    goto LABEL_12;
  }

  if (v77 == 255 && BYTE8(v77) == 1 && BYTE10(v77) == 1 && BYTE11(v77) == 2 && !*v74)
  {
    v7 = *(v0 + 120);
    v54 = *(v0 + 104);
    v55 = v7;
    v56 = *(v0 + 136);
    *&v57 = *(v0 + 152);
    v8 = *(v0 + 56);
    v50 = *(v0 + 40);
    v51 = v8;
    v9 = *(v0 + 88);
    v52 = *(v0 + 72);
    v53 = v9;
    v10 = *(v0 + 24);
    v48 = *(v0 + 8);
    v49 = v10;
    outlined init with copy of TimelineClipProperties(&v74[8], &v64);
    if (!TimelineClipProperties.isClipped.getter())
    {
      goto LABEL_30;
    }

    v54 = *&v74[104];
    v55 = *&v74[120];
    v56 = *&v74[136];
    *&v57 = *&v74[152];
    v50 = *&v74[40];
    v51 = *&v74[56];
    v52 = *&v74[72];
    v53 = *&v74[88];
    v48 = *&v74[8];
    v49 = *&v74[24];
    if (TimelineClipProperties.isModified.getter())
    {
      v70 = *&v74[104];
      v71 = *&v74[120];
      v72 = *&v74[136];
      v73 = *&v74[152];
      v66 = *&v74[40];
      v67 = *&v74[56];
      v68 = *&v74[72];
      v69 = *&v74[88];
      v64 = *&v74[8];
      v65 = *&v74[24];
      v11 = TimelineClipProperties.createClip()();
      v54 = v70;
      v55 = v71;
      v56 = v72;
      *&v57 = v73;
      v50 = v66;
      v51 = v67;
      v52 = v68;
      v53 = v69;
      v48 = v64;
      v49 = v65;
      outlined destroy of TimelineClipProperties(&v48);
    }

    else
    {
LABEL_30:
      outlined destroy of TimelineClipProperties(&v74[8]);
      return TimelineDefinition.resource.getter();
    }

    return v11;
  }

  if (!*(v78 + 16))
  {
LABEL_12:
    outlined init with copy of TimelineBaseProperties(&v75, &v48);
  }

  else
  {
    outlined init with copy of TimelineBaseProperties(&v75, &v48);
    RETimelineDefinitionGetName();
    String.init(cString:)();
  }

  String.utf8CString.getter();

  TimelineGroup = RETimelineDefinitionCreateTimelineGroup();

  v48 = v75;
  v49 = v76;
  v50 = v77;
  *&v51 = v78;
  v37 = TimelineGroup;
  TimelineBaseProperties.writeProperties(_:)(TimelineGroup);
  v62[0] = v48;
  v62[1] = v49;
  v62[2] = v50;
  v63 = v51;
  outlined destroy of TimelineBaseProperties(v62);
  v13 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v13 + 120, &v48);
  v14 = *(&v49 + 1);
  v15 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  (*(v15 + 32))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  v58 = v75;
  v59 = v76;
  v60 = v77;
  v61 = v78;
  v54 = *&v74[96];
  v55 = *&v74[112];
  v56 = *&v74[128];
  v57 = *&v74[144];
  v50 = *&v74[32];
  v51 = *&v74[48];
  v52 = *&v74[64];
  v53 = *&v74[80];
  v48 = *v74;
  v49 = *&v74[16];
  result = AnimationGroup.group.getter();
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v19 = 0;
    v20 = result + 32;
    while (1)
    {
      if (v19 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      outlined init with copy of __REAssetService(v20, &v48);
      outlined init with copy of __REAssetService(&v48, &v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AnimationDefinitionInternal_pMd, &_s17RealityFoundation27AnimationDefinitionInternal_pMR);
      if (!swift_dynamicCast())
      {
        break;
      }

      outlined init with take of ForceEffectBase(&v38, &v64);
      v21 = *(&v65 + 1);
      v22 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      v23 = (*(v22 + 8))(v21, v22);
      ++v19;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v24 = *(v23 + 16);
      RETimelineDefinitionCreateFromTimeline();
      RETimelineDefinitionAddChildTimeline();
      RERelease();

      result = __swift_destroy_boxed_opaque_existential_1(&v48);
      v20 += 40;
      if (v18 == v19)
      {
        goto LABEL_18;
      }
    }

    *&v40 = 0;
    v38 = 0u;
    v39 = 0u;
    outlined destroy of AnimationDefinitionInternal?(&v38);
    v26 = static os_log_type_t.error.getter();
    outlined init with copy of __REAssetService(&v48, &v64);
    type metadata accessor for OS_os_log();
    v27 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v42 = v29;
      *v28 = 136315138;
      v30 = *(&v65 + 1);
      v31 = v66;
      __swift_project_boxed_opaque_existential_1(&v64, *(&v65 + 1));
      v32 = (*(v31 + 8))(v30, v31);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v42);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1C1358000, v27, v26, "Animation group could not create resource for timeline %s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1C6902A30](v29, -1, -1);
      MEMORY[0x1C6902A30](v28, -1, -1);

      v36 = &v48;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v48);
      v36 = &v64;
    }

    __swift_destroy_boxed_opaque_existential_1(v36);
    RERelease();
    return 0;
  }

  else
  {
LABEL_18:

    v54 = *&v74[104];
    v55 = *&v74[120];
    v56 = *&v74[136];
    *&v57 = *&v74[152];
    v50 = *&v74[40];
    v51 = *&v74[56];
    v52 = *&v74[72];
    v53 = *&v74[88];
    v48 = *&v74[8];
    v49 = *&v74[24];
    outlined init with copy of TimelineClipProperties(&v74[8], &v64);
    if (TimelineClipProperties.isClipped.getter())
    {
      v44 = *&v74[40];
      v45 = *&v74[56];
      v46 = *&v74[72];
      v47 = *&v74[88];
      v42 = *&v74[8];
      v43 = *&v74[24];
      v41 = *&v74[152];
      v39 = *&v74[120];
      v40 = *&v74[136];
      v38 = *&v74[104];
      type metadata accessor for TimelineDefinition();
      v25 = swift_allocObject();
      *(v25 + 16) = v37;
      RERetain();

      v50 = v44;
      v51 = v45;
      v52 = v46;
      v48 = v42;
      v49 = v43;
      *&v53 = v47;
      *(&v53 + 1) = v25;
      v54 = v38;
      v55 = v39;
      v56 = v40;
      *&v57 = v41;
      outlined init with copy of TimelineClipProperties(&v48, &v64);
      v11 = *(v25 + 16);
      if (v11)
      {

        closure #1 in TimelineClipProperties.createClip()(&v48, &v64);

        outlined destroy of TimelineClipProperties(&v48);
        v11 = v64;
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v48);
      }

      v66 = v44;
      v67 = v45;
      v68 = v46;
      v64 = v42;
      v65 = v43;
      *&v69 = v47;
      *(&v69 + 1) = v25;
      v73 = v41;
      v71 = v39;
      v72 = v40;
      v70 = v38;
      outlined destroy of TimelineClipProperties(&v64);
    }

    else
    {
      outlined destroy of TimelineClipProperties(&v74[8]);
      type metadata accessor for TimelineDefinition();
      *(swift_allocObject() + 16) = v37;
      RERetain();
      v11 = TimelineDefinition.resource.getter();
      swift_setDeallocating();
      RERelease();
      swift_deallocClassInstance();
    }

    RERelease();
  }

  return v11;
}

uint64_t AnimationGroup.group_.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*AnimationGroup.group_.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return AnimationGroup.group.modify;
}

uint64_t protocol witness for AnimationDefinition.name.getter in conformance AnimationGroup()
{
  if (v0[21])
  {
    v1 = v0[20];
    v2 = v0[21];
  }

  else if (*(v0[26] + 16))
  {
    v3 = v0[21];
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t protocol witness for AnimationDefinition.name.setter in conformance AnimationGroup(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance AnimationGroup(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AnimationGroup.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance AnimationGroup()
{
  if (*(v0 + 200) != 1)
  {
    return *(v0 + 196);
  }

  result = *(*(v0 + 208) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance AnimationGroup(uint64_t result)
{
  *(v1 + 196) = result;
  *(v1 + 200) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance AnimationGroup@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 202))
  {
    result = *(*(v1 + 208) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 201);
  }

  *a1 = result;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance AnimationGroup(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 176), *(v1 + 184), *(v1 + 192));
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimStart.getter in conformance AnimationGroup()
{
  if (*(v0 + 17))
  {
    result = *(*(v0 + 152) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipStart();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 8);
    v2 = *(v0 + 16);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.setter in conformance AnimationGroup(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  *(v2 + 17) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.getter in conformance AnimationGroup()
{
  if (*(v0 + 33))
  {
    result = *(*(v0 + 152) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipEnd();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.setter in conformance AnimationGroup(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  *(v2 + 33) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.getter in conformance AnimationGroup()
{
  if (*(v0 + 49))
  {
    result = *(*(v0 + 152) + 16);
    if (result)
    {
      result = RETimelineDefinitionGetClipDuration();
      if (result)
      {
        return *result;
      }
    }
  }

  else
  {
    result = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.setter in conformance AnimationGroup(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  *(v2 + 49) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.offset.getter in conformance AnimationGroup()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    return *(v0 + 56);
  }

  v1 = *(v0 + 152);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance AnimationGroup(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AnimationGroup.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

double protocol witness for AnimationDefinition.delay.getter in conformance AnimationGroup()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  v1 = *(v0 + 152);
  result = 0.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance AnimationGroup(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = AnimationGroup.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

float protocol witness for AnimationDefinition.speed.getter in conformance AnimationGroup()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 84);
  }

  v1 = *(v0 + 152);
  result = 1.0;
  if (*(v1 + 16))
  {
    v3 = *(v1 + 16);
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.speed.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance AnimationGroup(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AnimationGroup.repeatMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t protocol witness for AnimationDefinitionInternal.generate() in conformance AnimationGroup()
{
  result = AnimationGroup.createResource()();
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v1 = 0xD00000000000001CLL;
    *(v1 + 8) = 0x80000001C18DE2F0;
    *(v1 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 216) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of AnimationDefinitionInternal?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation27AnimationDefinitionInternal_pSgMd, &_s17RealityFoundation27AnimationDefinitionInternal_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void AudioBufferResource.Configuration.normalization.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.Configuration.normalization.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void AudioBufferResource.Configuration.calibration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t AudioBufferResource.Configuration.calibration.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t AudioBufferResource.Configuration.mixGroupName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t AudioBufferResource.Configuration.mixGroupName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AudioBufferResource.Configuration.layoutTagOverride.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 60) = BYTE4(result) & 1;
  return result;
}

uint64_t AudioBufferResource.Configuration.init(shouldLoop:shouldRandomizeStartTime:normalization:calibration:mixGroupName:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a4;
  v10 = *(a4 + 8);
  *a7 = result;
  *(a7 + 1) = a2;
  *(a7 + 8) = v7;
  *(a7 + 16) = v8;
  *(a7 + 24) = v9;
  *(a7 + 32) = v10;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = 0;
  *(a7 + 60) = 1;
  return result;
}

void AudioBufferResource.Configuration.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 60);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  if (v3 == 255)
  {
    Hasher._combine(_:)(0);
    if (v5 == 255)
    {
      goto LABEL_19;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v3)
    {
      if (v3 != 1)
      {
        MEMORY[0x1C68F4C10](0);
        if (v5 == 255)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    MEMORY[0x1C68F4C10](v10);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v2;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1C68F4C50](v11);
    if (v5 == 255)
    {
LABEL_19:
      Hasher._combine(_:)(0);
      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

LABEL_12:
  Hasher._combine(_:)(1u);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1C68F4C10]((v5 & 1) != 0);
  MEMORY[0x1C68F4C50](v12);
  if (!v7)
  {
LABEL_20:
    Hasher._combine(_:)(0);
    if (!v9)
    {
      goto LABEL_21;
    }

LABEL_17:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_16:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v9)
  {
    goto LABEL_17;
  }

LABEL_21:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v8);
}

Swift::Int AudioBufferResource.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AudioBufferResource.Configuration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioBufferResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioBufferResource.Configuration.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioBufferResource.Configuration()
{
  Hasher.init(_seed:)();
  AudioBufferResource.Configuration.hash(into:)();
  return Hasher._finalize()();
}

BOOL specialized static AudioBufferResource.Configuration.== infix(_:_:)(double *a1, double *a2)
{
  v2 = 0;
  if (*a1 != *a2 || ((*(a1 + 1) ^ *(a2 + 1)) & 1) != 0)
  {
    return v2;
  }

  v2 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 14);
  v10 = *(a1 + 60);
  v11 = *(a2 + 16);
  v12 = a2[3];
  v13 = *(a2 + 32);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  v16 = *(a2 + 14);
  v17 = *(a2 + 60);
  v18 = *(a1 + 16) == 255;
  if (v2 == 255)
  {
    if (v11 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == 255)
    {
      return 0;
    }

    v19 = a1[1];
    v20 = a2[1];
    if (v2)
    {
      if (v2 != 1)
      {
        v2 = 0;
        if (v11 != 2 || v20 != 0.0)
        {
          return v2;
        }

        goto LABEL_16;
      }

      v2 = 0;
      if (v11 != 1)
      {
        return v2;
      }
    }

    else if (v11)
    {
      return v2;
    }

    if (v19 != v20)
    {
      return v2;
    }
  }

LABEL_16:
  if (v6 == 255)
  {
    if (v13 != 255)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (v13 == 255)
  {
    return 0;
  }

  v2 = 0;
  if (v6)
  {
    if ((v13 & 1) == 0)
    {
      return v2;
    }
  }

  else if (v13)
  {
    return v2;
  }

  if (v5 == v12)
  {
LABEL_25:
    if (v8)
    {
      if (!v15 || (v7 != v14 || v8 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    if ((v10 & 1) == 0)
    {
      if (v9 == v16)
      {
        v21 = v17;
      }

      else
      {
        v21 = 1;
      }

      return (v21 & 1) == 0;
    }

    return (v17 & 1) != 0;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration()
{
  result = lazy protocol witness table cache variable for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration;
  if (!lazy protocol witness table cache variable for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource.Configuration and conformance AudioBufferResource.Configuration);
  }

  return result;
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioBufferResource.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 61))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for AudioBufferResource.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 61) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t RERenderFrameSettings.deinit()
{
  v1 = *(v0 + 16);
  RERelease();
  return v0;
}

uint64_t RERenderFrameSettings.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t specialized static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6, char a7)
{
  v59 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 123, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 71, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 52, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHideMoveOutAnimation.createVisibilityHideMoveOutAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a7 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a3 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a4);
  v34 = vtrn2q_s32(a4, vtrn1q_s32(a4, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a4);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a4, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v105 = a3;
  v5 = type metadata accessor for UUID();
  v112 = *(v5 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v110 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v113 = v98 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = v98 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v115 = v98 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v98 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v98 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v98 - v21;
  v23 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v111 = *(v23 - 8);
  v24 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v114 = (v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = v98 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v98 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v98 - v33;
  outlined init with copy of __RKEntityInteractionSpecification(a1, v98 - v33, type metadata accessor for __RKEntityTriggerSpecification);
  v103 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v116 = a2;
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) >= 8)
    {
      v36 = *v34;
      v37 = *(*v34 + 16);
      if (v37)
      {
        v38 = (*(v111 + 80) + 32) & ~*(v111 + 80);
        v115 = *v34;
        v39 = v36 + v38;
        v40 = *(v111 + 72);

        v41 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of __RKEntityInteractionSpecification(v39, v31, type metadata accessor for __RKEntityTriggerSpecification);
          v42 = v116;

          specialized __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)(v31, v42);
          outlined destroy of __RKEntityInteractionSpecification(v31, type metadata accessor for __RKEntityTriggerSpecification);
          outlined init with copy of __RKEntityInteractionSpecification(v28, v114, type metadata accessor for __RKEntityTriggerSpecification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v41);
          }

          outlined destroy of __RKEntityInteractionSpecification(v28, type metadata accessor for __RKEntityTriggerSpecification);
          v41[2] = v44 + 1;
          outlined init with take of __RKEntityInteractionSpecification(v114, v41 + v38 + v44 * v40, type metadata accessor for __RKEntityTriggerSpecification);
          v39 += v40;
          --v37;
        }

        while (v37);
      }

      else
      {

        v41 = MEMORY[0x1E69E7CC0];
      }

      *v105 = v41;
LABEL_43:
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_16;
  }

  v109 = v16;
  v101 = v19;
  v45 = v112;
  if (EnumCaseMultiPayload > 2)
  {
    outlined destroy of __RKEntityInteractionSpecification(v34, type metadata accessor for __RKEntityTriggerSpecification);
LABEL_16:
    outlined init with copy of __RKEntityInteractionSpecification(a1, v105, type metadata accessor for __RKEntityTriggerSpecification);
  }

  v46 = v22;
  if (!EnumCaseMultiPayload)
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
    v48 = *&v34[*(v47 + 48)];
    v49 = v34[*(v47 + 64)];
    (*(v45 + 32))(v46, v34, v5);
    v50 = *(v47 + 48);
    v51 = *(v47 + 64);
    swift_beginAccess();
    v52 = v105;
    static UuidRemapHelper.getOrAddUuidMapping(_:_:)(v46, (v116 + 16), v105);
    swift_endAccess();
    (*(v45 + 8))(v46, v5);
    *(v52 + v50) = v48;
    *(v52 + v51) = v49;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v112 + 32))(v22, v34, v5);
    swift_beginAccess();
    static UuidRemapHelper.getOrAddUuidMapping(_:_:)(v22, (a2 + 16), v105);
    swift_endAccess();
    (*(v45 + 8))(v22, v5);
LABEL_18:
    swift_storeEnumTagMultiPayload();
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
  v54 = *&v34[*(v53 + 48)];
  v55 = *&v34[*(v53 + 64)];
  v56 = v101;
  v107 = *(v45 + 32);
  v108 = v45 + 32;
  v107(v101, v34, v5);
  swift_beginAccess();

  static UuidRemapHelper.getOrAddUuidMapping(_:_:)(v56, (a2 + 16), v105);
  swift_endAccess();
  v57 = *(v54 + 16);
  if (!v57)
  {

    (*(v45 + 8))(v56, v5);
    v58 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v95 = *(v53 + 64);
    v96 = v105;
    *(v105 + *(v53 + 48)) = v58;
    *(v96 + v95) = v55;
    goto LABEL_43;
  }

  v99 = v55;
  v100 = v53;
  v118 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
  v58 = v118;
  v60 = *(v45 + 16);
  v59 = v45 + 16;
  v114 = v60;
  v61 = (*(v59 + 64) + 32) & ~*(v59 + 64);
  v98[1] = v54;
  v104 = v61;
  v62 = v54 + v61;
  v111 = *(v59 + 56);
  v102 = (v59 + 24);
  v63 = (v59 - 8);
  v112 = v59;
  v64 = v106;
  while (1)
  {
    v65 = v115;
    v114(v115, v62, v5);
    swift_beginAccess();
    v66 = *(a2 + 16);
    if (!*(v66 + 16))
    {
      break;
    }

    v67 = specialized __RawDictionaryStorage.find<A>(_:)(v65);
    if ((v68 & 1) == 0)
    {
      break;
    }

    v114(v64, *(v66 + 56) + v67 * v111, v5);
    v69 = v109;
    v107(v109, v64, v5);
LABEL_35:
    swift_endAccess();
    v91 = *v63;
    (*v63)(v115, v5);
    v118 = v58;
    v93 = *(v58 + 16);
    v92 = *(v58 + 24);
    if (v93 >= v92 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v92 > 1, v93 + 1, 1);
      v69 = v109;
      v58 = v118;
    }

    *(v58 + 16) = v93 + 1;
    v94 = v111;
    v107((v58 + v104 + v93 * v111), v69, v5);
    v62 += v94;
    --v57;
    a2 = v116;
    if (!v57)
    {
      v91(v101, v5);

      v53 = v100;
      v55 = v99;
      goto LABEL_40;
    }
  }

  v70 = v109;
  UUID.init()();
  v71 = v113;
  v72 = v65;
  v73 = v114;
  v114(v113, v72, v5);
  v73(v110, v70, v5);
  v74 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v117 = *(a2 + 16);
  v76 = v117;
  v77 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
  v79 = v76[2];
  v80 = (v78 & 1) == 0;
  v81 = __OFADD__(v79, v80);
  v82 = v79 + v80;
  if (!v81)
  {
    v83 = v78;
    if (v76[3] >= v82)
    {
      v64 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v87 = v77;
        specialized _NativeDictionary.copy()();
        v77 = v87;
        a2 = v116;
        v85 = v117;
        if (v83)
        {
          goto LABEL_30;
        }

        goto LABEL_32;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v82, isUniquelyReferenced_nonNull_native);
      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v113);
      v64 = v106;
      if ((v83 & 1) != (v84 & 1))
      {
        goto LABEL_47;
      }
    }

    v85 = v117;
    if (v83)
    {
LABEL_30:
      (*v102)(v85[7] + v77 * v111, v110, v5);
      v86 = v113;
LABEL_34:
      (*v63)(v86, v5);
      *(a2 + 16) = v85;
      v69 = v109;
      goto LABEL_35;
    }

LABEL_32:
    v85[(v77 >> 6) + 8] |= 1 << v77;
    v88 = v77 * v111;
    v86 = v113;
    v114((v85[6] + v77 * v111), v113, v5);
    v107((v85[7] + v88), v110, v5);
    v89 = v85[2];
    v81 = __OFADD__(v89, 1);
    v90 = v89 + 1;
    if (v81)
    {
      goto LABEL_46;
    }

    v85[2] = v90;
    a2 = v116;
    goto LABEL_34;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v81 = a2;
  v82 = a1;
  v79 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  v16 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v77 = *(v16 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v68 - v26;
  outlined init with copy of __RKEntityInteractionSpecification(v4, &v68 - v26, type metadata accessor for __RKEntityTriggerSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) >= 8)
    {
      v71 = v16;
      v29 = *v27;
      v30 = *(*v27 + 16);
      if (v30)
      {
        v31 = v78;
        v32 = *(v77 + 80);
        v76 = *v27;
        v80 = (v32 + 32) & ~v32;
        v33 = v29 + v80;
        v34 = *(v77 + 72);
        v35 = MEMORY[0x1E69E7CC0];
        do
        {
          outlined init with copy of __RKEntityInteractionSpecification(v33, v24, type metadata accessor for __RKEntityTriggerSpecification);
          __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)(v82, v81);
          outlined destroy of __RKEntityInteractionSpecification(v24, type metadata accessor for __RKEntityTriggerSpecification);
          outlined init with copy of __RKEntityInteractionSpecification(v21, v31, type metadata accessor for __RKEntityTriggerSpecification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
          }

          v37 = v35[2];
          v36 = v35[3];
          if (v37 >= v36 >> 1)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v35);
          }

          outlined destroy of __RKEntityInteractionSpecification(v21, type metadata accessor for __RKEntityTriggerSpecification);
          v35[2] = v37 + 1;
          outlined init with take of __RKEntityInteractionSpecification(v31, v35 + v80 + v37 * v34, type metadata accessor for __RKEntityTriggerSpecification);
          v33 += v34;
          --v30;
        }

        while (v30);
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      *v79 = v35;
      return swift_storeEnumTagMultiPayload();
    }

    return outlined init with copy of __RKEntityInteractionSpecification(v4, v79, type metadata accessor for __RKEntityTriggerSpecification);
  }

  v72 = v12;
  v80 = v15;
  if (EnumCaseMultiPayload > 2)
  {
    outlined destroy of __RKEntityInteractionSpecification(v27, type metadata accessor for __RKEntityTriggerSpecification);
    return outlined init with copy of __RKEntityInteractionSpecification(v4, v79, type metadata accessor for __RKEntityTriggerSpecification);
  }

  if (EnumCaseMultiPayload)
  {
    v38 = v5;
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v80;
      (*(v6 + 32))(v80, v27, v5);
      v82(v39);
      (*(v6 + 8))(v39, v5);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
      v49 = *&v27[*(v48 + 48)];
      v70 = *&v27[*(v48 + 64)];
      v50 = v72;
      v51 = v27;
      v52 = v49;
      v76 = *(v6 + 32);
      v77 = v6 + 32;
      v76(v72, v51, v38);
      v53 = v79;
      v82(v50);
      v54 = *(v52 + 16);
      if (v54)
      {
        v69 = v48;
        v71 = v16;
        v83 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
        v55 = v83;
        v57 = *(v6 + 16);
        v56 = v6 + 16;
        v58 = *(v56 + 64);
        v68 = v52;
        v74 = (v58 + 32) & ~v58;
        v75 = v57;
        v59 = v52 + v74;
        v73 = *(v56 + 56);
        v78 = (v56 - 8);
        v60 = v80;
        v61 = v9;
        do
        {
          v62 = v56;
          v75(v60, v59, v38);
          v82(v60);
          v60 = v80;
          v63 = *v78;
          (*v78)(v80, v38);
          v83 = v55;
          v65 = *(v55 + 16);
          v64 = *(v55 + 24);
          if (v65 >= v64 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1);
            v60 = v80;
            v55 = v83;
          }

          *(v55 + 16) = v65 + 1;
          v66 = v73;
          v76((v55 + v74 + v65 * v73), v61, v38);
          v59 += v66;
          --v54;
          v56 = v62;
        }

        while (v54);
        v63(v72, v38);

        v53 = v79;
        v48 = v69;
      }

      else
      {

        (*(v6 + 8))(v50, v38);
        v55 = MEMORY[0x1E69E7CC0];
      }

      v67 = *(v48 + 64);
      *(v53 + *(v48 + 48)) = v55;
      *(v53 + v67) = v70;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
    v42 = *&v27[*(v41 + 48)];
    v43 = v27[*(v41 + 64)];
    v44 = v80;
    (*(v6 + 32))(v80, v27, v5);
    v45 = *(v41 + 48);
    v46 = *(v41 + 64);
    v47 = v79;
    v82(v44);
    (*(v6 + 8))(v44, v5);
    *(v47 + v45) = v42;
    *(v47 + v46) = v43;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v207 = a5;
  v203 = a3;
  v204 = a4;
  v205 = a1;
  v206 = a2;
  v5 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v197 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v195 = &v168 - v9;
  v10 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v194 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v168 - v14;
  v15 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v190 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v189 = &v168 - v19;
  v192 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v20 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v196 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v168 - v23;
  v24 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v188 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v187 = &v168 - v28;
  v29 = type metadata accessor for UUID();
  v201 = *(v29 - 8);
  v202 = v29;
  v30 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v200 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v32 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185);
  v186 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v184 = &v168 - v35;
  v36 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v183 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v182 = &v168 - v40;
  v41 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v181 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v180 = &v168 - v45;
  v46 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v179 = &v168 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v178 = &v168 - v50;
  v51 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v177 = &v168 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v176 = &v168 - v55;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v57 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started - 8);
  v175 = &v168 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v174 = &v168 - v60;
  v61 = type metadata accessor for __RKEntityShowActionArguments(0);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v173 = &v168 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v199 = &v168 - v65;
  v66 = type metadata accessor for __RKEntityForceActionArguments(0);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  v172 = &v168 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v171 = &v168 - v70;
  v71 = type metadata accessor for __RKEntityHideActionArguments(0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v170 = &v168 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v198 = &v168 - v75;
  v76 = type metadata accessor for __RKEntityFadeActionArguments(0);
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v169 = &v168 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v168 = &v168 - v80;
  v81 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81 - 8);
  v84 = &v168 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v168 - v86;
  v88 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v91 = &v168 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v168 - v93;
  v95 = type metadata accessor for __RKChangeSceneActionArguments(0);
  v96 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95 - 8);
  v98 = &v168 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v168 - v100;
  v102 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v103 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102 - 8);
  v105 = &v168 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v168 - v107;
  v109 = type metadata accessor for __RKEntityActionSpecification(0);
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v168 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityInteractionSpecification(v208, v112, type metadata accessor for __RKEntityActionSpecification);
  v208 = v109;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with take of __RKEntityInteractionSpecification(v112, v101, type metadata accessor for __RKChangeSceneActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v101, v205, type metadata accessor for __RKChangeSceneActionArguments, &protocol witness table for __RKChangeSceneActionArguments, type metadata accessor for __RKChangeSceneActionArguments, v98);
      outlined destroy of __RKEntityInteractionSpecification(v101, type metadata accessor for __RKChangeSceneActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v98, v207, type metadata accessor for __RKChangeSceneActionArguments);
      break;
    case 2u:
      outlined init with take of __RKEntityInteractionSpecification(v112, v94, type metadata accessor for __RKEntityCustomActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v94, v205, type metadata accessor for __RKEntityCustomActionArguments, &protocol witness table for __RKEntityCustomActionArguments, type metadata accessor for __RKEntityCustomActionArguments, v91);
      outlined destroy of __RKEntityInteractionSpecification(v94, type metadata accessor for __RKEntityCustomActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v91, v207, type metadata accessor for __RKEntityCustomActionArguments);
      break;
    case 3u:
      outlined init with take of __RKEntityInteractionSpecification(v112, v87, type metadata accessor for __RKEntityEmphasisActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v87, v205, type metadata accessor for __RKEntityEmphasisActionArguments, &protocol witness table for __RKEntityEmphasisActionArguments, type metadata accessor for __RKEntityEmphasisActionArguments, v84);
      outlined destroy of __RKEntityInteractionSpecification(v87, type metadata accessor for __RKEntityEmphasisActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v84, v207, type metadata accessor for __RKEntityEmphasisActionArguments);
      break;
    case 4u:
      v124 = v168;
      outlined init with take of __RKEntityInteractionSpecification(v112, v168, type metadata accessor for __RKEntityFadeActionArguments);
      v125 = v169;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v124, v205, type metadata accessor for __RKEntityFadeActionArguments, &protocol witness table for __RKEntityFadeActionArguments, type metadata accessor for __RKEntityFadeActionArguments, v169);
      outlined destroy of __RKEntityInteractionSpecification(v124, type metadata accessor for __RKEntityFadeActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v125, v207, type metadata accessor for __RKEntityFadeActionArguments);
      break;
    case 5u:
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(*(v112 + 1), v112[8], v205, v215, *v112);
      v138 = DWORD1(v215[0]);
      v139 = BYTE8(v215[0]);
      v140 = v207;
      *v207 = v215[0];
      v140[1] = v138;
      *(v140 + 8) = v139;
      break;
    case 6u:
      v145 = *(v112 + 1);
      v215[0] = *v112;
      v215[1] = v145;
      v216 = *(v112 + 16);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v215, v205, v206, v203, v204, v209);
      outlined destroy of __RKEntityActionGroupArguments(v215);
      v146 = v210;
      v147 = v211;
      v148 = v212;
      v149 = v213;
      v150 = v214;
      v151 = v207;
      *v207 = v209[0];
      *(v151 + 1) = v146;
      *(v151 + 16) = v147;
      *(v151 + 3) = v148;
      *(v151 + 32) = v149;
      *(v151 + 33) = v150;
      break;
    case 7u:
      v131 = v112;
      v132 = v198;
      outlined init with take of __RKEntityInteractionSpecification(v131, v198, type metadata accessor for __RKEntityHideActionArguments);
      v133 = v170;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v132, v205, type metadata accessor for __RKEntityHideActionArguments, &protocol witness table for __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments, v170);
      outlined destroy of __RKEntityInteractionSpecification(v132, type metadata accessor for __RKEntityHideActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v133, v207, type metadata accessor for __RKEntityHideActionArguments);
      break;
    case 8u:
      v163 = v171;
      outlined init with take of __RKEntityInteractionSpecification(v112, v171, type metadata accessor for __RKEntityForceActionArguments);
      v164 = v172;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v163, v205, type metadata accessor for __RKEntityForceActionArguments, &protocol witness table for __RKEntityForceActionArguments, type metadata accessor for __RKEntityForceActionArguments, v172);
      outlined destroy of __RKEntityInteractionSpecification(v163, type metadata accessor for __RKEntityForceActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v164, v207, type metadata accessor for __RKEntityForceActionArguments);
      break;
    case 9u:
      v128 = v112;
      v129 = v199;
      outlined init with take of __RKEntityInteractionSpecification(v128, v199, type metadata accessor for __RKEntityShowActionArguments);
      v130 = v173;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v129, v205, type metadata accessor for __RKEntityShowActionArguments, &protocol witness table for __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments, v173);
      outlined destroy of __RKEntityInteractionSpecification(v129, type metadata accessor for __RKEntityShowActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v130, v207, type metadata accessor for __RKEntityShowActionArguments);
      break;
    case 0xAu:
      v161 = v174;
      outlined init with take of __RKEntityInteractionSpecification(v112, v174, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v162 = v175;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v161, v205, v175);
      outlined destroy of __RKEntityInteractionSpecification(v161, type metadata accessor for __RKEntityStartAnimateActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v162, v207, type metadata accessor for __RKEntityStartAnimateActionArguments);
      break;
    case 0xBu:
      v122 = v176;
      outlined init with take of __RKEntityInteractionSpecification(v112, v176, type metadata accessor for __RKEntityStopAnimateActionArguments);
      v123 = v177;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v122, v205, type metadata accessor for __RKEntityStopAnimateActionArguments, &protocol witness table for __RKEntityStopAnimateActionArguments, type metadata accessor for __RKEntityStopAnimateActionArguments, v177);
      outlined destroy of __RKEntityInteractionSpecification(v122, type metadata accessor for __RKEntityStopAnimateActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v123, v207, type metadata accessor for __RKEntityStopAnimateActionArguments);
      break;
    case 0xCu:
      v126 = v178;
      outlined init with take of __RKEntityInteractionSpecification(v112, v178, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      v127 = v179;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v126, v205, type metadata accessor for __RKEntityToggleAnimateActionArguments, &protocol witness table for __RKEntityToggleAnimateActionArguments, type metadata accessor for __RKEntityToggleAnimateActionArguments, v179);
      outlined destroy of __RKEntityInteractionSpecification(v126, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v127, v207, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      break;
    case 0xDu:
      v143 = v180;
      outlined init with take of __RKEntityInteractionSpecification(v112, v180, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      v144 = v181;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v143, v205, type metadata accessor for __RKEntityToggleVisibilityActionArguments, &protocol witness table for __RKEntityToggleVisibilityActionArguments, type metadata accessor for __RKEntityToggleVisibilityActionArguments, v181);
      outlined destroy of __RKEntityInteractionSpecification(v143, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v144, v207, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      break;
    case 0xEu:
      v120 = v182;
      outlined init with take of __RKEntityInteractionSpecification(v112, v182, type metadata accessor for __RKEntityTransformActionArguments);
      v121 = v183;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v120, v205, v206, v183);
      outlined destroy of __RKEntityInteractionSpecification(v120, type metadata accessor for __RKEntityTransformActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v121, v207, type metadata accessor for __RKEntityTransformActionArguments);
      break;
    case 0xFu:
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v205, v215, *v112);
      *v207 = v215[0];
      break;
    case 0x10u:
      v113 = v184;
      outlined init with take of __RKEntityInteractionSpecification(v112, v184, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v114 = v186;
      outlined init with copy of __RKEntityInteractionSpecification(v113, v186, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v115 = v200;
      v116 = v205;
      v205(v114);
      v117 = v202;
      v118 = *(v201 + 40);
      v118(v114, v115, v202);
      v119 = *(v185 + 20);
      v116(v114 + v119);
      outlined destroy of __RKEntityInteractionSpecification(v113, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v118(v114 + v119, v115, v117);
      outlined init with take of __RKEntityInteractionSpecification(v114, v207, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      break;
    case 0x11u:
      v134 = v187;
      outlined init with take of __RKEntityInteractionSpecification(v112, v187, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      v135 = v188;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v134, v205, type metadata accessor for __RKEntityLookAtCameraActionArguments, &protocol witness table for __RKEntityLookAtCameraActionArguments, type metadata accessor for __RKEntityLookAtCameraActionArguments, v188);
      outlined destroy of __RKEntityInteractionSpecification(v134, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v135, v207, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      break;
    case 0x12u:
      v152 = v193;
      outlined init with take of __RKEntityInteractionSpecification(v112, v193, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v153 = v196;
      outlined init with copy of __RKEntityInteractionSpecification(v152, v196, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v154 = v200;
      v155 = v205;
      v205(v153);
      (*(v201 + 40))(v153, v154, v202);
      v156 = v192;
      v157 = *(v192 + 24);
      v158 = v198;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v153 + v157, v155, type metadata accessor for __RKEntityHideActionArguments, &protocol witness table for __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments, v198);
      _s10RealityKit29__RKEntityHideActionArgumentsVWOdTm_0(v158, v153 + v157, type metadata accessor for __RKEntityHideActionArguments);
      v159 = *(v156 + 28);
      v160 = v199;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v153 + v159, v155, type metadata accessor for __RKEntityShowActionArguments, &protocol witness table for __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments, v199);
      outlined destroy of __RKEntityInteractionSpecification(v152, type metadata accessor for __RKEntitySwapEntityActionArguments);
      _s10RealityKit29__RKEntityHideActionArgumentsVWOdTm_0(v160, v153 + v159, type metadata accessor for __RKEntityShowActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v153, v207, type metadata accessor for __RKEntitySwapEntityActionArguments);
      break;
    case 0x13u:
      v165 = v189;
      outlined init with take of __RKEntityInteractionSpecification(v112, v189, type metadata accessor for __RKEntitySpinActionArguments);
      v166 = v190;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v165, v205, type metadata accessor for __RKEntitySpinActionArguments, &protocol witness table for __RKEntitySpinActionArguments, type metadata accessor for __RKEntitySpinActionArguments, v190);
      outlined destroy of __RKEntityInteractionSpecification(v165, type metadata accessor for __RKEntitySpinActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v166, v207, type metadata accessor for __RKEntitySpinActionArguments);
      break;
    case 0x14u:
      v136 = v191;
      outlined init with take of __RKEntityInteractionSpecification(v112, v191, type metadata accessor for __RKEntitySetOpacityActionArguments);
      v137 = v194;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v136, v205, type metadata accessor for __RKEntitySetOpacityActionArguments, &protocol witness table for __RKEntitySetOpacityActionArguments, type metadata accessor for __RKEntitySetOpacityActionArguments, v194);
      outlined destroy of __RKEntityInteractionSpecification(v136, type metadata accessor for __RKEntitySetOpacityActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v137, v207, type metadata accessor for __RKEntitySetOpacityActionArguments);
      break;
    case 0x15u:
      v141 = v195;
      outlined init with take of __RKEntityInteractionSpecification(v112, v195, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      v142 = v197;
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v141, v205, v197);
      outlined destroy of __RKEntityInteractionSpecification(v141, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v142, v207, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      break;
    default:
      outlined init with take of __RKEntityInteractionSpecification(v112, v108, type metadata accessor for __RKEntityAudioActionArguments);
      specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v108, v205, type metadata accessor for __RKEntityAudioActionArguments, &protocol witness table for __RKEntityAudioActionArguments, type metadata accessor for __RKEntityAudioActionArguments, v105);
      outlined destroy of __RKEntityInteractionSpecification(v108, type metadata accessor for __RKEntityAudioActionArguments);
      outlined init with take of __RKEntityInteractionSpecification(v105, v207, type metadata accessor for __RKEntityAudioActionArguments);
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t (*a3)(void, __n128)@<X5>, uint64_t a4@<X6>, uint64_t (*a5)(void)@<X7>, uint64_t a6@<X8>)
{
  v24 = a6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25[-v18 - 8];
  v28 = a3(0, v17);
  v29 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  outlined init with copy of __RKEntityInteractionSpecification(a1, boxed_opaque_existential_1, a5);
  outlined init with copy of __REAssetService(v27, v26);
  v21 = __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v12 + 16))(v15, v21, v11);
  a2(v15);
  (*(v12 + 8))(v15, v11);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  (*(v12 + 40))(v22, v19, v11);
  outlined init with copy of __REAssetService(v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
  swift_dynamicCast();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(int a1@<W0>, char a2@<W1>, void (*a3)(char *)@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-2] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25[-2] - v16;
  *v25 = a5;
  v25[1] = a1;
  v26 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(&v27, v30);
    outlined init with copy of __REAssetService(v30, &v27);
    v24 = a4;
    v18 = a3;
    v19 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v20 + 8))(v19, v20);
    v18(v14);
    (*(v11 + 8))(v14, v10);
    v21 = *(&v28 + 1);
    v22 = v29;
    __swift_mutable_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    (*(v22 + 16))(v17, v21, v22);
    outlined init with copy of __REAssetService(&v27, v25);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v27);
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    result = outlined destroy of BodyTrackingComponent?(&v27, &_s10RealityKit26__RKSpecificationHasTarget_pSgMd, &_s10RealityKit26__RKSpecificationHasTarget_pSgMR);
    *a4 = a5;
    *(a4 + 4) = a1;
    *(a4 + 8) = a2 & 1;
  }

  return result;
}

void specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v8 = *(type metadata accessor for __RKEntityActionSpecification(0) - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29[-v14];
  v16 = *(a1 + 8);
  v17 = *v13;
  v41 = *v13;
  v18 = *(v13 + 16);
  v19 = *(v13 + 24);
  v20 = *(v13 + 32);
  v40 = v20;
  v21 = *(v13 + 33);
  v22 = *(v16 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v30 = *(v13 + 33);
    v31 = v19;
    v32 = v18;
    v33 = v13;
    v34 = a6;
    outlined init with copy of __RKEntityActionGroupArguments(v13, v39);
    v39[0] = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v39[0];
    v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v25 = v16 + v24;
    v26 = *(v8 + 72);
    do
    {
      outlined init with copy of __RKEntityInteractionSpecification(v25, v11, type metadata accessor for __RKEntityActionSpecification);
      __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v35, v36, v37, v38);
      outlined destroy of __RKEntityInteractionSpecification(v11, type metadata accessor for __RKEntityActionSpecification);
      v39[0] = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
        v23 = v39[0];
      }

      *(v23 + 16) = v28 + 1;
      outlined init with take of __RKEntityInteractionSpecification(v15, v23 + v24 + v28 * v26, type metadata accessor for __RKEntityActionSpecification);
      v25 += v26;
      --v22;
    }

    while (v22);
    outlined destroy of __RKEntityActionGroupArguments(v33);
    v17 = v41;
    v20 = v40;
    a6 = v34;
    LOBYTE(v18) = v32;
    v19 = v31;
    v21 = v30;
  }

  *a6 = v17 & 1;
  *(a6 + 8) = v23;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v20 & 1;
  *(a6 + 33) = v21;
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v23 - v19;
  outlined init with copy of __RKEntityInteractionSpecification(a1, a3, type metadata accessor for __RKEntityStartAnimateActionArguments);
  a2(a3);
  (*(v14 + 40))(a3, v20, v13);
  v21 = *(type metadata accessor for __RKEntityStartAnimateActionArguments(0) + 56);
  outlined init with copy of UUID?(a3 + v21, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  (*(v14 + 32))(v17, v12, v13);
  a2(v17);
  (*(v14 + 8))(v17, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  return outlined assign with take of UUID?(v9, a3 + v21);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v25 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityInteractionSpecification(a1, a3, type metadata accessor for __RKEntityPlayTimelineActionArguments);
  a2(a3);
  v16 = *(v12 + 40);
  v16(a3, v15, v11);
  v17 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v18 = *(v17 + 20);
  v26 = a2;
  a2(a3 + v18);
  v19 = a3 + v18;
  v20 = v28;
  v16(v19, v15, v11);
  v21 = v27;
  v22 = *(v17 + 28);
  outlined init with copy of UUID?(a3 + v22, v20);
  v23 = 1;
  if ((*(v12 + 48))(v20, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v20, v11);
    v26(v15);
    (*(v12 + 8))(v15, v11);
    v23 = 0;
  }

  (*(v12 + 56))(v21, v23, 1, v11);
  return outlined assign with take of UUID?(v21, a3 + v22);
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33[1] = a3;
  v34 = a2;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33[0] = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v33 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  v22 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityInteractionSpecification(a1, v25, type metadata accessor for __RKEntityTransformActionArguments);
  v26 = *(v22 + 60);
  outlined init with copy of UUID?(&v25[v26], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of __RKEntityInteractionSpecification(v25, type metadata accessor for __RKEntityTransformActionArguments);
    v39 = v22;
    v40 = &protocol witness table for __RKEntityTransformActionArguments;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    outlined init with copy of __RKEntityInteractionSpecification(a1, boxed_opaque_existential_1, type metadata accessor for __RKEntityTransformActionArguments);
    outlined init with copy of __REAssetService(v38, v37);
    v28 = __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(v12 + 16))(v15, v28, v11);
    v34(v15);
    (*(v12 + 8))(v15, v11);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v37, v37[3]);
    (*(v12 + 40))(v29, v18, v11);
    outlined init with copy of __REAssetService(v37, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v37);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    (*(v12 + 32))(v21, v10, v11);
    v31 = v34;
    v34(v25);
    (*(v12 + 40))(v25, v18, v11);
    v32 = v33[0];
    v31(v21);
    (*(v12 + 8))(v21, v11);
    (*(v12 + 56))(v32, 0, 1, v11);
    outlined assign with take of UUID?(v32, &v25[v26]);
    outlined init with copy of __RKEntityInteractionSpecification(v25, v35, type metadata accessor for __RKEntityTransformActionArguments);
    return outlined destroy of __RKEntityInteractionSpecification(v25, type metadata accessor for __RKEntityTransformActionArguments);
  }
}

uint64_t specialized remapArguments #1 <A>(_:) in __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)@<X0>(void (*a1)(char *)@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21[-2] - v12;
  v21[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit26__RKSpecificationHasTarget_pMd, &_s10RealityKit26__RKSpecificationHasTarget_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ForceEffectBase(&v22, v25);
    outlined init with copy of __REAssetService(v25, &v22);
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v16 = *(v15 + 8);
    v20 = a2;
    v16(v14, v15);
    a1(v10);
    (*(v7 + 8))(v10, v6);
    v17 = *(&v23 + 1);
    v18 = v24;
    __swift_mutable_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    (*(v18 + 16))(v13, v17, v18);
    outlined init with copy of __REAssetService(&v22, v21);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v22);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    result = outlined destroy of BodyTrackingComponent?(&v22, &_s10RealityKit26__RKSpecificationHasTarget_pSgMd, &_s10RealityKit26__RKSpecificationHasTarget_pSgMR);
    *a2 = a3;
  }

  return result;
}

uint64_t Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v56 = a1;
  v57 = a2;
  v55 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v50 = *(v55 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v46 - v9);
  v11 = swift_allocObject();
  *(v11 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SayAC34__RKEntityInteractionSpecificationVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v12 = v11 + 16;
  gatherInteractionSpecifications #1 (from:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(v4, v11);
  v46[1] = v11;
  specialized enumerateCore #1 (entity:recursive:block:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(v4, 1, v11);
  swift_beginAccess();
  v13 = *v12;
  v14 = *v12 + 64;
  v15 = 1 << *(*v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*v12 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  v48 = v14;
  v49 = v13;
  v47 = v18;
  if (v17)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      while (1)
      {
        v22 = (v21 << 9) | (8 * __clz(__rbit64(v17)));
        v23 = *(*(v13 + 56) + v22);
        v24 = *(v23 + 16);
        v54 = *(*(v13 + 48) + v22);
        if (v24)
        {
          v52 = v21;
          v53 = v17;
          v61 = MEMORY[0x1E69E7CC0];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
          v25 = v61;
          v26 = *(v50 + 80);
          v51 = v23;
          v60 = (v26 + 32) & ~v26;
          v27 = v23 + v60;
          v28 = *(v50 + 72);
          do
          {
            outlined init with copy of __RKEntityInteractionSpecification(v27, v7, type metadata accessor for __RKEntityInteractionSpecification);
            v30 = v56;
            v29 = v57;
            __RKEntityTriggerSpecification.remapUUIDs(entityIdentifierMapping:)(v56, v57, v10);
            v31 = v55;
            __RKEntityActionSpecification.remapUUIDs(entityIdentifierMapping:identifierMapping:)(v30, v29, v58, v59, (v10 + *(v55 + 20)));
            v32 = &v7[*(v31 + 24)];
            v34 = *v32;
            v33 = *(v32 + 1);

            outlined destroy of __RKEntityInteractionSpecification(v7, type metadata accessor for __RKEntityInteractionSpecification);
            v35 = (v10 + *(v31 + 24));
            *v35 = v34;
            v35[1] = v33;
            v61 = v25;
            v37 = *(v25 + 16);
            v36 = *(v25 + 24);
            if (v37 >= v36 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1);
              v25 = v61;
            }

            *(v25 + 16) = v37 + 1;
            outlined init with take of __RKEntityInteractionSpecification(v10, v25 + v60 + v37 * v28, type metadata accessor for __RKEntityInteractionSpecification);
            v27 += v28;
            --v24;
          }

          while (v24);

          v14 = v48;
          v13 = v49;
          v18 = v47;
          v21 = v52;
          v17 = v53;
        }

        else
        {

          v25 = MEMORY[0x1E69E7CC0];
        }

        v17 &= v17 - 1;
        swift_beginAccess();
        if (!static __RKEntityInteractionsComponent.registration)
        {

          goto LABEL_6;
        }

        v38 = *(static __RKEntityInteractionsComponent.registration + 3);
        if (!*(v25 + 16))
        {
          break;
        }

        v39 = v54;
        v40 = *(v54 + 16);
        v41 = *(static __RKEntityInteractionsComponent.registration + 3);
        if (!REEntityGetCustomComponent())
        {
          v42 = *(v39 + 16);
          if (!REEntityAddComponentByClass())
          {

            goto LABEL_6;
          }
        }

        if (RECustomComponentGetObject())
        {
          __RKEntityInteractionsComponent.specifications.setter(v25);
        }

        else
        {
        }

        v20 = v21;
        if (!v17)
        {
          goto LABEL_8;
        }

LABEL_7:
        v21 = v20;
      }

      v43 = v54;
      v44 = *(v54 + 16);
      if (REEntityGetCustomComponent())
      {
        v45 = *(v43 + 16);
        REEntityRemoveComponentByClass();
      }

LABEL_6:

      v20 = v21;
      if (!v17)
      {
        continue;
      }

      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t gatherInteractionSpecifications #1 (from:) in Entity.__remapUUIDs(entityIdentifierMapping:interactionIdentifierMapping:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (static __RKEntityInteractionsComponent.registration && (v4 = *(static __RKEntityInteractionsComponent.registration + 3), v5 = *(a1 + 16), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
  {
    v7 = *(Object + 16);
    if (v7)
    {
      v8 = *(Object + 16);

      if (!*(v7 + 16))
      {
      }

LABEL_8:
      swift_beginAccess();

      v9 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(a2 + 16);
      *(a2 + 16) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);

      *(a2 + 16) = v12;
      return swift_endAccess();
    }

    v7 = __RKEntityInteractionsComponent.decodedJSON()();
    if (*(v7 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_8;
    }
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo5RESRTaGMd, &_ss23_ContiguousArrayStorageCySo5RESRTaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV22SoundReductionMaterialVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV22SoundReductionMaterialVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18ScatteringMaterialVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18ScatteringMaterialVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18AbsorptionMaterialVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AcousticModelComponentV18AbsorptionMaterialVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation11IKComponentV6SolverC2IDV_SitGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation11IKComponentV6SolverC2IDV_SitGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo28REMeshAttributeDescriptorRefaGMd, &_ss23_ContiguousArrayStorageCySo28REMeshAttributeDescriptorRefaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit14__DownsamplingV6FactorVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit14__DownsamplingV6FactorVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySVGMd, &_ss23_ContiguousArrayStorageCySVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5Int16VGMd, &_ss23_ContiguousArrayStorageCys5Int16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointV2IDV_SitGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointV2IDV_SitGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintV2IDV_SitGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintV2IDV_SitGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo27REMeshInstanceDefinitionRefaGMd, &_ss23_ContiguousArrayStorageCySo27REMeshInstanceDefinitionRefaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo24REMeshModelDefinitionRefaGMd, &_ss23_ContiguousArrayStorageCySo24REMeshModelDefinitionRefaGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit10__AssetRefVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit10__AssetRefVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySpys4Int8VGSgGMd, &_ss23_ContiguousArrayStorageCySpys4Int8VGSgGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySays6UInt64VGGMd, &_ss23_ContiguousArrayStorageCySays6UInt64VGGMR, &_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit29__RKEntityActionSpecificationOGGMR, &_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit30__RKEntityTriggerSpecificationOGGMR, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVSgGMR, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR, type metadata accessor for __RKEntityInteractionSpecification);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR, type metadata accessor for __RKEntityActionSpecification);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMR, type metadata accessor for __SceneResourceCache.ImportedScene);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_AC4DateVtGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_AC4DateVtGMR, &_s10Foundation3URLV_AA4DateVtMd, &_s10Foundation3URLV_AA4DateVtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy6CoreOC21PhotogrammetrySessionC7RequestOGMd, &_ss23_ContiguousArrayStorageCy6CoreOC21PhotogrammetrySessionC7RequestOGMR, MEMORY[0x1EEE865D8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR, type metadata accessor for __RKEntityTriggerSpecification);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC010__ImportedF0VGMR, type metadata accessor for __SceneImportOperation.__ImportedScene);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13AudioMixGroupVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13AudioMixGroupVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18RESystemDependencyaGMd, &_ss23_ContiguousArrayStorageCySo18RESystemDependencyaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V4size_Si6offsettGMd, &_ss23_ContiguousArrayStorageCys6UInt64V4size_Si6offsettGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19MTLTextureLevelInfoVGMd, &_ss23_ContiguousArrayStorageCySo19MTLTextureLevelInfoVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 104 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMd, &_ss23_ContiguousArrayStorageCySo13simd_float4x4aGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation23SceneResourceLoadResultVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation23SceneResourceLoadResultVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation21PhotogrammetrySessionC10PointCloudV0H0VGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21PhotogrammetrySessionC10PointCloudV0H0VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE4PartVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE4PartVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC9AttributeVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC9AttributeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC6LayoutVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12LowLevelMeshC6LayoutVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation18IKSolverDefinitionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo15CoreIKTransformaGMd, &_ss23_ContiguousArrayStorageCySo15CoreIKTransformaGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12geom_bbox_2daGMd, &_ss23_ContiguousArrayStorageCySo12geom_bbox_2daGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedShapeDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedShapeDescriptorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 520);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[520 * v8])
    {
      memmove(v12, v13, 520 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit16CollisionCastHitVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit26__RKMaterialParameterBlockV15TransparentPassO4pass_Si13techniqueHashtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13CurveExtruderV10ShapePointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13CurveExtruderV10ShapePointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySdGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation13ComponentInfoVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13ComponentInfoVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 48 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSSutGMd, &_ss23_ContiguousArrayStorageCySS_SSSutGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SSSutMd, &_sSS_SSSutMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_ypyptGMd, &_ss23_ContiguousArrayStorageCyyp_ypyptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_ypyptMd, &_syp_ypyptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGAF07RESceneH0CtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGAF07RESceneH0CtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGAD07RESceneE0CtMd, &_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGAD07RESceneE0CtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation7WeakRefVy0D3Kit6EntityCACE14LoadStatisticsC8ObserverCGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation7WeakRefVy0D3Kit6EntityCACE14LoadStatisticsC8ObserverCGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMd, &_s17RealityFoundation7WeakRefVy0A3Kit6EntityCAAE14LoadStatisticsC8ObserverCGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation29StateMachineParameterProtocol_pMd, &_s17RealityFoundation29StateMachineParameterProtocol_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SitGMd, &_ss23_ContiguousArrayStorageCySS_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd, &_sSS_SitMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMd, &_sSi6offset_17RealityFoundation28_Proto_SkeletonDefinition_v1V5JointV7elementtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}