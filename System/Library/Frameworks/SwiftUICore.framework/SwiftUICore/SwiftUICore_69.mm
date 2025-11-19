uint64_t closure #1 in Resolver.adjustMaterializedEntry(_:isRemoval:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a3 + 256);
  v7 = *(a3 + 264);
  if (a2)
  {
    static GlassContainer.AppearanceSettings.match.getter(v160);
    v117 = *&v160[8];
    v9 = *&v160[24];
    if (v7)
    {

      v10 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v8);
    }

    else
    {
      v10 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v8);
    }

    if (v10 == 2)
    {
      *v160 = v8;
      *&v160[8] = v7;
      LOBYTE(v148) = 2;
      v10 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v148);
    }

    v13 = 1.2;
    if (v10)
    {
      v13 = 1.0;
    }

    *(a1 + 72) = v13;
    *(a1 + 80) = v117;
    *(a1 + 96) = v9;
    v14 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v14 = 0.0;
    }

    *(a1 + 32) = v14;
    *(a1 + 56) = xmmword_18DDAA020;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 416) = 2;
    v15 = *(a4 + 40);
    v16 = *(a4 + 48);
    v17 = *(a4 + 56);
    v18 = *(a4 + 64);
    v19 = *(a4 + 72);
    v20 = *(a4 + 80);
    v21 = *(a4 + 152);
    v115 = *(a4 + 144);
    *(a4 + 144) = v15;
    *(a4 + 152) = v16;
    *(a4 + 160) = v17;
    *(a4 + 168) = v18;
    *(a4 + 176) = v19;
    *(a4 + 184) = v20;
    outlined copy of _Glass.Variant.Role(v15, v16);

    outlined copy of _Glass.Variant.Role(v15, v16);

    outlined consume of _Glass.Variant.Role(v115, v21);

    v22 = *(a4 + 272);
    v23 = *(a4 + 280);
    v24 = *(a4 + 288);
    v25 = *(a4 + 296);
    *(a4 + 272) = v15;
    *(a4 + 280) = v16;
    *(a4 + 288) = v17;
    *(a4 + 296) = v18;
    *(a4 + 304) = v19;
    *(a4 + 312) = v20;
    outlined consume of _Glass?(v22, v23, v24, v25);
    v26 = *(a4 + 224);
    v27 = *(a4 + 232);
    v28 = *(a4 + 240);
    v29 = *(a4 + 248);
    *(a4 + 224) = xmmword_18DDAA050;
    *(a4 + 248) = 0;
    *(a4 + 256) = 0;
    *(a4 + 240) = 5;
    *(a4 + 264) = 0;
    outlined consume of _Glass?(v26, v27, v28, v29);
    *(a4 + 316) = a5;
    v30 = *(a4 + 288);
    v31 = *(a4 + 256);
    v132 = *(a4 + 272);
    v133 = v30;
    v32 = *(a4 + 224);
    v33 = *(a4 + 192);
    v128 = *(a4 + 208);
    v129 = v32;
    v34 = *(a4 + 224);
    v35 = *(a4 + 256);
    v130 = *(a4 + 240);
    v131 = v35;
    v36 = *(a4 + 160);
    v124 = *(a4 + 144);
    v125 = v36;
    v37 = *(a4 + 192);
    v39 = *(a4 + 144);
    v38 = *(a4 + 160);
    v126 = *(a4 + 176);
    v40 = v126;
    v127 = v37;
    v41 = *(a4 + 288);
    v134 = *(a4 + 304);
    v144 = v132;
    v145 = v41;
    v146 = *(a4 + 304);
    v140 = v128;
    v141 = v34;
    v142 = v130;
    v143 = v31;
    v136 = v39;
    v137 = v38;
    *(a4 + 320) = 0;
    v135 = 0;
    v147 = 0;
    v138 = v40;
    v139 = v33;
    _ViewInputs.base.modify(&v136, v42);
    v43 = *(a1 + 576);
    v156 = *(a1 + 560);
    v157 = v43;
    v158 = *(a1 + 592);
    v159 = *(a1 + 608);
    v44 = *(a1 + 512);
    v152 = *(a1 + 496);
    v153 = v44;
    v45 = *(a1 + 544);
    v154 = *(a1 + 528);
    v155 = v45;
    v46 = *(a1 + 448);
    v148 = *(a1 + 432);
    v149 = v46;
    v47 = *(a1 + 480);
    v150 = *(a1 + 464);
    v151 = v47;
    v48 = v145;
    *(a1 + 560) = v144;
    *(a1 + 576) = v48;
    *(a1 + 592) = v146;
    *(a1 + 608) = v147;
    v49 = v141;
    *(a1 + 496) = v140;
    *(a1 + 512) = v49;
    v50 = v143;
    *(a1 + 528) = v142;
    *(a1 + 544) = v50;
    v51 = v137;
    *(a1 + 432) = v136;
    *(a1 + 448) = v51;
    v52 = v139;
    *(a1 + 464) = v138;
    *(a1 + 480) = v52;
    outlined init with copy of GlassContainer.DisplayMaterial(&v124, v123);
    outlined destroy of SeedValue<GlassContainer.EntryState>(&v148, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    v53 = *(a1 + 576);
    v167 = *(a1 + 560);
    v168 = v53;
    v169 = *(a1 + 592);
    v170 = *(a1 + 608);
    v54 = *(a1 + 512);
    v163 = *(a1 + 496);
    v164 = v54;
    v55 = *(a1 + 544);
    v165 = *(a1 + 528);
    v166 = v55;
    v56 = *(a1 + 448);
    *v160 = *(a1 + 432);
    *&v160[16] = v56;
    v57 = *(a1 + 480);
    v161 = *(a1 + 464);
    v162 = v57;
    result = _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v160);
    if (result != 1)
    {
      outlined consume of _Glass.Variant.Role(*(a1 + 432), *(a1 + 440));

      *(a1 + 432) = xmmword_18DDAA050;
      *(a1 + 448) = 5;
      *(a1 + 456) = 0;
      *(a1 + 464) = 0;
      *(a1 + 472) = 0;
    }
  }

  else
  {
    static GlassContainer.AppearanceSettings.match.getter(v160);
    v118 = *&v160[8];
    v11 = *&v160[24];
    if (v7)
    {

      v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v8);
    }

    else
    {
      v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v8);
    }

    if (v12 == 2)
    {
      *v160 = v8;
      *&v160[8] = v7;
      LOBYTE(v148) = 2;
      v12 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v148);
    }

    *(a1 + 80) = v118;
    v59 = 1.2;
    *(a1 + 96) = v11;
    v60 = 1.0;
    if (v12)
    {
      v59 = 1.0;
    }

    if (!*(a1 + 48))
    {
      v60 = *(a1 + 40);
    }

    *(a1 + 32) = v60;
    *(a1 + 56) = 0;
    *(a1 + 64) = v11;
    *(a1 + 72) = v59;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 416) = 0;
    v61 = *(a4 + 40);
    v62 = *(a4 + 48);
    v119 = *(a4 + 56);
    v63 = *(a4 + 64);
    v114 = *(a4 + 72);
    v116 = *(a4 + 80);
    v64 = *(a4 + 144);
    v65 = *(a4 + 152);
    *(a4 + 144) = xmmword_18DDAA050;
    *(a4 + 160) = 5;
    *(a4 + 184) = 0;
    *(a4 + 168) = 0;
    *(a4 + 176) = 0;
    outlined copy of _Glass.Variant.Role(v61, v62);

    outlined consume of _Glass.Variant.Role(v64, v65);

    v66 = *(a4 + 272);
    v67 = *(a4 + 280);
    v68 = *(a4 + 288);
    v69 = *(a4 + 296);
    *(a4 + 272) = xmmword_18DDAA050;
    *(a4 + 296) = 0;
    *(a4 + 304) = 0;
    *(a4 + 288) = 5;
    *(a4 + 312) = 0;
    outlined consume of _Glass?(v66, v67, v68, v69);
    v70 = *(a4 + 224);
    v71 = *(a4 + 232);
    v72 = *(a4 + 240);
    v73 = *(a4 + 248);
    *(a4 + 224) = v61;
    *(a4 + 232) = v62;
    *(a4 + 240) = v119;
    *(a4 + 248) = v63;
    *(a4 + 256) = v114;
    *(a4 + 264) = v116;
    outlined consume of _Glass?(v70, v71, v72, v73);
    *(a4 + 316) = a5;
    v74 = *(a4 + 288);
    v75 = *(a4 + 256);
    v132 = *(a4 + 272);
    v133 = v74;
    v76 = *(a4 + 224);
    v77 = *(a4 + 192);
    v128 = *(a4 + 208);
    v129 = v76;
    v78 = *(a4 + 224);
    v79 = *(a4 + 256);
    v130 = *(a4 + 240);
    v131 = v79;
    v80 = *(a4 + 160);
    v124 = *(a4 + 144);
    v125 = v80;
    v81 = *(a4 + 192);
    v83 = *(a4 + 144);
    v82 = *(a4 + 160);
    v126 = *(a4 + 176);
    v84 = v126;
    v127 = v81;
    v85 = *(a4 + 288);
    v134 = *(a4 + 304);
    v144 = v132;
    v145 = v85;
    v146 = *(a4 + 304);
    v140 = v128;
    v141 = v78;
    v142 = v130;
    v143 = v75;
    v136 = v83;
    v137 = v82;
    *(a4 + 320) = 0;
    v135 = 0;
    v147 = 0;
    v138 = v84;
    v139 = v77;
    _ViewInputs.base.modify(&v136, v86);
    v87 = *(a1 + 576);
    v156 = *(a1 + 560);
    v157 = v87;
    v158 = *(a1 + 592);
    v159 = *(a1 + 608);
    v88 = *(a1 + 512);
    v152 = *(a1 + 496);
    v153 = v88;
    v89 = *(a1 + 544);
    v154 = *(a1 + 528);
    v155 = v89;
    v90 = *(a1 + 448);
    v148 = *(a1 + 432);
    v149 = v90;
    v91 = *(a1 + 480);
    v150 = *(a1 + 464);
    v151 = v91;
    v92 = v145;
    *(a1 + 560) = v144;
    *(a1 + 576) = v92;
    *(a1 + 592) = v146;
    *(a1 + 608) = v147;
    v93 = v141;
    *(a1 + 496) = v140;
    *(a1 + 512) = v93;
    v94 = v143;
    *(a1 + 528) = v142;
    *(a1 + 544) = v94;
    v95 = v137;
    *(a1 + 432) = v136;
    *(a1 + 448) = v95;
    v96 = v139;
    *(a1 + 464) = v138;
    *(a1 + 480) = v96;
    outlined init with copy of GlassContainer.DisplayMaterial(&v124, v123);
    outlined destroy of SeedValue<GlassContainer.EntryState>(&v148, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    v97 = *(a1 + 576);
    v167 = *(a1 + 560);
    v168 = v97;
    v169 = *(a1 + 592);
    v170 = *(a1 + 608);
    v98 = *(a1 + 512);
    v163 = *(a1 + 496);
    v164 = v98;
    v99 = *(a1 + 544);
    v165 = *(a1 + 528);
    v166 = v99;
    v100 = *(a1 + 448);
    *v160 = *(a1 + 432);
    *&v160[16] = v100;
    v101 = *(a1 + 480);
    v161 = *(a1 + 464);
    v162 = v101;
    result = _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v160);
    if (result != 1)
    {
      v102 = *(a4 + 40);
      v103 = *(a4 + 48);
      v104 = *(a4 + 56);
      v105 = *(a4 + 64);
      v106 = *(a4 + 72);
      v122 = *(a4 + 80);
      v107 = *(a1 + 432);
      v108 = *(a1 + 440);
      outlined copy of _Glass.Variant.Role(v102, v103);

      outlined consume of _Glass.Variant.Role(v107, v108);

      *(a1 + 432) = v102;
      *(a1 + 440) = v103;
      *(a1 + 448) = v104;
      *(a1 + 456) = v105;
      *(a1 + 464) = v106;
      *(a1 + 472) = v122;
    }
  }

  v109 = *(a4 + 64);
  if (v109)
  {
    v110 = one-time initialization token for clear;

    if (v110 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v111 = static Color.clear;
    }

    else
    {
      v111 = v109;
    }

    if ((a2 & 1) == 0)
    {
      v109 = static Color.clear;
    }

    type metadata accessor for ColorBox<Color.MixProvider>();
    v112 = swift_allocObject();
    *(v112 + 16) = v109;
    *(v112 + 24) = v111;
    *(v112 + 32) = 2;
    *(v112 + 36) = 0;
    *(a4 + 64) = v112;

    v113 = swift_allocObject();
    *(v113 + 16) = v109;
    *(v113 + 24) = v111;
    *(v113 + 32) = 2;
    *(v113 + 36) = 1065353216;

    *(a1 + 616) = v113;
  }

  return result;
}

uint64_t specialized getter of containsSource #1 in Resolver.canReuseEntry(_:sourceResult:isRemoval:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (v3 == 2)
  {
    v5 = *(a2 + 80);
    v6 = *(a3 + 16);
    v8[0] = *a3;
    v8[1] = v6;
    v9 = *(a3 + 32);
    LOBYTE(v3) = specialized Set.contains(_:)(v8, v5);
    swift_beginAccess();
    *a1 = v3 & 1;
  }

  return v3 & 1;
}

double specialized GlassContainer.MatchingResult.transitionAnchor(containerSize:)(double a1)
{
  v4 = *(v1 + 344);
  v3 = *(v1 + 352);
  v5 = *(v1 + 360);
  v6 = *(v1 + 368);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  v11.origin.x = v4;
  v11.origin.y = v3;
  v11.size.width = v5;
  v11.size.height = v6;
  v7 = 0.5;
  if (!CGRectEqualToRect(v11, v16))
  {
    v17.origin.x = 0.0;
    v17.origin.y = 0.0;
    v17.size.width = 0.0;
    v17.size.height = 0.0;
    if (!CGRectEqualToRect(*(v1 + 376), v17))
    {
      v12.origin.x = v4;
      v12.origin.y = v3;
      v12.size.width = v5;
      v12.size.height = v6;
      v8 = v4 + CGRectGetWidth(v12) * 0.5;
      v13.origin.x = v4;
      v13.origin.y = v3;
      v13.size.width = v5;
      v13.size.height = v6;
      CGRectGetHeight(v13);
      if (a1 * 0.5 >= v8)
      {
        v9 = 0.5;
      }

      else
      {
        v9 = 1.0;
      }

      if (v8 >= a1 * 0.5)
      {
        v7 = v9;
      }

      else
      {
        v7 = 0.0;
      }

      v14.origin.x = v4;
      v14.origin.y = v3;
      v14.size.width = v5;
      v14.size.height = v6;
      CGRectGetWidth(v14);
      v15.origin.x = v4;
      v15.origin.y = v3;
      v15.size.width = v5;
      v15.size.height = v6;
      CGRectGetHeight(v15);
    }
  }

  return v7;
}

void specialized closure #1 in Resolver.log(_:)()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136315138;
    _StringGuts.grow(_:)(19);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v4);

    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018DD74F20, &v6);

    *(v2 + 4) = v5;
    _os_log_impl(&dword_18D018000, v0, v1, "Glass container %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x193AC4820](v3, -1, -1);
    MEMORY[0x193AC4820](v2, -1, -1);
  }
}

{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v6 = v3;
    *v2 = 136315138;
    _StringGuts.grow(_:)(24);

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v4);

    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018DD74F70, &v6);

    *(v2 + 4) = v5;
    _os_log_impl(&dword_18D018000, v0, v1, "Glass container %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x193AC4820](v3, -1, -1);
    MEMORY[0x193AC4820](v2, -1, -1);
  }
}

{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000018DD74F40, &v4);
    _os_log_impl(&dword_18D018000, v0, v1, "Glass container %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x193AC4820](v3, -1, -1);
    MEMORY[0x193AC4820](v2, -1, -1);
  }
}

{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018DD74FF0, &v4);
    _os_log_impl(&dword_18D018000, v0, v1, "Glass container %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x193AC4820](v3, -1, -1);
    MEMORY[0x193AC4820](v2, -1, -1);
  }
}

{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000018DD74F90, &v4);
    _os_log_impl(&dword_18D018000, v0, v1, "Glass container %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x193AC4820](v3, -1, -1);
    MEMORY[0x193AC4820](v2, -1, -1);
  }
}

{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000018DD74FC0, &v4);
    _os_log_impl(&dword_18D018000, v0, v1, "Glass container %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x193AC4820](v3, -1, -1);
    MEMORY[0x193AC4820](v2, -1, -1);
  }
}

void ResolvedIDs.Key.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (v1[4] < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v3);
    return;
  }

  v5 = v1[1];
  v4 = v1[2];
  v6 = *(v1 + 32);
  v7 = v1[3];
  MEMORY[0x193AC11A0](0);
  if (v6)
  {
    if (v6 == 1)
    {
      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v3);
      if (!v5)
      {
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(1u);
      (*(*v5 + 120))(a1);
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(a1);
    Hasher._combine(_:)(BYTE1(v5) & 1);
    (*(*v4 + 120))(a1);
    v8 = v7;
  }

  MEMORY[0x193AC11A0](v8);
}

Swift::Int ResolvedIDs.Key.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5 < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v2);
        if (!v1)
        {
          Hasher._combine(_:)(0);
          return Hasher._finalize()();
        }

        Hasher._combine(_:)(1u);
        (*(*v1 + 120))(v8);
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      MEMORY[0x193AC11A0](1);
      _Glass.Variant.ID.hash(into:)(v8);
      Hasher._combine(_:)(BYTE1(v1) & 1);
      (*(*v3 + 120))(v8);
      v6 = v4;
    }

    MEMORY[0x193AC11A0](v6);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ResolvedIDs.Key()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v5 < 0)
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v2);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x193AC11A0](2);
        Hasher._combine(_:)(v2);
        if (!v1)
        {
          Hasher._combine(_:)(0);
          return Hasher._finalize()();
        }

        Hasher._combine(_:)(1u);
        (*(*v1 + 120))(v8);
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      MEMORY[0x193AC11A0](1);
      _Glass.Variant.ID.hash(into:)(v8);
      Hasher._combine(_:)(BYTE1(v1) & 1);
      (*(*v3 + 120))(v8);
      v6 = v4;
    }

    MEMORY[0x193AC11A0](v6);
  }

  return Hasher._finalize()();
}

uint64_t ResolvedIDs.existingID(entry:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 128);
  v5 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v5;
  v27 = v3;
  v6 = *v1;
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);
      v10 = *(v2 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__dst = *v2;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v10, v26, isUniquelyReferenced_nonNull_native);
      v12 = *__dst;
      goto LABEL_14;
    }
  }

  v13 = *(v4 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = 0;
  v15 = (v4 + 32);
  v16 = v13 - 1;
  while (1)
  {
    memcpy(__dst, v15, 0x289uLL);
    v24[0] = __dst[0];
    memset(&v24[1], 0, 24);
    v25 = 0x80;
    if (*(v6 + 16))
    {
      break;
    }

LABEL_9:
    if (v16 == v14)
    {
      return 0;
    }

    ++v14;
    v15 += 656;
    if (v14 >= *(v4 + 16))
    {
      __break(1u);
      return 0;
    }
  }

  outlined init with copy of GlassContainer.Item(__dst, v22);
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
  if ((v18 & 1) == 0)
  {
    outlined destroy of GlassContainer.Item(__dst);
    goto LABEL_9;
  }

  v9 = *(*(v6 + 56) + 16 * v17);
  v19 = *(v2 + 2);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v22[0] = *v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v19, v24, v20);
  outlined destroy of GlassContainer.Item(__dst);
  v12 = v22[0];
LABEL_14:
  *v2 = v12;
  return v9;
}

uint64_t ResolvedIDs.updateID(_:entry:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a2;
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = *(a3 + 128);
  v53[0] = *a3;
  v53[1] = v7;
  v53[2] = v8;
  v53[3] = v9;
  v54 = v10;
  if (a2)
  {
    outlined copy of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    specialized Dictionary._Variant.removeValue(forKey:)(v53, __dst);
    result = outlined consume of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    v13 = *(v11 + 16);
    if (!v13)
    {
      return result;
    }
  }

  else
  {
    v46 = *(v3 + 8);
    outlined copy of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__dst = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v46, v53, isUniquelyReferenced_nonNull_native);
    result = outlined consume of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
    *v3 = *__dst;
    v13 = *(v11 + 16);
    if (!v13)
    {
      return result;
    }
  }

  v16 = 0;
  v17 = (v11 + 32);
  v18 = v13 - 1;
  do
  {
    memcpy(__dst, v17, 0x289uLL);
    v50 = __dst[0];
    v51 = 0uLL;
    v52 = 0x80;
    if (v5)
    {
      outlined init with copy of GlassContainer.Item(__dst, v48);
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(&v50);
      if (v20)
      {
        v21 = v19;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v4;
        v48[0] = *v4;
        if (!v22)
        {
          specialized _NativeDictionary.copy()();
          v23 = v48[0];
        }

        v24 = *(v23 + 48) + 40 * v21;
        outlined consume of ResolvedIDs.Key(*v24, *(v24 + 8), *(v24 + 16), *(v24 + 24), *(v24 + 32));
        specialized _NativeDictionary._delete(at:)(v21, v23);
        result = outlined destroy of GlassContainer.Item(__dst);
        *v4 = v23;
      }

      else
      {
        result = outlined destroy of GlassContainer.Item(__dst);
      }
    }

    else
    {
      v25 = v11;
      v26 = v5;
      v27 = *(v4 + 8);
      outlined init with copy of GlassContainer.Item(__dst, v48);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = *v4;
      v29 = v48[0];
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(&v50);
      v32 = *(v29 + 16);
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_27;
      }

      v36 = v31;
      if (*(v29 + 24) >= v35)
      {
        if ((v28 & 1) == 0)
        {
          v45 = v30;
          specialized _NativeDictionary.copy()();
          v30 = v45;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v28);
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(&v50);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_29;
        }
      }

      v38 = v48[0];
      if (v36)
      {
        v39 = *(v48[0] + 56) + 16 * v30;
        *v39 = a1;
        *(v39 + 8) = v27;
        result = outlined destroy of GlassContainer.Item(__dst);
      }

      else
      {
        *(v48[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v40 = v38[6] + 40 * v30;
        v41 = v51;
        *v40 = v50;
        *(v40 + 16) = v41;
        *(v40 + 32) = v52;
        v42 = v38[7] + 16 * v30;
        *v42 = a1;
        *(v42 + 8) = v27;
        result = outlined destroy of GlassContainer.Item(__dst);
        v43 = v38[2];
        v34 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v34)
        {
          goto LABEL_28;
        }

        v38[2] = v44;
      }

      *v4 = v38;
      v5 = v26;
      v11 = v25;
    }

    if (v18 == v16)
    {
      return result;
    }

    ++v16;
    v17 += 656;
  }

  while (v16 < *(v11 + 16));
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t ResolverMessage.description.getter()
{
  memcpy(__dst, v0, 0x2BCuLL);
  v1 = _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOg(__dst);
  if (v1 <= 4)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        destructiveProjectEnumData for ResolverMessage(__dst);
        _StringGuts.grow(_:)(50);

        v73 = 0xD00000000000001FLL;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v19);

        MEMORY[0x193ABEDD0](0x2077656E206F7420, 0xEE0020746E756F63);
        v20 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v20);

        MEMORY[0x193ABEDD0](34, 0xE100000000000000);
        return v73;
      }

      v34 = *(destructiveProjectEnumData for ResolverMessage(__dst) + 136);
      v35 = *(v34 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v35)
      {
        v76 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
        v23 = v76;
        v36 = *(v76 + 16);
        v37 = 24 * v36 + 48;
        v38 = (v34 + 48);
        do
        {
          v39 = *(v38 - 4);
          v40 = *(v38 - 1);
          v41 = *v38;
          v42 = v36 + 1;
          v43 = *(v76 + 24);

          if (v36 >= v43 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v42, 1);
          }

          v38 += 82;
          *(v76 + 16) = v42;
          v44 = (v76 + v37);
          *(v44 - 4) = v39;
          *(v44 - 1) = v40;
          *v44 = v41;
          v37 += 24;
          ++v36;
          --v35;
        }

        while (v35);
      }

      v73 = 0;
      _StringGuts.grow(_:)(46);
      MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DD75050);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v68);

      MEMORY[0x193ABEDD0](0x20444977656E202CLL, 0xE800000000000000);
      _print_unlocked<A, B>(_:_:)();
      v46 = 0x4977656E202CLL;
    }

    else
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          destructiveProjectEnumData for ResolverMessage(__dst);
          _StringGuts.grow(_:)(24);

          v33 = 0xD000000000000016;
          goto LABEL_30;
        }

        v4 = destructiveProjectEnumData for ResolverMessage(__dst);
        v5 = *(v4 + 144);
        v6 = *(v5 + 16);
        v7 = MEMORY[0x1E69E7CC0];
        if (v6)
        {
          v71 = v4;
          v74 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
          v7 = v74;
          v8 = *(v74 + 16);
          v9 = 24 * v8 + 48;
          v10 = (v5 + 48);
          do
          {
            v11 = *(v10 - 4);
            v12 = *(v10 - 1);
            v13 = *v10;
            v14 = v8 + 1;
            v15 = *(v74 + 24);

            if (v8 >= v15 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14, 1);
            }

            v10 += 82;
            *(v74 + 16) = v14;
            v16 = (v74 + v9);
            *(v16 - 4) = v11;
            *(v16 - 1) = v12;
            *v16 = v13;
            v9 += 24;
            ++v8;
            --v6;
          }

          while (v6);
          v4 = v71;
        }

        v47 = *(v4 + 488);
        v48 = *(v47 + 16);
        v49 = MEMORY[0x1E69E7CC0];
        if (v48)
        {
          v72 = v7;
          v77 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
          v49 = v77;
          v50 = *(v77 + 16);
          v51 = 24 * v50 + 48;
          v52 = (v47 + 48);
          do
          {
            v53 = *(v52 - 4);
            v54 = *(v52 - 1);
            v55 = *v52;
            v56 = v50 + 1;
            v57 = *(v77 + 24);

            if (v50 >= v57 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v56, 1);
            }

            v52 += 82;
            *(v77 + 16) = v56;
            v58 = (v77 + v51);
            *(v58 - 4) = v53;
            *(v58 - 1) = v54;
            *v58 = v55;
            v51 += 24;
            ++v50;
            --v48;
          }

          while (v48);
          v7 = v72;
        }

        _StringGuts.grow(_:)(47);

        v73 = 0xD000000000000012;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v59);

        MEMORY[0x193ABEDD0](544175136, 0xE400000000000000);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v60);

        MEMORY[0x193ABEDD0](0x734449646C6F202CLL, 0xE900000000000020);
        v61 = MEMORY[0x193ABF1C0](v7, &type metadata for GlassContainer.Item.ID);
        v63 = v62;

        MEMORY[0x193ABEDD0](v61, v63);

        MEMORY[0x193ABEDD0](0x2073444977656E20, 0xE800000000000000);
        v64 = MEMORY[0x193ABF1C0](v49, &type metadata for GlassContainer.Item.ID);
        v66 = v65;

        v67 = v64;
LABEL_49:
        MEMORY[0x193ABEDD0](v67, v66);
        goto LABEL_50;
      }

      v21 = *(destructiveProjectEnumData for ResolverMessage(__dst) + 136);
      v22 = *(v21 + 16);
      v23 = MEMORY[0x1E69E7CC0];
      if (v22)
      {
        v75 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v23 = v75;
        v24 = *(v75 + 16);
        v25 = 24 * v24 + 48;
        v26 = (v21 + 48);
        do
        {
          v27 = *(v26 - 4);
          v28 = *(v26 - 1);
          v29 = *v26;
          v30 = v24 + 1;
          v31 = *(v75 + 24);

          if (v24 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v30, 1);
          }

          v26 += 82;
          *(v75 + 16) = v30;
          v32 = (v75 + v25);
          *(v32 - 4) = v27;
          *(v32 - 1) = v28;
          *v32 = v29;
          v25 += 24;
          ++v24;
          --v22;
        }

        while (v22);
      }

      v73 = 0;
      _StringGuts.grow(_:)(41);
      MEMORY[0x193ABEDD0](0xD000000000000012, 0x800000018DD75030);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x193ABEDD0](v45);

      MEMORY[0x193ABEDD0](0x204449646C6F202CLL, 0xE800000000000000);
      _print_unlocked<A, B>(_:_:)();
      v46 = 0x49646C6F202CLL;
    }

    MEMORY[0x193ABEDD0](v46 & 0xFFFFFFFFFFFFLL | 0x7344000000000000, 0xE900000000000020);
    v69 = MEMORY[0x193ABF1C0](v23, &type metadata for GlassContainer.Item.ID);
    v66 = v70;

    v67 = v69;
    goto LABEL_49;
  }

  if (v1 <= 7)
  {
    if (v1 != 5)
    {
      if (v1 != 6)
      {
        return 0xD00000000000001DLL;
      }

      destructiveProjectEnumData for ResolverMessage(__dst);
      _StringGuts.grow(_:)(26);

      v73 = 0xD000000000000012;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](0, 0xE000000000000000);

      MEMORY[0x193ABEDD0](544175136, 0xE400000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x193ABEDD0](3943982, 0xE300000000000000);
      _print_unlocked<A, B>(_:_:)();
      v2 = 0;
      v3 = 0xE000000000000000;
      goto LABEL_31;
    }

    destructiveProjectEnumData for ResolverMessage(__dst);
    _StringGuts.grow(_:)(19);

    v33 = 0xD000000000000011;
LABEL_30:
    v73 = v33;
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_31:
    MEMORY[0x193ABEDD0](v2, v3);
LABEL_50:

    return v73;
  }

  v17 = 0xD000000000000023;
  if (v1 == 9)
  {
    v17 = 0xD000000000000024;
  }

  if (v1 == 8)
  {
    return 0xD000000000000021;
  }

  else
  {
    return v17;
  }
}

uint64_t one-time initialization function for glassContainer()
{
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static Log.glassContainer);
  v2 = __swift_project_value_buffer(v1, static Log.glassContainer);
  return closure #1 in variable initialization expression of static Log.glassContainer(v2);
}

uint64_t closure #1 in variable initialization expression of static Log.glassContainer@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v2 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v3 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v2 = 0;
  }

  v4 = v2;
  v5 = MEMORY[0x193ABEC20](0xD000000000000027, 0x800000018DD75090);
  v6 = [v3 BOOLForKey_];

  if (v6)
  {
    Logger.init(subsystem:category:)();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for Logger();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

BOOL specialized closure #1 in Array.sort<A>(by:reversed:)(void *__src, const void *a2, char a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v8, a2, sizeof(v8));
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (a3)
  {
    return v7 < v10;
  }

  else
  {
    return v10 < v7;
  }
}

BOOL specialized closure #1 in Array.sort<A>(by:reversed:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    v3 = v11;
    v4 = v9;
    if (v10)
    {
      v4 = 0.0;
    }

    if (v12)
    {
      v3 = 0.0;
    }

    return v4 < v3;
  }

  else
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    v6 = v11;
    v7 = v9;
    if (v12)
    {
      v6 = 0.0;
    }

    if (v10)
    {
      v7 = 0.0;
    }

    return v6 < v7;
  }
}

uint64_t _s7SwiftUI17CollectionChangesV10ProjectionV4kind7changesAEyxq__qd__GAC7ElementO4KindOyxq___G_SayAJyxq__GGtcfCSi_SiSnySiG_APtTt2B5Tm@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 64);
    do
    {
      v7 = *v5;
      v5 += 40;
      v6 = v7;
      if (v7)
      {
        if (v6 == 1)
        {
          if (result == 1)
          {
            goto LABEL_12;
          }
        }

        else if (result == 2)
        {
          goto LABEL_12;
        }
      }

      else if (!result)
      {
        goto LABEL_12;
      }

      ++v4;
    }

    while (v3 != v4);
  }

  v4 = 0;
LABEL_12:
  if (v3)
  {
    v8 = (a2 + 40 * v3 + 24);
    do
    {
      v10 = *v8;
      v8 -= 40;
      v9 = v10;
      if (v10)
      {
        if (v9 == 1)
        {
          if (result == 1)
          {
            break;
          }
        }

        else if (result == 2)
        {
          break;
        }
      }

      else if (!result)
      {
        break;
      }

      --v3;
    }

    while (v3);
  }

  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = v4;
  *(a3 + 24) = v3;
  return result;
}

uint64_t specialized CollectionChanges.formChanges<A, B>(from:to:)(uint64_t a1, uint64_t a2, void *(*a3)(void **__return_ptr, uint64_t, void))
{
  v6 = *v3;
  v61 = a2;
  v58 = &v61;
  v59 = v6;
  v60 = 0x7FFFFFFFFFFFFFFFLL;
  result = specialized Collection.withContiguousStorage<A>(_:)(a3, v57, a1);
  if (result)
  {
    v9 = result;
    v10 = v8;

    v54 = convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:)(v9);

    v49 = convertOffsetsToRanges #1 <A, B><A1, B1>(_:) in CollectionChanges.formChanges<A, B>(from:to:)(v10);

    v11 = *(a1 + 16);
    v12 = *(a2 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v47 = v3;
    *v3 = MEMORY[0x1E69E7CC0];
    v50 = v12;
    v53 = v12 != 0;
    if (v11 == 0 && v12 == 0)
    {
      goto LABEL_77;
    }

    v55 = 0;
    LOBYTE(v56) = 0;
    v14 = 0;
    v51 = 0;
    v52 = v11;
    v15 = 0;
    v16 = 0;
    v46 = v49 + 32;
    v48 = 0;
    while (1)
    {
      v17 = (v54 + 32 + 16 * v16);
      v18 = v55;
      while ((v56 & 1) == 0 && v16 < *(v54 + 16) && *v17 == v15)
      {
        v19 = v17[1];
        v20 = v19 - v15;
        if (__OFSUB__(v19, v15))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v21 = v11 - v14;
        if (v20 < 1)
        {
          if (v21 <= 0)
          {
            v22 = v11;
            if (v20 < v21)
            {
              goto LABEL_16;
            }
          }
        }

        else if ((v21 & 0x8000000000000000) == 0)
        {
          v22 = v11;
          if (v21 < v20)
          {
            goto LABEL_16;
          }
        }

        v22 = v14 + v20;
        if (__OFADD__(v14, v20))
        {
          goto LABEL_80;
        }

LABEL_16:
        if (v22 < v14)
        {
          goto LABEL_79;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v24 + 1;
        v25 = v13 + 40 * v24;
        *(v25 + 32) = v14;
        *(v25 + 40) = v22;
        ++v16;
        v15 += v20;
        *(v25 + 48) = 0;
        *(v25 + 56) = 0;
        *(v25 + 64) = 0;
        v11 = v52;
        if (v15 >= v52)
        {
          v18 = v55;
        }

        v17 += 2;
        v14 = v22;
        if (v15 >= v52 && !v53)
        {
          goto LABEL_77;
        }
      }

      if ((v48 & 0x8000000000000000) != 0 || v48 >= *(v49 + 16) || (v26 = (v46 + 16 * v48), *v26 != v18))
      {
        v32 = v11;
        if ((v56 & 1) == 0)
        {
          v32 = v11;
          if (v16 < *(v54 + 16))
          {
            v32 = *v17;
          }
        }

        v33 = v50;
        if ((v48 & 0x8000000000000000) == 0)
        {
          v33 = v50;
          if (v48 < *(v49 + 16))
          {
            v33 = *(v46 + 16 * v48);
          }
        }

        v34 = v32 - v15;
        v35 = v33 - v18;
        if (v35 >= v34)
        {
          v28 = v34;
        }

        else
        {
          v28 = v35;
        }

        v36 = v11 - v14;
        if (v28 < 1)
        {
          if (v36 > 0 || v28 >= v36)
          {
            goto LABEL_50;
          }

          if (v11 < v14)
          {
            goto LABEL_81;
          }

          v37 = v50 - v51;
          v38 = v11;
        }

        else
        {
          if (v36 < v28)
          {
            if (v11 < v14)
            {
              goto LABEL_81;
            }

            v37 = v50 - v51;
            v38 = v11;
            goto LABEL_53;
          }

LABEL_50:
          v38 = v14 + v28;
          if (__OFADD__(v14, v28))
          {
            goto LABEL_83;
          }

          if (v38 < v14)
          {
            goto LABEL_81;
          }

          v37 = v50 - v51;
          if (v28 >= 1)
          {
LABEL_53:
            if (v37 < 0 || (v31 = v50, v37 >= v28))
            {
LABEL_58:
              v31 = v51 + v28;
              if (__OFADD__(v51, v28))
              {
                goto LABEL_84;
              }
            }

LABEL_59:
            if (v31 < v51)
            {
              goto LABEL_82;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
              v13 = result;
            }

            v40 = *(v13 + 16);
            v39 = *(v13 + 24);
            if (v40 >= v39 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v40 + 1;
            v41 = v13 + 40 * v40;
            *(v41 + 32) = v14;
            *(v41 + 40) = v38;
            v14 = v38;
            v29 = v50;
            *(v41 + 48) = v51;
            *(v41 + 56) = v31;
            *(v41 + 64) = 2;
            v15 += v28;
            goto LABEL_65;
          }
        }

        if (v37 > 0)
        {
          goto LABEL_58;
        }

        v31 = v50;
        if (v28 >= v37)
        {
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v27 = v26[1];
      v28 = v27 - v18;
      if (__OFSUB__(v27, v18))
      {
        goto LABEL_85;
      }

      v29 = v50;
      v30 = v50 - v51;
      if (v28 < 1)
      {
        if (v30 > 0)
        {
          goto LABEL_70;
        }

        v31 = v50;
        if (v28 >= v30)
        {
          goto LABEL_70;
        }
      }

      else if (v30 < 0 || (v31 = v50, v30 >= v28))
      {
LABEL_70:
        v31 = v51 + v28;
        if (__OFADD__(v51, v28))
        {
          goto LABEL_87;
        }
      }

      if (v31 < v51)
      {
        goto LABEL_86;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v43 = *(v13 + 16);
      v42 = *(v13 + 24);
      v44 = v48;
      if (v43 >= v42 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v13);
        v44 = v48;
        v13 = result;
      }

      *(v13 + 16) = v43 + 1;
      v45 = v13 + 40 * v43;
      *(v45 + 32) = v51;
      *(v45 + 40) = v31;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 1;
      v48 = v44 + 1;
LABEL_65:
      v51 = v31;
      v55 = v28 + v18;
      v53 = v28 + v18 < v29;
      v56 = v16 >> 63;
      v11 = v52;
      if (v15 >= v52 && v55 >= v50)
      {
LABEL_77:

        *v47 = v13;
        return result;
      }
    }
  }

LABEL_88:
  __break(1u);
  return result;
}

void *specialized Collection.withContiguousStorage<A>(_:)(void *(*a1)(void **__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v7, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    result = v7;
    if (v7 == 1)
    {
      a1(&v7, a3 + 32, *(a3 + 16));
      return v7;
    }
  }

  return result;
}

uint64_t specialized CollectionChanges.Projection.index(after:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 >= a5)
  {
    return a5;
  }

  v6 = *(a3 + 16);
  if (v6 < v5)
  {
    goto LABEL_17;
  }

  if (v5 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 == v6)
  {
LABEL_19:
    _StringGuts.grow(_:)(23);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v11);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v7 = (a3 + 40 * a1 + 104);
  while (1)
  {
    v9 = *v7;
    v7 += 40;
    v8 = v9;
    if (!v9)
    {
      if (!a2)
      {
        return v5;
      }

      goto LABEL_8;
    }

    if (v8 != 1)
    {
      break;
    }

    if (a2 == 1)
    {
      return v5;
    }

LABEL_8:
    if (v6 == ++v5)
    {
      goto LABEL_19;
    }
  }

  if (a2 != 2)
  {
    goto LABEL_8;
  }

  return v5;
}

uint64_t specialized CollectionChanges.Projection.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3 + 40 * a1;
  if (*(v3 + 64) >= 2u)
  {
    return *(v3 + 32);
  }

LABEL_7:
  _StringGuts.grow(_:)(17);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v5);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(void *a1, void *a2, double *a3, void *__src, int a5, uint64_t a6, int a7, uint64_t a8, double a9, uint64_t a10, unint64_t a11)
{
  v17 = a1[41];
  v18 = a2[41];
  memcpy(__dst, __src, 0x154uLL);
  v74 = *a3;
  v19 = a11 >> 1;
  result = outlined init with copy of Resolver?(__dst, v90, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  if (a11 >> 1 != a10)
  {
    v71 = __src;
    v21 = 0;
    v77 = *(MEMORY[0x1E695F050] + 8);
    v78 = *MEMORY[0x1E695F050];
    v75 = *(MEMORY[0x1E695F050] + 24);
    v76 = *(MEMORY[0x1E695F050] + 16);
    v22 = a10;
    v79 = a9;
    v80 = v18;
    v81 = v17;
LABEL_4:
    v23 = v21;
    v73 = v21;
LABEL_5:
    v72 = v23;
    v24 = v22;
    while (1)
    {
      if (v24 < a10 || v22 >= v19)
      {
        __break(1u);
        return result;
      }

      v30 = (a8 + 344 * v22);
      result = memcpy(v90, v30, 0x154uLL);
      v31 = *(v90[16] + 16);
      v32 = v31 == 0;
      if (v31)
      {
        v33 = (v90[16] + 48);
        while (!*(v33 - 1))
        {
          v33 += 82;
          v32 = --v31 == 0;
          if (!v31)
          {
            goto LABEL_16;
          }
        }

        v34 = *v33;
      }

      else
      {
LABEL_16:
        v34 = 0;
      }

      v35 = a2[16];
      v36 = *(v35 + 16);
      v37 = v36 != 0;
      if (v36)
      {
        v38 = (v35 + 48);
        while (!*(v38 - 1))
        {
          v38 += 82;
          v37 = --v36 != 0;
          if (!v36)
          {
            goto LABEL_22;
          }
        }

        v36 = *v38;
        ++v22;
        if (v32)
        {
LABEL_23:
          if (!v37 && v17 != v90[41])
          {
            goto LABEL_31;
          }

          goto LABEL_9;
        }
      }

      else
      {
LABEL_22:
        ++v22;
        if (v32)
        {
          goto LABEL_23;
        }
      }

      if (v37 && v34 == v36 && v17 != v90[41])
      {
LABEL_31:
        if (v18 != v90[41])
        {
          v83 = *a6;
          v40 = *(a6 + 16);
          memcpy(v89, v30, 0x154uLL);
          v41 = *(a6 + 40);
          v87[0] = *(a6 + 24);
          v87[1] = v41;
          v87[2] = *(a6 + 56);
          LODWORD(v87[3]) = *(a6 + 72);
          outlined init with copy of GlassContainer.Entry(v90, v88);
          GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v87, 0, v91);
          if (v92 & 1) != 0 || (v42 = *v91, v43 = *&v91[1], v44 = *&v91[2], v45 = *&v91[3], memcpy(v89, a2, 0x154uLL), v46 = *(a6 + 40), v88[0] = *(a6 + 24), v88[1] = v46, v88[2] = *(a6 + 56), LODWORD(v88[3]) = *(a6 + 72), GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v88, 0, &v93), (v97))
          {
            v47 = INFINITY;
          }

          else
          {
            v48 = v96;
            v49 = v95;
            v50 = v94;
            v51 = v93;
            v85 = resolvedDistance(from:to:pixelLength:)(v42, v43, v44, v45, v93, v94, v95, v96, v83);
            v106.origin.x = v51;
            v106.origin.y = v50;
            v106.size.width = v49;
            v106.size.height = v48;
            CGRectGetWidth(v106);
            v107.origin.x = v51;
            v107.origin.y = v50;
            v107.size.width = v49;
            v107.size.height = v48;
            CGRectGetHeight(v107);
            v108.origin.x = v42;
            v108.origin.y = v43;
            v108.size.width = v44;
            v108.size.height = v45;
            CGRectGetWidth(v108);
            v109.origin.x = v42;
            v109.origin.y = v43;
            v109.size.width = v44;
            v109.size.height = v45;
            CGRectGetHeight(v109);
            v110.origin.x = v42;
            v110.origin.y = v43;
            v110.size.width = v44;
            v110.size.height = v45;
            v118.origin.x = v51;
            v118.origin.y = v50;
            a9 = v79;
            v118.size.width = v49;
            v118.size.height = v48;
            v47 = v85;
            v111 = CGRectIntersection(v110, v118);
            v119.origin.y = v77;
            v119.origin.x = v78;
            v119.size.height = v75;
            v119.size.width = v76;
            CGRectEqualToRect(v111, v119);
          }

          memcpy(v89, a1, 0x154uLL);
          v52 = *(a6 + 40);
          v88[0] = *(a6 + 24);
          v88[1] = v52;
          v88[2] = *(a6 + 56);
          LODWORD(v88[3]) = *(a6 + 72);
          GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v88, 0, v98);
          v53 = 0.0;
          if (v99)
          {
            v25 = 1;
            v26 = INFINITY;
            v27 = 0.0;
            v28 = 0.0;
            v29 = 0.0;
            v18 = v80;
            v17 = v81;
          }

          else
          {
            v86 = v47;
            v54 = *v98;
            v55 = *&v98[1];
            v56 = *&v98[2];
            v27 = *&v98[3];
            memcpy(v89, v90, 0x154uLL);
            v57 = *(a6 + 40);
            v88[0] = *(a6 + 24);
            v88[1] = v57;
            v88[2] = *(a6 + 56);
            LODWORD(v88[3]) = *(a6 + 72);
            GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(v40, v88, 0, &v100);
            if (v104)
            {
              v25 = 1;
              v26 = INFINITY;
              v27 = 0.0;
              v28 = 0.0;
              v29 = 0.0;
              v18 = v80;
              v17 = v81;
              v47 = v86;
            }

            else
            {
              v28 = v102;
              v29 = v103;
              v58 = v101;
              v59 = v100;
              v84 = resolvedDistance(from:to:pixelLength:)(v54, v55, v56, v27, v100, v101, v102, v103, v83);
              v112.origin.x = v59;
              v112.origin.y = v58;
              v112.size.width = v28;
              v112.size.height = v29;
              CGRectGetWidth(v112);
              v113.origin.x = v59;
              v113.origin.y = v58;
              v113.size.width = v28;
              v113.size.height = v29;
              CGRectGetHeight(v113);
              v114.origin.x = v54;
              v114.origin.y = v55;
              v114.size.width = v56;
              v114.size.height = v27;
              CGRectGetWidth(v114);
              v115.origin.x = v54;
              v115.origin.y = v55;
              v115.size.width = v56;
              v115.size.height = v27;
              CGRectGetHeight(v115);
              v116.origin.x = v54;
              v116.origin.y = v55;
              v116.size.width = v56;
              v116.size.height = v27;
              v120.origin.x = v59;
              v120.origin.y = v58;
              v120.size.width = v28;
              v120.size.height = v29;
              v117 = CGRectIntersection(v116, v120);
              width = v117.size.width;
              height = v117.size.height;
              v121.origin.y = v77;
              v121.origin.x = v78;
              v121.size.height = v75;
              v121.size.width = v76;
              v18 = v80;
              v17 = v81;
              if (CGRectEqualToRect(v117, v121))
              {
                v25 = 1;
              }

              else
              {
                v62 = v56 * v27;
                if (v28 * v29 < v56 * v27)
                {
                  v62 = v28 * v29;
                }

                v25 = v62 * 0.5 > width * height;
              }

              v53 = v56;
              a9 = v79;
              v26 = v84;
              v47 = v86;
            }
          }

          if (v47 <= a9)
          {
            if (v26 >= v74)
            {
              result = outlined destroy of GlassContainer.Entry(v90);
              v21 = v73;
              goto LABEL_58;
            }

            v21 = v73;
            if (!v25)
            {
              goto LABEL_60;
            }

            v63 = v28 * v29;
            v64 = v53 * v27;
            if (v53 * v27 >= v28 * v29)
            {
              v65 = v28 * v29;
            }

            else
            {
              v65 = v53 * v27;
            }

            v66 = v63 < v64;
            if (v63 <= v64)
            {
              v63 = v53 * v27;
            }

            if (v66 || v65 == 0.0 || v63 == 0.0 || v63 / v65 < 3.0)
            {
LABEL_60:
              memcpy(v88, v71, 0x154uLL);
              outlined destroy of SeedValue<GlassContainer.EntryState>(v88, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
              memcpy(v89, v90, 0x154uLL);
              _ViewInputs.base.modify(v89, v67);
              result = memcpy(v71, v89, 0x154uLL);
              v21 = 1;
              if (v22 != v19)
              {
                goto LABEL_4;
              }
            }

            else
            {
              result = outlined destroy of GlassContainer.Entry(v90);
LABEL_58:
              v23 = 1;
              if (v22 != v19)
              {
                goto LABEL_5;
              }
            }

LABEL_64:
            outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            return v21 & 1;
          }

          result = outlined destroy of GlassContainer.Entry(v90);
        }
      }

LABEL_9:
      if (v22 == v19)
      {
        if (v72)
        {
          v21 = v73;
          goto LABEL_64;
        }

        if (v73)
        {
          memcpy(v87, __dst, 0x148uLL);
          v68 = __dst[41];
          v69 = __dst[42];
          memcpy(v90, __dst, 0x148uLL);
          v90[41] = __dst[41];
          LODWORD(v90[42]) = __dst[42];
          if (_s7SwiftUI14GlassContainerO5EntryVSgWOg(v90) == 1)
          {
            memcpy(v89, v87, 0x148uLL);
            v89[41] = v68;
            LODWORD(v89[42]) = v69;
            v70 = MEMORY[0x1E69E6720];
            outlined init with copy of Resolver?(__dst, v88, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of SeedValue<GlassContainer.EntryState>(v89, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, v70, type metadata accessor for Resolver?);
          }

          else
          {
            memcpy(v89, v87, 0x148uLL);
            v89[41] = v68;
            LODWORD(v89[42]) = v69;
            outlined init with copy of Resolver?(__dst, v88, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of GlassContainer.Entry(v89);
          }

          memcpy(v89, v71, 0x154uLL);
          _s7SwiftUI14GlassContainerO5EntryVSgWOg(v89);
        }

        break;
      }
    }
  }

  outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.Entry?, &type metadata for GlassContainer.Entry, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v47 = v11;
  v13 = v12;
  v14 = v10;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = *v21;
  memcpy(__dst, v21, sizeof(__dst));
  v23 = *v20;
  memcpy(v53, v20, 0x289uLL);
  v24 = v13[5];
  v52[4] = v13[4];
  v52[5] = v24;
  v25 = v13[7];
  v52[6] = v13[6];
  v52[7] = v25;
  v26 = v13[1];
  v52[0] = *v13;
  v52[1] = v26;
  v27 = v13[3];
  v52[2] = v13[2];
  v52[3] = v27;
  memcpy(v62, v16, 0x289uLL);
  v28 = *v18;
  v29 = a10 >> 1;
  result = outlined init with copy of Resolver?(v62, v51, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  if (a10 >> 1 != a9)
  {
    v45 = v16;
    v46 = 0;
    v44 = 0;
    v31 = 0;
    v32 = a9;
    while (1)
    {
      v33 = v53[1];
      if (v53[1])
      {
        v34 = v53[2];
      }

      else
      {
        v34 = 0;
      }

      v35 = (v47 + 656 * v32);
      v36 = v32;
      while (1)
      {
        if (v32 < a9 || v36 >= v29)
        {
          __break(1u);
          return result;
        }

        memcpy(v51, v35, 0x289uLL);
        memcpy(__src, v35, 0x289uLL);
        if (__src[1])
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_15;
        }

LABEL_9:
        ++v36;
        memcpy(v49, v35, 0x289uLL);
        outlined init with copy of GlassContainer.Item(v51, v48);
        result = outlined destroy of GlassContainer.Item(v49);
        v35 += 656;
        if (v29 == v36)
        {
          goto LABEL_34;
        }
      }

      if (!v33 || __src[2] != v34)
      {
        goto LABEL_9;
      }

LABEL_15:
      if (v22 == v51[0] || v23 == v51[0])
      {
        goto LABEL_9;
      }

      outlined init with copy of GlassContainer.Item(v51, v49);
      GlassContainer.Item.matchingResult(to:context:)(v53, v52, v55);
      GlassContainer.Item.matchingResult(to:context:)(__src, v52, &v56);
      if (v55[0] <= v14)
      {
        if (v56 >= v28)
        {
          goto LABEL_30;
        }

        if ((v57 & 1) == 0)
        {
          goto LABEL_31;
        }

        v37 = v60 * v61;
        v38 = v58 * v59;
        if (v58 * v59 >= v60 * v61)
        {
          v39 = v60 * v61;
        }

        else
        {
          v39 = v58 * v59;
        }

        v40 = v37 < v38;
        if (v37 <= v38)
        {
          v37 = v58 * v59;
        }

        if (v40 || v39 == 0.0 || v37 == 0.0 || v37 / v39 < 3.0)
        {
LABEL_31:
          memcpy(v48, v45, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v48, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v49, __src, 0x289uLL);
          _ViewInputs.base.modify(v49, v41);
          result = memcpy(v45, v49, 0x289uLL);
          v31 = 1;
          v44 = 1;
        }

        else
        {
LABEL_30:
          memcpy(v49, __src, 0x289uLL);
          result = outlined destroy of GlassContainer.Item(v49);
        }

        v46 = 1;
      }

      else
      {
        memcpy(v49, __src, 0x289uLL);
        result = outlined destroy of GlassContainer.Item(v49);
      }

      v32 = v36 + 1;
      if (v29 - 1 == v36)
      {
LABEL_34:
        if (v46)
        {
          outlined destroy of SeedValue<GlassContainer.EntryState>(v62, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          return v31 & 1;
        }

        if (v44)
        {
          v42 = v62[0];
          memcpy(v48, &v62[1], 0x285uLL);
          memcpy(&v51[1], &v62[1], 0x285uLL);
          v51[0] = v62[0];
          if (getEnumTag for AccessibilityTextLayoutProperties(v51) == 1)
          {
            LODWORD(__src[0]) = v42;
            memcpy(__src + 4, v48, 0x285uLL);
            v43 = MEMORY[0x1E69E6720];
            outlined init with copy of Resolver?(v62, v49, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v43, type metadata accessor for Resolver?);
          }

          else
          {
            LODWORD(__src[0]) = v42;
            memcpy(__src + 4, v48, 0x285uLL);
            outlined init with copy of Resolver?(v62, v49, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
            outlined destroy of GlassContainer.Item(__src);
          }

          memcpy(__src, v45, 0x289uLL);
          getEnumTag for AccessibilityTextLayoutProperties(__src);
        }

        break;
      }
    }
  }

  outlined destroy of SeedValue<GlassContainer.EntryState>(v62, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  v31 = 0;
  return v31 & 1;
}

uint64_t specialized RandomAccessCollection<>.hasCloseElement(potentialSource:target:closestDistance:closestElement:config:context:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *v13;
  memcpy(__dst, v13, sizeof(__dst));
  v15 = *v12;
  memcpy(v46, v12, 0x289uLL);
  v16 = v5[5];
  v45[4] = v5[4];
  v45[5] = v16;
  v17 = v5[7];
  v45[6] = v5[6];
  v45[7] = v17;
  v18 = v5[1];
  v45[0] = *v5;
  v45[1] = v18;
  v19 = v5[3];
  v45[2] = v5[2];
  v45[3] = v19;
  memcpy(v55, v8, 0x289uLL);
  v20 = *v10;
  v21 = *(v3 + 16);
  result = outlined init with copy of Resolver?(v55, v44, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  if (!v21)
  {
    goto LABEL_40;
  }

  v39 = v8;
  v23 = 0;
  v40 = 0;
  v38 = 0;
  v24 = 0;
  v25 = v3 + 32;
  while (2)
  {
    while (2)
    {
      v26 = v46[1];
      if (v46[1])
      {
        v27 = v46[2];
      }

      else
      {
        v27 = 0;
      }

      v28 = v25;
      v29 = (v25 + 656 * v23);
      v30 = v23;
      while (1)
      {
        if (v30 >= v21)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          return result;
        }

        result = memcpy(v44, v29, 0x289uLL);
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_43;
        }

        memcpy(__src, v29, 0x289uLL);
        if (__src[1])
        {
          break;
        }

        if (!v26)
        {
          goto LABEL_14;
        }

LABEL_8:
        memcpy(v42, v29, 0x289uLL);
        outlined init with copy of GlassContainer.Item(v44, v41);
        result = outlined destroy of GlassContainer.Item(v42);
        ++v30;
        v29 += 656;
        if (v23 == v21)
        {
          goto LABEL_33;
        }
      }

      if (!v26 || __src[2] != v27)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (v14 == v44[0] || v15 == v44[0])
      {
        goto LABEL_8;
      }

      outlined init with copy of GlassContainer.Item(v44, v42);
      GlassContainer.Item.matchingResult(to:context:)(v46, v45, v48);
      GlassContainer.Item.matchingResult(to:context:)(__src, v45, &v49);
      if (v48[0] <= v6)
      {
        v25 = v28;
        if (v49 >= v20)
        {
          goto LABEL_30;
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_31;
        }

        v31 = v53 * v54;
        v32 = v51 * v52;
        if (v51 * v52 >= v53 * v54)
        {
          v33 = v53 * v54;
        }

        else
        {
          v33 = v51 * v52;
        }

        v34 = v31 < v32;
        if (v31 <= v32)
        {
          v31 = v51 * v52;
        }

        if (v34 || v33 == 0.0 || v31 == 0.0 || v31 / v33 < 3.0)
        {
LABEL_31:
          memcpy(v41, v39, 0x289uLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v41, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
          memcpy(v42, __src, 0x289uLL);
          _ViewInputs.base.modify(v42, v35);
          result = memcpy(v39, v42, 0x289uLL);
          v24 = 1;
          v38 = 1;
        }

        else
        {
LABEL_30:
          memcpy(v42, __src, 0x289uLL);
          result = outlined destroy of GlassContainer.Item(v42);
        }

        v40 = 1;
        if (v23 == v21)
        {
          goto LABEL_33;
        }

        continue;
      }

      break;
    }

    memcpy(v42, __src, 0x289uLL);
    result = outlined destroy of GlassContainer.Item(v42);
    v25 = v28;
    if (v23 != v21)
    {
      continue;
    }

    break;
  }

LABEL_33:
  if (v40)
  {
    outlined destroy of SeedValue<GlassContainer.EntryState>(v55, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
    return v24 & 1;
  }

  if (v38)
  {
    v36 = v55[0];
    memcpy(v41, &v55[1], 0x285uLL);
    memcpy(&v44[1], &v55[1], 0x285uLL);
    v44[0] = v55[0];
    if (getEnumTag for AccessibilityTextLayoutProperties(v44) == 1)
    {
      LODWORD(__src[0]) = v36;
      memcpy(__src + 4, v41, 0x285uLL);
      v37 = MEMORY[0x1E69E6720];
      outlined init with copy of Resolver?(v55, v42, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, v37, type metadata accessor for Resolver?);
    }

    else
    {
      LODWORD(__src[0]) = v36;
      memcpy(__src + 4, v41, 0x285uLL);
      outlined init with copy of Resolver?(v55, v42, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      outlined destroy of GlassContainer.Item(__src);
    }

    memcpy(__src, v39, 0x289uLL);
    getEnumTag for AccessibilityTextLayoutProperties(__src);
  }

LABEL_40:
  outlined destroy of SeedValue<GlassContainer.EntryState>(v55, &lazy cache variable for type metadata for GlassContainer.Item?, &type metadata for GlassContainer.Item, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  v24 = 0;
  return v24 & 1;
}

void specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, void, uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v7 = a4(*a3 + 32, *(*a3 + 16), a1, a2);
  if (v5)
  {

    __break(1u);
  }

  else
  {
    *a5 = v7;
    a5[1] = v8;
  }
}

double _s7SwiftUI8Resolver33_04178B540DC3B0BFBD7679A049CE48C7LLVSgWOi0_(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage()
{
  result = lazy protocol witness table cache variable for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage;
  if (!lazy protocol witness table cache variable for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainerResolvedStorage and conformance GlassContainerResolvedStorage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction()
{
  result = lazy protocol witness table cache variable for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction;
  if (!lazy protocol witness table cache variable for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainerResolvedTransaction and conformance GlassContainerResolvedTransaction);
  }

  return result;
}

uint64_t specialized static ResolvedIDs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI11ResolvedIDs33_04178B540DC3B0BFBD7679A049CE48C7LLV3KeyO_AC9SeedValueVyAC14GlassContainerO5EntryV8StableIDVGTt1g5(*a1, *a2);
  result = 0;
  if ((v8 & 1) != 0 && v2 == v5)
  {
    return _sSh2eeoiySbShyxG_ABtFZ7SwiftUI14GlassContainerO5EntryV8StableIDV_Tt1g5(v3, v6) & (v4 == v7);
  }

  return result;
}

BOOL specialized static ResolvedIDs.Key.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      outlined consume of ResolvedIDs.Key(*a1, v3, v5, v4, v6);
      outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
      return v2 == v7;
    }

LABEL_7:
    outlined copy of ResolvedIDs.Key(v7, v8, v10, v9, v11);
    outlined consume of ResolvedIDs.Key(v2, v3, v5, v4, v6);
    outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
    return 0;
  }

  if (v11 < 0)
  {
    outlined copy of GlassContainer.Entry.ModelID(*a1, v3, v5, v4, v6);
    goto LABEL_7;
  }

  v19[0] = *a1;
  v19[1] = v3;
  v19[2] = v5;
  v19[3] = v4;
  v20 = v6;
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = v10;
  v17[3] = v9;
  v18 = v11;
  outlined copy of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  outlined copy of ResolvedIDs.Key(v2, v3, v5, v4, v6);
  outlined copy of ResolvedIDs.Key(v2, v3, v5, v4, v6);
  outlined copy of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  v12 = specialized static GlassContainer.Entry.ModelID.== infix(_:_:)(v19, v17);
  v13 = v2;
  v16 = v2;
  v14 = v12;
  outlined consume of ResolvedIDs.Key(v13, v3, v5, v4, v6);
  outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  outlined consume of ResolvedIDs.Key(v7, v8, v10, v9, v11);
  outlined consume of ResolvedIDs.Key(v16, v3, v5, v4, v6);
  return v14;
}

char *specialized GlassContainerResolvedStorage.resolvedModelEntries(storage:)(uint64_t a1)
{
  GlassContainerResolvedStorage.resolver.getter(__src);
  ++LODWORD(__src[5]);

  __src[6] = MEMORY[0x1E69E7CD0];
  memcpy(__dst, __src, sizeof(__dst));
  _ViewInputs.base.modify(__dst, v3);
  memcpy(v88, (v1 + 72), 0x118uLL);
  outlined destroy of SeedValue<GlassContainer.EntryState>(v88, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy((v1 + 72), __dst, 0x118uLL);
  v43 = *(a1 + 16);
  if (v43)
  {
    v4 = 0;
    v42 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = (v42 + 344 * v4);
      memcpy(v85, v6, 0x154uLL);
      v7 = v6[5];
      v81 = v6[4];
      v82 = v7;
      v8 = v6[7];
      v83 = v6[6];
      v84 = v8;
      v9 = v6[1];
      v77 = *v6;
      v78 = v9;
      v10 = v6[3];
      v79 = v6[2];
      v80 = v10;
      v11 = v85[16];
      v12 = *(v6 + 136);
      v13 = *(v6 + 152);
      v14 = *(v6 + 168);
      v68 = *(v6 + 184);
      v67 = v14;
      v66 = v13;
      v65 = v12;
      v15 = *(v6 + 200);
      v16 = *(v6 + 216);
      v17 = *(v6 + 232);
      v72 = *(v6 + 248);
      v71 = v17;
      v70 = v16;
      v69 = v15;
      v18 = *(v6 + 264);
      v19 = *(v6 + 280);
      v20 = *(v6 + 296);
      v76 = *(v6 + 312);
      v75 = v20;
      v74 = v19;
      v73 = v18;
      v44 = v85[42];
      outlined init with copy of GlassContainer.Entry(v85, v63);
      outlined init with copy of GlassContainer.Entry(v85, v63);
      v21 = v1;
      GlassContainerResolvedStorage.resolver.getter(v64);
      memcpy(v63, v85, sizeof(v63));
      v22 = ResolvedIDs.existingID(entry:)(v63);
      if ((v23 & 1) == 0)
      {
        v24 = v22;
        v25 = v64[6];
        if (!*(v64[6] + 16) || (Hasher.init(_seed:)(), MEMORY[0x193AC11A0](v24), v26 = Hasher._finalize()(), v27 = -1 << *(v25 + 32), v28 = v26 & ~v27, ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
        {
LABEL_10:
          specialized Set._Variant.insert(_:)(v63, v24);
          goto LABEL_11;
        }

        v29 = ~v27;
        while (*(*(v25 + 48) + 8 * v28) != v24)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      v24 = v64[7]++;
      memcpy(v63, v85, sizeof(v63));
      ResolvedIDs.updateID(_:entry:)(v24, 0, v63);
LABEL_11:
      v30 = v85[41];
      memcpy(v61, v64, sizeof(v61));
      _ViewInputs.base.modify(v61, v31);
      memcpy(v62, (v21 + 72), sizeof(v62));
      outlined destroy of SeedValue<GlassContainer.EntryState>(v62, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      memcpy((v21 + 72), v61, 0x118uLL);
      if ((GlassContainerCache.hiddenAttr(id:)(v30) & 0x100000000) == 0 && *AGGraphGetValue() == 1)
      {
        v32 = v85[16];
        v33 = *(v85[16] + 16);
        if (v33)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (v33 == 1)
            {
              goto LABEL_16;
            }

LABEL_18:
            v34 = v33 & 0x7FFFFFFFFFFFFFFELL;
            v35 = v33 & 0x7FFFFFFFFFFFFFFELL;
            v36 = v32;
            do
            {
              v36[209] = 1;
              v36[865] = 1;
              v36 += 1312;
              v35 -= 2;
            }

            while (v35);
            if (v33 != v34)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
            if (v33 != 1)
            {
              goto LABEL_18;
            }

LABEL_16:
            v34 = 0;
LABEL_21:
            v37 = v33 - v34;
            v38 = 656 * v34 + 209;
            do
            {
              v32[v38] = 1;
              v38 += 656;
              --v37;
            }

            while (v37);
          }

          v11 = v32;
        }
      }

      *&v63[64] = v81;
      *&v63[80] = v82;
      *&v63[96] = v83;
      *&v63[112] = v84;
      *v63 = v77;
      *&v63[16] = v78;
      *&v63[32] = v79;
      *&v63[48] = v80;
      *&v63[264] = v73;
      *&v63[280] = v74;
      *&v63[296] = v75;
      *&v63[312] = v76;
      *&v63[200] = v69;
      *&v63[216] = v70;
      *&v63[232] = v71;
      *&v63[248] = v72;
      *&v63[136] = v65;
      *&v63[152] = v66;
      *&v63[168] = v67;
      *&v63[184] = v68;
      *&v63[128] = v11;
      *&v63[328] = v24;
      *&v63[336] = v44;
      outlined init with copy of GlassContainer.Entry(v63, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v40 = *(v5 + 2);
      v39 = *(v5 + 3);
      if (v40 >= v39 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v5);
      }

      ++v4;
      outlined destroy of GlassContainer.Entry(v85);
      *(v5 + 2) = v40 + 1;
      memcpy(&v5[344 * v40 + 32], v63, 0x154uLL);
      v45[4] = v81;
      v45[5] = v82;
      v45[6] = v83;
      v45[7] = v84;
      v45[0] = v77;
      v45[1] = v78;
      v45[2] = v79;
      v45[3] = v80;
      v57 = v75;
      v58 = v76;
      v55 = v73;
      v56 = v74;
      v53 = v71;
      v54 = v72;
      v51 = v69;
      v52 = v70;
      v49 = v67;
      v50 = v68;
      v47 = v65;
      v48 = v66;
      v46 = v11;
      v59 = v24;
      v60 = v44;
      outlined destroy of GlassContainer.Entry(v45);
      if (v4 == v43)
      {
        return v5;
      }

      v1 = v21;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of SeedValue<GlassContainer.EntryState>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t specialized getter of storageMatches #1 in GlassContainerResolvedStorage.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + 16);
  LODWORD(v4) = *(a1 + 16);
  if (v4 == 2)
  {
    v5 = *(a3 + 48);
    v4 = a2;

    LOBYTE(v4) = specialized GlassContainer.Storage.matches(_:)(v5, v4);

    swift_beginAccess();
    *v3 = v4 & 1;
  }

  return v4 & 1;
}

uint64_t specialized Resolver.log(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = one-time initialization token for glassContainer;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, static Log.glassContainer);
  outlined init with copy of Logger?(v14, v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  if ((*(v6 + 48))(v12, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v12, v5);
    v15 = *(a3 + 16);
    v30[0] = *(a2 + 16);
    v30[1] = v15;
    _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi_(v30);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v18 = 136315138;
      memcpy(v27, v30, sizeof(v27));
      v25 = v16;
      v19 = ResolverMessage.description.getter();
      v21 = v20;
      memcpy(v29, v27, 0x2BCuLL);
      outlined destroy of ResolverMessage(v29);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v28);

      *(v18 + 4) = v22;
      v16 = v25;
      _os_log_impl(&dword_18D018000, v25, v17, "Glass container %s", v18, 0xCu);
      v23 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x193AC4820](v23, -1, -1);
      MEMORY[0x193AC4820](v18, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t specialized Resolver.log(_:)(int a1, uint64_t a2, void *__src, void (*a4)(_BYTE *))
{
  memcpy(v31, __src, sizeof(v31));
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for WeakBox<GlassContainerCache>(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26[-v13 - 8];
  outlined init with copy of GlassContainer.Entry(__src, v30);
  if (one-time initialization token for glassContainer != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v12, static Log.glassContainer);
  outlined init with copy of Logger?(v15, v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  if ((*(v8 + 48))(v14, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v14, v7);
    v29[0] = a2;
    memcpy(&v29[1], v31, 0x154uLL);
    memcpy(v30, v29, 0x15CuLL);
    a4(v30);
    outlined init with copy of GlassContainer.Entry(__src, v28);
    outlined init with copy of GlassContainer.Entry(__src, v28);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v18 = 136315138;
      memcpy(v26, v30, sizeof(v26));
      outlined init with copy of Resolver?(v29, v28, &lazy cache variable for type metadata for (Int, GlassContainer.Entry), MEMORY[0x1E69E6530], &type metadata for GlassContainer.Entry, type metadata accessor for (Path, FillStyle));
      v19 = ResolverMessage.description.getter();
      v21 = v20;
      memcpy(v28, v26, 0x2BCuLL);
      outlined destroy of ResolverMessage(v28);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_18D018000, v16, v17, "Glass container %s", v18, 0xCu);
      v23 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x193AC4820](v23, -1, -1);
      MEMORY[0x193AC4820](v18, -1, -1);
      outlined destroy of GlassContainer.Entry(__src);
    }

    else
    {

      outlined destroy of GlassContainer.Entry(__src);
    }

    outlined destroy of GlassContainer.Entry(__src);
    (*(v8 + 8))(v10, v7);
  }

  return outlined destroy of GlassContainer.Entry(__src);
}

uint64_t specialized Resolver.prepareReusedEntry(target:sourceEntry:sourceIndex:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  LOBYTE(v10) = *(a2 + 32);
  v11 = *(a2 + 128);
  v12 = *(v3 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    while (*(v12 + 16) > a1)
    {
      *(&__dst[4] + 1) = *(v4 + 65);
      *(&__dst[5] + 1) = *(v4 + 81);
      *(&__dst[6] + 1) = *(v4 + 97);
      __dst[7] = *(v4 + 112);
      *(&__dst[2] + 1) = *(v4 + 33);
      *(&__dst[3] + 1) = *(v4 + 49);
      v14 = *(v4 + 312);
      *(&__dst[18] + 8) = *(v4 + 296);
      *(&__dst[19] + 8) = v14;
      *(&__dst[20] + 4) = *(v4 + 324);
      v15 = *(v4 + 280);
      *(&__dst[16] + 8) = *(v4 + 264);
      *(&__dst[17] + 8) = v15;
      v16 = *(v4 + 200);
      *(&__dst[13] + 8) = *(v4 + 216);
      v17 = *(v4 + 248);
      *(&__dst[14] + 8) = *(v4 + 232);
      *(&__dst[15] + 8) = v17;
      v18 = *(v4 + 136);
      *(&__dst[9] + 8) = *(v4 + 152);
      v19 = *(v4 + 184);
      *(&__dst[10] + 8) = *(v4 + 168);
      *(&__dst[11] + 8) = v19;
      *(&__dst[12] + 8) = v16;
      *&__dst[0] = v6;
      *(&__dst[0] + 1) = v7;
      *&__dst[1] = v8;
      *(&__dst[1] + 1) = v9;
      LOBYTE(__dst[2]) = v10;
      *&__dst[8] = v11;
      *(&__dst[8] + 8) = v18;
      result = ResolvedIDs.existingID(entry:)(__dst);
      if (v20)
      {
        goto LABEL_16;
      }

      v27 = result;
      v28 = a1;
      v29 = v12;
      v35[0] = v6;
      v35[1] = v7;
      v35[2] = v8;
      v35[3] = v9;
      v36 = v10;
      outlined copy of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
      specialized Dictionary._Variant.removeValue(forKey:)(v35, __dst);
      outlined consume of GlassContainer.Entry.ModelID(v6, v7, v8, v9, v10);
      v21 = *(v11 + 16);
      if (!v21)
      {
LABEL_15:
        v12 = v29;
        v26 = v29 + 344 * v28;
        memcpy(v31, (v26 + 32), 0x154uLL);
        memcpy(__src, (v26 + 32), 0x154uLL);
        outlined init with copy of GlassContainer.Entry(v31, __dst);
        ResolvedIDs.updateID(_:entry:)(v27, 0, __src);
        memcpy(__dst, __src, 0x154uLL);
        result = outlined destroy of GlassContainer.Entry(__dst);
        *(v26 + 360) = v27;
LABEL_16:
        *(v3 + 8) = v12;
        return result;
      }

      v8 = 0;
      v6 = (v11 + 32);
      v9 = v33;
      v10 = v21 - 1;
      v12 = 128;
      a1 = 40;
      do
      {
        memcpy(__dst, v6, 0x289uLL);
        v33[0] = LODWORD(__dst[0]);
        memset(&v33[1], 0, 24);
        v34 = 0x80;
        v4 = *(v3 + 32);
        outlined init with copy of GlassContainer.Item(__dst, v31);
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
        if (v23)
        {
          v7 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4 = *(v3 + 32);
          v31[0] = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v4 = v31[0];
          }

          v25 = *(v4 + 48) + 40 * v7;
          outlined consume of ResolvedIDs.Key(*v25, *(v25 + 8), *(v25 + 16), *(v25 + 24), *(v25 + 32));
          specialized _NativeDictionary._delete(at:)(v7, v4);
          outlined destroy of GlassContainer.Item(__dst);
          *(v3 + 32) = v4;
          if (v10 == v8)
          {
            goto LABEL_15;
          }
        }

        else
        {
          outlined destroy of GlassContainer.Item(__dst);
          if (v10 == v8)
          {
            goto LABEL_15;
          }
        }

        ++v8;
        v6 += 656;
      }

      while (v8 < *(v11 + 16));
      __break(1u);
LABEL_17:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
      v12 = result;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

void specialized Resolver.reuseEntry(target:sourceEntry:sourceIndex:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = *(v3 + 16);
  v41[0] = *v3;
  v41[1] = v4;
  v42 = *(v3 + 32);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v2;
  v6 = v1[1];
  if (*(v6 + 16) <= v2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v3 + 128);
  v8 = *(v3 + 328);
  v9 = *v1;
  v10 = v6 + 344 * v2;
  v29 = *(v10 + 360);
  GlassContainerCache.entryState(id:)(v29, __src);

  v11 = MEMORY[0x1E69E7CC0];
  __src[3] = MEMORY[0x1E69E7CC0];

  __src[78] = v11;
  __src[0] = v8;
  LOBYTE(__src[1]) = 0;
  v12 = *(v7 + 16);
  if (v12)
  {
    v26 = v6 + 344 * v5;
    v27 = v6;
    v28 = v5;
    v45[0] = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v11 = v45[0];
    v13 = *(v45[0] + 16);
    v14 = 24 * v13 + 48;
    v15 = (v7 + 48);
    do
    {
      v16 = *(v15 - 4);
      v18 = *(v15 - 1);
      v17 = *v15;
      v45[0] = v11;
      v19 = *(v11 + 24);

      if (v13 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v13 + 1, 1);
        v11 = v45[0];
      }

      v15 += 82;
      *(v11 + 16) = v13 + 1;
      v20 = (v11 + v14);
      *(v20 - 4) = v16;
      *(v20 - 1) = v18;
      *v20 = v17;
      v14 += 24;
      ++v13;
      --v12;
    }

    while (v12);
    v5 = v28;
    v10 = v26;
    v6 = v27;
  }

  __src[2] = v11;
  LOBYTE(__src[52]) = 0;
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  v21 = *(v9 + 176);
  memcpy(v36, __dst, 0x278uLL);
  v36[158] = v21;
  _ViewInputs.base.modify(v36, v22);
  memcpy(v38, v36, sizeof(v38));
  memcpy(v39, v36, 0x27CuLL);
  if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(v39) == 1)
  {
    outlined init with copy of GlassContainer.EntryState(__dst, v45);
    specialized Dictionary._Variant.removeValue(forKey:)(v29, v35);
    memcpy(v45, v35, 0x27CuLL);
    outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(v45, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>?, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue);
  }

  else
  {
    memcpy(v45, v38, 0x27CuLL);
    outlined init with copy of GlassContainer.EntryState(__dst, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35[0] = *(v9 + 168);
    *(v9 + 168) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v29, isUniquelyReferenced_nonNull_native);
    *(v9 + 168) = v35[0];
  }

  swift_endAccess();
  memcpy(v35, __src, 0x278uLL);
  outlined destroy of GlassContainer.EntryState(v35);
  if (*(v6 + 16) <= v5)
  {
    goto LABEL_17;
  }

  v24 = *(v10 + 32);
  v25 = *(v10 + 48);
  v44 = *(v10 + 64);
  v43[0] = v24;
  v43[1] = v25;
  outlined init with copy of GlassContainer.Entry.ModelID(v43, &v30);
  specialized Set._Variant.remove(_:)(v43, &v30);
  outlined destroy of GlassContainer.Entry.ModelID(v43);
  outlined consume of GlassContainer.Entry.ModelID?(v30, v31, v32, v33, v34);
  specialized Set._Variant.remove(_:)(v41, &v30);
  outlined consume of GlassContainer.Entry.ModelID?(v30, v31, v32, v33, v34);
  if (*(v6 + 16) > v5)
  {
    specialized Set._Variant.insert(_:)(&v30, *(v10 + 360));
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4, char a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 344;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 344;
  if (v10 < v12)
  {
    v13 = 344 * v10;
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, v13);
    }

    v14 = &v5[v13];
    if (v9 < 344)
    {
LABEL_6:
      v7 = v8;
      goto LABEL_42;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_6;
      }

      memcpy(__dsta, v7, 0x154uLL);
      memcpy(__srca, v5, 0x154uLL);
      memcpy(v25, __dsta, sizeof(v25));
      memcpy(v24, __srca, sizeof(v24));
      if (a5)
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v23);
        outlined init with copy of GlassContainer.Entry(__srca, v23);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v28 >= v23[0])
        {
          goto LABEL_15;
        }
      }

      else
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v23);
        outlined init with copy of GlassContainer.Entry(__srca, v23);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v23[0] >= v28)
        {
LABEL_15:
          v15 = v5;
          v16 = v8 == v5;
          v5 += 344;
          if (v16)
          {
            goto LABEL_9;
          }

LABEL_8:
          memmove(v8, v15, 0x158uLL);
          goto LABEL_9;
        }
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 344;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 += 344;
      if (v5 >= v14)
      {
        goto LABEL_6;
      }
    }
  }

  v17 = 344 * v12;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 344 * v12);
  }

  v14 = &v5[v17];
  if (v11 >= 344 && v7 > v8)
  {
LABEL_23:
    v18 = v7 - 344;
    v6 -= 344;
    v19 = v14;
    do
    {
      v14 = v19;
      v19 -= 344;
      memcpy(__dsta, v19, 0x154uLL);
      memcpy(__srca, v7 - 344, 0x154uLL);
      memcpy(v25, __dsta, sizeof(v25));
      memcpy(v24, v7 - 344, sizeof(v24));
      if (a5)
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v23);
        outlined init with copy of GlassContainer.Entry(__srca, v23);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v28 < v23[0])
        {
          goto LABEL_34;
        }
      }

      else
      {
        outlined init with copy of GlassContainer.Entry(__dsta, v23);
        outlined init with copy of GlassContainer.Entry(__srca, v23);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__srca);
        outlined destroy of GlassContainer.Entry(__dsta);
        if (v23[0] < v28)
        {
LABEL_34:
          if (v6 + 344 < v7 || v6 >= v7 || v6 + 344 != v7)
          {
            memmove(v6, v7 - 344, 0x158uLL);
          }

          if (v14 <= v5 || (v7 -= 344, v18 <= v8))
          {
            v7 = v18;
            goto LABEL_42;
          }

          goto LABEL_23;
        }
      }

      if ((v6 + 344) < v14 || v6 >= v14 || v6 + 344 != v14)
      {
        memmove(v6, v19, 0x158uLL);
      }

      v6 -= 344;
    }

    while (v19 > v5);
    v14 = v19;
  }

LABEL_42:
  v20 = 344 * ((v14 - v5) / 344);
  if (v7 != v5 || v7 >= &v5[v20])
  {
    memmove(v7, v5, v20);
  }

  return 1;
}

{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 200;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 200;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[200 * v12] <= a4)
    {
      memmove(a4, __src, 200 * v12);
    }

    v13 = &v5[200 * v12];
    if (v11 >= 200 && v7 > v8)
    {
LABEL_31:
      v38 = v7 - 200;
      v39 = v13;
      do
      {
        v13 = v39;
        v102 = *(v39 - 200);
        v40 = *(v39 - 184);
        v41 = *(v39 - 168);
        v42 = *(v39 - 136);
        v105 = *(v39 - 152);
        v106 = v42;
        v103 = v40;
        v104 = v41;
        v43 = *(v39 - 120);
        v44 = *(v39 - 104);
        v45 = *(v39 - 72);
        v109 = *(v39 - 88);
        v110 = v45;
        v107 = v43;
        v108 = v44;
        v46 = *(v39 - 56);
        v47 = *(v39 - 24);
        v48 = *(v39 - 8);
        v112 = *(v39 - 40);
        v113 = v47;
        v111 = v46;
        v50 = *v38;
        v49 = *(v7 - 184);
        v51 = *(v7 - 152);
        v117 = *(v7 - 168);
        v118 = v51;
        v53 = *(v7 - 184);
        v52 = *(v7 - 168);
        v54 = *v38;
        v115 = v50;
        v116 = v53;
        v55 = *(v7 - 120);
        v56 = *(v7 - 88);
        v121 = *(v7 - 104);
        v122 = v56;
        v57 = *(v7 - 152);
        v58 = *(v7 - 120);
        v119 = *(v7 - 136);
        v120 = v58;
        v59 = *(v7 - 56);
        v60 = *(v7 - 24);
        v125 = *(v7 - 40);
        v126 = v60;
        v61 = *(v7 - 88);
        v62 = *(v7 - 56);
        v123 = *(v7 - 72);
        v124 = v62;
        v99 = v112;
        v100 = v113;
        v95 = v108;
        v96 = v109;
        v97 = v110;
        v98 = v111;
        v91 = v104;
        v92 = v105;
        v93 = v106;
        v94 = v107;
        v89 = v102;
        v90 = v103;
        v63 = *(v7 - 24);
        v86 = v125;
        v87 = v63;
        v82 = v121;
        v83 = v61;
        v84 = v123;
        v85 = v59;
        v78 = v52;
        v79 = v57;
        v64 = v6;
        v114 = v48;
        v127 = *(v7 - 1);
        v101 = v48;
        v88 = *(v7 - 1);
        v80 = v119;
        v81 = v55;
        v76 = v54;
        v77 = v49;
        if (a5)
        {
          outlined init with copy of GlassContainer.Effect(&v102, &v74);
          outlined init with copy of GlassContainer.Effect(&v115, &v74);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v115);
          outlined destroy of GlassContainer.Effect(&v102);
          v65 = v74;
          v66 = v72;
          if (v73)
          {
            v66 = 0.0;
          }

          if (v75)
          {
            v65 = 0.0;
          }

          v6 -= 200;
          if (v66 < v65)
          {
            goto LABEL_50;
          }
        }

        else
        {
          outlined init with copy of GlassContainer.Effect(&v102, &v74);
          outlined init with copy of GlassContainer.Effect(&v115, &v74);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v115);
          outlined destroy of GlassContainer.Effect(&v102);
          v67 = v74;
          v68 = v72;
          if (v75)
          {
            v67 = 0.0;
          }

          if (v73)
          {
            v68 = 0.0;
          }

          v6 -= 200;
          if (v67 < v68)
          {
LABEL_50:
            if (v64 < v7 || v6 >= v7 || v64 != v7)
            {
              memmove(v6, v7 - 200, 0xC8uLL);
            }

            if (v39 <= v5 || (v7 -= 200, v38 <= v8))
            {
              v7 = v38;
              goto LABEL_59;
            }

            goto LABEL_31;
          }
        }

        v39 -= 200;
        if (v64 < v13 || v6 >= v13 || v13 != v64)
        {
          memmove(v6, v13 - 200, 0xC8uLL);
        }
      }

      while (v39 > v5);
      v13 -= 200;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[200 * v10] <= a4)
    {
      memmove(a4, __dst, 200 * v10);
    }

    v13 = &v5[200 * v10];
    if (v9 >= 200 && v7 < v6)
    {
      do
      {
        v102 = *v7;
        v14 = *(v7 + 1);
        v15 = *(v7 + 2);
        v16 = *(v7 + 4);
        v105 = *(v7 + 3);
        v106 = v16;
        v103 = v14;
        v104 = v15;
        v17 = *(v7 + 5);
        v18 = *(v7 + 6);
        v19 = *(v7 + 8);
        v109 = *(v7 + 7);
        v110 = v19;
        v107 = v17;
        v108 = v18;
        v20 = *(v7 + 9);
        v21 = *(v7 + 10);
        v22 = *(v7 + 11);
        v114 = *(v7 + 24);
        v112 = v21;
        v113 = v22;
        v111 = v20;
        v115 = *v5;
        v23 = *(v5 + 1);
        v24 = *(v5 + 2);
        v25 = *(v5 + 4);
        v118 = *(v5 + 3);
        v119 = v25;
        v116 = v23;
        v117 = v24;
        v26 = *(v5 + 5);
        v27 = *(v5 + 6);
        v28 = *(v5 + 8);
        v122 = *(v5 + 7);
        v123 = v28;
        v120 = v26;
        v121 = v27;
        v29 = *(v5 + 9);
        v30 = *(v5 + 10);
        v31 = *(v5 + 11);
        v127 = *(v5 + 24);
        v125 = v30;
        v126 = v31;
        v124 = v29;
        v99 = v112;
        v100 = v113;
        v101 = v114;
        v95 = v108;
        v96 = v109;
        v97 = v110;
        v98 = v111;
        v91 = v104;
        v92 = v105;
        v93 = v106;
        v94 = v107;
        v89 = v102;
        v90 = v103;
        v86 = v30;
        v87 = v31;
        v88 = v127;
        v82 = v121;
        v83 = v122;
        v84 = v28;
        v85 = v29;
        v78 = v117;
        v79 = v118;
        v80 = v119;
        v81 = v120;
        v76 = v115;
        v77 = v116;
        if (a5)
        {
          outlined init with copy of GlassContainer.Effect(&v102, &v74);
          outlined init with copy of GlassContainer.Effect(&v115, &v74);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v115);
          outlined destroy of GlassContainer.Effect(&v102);
          v32 = v74;
          v33 = v72;
          if (v73)
          {
            v33 = 0.0;
          }

          if (v75)
          {
            v32 = 0.0;
          }

          if (v33 >= v32)
          {
            goto LABEL_13;
          }
        }

        else
        {
          outlined init with copy of GlassContainer.Effect(&v102, &v74);
          outlined init with copy of GlassContainer.Effect(&v115, &v74);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Effect(&v115);
          outlined destroy of GlassContainer.Effect(&v102);
          v36 = v74;
          v37 = v72;
          if (v75)
          {
            v36 = 0.0;
          }

          if (v73)
          {
            v37 = 0.0;
          }

          if (v36 >= v37)
          {
LABEL_13:
            v34 = v5;
            v35 = v8 == v5;
            v5 += 200;
            if (v35)
            {
              goto LABEL_15;
            }

LABEL_14:
            memmove(v8, v34, 0xC8uLL);
            goto LABEL_15;
          }
        }

        v34 = v7;
        v35 = v8 == v7;
        v7 += 200;
        if (!v35)
        {
          goto LABEL_14;
        }

LABEL_15:
        v8 += 200;
      }

      while (v5 < v13 && v7 < v6);
    }

    v7 = v8;
  }

LABEL_59:
  v69 = (v13 - v5) / 200;
  if (v7 != v5 || v7 >= &v5[200 * v69])
  {
    memmove(v7, v5, 200 * v69);
  }

  return 1;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char *a1, char *a2, uint64_t *a3, char a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __dst = (v10 + 344 * *v12);
      v17 = (v10 + 344 * *v15);
      v6 = (v10 + 344 * v16);

      specialized _merge<A>(low:mid:high:buffer:by:)(__dst, v17, v6, a2, a4 & 1);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __dst = (v10 + 200 * *v12);
      v17 = (v10 + 200 * *v15);
      v6 = (v10 + 200 * v16);

      specialized _merge<A>(low:mid:high:buffer:by:)(__dst, v17, v6, a2, a4 & 1);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v107 = MEMORY[0x1E69E7CC0];
  v7 = a3[1];
  swift_retain_n();
  if (v7 >= 1)
  {
    v89 = a4;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = v8;
      v11 = v8 + 1;
      v93 = v8;
      if (v8 + 1 >= v7)
      {
        ++v8;
        goto LABEL_31;
      }

      v12 = *a3;
      memcpy(__dst, (*a3 + 344 * v11), 0x154uLL);
      memcpy(v106, (v12 + 344 * v8), 0x154uLL);
      outlined init with copy of GlassContainer.Entry(__dst, v104);
      outlined init with copy of GlassContainer.Entry(v106, v104);
      v13 = specialized closure #1 in Array.sort<A>(by:reversed:)(__dst, v106, a5 & 1);
      if (v98)
      {
        outlined destroy of GlassContainer.Entry(v106);
        outlined destroy of GlassContainer.Entry(__dst);
        goto LABEL_105;
      }

      v14 = v13;
      outlined destroy of GlassContainer.Entry(v106);
      outlined destroy of GlassContainer.Entry(__dst);
      v15 = v8 + 2;
      if (v8 + 2 >= v7)
      {
        v8 += 2;
        if (!v14)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v16 = v12 + 344 * v8 + 344;
        while (1)
        {
          v8 = v15;
          memcpy(__src, (v16 + 344), 0x154uLL);
          memcpy(v104, v16, 0x154uLL);
          memcpy(v102, __src, sizeof(v102));
          memcpy(v101, v104, sizeof(v101));
          outlined init with copy of GlassContainer.Entry(__src, v100);
          outlined init with copy of GlassContainer.Entry(v104, v100);
          swift_getAtKeyPath();
          swift_getAtKeyPath();
          outlined destroy of GlassContainer.Entry(v104);
          outlined destroy of GlassContainer.Entry(__src);
          v17 = (a5 & 1) != 0 ? v99 < v100[0] : v100[0] < v99;
          v18 = v17;
          if ((v14 ^ v18))
          {
            break;
          }

          v15 = v8 + 1;
          v16 += 344;
          if (v7 == v8 + 1)
          {
            v11 = v8;
            v8 = v7;
            goto LABEL_22;
          }
        }

        v11 = v8 - 1;
LABEL_22:
        v10 = v93;
        if (!v14)
        {
          goto LABEL_31;
        }
      }

      if (v8 < v10)
      {
        goto LABEL_128;
      }

      if (v10 <= v11)
      {
        v19 = v9;
        v20 = 344 * v8 - 344;
        v21 = 344 * v10;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v8)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            memcpy(v104, (v24 + v21), 0x154uLL);
            memmove((v24 + v21), (v24 + v20), 0x158uLL);
            memcpy((v24 + v20), v104, 0x154uLL);
          }

          ++v23;
          v20 -= 344;
          v21 += 344;
        }

        while (v23 < v8);
        v9 = v19;
        v8 = v22;
      }

LABEL_31:
      v25 = a3[1];
      if (v8 < v25)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_125;
        }

        if (v8 - v10 < v89)
        {
          if (__OFADD__(v10, v89))
          {
            goto LABEL_126;
          }

          if (v10 + v89 >= v25)
          {
            v26 = a3[1];
          }

          else
          {
            v26 = v10 + v89;
          }

          if (v26 < v10)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:

            __break(1u);
LABEL_130:

            __break(1u);
LABEL_131:

            __break(1u);
LABEL_132:

            __break(1u);
LABEL_133:

            __break(1u);
            return result;
          }

          if (v8 != v26)
          {
            v96 = v9;
            v27 = *a3;
            v28 = *a3 + 344 * v8 - 344;
            v29 = v8;
            v30 = v10 - v8 + 1;
            do
            {
              v31 = v30;
              for (i = v28; ; i -= 344)
              {
                memcpy(__src, (i + 344), 0x154uLL);
                memcpy(v104, i, 0x154uLL);
                memcpy(v102, __src, sizeof(v102));
                memcpy(v101, v104, sizeof(v101));
                if (a5)
                {
                  outlined init with copy of GlassContainer.Entry(__src, v100);
                  outlined init with copy of GlassContainer.Entry(v104, v100);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Entry(v104);
                  outlined destroy of GlassContainer.Entry(__src);
                  if (v99 >= v100[0])
                  {
                    break;
                  }
                }

                else
                {
                  outlined init with copy of GlassContainer.Entry(__src, v100);
                  outlined init with copy of GlassContainer.Entry(v104, v100);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Entry(v104);
                  outlined destroy of GlassContainer.Entry(__src);
                  if (v100[0] >= v99)
                  {
                    break;
                  }
                }

                if (!v27)
                {
                  goto LABEL_129;
                }

                memcpy(v102, (i + 344), sizeof(v102));
                memcpy((i + 344), i, 0x158uLL);
                memcpy(i, v102, 0x154uLL);
                if (!v31)
                {
                  break;
                }

                ++v31;
              }

              v28 += 344;
              --v30;
              ++v29;
            }

            while (v29 != v26);
            v8 = v26;
            v9 = v96;
            v10 = v93;
          }
        }
      }

      if (v8 < v10)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v34 = *(v9 + 2);
      v33 = *(v9 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v9);
      }

      *(v9 + 2) = v35;
      v36 = v9 + 32;
      v37 = &v9[16 * v34 + 32];
      *v37 = v93;
      *(v37 + 1) = v8;
      v107 = v9;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_132;
      }

      if (v34)
      {
        v91 = v9 + 32;
        v92 = v8;
        v97 = v9;
        while (1)
        {
          v38 = v35 - 1;
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v39 = *(v9 + 4);
            v40 = *(v9 + 5);
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_72:
            if (v42)
            {
              goto LABEL_115;
            }

            v55 = &v9[16 * v35];
            v57 = *v55;
            v56 = *(v55 + 1);
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_118;
            }

            v61 = &v36[16 * v38];
            v63 = *v61;
            v62 = *(v61 + 1);
            v49 = __OFSUB__(v62, v63);
            v64 = v62 - v63;
            if (v49)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v59, v64))
            {
              goto LABEL_122;
            }

            if (v59 + v64 >= v41)
            {
              if (v41 < v64)
              {
                v38 = v35 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          v65 = &v9[16 * v35];
          v67 = *v65;
          v66 = *(v65 + 1);
          v49 = __OFSUB__(v66, v67);
          v59 = v66 - v67;
          v60 = v49;
LABEL_86:
          if (v60)
          {
            goto LABEL_117;
          }

          v68 = &v36[16 * v38];
          v70 = *v68;
          v69 = *(v68 + 1);
          v49 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v49)
          {
            goto LABEL_120;
          }

          if (v71 < v59)
          {
            goto LABEL_3;
          }

LABEL_93:
          if (v38 - 1 >= v35)
          {
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

          v76 = *a3;
          if (!*a3)
          {
            goto LABEL_130;
          }

          v77 = a5;
          v78 = &v36[16 * v38 - 16];
          v79 = *v78;
          v80 = v38;
          v81 = &v36[16 * v38];
          v82 = *(v81 + 1);
          v83 = (v76 + 344 * *v78);
          v84 = (v76 + 344 * *v81);
          v85 = (v76 + 344 * v82);

          specialized _merge<A>(low:mid:high:buffer:by:)(v83, v84, v85, v94, v77 & 1);
          if (v98)
          {

            v107 = v97;
            goto LABEL_105;
          }

          if (v82 < v79)
          {
            goto LABEL_110;
          }

          v86 = *(v97 + 2);
          if (v80 > v86)
          {
            goto LABEL_111;
          }

          *v78 = v79;
          *(v78 + 1) = v82;
          if (v80 >= v86)
          {
            goto LABEL_112;
          }

          v35 = v86 - 1;
          memmove(v81, v81 + 16, 16 * (v86 - 1 - v80));
          v9 = v97;
          *(v97 + 2) = v86 - 1;
          v17 = v86 > 2;
          a5 = v77;
          v36 = v91;
          v8 = v92;
          if (!v17)
          {
LABEL_3:
            v107 = v9;
            goto LABEL_4;
          }
        }

        v43 = &v36[16 * v35];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_113;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_114;
        }

        v50 = &v9[16 * v35];
        v52 = *v50;
        v51 = *(v50 + 1);
        v49 = __OFSUB__(v51, v52);
        v53 = v51 - v52;
        if (v49)
        {
          goto LABEL_116;
        }

        v49 = __OFADD__(v41, v53);
        v54 = v41 + v53;
        if (v49)
        {
          goto LABEL_119;
        }

        if (v54 >= v46)
        {
          v72 = &v36[16 * v38];
          v74 = *v72;
          v73 = *(v72 + 1);
          v49 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v49)
          {
            goto LABEL_123;
          }

          if (v41 < v75)
          {
            v38 = v35 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_72;
      }

LABEL_4:
      v7 = a3[1];
    }

    while (v8 < v7);
  }

  v87 = *a1;
  if (!*a1)
  {
    goto LABEL_133;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v107, v87, a3, a5 & 1);
  if (v98)
  {

LABEL_105:
  }

  else
  {
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, char a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      __src[0] = (v8 + 32);
      __src[1] = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(__src, __dst, a1, v6, a2 & 1);

      *(v8 + 16) = 0;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v4 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  if (v4 <= 1)
  {
  }

  v9 = *a1;

  v10 = 0;
  v11 = 1;
  for (i = v9; ; i += 344)
  {
    v13 = v10;
    for (j = i; ; j -= 344)
    {
      memcpy(__dst, (j + 344), 0x154uLL);
      memcpy(__src, j, 0x154uLL);
      memcpy(v17, __dst, sizeof(v17));
      memcpy(v16, __src, sizeof(v16));
      if (a2)
      {
        outlined init with copy of GlassContainer.Entry(__dst, v15);
        outlined init with copy of GlassContainer.Entry(__src, v15);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__src);
        result = outlined destroy of GlassContainer.Entry(__dst);
        if (v20 >= v15[0])
        {
          break;
        }
      }

      else
      {
        outlined init with copy of GlassContainer.Entry(__dst, v15);
        outlined init with copy of GlassContainer.Entry(__src, v15);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Entry(__src);
        result = outlined destroy of GlassContainer.Entry(__dst);
        if (v15[0] >= v20)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_24;
      }

      memcpy(v17, (j + 344), sizeof(v17));
      memcpy((j + 344), j, 0x158uLL);
      memcpy(j, v17, 0x154uLL);
      if (!v13)
      {
        break;
      }

      ++v13;
    }

    if (++v11 == v4)
    {
      break;
    }

    --v10;
  }
}

{
  v4 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      *&v88 = v8 + 32;
      *(&v88 + 1) = v7;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v88, &v75, a1, v6, a2 & 1);

      *(v8 + 16) = 0;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v4 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v4 <= 1)
  {
  }

  v43 = v4;
  v9 = *a1;

  v10 = 0;
  v11 = 1;
  for (i = v9; ; i += 200)
  {
    v44 = v10;
    for (j = i; ; j -= 200)
    {
      v14 = (j + 200);
      v75 = *(j + 200);
      v15 = *(j + 216);
      v16 = *(j + 232);
      v17 = *(j + 264);
      v78 = *(j + 248);
      v79 = v17;
      v76 = v15;
      v77 = v16;
      v18 = *(j + 280);
      v19 = *(j + 296);
      v20 = *(j + 328);
      v82 = *(j + 312);
      v83 = v20;
      v80 = v18;
      v81 = v19;
      v21 = *(j + 344);
      v22 = *(j + 360);
      v23 = *(j + 376);
      v87 = *(j + 392);
      v85 = v22;
      v86 = v23;
      v84 = v21;
      v88 = *j;
      v24 = *(j + 16);
      v25 = *(j + 32);
      v26 = *(j + 64);
      v91 = *(j + 48);
      v92 = v26;
      v89 = v24;
      v90 = v25;
      v27 = *(j + 80);
      v28 = *(j + 96);
      v29 = *(j + 128);
      v95 = *(j + 112);
      v96 = v29;
      v93 = v27;
      v94 = v28;
      v30 = *(j + 144);
      v31 = *(j + 160);
      v32 = *(j + 176);
      v100 = *(j + 192);
      v98 = v31;
      v99 = v32;
      v97 = v30;
      v72 = v85;
      v73 = v86;
      v74 = v87;
      v68 = v81;
      v69 = v82;
      v70 = v83;
      v71 = v84;
      v64 = v77;
      v65 = v78;
      v66 = v79;
      v67 = v80;
      v62 = v75;
      v63 = v76;
      v59 = v31;
      v60 = v32;
      v61 = v100;
      v55 = v94;
      v56 = v95;
      v57 = v29;
      v58 = v30;
      v51 = v90;
      v52 = v91;
      v53 = v92;
      v54 = v93;
      v49 = v88;
      v50 = v89;
      if (a2)
      {
        outlined init with copy of GlassContainer.Effect(&v75, &v47);
        outlined init with copy of GlassContainer.Effect(&v88, &v47);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Effect(&v88);
        result = outlined destroy of GlassContainer.Effect(&v75);
        v33 = v47;
        v34 = v45;
        if (v46)
        {
          v34 = 0.0;
        }

        if (v48)
        {
          v33 = 0.0;
        }

        if (v34 >= v33)
        {
          break;
        }
      }

      else
      {
        outlined init with copy of GlassContainer.Effect(&v75, &v47);
        outlined init with copy of GlassContainer.Effect(&v88, &v47);
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        outlined destroy of GlassContainer.Effect(&v88);
        result = outlined destroy of GlassContainer.Effect(&v75);
        v35 = v47;
        v36 = v45;
        if (v48)
        {
          v35 = 0.0;
        }

        if (v46)
        {
          v36 = 0.0;
        }

        if (v35 >= v36)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_32;
      }

      v71 = *(j + 344);
      v72 = *(j + 360);
      v73 = *(j + 376);
      v74 = *(j + 392);
      v67 = *(j + 280);
      v68 = *(j + 296);
      v69 = *(j + 312);
      v70 = *(j + 328);
      v63 = *(j + 216);
      v64 = *(j + 232);
      v65 = *(j + 248);
      v66 = *(j + 264);
      v62 = *v14;
      v37 = *(j + 176);
      *(j + 360) = *(j + 160);
      *(j + 376) = v37;
      *(j + 392) = *(j + 192);
      v38 = *(j + 112);
      *(j + 296) = *(j + 96);
      *(j + 312) = v38;
      v39 = *(j + 144);
      *(j + 328) = *(j + 128);
      *(j + 344) = v39;
      v40 = *(j + 48);
      *(j + 232) = *(j + 32);
      *(j + 248) = v40;
      v41 = *(j + 80);
      *(j + 264) = *(j + 64);
      *(j + 280) = v41;
      v42 = *(j + 16);
      *v14 = *j;
      *(j + 216) = v42;
      *(j + 144) = v71;
      *(j + 160) = v72;
      *(j + 176) = v73;
      *(j + 192) = v74;
      *(j + 80) = v67;
      *(j + 96) = v68;
      *(j + 112) = v69;
      *(j + 128) = v70;
      *(j + 16) = v63;
      *(j + 32) = v64;
      *(j + 48) = v65;
      *(j + 64) = v66;
      *j = v62;
      if (!v10)
      {
        break;
      }

      ++v10;
    }

    if (++v11 == v43)
    {
      break;
    }

    v10 = v44 - 1;
  }
}

uint64_t specialized GlassContainerResolvedStorage.preparingUpdate(newStorage:newModelEntries:update:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v179 = v2;
  v3 = *(v1 + 24);
  v168 = v1;
  GlassContainerResolvedStorage.resolver.getter(v272);
  v4 = v272[1];
  v178 = *(v272[1] + 16);
  if (!v178)
  {
    goto LABEL_114;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_122;
  }

  if (!*(v4 + 2))
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_4:
  v5 = 0;
  v177 = v4 + 32;
  v6 = &unk_18DDAA010;
  v7 = vld1q_dup_f64(v6);
  v171 = v7.f64[1];
  v8 = &unk_18DDAA018;
  v9 = vld1q_dup_f64(v8);
  v170 = v9.f64[1];
  v10 = &unk_18DDA9FF8;
  v11 = vld1q_dup_f64(v10);
  v174 = v11.f64[1];
  v12 = &unk_18DDAA008;
  v13 = vld1q_dup_f64(v12);
  v172 = vdupq_n_s64(0x3FF3333333333333uLL);
  v173 = v13.f64[1];
  __asm { FMOV            V0.2D, #0.5 }

  v175 = _Q0;
  v18 = 1;
  v180 = v3;
  v176 = v4;
  while (1)
  {
    v217 = &v177[344 * v5];
    v19 = v18;
    v20 = *(v217 + 41);
    swift_beginAccess();
    v21 = *(v3 + 168);
    v198 = v20;
    v181 = v19;
    if (!*(v21 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v23 & 1) == 0))
    {
      swift_endAccess();
      BYTE8(v228[0]) = 1;
      *&v228[0] = 0;
      *&v228[1] = MEMORY[0x1E69E7CC0];
      *(&v228[1] + 1) = MEMORY[0x1E69E7CC0];
      GlassContainer.Appearance.init()(&v228[2]);
      *(&v228[6] + 1) = 0;
      v228[7] = 0uLL;
      type metadata accessor for GlassContainerPTDomain();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v227.receiver = ObjCClassFromMetadata;
      v227.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
      v47 = objc_msgSendSuper2(&v227, sel_rootSettings);
      if (!v47)
      {
        goto LABEL_124;
      }

      v48 = v47;
      type metadata accessor for GlassContainerPTSettings();
      v49 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

      GlassContainerScalePulsePTSettings.scalePulse.getter(__src);
      v50 = __src[0];
      _Q7 = __src[1];
      v52 = __src[2];
      v53 = *(&__src[3] + 8);
      v54 = *(&__src[4] + 8);
      v55 = *(&__src[5] + 8);
      v56 = *(&__src[6] + 8);
      v57 = *&__src[3];
      v58 = *(&__src[7] + 1);
      v59 = __src[8];
      v60 = *&__src[9];
      if (one-time initialization token for enableAdjustments != -1)
      {
        v210 = __src[2];
        v216 = __src[8];
        v203 = *(&__src[4] + 8);
        v206 = *(&__src[3] + 8);
        v200 = *(&__src[5] + 8);
        v195 = __src[1];
        v197 = *(&__src[6] + 8);
        v193 = __src[0];
        swift_once();
        v50 = v193;
        _Q7 = v195;
        v56 = v197;
        v55 = v200;
        v54 = v203;
        v53 = v206;
        v52 = v210;
        v59 = v216;
      }

      v61 = enableAdjustments;
      if (!enableAdjustments)
      {
        Spring.init(duration:bounce:)(0.5, 0.3);
        v212 = __src[0];
        v60 = *&__src[1];
        Spring.init(duration:bounce:)(0.35, 0.6);
        v208 = __src[0];
        v57 = *&__src[1];
        Spring.init(duration:bounce:)(0.5, 0.5);
        *(&v62 + 1) = v174;
        *&v62 = *&__dst[1];
        v202 = v62;
        v205 = __dst[0];
        Spring.init(duration:bounce:)(0.5, 0.6);
        v54 = v202;
        v53 = v205;
        v52 = v208;
        v59 = v212;
        v55 = v220[0];
        v50 = v172;
        *(&v56 + 1) = v173;
        *&v56 = *&v220[1];
        __asm { FMOV            V7.2D, #16.0 }

        v58 = 10.0;
      }

      *(&v228[8] + 8) = v175;
      BYTE8(v228[9]) = 0;
      *&v228[8] = 0;
      *&v228[10] = 0;
      *(&v228[10] + 8) = v50;
      *(&v228[11] + 8) = _Q7;
      *(&v228[12] + 8) = v52;
      v228[14] = v53;
      v228[15] = v54;
      v228[16] = v55;
      v228[17] = v56;
      *(&v228[13] + 1) = v57;
      *&v228[18] = v58;
      *(&v228[18] + 8) = v59;
      *(&v228[19] + 1) = v60;
      *&v228[20] = 0;
      *(&v228[20] + 1) = MEMORY[0x1E69E7CC0];
      *&v228[21] = 0;
      v226.receiver = ObjCClassFromMetadata;
      v226.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
      v63 = objc_msgSendSuper2(&v226, sel_rootSettings);
      if (!v63)
      {
        goto LABEL_125;
      }

      v64 = v63;
      v65 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_translationKick);

      GlassContainerTranslationKickPTSettings.translationKick.getter(__src);
      if (v61)
      {
        v66 = __src[0];
        v67 = __src[1];
        v68 = __src[2];
        v69 = __src[3];
        v70 = *&__src[4];
      }

      else
      {
        Spring.init(duration:bounce:)(0.3, 0.0);
        *(&v71 + 1) = v171;
        *&v71 = *&__src[1];
        v209 = v71;
        v213 = __src[0];
        Spring.init(duration:bounce:)(0.6, 0.2);
        v67 = v209;
        v66 = v213;
        v68 = __dst[0];
        *(&v69 + 1) = v170;
        *&v69 = *&__dst[1];
        v70 = 6.0;
      }

      v72 = v217;
      *(&v228[21] + 8) = v66;
      *(&v228[22] + 8) = v67;
      *(&v228[23] + 8) = v68;
      *(&v228[24] + 8) = v69;
      *(&v228[25] + 1) = v70;
      LOBYTE(v228[26]) = 1;
      *(&v228[26] + 1) = 0;
      _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(v221);
      v228[35] = v221[8];
      v228[36] = v221[9];
      v228[37] = v221[10];
      LOBYTE(v228[38]) = v222;
      v228[31] = v221[4];
      v228[32] = v221[5];
      v228[33] = v221[6];
      v228[34] = v221[7];
      v228[27] = v221[0];
      v228[28] = v221[1];
      v228[29] = v221[2];
      v228[30] = v221[3];
      *(&v228[38] + 1) = 0;
      *&v228[39] = MEMORY[0x1E69E7CC0];
      memcpy(v223, v228, 0x278uLL);
      swift_beginAccess();
      v73 = *(v3 + 176);
      memcpy(v220, v223, 0x278uLL);
      DWORD2(v220[39]) = v73;
      _ViewInputs.base.modify(v220, v74);
      memcpy(__dst, v220, 0x27CuLL);
      memcpy(__src, v220, 0x27CuLL);
      if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(__src) == 1)
      {
        v75 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
        if (v76)
        {
          v77 = v75;
          outlined init with copy of GlassContainer.EntryState(v223, v218);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v79 = *(v3 + 168);
          *&v231 = v79;
          *(v3 + 168) = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v79 = v231;
          }

          memcpy(v218, (*(v79 + 56) + 640 * v77), 0x27CuLL);
          specialized _NativeDictionary._delete(at:)(v77, v79);
          *(v3 + 168) = v79;
          outlined destroy of SeedValue<GlassContainer.EntryState>(v218, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
        }

        else
        {
          outlined init with copy of GlassContainer.EntryState(v223, v218);
        }
      }

      else
      {
        memcpy(v273, __dst, 0x27CuLL);
        outlined init with copy of GlassContainer.EntryState(v223, v218);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        *&v218[0] = *(v3 + 168);
        *(v3 + 168) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v273, v20, v80);
        *(v3 + 168) = *&v218[0];
      }

      swift_endAccess();
      v81 = *(&v223[26] + 1);
      v82 = *(&v223[38] + 1);
      v29 = *&v223[6];
      v83 = v223[3];
      v190 = *(&v223[1] + 1);
      v196 = *&v223[1];
      v191 = *&v223[39];
      v204 = *(&v223[6] + 1);
      v199 = *&v223[7];
      v84 = LOBYTE(v223[26]);
      v189 = *&v223[0];
      v43 = BYTE8(v223[0]);
      v271 = BYTE8(v223[0]);
      *(v270 + 3) = HIDWORD(v223[0]);
      v270[0] = *(v223 + 9);
      v85 = *(&v223[2] + 1);
      v26 = *&v223[2];
      v86 = v223[3];
      v269 = v223[3];
      *(v268 + 3) = DWORD1(v223[3]);
      v268[0] = *(&v223[3] + 1);
      v27 = *(&v223[3] + 1);
      v28 = *&v223[4];
      v267 = *(&v223[5] + 1);
      v266 = *(&v223[4] + 8);
      v30 = *(&v223[7] + 1);
      v4 = *&v223[8];
      v265 = *(&v223[8] + 8);
      v207 = BYTE8(v223[9]);
      *(v264 + 3) = HIDWORD(v223[9]);
      v264[0] = *(&v223[9] + 9);
      v255 = *(&v223[11] + 8);
      v254 = *(&v223[10] + 8);
      v259 = *(&v223[15] + 8);
      v258 = *(&v223[14] + 8);
      v257 = *(&v223[13] + 8);
      v256 = *(&v223[12] + 8);
      v263 = *(&v223[19] + 1);
      v262 = *(&v223[18] + 8);
      v261 = *(&v223[17] + 8);
      v260 = *(&v223[16] + 8);
      v201 = *&v223[10];
      v194 = *&v223[20];
      v192 = *&v223[21];
      v188 = *(&v223[20] + 1);
      v250 = *(&v223[22] + 8);
      v251 = *(&v223[23] + 8);
      v252 = *(&v223[24] + 8);
      v253 = *(&v223[25] + 1);
      v249 = *(&v223[21] + 8);
      v248[0] = *(&v223[26] + 1);
      *(v248 + 3) = DWORD1(v223[26]);
      v238 = v223[29];
      v239 = v223[30];
      v236 = v223[27];
      v237 = v223[28];
      v242 = v223[33];
      v243 = v223[34];
      v240 = v223[31];
      v241 = v223[32];
      v247 = *&v223[38];
      v245 = v223[36];
      v246 = v223[37];
      v244 = v223[35];
      if (v179)
      {
        goto LABEL_42;
      }

      v185 = LOBYTE(v223[26]);
      v211 = *(&v223[38] + 1);
      v186 = *(&v223[26] + 1);
      goto LABEL_36;
    }

    v24 = *(v21 + 56) + 640 * v22;
    memcpy(__dst, v24, 0x27CuLL);
    v235[0] = *(v24 + 9);
    *(v235 + 3) = *(v24 + 12);
    v25 = *(&__dst[2] + 1);
    v26 = *&__dst[2];
    v234[0] = *(v24 + 49);
    *(v234 + 3) = *(v24 + 52);
    v27 = *(&__dst[3] + 1);
    v28 = *&__dst[4];
    v232 = *(v24 + 72);
    v233 = *(v24 + 88);
    v29 = *&__dst[6];
    v30 = *(&__dst[7] + 1);
    v4 = *&__dst[8];
    v231 = *(v24 + 136);
    v230[0] = *(v24 + 153);
    *(v230 + 3) = *(v24 + 156);
    v228[1] = *(v24 + 184);
    v228[0] = *(v24 + 168);
    v228[5] = *(v24 + 248);
    v228[4] = *(v24 + 232);
    v228[3] = *(v24 + 216);
    v228[2] = *(v24 + 200);
    *&v228[9] = *(v24 + 312);
    v228[8] = *(v24 + 296);
    v228[7] = *(v24 + 280);
    v228[6] = *(v24 + 264);
    v223[1] = *(v24 + 360);
    v223[2] = *(v24 + 376);
    v223[3] = *(v24 + 392);
    *&v223[4] = *(v24 + 408);
    v223[0] = *(v24 + 344);
    v229[0] = *(v24 + 417);
    *(v229 + 3) = *(v24 + 420);
    v218[8] = *(v24 + 560);
    v218[9] = *(v24 + 576);
    v218[10] = *(v24 + 592);
    *&v218[11] = *(v24 + 608);
    v218[4] = *(v24 + 496);
    v218[5] = *(v24 + 512);
    v218[6] = *(v24 + 528);
    v218[7] = *(v24 + 544);
    v218[0] = *(v24 + 432);
    v218[1] = *(v24 + 448);
    v218[2] = *(v24 + 464);
    v218[3] = *(v24 + 480);
    v31 = *(v3 + 176);
    v189 = *&__dst[0];
    v190 = *(&__dst[1] + 1);
    *&__src[0] = *&__dst[0];
    v32 = BYTE8(__dst[0]);
    BYTE8(__src[0]) = BYTE8(__dst[0]);
    HIDWORD(__src[0]) = *(v235 + 3);
    *(__src + 9) = v235[0];
    v196 = *&__dst[1];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    v182 = __dst[3];
    LOBYTE(__src[3]) = __dst[3];
    DWORD1(__src[3]) = *(v234 + 3);
    *(&__src[3] + 1) = v234[0];
    *(&__src[3] + 1) = *(&__dst[3] + 1);
    *&__src[4] = *&__dst[4];
    *(&__src[5] + 1) = v233;
    *(&__src[4] + 8) = v232;
    v204 = *(&__dst[6] + 1);
    __src[6] = __dst[6];
    v199 = *&__dst[7];
    __src[7] = __dst[7];
    *&__src[8] = *&__dst[8];
    *(&__src[8] + 8) = v231;
    v207 = BYTE8(__dst[9]);
    BYTE8(__src[9]) = BYTE8(__dst[9]);
    HIDWORD(__src[9]) = *(v230 + 3);
    *(&__src[9] + 9) = v230[0];
    *(&__src[16] + 8) = v228[6];
    *(&__src[17] + 8) = v228[7];
    *(&__src[18] + 8) = v228[8];
    *(&__src[19] + 1) = *&v228[9];
    *(&__src[12] + 8) = v228[2];
    *(&__src[13] + 8) = v228[3];
    *(&__src[14] + 8) = v228[4];
    *(&__src[15] + 8) = v228[5];
    *(&__src[10] + 8) = v228[0];
    *(&__src[11] + 8) = v228[1];
    v201 = *&__dst[10];
    *&__src[10] = *&__dst[10];
    v188 = *(&__dst[20] + 1);
    v194 = *&__dst[20];
    __src[20] = __dst[20];
    v192 = *&__dst[21];
    *&__src[21] = *&__dst[21];
    *(&__src[23] + 8) = v223[2];
    *(&__src[24] + 8) = v223[3];
    *(&__src[25] + 1) = *&v223[4];
    *(&__src[21] + 8) = v223[0];
    *(&__src[22] + 8) = v223[1];
    v185 = LOBYTE(__dst[26]);
    LOBYTE(__src[26]) = __dst[26];
    *(&__src[26] + 1) = v229[0];
    DWORD1(__src[26]) = *(v229 + 3);
    __src[35] = v218[8];
    __src[36] = v218[9];
    __src[37] = v218[10];
    *&__src[38] = *&v218[11];
    __src[31] = v218[4];
    __src[32] = v218[5];
    __src[33] = v218[6];
    __src[34] = v218[7];
    __src[27] = v218[0];
    __src[28] = v218[1];
    __src[29] = v218[2];
    __src[30] = v218[3];
    v186 = *(&__dst[26] + 1);
    *(&__src[26] + 1) = *(&__dst[26] + 1);
    v211 = *(&__dst[38] + 1);
    *(&__src[38] + 1) = *(&__dst[38] + 1);
    v191 = *&__dst[39];
    *&__src[39] = *&__dst[39];
    DWORD2(__src[39]) = v31;
    outlined init with copy of Resolver?(__dst, v220, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
    outlined init with copy of Resolver?(__src, v220, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v3 + 168);
    *(v3 + 168) = 0x8000000000000000;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v20);
    v37 = v34[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_119;
    }

    v40 = v35;
    if (v34[3] >= v39)
    {
      if (v33)
      {
        v43 = v32;
        if ((v35 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v43 = v32;
        if ((v40 & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, v33);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v198);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_126;
      }

      v36 = v41;
      v43 = v32;
      if ((v40 & 1) == 0)
      {
LABEL_11:
        v3 = v34;
        v34[(v36 >> 6) + 8] |= 1 << v36;
        *(v34[6] + 8 * v36) = v198;
        memcpy((v34[7] + 640 * v36), __src, 0x27CuLL);
        v44 = v34[2];
        _VF = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (_VF)
        {
          goto LABEL_121;
        }

        v34[2] = v45;
        goto LABEL_34;
      }
    }

    v3 = v34;
    v87 = (v34[7] + 640 * v36);
    memcpy(v220, v87, 0x27CuLL);
    memcpy(v87, __src, 0x27CuLL);
    outlined destroy of SeedValue<GlassContainer.EntryState>(v220, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
LABEL_34:
    v85 = v25;
    *(v180 + 168) = v3;
    v3 = v180;
    v270[0] = v235[0];
    *(v270 + 3) = *(v235 + 3);
    v268[0] = v234[0];
    *(v268 + 3) = *(v234 + 3);
    v266 = v232;
    v267 = v233;
    v265 = v231;
    *(v264 + 3) = *(v230 + 3);
    v264[0] = v230[0];
    v255 = v228[1];
    v254 = v228[0];
    v259 = v228[5];
    v258 = v228[4];
    v257 = v228[3];
    v256 = v228[2];
    v263 = *&v228[9];
    v262 = v228[8];
    v261 = v228[7];
    v260 = v228[6];
    v250 = v223[1];
    v251 = v223[2];
    v252 = v223[3];
    v253 = *&v223[4];
    v249 = v223[0];
    v248[0] = v229[0];
    *(v248 + 3) = *(v229 + 3);
    v238 = v218[2];
    v239 = v218[3];
    v236 = v218[0];
    v237 = v218[1];
    v242 = v218[6];
    v243 = v218[7];
    v240 = v218[4];
    v241 = v218[5];
    v247 = *&v218[11];
    v245 = v218[9];
    v246 = v218[10];
    v244 = v218[8];
    swift_endAccess();
    v271 = v43;
    v83 = v182;
    v269 = v182;
    v72 = v217;
    if (v179)
    {
      v81 = v186;
      v82 = v211;
      v84 = v185;
      goto LABEL_42;
    }

    v86 = v182;
LABEL_36:
    memcpy(__src, v72, 0x154uLL);
    v218[8] = v244;
    v218[9] = v245;
    v218[10] = v246;
    v218[4] = v240;
    v218[5] = v241;
    v218[6] = v242;
    v218[7] = v243;
    v218[0] = v236;
    v218[1] = v237;
    v218[2] = v238;
    v218[3] = v239;
    v220[8] = v244;
    v220[9] = v245;
    v220[10] = v246;
    v220[4] = v240;
    v220[5] = v241;
    v220[6] = v242;
    v220[7] = v243;
    v220[0] = v236;
    v220[1] = v237;
    v220[2] = v238;
    LOBYTE(v218[11]) = v247;
    LOBYTE(v220[11]) = v247;
    v220[3] = v239;
    if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(v220) != 1)
    {
      v169 = v43;
      v88 = *&__src[9];
      v89 = DWORD2(__src[9]);
      v228[0] = __src[9];
      outlined init with copy of GlassContainer.Entry(__src, __dst);
      outlined init with copy of Resolver?(v218, __dst, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      outlined copy of _Glass.Variant.Role(v88, v89);
      _Glass.Variant.ID.init(_:)(v228, v223);
      *&v228[0] = *&v223[0];
      BYTE8(v228[0]) = BYTE8(v223[0]);
      __dst[0] = xmmword_18DDAA050;
      _Glass.Variant.ID.init(_:)(__dst, v221);
      *&__dst[0] = *&v221[0];
      BYTE8(__dst[0]) = BYTE8(v221[0]);
      LOBYTE(v88) = specialized static _Glass.Variant.ID.== infix(_:_:)(v228, __dst);
      outlined consume of _Glass.Variant.ID(*&__dst[0], BYTE8(__dst[0]));
      outlined consume of _Glass.Variant.ID(*&v228[0], BYTE8(v228[0]));
      if (v88)
      {
        outlined destroy of SeedValue<GlassContainer.EntryState>(v218, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
        outlined destroy of GlassContainer.Entry(__src);
        v81 = v186;
        v82 = v211;
        v84 = v185;
      }

      else
      {
        v90 = *&v220[0];
        v91 = DWORD2(v220[0]);
        __dst[0] = v220[0];
        outlined copy of _Glass.Variant.Role(*&v220[0], DWORD2(v220[0]));
        outlined copy of _Glass.Variant.Role(v90, v91);
        _Glass.Variant.ID.init(_:)(__dst, v228);
        *&v223[0] = *&v228[0];
        BYTE8(v223[0]) = BYTE8(v228[0]);
        __dst[0] = xmmword_18DDAA050;
        _Glass.Variant.ID.init(_:)(__dst, v221);
        *&__dst[0] = *&v221[0];
        BYTE8(__dst[0]) = BYTE8(v221[0]);
        v92 = specialized static _Glass.Variant.ID.== infix(_:_:)(v223, __dst);
        outlined destroy of SeedValue<GlassContainer.EntryState>(v218, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
        v93 = v91;
        v72 = v217;
        outlined consume of _Glass.Variant.Role(v90, v93);
        outlined consume of _Glass.Variant.ID(*&__dst[0], BYTE8(__dst[0]));
        outlined consume of _Glass.Variant.ID(*&v223[0], BYTE8(v223[0]));
        outlined destroy of GlassContainer.Entry(__src);
        v81 = v186;
        v82 = v211;
        v84 = v185;
        v43 = v169;
        if ((v92 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

LABEL_42:
      v94 = v201;
      if (v201)
      {
        _ZF = v84 == 1;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        v4 = v201;
      }

      v96 = v207;
      if (v84 != 1)
      {
        v96 = 0;
      }

      v207 = v96;
      if (v84 != 1)
      {
        v94 = 0;
      }

      v201 = v94;
      v187 = v81;
      v214 = v82;
      v183 = v4;
      if (v204 | v199)
      {
        if (v84 == 1)
        {
          v97 = v85;
        }

        else
        {
          v98 = v204;
          if (v199)
          {
            v98 = v199;
          }

          v204 = v98;
          v99 = v194;
          if (v192)
          {
            v99 = v192;
          }

          v194 = v99;
          v97 = v85;
          v199 = 0;
          v192 = 0;
        }

        goto LABEL_67;
      }

      v97 = 0.0;
      if (v84)
      {
        if (v84 == 1)
        {

          v204 = 0;
          v199 = 0;
          LOBYTE(v84) = 1;
          v190 = MEMORY[0x1E69E7CC0];
          v97 = v85;
LABEL_67:
          LOBYTE(v185) = v84;
          v101 = *(v72 + 16);
          v4 = *(v101 + 2);
          if (!v4)
          {
LABEL_83:
            __src[8] = v244;
            __src[9] = v245;
            __src[10] = v246;
            LOBYTE(__src[11]) = v247;
            __src[4] = v240;
            __src[5] = v241;
            __src[6] = v242;
            __src[7] = v243;
            __src[0] = v236;
            __src[1] = v237;
            __src[2] = v238;
            __src[3] = v239;
            if (_s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(__src) != 1)
            {
              v121 = *(v72 + 9);
              v122 = *(v72 + 10);
              v123 = *(v72 + 12);
              v228[2] = *(v72 + 11);
              v228[3] = v123;
              v228[0] = v121;
              v228[1] = v122;
              v124 = *(v72 + 13);
              v125 = *(v72 + 14);
              v126 = *(v72 + 16);
              v228[6] = *(v72 + 15);
              v228[7] = v126;
              v228[4] = v124;
              v228[5] = v125;
              v127 = *(v72 + 17);
              v128 = *(v72 + 18);
              v129 = *(v72 + 19);
              LOBYTE(v228[11]) = v72[320];
              v228[9] = v128;
              v228[10] = v129;
              v228[8] = v127;
              v130 = __src[0];
              v131 = __src[1];
              v132 = __src[3];
              *(v72 + 11) = __src[2];
              *(v72 + 12) = v132;
              *(v72 + 9) = v130;
              *(v72 + 10) = v131;
              v133 = __src[4];
              v134 = __src[5];
              v135 = __src[7];
              *(v72 + 15) = __src[6];
              *(v72 + 16) = v135;
              *(v72 + 13) = v133;
              *(v72 + 14) = v134;
              v136 = __src[8];
              v137 = __src[9];
              v138 = __src[10];
              v72[320] = __src[11];
              *(v72 + 18) = v137;
              *(v72 + 19) = v138;
              *(v72 + 17) = v136;
              v218[8] = v244;
              v218[9] = v245;
              v218[10] = v246;
              LOBYTE(v218[11]) = v247;
              v218[4] = v240;
              v218[5] = v241;
              v218[6] = v242;
              v218[7] = v243;
              v218[0] = v236;
              v218[1] = v237;
              v218[2] = v238;
              v218[3] = v239;
              outlined init with copy of GlassContainer.DisplayMaterial(v218, __dst);
              outlined destroy of GlassContainer.DisplayMaterial(v228);
              _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(v220);
              __dst[8] = v244;
              __dst[9] = v245;
              __dst[10] = v246;
              __dst[4] = v240;
              __dst[5] = v241;
              __dst[6] = v242;
              __dst[7] = v243;
              __dst[0] = v236;
              __dst[1] = v237;
              __dst[2] = v238;
              LOBYTE(__dst[11]) = v247;
              __dst[3] = v239;
              outlined destroy of SeedValue<GlassContainer.EntryState>(__dst, &lazy cache variable for type metadata for GlassContainer.DisplayMaterial?, &type metadata for GlassContainer.DisplayMaterial, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
              v244 = v220[8];
              v245 = v220[9];
              v246 = v220[10];
              LOBYTE(v247) = v220[11];
              v240 = v220[4];
              v241 = v220[5];
              v242 = v220[6];
              v243 = v220[7];
              v236 = v220[0];
              v237 = v220[1];
              v238 = v220[2];
              v239 = v220[3];
            }

            v3 = v180;
            if (v214)
            {
              *(v72 + 8) = v214;
            }

            v4 = v183;
            if (v187)
            {
              *(v72 + 15) = v187;
            }

            v81 = 0;
            v82 = 0;
            ++*(v72 + 84);
            v43 = v271;
            v86 = v269;
            v85 = v97;
            goto LABEL_90;
          }

          v102 = 0;
          v3 = 0;
          while (1)
          {
            v103 = swift_isUniquelyReferenced_nonNull_native();
            *(v72 + 16) = v101;
            if ((v103 & 1) == 0)
            {
              v101 = specialized _ArrayBuffer._consumeAndCreateNew()(v101);
              *(v72 + 16) = v101;
            }

            if (v3 >= *(v101 + 2))
            {
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
              v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              if (!*(v4 + 2))
              {
                goto LABEL_123;
              }

              goto LABEL_4;
            }

            v104 = &v101[v102];
            if (!v101[v102 + 680])
            {
              break;
            }

            if (v101[v102 + 680] != 1)
            {
              v105 = &v101[v102];
              v106 = *&v101[v102 + 280];
              v107 = *&v101[v102 + 288];
              v108 = *&v101[v102 + 248];
              v109 = *&v101[v102 + 256];
              v110 = *&v101[v102 + 272];
              *(v105 + 31) = v110;
              *(v105 + 32) = v106;
              *(v105 + 33) = v107;
              outlined copy of Text.LineStyle?(v110, v106);
              v111 = v109;
              v72 = v217;
              outlined consume of Text.LineStyle?(v108, v111);
              v112 = *&v101[v102 + 272];
              v113 = *&v101[v102 + 280];
              *(v105 + 17) = xmmword_18DD85550;
              *(v105 + 36) = 0;
              outlined consume of Text.LineStyle?(v112, v113);
              v114 = &v101[656 * v3 + 304];
              v115 = *&v101[v102 + 304];
              v116 = &v101[656 * v3 + 312];
              if (v101[v102 + 312])
              {
                v115 = 1.0;
              }

              *(v105 + 37) = v115;
              *(v105 + 40) = 0;
              v117 = *(v105 + 45);
LABEL_81:
              *&v101[v102 + 328] = v117;
              *v114 = 0;
              *v116 = 1;
              if (v104[680] != 1)
              {
                v104[680] = 1;
              }
            }

            ++v3;
            v101 = *(v72 + 16);
            v102 += 656;
            if (v4 == v3)
            {
              goto LABEL_83;
            }
          }

          v118 = *(v104 + 31);
          v119 = *(v104 + 32);
          *(v104 + 248) = xmmword_18DD85550;
          *(v104 + 33) = 0;
          outlined consume of Text.LineStyle?(v118, v119);
          v114 = v104 + 304;
          v120 = *(v104 + 38);
          v116 = v104 + 312;
          v117 = 0;
          if (v104[312])
          {
            v120 = 0.0;
          }

          *(v104 + 37) = v120;
          *(v104 + 40) = 0x3FF0000000000000;
          goto LABEL_81;
        }

        v27 = 0.0;
        v26 = 1.0;
        v100 = v191;
        v28 = v29;
        v191 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v27 = 1.0;
        v26 = 0.0;
        v100 = MEMORY[0x1E69E7CC0];
        v28 = 0;
      }

      v271 = 1;

      LOBYTE(v84) = 1;
      v189 = 0;
      v204 = 0;
      v199 = 0;
      if ((v83 & 1) == 0)
      {
        v26 = v85;
      }

      v269 = 1;
      v196 = v100;
      goto LABEL_67;
    }

    v81 = v186;
    v82 = v211;
LABEL_90:
    LOBYTE(v84) = v185;
LABEL_91:
    *&v218[0] = v189;
    BYTE8(v218[0]) = v43;
    *(v218 + 9) = v270[0];
    HIDWORD(v218[0]) = *(v270 + 3);
    *&v218[1] = v196;
    *(&v218[1] + 1) = v190;
    *&v218[2] = v26;
    *(&v218[2] + 1) = v85;
    v184 = v86;
    LOBYTE(v218[3]) = v86;
    *(&v218[3] + 1) = v268[0];
    DWORD1(v218[3]) = *(v268 + 3);
    *(&v218[3] + 1) = v27;
    *&v218[4] = v28;
    *(&v218[5] + 1) = v267;
    *(&v218[4] + 8) = v266;
    *&v218[6] = v29;
    *(&v218[6] + 1) = v204;
    *&v218[7] = v199;
    *(&v218[7] + 1) = v30;
    v139 = v4;
    *&v218[8] = v4;
    *(&v218[8] + 8) = v265;
    BYTE8(v218[9]) = v207;
    HIDWORD(v218[9]) = *(v264 + 3);
    *(&v218[9] + 9) = v264[0];
    *(&v218[10] + 8) = v254;
    *(&v218[11] + 8) = v255;
    *(&v218[14] + 8) = v258;
    *(&v218[15] + 8) = v259;
    *(&v218[12] + 8) = v256;
    *(&v218[13] + 8) = v257;
    *(&v218[19] + 1) = v263;
    *(&v218[17] + 8) = v261;
    *(&v218[18] + 8) = v262;
    *(&v218[16] + 8) = v260;
    *&v218[10] = v201;
    *&v218[20] = v194;
    *(&v218[20] + 1) = v188;
    *&v218[21] = v192;
    *(&v218[23] + 8) = v251;
    *(&v218[24] + 8) = v252;
    *(&v218[25] + 1) = v253;
    *(&v218[21] + 8) = v249;
    *(&v218[22] + 8) = v250;
    v140 = v84;
    LOBYTE(v218[26]) = v84;
    *(&v218[26] + 1) = v248[0];
    DWORD1(v218[26]) = *(v248 + 3);
    *&v218[38] = v247;
    v218[36] = v245;
    v218[37] = v246;
    v218[34] = v243;
    v218[35] = v244;
    v218[32] = v241;
    v218[33] = v242;
    v218[30] = v239;
    v218[31] = v240;
    v218[28] = v237;
    v218[29] = v238;
    v218[27] = v236;
    v141 = v81;
    *(&v218[26] + 1) = v81;
    v215 = v82;
    *(&v218[38] + 1) = v82;
    *&v218[39] = v191;
    swift_beginAccess();
    v142 = *(v3 + 176);
    memcpy(__dst, v218, 0x278uLL);
    DWORD2(__dst[39]) = v142;
    _ViewInputs.base.modify(__dst, v143);
    memcpy(v219, __dst, sizeof(v219));
    memcpy(__src, __dst, 0x27CuLL);
    if (_s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(__src) == 1)
    {
      v144 = specialized __RawDictionaryStorage.find<A>(_:)(v198);
      if ((v145 & 1) == 0)
      {
        outlined init with copy of GlassContainer.EntryState(v218, v220);
        goto LABEL_108;
      }

      v146 = v144;
      outlined init with copy of GlassContainer.EntryState(v218, v220);
      v147 = swift_isUniquelyReferenced_nonNull_native();
      v148 = *(v3 + 168);
      *&v223[0] = v148;
      *(v3 + 168) = 0x8000000000000000;
      if (!v147)
      {
        specialized _NativeDictionary.copy()();
        v148 = *&v223[0];
      }

      memcpy(v220, (v148[7] + 640 * v146), 0x27CuLL);
      outlined destroy of SeedValue<GlassContainer.EntryState>(v220, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
      specialized _NativeDictionary._delete(at:)(v146, v148);
      goto LABEL_107;
    }

    v4 = v43;
    outlined init with copy of GlassContainer.EntryState(v218, v220);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    *&v223[0] = *(v3 + 168);
    v150 = *&v223[0];
    *(v3 + 168) = 0x8000000000000000;
    v151 = specialized __RawDictionaryStorage.find<A>(_:)(v198);
    v153 = *(v150 + 16);
    v154 = (v152 & 1) == 0;
    _VF = __OFADD__(v153, v154);
    v155 = v153 + v154;
    if (_VF)
    {
      goto LABEL_118;
    }

    v156 = v152;
    if (*(v150 + 24) >= v155)
    {
      if ((v149 & 1) == 0)
      {
        v3 = v151;
        specialized _NativeDictionary.copy()();
        v151 = v3;
        LOBYTE(v43) = v4;
        if (v156)
        {
LABEL_103:
          v158 = *&v223[0];
          v159 = (*(*&v223[0] + 56) + 640 * v151);
          memcpy(v220, v159, 0x27CuLL);
          memcpy(v159, v219, 0x27CuLL);
          outlined destroy of SeedValue<GlassContainer.EntryState>(v220, &lazy cache variable for type metadata for SeedValue<GlassContainer.EntryState>, &type metadata for GlassContainer.EntryState, type metadata accessor for SeedValue, type metadata accessor for Resolver?);
          *(v180 + 168) = v158;
          v3 = v180;
          goto LABEL_108;
        }

        goto LABEL_105;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v155, v149);
      v151 = specialized __RawDictionaryStorage.find<A>(_:)(v198);
      if ((v156 & 1) != (v157 & 1))
      {
        goto LABEL_126;
      }
    }

    LOBYTE(v43) = v4;
    if (v156)
    {
      goto LABEL_103;
    }

LABEL_105:
    v148 = *&v223[0];
    *(*&v223[0] + 8 * (v151 >> 6) + 64) |= 1 << v151;
    *(v148[6] + 8 * v151) = v198;
    memcpy((v148[7] + 640 * v151), v219, 0x27CuLL);
    v160 = v148[2];
    _VF = __OFADD__(v160, 1);
    v161 = v160 + 1;
    if (_VF)
    {
      goto LABEL_120;
    }

    v148[2] = v161;
    v3 = v180;
LABEL_107:
    *(v3 + 168) = v148;
LABEL_108:
    swift_endAccess();
    *&v220[0] = v189;
    BYTE8(v220[0]) = v43;
    *(v220 + 9) = v270[0];
    HIDWORD(v220[0]) = *(v270 + 3);
    *&v220[1] = v196;
    *(&v220[1] + 1) = v190;
    *&v220[2] = v26;
    *(&v220[2] + 1) = v85;
    LOBYTE(v220[3]) = v184;
    *(&v220[3] + 1) = v268[0];
    DWORD1(v220[3]) = *(v268 + 3);
    *(&v220[3] + 1) = v27;
    *&v220[4] = v28;
    *(&v220[5] + 1) = v267;
    *(&v220[4] + 8) = v266;
    *&v220[6] = v29;
    *(&v220[6] + 1) = v204;
    *&v220[7] = v199;
    *(&v220[7] + 1) = v30;
    *&v220[8] = v139;
    *(&v220[8] + 8) = v265;
    BYTE8(v220[9]) = v207;
    HIDWORD(v220[9]) = *(v264 + 3);
    *(&v220[9] + 9) = v264[0];
    *(&v220[10] + 8) = v254;
    *(&v220[11] + 8) = v255;
    *(&v220[14] + 8) = v258;
    *(&v220[15] + 8) = v259;
    *(&v220[12] + 8) = v256;
    *(&v220[13] + 8) = v257;
    *(&v220[19] + 1) = v263;
    *(&v220[17] + 8) = v261;
    *(&v220[18] + 8) = v262;
    *(&v220[16] + 8) = v260;
    *&v220[10] = v201;
    *&v220[20] = v194;
    *(&v220[20] + 1) = v188;
    *&v220[21] = v192;
    *(&v220[23] + 8) = v251;
    *(&v220[24] + 8) = v252;
    *(&v220[25] + 1) = v253;
    *(&v220[21] + 8) = v249;
    *(&v220[22] + 8) = v250;
    LOBYTE(v220[26]) = v140;
    *(&v220[26] + 1) = v248[0];
    DWORD1(v220[26]) = *(v248 + 3);
    *&v220[38] = v247;
    v220[36] = v245;
    v220[37] = v246;
    v220[34] = v243;
    v220[35] = v244;
    v220[32] = v241;
    v220[33] = v242;
    v220[30] = v239;
    v220[31] = v240;
    v220[28] = v237;
    v220[29] = v238;
    v220[27] = v236;
    *(&v220[26] + 1) = v141;
    *(&v220[38] + 1) = v215;
    *&v220[39] = v191;
    outlined destroy of GlassContainer.EntryState(v220);
    v5 = v181;
    if (v181 == v178)
    {
      break;
    }

    v18 = v181 + 1;
    if (v181 >= *(v176 + 2))
    {
      goto LABEL_123;
    }
  }

  v272[1] = v176;
LABEL_114:
  memcpy(__dst, v272, 0x118uLL);
  _ViewInputs.base.modify(__dst, v162);
  memcpy(__src, (v168 + 72), 0x118uLL);
  outlined destroy of SeedValue<GlassContainer.EntryState>(__src, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
  memcpy((v168 + 72), __dst, 0x118uLL);
  if (swift_weakLoadStrong())
  {
    v163 = *(v3 + 112);
    AGGraphClearUpdate();
    v164 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v165 = AGCreateWeakAttribute();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    specialized GraphHost.continueTransaction<A>(_:)(v165);
  }

  *(v3 + 148) = v179 & 1 | 0x4000;
  GlassContainerResolvedStorage.resolver.getter(v220);
  v166 = *(&v220[0] + 1);

  outlined destroy of Resolver(v220);
  return v166;
}

uint64_t specialized GlassContainerResolvedStorage.animatingUpdate(newStorage:newModelEntries:update:)(uint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  if (a2)
  {
    if (*(v3 + 200) < 1)
    {
      v7 = a1;
      GlassContainerResolvedStorage.resolver.getter(__src);

      __src[1] = MEMORY[0x1E69E7CC0];
      memcpy(__dst, __src, sizeof(__dst));
      _ViewInputs.base.modify(__dst, v9);
      memcpy(v12, (v2 + 72), sizeof(v12));
      outlined destroy of SeedValue<GlassContainer.EntryState>(v12, &lazy cache variable for type metadata for Resolver?, &unk_1F004B218, MEMORY[0x1E69E6720], type metadata accessor for Resolver?);
      memcpy((v2 + 72), __dst, 0x118uLL);
      *(v3 + 148) = 0x8000;

      return v7;
    }
  }

  else
  {
    if (swift_weakLoadStrong())
    {
      v4 = *(v3 + 112);
      AGGraphClearUpdate();
      v5 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v6 = AGCreateWeakAttribute();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      specialized GraphHost.continueTransaction<A>(_:)(v6);
    }

    *(v3 + 148) = 257;
  }

  GlassContainerResolvedStorage.resolver.getter(v12);
  v7 = v12[1];

  outlined destroy of Resolver(v12);
  return v7;
}

uint64_t specialized GlassContainerResolvedStorage.validateEntry(_:storage:)(uint64_t result, uint64_t a2)
{
  v2 = result + 128;
  v3 = *(*(result + 128) + 16);
  if (v3)
  {
    v5 = 656 * v3 - 624;
    do
    {
      if (v3 > *(*v2 + 16))
      {
        __break(1u);
        return result;
      }

      --v3;
      if (*(a2 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(*v2 + v5)), (v8 & 1) != 0))
      {
        v9 = *(a2 + 56) + 40 * v7;
        v10 = *(v9 + 32);
        v11 = *(v9 + 16);
        __dst[0] = *v9;
        __dst[1] = v11;
        *&__dst[2] = v10;
        v6 = *&__dst[0];
        result = AGSubgraphIsValid();
        if (result)
        {
          goto LABEL_5;
        }

        outlined init with copy of GlassContainer.ItemData(__dst, v12);
      }

      else
      {
        v6 = 0;
      }

      specialized Array.remove(at:)(v3, v12);

      memcpy(__dst, v12, 0x289uLL);
      result = outlined destroy of GlassContainer.Item(__dst);
LABEL_5:
      v5 -= 656;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v231 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  if (v8 >= 1)
  {
    swift_retain_n();
    v9 = 0;
    v171 = MEMORY[0x1E69E7CC0];
    v170 = a5;
    while (1)
    {
      v10 = v9;
      v11 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        ++v9;
      }

      else
      {
        v12 = a5;
        v13 = *a3;
        v14 = *a3 + 200 * v11;
        v232[0] = *v14;
        v15 = *(v14 + 64);
        v17 = *(v14 + 16);
        v16 = *(v14 + 32);
        v232[3] = *(v14 + 48);
        v232[4] = v15;
        v232[1] = v17;
        v232[2] = v16;
        v18 = *(v14 + 128);
        v20 = *(v14 + 80);
        v19 = *(v14 + 96);
        v232[7] = *(v14 + 112);
        v232[8] = v18;
        v232[5] = v20;
        v232[6] = v19;
        v22 = *(v14 + 160);
        v21 = *(v14 + 176);
        v23 = *(v14 + 144);
        v233 = *(v14 + 192);
        v232[10] = v22;
        v232[11] = v21;
        v232[9] = v23;
        v24 = v13 + 200 * v9;
        v234[0] = *v24;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 48);
        v234[4] = *(v24 + 64);
        v234[3] = v27;
        v234[2] = v26;
        v234[1] = v25;
        v28 = *(v24 + 80);
        v29 = *(v24 + 96);
        v30 = *(v24 + 112);
        v234[8] = *(v24 + 128);
        v234[7] = v30;
        v234[6] = v29;
        v234[5] = v28;
        v31 = *(v24 + 144);
        v32 = *(v24 + 160);
        v33 = *(v24 + 176);
        v235 = *(v24 + 192);
        v234[11] = v33;
        v234[10] = v32;
        v234[9] = v31;
        outlined init with copy of GlassContainer.Effect(v232, &v218);
        outlined init with copy of GlassContainer.Effect(v234, &v218);
        v34 = specialized closure #1 in Array.sort<A>(by:reversed:)(v232, v234, v12 & 1);
        if (v6)
        {
          outlined destroy of GlassContainer.Effect(v234);
          outlined destroy of GlassContainer.Effect(v232);
          goto LABEL_123;
        }

        v35 = v34;
        outlined destroy of GlassContainer.Effect(v234);
        outlined destroy of GlassContainer.Effect(v232);
        v36 = v9 + 2;
        if (v9 + 2 >= v8)
        {
          v37 = v9;
          v9 += 2;
          a5 = v170;
          if (!v35)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v37 = v9;
          v38 = v13 + 200 * v9 + 400;
          a5 = v170;
          do
          {
            v9 = v36;
            v205 = *v38;
            v39 = *(v38 + 16);
            v40 = *(v38 + 32);
            v41 = *(v38 + 64);
            v208 = *(v38 + 48);
            v209 = v41;
            v206 = v39;
            v207 = v40;
            v42 = *(v38 + 80);
            v43 = *(v38 + 96);
            v44 = *(v38 + 128);
            v212 = *(v38 + 112);
            v213 = v44;
            v210 = v42;
            v211 = v43;
            v45 = *(v38 + 144);
            v46 = *(v38 + 160);
            v47 = *(v38 + 176);
            v217 = *(v38 + 192);
            v215 = v46;
            v216 = v47;
            v214 = v45;
            v218 = *(v38 - 200);
            v48 = *(v38 - 184);
            v49 = *(v38 - 168);
            v50 = *(v38 - 136);
            v221 = *(v38 - 152);
            v222 = v50;
            v219 = v48;
            v220 = v49;
            v51 = *(v38 - 120);
            v52 = *(v38 - 104);
            v53 = *(v38 - 72);
            v225 = *(v38 - 88);
            v226 = v53;
            v223 = v51;
            v224 = v52;
            v54 = *(v38 - 56);
            v55 = *(v38 - 40);
            v56 = *(v38 - 24);
            v230 = *(v38 - 8);
            v228 = v55;
            v229 = v56;
            v227 = v54;
            v202 = v215;
            v203 = v216;
            v204 = v217;
            v198 = v211;
            v199 = v212;
            v200 = v213;
            v201 = v214;
            v194 = v207;
            v195 = v208;
            v196 = v209;
            v197 = v210;
            v192 = v205;
            v193 = v206;
            v189 = v55;
            v190 = v56;
            v191 = v230;
            v185 = v224;
            v186 = v225;
            v187 = v53;
            v188 = v54;
            v181 = v220;
            v182 = v221;
            v183 = v222;
            v184 = v223;
            v179 = v218;
            v180 = v219;
            if (v170)
            {
              outlined init with copy of GlassContainer.Effect(&v205, &v177);
              outlined init with copy of GlassContainer.Effect(&v218, &v177);
              swift_getAtKeyPath();
              swift_getAtKeyPath();
              outlined destroy of GlassContainer.Effect(&v218);
              outlined destroy of GlassContainer.Effect(&v205);
              v57 = v177;
              v58 = v175;
              if (v176)
              {
                v58 = 0.0;
              }

              if (v178)
              {
                v57 = 0.0;
              }

              v59 = v58 < v57;
            }

            else
            {
              outlined init with copy of GlassContainer.Effect(&v205, &v177);
              outlined init with copy of GlassContainer.Effect(&v218, &v177);
              swift_getAtKeyPath();
              swift_getAtKeyPath();
              outlined destroy of GlassContainer.Effect(&v218);
              outlined destroy of GlassContainer.Effect(&v205);
              v60 = v177;
              v61 = v175;
              if (v178)
              {
                v60 = 0.0;
              }

              if (v176)
              {
                v61 = 0.0;
              }

              v59 = v60 < v61;
            }

            v62 = v59;
            if ((v35 ^ v62))
            {
              v11 = v9 - 1;
              if (!v35)
              {
                goto LABEL_39;
              }

              goto LABEL_31;
            }

            v36 = v9 + 1;
            v38 += 200;
          }

          while (v8 != v9 + 1);
          v11 = v9;
          v9 = v8;
          if (!v35)
          {
            goto LABEL_39;
          }
        }

LABEL_31:
        if (v9 < v37)
        {
          goto LABEL_146;
        }

        v10 = v37;
        if (v37 <= v11)
        {
          v63 = 200 * v9 - 200;
          v64 = 200 * v37;
          v165 = v9;
          do
          {
            if (v10 != --v9)
            {
              v65 = *a3;
              if (!*a3)
              {
                goto LABEL_149;
              }

              v66 = v65 + v63;
              v227 = *(v65 + v64 + 144);
              v228 = *(v65 + v64 + 160);
              v229 = *(v65 + v64 + 176);
              v230 = *(v65 + v64 + 192);
              v223 = *(v65 + v64 + 80);
              v224 = *(v65 + v64 + 96);
              v225 = *(v65 + v64 + 112);
              v226 = *(v65 + v64 + 128);
              v219 = *(v65 + v64 + 16);
              v220 = *(v65 + v64 + 32);
              v221 = *(v65 + v64 + 48);
              v222 = *(v65 + v64 + 64);
              v218 = *(v65 + v64);
              memmove((v65 + v64), (v65 + v63), 0xC8uLL);
              *(v66 + 144) = v227;
              *(v66 + 160) = v228;
              *(v66 + 176) = v229;
              *(v66 + 192) = v230;
              *(v66 + 80) = v223;
              *(v66 + 96) = v224;
              *(v66 + 112) = v225;
              *(v66 + 128) = v226;
              *(v66 + 16) = v219;
              *(v66 + 32) = v220;
              *(v66 + 48) = v221;
              *(v66 + 64) = v222;
              *v66 = v218;
            }

            ++v10;
            v63 -= 200;
            v64 += 200;
          }

          while (v10 < v9);
          a5 = v170;
          v9 = v165;
LABEL_39:
          v10 = v37;
        }
      }

      v67 = a3[1];
      if (v9 < v67)
      {
        if (__OFSUB__(v9, v10))
        {
          goto LABEL_143;
        }

        if (v9 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_144;
          }

          if (v10 + a4 >= v67)
          {
            v68 = a3[1];
          }

          else
          {
            v68 = (v10 + a4);
          }

          if (v68 < v10)
          {
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:

            __break(1u);
LABEL_148:

            __break(1u);
LABEL_149:

            __break(1u);
LABEL_150:

            __break(1u);
LABEL_151:

            __break(1u);
            return result;
          }

          if (v9 != v68)
          {
            v173 = v6;
            v69 = v10;
            v70 = *a3;
            v71 = *a3 + 200 * v9;
            v166 = v69;
            v168 = v68;
            v72 = v69 - v9 + 1;
            do
            {
              v73 = v9;
              v74 = v72;
              for (i = v71; ; i -= 200)
              {
                v205 = *i;
                v76 = *(i + 16);
                v77 = *(i + 32);
                v78 = *(i + 64);
                v208 = *(i + 48);
                v209 = v78;
                v206 = v76;
                v207 = v77;
                v79 = *(i + 80);
                v80 = *(i + 96);
                v81 = *(i + 128);
                v212 = *(i + 112);
                v213 = v81;
                v210 = v79;
                v211 = v80;
                v82 = *(i + 144);
                v83 = *(i + 160);
                v84 = *(i + 176);
                v217 = *(i + 192);
                v215 = v83;
                v216 = v84;
                v214 = v82;
                v218 = *(i - 200);
                v85 = *(i - 184);
                v86 = *(i - 168);
                v87 = *(i - 136);
                v221 = *(i - 152);
                v222 = v87;
                v219 = v85;
                v220 = v86;
                v88 = *(i - 120);
                v89 = *(i - 104);
                v90 = *(i - 72);
                v225 = *(i - 88);
                v226 = v90;
                v223 = v88;
                v224 = v89;
                v91 = *(i - 56);
                v92 = *(i - 40);
                v93 = *(i - 24);
                v230 = *(i - 8);
                v228 = v92;
                v229 = v93;
                v227 = v91;
                v202 = v215;
                v203 = v216;
                v204 = v217;
                v198 = v211;
                v199 = v212;
                v200 = v213;
                v201 = v214;
                v194 = v207;
                v195 = v208;
                v196 = v209;
                v197 = v210;
                v192 = v205;
                v193 = v206;
                v189 = v92;
                v190 = v93;
                v191 = v230;
                v185 = v224;
                v186 = v225;
                v187 = v90;
                v188 = v91;
                v181 = v220;
                v182 = v221;
                v183 = v222;
                v184 = v223;
                v179 = v218;
                v180 = v219;
                if (a5)
                {
                  outlined init with copy of GlassContainer.Effect(&v205, &v177);
                  outlined init with copy of GlassContainer.Effect(&v218, &v177);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Effect(&v218);
                  outlined destroy of GlassContainer.Effect(&v205);
                  v94 = v177;
                  v95 = v175;
                  if (v176)
                  {
                    v95 = 0.0;
                  }

                  if (v178)
                  {
                    v94 = 0.0;
                  }

                  if (v95 >= v94)
                  {
                    break;
                  }
                }

                else
                {
                  outlined init with copy of GlassContainer.Effect(&v205, &v177);
                  outlined init with copy of GlassContainer.Effect(&v218, &v177);
                  swift_getAtKeyPath();
                  swift_getAtKeyPath();
                  outlined destroy of GlassContainer.Effect(&v218);
                  outlined destroy of GlassContainer.Effect(&v205);
                  v96 = v177;
                  v97 = v175;
                  if (v178)
                  {
                    v96 = 0.0;
                  }

                  if (v176)
                  {
                    v97 = 0.0;
                  }

                  if (v96 >= v97)
                  {
                    break;
                  }
                }

                if (!v70)
                {
                  goto LABEL_147;
                }

                v98 = i - 200;
                v201 = *(i + 144);
                v202 = *(i + 160);
                v203 = *(i + 176);
                v204 = *(i + 192);
                v197 = *(i + 80);
                v198 = *(i + 96);
                v199 = *(i + 112);
                v200 = *(i + 128);
                v193 = *(i + 16);
                v194 = *(i + 32);
                v195 = *(i + 48);
                v196 = *(i + 64);
                v192 = *i;
                v99 = *(i - 24);
                *(i + 160) = *(i - 40);
                *(i + 176) = v99;
                *(i + 192) = *(i - 8);
                v100 = *(i - 88);
                *(i + 96) = *(i - 104);
                *(i + 112) = v100;
                v101 = *(i - 56);
                *(i + 128) = *(i - 72);
                *(i + 144) = v101;
                v102 = *(i - 152);
                *(i + 32) = *(i - 168);
                *(i + 48) = v102;
                v103 = *(i - 120);
                *(i + 64) = *(i - 136);
                *(i + 80) = v103;
                v104 = *(i - 184);
                *i = *(i - 200);
                *(i + 16) = v104;
                *(v98 + 144) = v201;
                *(v98 + 160) = v202;
                *(v98 + 176) = v203;
                *(v98 + 192) = v204;
                *(v98 + 80) = v197;
                *(v98 + 96) = v198;
                *(v98 + 112) = v199;
                *(v98 + 128) = v200;
                *(v98 + 16) = v193;
                *(v98 + 32) = v194;
                *(v98 + 48) = v195;
                *(v98 + 64) = v196;
                *v98 = v192;
                if (!v74)
                {
                  break;
                }

                ++v74;
              }

              v9 = v73 + 1;
              v71 += 200;
              --v72;
            }

            while ((v73 + 1) != v168);
            v9 = v168;
            v6 = v173;
            v10 = v166;
          }
        }
      }

      v105 = v171;
      if (v9 < v10)
      {
        goto LABEL_142;
      }

      v174 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v171 + 2) + 1, 1, v171);
      }

      v107 = *(v105 + 2);
      v106 = *(v105 + 3);
      v108 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1, v105);
      }

      *(v105 + 2) = v108;
      v109 = v105 + 32;
      v110 = &v105[16 * v107 + 32];
      *v110 = v10;
      *(v110 + 1) = v9;
      v231 = v105;
      v169 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      v171 = v105;
      if (v107)
      {
        v164 = v105 + 32;
        v167 = v9;
        while (1)
        {
          v111 = v108 - 1;
          if (v108 >= 4)
          {
            break;
          }

          if (v108 == 3)
          {
            v112 = *(v105 + 4);
            v113 = *(v105 + 5);
            v122 = __OFSUB__(v113, v112);
            v114 = v113 - v112;
            v115 = v122;
LABEL_89:
            if (v115)
            {
              goto LABEL_133;
            }

            v128 = &v105[16 * v108];
            v130 = *v128;
            v129 = *(v128 + 1);
            v131 = __OFSUB__(v129, v130);
            v132 = v129 - v130;
            v133 = v131;
            if (v131)
            {
              goto LABEL_136;
            }

            v134 = &v109[16 * v111];
            v136 = *v134;
            v135 = *(v134 + 1);
            v122 = __OFSUB__(v135, v136);
            v137 = v135 - v136;
            if (v122)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v132, v137))
            {
              goto LABEL_140;
            }

            if (v132 + v137 >= v114)
            {
              if (v114 < v137)
              {
                v111 = v108 - 2;
              }

              goto LABEL_110;
            }

            goto LABEL_103;
          }

          v138 = &v105[16 * v108];
          v140 = *v138;
          v139 = *(v138 + 1);
          v122 = __OFSUB__(v139, v140);
          v132 = v139 - v140;
          v133 = v122;
LABEL_103:
          if (v133)
          {
            goto LABEL_135;
          }

          v141 = &v109[16 * v111];
          v143 = *v141;
          v142 = *(v141 + 1);
          v122 = __OFSUB__(v142, v143);
          v144 = v142 - v143;
          if (v122)
          {
            goto LABEL_138;
          }

          if (v144 < v132)
          {
            goto LABEL_3;
          }

LABEL_110:
          if (v111 - 1 >= v108)
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

          v149 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v150 = &v109[16 * v111 - 16];
          v151 = *v150;
          v152 = v111;
          v153 = &v109[16 * v111];
          v154 = *(v153 + 1);
          v155 = (v149 + 200 * *v150);
          v156 = (v149 + 200 * *v153);
          v157 = (v149 + 200 * v154);

          specialized _merge<A>(low:mid:high:buffer:by:)(v155, v156, v157, v169, v170 & 1);
          if (v174)
          {

            v231 = v171;
            goto LABEL_123;
          }

          if (v154 < v151)
          {
            goto LABEL_128;
          }

          v105 = v171;
          v158 = *(v171 + 2);
          if (v152 > v158)
          {
            goto LABEL_129;
          }

          *v150 = v151;
          *(v150 + 1) = v154;
          if (v152 >= v158)
          {
            goto LABEL_130;
          }

          v174 = 0;
          v108 = v158 - 1;
          memmove(v153, v153 + 16, 16 * (v158 - 1 - v152));
          *(v171 + 2) = v158 - 1;
          v159 = v158 > 2;
          v109 = v164;
          v9 = v167;
          if (!v159)
          {
LABEL_3:
            v231 = v105;
            a5 = v170;
            goto LABEL_4;
          }
        }

        v116 = &v109[16 * v108];
        v117 = *(v116 - 8);
        v118 = *(v116 - 7);
        v122 = __OFSUB__(v118, v117);
        v119 = v118 - v117;
        if (v122)
        {
          goto LABEL_131;
        }

        v121 = *(v116 - 6);
        v120 = *(v116 - 5);
        v122 = __OFSUB__(v120, v121);
        v114 = v120 - v121;
        v115 = v122;
        if (v122)
        {
          goto LABEL_132;
        }

        v123 = &v105[16 * v108];
        v125 = *v123;
        v124 = *(v123 + 1);
        v122 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v122)
        {
          goto LABEL_134;
        }

        v122 = __OFADD__(v114, v126);
        v127 = v114 + v126;
        if (v122)
        {
          goto LABEL_137;
        }

        if (v127 >= v119)
        {
          v145 = &v109[16 * v111];
          v147 = *v145;
          v146 = *(v145 + 1);
          v122 = __OFSUB__(v146, v147);
          v148 = v146 - v147;
          if (v122)
          {
            goto LABEL_141;
          }

          if (v114 < v148)
          {
            v111 = v108 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_89;
      }

LABEL_4:
      v6 = v174;
      v8 = a3[1];
      if (v9 >= v8)
      {
        goto LABEL_120;
      }
    }
  }

  swift_retain_n();
LABEL_120:
  v160 = *a1;
  if (!*a1)
  {
    goto LABEL_151;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v231, v160, a3, a5 & 1);
  if (v6)
  {

LABEL_123:
  }

  else
  {
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(void *, void, uint64_t))
{
  v10 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a4(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;

  a5(v13, a2 & 1, a3);

  *a1 = v10;
}

uint64_t specialized GlassContainerResolvedStorage.resolvedStorage(storage:entries:)(uint64_t a1, char **a2, double a3)
{
  memcpy(__dst, v3, sizeof(__dst));
  v125 = MEMORY[0x1E69E7CC0];
  v7 = *(*a2 + 2);
  if (!v7)
  {
    goto LABEL_50;
  }

  v8 = 344 * v7;
  while (1)
  {
    memcpy(v124, __dst, sizeof(v124));
    v9 = *a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v7 > *(v9 + 2))
    {
      break;
    }

    specialized GlassContainerResolvedStorage.validateEntry(_:storage:)(&v9[v8 - 312], a1);
    *a2 = v9;
    if (v7 > *(v9 + 2))
    {
      goto LABEL_11;
    }

    --v7;
    if (!*(*&v9[v8 - 184] + 16))
    {
      specialized Array.remove(at:)(v7, __src);
      memcpy(v124, __src, 0x154uLL);
      outlined destroy of GlassContainer.Entry(v124);
    }

    v8 -= 344;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  v72 = *(*a2 + 2);
  if (v72)
  {
    v10 = 0;
    v71 = (*a2 + 32);
    v11 = MEMORY[0x1E69E7CC0];
    v70 = *a2;
    do
    {
      v73 = v10;
      memcpy(v124, (v71 + 344 * v10), 0x154uLL);
      v12 = *(v11 + 2);
      result = outlined init with copy of GlassContainer.Entry(v124, __src);
      v75 = v12;
      if (v12)
      {
        v14 = 0;
        v15 = 0;
        v74 = v11;
        while (1)
        {
          if (v15 >= *(v11 + 2))
          {
            __break(1u);
            goto LABEL_52;
          }

          __src[0] = *&v11[v14 + 32];
          v16 = *&v11[v14 + 48];
          v17 = *&v11[v14 + 64];
          v18 = *&v11[v14 + 96];
          __src[3] = *&v11[v14 + 80];
          __src[4] = v18;
          __src[1] = v16;
          __src[2] = v17;
          v19 = *&v11[v14 + 112];
          v20 = *&v11[v14 + 128];
          v21 = *&v11[v14 + 160];
          __src[7] = *&v11[v14 + 144];
          __src[8] = v21;
          __src[5] = v19;
          __src[6] = v20;
          v22 = *&v11[v14 + 176];
          v23 = *&v11[v14 + 192];
          v24 = *&v11[v14 + 208];
          *&__src[12] = *&v11[v14 + 224];
          __src[10] = v23;
          __src[11] = v24;
          __src[9] = v22;
          v25 = __src[5];
          v26 = *(&__src[6] + 1);
          v76 = *&__src[6];
          v86 = v15;
          v87 = v14;
          if (*(&__src[6] + 1) == 1)
          {
            v27 = *(&__src[0] + 1);
            v28 = *&__src[0];
            outlined copy of _Glass.Variant.Role(*&__src[0], DWORD2(__src[0]));
          }

          else
          {
            v27 = *(&__src[5] + 1);
            v28 = *&__src[5];
          }

          v84 = *&__src[3];
          v82 = BYTE8(__src[3]);
          v80 = *&__src[4];
          v29 = __src[8];
          v30 = *(&__src[9] + 1);
          v78 = HIDWORD(__src[10]);
          v31 = __src[11];
          *&v88 = v28;
          *(&v88 + 1) = v27;
          outlined init with copy of GlassContainer.Effect(__src, &v107);
          outlined copy of _Glass.Variant.Role(v28, v27);
          outlined copy of _Glass?(v25, DWORD2(v25), v76, v26);
          _Glass.Variant.ID.init(_:)(&v88, &v107);
          outlined consume of _Glass.Variant.Role(v28, v27);

          v32 = v107;
          v33 = BYTE8(v107);
          if (v30 == 1)
          {
            v34 = 0;
            v35 = -4;
          }

          else
          {
            v107 = v29;
            outlined copy of _Glass.Variant.Role(v29, DWORD2(v29));
            _Glass.Variant.ID.init(_:)(&v107, &v88);
            v34 = v88;
            v35 = BYTE8(v88);
          }

          outlined consume of _Glass.Variant.ID?(0, 0xFCu);
          v122 = v31;
          v121 = v82;
          *&v107 = v32;
          BYTE8(v107) = v33;
          *&v108 = v34;
          BYTE8(v108) = v35;
          HIDWORD(v108) = v78;
          LOBYTE(v109) = v31;
          *(&v109 + 1) = v84;
          LOBYTE(v110) = v82;
          *(&v110 + 1) = v80;
          v36 = *&v124[14];
          v37 = DWORD2(v124[14]);
          v38 = *(&v124[15] + 1);
          v77 = *&v124[15];
          if (*(&v124[15] + 1) == 1)
          {
            v40 = *(&v124[9] + 1);
            v39 = *&v124[9];
            outlined copy of _Glass.Variant.Role(*&v124[9], DWORD2(v124[9]));
          }

          else
          {
            v40 = *(&v124[14] + 1);
            v39 = *&v124[14];
          }

          v85 = *&v124[12];
          v83 = BYTE8(v124[12]);
          v81 = *&v124[13];
          v41 = v124[17];
          v42 = *(&v124[18] + 1);
          v79 = HIDWORD(v124[19]);
          v43 = v124[20];
          *&v88 = v39;
          *(&v88 + 1) = v40;
          outlined copy of _Glass.Variant.Role(v39, v40);
          outlined copy of _Glass?(v36, v37, v77, v38);
          _Glass.Variant.ID.init(_:)(&v88, v104);
          outlined consume of _Glass.Variant.Role(v39, v40);

          v44 = *&v104[0];
          v45 = BYTE8(v104[0]);
          if (v42 == 1)
          {
            v46 = 0;
            v47 = -4;
          }

          else
          {
            v88 = v41;
            outlined copy of _Glass.Variant.Role(v41, DWORD2(v41));
            _Glass.Variant.ID.init(_:)(&v88, v104);
            v46 = *&v104[0];
            v47 = BYTE8(v104[0]);
          }

          outlined consume of _Glass.Variant.ID?(0, 0xFCu);
          v106 = v43;
          v105 = v83;
          *&v100 = v44;
          BYTE8(v100) = v45;
          *&v101 = v46;
          BYTE8(v101) = v47;
          HIDWORD(v101) = v79;
          LOBYTE(v102) = v43;
          *(&v102 + 1) = v85;
          LOBYTE(v103) = v83;
          *(&v103 + 1) = v81;
          v48 = specialized static GlassContainer.DisplayMaterial.ID.== infix(_:_:)(&v107, &v100);
          v104[0] = v100;
          v104[1] = v101;
          v104[2] = v102;
          v104[3] = v103;
          outlined destroy of GlassContainer.DisplayMaterial.ID(v104);
          v88 = v107;
          v89 = v108;
          v90 = v109;
          v91 = v110;
          outlined destroy of GlassContainer.DisplayMaterial.ID(&v88);
          result = outlined destroy of GlassContainer.Effect(__src);
          if (v48)
          {
            break;
          }

          v15 = v86 + 1;
          v14 = v87 + 200;
          v11 = v74;
          if (v75 == v86 + 1)
          {
            goto LABEL_31;
          }
        }

        v11 = v74;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v74);
          v11 = result;
        }

        if (v86 >= *(v11 + 2))
        {
          goto LABEL_53;
        }

        v64 = &v11[v87];
        v65 = *&v11[v87 + 224];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v11[v87 + 224] = v65;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
          *(v64 + 28) = v65;
        }

        v68 = *(v65 + 2);
        v67 = *(v65 + 3);
        if (v68 >= v67 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v65);
          *(v64 + 28) = v65;
        }

        *(v65 + 2) = v68 + 1;
        result = memcpy(&v65[344 * v68 + 32], v124, 0x154uLL);
      }

      else
      {
LABEL_31:
        v96 = v124[17];
        v97 = v124[18];
        v98 = v124[19];
        LOBYTE(v99) = v124[20];
        v92 = v124[13];
        v93 = v124[14];
        v94 = v124[15];
        v95 = v124[16];
        v88 = v124[9];
        v89 = v124[10];
        v90 = v124[11];
        v91 = v124[12];
        outlined init with copy of GlassContainer.Entry(v124, __src);
        outlined init with copy of GlassContainer.DisplayMaterial(&v124[9], __src);
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v51 = *(v49 + 2);
        v50 = *(v49 + 3);
        if (v51 >= v50 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v49);
        }

        *(v49 + 2) = v51 + 1;
        memcpy(&v49[344 * v51 + 32], v124, 0x154uLL);
        __src[8] = v96;
        __src[9] = v97;
        __src[10] = v98;
        *&__src[11] = v99;
        __src[4] = v92;
        __src[5] = v93;
        __src[6] = v94;
        __src[7] = v95;
        __src[0] = v88;
        __src[1] = v89;
        __src[2] = v90;
        __src[3] = v91;
        *(&__src[11] + 1) = a3;
        *&__src[12] = v49;
        outlined init with copy of GlassContainer.Effect(__src, &v107);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v53 = *(v11 + 2);
        v52 = *(v11 + 3);
        if (v53 >= v52 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v11);
        }

        outlined destroy of GlassContainer.Entry(v124);
        *(v11 + 2) = v53 + 1;
        v54 = &v11[200 * v53];
        *(v54 + 2) = __src[0];
        v55 = __src[1];
        v56 = __src[2];
        v57 = __src[4];
        *(v54 + 5) = __src[3];
        *(v54 + 6) = v57;
        *(v54 + 3) = v55;
        *(v54 + 4) = v56;
        v58 = __src[5];
        v59 = __src[6];
        v60 = __src[8];
        *(v54 + 9) = __src[7];
        *(v54 + 10) = v60;
        *(v54 + 7) = v58;
        *(v54 + 8) = v59;
        v62 = __src[10];
        v61 = __src[11];
        v63 = *&__src[12];
        *(v54 + 11) = __src[9];
        *(v54 + 12) = v62;
        *(v54 + 28) = v63;
        *(v54 + 13) = v61;
        v107 = v88;
        v108 = v89;
        v109 = v90;
        v110 = v91;
        v111 = v92;
        v112 = v93;
        v113 = v94;
        v114 = v95;
        v115 = v96;
        v116 = v97;
        v117 = v98;
        v118 = v99;
        v119 = a3;
        v120 = v49;
        result = outlined destroy of GlassContainer.Effect(&v107);
      }

      v10 = v73 + 1;
      if (v73 + 1 == v72)
      {
        v125 = v11;
        goto LABEL_50;
      }
    }

    while (v10 < *(v70 + 2));
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_50:
    KeyPath = swift_getKeyPath();
    specialized MutableCollection<>.sort(by:)(&v125, 0, KeyPath, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

    return v125;
  }

  return result;
}

void _s7SwiftUI22TransactionPropertyKey33_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationE033_D98E9A1069CEEADA58829ED440E36F30LLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for GlassContainer.MatchingResult<GlassContainer.Entry>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Resolver?(255, a3, a4, a5);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s7SwiftUI9SeedValueVyAA14GlassContainerO10EntryStateVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata accessor for ColorBox<Color.MixProvider>()
{
  if (!lazy cache variable for type metadata for ColorBox<Color.MixProvider>)
  {
    lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider();
    v0 = type metadata accessor for ColorBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ColorBox<Color.MixProvider>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider()
{
  result = lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider;
  if (!lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider;
  if (!lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider;
  if (!lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.MixProvider and conformance Color.MixProvider);
  }

  return result;
}

uint64_t _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOg(uint64_t a1)
{
  if (*(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi2_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  v11 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
  v12 = *(a1 + 680) & 1 | 0x6000000000000000;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 512) = result;
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  *(a1 + 672) = v11;
  *(a1 + 680) = v12;
  return result;
}

void type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry)()
{
  if (!lazy cache variable for type metadata for (Int, Int, GlassContainer.Entry, GlassContainer.Entry))
  {
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (Int, Int, GlassContainer.Entry, GlassContainer.Entry));
    }
  }
}

uint64_t outlined destroy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(uint64_t a1)
{
  type metadata accessor for (Int, Int, GlassContainer.Entry, GlassContainer.Entry)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Resolver?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined copy of GlassContainer.Entry.ModelID(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }

    outlined copy of _Glass.Variant.ID(result, a2);
  }
}

uint64_t outlined consume of GlassContainer.Entry.ModelID(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }

    outlined consume of _Glass.Variant.ID(result, a2);
  }
}

uint64_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOg(uint64_t a1)
{
  v1 = *(a1 + 680) >> 61;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

void partial apply for specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2, *(v3 + 16), specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), a3);
}

{
  specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2, *(v3 + 16), specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), a3);
}

{
  specialized closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(a1, a2, *(v3 + 16), specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:), a3);
}

char *specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(void *a1, Swift::Int a2, uint64_t a3, Swift::Int a4, uint64_t a5)
{
  v118 = a1;
  v119 = a3;
  v121 = a2;
  type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for CollectionDifference<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6EF0]);
  v115 = v7;
  v113 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v113 - v8;
  v9 = MEMORY[0x1E69E7CC8];
  v128 = MEMORY[0x1E69E7CC8];
  type metadata accessor for [GlassContainer.Item.ID : Int](0, &lazy cache variable for type metadata for [GlassContainer.Item.ID : Int], lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  v11 = v10;
  Dictionary.reserveCapacity(_:)(a4);
  v117 = a5;
  v120 = a4;
  if (a4)
  {
    if ((v120 & 0x8000000000000000) == 0)
    {
      v116 = v11;
      v12 = 0;
      v13 = v128;
      v14 = (v119 + 16);
      while (1)
      {
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v122 = (v12 + 1);
        v15 = *(v14 - 4);
        v17 = *(v14 - 1);
        v16 = *v14;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v13;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v16);
        v21 = v13[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_107;
        }

        v24 = v19;
        if (v13[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v125;
            if ((v19 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v13 = v125;
            if ((v24 & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
          v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v16);
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_116;
          }

          v20 = v25;
          v13 = v125;
          if ((v24 & 1) == 0)
          {
LABEL_14:
            v13[(v20 >> 6) + 8] |= 1 << v20;
            v27 = v13[6] + 24 * v20;
            *v27 = v15;
            *(v27 + 8) = v17;
            *(v27 + 16) = v16;
            *(v13[7] + 8 * v20) = v12;
            v28 = v13[2];
            v29 = __OFADD__(v28, 1);
            v30 = v28 + 1;
            if (v29)
            {
              goto LABEL_112;
            }

            v13[2] = v30;
            goto LABEL_5;
          }
        }

        *(v13[7] + 8 * v20) = v12;

LABEL_5:
        ++v12;
        v14 += 3;
        if (v122 == v120)
        {
          v128 = v13;
          a5 = v117;
          v9 = MEMORY[0x1E69E7CC8];
          goto LABEL_19;
        }
      }
    }

    goto LABEL_114;
  }

LABEL_19:
  v127 = v9;
  v31 = v121;
  Dictionary.reserveCapacity(_:)(v121);
  if (v31)
  {
    if (v121 < 0)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v32 = 0;
    v33 = v127;
    v34 = v118 + 2;
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_108;
      }

      v36 = *(v34 - 4);
      v37 = *(v34 - 1);
      v38 = *v34;

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v125 = v33;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37, v38);
      v42 = v33[2];
      v43 = (v41 & 1) == 0;
      v29 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v29)
      {
        goto LABEL_109;
      }

      v45 = v41;
      if (v33[3] < v44)
      {
        break;
      }

      if (v39)
      {
        goto LABEL_30;
      }

      v50 = v40;
      specialized _NativeDictionary.copy()();
      v40 = v50;
      v33 = v125;
      if ((v45 & 1) == 0)
      {
LABEL_31:
        v33[(v40 >> 6) + 8] |= 1 << v40;
        v47 = v33[6] + 24 * v40;
        *v47 = v36;
        *(v47 + 8) = v37;
        *(v47 + 16) = v38;
        *(v33[7] + 8 * v40) = v32;
        v48 = v33[2];
        v29 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v29)
        {
          goto LABEL_113;
        }

        v33[2] = v49;
        goto LABEL_23;
      }

LABEL_22:
      *(v33[7] + 8 * v40) = v32;

LABEL_23:
      ++v32;
      v34 += 3;
      if (v35 == v121)
      {
        v127 = v33;
        a5 = v117;
        goto LABEL_36;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, v39);
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37, v38);
    if ((v45 & 1) != (v46 & 1))
    {
      goto LABEL_116;
    }

LABEL_30:
    v33 = v125;
    if ((v45 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_36:
  v116 = v128;
  if (v128[2] != v120 || v127[2] != v121)
  {
    v125 = v118;
    *&v126 = v121;
    v123 = v119;
    *&v124 = v120;
    type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID, MEMORY[0x1E69E6048]);
    lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<GlassContainer.Item.ID> and conformance UnsafeBufferPointer<A>, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Item.ID>, &type metadata for GlassContainer.Item.ID);
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    BidirectionalCollection<>.difference<A>(from:)();
    v56 = CollectionDifference.removals.getter();
    v57 = *(v56 + 16);
    v58 = MEMORY[0x1E69E7CC0];
    if (v57)
    {
      v125 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57, 0);
      v59 = 0;
      v60 = v125;
      v61 = v56 + 73;
      do
      {
        if (v59 >= *(v56 + 16))
        {
          goto LABEL_110;
        }

        v62 = *(v61 - 41);
        v63 = v60;
        outlined copy of CollectionDifference<GlassContainer.Item.ID>.Change();

        v60 = v63;
        v125 = v63;
        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
          v60 = v125;
        }

        ++v59;
        v60[2] = v65 + 1;
        v60[v65 + 4] = v62;
        v61 += 48;
      }

      while (v57 != v59);
      v122 = v60;

      v103 = v114;
      v102 = v115;
      v58 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v122 = MEMORY[0x1E69E7CC0];
      v103 = v114;
      v102 = v115;
    }

    v104 = CollectionDifference.insertions.getter();
    v105 = *(v104 + 16);
    if (!v105)
    {

      (*(v113 + 8))(v103, v102);
      goto LABEL_105;
    }

    v125 = v58;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v105, 0);
    v106 = 0;
    v107 = v125;
    v108 = v104 + 73;
    while (v106 < *(v104 + 16))
    {
      v109 = *(v108 - 41);
      outlined copy of CollectionDifference<GlassContainer.Item.ID>.Change();

      v125 = v107;
      v111 = v107[2];
      v110 = v107[3];
      if (v111 >= v110 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1);
        v107 = v125;
      }

      ++v106;
      v107[2] = v111 + 1;
      v107[v111 + 4] = v109;
      v108 += 48;
      if (v105 == v106)
      {

        (*(v113 + 8))(v114, v115);
        goto LABEL_105;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v115 = v127;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v53 >= v120)
    {
      v51 = v52;
      if (v52 >= v121)
      {
        break;
      }
    }

    v66 = *(v55 + 2);
    v67 = *(v54 + 2);
    v68 = v67 + v66;
    if (v67 + v66 > a5)
    {
      goto LABEL_102;
    }

    if (v51 == v121)
    {
      v69 = v55;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v55 = v69;
      }

      else
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66 + 1, 1, v69);
      }

      v71 = *(v55 + 2);
      v70 = *(v55 + 3);
      if (v71 >= v70 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1, v55);
      }

      *(v55 + 2) = v71 + 1;
      *&v55[8 * v71 + 32] = v53++;
      v51 = v121;
    }

    else
    {
      v122 = v55;
      if (v53 == v120)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67 + 1, 1, v54);
        }

        v73 = *(v54 + 2);
        v72 = *(v54 + 3);
        v55 = v122;
        if (v73 >= v72 >> 1)
        {
          v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v54);
          v55 = v122;
          v54 = v100;
        }

        *(v54 + 2) = v73 + 1;
        *&v54[8 * v73 + 32] = v51++;
        v52 = v51;
        v53 = v120;
      }

      else
      {
        v74 = v119 + 24 * v53;
        LODWORD(v125) = *v74;
        v126 = *(v74 + 8);
        v75 = &v118[3 * v51];
        LODWORD(v123) = *v75;
        v124 = *(v75 + 1);

        v76 = specialized static GlassContainer.Item.ID.== infix(_:_:)(&v125, &v123);

        if (v76)
        {
          ++v53;
          v52 = ++v51;
          a5 = v117;
          v55 = v122;
        }

        else
        {
          v77 = v115;
          if (v115[2])
          {
            v79 = *(v74 + 8);
            v78 = *(v74 + 16);
            v80 = *v74;

            v81 = specialized __RawDictionaryStorage.find<A>(_:)(v80, v79, v78);
            if (v82)
            {
              v83 = *(v77[7] + 8 * v81);
            }

            else
            {
              v83 = 0;
            }

            v84 = v82 ^ 1;
          }

          else
          {
            v83 = 0;
            v84 = 1;
          }

          if (v116[2])
          {
            v86 = v75[1];
            v85 = v75[2];
            v87 = *v75;

            v88 = v87;
            v89 = v116;
            v90 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v86, v85);
            if ((v91 & 1) == 0)
            {

              goto LABEL_76;
            }

            v92 = v83;
            v93 = *(v89[7] + 8 * v90);

            if ((v84 & 1) == 0)
            {
              a5 = v117;
              if (v92 >= v51 && (v93 < v53 || v93 - v53 >= v92 - v51))
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_83;
                }

                goto LABEL_89;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 2) + 1, 1, v122);
              }

LABEL_78:
              v55 = v122;
              goto LABEL_79;
            }

LABEL_77:
            v94 = swift_isUniquelyReferenced_nonNull_native();
            a5 = v117;
            if (v94)
            {
              goto LABEL_78;
            }

            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 2) + 1, 1, v122);
LABEL_79:
            v96 = *(v55 + 2);
            v95 = *(v55 + 3);
            if (v96 >= v95 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v55);
            }

            *(v55 + 2) = v96 + 1;
            *&v55[8 * v96 + 32] = v53++;
          }

          else
          {
LABEL_76:
            if (v84)
            {
              goto LABEL_77;
            }

            v97 = swift_isUniquelyReferenced_nonNull_native();
            a5 = v117;
            if (v97)
            {
              goto LABEL_83;
            }

LABEL_89:
            v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
LABEL_83:
            v99 = *(v54 + 2);
            v98 = *(v54 + 3);
            v55 = v122;
            if (v99 >= v98 >> 1)
            {
              v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v54);
              v55 = v122;
              v54 = v101;
            }

            *(v54 + 2) = v99 + 1;
            *&v54[8 * v99 + 32] = v51++;
            v52 = v51;
          }
        }
      }
    }
  }

  v68 = *(v54 + 2) + *(v55 + 2);
LABEL_102:
  if (v68 <= a5)
  {
    v122 = v55;
  }

  else
  {

    v122 = 0;
  }

LABEL_105:

  return v122;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID()
{
  result = lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID;
  if (!lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID;
  if (!lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Resolver?(255, a2, a3, MEMORY[0x1E69E6048]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of GlassContainer.MatchingResult<GlassContainer.Entry>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GlassContainer.MatchingResult<GlassContainer.Entry>?(0, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>?, &lazy cache variable for type metadata for GlassContainer.MatchingResult<GlassContainer.Entry>, &type metadata for GlassContainer.Entry, type metadata accessor for GlassContainer.MatchingResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GlassContainer.MatchingResult<GlassContainer.Item>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  type metadata accessor for GlassContainer.MatchingResult<GlassContainer.Entry>?(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of (Int, Int, GlassContainer.Entry, GlassContainer.Entry)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for CollectionChanges<Int, Int>()
{
  if (!lazy cache variable for type metadata for CollectionChanges<Int, Int>)
  {
    v0 = type metadata accessor for CollectionChanges();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CollectionChanges<Int, Int>);
    }
  }
}

uint64_t outlined consume of GlassContainer.Entry.ModelID?(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of GlassContainer.Entry.ModelID(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t outlined consume of ResolvedIDs.Key(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0x80) == 0)
  {
    return outlined consume of GlassContainer.Entry.ModelID(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t outlined copy of ResolvedIDs.Key(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0x80) == 0)
  {
    return outlined copy of GlassContainer.Entry.ModelID(result, a2, a3, a4, a5);
  }

  return result;
}

double _s7SwiftUI14GlassContainerO14MatchingResultVy_AC5EntryVGSgWOi0_(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double _s7SwiftUI14GlassContainerO5EntryVSgWOi0_(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t _sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOg(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double _sSi6offset_7SwiftUI14GlassContainerO5EntryV7elementtSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 332) = 0u;
  return result;
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi0_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  v11 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
  v12 = *(a1 + 680) & 1 | 0x2000000000000000;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 512) = result;
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  *(a1 + 672) = v11;
  *(a1 + 680) = v12;
  return result;
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi1_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  v11 = *(a1 + 672) & 0xFFFFFFFF000000FFLL;
  v12 = *(a1 + 680) & 1 | 0x4000000000000000;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  result = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 512) = result;
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  *(a1 + 672) = v11;
  *(a1 + 680) = v12;
  return result;
}

int8x16_t _s7SwiftUI15ResolverMessage33_04178B540DC3B0BFBD7679A049CE48C7LLOWOi_(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = *(a1 + 624);
  v3 = *(a1 + 168) & 0xFFFFFFFFC00000FFLL;
  v4 = *(a1 + 328) & 0xFFFFFFFF000000FFLL;
  v5 = *(a1 + 392) & 3;
  v6 = *(a1 + 440) & 3;
  v7 = *(a1 + 480) & 0xFFFFFFFFFFFFFF8;
  v8 = *(a1 + 496) & 0x101;
  v9 = *(a1 + 544) & 3;
  v10 = *(a1 + 560) & 1;
  *(a1 + 64) &= 0xFFFFFFFFC00000FFLL;
  *(a1 + 168) = v3;
  *(a1 + 328) = v4;
  *(a1 + 352) = v1;
  *(a1 + 392) = v5;
  *(a1 + 408) = vandq_s8(*(a1 + 408), xmmword_18DDAA060);
  *(a1 + 440) = v6;
  *(a1 + 480) = v7;
  *(a1 + 496) = v8;
  *(a1 + 512) = vandq_s8(*(a1 + 512), xmmword_18DDAA060);
  *(a1 + 544) = v9;
  *(a1 + 560) = v10;
  *(a1 + 624) = v2;
  result = vandq_s8(*(a1 + 672), xmmword_18DDAA070);
  *(a1 + 672) = result;
  return result;
}

uint64_t specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(char *a1, Swift::Int a2, uint64_t a3, Swift::Int a4, uint64_t a5)
{
  v97 = a5;
  v98 = a1;
  v99 = a3;
  type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for CollectionDifference<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6EF0]);
  v95 = v7;
  v93 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v93 - v8;
  v9 = MEMORY[0x1E69E7CC8];
  v106 = MEMORY[0x1E69E7CC8];
  type metadata accessor for [GlassContainer.Item.ID : Int](0, &lazy cache variable for type metadata for [GlassContainer.Entry.StableID : Int], lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  v11 = v10;
  Dictionary.reserveCapacity(_:)(a4);
  v100 = a4;
  if (a4)
  {
    if ((v100 & 0x8000000000000000) == 0)
    {
      v96 = v11;
      v12 = 0;
      v13 = v106;
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v15 = *(v99 + 8 * v12);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v13;
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
        v19 = *(v13 + 2);
        v20 = (v17 & 1) == 0;
        v21 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_107;
        }

        v22 = v17;
        if (*(v13 + 3) >= v21)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v13 = v103;
            if ((v17 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v13 = v103;
            if ((v22 & 1) == 0)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
          if ((v22 & 1) != (v24 & 1))
          {
            goto LABEL_116;
          }

          v18 = v23;
          v13 = v103;
          if ((v22 & 1) == 0)
          {
LABEL_14:
            *&v13[8 * (v18 >> 6) + 64] |= 1 << v18;
            *(*(v13 + 6) + 8 * v18) = v15;
            *(*(v13 + 7) + 8 * v18) = v12;
            v25 = *(v13 + 2);
            v26 = __OFADD__(v25, 1);
            v27 = v25 + 1;
            if (v26)
            {
              goto LABEL_112;
            }

            *(v13 + 2) = v27;
            goto LABEL_5;
          }
        }

        *(*(v13 + 7) + 8 * v18) = v12;
LABEL_5:
        ++v12;
        if (v14 == v100)
        {
          v106 = v13;
          v9 = MEMORY[0x1E69E7CC8];
          goto LABEL_19;
        }
      }
    }

    goto LABEL_114;
  }

LABEL_19:
  v105 = v9;
  Dictionary.reserveCapacity(_:)(a2);
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v28 = 0;
    v29 = v105;
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_108;
      }

      v31 = *&v98[8 * v28];
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v29;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
      v35 = *(v29 + 2);
      v36 = (v34 & 1) == 0;
      v26 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v26)
      {
        goto LABEL_109;
      }

      v38 = v34;
      if (*(v29 + 3) < v37)
      {
        break;
      }

      if (v32)
      {
        goto LABEL_30;
      }

      v42 = v33;
      specialized _NativeDictionary.copy()();
      v33 = v42;
      v29 = v103;
      if ((v38 & 1) == 0)
      {
LABEL_31:
        *&v29[8 * (v33 >> 6) + 64] |= 1 << v33;
        *(*(v29 + 6) + 8 * v33) = v31;
        *(*(v29 + 7) + 8 * v33) = v28;
        v40 = *(v29 + 2);
        v26 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v26)
        {
          goto LABEL_113;
        }

        *(v29 + 2) = v41;
        goto LABEL_23;
      }

LABEL_22:
      *(*(v29 + 7) + 8 * v33) = v28;
LABEL_23:
      ++v28;
      if (v30 == a2)
      {
        v105 = v29;
        goto LABEL_36;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, v32);
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
    if ((v38 & 1) != (v39 & 1))
    {
      goto LABEL_116;
    }

LABEL_30:
    v29 = v103;
    if ((v38 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_36:
  v96 = v106;
  if (*(v106 + 2) != v100 || (v43 = v105, *(v105 + 2) != a2))
  {
    v103 = v98;
    v104 = a2;
    v101 = v99;
    v102 = v100;
    type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID, MEMORY[0x1E69E6048]);
    lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<GlassContainer.Entry.StableID> and conformance UnsafeBufferPointer<A>, &lazy cache variable for type metadata for UnsafeBufferPointer<GlassContainer.Entry.StableID>, &type metadata for GlassContainer.Entry.StableID);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v49 = v94;
    BidirectionalCollection<>.difference<A>(from:)();
    v50 = v95;
    v51 = CollectionDifference.removals.getter();
    v52 = *(v51 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    if (v52)
    {
      v103 = MEMORY[0x1E69E7CC0];
      v54 = v51;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
      v55 = v54;
      v56 = 0;
      v57 = 32;
      v48 = v103;
      do
      {
        if (v56 >= *(v55 + 16))
        {
          goto LABEL_110;
        }

        v58 = *(v55 + v57);
        v103 = v48;
        v60 = *(v48 + 2);
        v59 = *(v48 + 3);
        if (v60 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v55 = v54;
          v48 = v103;
        }

        ++v56;
        *(v48 + 2) = v60 + 1;
        *&v48[8 * v60 + 32] = v58;
        v57 += 32;
      }

      while (v52 != v56);

      v49 = v94;
      v50 = v95;
      v53 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v48 = MEMORY[0x1E69E7CC0];
    }

    v83 = CollectionDifference.insertions.getter();
    v84 = *(v83 + 16);
    if (!v84)
    {

      (*(v93 + 8))(v49, v50);
      goto LABEL_102;
    }

    v103 = v53;
    v100 = v83;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84, 0);
    v85 = v100;
    v86 = 0;
    v87 = 32;
    v88 = v103;
    while (v86 < *(v85 + 16))
    {
      v89 = *(v85 + v87);
      v103 = v88;
      v91 = *(v88 + 2);
      v90 = *(v88 + 3);
      if (v91 >= v90 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
        v85 = v100;
        v88 = v103;
      }

      ++v86;
      *(v88 + 2) = v91 + 1;
      *&v88[8 * v91 + 32] = v89;
      v87 += 32;
      if (v84 == v86)
      {

        (*(v93 + 8))(v94, v95);
        goto LABEL_102;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v95 = v105;
  while (1)
  {
    if (v46 >= v100)
    {
      v44 = v45;
      if (v45 >= a2)
      {
        break;
      }
    }

    v61 = *(v48 + 2);
    v62 = *(v47 + 2);
    v63 = v62 + v61;
    if (v62 + v61 > v97)
    {
      goto LABEL_104;
    }

    if (v44 == a2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61 + 1, 1, v48);
      }

      v65 = *(v48 + 2);
      v64 = *(v48 + 3);
      if (v65 >= v64 >> 1)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v48);
      }

      *(v48 + 2) = v65 + 1;
      *&v48[8 * v65 + 32] = v46++;
      v44 = a2;
    }

    else if (v46 == v100)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 + 1, 1, v47);
      }

      v67 = *(v47 + 2);
      v66 = *(v47 + 3);
      if (v67 >= v66 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v47);
      }

      *(v47 + 2) = v67 + 1;
      *&v47[8 * v67 + 32] = v44++;
      v45 = v44;
      v46 = v100;
    }

    else
    {
      v68 = *(v99 + 8 * v46);
      if (v68 == *&v98[8 * v44])
      {
        ++v46;
        goto LABEL_47;
      }

      if (*(v43 + 2) && (v69 = specialized __RawDictionaryStorage.find<A>(_:)(v68), (v70 & 1) != 0))
      {
        v71 = 0;
        v72 = *(*(v43 + 7) + 8 * v69);
      }

      else
      {
        v72 = 0;
        v71 = 1;
      }

      if (!*(v96 + 2) || (v73 = specialized __RawDictionaryStorage.find<A>(_:)(*&v98[8 * v44]), (v74 & 1) == 0))
      {
        if (v71)
        {
LABEL_75:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
          }

          v43 = v95;
          goto LABEL_78;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        }

        v43 = v95;
        goto LABEL_84;
      }

      if (v71)
      {
        goto LABEL_75;
      }

      if (v72 < v44)
      {
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v43 = v95;
        if (v75)
        {
          goto LABEL_78;
        }

LABEL_73:
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        goto LABEL_78;
      }

      v80 = *(*(v96 + 7) + 8 * v73);
      v81 = v80 < v46;
      v82 = v80 - v46;
      v43 = v95;
      if (v81 || v82 >= v72 - v44)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
        }

LABEL_84:
        v79 = *(v47 + 2);
        v78 = *(v47 + 3);
        if (v79 >= v78 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v47);
        }

        *(v47 + 2) = v79 + 1;
        *&v47[8 * v79 + 32] = v44;
LABEL_47:
        v45 = ++v44;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        v77 = *(v48 + 2);
        v76 = *(v48 + 3);
        if (v77 >= v76 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v48);
        }

        *(v48 + 2) = v77 + 1;
        *&v48[8 * v77 + 32] = v46++;
      }
    }
  }

  v63 = *(v47 + 2) + *(v48 + 2);
LABEL_104:
  if (v63 > v97)
  {

    v48 = 0;
  }

LABEL_102:

  return v48;
}

unint64_t lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID()
{
  result = lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID;
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID;
  if (!lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID);
  }

  return result;
}

double _s7SwiftUI14GlassContainerO15DisplayMaterialVSgWOi0_(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

uint64_t outlined consume of _Glass.Variant.ID?(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0xFBu)
  {
    return outlined consume of _Glass.Variant.ID(result, a2);
  }

  return result;
}

char *specialized closure #1 in closure #1 in CollectionChanges.changedOffsets<A, B>(from:to:limit:)(void *a1, Swift::Int a2, uint64_t a3, Swift::Int a4, char *a5)
{
  v109 = a1;
  v110 = a3;
  type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for CollectionDifference<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6EF0]);
  v106 = v8;
  v104 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v104 - v9;
  v10 = MEMORY[0x1E69E7CC8];
  v117 = MEMORY[0x1E69E7CC8];
  type metadata accessor for [GlassContainer.Item.ID : Int](0, &lazy cache variable for type metadata for [ScrollEdgeEffectTag.ID : Int], lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID);
  v12 = v11;
  Dictionary.reserveCapacity(_:)(a4);
  v111 = a4;
  if (a4)
  {
    if (v111 < 0)
    {
      goto LABEL_129;
    }

    v107 = v12;
    v108 = a5;
    v13 = 0;
    v14 = v117;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
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
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v16 = *(v110 + 8 * v13);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v14;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v20 = v14[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_121;
      }

      v23 = v18;
      if (v14[3] >= v22)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v18 & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if ((v23 & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_131;
        }

        v19 = v24;
        if ((v23 & 1) == 0)
        {
LABEL_14:
          v14 = v114;
          v114[(v19 >> 6) + 8] |= 1 << v19;
          *(v14[6] + 8 * v19) = v16;
          *(v14[7] + 8 * v19) = v13;
          v26 = v14[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_126;
          }

          v14[2] = v28;
          goto LABEL_5;
        }
      }

      v14 = v114;
      *(v114[7] + 8 * v19) = v13;
LABEL_5:
      ++v13;
      if (v15 == v111)
      {
        v117 = v14;
        a5 = v108;
        v10 = MEMORY[0x1E69E7CC8];
        break;
      }
    }
  }

  v116 = v10;
  Dictionary.reserveCapacity(_:)(a2);
  if (a2)
  {
    if (a2 < 0)
    {
      goto LABEL_130;
    }

    v29 = 0;
    v30 = v116;
    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_122;
      }

      v33 = v109[v29];

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v114 = v30;
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
      v37 = v30[2];
      v38 = (v36 & 1) == 0;
      v27 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v27)
      {
        goto LABEL_123;
      }

      v40 = v36;
      if (v30[3] < v39)
      {
        break;
      }

      if (v34)
      {
        goto LABEL_30;
      }

      v44 = v35;
      specialized _NativeDictionary.copy()();
      v35 = v44;
      if ((v40 & 1) == 0)
      {
LABEL_31:
        v30 = v114;
        v114[(v35 >> 6) + 8] |= 1 << v35;
        *(v30[6] + 8 * v35) = v33;
        *(v30[7] + 8 * v35) = v29;
        v42 = v30[2];
        v27 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v27)
        {
          goto LABEL_127;
        }

        v30[2] = v43;
        goto LABEL_23;
      }

LABEL_22:
      v31 = v35;

      v30 = v114;
      *(v114[7] + 8 * v31) = v29;
LABEL_23:
      ++v29;
      if (v32 == a2)
      {
        v116 = v30;
        goto LABEL_36;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, v34);
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v33);
    if ((v40 & 1) != (v41 & 1))
    {
      goto LABEL_131;
    }

LABEL_30:
    if ((v40 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_36:
  v107 = v117;
  if (v117[2] != v111 || (v45 = v116, v116[2] != a2))
  {
    v114 = v109;
    v115 = a2;
    v112 = v110;
    v113 = v111;
    type metadata accessor for Resolver?(0, &lazy cache variable for type metadata for UnsafeBufferPointer<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID, MEMORY[0x1E69E6048]);
    lazy protocol witness table accessor for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<ScrollEdgeEffectTag.ID> and conformance UnsafeBufferPointer<A>, &lazy cache variable for type metadata for UnsafeBufferPointer<ScrollEdgeEffectTag.ID>, &type metadata for ScrollEdgeEffectTag.ID);
    lazy protocol witness table accessor for type ScrollEdgeEffectTag.ID and conformance ScrollEdgeEffectTag.ID();
    BidirectionalCollection<>.difference<A>(from:)();
    v51 = CollectionDifference.removals.getter();
    v52 = *(v51 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    if (v52)
    {
      v114 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
      v54 = 0;
      v55 = v114;
      v56 = v51 + 57;
      do
      {
        if (v54 >= *(v51 + 16))
        {
          goto LABEL_124;
        }

        v57 = *(v56 - 25);
        v58 = v55;
        outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();

        v55 = v58;
        v114 = v58;
        v60 = v58[2];
        v59 = v58[3];
        if (v60 >= v59 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v55 = v114;
        }

        ++v54;
        v55[2] = v60 + 1;
        v55[v60 + 4] = v57;
        v56 += 32;
      }

      while (v52 != v54);
      v108 = v55;

      v94 = v105;
      v93 = v106;
      v53 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v108 = MEMORY[0x1E69E7CC0];
      v94 = v105;
      v93 = v106;
    }

    v95 = CollectionDifference.insertions.getter();
    v96 = *(v95 + 16);
    if (v96)
    {
      v114 = v53;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
      v97 = 0;
      v98 = v114;
      v99 = v95 + 57;
      do
      {
        if (v97 >= *(v95 + 16))
        {
          goto LABEL_125;
        }

        v100 = *(v99 - 25);
        outlined copy of CollectionDifference<ScrollEdgeEffectTag.ID>.Change();

        v114 = v98;
        v102 = v98[2];
        v101 = v98[3];
        if (v102 >= v101 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
          v98 = v114;
        }

        ++v97;
        v98[2] = v102 + 1;
        v98[v102 + 4] = v100;
        v99 += 32;
      }

      while (v96 != v97);

      (*(v104 + 8))(v105, v106);
    }

    else
    {

      (*(v104 + 8))(v94, v93);
    }

LABEL_119:

    return v108;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  v106 = v116;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v48 >= v111)
        {
          v46 = v47;
          if (v47 >= a2)
          {
            v64 = *(v49 + 2) + *(v50 + 2);
LABEL_116:
            if (v64 <= a5)
            {
              v108 = v50;
            }

            else
            {

              v108 = 0;
            }

            goto LABEL_119;
          }
        }

        v62 = *(v50 + 2);
        v63 = *(v49 + 2);
        v64 = v63 + v62;
        if (v63 + v62 > a5)
        {
          goto LABEL_116;
        }

        if (v46 != a2)
        {
          break;
        }

        v65 = v50;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v50 = v65;
        }

        else
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62 + 1, 1, v65);
        }

        v67 = *(v50 + 2);
        v66 = *(v50 + 3);
        if (v67 >= v66 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v50);
        }

        *(v50 + 2) = v67 + 1;
        *&v50[8 * v67 + 32] = v48++;
        v46 = a2;
      }

      if (v48 != v111)
      {
        break;
      }

      v68 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63 + 1, 1, v49);
      }

      v70 = *(v49 + 2);
      v69 = *(v49 + 3);
      if (v70 >= v69 >> 1)
      {
        v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v49);
        v50 = v68;
        v49 = v91;
      }

      else
      {
        v50 = v68;
      }

      *(v49 + 2) = v70 + 1;
      *&v49[8 * v70 + 32] = v46++;
      v47 = v46;
      v48 = v111;
    }

    v71 = *(v110 + 8 * v48);
    v72 = v109[v46];
    v73 = *(v71 + 16);
    if (v73 == *(v72 + 16))
    {
      break;
    }

LABEL_69:
    v108 = v50;
    if (v45[2])
    {
      v74 = v47;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
      if (v76)
      {
        v77 = 0;
        v78 = *(v45[7] + 8 * v75);
        goto LABEL_74;
      }
    }

    else
    {
      v74 = v47;
    }

    v78 = 0;
    v77 = 1;
LABEL_74:
    if (v107[2] && (v79 = specialized __RawDictionaryStorage.find<A>(_:)(v109[v46]), (v80 & 1) != 0))
    {
      if (!v77)
      {
        if (v78 < v46)
        {
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v45 = v106;
          v47 = v74;
          if (v81)
          {
LABEL_79:
            v50 = v108;
            goto LABEL_84;
          }

LABEL_100:
          v108 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v108 + 2) + 1, 1, v108);
          goto LABEL_79;
        }

        v88 = *(v107[7] + 8 * v79);
        v89 = v88 < v48;
        v90 = v88 - v48;
        v45 = v106;
        if (!v89 && v90 < v78 - v46)
        {
          v47 = v74;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_79;
          }

          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
        }

        goto LABEL_90;
      }

LABEL_81:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v50 = v108;
      }

      else
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v108 + 2) + 1, 1, v108);
      }

      v45 = v106;
      v47 = v74;
LABEL_84:
      v83 = *(v50 + 2);
      v82 = *(v50 + 3);
      if (v83 >= v82 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v50);
      }

      *(v50 + 2) = v83 + 1;
      *&v50[8 * v83 + 32] = v48++;
    }

    else
    {
      if (v77)
      {
        goto LABEL_81;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v45 = v106;
LABEL_90:
      v85 = *(v49 + 2);
      v84 = *(v49 + 3);
      v50 = v108;
      if (v85 >= v84 >> 1)
      {
        v92 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v49);
        v50 = v108;
        v49 = v92;
      }

      *(v49 + 2) = v85 + 1;
      *&v49[8 * v85 + 32] = v46;
LABEL_52:
      v47 = ++v46;
    }
  }

  if (v73)
  {
    v61 = v71 == v72;
  }

  else
  {
    v61 = 1;
  }

  if (v61)
  {
LABEL_51:
    ++v48;
    goto LABEL_52;
  }

  v86 = (v71 + 32);
  v87 = (v72 + 32);
  while (v73)
  {
    if (*v86 != *v87)
    {
      goto LABEL_69;
    }

    ++v86;
    ++v87;
    if (!--v73)
    {
      goto LABEL_51;
    }
  }

LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}