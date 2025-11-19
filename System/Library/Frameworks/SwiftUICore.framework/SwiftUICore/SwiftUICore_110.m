uint64_t _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  v131 = *(v1 + 32);
  v132 = v3;
  v5 = *(v1 + 48);
  v133 = *(v1 + 64);
  v6 = *(v1 + 16);
  *v130 = *v1;
  *&v130[16] = v6;
  v7 = *(a1 + 48);
  v137 = *(a1 + 32);
  v138 = v7;
  *v139 = *(a1 + 64);
  v8 = *(a1 + 16);
  v135 = *a1;
  v136 = v8;
  v134 = *(v1 + 80);
  *&v139[14] = *(a1 + 78);
  v140[0] = v135;
  v140[1] = v8;
  *(&v141[1] + 6) = *(a1 + 78);
  v9 = *(a1 + 64);
  v140[3] = *(a1 + 48);
  *v141 = v9;
  v140[2] = *(a1 + 32);
  *&v141[7] = v131;
  *&v141[9] = v5;
  *&v141[11] = *(v1 + 64);
  v142 = *(v1 + 80);
  *&v141[5] = v4;
  *&v141[3] = *v130;
  v12 = v135;
  v11 = *&v12 >> 64;
  v10 = v12;
  v13 = v8;
  v14 = *(&v8 + 1);
  v15 = v137;
  v16 = DWORD1(v137);
  v17 = BYTE8(v137);
  v18 = BYTE9(v137);
  v19 = *(a1 + 42);
  v20 = *(a1 + 58);
  *(v144 + 11) = *(a1 + 69);
  v143 = v19;
  v144[0] = v20;
  v21 = HIDWORD(v135.i64[0]);
  if (v139[21] <= 1u)
  {
    if (!v139[21])
    {
      v56 = *v130;
      v57 = *&v130[4];
      v58 = *&v130[8];
      v59 = *&v130[12];
      v60 = *&v130[16];
      if (v134)
      {
        if (v134 != 9 || (v61 = vorrq_s8(v132, v133), *&vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL)) | *(&v131 + 1) | v131 | *&v130[24] | *v130 | (((*&v130[12] | *&v130[20]) | *&v130[4]) << 32) | (*&v130[8] | *&v130[16])))
        {
LABEL_23:
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          return outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
        }

        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
        v96 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v96;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v97 = *(a1 + 16);
        v110 = *a1;
        v111 = v97;
        result = outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 2143289344;
        *(a1 + 85) = 0;
      }

      else
      {
        v74 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v74;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v75 = *(a1 + 16);
        v110 = *a1;
        v111 = v75;
        outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        *v103 = v10;
        *&v103[4] = v21;
        *&v103[8] = v11;
        v123.i64[0] = __PAIR64__(v57, v56);
        v123.i64[1] = __PAIR64__(v59, v58);
        LODWORD(v124) = v60;
        Color.ResolvedHDR.animatableData.setter(&v123);
        result = outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
        *a1 = *v103;
        *(a1 + 16) = v13;
        *(a1 + 85) = 0;
      }

      return result;
    }

    if (v139[21] != 1)
    {
      goto LABEL_28;
    }

    v32 = *v130;
    v33 = *&v130[20];
    v34 = *&v130[16];
    v35 = *&v130[28];
    v36 = *&v130[24];
    v37 = v131;
    if (v134 > 4u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          if (v134 == 7)
          {
            v62 = *(a1 + 48);
            v120 = *(a1 + 32);
            v121 = v62;
            v122[0] = *(a1 + 64);
            *(v122 + 14) = *(a1 + 78);
            v63 = *(a1 + 16);
            v118 = *a1;
            v119 = v63;
            outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
            outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
            outlined destroy of _ShapeStyle_Pack.Fill(&v118);
            *&v103[16] = 0;
            *v103 = v32;
            *&v103[24] = 2143289344;
            v103[93] = 0;
            v65 = *(*v10 + 152);
            type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
            v67 = v66;

            v65(v103, v67, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<A>);
            outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
            v125 = *&v103[40];
            v126 = *&v103[56];
            v127[0] = *&v103[72];
            *(v127 + 14) = *&v103[86];
            v123 = *&v103[8];
            v124 = *&v103[24];
            v112 = *&v103[32];
            v113 = *&v103[48];
            *v114 = *&v103[64];
            *&v114[14] = *&v103[78];
            v110 = *v103;
            v111 = *&v103[16];
            outlined init with copy of _ShapeStyle_Pack.Fill(&v123, &v116);
            result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(&v110, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>, lazy protocol witness table accessor for type Shader.ResolvedShader and conformance Shader.ResolvedShader, &type metadata for Shader.ResolvedShader);
            v68 = v126;
            *(a1 + 32) = v125;
            *(a1 + 48) = v68;
            *(a1 + 64) = v127[0];
            *(a1 + 78) = *(v127 + 14);
            v69 = v124;
            *a1 = v123;
            *(a1 + 16) = v69;
            return result;
          }

          goto LABEL_28;
        }

        v87 = *(a1 + 48);
        v120 = *(a1 + 32);
        v121 = v87;
        v122[0] = *(a1 + 64);
        *(v122 + 14) = *(a1 + 78);
        v88 = *(a1 + 16);
        v118 = *a1;
        v119 = v88;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
        outlined destroy of _ShapeStyle_Pack.Fill(&v118);
        *v103 = v32;
        *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
        *&v103[32] = v37;
        *&v103[40] = 0;
        *&v103[48] = 0;
        *&v103[56] = 2143289344;
        v103[125] = 0;
        v90 = *(*v10 + 152);
        type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
        v92 = v91;

        v90(v103, v92, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<A>);
        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
        v125 = *&v103[72];
        v126 = *&v103[88];
        v127[0] = *&v103[104];
        *(v127 + 14) = *&v103[118];
        v123 = *&v103[40];
        v124 = *&v103[56];
        v110 = *v103;
        v111 = *&v103[16];
        v112 = *&v103[32];
        v113 = *&v103[48];
        *&v115[14] = *&v103[110];
        *&v114[16] = *&v103[80];
        *v115 = *&v103[96];
        *v114 = *&v103[64];
        outlined init with copy of _ShapeStyle_Pack.Fill(&v123, &v116);
        result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(&v110, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<MeshGradient._Paint>, lazy protocol witness table accessor for type MeshGradient._Paint and conformance MeshGradient._Paint, &type metadata for MeshGradient._Paint);
        v93 = v126;
        *(a1 + 32) = v125;
        *(a1 + 48) = v93;
        *(a1 + 64) = v127[0];
        *(a1 + 78) = *(v127 + 14);
        v94 = v124;
        *a1 = v123;
        *(a1 + 16) = v94;
        return result;
      }

      v79 = *(a1 + 48);
      v120 = *(a1 + 32);
      v121 = v79;
      v122[0] = *(a1 + 64);
      *(v122 + 14) = *(a1 + 78);
      v80 = *(a1 + 16);
      v118 = *a1;
      v119 = v80;
      v40 = a1;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
      outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
      outlined destroy of _ShapeStyle_Pack.Fill(&v118);
      *v103 = v32;
      *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
      *&v103[32] = v37;
      *&v103[36] = *(v2 + 36);
      *&v103[52] = *(v2 + 52);
      *&v103[56] = 0uLL;
      *&v103[72] = 2143289344;
      v103[141] = 0;
      v41 = *(*v10 + 152);
      v106 = v131;
      v107 = v132;
      v108 = v133;
      v109 = v134;
      v104 = *v130;
      v105 = *&v130[16];
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<AngularGradient._Paint>;
      v43 = &type metadata for AngularGradient._Paint;
      v44 = lazy protocol witness table accessor for type AngularGradient._Paint and conformance AngularGradient._Paint;
    }

    else
    {
      switch(v134)
      {
        case 2u:
          v77 = *(a1 + 48);
          v120 = *(a1 + 32);
          v121 = v77;
          v122[0] = *(a1 + 64);
          *(v122 + 14) = *(a1 + 78);
          v78 = *(a1 + 16);
          v118 = *a1;
          v119 = v78;
          v40 = a1;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
          outlined destroy of _ShapeStyle_Pack.Fill(&v118);
          *v103 = v32;
          *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
          *&v103[32] = v37;
          *&v103[36] = *(v2 + 36);
          *&v103[41] = *(v2 + 41);
          *&v103[56] = 0uLL;
          *&v103[72] = 2143289344;
          v103[141] = 0;
          v41 = *(*v10 + 152);
          v106 = v131;
          v107 = v132;
          v108 = v133;
          v109 = v134;
          v104 = *v130;
          v105 = *&v130[16];
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
          v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>;
          v43 = &type metadata for LinearGradient._Paint;
          v44 = lazy protocol witness table accessor for type LinearGradient._Paint and conformance LinearGradient._Paint;
          break;
        case 3u:
          v81 = *(a1 + 48);
          v120 = *(a1 + 32);
          v121 = v81;
          v122[0] = *(a1 + 64);
          *(v122 + 14) = *(a1 + 78);
          v82 = *(a1 + 16);
          v118 = *a1;
          v119 = v82;
          v40 = a1;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
          outlined destroy of _ShapeStyle_Pack.Fill(&v118);
          *v103 = v32;
          *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
          *&v103[32] = v37;
          *&v103[36] = *(v2 + 36);
          *&v103[52] = *(v2 + 52);
          *&v103[56] = 0uLL;
          *&v103[72] = 2143289344;
          v103[141] = 0;
          v41 = *(*v10 + 152);
          v106 = v131;
          v107 = v132;
          v108 = v133;
          v109 = v134;
          v104 = *v130;
          v105 = *&v130[16];
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<RadialGradient._Paint>;
          v43 = &type metadata for RadialGradient._Paint;
          v44 = lazy protocol witness table accessor for type RadialGradient._Paint and conformance RadialGradient._Paint;
          break;
        case 4u:
          v38 = *(a1 + 48);
          v120 = *(a1 + 32);
          v121 = v38;
          v122[0] = *(a1 + 64);
          *(v122 + 14) = *(a1 + 78);
          v39 = *(a1 + 16);
          v118 = *a1;
          v119 = v39;
          v40 = a1;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
          outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
          outlined destroy of _ShapeStyle_Pack.Fill(&v118);
          *v103 = v32;
          *&v103[16] = __PAIR128__(__PAIR64__(v35, v36), __PAIR64__(v33, v34));
          *&v103[32] = v37;
          *&v103[36] = *(v2 + 36);
          *&v103[52] = *(v2 + 52);
          *&v103[56] = 0uLL;
          *&v103[72] = 2143289344;
          v103[141] = 0;
          v41 = *(*v10 + 152);
          v106 = v131;
          v107 = v132;
          v108 = v133;
          v109 = v134;
          v104 = *v130;
          v105 = *&v130[16];
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v104, &v110, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          v42 = &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<EllipticalGradient._Paint>;
          v43 = &type metadata for EllipticalGradient._Paint;
          v44 = lazy protocol witness table accessor for type EllipticalGradient._Paint and conformance EllipticalGradient._Paint;
          break;
        default:
          goto LABEL_28;
      }
    }

    v83 = v44;
    type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, v42, v44, v43, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
    v41(v103, v84, &protocol witness table for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<A>);
    outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
    v125 = *&v103[88];
    v126 = *&v103[104];
    v127[0] = *&v103[120];
    *(v127 + 14) = *&v103[134];
    v123 = *&v103[56];
    v124 = *&v103[72];
    v112 = *&v103[32];
    v113 = *&v103[48];
    v110 = *v103;
    v111 = *&v103[16];
    *&v115[30] = *&v103[126];
    *v115 = *&v103[96];
    *&v115[16] = *&v103[112];
    *v114 = *&v103[64];
    *&v114[16] = *&v103[80];
    outlined init with copy of _ShapeStyle_Pack.Fill(&v123, &v116);
    result = outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(&v110, v42, v83, v43);
    v85 = v126;
    *(v40 + 32) = v125;
    *(v40 + 48) = v85;
    *(v40 + 64) = v127[0];
    *(v40 + 78) = *(v127 + 14);
    v86 = v124;
    *v40 = v123;
    *(v40 + 16) = v86;
    return result;
  }

  if (v139[21] != 2)
  {
    if (v139[21] == 4)
    {
      if (v134 == 1)
      {
        v51.i64[0] = 0x3C0000003C000000;
        v51.i64[1] = 0x3C0000003C000000;
        v101 = vmulq_f32(*v130, v51);
        v52 = vmul_f32(*&v130[16], 0x3C0000003C000000);
        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
        v54 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v54;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v55 = *(a1 + 16);
        v110 = *a1;
        v111 = v55;
        result = outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        *a1 = v101;
        *(a1 + 16) = v52;
        *(a1 + 85) = 4;
        return result;
      }

      goto LABEL_23;
    }

    if (v139[21] == 5)
    {
      if (v134 == 8)
      {
        v22 = WORD4(v131);
        v23 = DWORD1(v131);
        v24 = v131;
        v25 = *&v130[24];
        v26 = *v130;
        v100 = *&v130[8];
        outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
        v28 = *(a1 + 48);
        v112 = *(a1 + 32);
        v113 = v28;
        *v114 = *(a1 + 64);
        *&v114[14] = *(a1 + 78);
        v29 = *(a1 + 16);
        v110 = *a1;
        v111 = v29;
        result = outlined destroy of _ShapeStyle_Pack.Fill(&v110);
        v128 = *(v2 + 42);
        v129[0] = v144[0];
        *(v129 + 11) = *(v144 + 11);
        v129[0] = *(v2 + 58);
        *(v129 + 14) = *(v2 + 72);
        *a1 = v26;
        *(a1 + 8) = v100;
        *(a1 + 24) = v25;
        *(a1 + 32) = v24;
        *(a1 + 33) = *(v2 + 33);
        *(a1 + 35) = *(v2 + 35);
        *(a1 + 36) = v23;
        *(a1 + 40) = v22;
        *(a1 + 69) = *(v129 + 11);
        v31 = v128;
        *(a1 + 58) = v129[0];
        *(a1 + 42) = v31;
        *(a1 + 85) = 5;
        return result;
      }

      goto LABEL_23;
    }

LABEL_28:
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v130, &v110);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v135, &v110);
    return outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
  }

  v45 = *v130;
  if (v134)
  {
    if (v134 != 9)
    {
      goto LABEL_28;
    }

    v46 = vorrq_s8(v132, v133);
    if (*&vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL)) | *(&v131 + 1) | v131 | *&v130[24] | *v130 | (((*&v130[12] | *&v130[20]) | *&v130[4]) << 32) | (*&v130[8] | *&v130[16]))
    {
      goto LABEL_28;
    }

    v47 = *(a1 + 48);
    *&v103[32] = *(a1 + 32);
    *&v103[48] = v47;
    *&v103[64] = *(a1 + 64);
    v48 = *&v103[64];
    *&v103[78] = *(a1 + 78);
    v49 = *(a1 + 16);
    *v103 = *a1;
    *&v103[16] = v49;
    v113 = v47;
    *v114 = v48;
    v111 = v49;
    v112 = *&v103[32];
    *&v114[14] = *&v103[78];
    v110 = *v103;
    v50 = a1;
    outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(&v110, &v123);
    outlined destroy of _ShapeStyle_Pack.Fill(v103);
    outlined copy of Material.ID(v14, v15);
    result = outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2143289344;
  }

  else
  {
    v70 = *(a1 + 48);
    v125 = *(a1 + 32);
    v126 = v70;
    v127[0] = *(a1 + 64);
    v71 = v127[0];
    *(v127 + 14) = *(a1 + 78);
    v72 = *(a1 + 16);
    v123 = *a1;
    v124 = v72;
    *&v103[48] = v70;
    *&v103[64] = v71;
    *&v103[16] = v72;
    *&v103[32] = v125;
    *&v103[78] = *(v127 + 14);
    *v103 = v123;
    v50 = a1;
    v98 = *&v130[4];
    v99 = *&v130[12];
    v102 = *&v130[16];
    outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(v103, &v110);
    outlined destroy of _ShapeStyle_Pack.Fill(&v123);
    *&v116 = __PAIR64__(v21, v10);
    *(&v116 + 1) = v11;
    v117 = v13;
    v104.i32[0] = v45;
    *(v104.i64 + 4) = v98;
    v104.i32[3] = v99;
    LODWORD(v105) = v102;
    v112 = v137;
    v113 = v138;
    *v114 = *v139;
    *&v114[14] = *&v139[14];
    v110 = v135;
    v111 = v136;
    outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(&v110, &v118);
    Color.ResolvedHDR.animatableData.setter(&v104);
    result = outlined destroy of (ShapeType, ShapeType)(v140, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill.AnimatableData));
    v73 = v117;
    *v50 = v116;
    *(v50 + 16) = v73;
  }

  *(v50 + 24) = v14;
  *(v50 + 32) = v15;
  *(v50 + 36) = v16;
  *(v50 + 40) = v17;
  *(v50 + 41) = v18;
  *(v50 + 85) = 2;
  return result;
}

uint64_t _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor.visitPaint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v38 = a2;
  v37 = v4;
  v36 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  (*(v23 + 16))(v14, v40, a3, v20);
  if (swift_dynamicCast())
  {
    (*(v15 + 56))(v11, 0, 1, v5);
    (*(v15 + 32))(v22, v11, v5);
    v24 = v39;
    (*(v34 + 16))(v7, v39, AssociatedTypeWitness);
    v25 = v24;
    (*(v36 + 32))(v7, v5);
    type metadata accessor for _AnyResolvedPaint();
    (*(v15 + 16))(v18, v22, v5);
    v26 = _AnyResolvedPaint.__allocating_init(_:)(v18);
    (*(v15 + 8))(v22, v5);
    v27 = v25 + *(v38 + 36);
    v28 = *(v27 + 48);
    v45[2] = *(v27 + 32);
    v45[3] = v28;
    v46[0] = *(v27 + 64);
    *(v46 + 14) = *(v27 + 78);
    v29 = *(v27 + 16);
    v45[0] = *v27;
    v45[1] = v29;
    result = outlined destroy of _ShapeStyle_Pack.Fill(v45);
    *v27 = v26;
    v31 = v41;
    *(v27 + 24) = v42;
    v32 = v44[0];
    *(v27 + 40) = v43;
    *(v27 + 56) = v32;
    *(v27 + 69) = *(v44 + 13);
    *(v27 + 8) = v31;
    *(v27 + 85) = 1;
  }

  else
  {
    (*(v15 + 56))(v11, 1, 1, v5);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

void _ShapeStyle_Pack.Fill.AnimatableData.negate()()
{
  v1 = v0[1];
  v87 = *v0;
  v88 = v1;
  v2 = v0[3];
  v89 = v0[2];
  v90 = v2;
  v91 = v0[4];
  v92 = *(v0 + 80);
  v3 = v87;
  v5 = *(&v89 + 1);
  v4 = v89;
  v6 = *&v2;
  v7 = *(v0 + 56);
  v94 = *(v0 + 9);
  v93 = v7;
  v8 = BYTE8(v88);
  if (v92 <= 4u)
  {
    if (v92 <= 1u)
    {
      if (!v92)
      {
        if (one-time initialization token for legacyInterpolation != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if ((static Color.Resolved.legacyInterpolation & 1) == 0)
        {
          LOBYTE(v66) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v72, 0.0, 0, 0.0, 0.0);
        }
      }
    }

    else
    {
      v51 = *(&v88 + 1);
      v49 = v88;
      if (v92 == 2)
      {
        v26 = v90;
        v27 = v0[3];
        v74 = v0[2];
        v75 = v27;
        v76 = v0[4];
        v77 = *(v0 + 80);
        v28 = v0[1];
        v72 = *v0;
        v73 = v28;
        v84 = v27;
        v85 = v76;
        v82 = v28;
        v83 = v74;
        v86 = v77;
        v81 = v72;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
        v65 = 1;
        v66 = 0u;
        v67 = 0u;
        v68 = MEMORY[0x1E69E7CC0];
        v69 = 0;
        v70 = 0;
        v71 = 1;
        v61 = MEMORY[0x1E69E7CC0];
        v62 = 0;
        v63 = 0;
        v64 = 1;
        v57 = v4;
        v58 = LOBYTE(v5);
        v59 = HIDWORD(v5);
        v60 = v26 & 1;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v66, &v53, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        ResolvedGradientVector.add(_:scaledBy:)(&v57, -1.0);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);
        outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        v29 = v61;
        v30 = v62;
        v31 = v63;
        v32 = v64;
        LOBYTE(v53) = v64;
        *v0 = 0.0 - *&v3;
        *(v0 + 1) = 0.0 - *(&v3 + 1);
        *(v0 + 2) = 0.0 - COERCE_DOUBLE(v49 | (HIDWORD(v49) << 32));
        *(v0 + 3) = 0.0 - v51;
        *(v0 + 4) = v29;
        *(v0 + 40) = v30;
        *(v0 + 11) = v31;
        *(v0 + 48) = v32;
        *(v0 + 80) = 2;
      }

      else
      {
        v9 = v0[3];
        v74 = v0[2];
        v75 = v9;
        v76 = v0[4];
        v77 = *(v0 + 80);
        v10 = v0[1];
        v72 = *v0;
        v73 = v10;
        v84 = v9;
        v85 = v76;
        v82 = v10;
        v83 = v74;
        v86 = v77;
        v81 = v72;
        if (v92 == 3)
        {
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
          *&v66 = MEMORY[0x1E69E7CC0];
          BYTE8(v66) = 0;
          HIDWORD(v66) = 0;
          LOBYTE(v67) = 1;
          v53 = v49 | (HIDWORD(v49) << 32);
          v54 = v8;
          v55 = HIDWORD(v51);
          v56 = v4 & 1;

          ResolvedGradientVector.add(_:scaledBy:)(&v53, -1.0);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);

          v11 = v66;
          v12 = BYTE8(v66);
          v13 = HIDWORD(v66);
          v14 = v67;
          LOBYTE(v66) = v67;
          *v0 = 0.0 - *&v3;
          *(v0 + 1) = 0.0 - *(&v3 + 1);
          *(v0 + 2) = v11;
          *(v0 + 24) = v12;
          *(v0 + 7) = v13;
          *(v0 + 32) = v14;
          *(v0 + 5) = 0.0 - v5;
          *(v0 + 6) = 0.0 - v6;
          *(v0 + 80) = 3;
        }

        else
        {
          outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
          *&v66 = MEMORY[0x1E69E7CC0];
          BYTE8(v66) = 0;
          HIDWORD(v66) = 0;
          LOBYTE(v67) = 1;
          v53 = v49 | (HIDWORD(v49) << 32);
          v54 = v8;
          v55 = HIDWORD(v51);
          v56 = v4 & 1;

          ResolvedGradientVector.add(_:scaledBy:)(&v53, -1.0);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);

          v36 = v66;
          v37 = BYTE8(v66);
          v38 = HIDWORD(v66);
          v39 = v67;
          LOBYTE(v66) = v67;
          *v0 = 0.0 - *&v3;
          *(v0 + 1) = 0.0 - *(&v3 + 1);
          *(v0 + 2) = v36;
          *(v0 + 24) = v37;
          *(v0 + 7) = v38;
          *(v0 + 32) = v39;
          *(v0 + 5) = 0.0 - v5;
          *(v0 + 6) = 0.0 - v6;
          *(v0 + 80) = 4;
        }
      }
    }

    return;
  }

  if (v92 <= 6u)
  {
    v52 = *(&v88 + 8);
    v50 = v88;
    if (v92 == 5)
    {
      v20 = v0[3];
      v74 = v0[2];
      v75 = v20;
      v76 = v0[4];
      v77 = *(v0 + 80);
      v21 = v0[1];
      v72 = *v0;
      v73 = v21;
      v84 = v20;
      v85 = v76;
      v82 = v21;
      v83 = v74;
      v86 = v77;
      v81 = v72;
      outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v81, &v66, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v72);
      *&v66 = MEMORY[0x1E69E7CC0];
      BYTE8(v66) = 0;
      HIDWORD(v66) = 0;
      LOBYTE(v67) = 1;
      v53 = v50.u32[0] | (v50.u32[1] << 32);
      v54 = v8;
      v55 = v52.i32[1];
      v56 = v4 & 1;

      ResolvedGradientVector.add(_:scaledBy:)(&v53, -1.0);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);

      v22 = v66;
      v23 = BYTE8(v66);
      v24 = HIDWORD(v66);
      v25 = v67;
      LOBYTE(v66) = v67;
      *v0 = 0.0 - *&v3;
      *(v0 + 1) = 0.0 - *(&v3 + 1);
      *(v0 + 2) = v22;
      *(v0 + 24) = v23;
      *(v0 + 7) = v24;
      *(v0 + 32) = v25;
      *(v0 + 5) = 0.0 - v5;
      *(v0 + 6) = 0.0 - v6;
      *(v0 + 80) = 5;
      return;
    }

    v40 = v0[3];
    v83 = v0[2];
    v84 = v40;
    v85 = v0[4];
    v86 = *(v0 + 80);
    v41 = v0[1];
    v81 = *v0;
    v82 = v41;

    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v81);
    if (one-time initialization token for legacyInterpolation != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v42 = 0;
    v43 = 0;
    if ((static Color.Resolved.legacyInterpolation & 1) == 0)
    {
      LOBYTE(v53) = 2;
      ResolvedGradient.ColorSpace.convertIn(_:)(&v66, 0.0, 0, 0.0, 0.0);
      v42 = vmul_f32(*&v66, 0x4300000043000000);
      v43 = vmul_f32(*(&v66 + 8), 0x4300000043000000);
    }

    v44 = MEMORY[0x1E69E7CC0];
    *&v66 = MEMORY[0x1E69E7CC0];

    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(&v66, v3);
    v53 = v44;

    _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v53, *(&v3 + 1));
    swift_bridgeObjectRelease_n();
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);
    v45 = vsub_f32(v42, v50);
    v46 = vsub_f32(v43, v52);
    v47 = v53;
    v48 = 0.0;
    if (*&v4 >= 0.0)
    {
      v48 = *&v4;
    }

    *v0 = v66;
    *(v0 + 1) = v47;
    *(v0 + 2) = v45;
    *(v0 + 3) = v46;
    *(v0 + 8) = v48;
    v35 = 6;
    goto LABEL_27;
  }

  if (v92 == 7)
  {
    v33 = v0[3];
    v83 = v0[2];
    v84 = v33;
    v85 = v0[4];
    v86 = *(v0 + 80);
    v34 = v0[1];
    v81 = *v0;
    v82 = v34;

    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v81);
    *&v72 = MEMORY[0x1E69E7CC0];
    *&v66 = v3;
    specialized static ShaderVectorData.-= infix(_:_:)(&v72, &v66);
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v87);
    *v0 = v72;
    v35 = 7;
LABEL_27:
    *(v0 + 80) = v35;
    return;
  }

  if (v92 == 8)
  {
    v15 = v88;
    v16 = v0[3];
    v83 = v0[2];
    v84 = v16;
    v85 = v0[4];
    v86 = *(v0 + 80);
    v17 = v0[1];
    v81 = *v0;
    v82 = v17;
    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v81);
    v78 = v3;
    v79 = v15;
    *v80 = v6;
    *&v80[8] = v93;
    *&v80[24] = v94;
    _ColorMatrix.negate()();
    v18 = *v80;
    v0[2] = __PAIR128__(*&v5, v4);
    v0[3] = v18;
    v0[4] = *&v80[16];
    v19 = v79;
    *v0 = v78;
    v0[1] = v19;
    *(v0 + 80) = 8;
  }
}

uint64_t static _ShapeStyle_Pack.Fill.AnimatableData.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, _OWORD *)@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = v6;
  v8 = *(a1 + 48);
  v21 = *(a1 + 64);
  v9 = *(a1 + 16);
  v18[0] = *a1;
  v10 = v18[0];
  v18[1] = v9;
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  v16[3] = *(a2 + 48);
  v16[4] = v12;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v16[2] = v11;
  *(a4 + 32) = v19;
  *(a4 + 48) = v8;
  *(a4 + 64) = *(a1 + 64);
  v22 = *(a1 + 80);
  v17 = *(a2 + 80);
  *(a4 + 80) = *(a1 + 80);
  *a4 = v10;
  *(a4 + 16) = v7;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v18, v15);
  return a3(a4, v16);
}

Swift::Void __swiftcall _ShapeStyle_Pack.Fill.AnimatableData.scale(by:)(Swift::Double by)
{
  if (by != 1.0)
  {
    v3 = *v1;
    v2 = *(v1 + 1);
    v4 = *(v1 + 2);
    v5 = *(v1 + 3);
    v6 = *(v1 + 8);
    v7 = *(v1 + 9);
    v9 = *(v1 + 5);
    v8 = *(v1 + 6);
    v10 = *(v1 + 80);
    v11 = HIDWORD(*v1);
    v12 = *(v1 + 56);
    v85 = *(v1 + 9);
    v13 = LODWORD(v4);
    v14 = HIDWORD(*&v4);
    v84 = v12;
    if (v10 <= 4)
    {
      if (v10 <= 1)
      {
        v32 = v1[3];
        v81 = v1[2];
        *v82 = v32;
        *&v82[16] = v1[4];
        v83 = *(v1 + 80);
        v33 = v1[1];
        v79 = *v1;
        v80 = v33;
        if (v10)
        {
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
          v45 = by;
          v46.i64[0] = __PAIR64__(LODWORD(v2), v11);
          v46.i64[1] = __PAIR64__(v13, HIDWORD(v2));
          *v1 = v45 * *&v3;
          *(v1 + 4) = vmulq_n_f32(v46, v45);
          *(v1 + 5) = *&v14 * v45;
          *(v1 + 80) = 1;
        }

        else
        {
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
          v34 = by;
          *v1 = v34 * *&v3;
          *(v1 + 1) = v34 * *&v11;
          *(v1 + 2) = v34 * *&v2;
          *(v1 + 3) = v34 * *(&v2 + 1);
          *(v1 + 4) = v13;
          *(v1 + 80) = 0;
        }

        return;
      }

      v51 = v4;
      if (v10 == 2)
      {
        v38 = v1[3];
        v68 = v1[2];
        v69 = v38;
        v70 = v1[4];
        v71 = *(v1 + 80);
        v39 = v1[1];
        v66 = *v1;
        v67 = v39;
        *&v79 = v3;
        *(&v79 + 1) = v2;
        *&v80 = v4;
        *(&v80 + 1) = v5;
        *&v81 = __PAIR64__(v7, v6);
        *(&v81 + 1) = v9;
        *v82 = v8;
        *&v82[8] = *(v1 + 56);
        *&v82[24] = *(v1 + 9);
        v83 = 2;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v56 = __PAIR64__(v7, v6);
        *(&v56 + 1) = v9;
        *&v54 = v3 * by;
        *(&v54 + 1) = v2 * by;
        *&v55 = v51 * by;
        *(&v55 + 1) = v5 * by;
        ResolvedGradientVector.scale(by:)(by);
        LOBYTE(v73) = LOBYTE(v8);
        v72[0] = v54;
        v41 = v74;
        v1[3] = v73;
        v1[4] = v41;
        *v1 = v54;
        v1[1] = v55;
        v1[2] = v56;
        *(v1 + 80) = 2;
        return;
      }

      v16 = v1[3];
      v68 = v1[2];
      v69 = v16;
      v70 = v1[4];
      v71 = *(v1 + 80);
      v17 = v1[1];
      v66 = *v1;
      v67 = v17;
      *&v79 = v3;
      *(&v79 + 1) = v2;
      *&v80 = v4;
      *(&v80 + 1) = v5;
      *&v81 = __PAIR64__(v7, v6);
      *(&v81 + 1) = v9;
      *v82 = v8;
      *&v82[8] = *(v1 + 56);
      *&v82[24] = *(v1 + 9);
      if (v10 == 3)
      {
        v18 = 3;
        v83 = 3;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v58 = v51;
        *(&v58 + 1) = v5;
        *&v59 = __PAIR64__(v7, v6);
        *&v57 = v3 * by;
        *(&v57 + 1) = v2 * by;
        v19 = v1;
        ResolvedGradientVector.scale(by:)(by);
        *(&v59 + 1) = v9 * by;
        *&v73 = v8 * by;
        v20 = v57;
        v21 = v58;
        v72[0] = v57;
        v22 = v73;
        v1[4] = v74;
        v23 = v59;
      }

      else
      {
        v18 = 4;
        v83 = 4;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v61 = v51;
        *(&v61 + 1) = v5;
        *&v62 = __PAIR64__(v7, v6);
        *&v60 = v3 * by;
        *(&v60 + 1) = v2 * by;
        v19 = v1;
        ResolvedGradientVector.scale(by:)(by);
        *(&v62 + 1) = v9 * by;
        *&v73 = v8 * by;
        v20 = v60;
        v21 = v61;
        v72[0] = v60;
        v22 = v73;
        v1[4] = v74;
        v23 = v62;
      }

LABEL_19:
      *v19 = v20;
      v19[1] = v21;
      v19[2] = v23;
      v19[3] = v22;
      *(v19 + 80) = v18;
      return;
    }

    if (v10 <= 6)
    {
      v53 = *&v4;
      if (v10 == 5)
      {
        v36 = v1[3];
        v68 = v1[2];
        v69 = v36;
        v70 = v1[4];
        v71 = *(v1 + 80);
        v37 = v1[1];
        v66 = *v1;
        v67 = v37;
        *&v79 = v3;
        *(&v79 + 1) = v2;
        *&v80 = v4;
        *(&v80 + 1) = v5;
        *&v81 = __PAIR64__(v7, v6);
        *(&v81 + 1) = v9;
        *v82 = v8;
        *&v82[8] = *(v1 + 56);
        *&v82[24] = *(v1 + 9);
        v18 = 5;
        v83 = 5;
        outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(&v79, v72, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v66);
        *&v64 = v53;
        *(&v64 + 1) = v5;
        *&v65 = __PAIR64__(v7, v6);
        *&v63 = v3 * by;
        *(&v63 + 1) = v2 * by;
        v19 = v1;
        ResolvedGradientVector.scale(by:)(by);
        *(&v65 + 1) = v9 * by;
        *&v73 = v8 * by;
        v20 = v63;
        v21 = v64;
        v72[0] = v63;
        v22 = v73;
        v1[4] = v74;
        v23 = v65;
        goto LABEL_19;
      }

      v47 = v1[3];
      v81 = v1[2];
      *v82 = v47;
      *&v82[16] = v1[4];
      v83 = *(v1 + 80);
      v48 = v1[1];
      v79 = *v1;
      v80 = v48;

      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
      *&v66 = v3;
      *(&v66 + 1) = v2;
      *&v67 = __PAIR64__(v14, v13);
      *(&v67 + 1) = v5;
      v27 = v1;
      specialized AnimatableArray.scale(by:)(by);
      specialized AnimatableArray.scale(by:)(by);
      v49 = by;
      v50.i64[0] = v53;
      *&v50.i64[1] = v5;
      *v1 = v66;
      v1[1] = vmulq_n_f32(v50, v49);
      *(v1 + 8) = v6;
      v30 = 6;
    }

    else if (v10 == 7)
    {
      v42 = v1[3];
      v81 = v1[2];
      *v82 = v42;
      *&v82[16] = v1[4];
      v83 = *(v1 + 80);
      v43 = v1[1];
      v79 = *v1;
      v80 = v43;

      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
      v27 = v1;
      ShaderVectorData.scale(by:)(by);
      *v1 = v3;
      v30 = 7;
    }

    else
    {
      if (v10 != 8)
      {
        return;
      }

      v24 = v1[3];
      v81 = v1[2];
      *v82 = v24;
      *&v82[16] = v1[4];
      v83 = *(v1 + 80);
      v25 = v1[1];
      v79 = *v1;
      v80 = v25;
      v52 = v4;
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v79);
      *&v75 = __PAIR64__(v11, LODWORD(v3));
      *(&v75 + 1) = v2;
      *&v76 = v52;
      *(&v76 + 1) = v5;
      *&v77 = __PAIR64__(v7, v6);
      *(&v77 + 1) = v9;
      *v78 = v8;
      *&v78[8] = v84;
      *&v78[24] = v85;
      v27 = v1;
      _ColorMatrix.scale(by:)(by);
      v28 = *v78;
      v1[2] = v77;
      v1[3] = v28;
      v1[4] = *&v78[16];
      v29 = v76;
      *v1 = v75;
      v1[1] = v29;
      v30 = 8;
    }

    *(v27 + 80) = v30;
  }
}

void _ShapeStyle_Pack.Fill.AnimatableData.magnitudeSquared.getter()
{
  v1 = v0[1];
  v31 = *v0;
  v32 = v1;
  v2 = v0[3];
  v33 = v0[2];
  v34 = v2;
  v35 = v0[4];
  v36 = *(v0 + 80);
  if (v36 > 4u)
  {
    if (v36 > 6u)
    {
      if (v36 == 7)
      {
        *&v22[0] = v31;
        ShaderVectorData.magnitudeSquared.getter();
      }

      else if (v36 == 8)
      {
        v22[0] = v31;
        v22[1] = v32;
        v22[2] = v33;
        v23 = v34;
        v24 = *(v0 + 56);
        v25 = *(v0 + 9);
        _ColorMatrix.magnitudeSquared.getter();
      }

      return;
    }

    if (v36 == 5)
    {
LABEL_11:
      v26 = v31;
      v27 = v32;
      v28 = BYTE8(v32);
      v29 = HIDWORD(v32);
      v30 = v33 & 1;
      ResolvedGradientVector.magnitudeSquared.getter();
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v31, v22);

      return;
    }

    v8 = *(v31 + 16);
    if (v8)
    {
      if (v8 > 7)
      {
        v9 = v8 & 0x7FFFFFFFFFFFFFF8;
        v11 = (v31 + 48);
        v10 = 0.0;
        v12 = v8 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v13 = vmulq_f32(v11[-1], v11[-1]);
          v14 = vmulq_f32(*v11, *v11);
          v15 = vcvt_hight_f64_f32(v13);
          v16 = vcvtq_f64_f32(*v13.f32);
          v17 = vcvt_hight_f64_f32(v14);
          v18 = vcvtq_f64_f32(*v14.f32);
          v10 = v10 + v16.f64[0] + v16.f64[1] + v15.f64[0] + v15.f64[1] + v18.f64[0] + v18.f64[1] + v17.f64[0] + v17.f64[1];
          v11 += 2;
          v12 -= 8;
        }

        while (v12);
        if (v8 == v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
      }

      v19 = v8 - v9;
      v20 = (v31 + 4 * v9 + 32);
      do
      {
        v21 = *v20++;
        v10 = v10 + (v21 * v21);
        --v19;
      }

      while (v19);
    }

LABEL_27:
    specialized AnimatableArray.magnitudeSquared.getter(*(&v31 + 1));
    return;
  }

  if (v36 > 1u)
  {
    if (v36 != 2)
    {
      goto LABEL_11;
    }

    v3 = *(v33 + 16);
    if (v3)
    {
      v4 = (v33 + 40);
      v5 = 0.0;
      do
      {
        v6 = vmul_f32(v4[-1], v4[-1]);
        v7 = vmul_f32(*v4, *v4);
        v5 = v5 + vadd_f32(vadd_f32(vadd_f32(v6, vdup_lane_s32(v6, 1)), v7), vdup_lane_s32(v7, 1)).f32[0];
        v4 += 6;
        --v3;
      }

      while (v3);
    }
  }
}

double protocol witness for static AdditiveArithmetic.zero.getter in conformance _ShapeStyle_Pack.Fill.AnimatableData@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 9;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _ShapeStyle_Pack.Fill.AnimatableData@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, _OWORD *)@<X4>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = v6;
  v8 = *(a1 + 48);
  v21 = *(a1 + 64);
  v9 = *(a1 + 16);
  v18[0] = *a1;
  v10 = v18[0];
  v18[1] = v9;
  v11 = *(a2 + 32);
  v12 = *(a2 + 64);
  v16[3] = *(a2 + 48);
  v16[4] = v12;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v16[2] = v11;
  *(a4 + 32) = v19;
  *(a4 + 48) = v8;
  *(a4 + 64) = *(a1 + 64);
  v22 = *(a1 + 80);
  v17 = *(a2 + 80);
  *(a4 + 80) = *(a1 + 80);
  *a4 = v10;
  *(a4 + 16) = v7;
  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v18, v15);
  return a3(a4, v16);
}

void (*_ShapeStyle_Pack.Fill.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x110uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 264) = v1;
  v5 = *(v1 + 16);
  *v3 = *v1;
  *(v3 + 16) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  *(v3 + 78) = *(v1 + 78);
  *(v3 + 48) = v7;
  *(v3 + 64) = v8;
  *(v3 + 32) = v6;
  v9 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v9;
  v13[0] = *(v1 + 64);
  *(v13 + 14) = *(v1 + 78);
  v10 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v10;
  outlined init with copy of _ShapeStyle_Pack.Fill(v3, v3 + 88);
  _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v12, v4 + 176);
  return _ShapeStyle_Pack.Fill.animatableData.modify;
}

void _ShapeStyle_Pack.Fill.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 264);
  if (a2)
  {
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v3);
    v4 = *(v2 + 224);
    *(v2 + 120) = *(v2 + 208);
    *(v2 + 136) = v4;
    *(v2 + 152) = *(v2 + 240);
    *(v2 + 168) = *(v2 + 256);
    v5 = *(v2 + 192);
    *(v2 + 88) = *(v2 + 176);
    *(v2 + 104) = v5;
  }

  else
  {
    *(v2 + 120) = *(v2 + 208);
    *(v2 + 136) = *(v2 + 224);
    *(v2 + 152) = *(v2 + 240);
    v6 = *(v2 + 192);
    *(v2 + 88) = *(v2 + 176);
    *(v2 + 104) = v6;
    *(v2 + 168) = *(v2 + 256);
    _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v3);
  }

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v2 + 88);

  free(v2);
}

double protocol witness for Animatable.animatableData.getter in conformance _ShapeStyle_Pack.Fill@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v8[3] = *(v1 + 48);
  v9[0] = v4;
  *(v9 + 14) = *(v1 + 78);
  v5 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v5;
  v8[2] = v3;
  outlined init with copy of _ShapeStyle_Pack.Fill(v8, v7);
  return _ShapeStyle_Pack.Fill.AnimatableData.init(_:)(v1, a1);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Fill(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  _ShapeStyle_Pack.Fill.AnimatableData.set(fill:)(v1);
  return outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v5);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Fill(uint64_t **a1))()
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
  v2[4] = _ShapeStyle_Pack.Fill.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void _ShapeStyle_Pack.Effect.animatableData.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  v4 = *(v1 + 56);
  if (v3)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v8);
    v6 = v8[0];
    v7 = v8[1];
    v5 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 40) = v5;
  *(a1 + 48) = v3 & 1;
}

void key path getter for _ShapeStyle_Pack.Effect.animatableData : _ShapeStyle_Pack.Effect(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 53);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v8);
    v6 = v8[0];
    v7 = v8[1];
    v5 = v9;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  *(a2 + 40) = v5;
  *(a2 + 48) = v3 & 1;
}

void key path setter for _ShapeStyle_Pack.Effect.animatableData : _ShapeStyle_Pack.Effect(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *(a2 + 14) = *a1;
  if (*(a2 + 53) & 1) != 0 || (v7)
  {
    v8 = 1;
    LOBYTE(v12[0]) = 1;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 45) = 0;
  }

  else
  {
    v12[0] = v4;
    v12[1] = v3;
    v13 = v5;
    v14 = v6;
    v9 = *a2;
    v10 = a2[1];
    *v11 = a2[2];
    *&v11[13] = *(a2 + 45);
    ResolvedShadowStyle.animatableData.setter(v12);
    v8 = 0;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = *v11;
    *(a2 + 45) = *&v11[13];
  }

  *(a2 + 53) = v8;
}

void _ShapeStyle_Pack.Effect.animatableData.setter(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(v1 + 14) = *a1;
  if (*(v1 + 53) & 1) != 0 || (v6)
  {
    v7 = 1;
    LOBYTE(v11[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v11[0] = v3;
    v11[1] = v2;
    v12 = v4;
    v13 = v5;
    v8 = *v1;
    v9 = v1[1];
    *v10 = v1[2];
    *&v10[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v11);
    v7 = 0;
    *v1 = v8;
    v1[1] = v9;
    v1[2] = *v10;
    *(v1 + 45) = *&v10[13];
  }

  *(v1 + 53) = v7;
}

void _ShapeStyle_Pack.Effect.Kind.animatableData.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3 & 1;
}

void _ShapeStyle_Pack.Effect.Kind.animatableData.setter(uint64_t a1)
{
  if (*(v1 + 53) & 1) != 0 || (*(a1 + 40))
  {
    v5 = 1;
    LOBYTE(v9[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 8);
    v4 = HIDWORD(*a1);
    v9[0] = *a1;
    v9[1] = v4;
    v10 = v3;
    v11 = *(a1 + 16);
    v12 = v2;
    v6 = *v1;
    v7 = v1[1];
    *v8 = v1[2];
    *&v8[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v9);
    v5 = 0;
    *v1 = v6;
    v1[1] = v7;
    v1[2] = *v8;
    *(v1 + 45) = *&v8[13];
  }

  *(v1 + 53) = v5;
}

void (*_ShapeStyle_Pack.Effect.animatableData.modify(uint64_t *a1))(_DWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 176) = v1;
  v5 = *(v1 + 53);
  v6 = *(v1 + 56);
  if (v5)
  {
    v7 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v3 + 136);
    v8 = *(v4 + 136);
    v9 = *(v4 + 152);
    v7 = *(v4 + 168);
  }

  *v4 = v6;
  *(v4 + 8) = v8;
  *(v4 + 24) = v9;
  *(v4 + 40) = v7;
  *(v4 + 48) = v5 & 1;
  return _ShapeStyle_Pack.Effect.animatableData.modify;
}

void _ShapeStyle_Pack.Effect.animatableData.modify(_DWORD **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 22);
  v5 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v7 = *(*a1 + 3);
  v6 = *(*a1 + 4);
  v8 = *(*a1 + 5);
  v9 = *(*a1 + 48);
  *(v3 + 56) = **a1;
  v10 = *(v3 + 53) | v9;
  v11 = v2[22];
  if ((a2 & 1) == 0)
  {
    if ((v10 & 1) == 0)
    {
      v2[12] = v5;
      v2[13] = v4;
      v2[14] = v7;
      v2[15] = v6;
      v2[16] = v8;
      v17 = *v11;
      v18 = v11[1];
      *v19 = v11[2];
      *&v19[13] = *(v11 + 45);
      ResolvedShadowStyle.animatableData.setter((v2 + 12));
      v12 = 0;
      *v11 = v17;
      v11[1] = v18;
      v11[2] = *v19;
      v13 = *&v19[13];
      goto LABEL_7;
    }

LABEL_5:
    v12 = 1;
    *v11 = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    *(v11 + 45) = 0;
    goto LABEL_8;
  }

  if (v10)
  {
    goto LABEL_5;
  }

  v2[7] = v5;
  v2[8] = v4;
  v2[9] = v7;
  v2[10] = v6;
  v2[11] = v8;
  v14 = *v11;
  v15 = v11[1];
  *v16 = v11[2];
  *&v16[13] = *(v11 + 45);
  ResolvedShadowStyle.animatableData.setter((v2 + 7));
  v12 = 0;
  *v11 = v14;
  v11[1] = v15;
  v11[2] = *v16;
  v13 = *&v16[13];
LABEL_7:
  *(v11 + 45) = v13;
LABEL_8:
  *(v2[22] + 53) = v12;

  free(v2);
}

void protocol witness for Animatable.animatableData.getter in conformance _ShapeStyle_Pack.Effect(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  v4 = *(v1 + 56);
  if (v3)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v8);
    v6 = v8[0];
    v7 = v8[1];
    v5 = v9;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 40) = v5;
  *(a1 + 48) = v3 & 1;
}

void protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Effect(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *(v1 + 14) = *a1;
  if (*(v1 + 53) & 1) != 0 || (v6)
  {
    v7 = 1;
    LOBYTE(v11[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v11[0] = v3;
    v11[1] = v2;
    v12 = v4;
    v13 = v5;
    v8 = *v1;
    v9 = v1[1];
    *v10 = v1[2];
    *&v10[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v11);
    v7 = 0;
    *v1 = v8;
    v1[1] = v9;
    v1[2] = *v10;
    *(v1 + 45) = *&v10[13];
  }

  *(v1 + 53) = v7;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Effect(uint64_t **a1))()
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
  v2[4] = _ShapeStyle_Pack.Effect.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void _ShapeStyle_Pack.Effect.Kind.AnimatableData.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3 & 1;
}

void _ShapeStyle_Pack.Effect.Kind.AnimatableData.set(effect:)(__int128 *a1)
{
  if (*(a1 + 53) & 1) != 0 || (*(v1 + 40))
  {
    v6 = 1;
    LOBYTE(v10[0]) = 1;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *(a1 + 45) = 0;
  }

  else
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 8);
    v5 = HIDWORD(*v1);
    v10[0] = *v1;
    v10[1] = v5;
    v11 = v4;
    v12 = *(v1 + 16);
    v13 = v3;
    v7 = *a1;
    v8 = a1[1];
    *v9 = a1[2];
    *&v9[13] = *(a1 + 45);
    ResolvedShadowStyle.animatableData.setter(v10);
    v6 = 0;
    *a1 = v7;
    a1[1] = v8;
    a1[2] = *v9;
    *(a1 + 45) = *&v9[13];
  }

  *(a1 + 53) = v6;
}

uint64_t static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+ infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vaddq_f64(*(result + 16), v7);
      v5 = *(result + 32) + v5;
      v8 = vadd_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t static _ShapeStyle_Pack.Effect.Kind.AnimatableData.- infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vsubq_f64(*(result + 16), v7);
      v5 = *(result + 32) - v5;
      v8 = vsub_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

Swift::Void __swiftcall _ShapeStyle_Pack.Effect.Kind.AnimatableData.scale(by:)(Swift::Double by)
{
  if (by != 1.0 && (*(v1 + 40) & 1) == 0)
  {
    v2 = by;
    v3 = vmul_n_f32(vmovn_s64(*v1), v2);
    v4 = *(v1 + 32);
    v5.i64[0] = v3.u32[0];
    v5.i64[1] = v3.u32[1];
    v6 = vmulq_n_f64(*(v1 + 16), by);
    *v1 = vorrq_s8(vshll_n_s32(vmul_n_f32(vshrn_n_s64(*v1, 0x20uLL), v2), 0x20uLL), v5);
    *(v1 + 16) = v6;
    *(v1 + 32) = v4 * by;
    *(v1 + 40) = 0;
  }
}

float64_t _ShapeStyle_Pack.Effect.Kind.AnimatableData.magnitudeSquared.getter()
{
  result = 0.0;
  if ((*(v0 + 40) & 1) == 0)
  {
    v2 = vmulq_f64(*(v0 + 16), *(v0 + 16));
    return v2.f64[0] + *(v0 + 32) * *(v0 + 32) + v2.f64[1] + (*(v0 + 8) * *(v0 + 8)) + (*(v0 + 12) * *(v0 + 12)) + (*(v0 + 4) * *(v0 + 4)) + (*v0 * *v0);
  }

  return result;
}

double protocol witness for static AdditiveArithmetic.zero.getter in conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vaddq_f64(*(result + 16), v7);
      v5 = *(result + 32) + v5;
      v8 = vadd_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  v4 = *result;
  if (*(a2 + 40))
  {
    v5 = *(result + 32);
    v6 = *result;
    v7 = *(result + 16);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 16);
    v5 = *(a2 + 32);
    v3 = 0;
    if ((*(result + 40) & 1) == 0)
    {
      v7 = vsubq_f64(*(result + 16), v7);
      v5 = *(result + 32) - v5;
      v8 = vsub_f32(vmovn_s64(v4), vmovn_s64(v6));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v6 = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(v6, 0x20uLL)), 0x20uLL), v9);
    }
  }

  *a3 = v6;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v3;
  return result;
}

void key path getter for _ShapeStyle_Pack.Effect.Kind.animatableData : _ShapeStyle_Pack.Effect.Kind(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3 & 1;
}

void key path setter for _ShapeStyle_Pack.Effect.Kind.animatableData : _ShapeStyle_Pack.Effect.Kind(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 53) & 1) != 0 || (*(a1 + 40))
  {
    v6 = 1;
    LOBYTE(v10[0]) = 1;
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *(a2 + 45) = 0;
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 8);
    v5 = HIDWORD(*a1);
    v10[0] = *a1;
    v10[1] = v5;
    v11 = v4;
    v12 = *(a1 + 16);
    v13 = v3;
    v7 = *a2;
    v8 = a2[1];
    *v9 = a2[2];
    *&v9[13] = *(a2 + 45);
    ResolvedShadowStyle.animatableData.setter(v10);
    v6 = 0;
    *a2 = v7;
    a2[1] = v8;
    a2[2] = *v9;
    *(a2 + 45) = *&v9[13];
  }

  *(a2 + 53) = v6;
}

void (*_ShapeStyle_Pack.Effect.Kind.animatableData.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *(v1 + 53);
  if (v5)
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v3 + 128);
    v7 = *(v4 + 128);
    v8 = *(v4 + 144);
    v6 = *(v4 + 160);
  }

  *v4 = v7;
  *(v4 + 16) = v8;
  *(v4 + 32) = v6;
  *(v4 + 40) = v5 & 1;
  return _ShapeStyle_Pack.Effect.Kind.animatableData.modify;
}

void _ShapeStyle_Pack.Effect.Kind.animatableData.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 21);
  if ((a2 & 1) == 0)
  {
    if (((*(v3 + 53) | (*a1)[40]) & 1) == 0)
    {
      v9 = *(v2 + 4);
      v10 = *(v2 + 1);
      v11 = HIDWORD(*v2);
      *(v2 + 22) = *v2;
      *(v2 + 23) = v11;
      *(v2 + 12) = v10;
      *(v2 + 104) = *(v2 + 1);
      *(v2 + 15) = v9;
      v15 = *v3;
      v16 = v3[1];
      *v17 = v3[2];
      *&v17[13] = *(v3 + 45);
      ResolvedShadowStyle.animatableData.setter((v2 + 88));
      v7 = 0;
      *v3 = v15;
      v3[1] = v16;
      v3[2] = *v17;
      v8 = *&v17[13];
      goto LABEL_7;
    }

LABEL_5:
    v7 = 1;
    *v3 = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    *(v3 + 45) = 0;
    goto LABEL_8;
  }

  if ((*(v3 + 53) | (*a1)[40]))
  {
    goto LABEL_5;
  }

  v4 = *(v2 + 4);
  v5 = *(v2 + 1);
  v6 = HIDWORD(*v2);
  *(v2 + 12) = *v2;
  *(v2 + 13) = v6;
  *(v2 + 7) = v5;
  *(v2 + 4) = *(v2 + 1);
  *(v2 + 10) = v4;
  v12 = *v3;
  v13 = v3[1];
  *v14 = v3[2];
  *&v14[13] = *(v3 + 45);
  ResolvedShadowStyle.animatableData.setter((v2 + 48));
  v7 = 0;
  *v3 = v12;
  v3[1] = v13;
  v3[2] = *v14;
  v8 = *&v14[13];
LABEL_7:
  *(v3 + 45) = v8;
LABEL_8:
  *(*(v2 + 21) + 53) = v7;

  free(v2);
}

void protocol witness for Animatable.animatableData.getter in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t a1@<X8>)
{
  v3 = *(v1 + 53);
  if (v3)
  {
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    ResolvedShadowStyle.animatableData.getter(v7);
    v5 = v7[0];
    v6 = v7[1];
    v4 = v8;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3 & 1;
}

void protocol witness for Animatable.animatableData.setter in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t a1)
{
  if (*(v1 + 53) & 1) != 0 || (*(a1 + 40))
  {
    v5 = 1;
    LOBYTE(v9[0]) = 1;
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = 0u;
    *(v1 + 45) = 0;
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 8);
    v4 = HIDWORD(*a1);
    v9[0] = *a1;
    v9[1] = v4;
    v10 = v3;
    v11 = *(a1 + 16);
    v12 = v2;
    v6 = *v1;
    v7 = v1[1];
    *v8 = v1[2];
    *&v8[13] = *(v1 + 45);
    ResolvedShadowStyle.animatableData.setter(v9);
    v5 = 0;
    *v1 = v6;
    v1[1] = v7;
    v1[2] = *v8;
    *(v1 + 45) = *&v8[13];
  }

  *(v1 + 53) = v5;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _ShapeStyle_Pack.Effect.Kind(uint64_t **a1))()
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
  v2[4] = _ShapeStyle_Pack.Effect.Kind.animatableData.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t key path setter for _ShapeStyle_Shape.stylePack : _ShapeStyle_Shape(uint64_t *a1)
{
  v1 = *a1;

  v2 = _ShapeStyle_Shape.stylePack.modify(v5);
  *v3 = v1;

  return v2(v5, 0);
}

uint64_t _ShapeStyle_Shape.stylePack.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  if (v3 == 1)
  {
    outlined consume of _ShapeStyle_Shape.Result(v4, 1u);
    v4 = 0;
    *(v1 + 32) = 0;
    LOBYTE(v3) = 5;
    *(v1 + 40) = 5;
  }

  result = outlined consume of _ShapeStyle_Shape.Result(v4, v3);
  *(v1 + 32) = v2;
  *(v1 + 40) = 1;
  return result;
}

float ResolvedMulticolorStyle.accentColor.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 ResolvedMulticolorStyle.accentColor.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u32[0] = a1[1].n128_u32[0];
  return result;
}

void *ResolvedMulticolorStyle.bundle.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t ResolvedMulticolorStyle.environment.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[20];
  v4 = v1[21];
  v5 = v1[22];
  EnvironmentValues.init()(a1);
  v6 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019ExplicitColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(a1, v3);

  v7 = a1[1];
  if (v7)
  {
    v8 = *a1;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019ExplicitColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v6, *a1);
  }

  else
  {

    v8 = *a1;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(a1, v4);

  if (v7)
  {
    v9 = *a1;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019ColorSchemeContrastK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v8, *a1);
  }

  else
  {

    v9 = *a1;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(a1, v5);

  if (v7)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayGamutK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v9, *a1);
  }
}

unint64_t ResolvedMulticolorStyle.resolveHDR(name:proposed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    return ResolvedMulticolorStyle.resolveHDR(name:)(a1, a2);
  }

  else
  {
    return *a3;
  }
}

void specialized AnimatableArray.scale(by:)(double a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    *v1 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return;
    }

    v6 = a1;
    if (v3 >= 8)
    {
      v7 = v3 & 0x7FFFFFFFFFFFFFF8;
      v8 = (v2 + 48);
      v9 = v3 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v10 = vmulq_n_f32(*v8, v6);
        v8[-1] = vmulq_n_f32(v8[-1], v6);
        *v8 = v10;
        v8 += 2;
        v9 -= 8;
      }

      while (v9);
      if (v3 == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = v3 - v7;
    v12 = &v2[4 * v7 + 32];
    do
    {
      *v12 = *v12 * v6;
      ++v12;
      --v11;
    }

    while (v11);
LABEL_12:
    *v1 = v2;
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    *v1 = v2;
    if (v3 > *(v2 + 2))
    {
      __break(1u);
      return;
    }

    v6 = a1;
    if (v3 >= 0xC && ((v7 = (v2 + 32), v8 = 16 * (v3 - 1), &v2[v8 + 32] >= v2 + 32) ? (v9 = &v2[v8 + 36] >= v2 + 36) : (v9 = 0), v9 ? (v10 = &v2[v8 + 44] >= v2 + 44) : (v10 = 0), v10 ? (v11 = &v2[v8 + 40] >= v2 + 40) : (v11 = 0), v11 ? (v12 = (v3 - 1) >> 60 == 0) : (v12 = 0), v12))
    {
      v13 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      v14 = v3 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v15 = vmulq_n_f32(v7[3], v6);
        v16 = vmulq_n_f32(v7[2], v6);
        v17 = vmulq_n_f32(v7[1], v6);
        *v7 = vmulq_n_f32(*v7, v6);
        v7[1] = v17;
        v7[2] = v16;
        v7[3] = v15;
        v7 += 4;
        v14 -= 4;
      }

      while (v14);
      if (v3 == v13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v13 = 0;
    }

    v18 = v3 - v13;
    v19 = &v2[16 * v13 + 32];
    do
    {
      *v19 = vmulq_n_f32(*v19, v6);
      ++v19;
      --v18;
    }

    while (v18);
LABEL_27:
    *v1 = v2;
  }
}

double specialized AnimatableArray.magnitudeSquared.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  if (v1 <= 7)
  {
    v2 = 0;
    result = 0.0;
LABEL_8:
    v13 = v1 - v2;
    v14 = (a1 + 16 * v2 + 40);
    do
    {
      v15 = (v14[-1].f32[0] * v14[-1].f32[0]);
      v16 = (v14[-1].f32[1] * v14[-1].f32[1]);
      v17 = *v14;
      v14 += 2;
      result = result + vaddvq_f64(vcvtq_f64_f32(vmul_f32(v17, v17))) + v16 + v15;
      --v13;
    }

    while (v13);
    return result;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFF8;
  v4 = (a1 + 96);
  result = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v6 = v4 - 16;
    v18 = vld4q_f32(v6);
    v19 = vld4q_f32(v4);
    v7 = vmulq_f32(v18.val[0], v18.val[0]);
    v8 = vmulq_f32(v19.val[0], v19.val[0]);
    v9 = vmulq_f32(v18.val[1], v18.val[1]);
    v10 = vmulq_f32(v19.val[1], v19.val[1]);
    v11 = vmulq_f32(v18.val[2], v18.val[2]);
    v12 = vmulq_f32(v19.val[2], v19.val[2]);
    v18.val[0] = vmulq_f32(v18.val[3], v18.val[3]);
    v18.val[1] = vmulq_f32(v19.val[3], v19.val[3]);
    v18.val[2] = vcvtq_f64_f32(*v18.val[0].f32);
    v18.val[3] = vcvtq_f64_f32(*v18.val[1].f32);
    v18.val[0] = vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v11), vcvt_hight_f64_f32(v18.val[0])), vcvt_hight_f64_f32(v9)), vcvt_hight_f64_f32(v7));
    v18.val[2] = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v11.f32), v18.val[2]), vcvtq_f64_f32(*v9.f32)), vcvtq_f64_f32(*v7.f32));
    v18.val[1] = vaddq_f64(vaddq_f64(vaddq_f64(vcvt_hight_f64_f32(v12), vcvt_hight_f64_f32(v18.val[1])), vcvt_hight_f64_f32(v10)), vcvt_hight_f64_f32(v8));
    v18.val[3] = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_f32(*v12.f32), v18.val[3]), vcvtq_f64_f32(*v10.f32)), vcvtq_f64_f32(*v8.f32));
    result = result + *v18.val[2].i64 + *&v18.val[2].i64[1] + *v18.val[0].i64 + *&v18.val[0].i64[1] + *v18.val[3].i64 + *&v18.val[3].i64[1] + *v18.val[1].i64 + *&v18.val[1].i64[1];
    v4 += 32;
    v5 -= 8;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t specialized static ResolvedMulticolorStyle.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) == 0)
  {
    return 0;
  }

  v3 = a1[1].u8[4];
  v4 = a1[1].u8[5];
  v5 = a1[1].u8[6];
  v6 = a1[1].i64[1];
  v7 = a2[1].i64[1];
  v8 = a1[1].f32[0];
  result = 0;
  if (v8 == a2[1].f32[0] && ((v3 ^ a2[1].u8[4]) & 1) == 0 && ((v4 ^ a2[1].u8[5]) & 1) == 0 && ((v5 ^ a2[1].u8[6]) & 1) == 0)
  {
    if (v6)
    {
      if (v7)
      {
        type metadata accessor for NSBundle();
        v9 = v7;
        v10 = v6;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL specialized static _ShapeStyle_Pack.Effect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a2 + 53);
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  v8 = *(a2 + 72);
  if ((*(a1 + 53) & 1) == 0)
  {
    if (*(a2 + 53))
    {
      return 0;
    }

    v9 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v9;
    v17[0] = *(a1 + 32);
    *(v17 + 13) = *(a1 + 45);
    v10 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v10;
    v15[0] = *(a2 + 32);
    *(v15 + 13) = *(a2 + 45);
    v5 = specialized static ResolvedShadowStyle.== infix(_:_:)(v16, v14);
  }

  result = 0;
  if ((v5 & 1) != 0 && v2 == v6)
  {
    if (v4 == 255)
    {
      if (v8 == 255)
      {
        outlined copy of GraphicsBlendMode?(v3, 255);
        outlined copy of GraphicsBlendMode?(v7, 255);
        outlined consume of GraphicsBlendMode?(v3, 255);
        return 1;
      }
    }

    else if (v8 != 255)
    {
      if (v4)
      {
        if (v8)
        {
          outlined copy of GraphicsBlendMode?(v3, v4);
          outlined copy of GraphicsBlendMode?(v7, v8);
          outlined copy of GraphicsBlendMode?(v3, v4);
          outlined consume of GraphicsBlendMode(v3, 1);
          outlined consume of GraphicsBlendMode(v7, 1);
          outlined consume of GraphicsBlendMode?(v3, v4);
          result = 1;
          if (v3 == v7)
          {
            return result;
          }

          return 0;
        }

        swift_unknownObjectRetain();
      }

      else if ((v8 & 1) == 0)
      {
        outlined copy of GraphicsBlendMode?(v3, v4);
        outlined copy of GraphicsBlendMode?(v7, v8);
        outlined consume of GraphicsBlendMode(v3, 0);
        outlined consume of GraphicsBlendMode(v7, 0);
        outlined consume of GraphicsBlendMode?(v3, v4);
        return v3 == v7;
      }

      outlined copy of GraphicsBlendMode?(v3, v4);
      outlined copy of GraphicsBlendMode?(v7, v8);
      outlined consume of GraphicsBlendMode(v3, v4 & 1);
      outlined consume of GraphicsBlendMode(v7, v8 & 1);
      v12 = v3;
      v13 = v4;
LABEL_20:
      outlined consume of GraphicsBlendMode?(v12, v13);
      return 0;
    }

    outlined copy of GraphicsBlendMode?(v3, v4);
    outlined copy of GraphicsBlendMode?(v7, v8);
    outlined consume of GraphicsBlendMode?(v3, v4);
    v12 = v7;
    v13 = v8;
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    return (*(a2 + 40) & 1) != 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v4 = COERCE_FLOAT(HIDWORD(*a1)) == COERCE_FLOAT(HIDWORD(*a2)) && COERCE_FLOAT(*a1) == COERCE_FLOAT(*a2);
  v5 = v4 & (COERCE_FLOAT(*(a1 + 8)) == COERCE_FLOAT(*(a2 + 8)));
  if (COERCE_FLOAT(HIDWORD(*(a1 + 8))) != COERCE_FLOAT(HIDWORD(*(a2 + 8))))
  {
    v5 = 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v5 = 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    v5 = 0;
  }

  if (*(a1 + 32) == *(a2 + 32))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void specialized static _ShapeStyle_Pack.Fill.AnimatableData.+= infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v3 = a2[1];
  v167 = a2[2];
  v168 = v2;
  v4 = a2[3];
  v169 = a2[4];
  v5 = a2[1];
  v165 = *a2;
  v166 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v173 = *(a1 + 32);
  v174 = v7;
  v8 = *(a1 + 48);
  v175 = *(a1 + 64);
  v9 = *(a1 + 16);
  v171 = *a1;
  v172 = v9;
  v177[0] = v171;
  v177[1] = v6;
  v10 = *(a1 + 64);
  v177[3] = v8;
  v177[4] = v10;
  v177[2] = v173;
  v181 = v167;
  v182 = v4;
  v183 = a2[4];
  v180 = v3;
  v170 = *(a2 + 80);
  v176 = *(a1 + 80);
  v178 = *(a1 + 80);
  v184 = *(a2 + 80);
  v179 = v165;
  if (v170 == 9)
  {
    v11 = vorrq_s8(vorrq_s8(v166, v168), vorrq_s8(v167, v169));
    if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *(&v165 + 1) | v165))
    {
      v42 = &v171;
LABEL_40:
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v42, &v157);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      return;
    }
  }

  v12 = v172;
  LODWORD(v13) = v173;
  v14 = DWORD1(v173);
  v15 = *(&v173 + 1);
  v16 = *&v174;
  v163 = *(a1 + 56);
  v164 = *(a1 + 72);
  v17 = v172;
  v18 = DWORD1(v172);
  v19 = *(&v172 + 1);
  v20 = *&v172;
  if (v176 > 4u)
  {
    if (v176 > 6u)
    {
      if (v176 != 7)
      {
        if (v176 != 8)
        {
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v157);
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
          v95 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v95;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v96 = *(a1 + 16);
          v157 = *a1;
          v158 = v96;
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v97 = v168;
          *(a1 + 32) = v167;
          *(a1 + 48) = v97;
          *(a1 + 64) = v169;
          *(a1 + 80) = v170;
          v98 = v166;
          *a1 = v165;
          *(a1 + 16) = v98;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
          return;
        }

        if (v170 == 8)
        {
          v129 = v171;
          v35 = a2[3];
          *&v152.m24 = a2[2];
          *&v152.m33 = v35;
          *&v152.m42 = a2[4];
          v36 = a2[1];
          *&v152.m11 = *a2;
          *&v152.m15 = v36;
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
          v38 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v38;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v39 = *(a1 + 16);
          v157 = *a1;
          v158 = v39;
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v153 = v129;
          v154 = v12;
          *&v155 = __PAIR64__(v14, LODWORD(v13));
          *(&v155 + 1) = v15;
          *v156 = v16;
          *&v156[8] = v163;
          *&v156[24] = v164;
          _ColorMatrix.add(_:)(&v152);
          v40 = *v156;
          *(a1 + 32) = v155;
          *(a1 + 48) = v40;
          *(a1 + 64) = *&v156[16];
          v41 = v154;
          *a1 = v153;
          *(a1 + 16) = v41;
          *(a1 + 80) = 8;
          return;
        }

        goto LABEL_39;
      }

      if (v170 == 7)
      {
        v75 = v165;
        v76 = v171.i64[0];
        v77 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v77;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v78 = *(a1 + 16);
        v157 = *a1;
        v158 = v78;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v145.i64[0] = v76;
        v151 = v75;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        specialized static ShaderVectorData.+= infix(_:_:)(&v145, &v151);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *a1 = v145.i64[0];
        *(a1 + 80) = 7;
        return;
      }

      goto LABEL_38;
    }

    if (v176 == 5)
    {
      if (v170 == 5)
      {
        v47 = v167.i8[0];
        v48 = v166.i32[3];
        v49 = v166.i8[8];
        v50 = v166.i64[0];
        v51 = *v168.i64;
        v52 = *&v167.i64[1];
        v131 = v171;
        v53 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v53;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v54 = *(a1 + 16);
        v157 = *a1;
        v158 = v54;
        v124 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v56 = vextq_s8(v131, v131, 8uLL).u64[0];
        v57 = vshll_n_s32(vzip2_s32(*v131.i8, v56), 0x20uLL);
        v58 = vzip1_s32(*v131.i8, v56);
        v59.i64[0] = v58.u32[0];
        v59.i64[1] = v58.u32[1];
        *&v144 = __PAIR64__(v14, LODWORD(v13));
        v143 = vaddq_f64(v124, vorrq_s8(v57, v59));
        v145.i64[0] = v50;
        v145.i8[8] = v49;
        v145.i32[3] = v48;
        LOBYTE(v146) = v47 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v144 + 1) = v15 + v52;
        *&v152.m33 = v16 + v51;
        v60 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v60;
        *a1 = v143;
        *(a1 + 16) = v12;
        *(a1 + 32) = v144;
        *(a1 + 80) = 5;
        return;
      }
    }

    else if (v170 == 6)
    {
      v104 = DWORD2(v172);
      v105 = *v167.i32;
      v106 = HIDWORD(*(&v172 + 1));
      v121 = *(&v172 + 1);
      v107 = *&v166.i32[3];
      v108 = *&v166.i32[2];
      v109 = *&v166.i32[1];
      v110 = *v166.i32;
      v111 = *(&v165 + 1);
      v112 = v165;
      v135 = v171;
      v113 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v113;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v114 = *(a1 + 16);
      v157 = *a1;
      v158 = v114;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v116 = vextq_s8(v135, v135, 8uLL).u64[0];
      v117 = vshll_n_s32(vzip2_s32(*v135.i8, v116), 0x20uLL);
      v118 = vzip1_s32(*v135.i8, v116);
      v119.i64[0] = v118.u32[0];
      v119.i64[1] = v118.u32[1];
      v145 = vorrq_s8(v117, v119);
      v146 = v17;
      v147 = v18;
      v148 = v104;
      v149 = v106;
      v150 = v13;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZSf_Tt1B5(&v145, v112);
      _s7SwiftUI15AnimatableArrayV2peoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v145.i64[1], v111);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *a1 = v145;
      if (v13 > v105)
      {
        v120 = v13;
      }

      else
      {
        v120 = v105;
      }

      *(a1 + 16) = v110 + v20;
      *(a1 + 20) = v109 + v19;
      *(a1 + 24) = v108 + *&v121;
      *(a1 + 28) = v107 + *(&v121 + 1);
      *(a1 + 32) = v120;
      *(a1 + 80) = 6;
      return;
    }

LABEL_38:
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v157);
    goto LABEL_39;
  }

  if (v176 > 1u)
  {
    if (v176 == 2)
    {
      if (v170 == 2)
      {
        v61 = v168.i8[0];
        v62 = v167.i32[3];
        v63 = v167.i8[8];
        v64 = v167.i64[0];
        v65 = *&v166.i64[1];
        v66 = *v166.i64;
        v132 = v171;
        v67 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v67;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v68 = *(a1 + 16);
        v157 = *a1;
        v158 = v68;
        v125 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v70 = vextq_s8(v132, v132, 8uLL).u64[0];
        v71 = vshll_n_s32(vzip2_s32(*v132.i8, v70), 0x20uLL);
        v72 = vzip1_s32(*v132.i8, v70);
        v73.i64[0] = v72.u32[0];
        v73.i64[1] = v72.u32[1];
        *&v138 = __PAIR64__(v14, LODWORD(v13));
        *(&v138 + 1) = v15;
        v136 = vaddq_f64(v125, vorrq_s8(v71, v73));
        *&v137 = *&v12 + v66;
        *(&v137 + 1) = *(&v12 + 1) + v65;
        v145.i64[0] = v64;
        v145.i8[8] = v63;
        v145.i32[3] = v62;
        LOBYTE(v146) = v61 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        LOBYTE(v152.m33) = LOBYTE(v16);
        v74 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v74;
        *a1 = v136;
        *(a1 + 16) = v137;
        *(a1 + 32) = v138;
        *(a1 + 80) = 2;
        return;
      }
    }

    else if (v176 == 3)
    {
      if (v170 == 3)
      {
        v21 = v167.i8[0];
        v22 = v166.i32[3];
        v23 = v166.i8[8];
        v24 = v166.i64[0];
        v25 = *v168.i64;
        v26 = *&v167.i64[1];
        v128 = v171;
        v27 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v27;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v28 = *(a1 + 16);
        v157 = *a1;
        v158 = v28;
        v122 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v30 = vextq_s8(v128, v128, 8uLL).u64[0];
        v31 = vshll_n_s32(vzip2_s32(*v128.i8, v30), 0x20uLL);
        v32 = vzip1_s32(*v128.i8, v30);
        v33.i64[0] = v32.u32[0];
        v33.i64[1] = v32.u32[1];
        *&v140 = __PAIR64__(v14, LODWORD(v13));
        v139 = vaddq_f64(v122, vorrq_s8(v31, v33));
        v145.i64[0] = v24;
        v145.i8[8] = v23;
        v145.i32[3] = v22;
        LOBYTE(v146) = v21 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v140 + 1) = v15 + v26;
        *&v152.m33 = v16 + v25;
        v34 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v34;
        *a1 = v139;
        *(a1 + 16) = v12;
        *(a1 + 32) = v140;
        *(a1 + 80) = 3;
        return;
      }
    }

    else if (v170 == 4)
    {
      v80 = v167.i8[0];
      v81 = v166.i32[3];
      v82 = v166.i8[8];
      v83 = v166.i64[0];
      v84 = *v168.i64;
      v85 = *&v167.i64[1];
      v133 = v171;
      v86 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v86;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v87 = *(a1 + 16);
      v157 = *a1;
      v158 = v87;
      v126 = v165;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v89 = vextq_s8(v133, v133, 8uLL).u64[0];
      v90 = vshll_n_s32(vzip2_s32(*v133.i8, v89), 0x20uLL);
      v91 = vzip1_s32(*v133.i8, v89);
      v92.i64[0] = v91.u32[0];
      v92.i64[1] = v91.u32[1];
      *&v142 = __PAIR64__(v14, LODWORD(v13));
      v141 = vaddq_f64(v126, vorrq_s8(v90, v92));
      v145.i64[0] = v83;
      v145.i8[8] = v82;
      v145.i32[3] = v81;
      LOBYTE(v146) = v80 & 1;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      ResolvedGradientVector.add(_:scaledBy:)(&v145, 1.0);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *(&v142 + 1) = v15 + v85;
      *&v152.m33 = v16 + v84;
      v93 = *&v152.m42;
      *(a1 + 48) = *&v152.m33;
      *(a1 + 64) = v93;
      *a1 = v141;
      *(a1 + 16) = v12;
      *(a1 + 32) = v142;
      *(a1 + 80) = 4;
      return;
    }

    goto LABEL_38;
  }

  if (v176)
  {
    if (v170 == 1)
    {
      v134 = v171;
      v99 = *v166.i32 + *&v172;
      v100 = *&v166.i32[1] + *(&v172 + 1);
      v127 = v165;
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      v102 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v102;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v103 = *(a1 + 16);
      v157 = *a1;
      v158 = v103;
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      *a1 = vaddq_f32(v127, v134);
      *(a1 + 16) = v99;
      *(a1 + 20) = v100;
      *(a1 + 80) = 1;
      return;
    }

    goto LABEL_39;
  }

  if (v170)
  {
LABEL_39:
    v42 = &v165;
    goto LABEL_40;
  }

  if (*v166.i32 < *&v172)
  {
    v43 = *&v172;
  }

  else
  {
    v43 = *v166.i32;
  }

  v123 = v165;
  v130 = v171;
  outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
  v45 = *(a1 + 48);
  v159 = *(a1 + 32);
  v160 = v45;
  v161 = *(a1 + 64);
  v162 = *(a1 + 80);
  v46 = *(a1 + 16);
  v157 = *a1;
  v158 = v46;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
  *a1 = vaddq_f32(v123, v130);
  *(a1 + 16) = v43;
  *(a1 + 80) = 0;
}

uint64_t specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.+= infix(_:_:)(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    v2 = *(a2 + 32);
    v4 = *a2;
    v3 = *(a2 + 16);
    if (*(result + 40))
    {
      *result = v4;
      *(result + 16) = v3;
      v5 = v2;
    }

    else
    {
      v5 = *(result + 32) + v2;
      v6 = vadd_f32(vmovn_s64(v4), vmovn_s64(*result));
      v7.i64[0] = v6.u32[0];
      v7.i64[1] = v6.u32[1];
      v8 = vaddq_f64(*(result + 16), v3);
      *result = vorrq_s8(vshll_n_s32(vadd_f32(vshrn_n_s64(v4, 0x20uLL), vshrn_n_s64(*result, 0x20uLL)), 0x20uLL), v7);
      *(result + 16) = v8;
    }

    *(result + 32) = v5;
    *(result + 40) = 0;
  }

  return result;
}

void specialized static _ShapeStyle_Pack.Fill.AnimatableData.-= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 16);
  v167 = *(a2 + 32);
  v168 = v2;
  v4 = *(a2 + 48);
  v169 = *(a2 + 64);
  v5 = *(a2 + 16);
  v165 = *a2;
  v166 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v173 = *(a1 + 32);
  v174 = v7;
  v8 = *(a1 + 48);
  v175 = *(a1 + 64);
  v9 = *(a1 + 16);
  v171 = *a1;
  v172 = v9;
  v177[0] = v171;
  v177[1] = v6;
  v10 = *(a1 + 64);
  v177[3] = v8;
  v177[4] = v10;
  v177[2] = v173;
  v181 = v167;
  v182 = v4;
  v183 = *(a2 + 64);
  v180 = v3;
  v170 = *(a2 + 80);
  v176 = *(a1 + 80);
  v178 = *(a1 + 80);
  v184 = *(a2 + 80);
  v179 = v165;
  if (v170 == 9)
  {
    v11 = vorrq_s8(vorrq_s8(v166, v168), vorrq_s8(v167, v169));
    if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *&v165.f64[1] | *&v165.f64[0]))
    {
      v42 = &v171;
LABEL_40:
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(v42, &v157);
      goto LABEL_41;
    }
  }

  v12 = v172;
  LODWORD(v13) = v173;
  v14 = DWORD1(v173);
  v15 = *(&v173 + 1);
  v16 = *&v174;
  v163 = *(a1 + 56);
  v164 = *(a1 + 72);
  v17 = v172;
  v18 = DWORD1(v172);
  v19 = *(&v172 + 1);
  v20 = *&v172;
  if (v176 > 4u)
  {
    if (v176 > 6u)
    {
      if (v176 != 7)
      {
        if (v176 != 8)
        {
          v94 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v94;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v95 = *(a1 + 16);
          v157 = *a1;
          v158 = v95;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v97 = v168;
          *(a1 + 32) = v167;
          *(a1 + 48) = v97;
          *(a1 + 64) = v169;
          *(a1 + 80) = v170;
          v98 = v166;
          *a1 = v165;
          *(a1 + 16) = v98;
          outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
          _ShapeStyle_Pack.Fill.AnimatableData.negate()();
LABEL_41:
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
          return;
        }

        if (v170 == 8)
        {
          v129 = v171;
          v35 = *(a2 + 48);
          *&v152.m24 = *(a2 + 32);
          *&v152.m33 = v35;
          *&v152.m42 = *(a2 + 64);
          v36 = *(a2 + 16);
          *&v152.m11 = *a2;
          *&v152.m15 = v36;
          outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
          v38 = *(a1 + 48);
          v159 = *(a1 + 32);
          v160 = v38;
          v161 = *(a1 + 64);
          v162 = *(a1 + 80);
          v39 = *(a1 + 16);
          v157 = *a1;
          v158 = v39;
          outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
          v153 = v129;
          v154 = v12;
          *&v155 = __PAIR64__(v14, LODWORD(v13));
          *(&v155 + 1) = v15;
          *v156 = v16;
          *&v156[8] = v163;
          *&v156[24] = v164;
          _ColorMatrix.subtract(_:)(&v152);
          v40 = *v156;
          *(a1 + 32) = v155;
          *(a1 + 48) = v40;
          *(a1 + 64) = *&v156[16];
          v41 = v154;
          *a1 = v153;
          *(a1 + 16) = v41;
          *(a1 + 80) = 8;
          return;
        }

        goto LABEL_39;
      }

      if (v170 == 7)
      {
        v75 = *&v165.f64[0];
        v76 = v171.i64[0];
        v77 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v77;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v78 = *(a1 + 16);
        v157 = *a1;
        v158 = v78;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v145.i64[0] = v76;
        v151 = v75;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        specialized static ShaderVectorData.-= infix(_:_:)(&v145, &v151);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *a1 = v145.i64[0];
        *(a1 + 80) = 7;
        return;
      }

      goto LABEL_38;
    }

    if (v176 == 5)
    {
      if (v170 == 5)
      {
        v47 = v167.i8[0];
        v48 = v166.i32[3];
        v49 = v166.i8[8];
        v50 = v166.i64[0];
        v51 = *v168.i64;
        v52 = *&v167.i64[1];
        v131 = v171;
        v53 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v53;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v54 = *(a1 + 16);
        v157 = *a1;
        v158 = v54;
        v124 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v56 = vextq_s8(v131, v131, 8uLL).u64[0];
        v57 = vshll_n_s32(vzip2_s32(*v131.i8, v56), 0x20uLL);
        v58 = vzip1_s32(*v131.i8, v56);
        v59.i64[0] = v58.u32[0];
        v59.i64[1] = v58.u32[1];
        *&v144 = __PAIR64__(v14, LODWORD(v13));
        v143 = vsubq_f64(vorrq_s8(v57, v59), v124);
        v145.i64[0] = v50;
        v145.i8[8] = v49;
        v145.i32[3] = v48;
        LOBYTE(v146) = v47 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v144 + 1) = v15 - v52;
        *&v152.m33 = v16 - v51;
        v60 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v60;
        *a1 = v143;
        *(a1 + 16) = v12;
        *(a1 + 32) = v144;
        *(a1 + 80) = 5;
        return;
      }
    }

    else if (v170 == 6)
    {
      v104 = DWORD2(v172);
      v105 = *v167.i32;
      v106 = HIDWORD(*(&v172 + 1));
      v121 = *(&v172 + 1);
      v107 = *&v166.i32[3];
      v108 = *&v166.i32[2];
      v109 = *&v166.i32[1];
      v110 = *v166.i32;
      v111 = *&v165.f64[1];
      v112 = *&v165.f64[0];
      v135 = v171;
      v113 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v113;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v114 = *(a1 + 16);
      v157 = *a1;
      v158 = v114;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v116 = vextq_s8(v135, v135, 8uLL).u64[0];
      v117 = vshll_n_s32(vzip2_s32(*v135.i8, v116), 0x20uLL);
      v118 = vzip1_s32(*v135.i8, v116);
      v119.i64[0] = v118.u32[0];
      v119.i64[1] = v118.u32[1];
      v145 = vorrq_s8(v117, v119);
      v146 = v17;
      v147 = v18;
      v148 = v104;
      v149 = v106;
      v150 = v13;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZSf_Tt1B5(&v145, v112);
      _s7SwiftUI15AnimatableArrayV2seoiyyACyxGz_AEtFZAA0C4PairVySfAGySfAGyS2fGGG_Tt1B5(&v145.i64[1], v111);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *a1 = v145;
      if (v13 > v105)
      {
        v120 = v13;
      }

      else
      {
        v120 = v105;
      }

      *(a1 + 16) = v20 - v110;
      *(a1 + 20) = v19 - v109;
      *(a1 + 24) = *&v121 - v108;
      *(a1 + 28) = *(&v121 + 1) - v107;
      *(a1 + 32) = v120;
      *(a1 + 80) = 6;
      return;
    }

LABEL_38:
    outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v157);
    goto LABEL_39;
  }

  if (v176 > 1u)
  {
    if (v176 == 2)
    {
      if (v170 == 2)
      {
        v61 = v168.i8[0];
        v62 = v167.i32[3];
        v63 = v167.i8[8];
        v64 = v167.i64[0];
        v65 = *&v166.i64[1];
        v66 = *v166.i64;
        v132 = v171;
        v67 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v67;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v68 = *(a1 + 16);
        v157 = *a1;
        v158 = v68;
        v125 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v70 = vextq_s8(v132, v132, 8uLL).u64[0];
        v71 = vshll_n_s32(vzip2_s32(*v132.i8, v70), 0x20uLL);
        v72 = vzip1_s32(*v132.i8, v70);
        v73.i64[0] = v72.u32[0];
        v73.i64[1] = v72.u32[1];
        *&v138 = __PAIR64__(v14, LODWORD(v13));
        *(&v138 + 1) = v15;
        v136 = vsubq_f64(vorrq_s8(v71, v73), v125);
        *&v137 = *&v12 - v66;
        *(&v137 + 1) = *(&v12 + 1) - v65;
        v145.i64[0] = v64;
        v145.i8[8] = v63;
        v145.i32[3] = v62;
        LOBYTE(v146) = v61 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        LOBYTE(v152.m33) = LOBYTE(v16);
        v74 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v74;
        *a1 = v136;
        *(a1 + 16) = v137;
        *(a1 + 32) = v138;
        *(a1 + 80) = 2;
        return;
      }
    }

    else if (v176 == 3)
    {
      if (v170 == 3)
      {
        v21 = v167.i8[0];
        v22 = v166.i32[3];
        v23 = v166.i8[8];
        v24 = v166.i64[0];
        v25 = *v168.i64;
        v26 = *&v167.i64[1];
        v128 = v171;
        v27 = *(a1 + 48);
        v159 = *(a1 + 32);
        v160 = v27;
        v161 = *(a1 + 64);
        v162 = *(a1 + 80);
        v28 = *(a1 + 16);
        v157 = *a1;
        v158 = v28;
        v122 = v165;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
        v30 = vextq_s8(v128, v128, 8uLL).u64[0];
        v31 = vshll_n_s32(vzip2_s32(*v128.i8, v30), 0x20uLL);
        v32 = vzip1_s32(*v128.i8, v30);
        v33.i64[0] = v32.u32[0];
        v33.i64[1] = v32.u32[1];
        *&v140 = __PAIR64__(v14, LODWORD(v13));
        v139 = vsubq_f64(vorrq_s8(v31, v33), v122);
        v145.i64[0] = v24;
        v145.i8[8] = v23;
        v145.i32[3] = v22;
        LOBYTE(v146) = v21 & 1;
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
        outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
        ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
        outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
        *(&v140 + 1) = v15 - v26;
        *&v152.m33 = v16 - v25;
        v34 = *&v152.m42;
        *(a1 + 48) = *&v152.m33;
        *(a1 + 64) = v34;
        *a1 = v139;
        *(a1 + 16) = v12;
        *(a1 + 32) = v140;
        *(a1 + 80) = 3;
        return;
      }
    }

    else if (v170 == 4)
    {
      v80 = v167.i8[0];
      v81 = v166.i32[3];
      v82 = v166.i8[8];
      v83 = v166.i64[0];
      v84 = *v168.i64;
      v85 = *&v167.i64[1];
      v133 = v171;
      v86 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v86;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v87 = *(a1 + 16);
      v157 = *a1;
      v158 = v87;
      v126 = v165;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      v89 = vextq_s8(v133, v133, 8uLL).u64[0];
      v90 = vshll_n_s32(vzip2_s32(*v133.i8, v89), 0x20uLL);
      v91 = vzip1_s32(*v133.i8, v89);
      v92.i64[0] = v91.u32[0];
      v92.i64[1] = v91.u32[1];
      *&v142 = __PAIR64__(v14, LODWORD(v13));
      v141 = vsubq_f64(vorrq_s8(v90, v92), v126);
      v145.i64[0] = v83;
      v145.i8[8] = v82;
      v145.i32[3] = v81;
      LOBYTE(v146) = v80 & 1;
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v171, &v152);
      outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(&v165, &v152);
      ResolvedGradientVector.add(_:scaledBy:)(&v145, -1.0);
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v165);
      *(&v142 + 1) = v15 - v85;
      *&v152.m33 = v16 - v84;
      v93 = *&v152.m42;
      *(a1 + 48) = *&v152.m33;
      *(a1 + 64) = v93;
      *a1 = v141;
      *(a1 + 16) = v12;
      *(a1 + 32) = v142;
      *(a1 + 80) = 4;
      return;
    }

    goto LABEL_38;
  }

  if (v176)
  {
    if (v170 == 1)
    {
      v134 = v171;
      v99 = *&v172 - *v166.i32;
      v100 = *(&v172 + 1) - *&v166.i32[1];
      v127 = v165;
      outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
      v102 = *(a1 + 48);
      v159 = *(a1 + 32);
      v160 = v102;
      v161 = *(a1 + 64);
      v162 = *(a1 + 80);
      v103 = *(a1 + 16);
      v157 = *a1;
      v158 = v103;
      outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
      *a1 = vsubq_f32(v134, v127);
      *(a1 + 16) = v99;
      *(a1 + 20) = v100;
      *(a1 + 80) = 1;
      return;
    }

    goto LABEL_39;
  }

  if (v170)
  {
LABEL_39:
    v42 = &v165;
    goto LABEL_40;
  }

  if (*v166.i32 < *&v172)
  {
    v43 = *&v172;
  }

  else
  {
    v43 = *v166.i32;
  }

  v123 = v165;
  v130 = v171;
  outlined destroy of (ShapeType, ShapeType)(v177, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill.AnimatableData, _ShapeStyle_Pack.Fill.AnimatableData));
  v45 = *(a1 + 48);
  v159 = *(a1 + 32);
  v160 = v45;
  v161 = *(a1 + 64);
  v162 = *(a1 + 80);
  v46 = *(a1 + 16);
  v157 = *a1;
  v158 = v46;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(&v157);
  *a1 = vsubq_f32(v130, v123);
  *(a1 + 16) = v43;
  *(a1 + 80) = 0;
}

uint64_t specialized static _ShapeStyle_Pack.Effect.Kind.AnimatableData.-= infix(_:_:)(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    v2 = *(a2 + 32);
    v4 = *a2;
    v3 = *(a2 + 16);
    if (*(result + 40))
    {
      *result = v4;
      *(result + 16) = v3;
      v5 = v2;
    }

    else
    {
      v5 = *(result + 32) - v2;
      v6 = vsub_f32(vmovn_s64(*result), vmovn_s64(v4));
      v7.i64[0] = v6.u32[0];
      v7.i64[1] = v6.u32[1];
      v8 = vsubq_f64(*(result + 16), v3);
      *result = vorrq_s8(vshll_n_s32(vsub_f32(vshrn_n_s64(*result, 0x20uLL), vshrn_n_s64(v4, 0x20uLL)), 0x20uLL), v7);
      *(result + 16) = v8;
    }

    *(result + 32) = v5;
    *(result + 40) = 0;
  }

  return result;
}

uint64_t specialized Array<A>.animatableData.setter(uint64_t result)
{
  v2 = *v1;
  if (*(result + 16) >= *(*v1 + 16))
  {
    v3 = *(*v1 + 16);
  }

  else
  {
    v3 = *(result + 16);
  }

  if (v3)
  {
    v4 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    v26 = v1;
    if (result)
    {
      if (*(v2 + 16))
      {
LABEL_7:
        v6 = 0;
        v7 = 0;
        v8 = v4 + 40;
        v9 = v3 - 1;
        do
        {
          v10 = *v8;
          v11 = *(v8 + 8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 40);
          v15 = v2 + v6;
          *(v2 + v6 + 88) = *(v8 - 8);
          if (*(v2 + v6 + 85) & 1) != 0 || (v14)
          {
            *(v15 + 32) = 0u;
            *(v15 + 48) = 0u;
            *(v15 + 64) = 0u;
            *(v15 + 77) = 0;
            *(v15 + 85) = 1;
            if (v9 == v7)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v28 = v12;
            v16 = *(v15 + 48);
            v29 = *(v15 + 80);
            v30 = *(v15 + 84);
            if (one-time initialization token for legacyInterpolation != -1)
            {
              swift_once();
            }

            *&v5 = vmul_f32(v10, 0x3C0000003C000000);
            v27 = v5;
            v17 = *&v11 * 0.0078125;
            v18 = *(&v11 + 1) * 0.0078125;
            result = swift_beginAccess();
            if (static Color.Resolved.legacyInterpolation)
            {
              v20 = v27;
              v19 = v28;
            }

            else
            {
              if (v18 == 0.0)
              {
                v5 = v27;
              }

              else
              {
                *(&v5 + 1) = *(&v27 + 1);
                *&v5 = vmul_n_f32(*&v27, 1.0 / v18);
                v17 = v17 * (1.0 / v18);
              }

              v21 = v17 * (v17 * v17);
              v22 = vmul_f32(*&v5, vmul_f32(*&v5, *&v5));
              v23 = vsub_f32(vmul_f32(v22, 0x40270644408274ABLL), vrev64_s32(vmul_f32(v22, 0x4053B18C3FA25C2DLL)));
              v24 = vmul_n_f32(0x3EAEC16A3E6C8362, v21);
              LODWORD(v20) = vadd_f32(v23, v24).u32[0];
              HIDWORD(v20) = vsub_f32(v23, v24).i32[1];
              v25 = vmul_f32(v22, 0x3F34133EBB897F53);
              v17 = (v21 * 1.7076) + vsub_f32(v25, vdup_lane_s32(v25, 1)).f32[0];
              v19 = v28;
            }

            *(v15 + 32) = v20;
            *(v15 + 40) = v17;
            *(v15 + 44) = v18;
            *(v15 + 48) = v16;
            *(v15 + 56) = v19;
            *(v15 + 72) = v13;
            *(v15 + 80) = v29;
            *(v15 + 84) = v30;
            *(v15 + 85) = 0;
            if (v9 == v7)
            {
LABEL_23:
              *v26 = v2;
              return result;
            }
          }

          v8 += 56;
          ++v7;
          v6 += 80;
        }

        while (v7 < *(v2 + 16));
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
      if (*(result + 16))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static _ShapeStyle_Pack.Style.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v34 = *(a1 + 32);
  v35 = v2;
  v4 = *(a1 + 48);
  v36[0] = *(a1 + 64);
  v5 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v5;
  v6 = *(a2 + 16);
  v7 = v6;
  v37[0] = *a2;
  v37[1] = v6;
  *(v40 + 14) = *(a2 + 78);
  v8 = *(a2 + 48);
  v40[0] = *(a2 + 64);
  v9 = *(a2 + 48);
  v38 = *(a2 + 32);
  v39 = v9;
  v30 = v34;
  v31 = v4;
  v32[0] = *(a1 + 64);
  *(v36 + 14) = *(a1 + 78);
  v28 = v33[0];
  v29 = v3;
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  v25 = v38;
  v26 = v8;
  v27[0] = *(a2 + 64);
  v14 = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a2 + 104);
  v17 = *(a2 + 112);
  *(v32 + 14) = *(a1 + 78);
  *(v27 + 14) = *(a2 + 78);
  v23 = v37[0];
  v24 = v7;
  outlined init with copy of _ShapeStyle_Pack.Fill(v33, v43);
  outlined init with copy of _ShapeStyle_Pack.Fill(v37, v43);
  v18 = specialized static _ShapeStyle_Pack.Fill.== infix(_:_:)(&v28, &v23);
  v41[2] = v25;
  v41[3] = v26;
  v42[0] = v27[0];
  *(v42 + 14) = *(v27 + 14);
  v41[0] = v23;
  v41[1] = v24;
  outlined destroy of _ShapeStyle_Pack.Fill(v41);
  v43[2] = v30;
  v43[3] = v31;
  v44[0] = v32[0];
  *(v44 + 14) = *(v32 + 14);
  v43[0] = v28;
  v43[1] = v29;
  outlined destroy of _ShapeStyle_Pack.Fill(v43);
  v19 = 0;
  if ((v18 & 1) != 0 && v10 == v14)
  {
    if (v12 == 255)
    {
      if (v16 == 255)
      {
        outlined copy of GraphicsBlendMode?(v11, 255);
        outlined copy of GraphicsBlendMode?(v15, 255);
        outlined consume of GraphicsBlendMode?(v11, 255);
        goto LABEL_15;
      }
    }

    else if (v16 != 255)
    {
      if (v12)
      {
        if (v16)
        {
          outlined copy of GraphicsBlendMode?(v11, v12);
          outlined copy of GraphicsBlendMode?(v15, v16);
          outlined copy of GraphicsBlendMode?(v11, v12);
          outlined consume of GraphicsBlendMode(v11, 1);
          outlined consume of GraphicsBlendMode(v15, 1);
          outlined consume of GraphicsBlendMode?(v11, v12);
          if (v11 != v15)
          {
            goto LABEL_19;
          }

          goto LABEL_15;
        }

        swift_unknownObjectRetain();
        goto LABEL_17;
      }

      if (v16)
      {
LABEL_17:
        outlined copy of GraphicsBlendMode?(v11, v12);
        outlined copy of GraphicsBlendMode?(v15, v16);
        outlined consume of GraphicsBlendMode(v11, v12 & 1);
        outlined consume of GraphicsBlendMode(v15, v16 & 1);
        v20 = v11;
        v21 = v12;
        goto LABEL_18;
      }

      outlined copy of GraphicsBlendMode?(v11, v12);
      outlined copy of GraphicsBlendMode?(v15, v16);
      outlined consume of GraphicsBlendMode(v11, 0);
      outlined consume of GraphicsBlendMode(v15, 0);
      outlined consume of GraphicsBlendMode?(v11, v12);
      if (v11 != v15)
      {
        goto LABEL_19;
      }

LABEL_15:
      v19 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI16_ShapeStyle_PackV6EffectV_Tt1g5(v13, v17);
      return v19 & 1;
    }

    outlined copy of GraphicsBlendMode?(v11, v12);
    outlined copy of GraphicsBlendMode?(v15, v16);
    outlined consume of GraphicsBlendMode?(v11, v12);
    v20 = v15;
    v21 = v16;
LABEL_18:
    outlined consume of GraphicsBlendMode?(v20, v21);
LABEL_19:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t outlined init with copy of (Color.ResolvedHDR, ContentStyle.MaterialStyle)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (Color.ResolvedHDR, ContentStyle.MaterialStyle));
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<LinearGradient._Paint>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(0, a2, a3, a4, type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_ShapeStyle_Pack.Slice> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(255, &lazy cache variable for type metadata for Slice<_ShapeStyle_Pack.Slice>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<_ShapeStyle_Pack.Slice> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(255, a2, lazy protocol witness table accessor for type _ShapeStyle_Pack.Slice and conformance _ShapeStyle_Pack.Slice, &type metadata for _ShapeStyle_Pack.Slice, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor<Shader.ResolvedShader>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t assignWithCopy for _ShapeStyle_Pack.Style(uint64_t a1, uint64_t a2)
{
  v34 = *(a2 + 8);
  v35 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v36 = *(a2 + 64);
  v37 = *(a2 + 72);
  v38 = *(a2 + 84);
  v10 = *(a2 + 80);
  v11 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v34, v4, v5, v6, v7, v8, v9, v36, v37, v10 | (v38 << 32), v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80) | (*(a1 + 84) << 32);
  v23 = *(a1 + 85);
  *a1 = v35;
  *(a1 + 8) = v34;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v36;
  *(a1 + 72) = v37;
  *(a1 + 80) = v10;
  *(a1 + 84) = v38;
  *(a1 + 85) = v11;
  outlined consume of _ShapeStyle_Pack.Fill(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  *(a1 + 88) = *(a2 + 88);
  v24 = *(a2 + 104);
  if (*(a1 + 104) == 255)
  {
    if (v24 == 255)
    {
      v32 = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 96) = v32;
    }

    else
    {
      v29 = *(a2 + 96);
      v30 = v24 & 1;
      outlined copy of GraphicsBlendMode(v29, v24 & 1);
      *(a1 + 96) = v29;
      *(a1 + 104) = v30;
    }
  }

  else if (v24 == 255)
  {
    outlined destroy of GraphicsBlendMode(a1 + 96);
    v31 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = v31;
  }

  else
  {
    v25 = *(a2 + 96);
    v26 = v24 & 1;
    outlined copy of GraphicsBlendMode(v25, v24 & 1);
    v27 = *(a1 + 96);
    v28 = *(a1 + 104);
    *(a1 + 96) = v25;
    *(a1 + 104) = v26;
    outlined consume of GraphicsBlendMode(v27, v28);
  }

  *(a1 + 112) = *(a2 + 112);

  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Style(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  v5 = *(a2 + 80);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80) | (*(a1 + 84) << 32);
  v17 = *(a1 + 85);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 84) = v4;
  outlined consume of _ShapeStyle_Pack.Fill(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
  *(a1 + 88) = *(a2 + 88);
  v20 = *(a1 + 104);
  if (v20 == 255)
  {
    goto LABEL_5;
  }

  v21 = *(a2 + 104);
  if (v21 == 255)
  {
    outlined destroy of GraphicsBlendMode(a1 + 96);
LABEL_5:
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_6;
  }

  v22 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v21 & 1;
  outlined consume of GraphicsBlendMode(v22, v20 & 1);
LABEL_6:
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Style(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Style(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Fill(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v25 = *a2;
  v26 = *(a2 + 64);
  v27 = *(a2 + 72);
  v28 = *(a2 + 84);
  v10 = *(a2 + 80);
  v11 = *(a2 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*a2, v3, v4, v5, v6, v7, v8, v9, v26, v27, v10 | (v28 << 32), v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80) | (*(a1 + 84) << 32);
  v23 = *(a1 + 85);
  *a1 = v25;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v26;
  *(a1 + 72) = v27;
  *(a1 + 80) = v10;
  *(a1 + 84) = v28;
  *(a1 + 85) = v11;
  outlined consume of _ShapeStyle_Pack.Fill(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  return a1;
}

__n128 __swift_memcpy86_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Fill(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 84);
  v4 = *(a2 + 80);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80) | (*(a1 + 84) << 32);
  v16 = *(a1 + 85);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 84) = v3;
  outlined consume of _ShapeStyle_Pack.Fill(v5, v7, v6, v8, v9, v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Fill(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 86))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 85);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Fill(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 86) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 86) = 0;
    }

    if (a2)
    {
      *(result + 85) = -a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Effect(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *a1 = v3;
  *(a1 + 56) = *(a2 + 14);
  v6 = *(a2 + 72);
  if (*(a1 + 72) == 255)
  {
    if (v6 == 255)
    {
      v15 = *(a2 + 8);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 64) = v15;
    }

    else
    {
      v11 = *(a2 + 8);
      v12 = v6 & 1;
      outlined copy of GraphicsBlendMode(v11, v6 & 1);
      *(a1 + 64) = v11;
      *(a1 + 72) = v12;
    }
  }

  else if (v6 == 255)
  {
    outlined destroy of GraphicsBlendMode(a1 + 64);
    v14 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = v14;
  }

  else
  {
    v7 = *(a2 + 8);
    v8 = v6 & 1;
    outlined copy of GraphicsBlendMode(v7, v6 & 1);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    *(a1 + 64) = v7;
    *(a1 + 72) = v8;
    outlined consume of GraphicsBlendMode(v9, v10);
  }

  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Effect(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v2;
  *(result + 32) = *(a2 + 32);
  *(result + 46) = *(a2 + 46);
  *(result + 56) = *(a2 + 56);
  v3 = *(result + 72);
  if (v3 == 255)
  {
    *(result + 64) = *(a2 + 64);
    *(result + 72) = *(a2 + 72);
  }

  else
  {
    v4 = *(a2 + 72);
    if (v4 == 255)
    {
      v7 = result;
      outlined destroy of GraphicsBlendMode(result + 64);
      result = v7;
      *(v7 + 64) = *(a2 + 64);
      *(v7 + 72) = *(a2 + 72);
    }

    else
    {
      v5 = *(result + 64);
      *(result + 64) = *(a2 + 64);
      *(result + 72) = v4 & 1;
      v6 = result;
      outlined consume of GraphicsBlendMode(v5, v3 & 1);
      return v6;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = ~a2;
    }
  }

  return result;
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Effect.Kind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 54))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Effect.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 46) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 54) = v3;
  return result;
}

uint64_t getEnumTag for _ShapeStyle_Pack.Effect.Kind(uint64_t a1)
{
  if (*(a1 + 53))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Pack.Effect.Kind(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = (a2 - 1);
    *(result + 53) = 1;
  }

  else
  {
    *(result + 53) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Key(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Slice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Slice(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Slice(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Slice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  outlined copy of _ShapeStyle_Pack.Fill.AnimatableData(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  outlined consume of _ShapeStyle_Pack.Fill.AnimatableData(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v15;
  v16 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  outlined consume of _ShapeStyle_Pack.Fill.AnimatableData(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 81))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 80);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t a1)
{
  if (*(a1 + 80) <= 8u)
  {
    return *(a1 + 80);
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Pack.Fill.AnimatableData(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_Pack.Effect.Kind.AnimatableData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

uint64_t getEnumTag for _ShapeStyle_Pack.Effect.Kind.AnimatableData(uint64_t a1)
{
  if (*(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_Pack.Effect.Kind.AnimatableData(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    *(result + 40) = 1;
  }

  else
  {
    *(result + 40) = 0;
  }

  return result;
}

uint64_t initializeWithCopy for ResolvedMulticolorStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for ResolvedMulticolorStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  v5 = v4;

  return a1;
}

uint64_t assignWithTake for ResolvedMulticolorStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t type metadata completion function for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 86 > 0x18)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v19 = *(v11 + 48);
    v18 = *(v11 + 56);
    v21 = *(v11 + 64);
    v22 = *(v11 + 72);
    v24 = *(v11 + 84);
    v25 = *(v11 + 80);
    v23 = *(v11 + 85);
    outlined copy of _ShapeStyle_Pack.Fill(*v11, v13, v14, v15, v16, v17, v19, v18, v21, v22, v25 | (v24 << 32), v23);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v16;
    *(v10 + 40) = v17;
    *(v10 + 48) = v19;
    *(v10 + 56) = v18;
    *(v10 + 64) = v21;
    *(v10 + 72) = v22;
    *(v10 + 84) = v24;
    *(v10 + 80) = v25;
    *(v10 + 85) = v23;
  }

  return a1;
}

uint64_t destroy for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  return outlined consume of _ShapeStyle_Pack.Fill(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80) | (*(v4 + 84) << 32), *(v4 + 85));
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(v3, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + v3) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  v14 = *(v8 + 40);
  v15 = *(v8 + 48);
  v16 = *(v8 + 56);
  v18 = *(v8 + 64);
  v19 = *(v8 + 72);
  v20 = *(v8 + 84);
  v21 = *(v8 + 80);
  LOBYTE(v3) = *(v8 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*v8, v10, v11, v12, v13, v14, v15, v16, v18, v19, v21 | (v20 << 32), v3);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  *(v7 + 40) = v14;
  *(v7 + 48) = v15;
  *(v7 + 56) = v16;
  *(v7 + 64) = v18;
  *(v7 + 72) = v19;
  *(v7 + 84) = v20;
  *(v7 + 80) = v21;
  *(v7 + 85) = v3;
  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  v14 = *(v8 + 48);
  v15 = *(v8 + 56);
  v30 = *v8;
  v31 = *(v8 + 64);
  v32 = *(v8 + 72);
  v33 = *(v8 + 84);
  v16 = *(v8 + 80);
  LOBYTE(a2) = *(v8 + 85);
  outlined copy of _ShapeStyle_Pack.Fill(*v8, v9, v10, v11, v12, v13, v14, v15, v31, v32, v16 | (v33 << 32), a2);
  v17 = *v7;
  v18 = *(v7 + 8);
  v19 = *(v7 + 16);
  v20 = *(v7 + 24);
  v21 = *(v7 + 32);
  v22 = *(v7 + 40);
  v23 = *(v7 + 48);
  v24 = *(v7 + 56);
  v25 = *(v7 + 64);
  v26 = *(v7 + 72);
  v27 = *(v7 + 80) | (*(v7 + 84) << 32);
  v28 = *(v7 + 85);
  *v7 = v30;
  *(v7 + 8) = v9;
  *(v7 + 16) = v10;
  *(v7 + 24) = v11;
  *(v7 + 32) = v12;
  *(v7 + 40) = v13;
  *(v7 + 48) = v14;
  *(v7 + 56) = v15;
  *(v7 + 64) = v31;
  *(v7 + 72) = v32;
  *(v7 + 80) = v16;
  *(v7 + 84) = v33;
  *(v7 + 85) = a2;
  outlined consume of _ShapeStyle_Pack.Fill(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  return a1;
}

uint64_t initializeWithTake for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v11 = *(v8 + 48);
  v10 = *(v8 + 64);
  v12 = *(v8 + 32);
  *(v7 + 78) = *(v8 + 78);
  *(v7 + 48) = v11;
  *(v7 + 64) = v10;
  *(v7 + 32) = v12;
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 84);
  v9 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v7 + 80);
  v11 = *v9;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  v14 = *(v9 + 24);
  v15 = *(v9 + 32);
  v16 = *(v9 + 40);
  v17 = *(v9 + 48);
  v18 = *(v9 + 56);
  v19 = *(v9 + 64);
  v20 = *(v9 + 72);
  v21 = *(v9 + 85);
  v22 = *(v7 + 16);
  v23 = *(v7 + 32);
  v24 = *(v7 + 48);
  v25 = *(v7 + 64);
  *v9 = *v7;
  *(v9 + 16) = v22;
  *(v9 + 32) = v23;
  *(v9 + 48) = v24;
  *(v9 + 64) = v25;
  v26 = *(v9 + 80);
  v9 += 80;
  v27 = *(v9 + 4);
  *v9 = v10;
  *(v9 + 4) = v8;
  outlined consume of _ShapeStyle_Pack.Fill(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v26 | (v27 << 32), v21);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xF9)
  {
    v7 = 249;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 < a2 && *(a1 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 86))
  {
    return v7 + *a1 + 1;
  }

  if (v6 < 0xF9)
  {
    v11 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 85);
    if (v11 > 6)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = *(v5 + 48);

    return v10(a1);
  }
}

double storeEnumTagSinglePayload for _ShapeStyle_Pack.Fill.AnimatableData.PaintSetVisitor(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  if (v8 <= 0xF9)
  {
    v10 = 249;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 86;
  if (v10 >= a2)
  {
    if (v10 < a3)
    {
      *(a1 + v11) = 0;
    }

    if (a2)
    {
      if (v8 < 0xF9)
      {
        v13 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xF9)
        {
          *(v13 + 72) = 0;
          result = 0.0;
          *(v13 + 56) = 0u;
          *(v13 + 40) = 0u;
          *(v13 + 24) = 0u;
          *(v13 + 8) = 0u;
          *(v13 + 84) = 0;
          *(v13 + 80) = 0;
          *v13 = (a2 - 250);
        }

        else
        {
          *(v13 + 85) = -a2;
        }
      }

      else
      {
        v12 = *(v6 + 56);

        v12(a1, a2);
      }
    }
  }

  else
  {
    bzero(a1, v11);
    *a1 = ~v10 + a2;
    if (v10 < a3)
    {
      *(a1 + v11) = 1;
    }
  }

  return result;
}

uint64_t _ShapeStyle_RenderedShape.init(_:frame:identity:version:contentSeed:options:environment:)@<X0>(_OWORD *a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, __int16 *a4@<X3>, char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  *(a7 + 144) = 0;
  *(a7 + 152) = 0;
  if (one-time initialization token for normal != -1)
  {
    v21 = a1;
    v22 = a6;
    v23 = a7;
    v24 = a11;
    v25 = a10;
    v26 = a9;
    v27 = a8;
    swift_once();
    a1 = v21;
    a8 = v27;
    a9 = v26;
    a10 = v25;
    a11 = v24;
    a7 = v23;
    a6 = v22;
  }

  v15 = static GraphicsBlendMode.normal;
  v16 = byte_1ED52F818;
  *(a7 + 248) = static GraphicsBlendMode.normal;
  *(a7 + 256) = v16;
  *(a7 + 260) = 1065353216;
  *(a7 + 264) = 0;
  v17 = a1[5];
  *(a7 + 64) = a1[4];
  *(a7 + 80) = v17;
  *(a7 + 92) = *(a1 + 92);
  v18 = a1[1];
  *a7 = *a1;
  *(a7 + 16) = v18;
  v19 = a1[3];
  *(a7 + 32) = a1[2];
  *(a7 + 48) = v19;
  *(a7 + 108) = v13;
  *(a7 + 112) = a8;
  *(a7 + 120) = a9;
  *(a7 + 128) = a10;
  *(a7 + 136) = a11;
  *(a7 + 160) = a8;
  *(a7 + 168) = a9;
  *(a7 + 176) = a10;
  *(a7 + 184) = a11;
  *(a7 + 192) = v12;
  *(a7 + 200) = 0;
  *(a7 + 208) = 0;
  *(a7 + 216) = 0;
  *(a7 + 224) = 3221225472;
  *(a7 + 232) = v11;
  *(a7 + 236) = v14;
  *(a7 + 240) = a6;

  return outlined copy of GraphicsBlendMode(v15, v16);
}

void specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = *(a3 + 16);
  v50 = *a3;
  v51 = v7;
  v8 = *(a3 + 48);
  v52 = *(a3 + 32);
  v53 = v8;
  v9 = *(a3 + 80);
  v54 = *(a3 + 64);
  v55[0] = v9;
  *(v55 + 12) = *(a3 + 92);
  v10 = DWORD2(v55[1]) >> 29;
  if (DWORD2(v55[1]) >> 29 == 2)
  {
    v11 = a4;

    if (ResolvedStyledText.needsStyledRendering.getter())
    {
      v25 = v50;
      LOBYTE(v26) = v51 & 1;
      v33[0] = *v11;
      LOBYTE(v43) = v6;
      _ShapeStyle_Pack.subscript.getter(&v43, 0, &v35);
      v24 = v6;
      _ShapeStyle_RenderedShape.renderKeyedText(_:style:name:layers:)(&v25, &v35, &v24);
      v47 = v39;
      v48[0] = v40;
      v48[1] = v41;
      v49 = v42;
      v43 = v35;
      v44 = v36;
      v45 = v37;
      v46 = v38;
      outlined destroy of _ShapeStyle_Pack.Style(&v43);
    }

    else
    {
      v43 = v50;
      LOBYTE(v44) = v51 & 1;
      _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(&v43);
    }

    outlined destroy of _ShapeStyle_RenderedShape.Shape(&v50);
  }

  else if (v10 == 3)
  {
    if (v54)
    {
      v43 = v50;
      LOBYTE(v44) = v51;
      *(&v44 + 1) = *(&v51 + 1);
      BYTE7(v44) = (*(&v51 + 1) | ((*(&v51 + 5) | (BYTE7(v51) << 16)) << 32)) >> 48;
      *(&v44 + 5) = *(&v51 + 5);
      *(&v44 + 1) = *(&v51 + 1);
      v45 = v52;
      v46 = v53;
      LOBYTE(v47) = v54;
      *(&v47 + 1) = *(&v54 + 1);
      BYTE7(v47) = (*(&v54 + 1) | ((*(&v54 + 5) | (BYTE7(v54) << 16)) << 32)) >> 48;
      *(&v47 + 5) = *(&v54 + 5);
      *(&v47 + 1) = *(&v54 + 1);
      v48[0] = v55[0];
      *&v48[1] = *&v55[1];
      DWORD2(v48[1]) = DWORD2(v55[1]) & 0x1FFFFFFF;
      _ShapeStyle_RenderedShape.renderUnstyledImage(_:layers:)(&v43);
      return;
    }

    if (BYTE8(v50) != 2)
    {
      if (BYTE8(v50) == 255)
      {
        *(v48 + 12) = *(a3 + 92);
        v12 = *(a3 + 80);
        v47 = *(a3 + 64);
        v48[0] = v12;
        v13 = *(a3 + 16);
        v43 = *a3;
        v44 = v13;
        v14 = *(a3 + 48);
        v45 = *(a3 + 32);
        v46 = v14;
        DWORD2(v48[1]) &= 0x1FFFFFFFu;
        v15 = a4;
        outlined init with copy of GraphicsImage(&v43, &v35);
        a4 = v15;
      }

      goto LABEL_14;
    }

    v16 = *(v50 + 24);
    v17 = *(v50 + 32);
    v18 = *(v50 + 40);
    v19 = *(v50 + 44);
    v20 = *(v50 + 45);
    v21 = *(v50 + 48);
    *&v43 = *(v50 + 16);
    BYTE8(v43) = v16;
    *&v44 = v17;
    DWORD2(v44) = v18;
    BYTE12(v44) = v19;
    BYTE13(v44) = v20;
    *&v45 = v21;
    LOBYTE(v25) = v6;
    *&v35 = *a4;
    v22 = v43;
    outlined copy of Image.Location(v17);
    v23 = v21;

    specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(&v43, SBYTE8(v52), &v25, &v35, a2);

    outlined consume of Image.Location(v17);
  }

  else if (v10 != 5 || DWORD2(v55[1]) != -1610612736 || v51 | ((*(&v51 + 1) | ((*(&v51 + 5) | (BYTE7(v51) << 16)) << 32)) << 8) | v54 | ((*(&v54 + 1) | ((*(&v54 + 5) | (BYTE7(v54) << 16)) << 32)) << 8) | v50 | *(&v50 + 1) | *(&v51 + 1) | v52 | *(&v52 + 1) | v53 | *(&v53 + 1) | *(&v54 + 1) | *&v55[0] | *(&v55[0] + 1) | *&v55[1])
  {
LABEL_14:
    *&v43 = *a4;
    LOBYTE(v25) = v6;
    _ShapeStyle_Pack.subscript.getter(&v25, 0, &v35);
    v33[0] = v6;
    v33[1] = 0;
    v34 = 0;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    outlined init with copy of _ShapeStyle_Pack.Style(&v35, &v43);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v33, &v25, a3);
    v47 = v29;
    v48[0] = v30;
    v48[1] = v31;
    v49 = v32;
    v43 = v25;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    outlined destroy of _ShapeStyle_Pack.Style?(&v43, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    _ShapeStyle_RenderedShape.render(style:)(&v25);
    _ShapeStyle_RenderedLayers.endLayer(shape:)(a3);
    outlined destroy of _ShapeStyle_Pack.Style(&v35);
  }
}

uint64_t _ShapeStyle_RenderedShape.background(_:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, 0x109uLL);
  v4 = __dst[264];
  memcpy(__srca, __src, 0x109uLL);
  v5 = *(v2 + 264);
  if (((v5 | __dst[264]) & 2) != 0)
  {
    if (v5)
    {
      LOWORD(v16[0]) = *(v2 + 108);
      outlined init with copy of _ShapeStyle_RenderedShape(__dst, v18);
      DisplayList.Item.addDrawingGroup(contentSeed:)(v16);
      *(v2 + 264) = v5 & 0xFE;
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      outlined init with copy of _ShapeStyle_RenderedShape(__dst, v18);
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    LOWORD(v18[0]) = __srca[54];
    DisplayList.Item.addDrawingGroup(contentSeed:)(v18);
    LOBYTE(__srca[132]) = v4 & 0xFE;
    goto LABEL_8;
  }

  outlined init with copy of _ShapeStyle_RenderedShape(__dst, v18);
LABEL_8:
  _ShapeStyle_RenderedShape.commitItem()(v12);
  v6 = *(v2 + 208);
  v14[2] = *(v2 + 192);
  v15[0] = v6;
  *(v15 + 12) = *(v2 + 220);
  v7 = *(v2 + 176);
  v14[0] = *(v2 + 160);
  v14[1] = v7;
  outlined destroy of DisplayList.Item(v14);
  v8 = v13[0];
  *(v2 + 192) = v12[2];
  *(v2 + 208) = v8;
  *(v2 + 220) = *(v13 + 12);
  v9 = v12[1];
  *(v2 + 160) = v12[0];
  *(v2 + 176) = v9;
  _ShapeStyle_RenderedShape.commitItem()(v18);
  DisplayList.Item.composite(_:above:)(v18, 0);
  v16[2] = v18[2];
  v17[0] = v18[3];
  *(v17 + 12) = *(&v18[3] + 12);
  v16[0] = v18[0];
  v16[1] = v18[1];
  outlined destroy of DisplayList.Item(v16);
  v10 = __srca[132];
  memcpy(v18, __srca, 0x109uLL);
  result = outlined destroy of _ShapeStyle_RenderedShape(v18);
  *(v2 + 264) |= v10;
  return result;
}

SwiftUI::Time __swiftcall _ShapeStyle_InterpolatorGroup.nextUpdate(after:)(SwiftUI::Time after)
{
  v3 = v1;
  swift_beginAccess();
  v4 = *(v2 + 24);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 240);
    result.seconds = INFINITY;
    do
    {
      v8 = v6 - 3;
      if (*(*(v6 - 1) + 16))
      {
        v8 = v6;
      }

      if (*v8 < result.seconds)
      {
        result.seconds = *v8;
      }

      v6 += 29;
      --v5;
    }

    while (v5);
  }

  else
  {
    result.seconds = INFINITY;
  }

  *v3 = result.seconds;
  return result;
}

uint64_t _ShapeStyle_InterpolatorGroup.deinit()
{
  _ShapeStyle_InterpolatorGroup.reset()();

  return v0;
}

uint64_t _ShapeStyle_Pack.Style.draw(_:style:in:bounds:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v31 = a2[1];
  v32 = *a2;
  v30 = *(a2 + 4);
  v6 = *(a2 + 40);
  *(v53 + 14) = *(v4 + 78);
  v7 = v4[4];
  v52 = v4[3];
  v53[0] = v7;
  v8 = v4[2];
  v50 = v4[1];
  v51 = v8;
  v49 = *v4;
  v9 = *(v4 + 22);
  v27 = *(v4 + 12);
  v28 = *(v4 + 104);
  v29 = v6;
  v10 = *(v4 + 14);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 80 * v11 - 48);
    v35 = *(v4 + 22);
    while (1)
    {
      v44 = *v12;
      v13 = v12[1];
      v14 = v12[2];
      v15 = v12[3];
      *&v47[9] = *(v12 + 57);
      v46 = v14;
      *v47 = v15;
      v45 = v13;
      *&v36[0] = a3;
      LODWORD(v13) = *(a3 + 48);
      v16 = v9 * *&v13;
      if (*&v13 == (v9 * *&v13))
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v44, &v39);

        v17 = a3;
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v44, &v39);

        GraphicsContext.copyOnWrite()();
        v17 = *&v36[0];
        *(*&v36[0] + 48) = v16;
      }

      if (v47[24] == 255)
      {
        if (one-time initialization token for normal != -1)
        {
          swift_once();
        }

        v18 = static GraphicsBlendMode.normal;
        v19 = byte_1ED52F818;
        outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
        if (v19)
        {
LABEL_8:
          outlined init with copy of _ShapeStyle_Pack.Effect(&v44, &v39);
          outlined consume of GraphicsBlendMode(v18, 1);
          if ((v47[5] & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v18 = *&v47[16];
        if (v47[24])
        {
          goto LABEL_8;
        }
      }

      if (*(v17 + 52) == v18)
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v44, &v39);
        if ((v47[5] & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        outlined init with copy of _ShapeStyle_Pack.Effect(&v44, &v39);
        GraphicsContext.copyOnWrite()();
        v17 = *&v36[0];
        *(*&v36[0] + 52) = v18;
        if ((v47[5] & 1) == 0)
        {
LABEL_17:
          if ((v47[4] & 8) != 0)
          {
            v20 = *(a3 + 48);
            if (*(v17 + 48) != v20)
            {
              GraphicsContext.copyOnWrite()();
              *(*&v36[0] + 48) = v20;
            }
          }

          GraphicsContext.copyOnWrite()();
          if (*(*(*&v36[0] + 16) + 64) != 2)
          {
            RBColorFromLinear();
          }

          specialized RBShadowFlags.init(_:)(0);
          RBDrawingStateAddShadowStyle3();
          v9 = v35;
        }
      }

LABEL_23:
      outlined destroy of _ShapeStyle_Pack.Effect(&v44);

      if (v11 == 1)
      {
        break;
      }

      --v11;
      v12 -= 5;
      if (v11 > *(v10 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }
    }
  }

  v48 = a3;
  v21 = *(a3 + 48);

  if (v21 != (v9 * v21))
  {
    GraphicsContext.copyOnWrite()();
    a3 = v48;
    *(v48 + 48) = v9 * v21;
  }

  LOBYTE(v10) = v28;
  if (v28 == 255)
  {
LABEL_31:
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v23 = static GraphicsBlendMode.normal;
    v24 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
    v22 = v27;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v22 = v27;
    v23 = v27;
    if (v28)
    {
LABEL_30:
      outlined copy of GraphicsBlendMode?(v22, v10);
      outlined consume of GraphicsBlendMode(v23, 1);
      goto LABEL_36;
    }
  }

  v25 = *(a3 + 52);
  outlined copy of GraphicsBlendMode?(v22, v10);
  if (v25 != v23)
  {
    GraphicsContext.copyOnWrite()();
    *(v48 + 52) = v23;
  }

LABEL_36:
  v41 = v51;
  v42 = v52;
  v43[0] = v53[0];
  *(v43 + 14) = *(v53 + 14);
  v39 = v49;
  v40 = v50;
  v36[0] = v32;
  v36[1] = v31;
  v37 = v30;
  v38 = v29;
  outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v44);
  _ShapeStyle_Pack.Fill.draw(_:style:in:bounds:)(a1, v36, &v48, a4);
  v46 = v41;
  *v47 = v42;
  *&v47[16] = v43[0];
  *&v47[30] = *(v43 + 14);
  v44 = v39;
  v45 = v40;
  outlined destroy of _ShapeStyle_Pack.Fill(&v44);
}

uint64_t _ShapeStyle_Pack.Fill.draw(_:style:in:bounds:)(uint64_t result, _OWORD *a2, uint64_t *a3, uint64_t a4)
{
  v5 = result;
  v192 = *MEMORY[0x1E69E9840];
  v7 = *result;
  v6 = *(result + 16);
  v8 = *(result + 32);
  v9 = *a4;
  v10 = *(a4 + 16);
  v11 = a2[1];
  *v187 = *a2;
  *&v187[16] = v11;
  *&v187[25] = *(a2 + 25);
  v13 = *v4;
  v12 = v4[1];
  v14 = v4[2];
  v15 = v4[3];
  v16 = v4[4];
  v17 = *(v4 + 3);
  v18 = *(v4 + 32);
  v19 = v4[9];
  v20 = *(v4 + 40);
  v21 = *(v4 + 41);
  v22 = *(v4 + 85);
  if (v22 <= 2)
  {
    if (!*(v4 + 85))
    {
      v42 = *a3;
      *&v175 = __PAIR64__(v12, v13);
      *(&v175 + 1) = __PAIR64__(v15, v14);
      *v176 = v16;
      _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v175);
      v172 = v180;
      v173 = v181;
      v174 = v182;
      v168 = *&v176[48];
      v169 = v177;
      v170 = v178;
      v171 = v179;
      *v166 = v175;
      *&v166[16] = *v176;
      *&v166[32] = *&v176[16];
      v167 = *&v176[32];
      v183[0] = *v187;
      v183[1] = *&v187[16];
      *(&v183[1] + 9) = *&v187[25];
      return GraphicsContext.draw(_:with:style:)(v5, v166, v183, v42);
    }

    if (v22 == 1)
    {
      v34 = a2[1];
      v175 = *a2;
      *v176 = v34;
      *&v176[9] = *(a2 + 25);
      return (*(*(v13 | (v12 << 32)) + 80))(result, &v175, *a3, a4);
    }

    *v166 = *v4;
    *&v166[4] = v12;
    *&v166[8] = v14;
    *&v166[12] = v15;
    *&v166[16] = v16;
    v145 = v10;
    v152 = v9;
    if (v18 == 3 && (v17 & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v51 = a3;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&static CoreMaterialCache.shared);
      *&v175 = v17;
      BYTE8(v175) = v18;
      HIDWORD(v175) = v19;
      v176[0] = v20;
      v176[1] = v21;
      outlined copy of Material.ID(v17, v18);
      v43 = CoreMaterialCache.subscript.getter(&v175);
      outlined consume of Material.ID(v175, BYTE8(v175));
      os_unfair_lock_unlock(&static CoreMaterialCache.shared);
      a3 = v51;
      v10.i64[1] = v145.i64[1];
      *(&v9 + 1) = *(&v152 + 1);
    }

    if (*(a4 + 32))
    {
      v52 = *v5;
      v53 = *(v5 + 32);
      if (v53 > 2)
      {
        if (v53 == 5)
        {
          if (*(*&v52 + 16))
          {
            v110 = a3;
            if (*(*&v52 + 16) == 1)
            {

              RBPathGetBoundingRect();
            }

            else
            {

              v111 = MEMORY[0x193AC3640](*&v52 + 24);
            }

            y = v112;
            v145.i64[0] = v113;
            *&v152 = v111;
            height = v114;
            outlined destroy of Path(v5);
            a3 = v110;
          }

          else
          {
            v125 = *(*&v52 + 24);
            if (!v125)
            {
              __break(1u);
              goto LABEL_104;
            }

            v126 = a3;
            v127 = v125;

            PathBoundingBox = CGPathGetPathBoundingBox(v127);
            y = PathBoundingBox.origin.y;
            v145.i64[0] = *&PathBoundingBox.size.width;
            *&v152 = PathBoundingBox.origin.x;
            height = PathBoundingBox.size.height;

            outlined destroy of Path(v5);
            a3 = v126;
          }
        }

        else
        {
          if (v53 != 6)
          {
            goto LABEL_106;
          }

          y = *(MEMORY[0x1E695F050] + 8);
          height = *(MEMORY[0x1E695F050] + 24);
          v145.i64[0] = *(MEMORY[0x1E695F050] + 16);
          *&v152 = *MEMORY[0x1E695F050];
        }
      }

      else if (*(v5 + 32) && v53 != 1)
      {
        y = *(*&v52 + 24);
        height = *(*&v52 + 40);
        v145.i64[0] = *(*&v52 + 32);
        *&v152 = *(*&v52 + 16);
      }

      else
      {
        *&v152 = *v5;
        y = *(v5 + 8);
        v145.i64[0] = *(v5 + 16);
        height = *(v5 + 24);
      }
    }

    else
    {
      y = *(&v9 + 1);
      height = *&v10.i64[1];
    }

    v56 = *a3;
    outlined init with copy of Path(v5, &v175);
    outlined init with copy of PathDrawingStyle(v187, &v175);
    specialized GraphicsContext.drawMaterialEffects(_:in:body:)(v43, v56, v5, v166, v187, *&v152, y, *v145.i64, height);
    outlined destroy of PathDrawingStyle(v187);
    outlined destroy of Path(v5);
  }

  v23 = v4[5];
  if (*(v4 + 85) > 4u)
  {
    if (v22 != 5)
    {
      return result;
    }

    v140 = v4[1];
    v141 = v4[3];
    v144 = v10;
    v151 = v9;
    v188.i64[0] = *a3;

    GraphicsContext.copyOnWrite()();
    v35 = *(*(v188.i64[0] + 16) + 32);
    if (v187[40])
    {
      *(v183 + 2) = *&v187[2];
      *(&v183[1] + 2) = *&v187[18];
      *&v183[2] = *&v187[32];
      LOWORD(v183[0]) = *v187;
      v36 = v35;
      v37 = v35;
      RBShape.setStrokedPath(_:style:)(v5, v183, v38, v39, v40, v41);
    }

    else
    {
      v61 = *(v188.i64[0] + 56);
      v36 = *(*(v188.i64[0] + 16) + 32);
      v62 = v35;
      RBShape.setPath(_:style:shapeDistance:)(v5, v187[0] & 1, v61);
    }

    RBDrawingStateClipShape2();
    *&v175 = __PAIR64__(v140, v13);
    *(&v175 + 1) = __PAIR64__(v141, v14);
    *v176 = v16;
    *&v176[4] = v23;
    *&v176[8] = v17;
    v176[16] = v18;
    *&v176[17] = *(v4 + 33);
    v176[19] = *(v4 + 35);
    *&v176[20] = v19;
    v176[24] = v20;
    v176[25] = v21;
    *&v176[56] = *(v4 + 9);
    *&v176[42] = *(v4 + 58);
    *&v176[26] = *(v4 + 42);
    GraphicsContext.copyOnWrite()();
    v63 = v188.i64[0];
    RBDrawingStateAddColorMatrixFilter();
    if (*(a4 + 32))
    {
      v64 = *v5;
      v65 = *(v5 + 32);
      if (v65 <= 2)
      {
        v66 = *(v5 + 16);
        if (v65 >= 2)
        {
          v64 = *(v64.i64[0] + 16);
          v66 = *(*v5 + 32);
        }

        goto LABEL_52;
      }

      if (v65 == 5)
      {
        v115 = *v5;
        if (*(v64.i64[0] + 16))
        {
          if (*(v64.i64[0] + 16) == 1)
          {

            RBPathGetBoundingRect();
          }

          else
          {

            v116 = MEMORY[0x193AC3640](*&v115 + 24);
          }

          x = v116;
          v162 = v117;
          v142 = v119;
          width = v118;
          goto LABEL_99;
        }

        v128 = *(v64.i64[0] + 24);
        if (v128)
        {
          v129 = v128;

          v194 = CGPathGetPathBoundingBox(v129);
          x = v194.origin.x;
          v162 = v194.origin.y;
          v142 = v194.size.height;
          width = v194.size.width;

LABEL_99:
          outlined destroy of Path(v5);
          *v66.i64 = width;
          *v64.i64 = x;
          *&v66.i64[1] = v142;
          *&v64.i64[1] = v162;
          goto LABEL_52;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (v65 != 6)
      {
        goto LABEL_106;
      }

      v64 = *MEMORY[0x1E695F050];
      v66 = *(MEMORY[0x1E695F050] + 16);
    }

    else
    {
      v66 = v144;
      v64 = v151;
    }

LABEL_52:
    v147 = v66;
    v155 = v64;
    v96 = v64.i64[1];
    v97 = v66.i64[1];
    IsNull = CGRectIsNull(*v64.i8);
    if (IsNull)
    {
      v99 = -1;
    }

    else
    {
      v99 = 0;
    }

    v100 = vdupq_n_s64(v99);
    v156 = vbicq_s8(v155, v100);
    v161 = vbicq_s8(v147, v100);
    *v191 = v156;
    *&v191[16] = v161;
    if (IsNull)
    {
      v101 = 6;
    }

    else
    {
      v101 = 0;
    }

    v191[32] = v101;
    v175 = 0uLL;
    *v176 = 2143289344;
    v176[56] = 0;
    *v166 = 256;
    memset(&v166[8], 0, 33);
    v102 = v191;
    v103 = &v175;
    v104 = v166;
    goto LABEL_67;
  }

  if (v22 == 3)
  {
    v24 = v4[1];
    v25 = v4[3];
    v133 = v7;
    v135 = v6;
    v164 = *a3;

    GraphicsContext.copyOnWrite()();
    v26 = v164;
    v27 = *(*(v164 + 16) + 32);
    v28 = v187[40];
    if (v187[40])
    {
      *(v183 + 2) = *&v187[2];
      *(&v183[1] + 2) = *&v187[18];
      *&v183[2] = *&v187[32];
      LOWORD(v183[0]) = *v187;
      v29 = v27;
      RBShape.setStrokedPath(_:style:)(v5, v183, v30, v31, v32, v33);
    }

    else
    {
      v57 = *(v164 + 56);
      v58 = v27;
      RBShape.setPath(_:style:shapeDistance:)(v5, v187[0] & 1, v57);
    }

    RBDrawingStateClipShape2();
    if (v28)
    {
      *v191 = *v187;
      *&v191[16] = *&v187[16];
      *&v191[32] = *&v187[32];
      Path.strokedPath(_:)(v191, &v184);
      v59 = v185;
      v60 = v184;
      v8 = v186;
    }

    else
    {
      v73 = *(v5 + 16);
      *v191 = *v5;
      *&v191[16] = v73;
      v191[32] = *(v5 + 32);
      outlined init with copy of Path.Storage(v191, &v175);
      v60 = v133;
      v59 = v135;
    }

    v134 = v60;
    v136 = v59;
    v188 = v60;
    v189 = v59;
    v190 = v8;
    *&v175 = __PAIR64__(v24, v13);
    BYTE8(v175) = v14;
    HIDWORD(v175) = v25;
    v132 = Material.ResolvedMaterial.layers.getter();
    v74 = *(v132 + 16);
    v75 = v134.i64[1];
    v76 = v136.i64[1];
    if (v74)
    {
      v77 = v132 + 32;
      v78 = v134.i64[0];
      v79 = v136.i64[0];
      v137 = v8;
      do
      {
        v80 = *v77;
        v81 = *(v77 + 16);
        v82 = *(v77 + 32);
        LOBYTE(v167) = *(v77 + 48);
        *&v166[16] = v81;
        *&v166[32] = v82;
        *v166 = v80;
        outlined init with copy of Material.Layer(v166, &v175);
        outlined copy of Path.Storage(v78, v75, v79, v76, v8);
        v83 = RBDrawingStateBeginLayer();
        type metadata accessor for GraphicsContext.Storage();
        v84 = swift_allocObject();
        *(v84 + 32) = xmmword_18DD85500;
        *(v84 + 48) = 1065353216;
        *(v84 + 56) = 0x7FF8000000000000;
        v85 = v26[2];
        v86 = *(v85 + 64);
        if (v86 == RBDrawingStateGetDefaultColorSpace())
        {
          *(v84 + 16) = v85;
        }

        else
        {
          v139 = RBDrawingStateGetDisplayList();
          v87 = v26[4];
          v88 = v87;
          v154 = v26[5];
          if (v87 == 1)
          {
            v88 = *(v85 + 48);
            v154 = *(v85 + 56);
          }

          v138 = v88;
          type metadata accessor for GraphicsContext.Storage.Shared();
          v89 = swift_allocObject();
          *(v89 + 24) = 0;
          v90 = objc_allocWithZone(MEMORY[0x1E69C7100]);
          outlined copy of EnvironmentValues?(v87);
          *(v89 + 32) = [v90 init];
          *(v89 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
          *(v89 + 72) = 0;
          _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v175);
          v91 = v181;
          *(v89 + 208) = v180;
          *(v89 + 224) = v91;
          *(v89 + 240) = v182;
          v92 = v177;
          *(v89 + 144) = *&v176[48];
          *(v89 + 160) = v92;
          v93 = v179;
          *(v89 + 176) = v178;
          *(v89 + 192) = v93;
          v94 = *v176;
          *(v89 + 80) = v175;
          *(v89 + 96) = v94;
          v95 = *&v176[32];
          *(v89 + 112) = *&v176[16];
          *(v89 + 128) = v95;
          *(v89 + 248) = 2;
          *(v89 + 264) = 0;
          *(v89 + 272) = 0;
          *(v89 + 256) = 0;
          *(v89 + 16) = v139;
          *(v89 + 48) = v138;
          *(v89 + 56) = v154;
          *(v89 + 64) = [v139 defaultColorSpace];
          *(v84 + 16) = v89;
          v8 = v137;
          v26 = v164;
        }

        *(v84 + 24) = v83;
        *(v84 + 64) = 0;
        *&v175 = v84;

        closure #1 in Material.Layer.fill(in:shape:bounds:)(&v175, v166, a4, &v188);

        RBDrawingStateDrawLayer();

        v75 = v134.i64[1];
        v78 = v134.i64[0];
        v76 = v136.i64[1];
        v79 = v136.i64[0];
        outlined consume of Path.Storage(v134.i64[0], v134.i64[1], v136.i64[0], v136.i64[1], v8);
        outlined destroy of Material.Layer(v166);
        v77 += 56;
        --v74;
      }

      while (v74);
    }

    outlined consume of Path.Storage(v134.i64[0], v75, v136.i64[0], v76, v8);
  }

  v146 = v10;
  v153 = v9;
  v184.i64[0] = __PAIR64__(v12, v13);
  v184.i64[1] = __PAIR64__(v15, v14);
  v185.i64[0] = __PAIR64__(v23, v16);
  v44 = a3;
  Color.ResolvedDuotone.colorMatrix.getter(&v175);
  v165 = *v44;

  GraphicsContext.copyOnWrite()();
  v45 = *(*(v165 + 16) + 32);
  if (v187[40])
  {
    *&v191[2] = *&v187[2];
    *&v191[18] = *&v187[18];
    *&v191[32] = *&v187[32];
    *v191 = *v187;
    v46 = v45;
    RBShape.setStrokedPath(_:style:)(v5, v191, v47, v48, v49, v50);
  }

  else
  {
    v67 = *(v165 + 56);
    v68 = v187[0] & 1;
    v69 = v45;
    RBShape.setPath(_:style:shapeDistance:)(v5, v68, v67);
  }

  RBDrawingStateClipShape2();
  *&v166[32] = *&v176[16];
  v167 = *&v176[32];
  v168 = *&v176[48];
  *v166 = v175;
  *&v166[16] = *v176;
  GraphicsContext.copyOnWrite()();
  v63 = v165;
  RBDrawingStateAddColorMatrixFilter();
  if (*(a4 + 32))
  {
    v70 = *v5;
    v71 = *(v5 + 32);
    if (v71 <= 2)
    {
      v72 = *(v5 + 16);
      if (v71 >= 2)
      {
        v70 = *(v70.i64[0] + 16);
        v72 = *(*v5 + 32);
      }

      goto LABEL_60;
    }

    if (v71 == 5)
    {
      v120 = *v5;
      if (*(v70.i64[0] + 16))
      {
        if (*(v70.i64[0] + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v121 = MEMORY[0x193AC3640](*&v120 + 24);
        }

        v159 = v121;
        v163 = v122;
        v143 = v124;
        v150 = v123;
        goto LABEL_102;
      }

      v130 = *(v70.i64[0] + 24);
      if (v130)
      {
        v131 = v130;

        v195 = CGPathGetPathBoundingBox(v131);
        v159 = v195.origin.x;
        v163 = v195.origin.y;
        v143 = v195.size.height;
        v150 = v195.size.width;

LABEL_102:
        outlined destroy of Path(v5);
        *v72.i64 = v150;
        *v70.i64 = v159;
        *&v72.i64[1] = v143;
        *&v70.i64[1] = v163;
        goto LABEL_60;
      }

      goto LABEL_105;
    }

    if (v71 == 6)
    {
      v70 = *MEMORY[0x1E695F050];
      v72 = *(MEMORY[0x1E695F050] + 16);
      goto LABEL_60;
    }

LABEL_106:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v72 = v146;
  v70 = v153;
LABEL_60:
  v148 = v72;
  v157 = v70;
  v105 = v70.i64[1];
  v106 = v72.i64[1];
  v107 = CGRectIsNull(*v70.i8);
  if (v107)
  {
    v108 = -1;
  }

  else
  {
    v108 = 0;
  }

  v109 = vdupq_n_s64(v108);
  v161 = vbicq_s8(v148, v109);
  v189 = v161;
  v156 = vbicq_s8(v157, v109);
  v188 = v156;
  if (v107)
  {
    v101 = 6;
  }

  else
  {
    v101 = 0;
  }

  v190 = v101;
  *v166 = 0uLL;
  *&v166[16] = 2143289344;
  BYTE8(v168) = 0;
  *&v183[0] = 256;
  memset(v183 + 8, 0, 33);
  v102 = &v188;
  v103 = v166;
  v104 = v183;
LABEL_67:
  GraphicsContext.draw(_:with:style:)(v102, v103, v104, v63);
  outlined consume of Path.Storage(v156.i64[0], v156.i64[1], v161.i64[0], v161.i64[1], v101);
}

uint64_t closure #1 in Material.Layer.fill(in:shape:bounds:)(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *(a2 + 36);
  if (v8 != 1.0 && *(*a1 + 48) != v8)
  {
    GraphicsContext.copyOnWrite()();
    *(*a1 + 48) = v8;
  }

  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of GraphicsBlendMode(v9, v10);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v11 = static GraphicsBlendMode.normal;
  v12 = byte_1ED52F818;
  if (v10)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v9, 1);
      outlined consume of GraphicsBlendMode(v11, 1);
      goto LABEL_16;
    }

    swift_unknownObjectRetain();
  }

  else if ((byte_1ED52F818 & 1) == 0)
  {
    outlined consume of GraphicsBlendMode(v9, 0);
    outlined consume of GraphicsBlendMode(v11, 0);
    if (v9 == v11)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  outlined copy of GraphicsBlendMode(v11, v12);
  outlined consume of GraphicsBlendMode(v9, v10);
  outlined consume of GraphicsBlendMode(v11, v12);
  outlined consume of GraphicsBlendMode(v9, v10);
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (*(*a1 + 52) != v9)
  {
    GraphicsContext.copyOnWrite()();
    *(*a1 + 52) = v9;
  }

LABEL_16:
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 1;
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  if (*(a2 + 32) > 1u)
  {
    if (*(a2 + 32) == 2)
    {
      v29 = *(a2 + 8);
      type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PathSet.Element>, &type metadata for PathSet.Element, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      v31 = *a4;
      v32 = *(a4 + 16);
      *(v30 + 16) = xmmword_18DDA6EB0;
      *(v30 + 32) = v31;
      *(v30 + 48) = v32;
      *(v30 + 64) = *(a4 + 32);
      *(v30 + 72) = 0;
      *(v30 + 80) = 0;
      *(v30 + 84) = 0;
      outlined copy of Material.Layer.Storage(v16, v29, v17, v18, 2);

      outlined init with copy of Path(a4, &v75);
      specialized GraphicsContext.drawSDFStyle<A>(_:ovalization:renderer:bounds:content:)(v16, v30, 0, 0, a1, a3, v30, 0.0, 0.0);

      outlined consume of Material.Layer.Storage(v16, v29, v17, v18, 2);
    }
  }

  v65 = *(a2 + 16);
  v66 = *(a2 + 8);
  if (!*(a2 + 32))
  {
    v19 = HIDWORD(v15);
    v63 = *a1;
    getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(v13, a3, a4);
    x = v91.origin.x;
    y = v91.origin.y;
    width = v91.size.width;
    height = v91.size.height;
    if (CGRectIsNull(v91))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 6;
    }

    else
    {
      v28 = 0;
      v24 = *&x;
      v25 = *&y;
      v26 = *&width;
      v27 = *&height;
    }

    v89[0] = v24;
    v89[1] = v25;
    v89[2] = v26;
    v89[3] = v27;
    v90 = v28;
    *&v75 = v16;
    *(&v75 + 1) = __PAIR64__(v19, v66);
    LODWORD(v76) = v65;
    _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v75);
    v72 = v82;
    v73 = v83;
    v74 = v84;
    v69 = v79;
    v70 = v80;
    *v71 = *v81;
    *&v71[16] = *&v81[16];
    *v67 = v75;
    *&v67[16] = v76;
    *&v67[32] = v77;
    v68 = v78;
    v85 = 256;
    v86 = 0u;
    v87 = 0u;
    v88 = 0;
    GraphicsContext.draw(_:with:style:)(v89, v67, &v85, v63);
    outlined consume of Path.Storage(v24, v25, v26, v27, v28);
  }

  v62 = HIDWORD(v16);
  v64 = HIDWORD(v15);
  v34 = *(v18 + 16);
  v61 = HIDWORD(v17);
  if (v34)
  {

    v35 = (v18 + (v34 << 7) - 96);
    for (i = v34 - 1; ; --i)
    {
      v37 = *v35;
      v38 = v35[1];
      v39 = v35[3];
      v77 = v35[2];
      v78 = v39;
      v75 = v37;
      v76 = v38;
      v40 = v35[4];
      v41 = v35[5];
      v42 = v35[6];
      *&v81[12] = *(v35 + 108);
      v80 = v41;
      *v81 = v42;
      v79 = v40;
      v43 = v35[5];
      v69 = v35[4];
      v70 = v43;
      *v71 = v35[6];
      *&v71[12] = *(v35 + 108);
      v44 = v35[1];
      *v67 = *v35;
      *&v67[16] = v44;
      v45 = v35[3];
      *&v67[32] = v35[2];
      v68 = v45;
      outlined init with copy of GraphicsFilter(&v75, &v85);
      getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(v14, a3, a4);
      GraphicsContext.addFilter(_:in:)(v67, v46, v47, v48, v49);
      outlined destroy of GraphicsFilter(&v75);
      if (!i)
      {
        break;
      }

      v35 -= 8;
    }
  }

  else
  {
  }

  v50 = *a1;
  getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(v14, a3, a4);
  v51 = v92.origin.x;
  v52 = v92.origin.y;
  v53 = v92.size.width;
  v54 = v92.size.height;
  IsNull = CGRectIsNull(v92);
  outlined consume of Material.Layer.Storage(v16, v66, v65, v18, 1);
  if (IsNull)
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 6;
  }

  else
  {
    v60 = 0;
    v56 = *&v51;
    v57 = *&v52;
    v58 = *&v53;
    v59 = *&v54;
  }

  v85 = v56;
  *&v86 = v57;
  *(&v86 + 1) = v58;
  *&v87 = v59;
  BYTE8(v87) = v60;
  *&v75 = __PAIR64__(v66, v62);
  *(&v75 + 1) = __PAIR64__(v65, v64);
  LODWORD(v76) = v61;
  BYTE8(v79) = 0;
  *v67 = 256;
  memset(&v67[8], 0, 33);
  GraphicsContext.draw(_:with:style:)(&v85, &v75, v67, v50);
  outlined consume of Path.Storage(v56, v57, v58, v59, v60);
}

uint64_t getter of boundingRect #1 in closure #1 in Material.Layer.fill(in:shape:bounds:)(uint64_t result, __int128 *a2, uint64_t a3)
{
  if (*(result + 48))
  {
    if ((a2[2] & 1) == 0)
    {
      v5 = *a2;
      v6 = a2[1];
      goto LABEL_9;
    }

    v3 = *a3;
    v4 = *(a3 + 32);
    if (v4 <= 2)
    {
      if (!*(a3 + 32) || v4 == 1)
      {
        v25 = *(a3 + 16);
        v28 = *a3;
LABEL_10:
        v7 = result;
        result = swift_beginAccess();
        *(v7 + 16) = v28;
        *(v7 + 32) = v25;
        *(v7 + 48) = 0;
        return result;
      }

      v5 = *(v3 + 16);
      v6 = *(*a3 + 32);
LABEL_9:
      v25 = v6;
      v28 = v5;
      goto LABEL_10;
    }

    if (v4 == 5)
    {
      v8 = *a3;
      if (*(v3 + 16))
      {
        v10 = result;
        if (*(v3 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v11 = MEMORY[0x193AC3640](v8 + 24);
        }

        v27 = v13;
        v30 = v11;
        v22 = v14;
        v24 = v12;
        outlined destroy of Path(a3);
        *&v20 = v27;
        *(&v20 + 1) = v22;
        v25 = v20;
        *&v20 = v30;
        *(&v20 + 1) = v24;
        v28 = v20;
        result = v10;
        goto LABEL_10;
      }

      v15 = *(v3 + 24);
      if (v15)
      {
        v17 = result;
        v18 = v15;

        PathBoundingBox = CGPathGetPathBoundingBox(v18);
        width = PathBoundingBox.size.width;
        x = PathBoundingBox.origin.x;
        height = PathBoundingBox.size.height;
        y = PathBoundingBox.origin.y;

        outlined destroy of Path(a3);
        *&v19 = width;
        *(&v19 + 1) = height;
        v25 = v19;
        *&v19 = x;
        *(&v19 + 1) = y;
        v28 = v19;
        result = v17;
        goto LABEL_10;
      }

      __break(1u);
    }

    else if (v4 == 6)
    {
      v5 = *MEMORY[0x1E695F050];
      v6 = *(MEMORY[0x1E695F050] + 16);
      goto LABEL_9;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized GraphicsContext.drawMaterialEffects(_:in:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v10 = a3;
  v11 = a2;
  v66 = *a4;
  v13 = *(a4 + 16);
  v81 = a2;
  v14 = *(a1 + 16);
  if (v14)
  {

    v19 = (a1 + 44);
    v65 = a5;
    do
    {
      v23 = *(v19 - 12);
      v24 = *v19;
      switch(v24)
      {
        case 10:
          v20 = v23[6];
          v75 = v23[5];
          v76 = v20;
          *v77 = v23[7];
          *&v77[12] = *(v23 + 124);
          v21 = v23[2];
          v71 = v23[1];
          v72 = v21;
          v22 = v23[4];
          v73 = v23[3];
          v74 = v22;
          GraphicsContext.addFilter(_:in:)(&v71, a6, a7, a8, a9);
          break;
        case 5:
          v26 = *(v19 - 1);
          if ((v26 & 1) == 0)
          {
            v27 = v81;
            if (*(v81 + 52) != v23)
            {
              outlined copy of GraphicsBlendMode(*(v19 - 12), 0);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v28 = v27;
              }

              else
              {
                v33 = RBDrawingStateInit();
                type metadata accessor for GraphicsContext.Storage();
                v28 = swift_allocObject();
                *(v28 + 32) = xmmword_18DD85500;
                *(v28 + 48) = 1065353216;
                *(v28 + 56) = 0x7FF8000000000000;
                v34 = *(v27 + 16);
                v35 = *(v34 + 64);
                if (v35 == RBDrawingStateGetDefaultColorSpace())
                {
                  *(v28 + 16) = v34;
                }

                else
                {
                  v46 = RBDrawingStateGetDisplayList();
                  v47 = *(v27 + 32);
                  v48 = v47;
                  v60 = v46;
                  v62 = *(v27 + 40);
                  if (v47 == 1)
                  {
                    v48 = *(v34 + 48);
                    v62 = *(v34 + 56);
                  }

                  v58 = v48;
                  type metadata accessor for GraphicsContext.Storage.Shared();
                  v49 = swift_allocObject();
                  *(v49 + 24) = 0;
                  v50 = objc_allocWithZone(MEMORY[0x1E69C7100]);
                  outlined copy of EnvironmentValues?(v47);
                  *(v49 + 32) = [v50 init];
                  *(v49 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
                  *(v49 + 72) = 0;
                  _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v71);
                  v51 = v79;
                  *(v49 + 208) = v78;
                  *(v49 + 224) = v51;
                  *(v49 + 240) = v80;
                  v52 = v76;
                  *(v49 + 144) = v75;
                  *(v49 + 160) = v52;
                  v53 = *&v77[16];
                  *(v49 + 176) = *v77;
                  *(v49 + 192) = v53;
                  v54 = v72;
                  *(v49 + 80) = v71;
                  *(v49 + 96) = v54;
                  v55 = v74;
                  *(v49 + 112) = v73;
                  *(v49 + 128) = v55;
                  *(v49 + 248) = 2;
                  *(v49 + 264) = 0;
                  *(v49 + 272) = 0;
                  *(v49 + 256) = 0;
                  *(v49 + 16) = v60;
                  *(v49 + 48) = v58;
                  *(v49 + 56) = v62;
                  *(v49 + 64) = [v60 defaultColorSpace];
                  *(v28 + 16) = v49;
                  a5 = v65;
                }

                *(v28 + 24) = v33;
                *(v28 + 64) = 1;
                *(v28 + 48) = *(v27 + 48);
                *(v28 + 52) = *(v27 + 52);

                v81 = v28;
              }

              *(v28 + 52) = v23;
              outlined consume of DisplayList.Effect(v23, v26, 5);
            }
          }

          break;
        case 4:
          v25 = v81;
          if (*(v81 + 48) != *&v23)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              *(v25 + 48) = v23;
            }

            else
            {
              v29 = RBDrawingStateInit();
              type metadata accessor for GraphicsContext.Storage();
              v30 = swift_allocObject();
              *(v30 + 32) = xmmword_18DD85500;
              *(v30 + 48) = 1065353216;
              *(v30 + 56) = 0x7FF8000000000000;
              v31 = *(v25 + 16);
              v32 = *(v31 + 64);
              if (v32 == RBDrawingStateGetDefaultColorSpace())
              {
                *(v30 + 16) = v31;
              }

              else
              {
                v36 = RBDrawingStateGetDisplayList();
                v37 = *(v25 + 32);
                v38 = v37;
                v61 = v36;
                v63 = *(v25 + 40);
                if (v37 == 1)
                {
                  v38 = *(v31 + 48);
                  v63 = *(v31 + 56);
                }

                v59 = v38;
                type metadata accessor for GraphicsContext.Storage.Shared();
                v39 = swift_allocObject();
                *(v39 + 24) = 0;
                v40 = objc_allocWithZone(MEMORY[0x1E69C7100]);
                outlined copy of EnvironmentValues?(v37);
                *(v39 + 32) = [v40 init];
                *(v39 + 40) = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
                *(v39 + 72) = 0;
                _s7SwiftUI15GraphicsContextV15ResolvedShadingOSgWOi0_(&v71);
                v41 = v79;
                *(v39 + 208) = v78;
                *(v39 + 224) = v41;
                *(v39 + 240) = v80;
                v42 = v76;
                *(v39 + 144) = v75;
                *(v39 + 160) = v42;
                v43 = *&v77[16];
                *(v39 + 176) = *v77;
                *(v39 + 192) = v43;
                v44 = v72;
                *(v39 + 80) = v71;
                *(v39 + 96) = v44;
                v45 = v74;
                *(v39 + 112) = v73;
                *(v39 + 128) = v45;
                *(v39 + 248) = 2;
                *(v39 + 264) = 0;
                *(v39 + 272) = 0;
                *(v39 + 256) = 0;
                *(v39 + 16) = v61;
                *(v39 + 48) = v59;
                *(v39 + 56) = v63;
                *(v39 + 64) = [v61 defaultColorSpace];
                *(v30 + 16) = v39;
                a5 = v65;
              }

              *(v30 + 24) = v29;
              *(v30 + 64) = 1;
              *(v30 + 48) = *(v25 + 48);
              *(v30 + 52) = *(v25 + 52);

              v81 = v30;
              *(v30 + 48) = v23;
            }
          }

          break;
      }

      v19 += 16;
      --v14;
    }

    while (v14);
    v11 = v81;
    v10 = a3;
  }

  else
  {
  }

  v71 = v66;
  LODWORD(v72) = v13;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v71);
  v69[8] = v78;
  v69[9] = v79;
  v70 = v80;
  v69[4] = v75;
  v69[5] = v76;
  v69[6] = *v77;
  v69[7] = *&v77[16];
  v69[0] = v71;
  v69[1] = v72;
  v69[2] = v73;
  v69[3] = v74;
  v56 = a5[1];
  v67 = *a5;
  v68[0] = v56;
  *(v68 + 9) = *(a5 + 25);
  GraphicsContext.draw(_:with:style:)(v10, v69, &v67, v11);
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedShape(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v20 = *(a2 + 64);
  v21 = *(a2 + 72);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  v24 = *(a2 + 96);
  v25 = *(a2 + 104);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23, v24, v25);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v20;
  *(a1 + 72) = v21;
  *(a1 + 80) = v22;
  *(a1 + 88) = v23;
  *(a1 + 96) = v24;
  *(a1 + 104) = v25;
  *(a1 + 108) = *(a2 + 108);
  v12 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v12;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v13 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v13;
  v14 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  v15 = *(a2 + 208);
  v16 = *(a2 + 216);
  v17 = *(a2 + 224);

  outlined copy of DisplayList.Item.Value(v14, v15, v16, v17);
  *(a1 + 200) = v14;
  *(a1 + 208) = v15;
  *(a1 + 216) = v16;
  *(a1 + 224) = v17;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  v18 = *(a2 + 248);
  LOBYTE(v15) = *(a2 + 256);
  outlined copy of GraphicsBlendMode(v18, v15);
  *(a1 + 248) = v18;
  *(a1 + 256) = v15;
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_RenderedShape(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v36 = *(a2 + 64);
  v37 = *(a2 + 72);
  v38 = *(a2 + 80);
  v39 = *(a2 + 88);
  v40 = *(a2 + 96);
  v41 = *(a2 + 104);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v5, v6, v7, v8, v9, v10, v11, v36, v37, v38, v39, v40, v41);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v36;
  *(a1 + 72) = v37;
  *(a1 + 80) = v38;
  *(a1 + 88) = v39;
  *(a1 + 96) = v40;
  *(a1 + 104) = v41;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v24 = *(a2 + 200);
  v25 = *(a2 + 208);
  v26 = *(a2 + 216);
  v27 = *(a2 + 224);
  outlined copy of DisplayList.Item.Value(v24, v25, v26, v27);
  v28 = *(a1 + 200);
  v29 = *(a1 + 208);
  v30 = *(a1 + 216);
  v31 = *(a1 + 224);
  *(a1 + 200) = v24;
  *(a1 + 208) = v25;
  *(a1 + 216) = v26;
  *(a1 + 224) = v27;
  outlined consume of DisplayList.Item.Value(v28, v29, v30, v31);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  v32 = *(a2 + 248);
  LOBYTE(v25) = *(a2 + 256);
  outlined copy of GraphicsBlendMode(v32, v25);
  v33 = *(a1 + 248);
  v34 = *(a1 + 256);
  *(a1 + 248) = v32;
  *(a1 + 256) = v25;
  outlined consume of GraphicsBlendMode(v33, v34);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_RenderedShape(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  v5 = *(a2 + 104);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  v19 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v19;
  v20 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v20;
  *(a1 + 96) = v4;
  *(a1 + 104) = v5;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v6, v7, v8, v9, v10, v11, v12, v13, v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v17);
  *(a1 + 108) = *(a2 + 108);
  v21 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v21;
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  v22 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v22;
  v23 = *(a2 + 224);
  v24 = *(a1 + 200);
  v25 = *(a1 + 208);
  v26 = *(a1 + 216);
  v27 = *(a1 + 224);
  v28 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v28;
  *(a1 + 224) = v23;
  outlined consume of DisplayList.Item.Value(v24, v25, v26, v27);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  v29 = *(a2 + 256);
  v30 = *(a1 + 248);
  v31 = *(a1 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = v29;
  outlined consume of GraphicsBlendMode(v30, v31);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_RenderedShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 265))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = (8 * *(a1 + 104)) & 0x7E00000 | (32 * *(a1 + 104)) & 0x1FC000 | (*(a1 + 104) >> 26 << 27) | *(a1 + 66) & 0x3FFF;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedShape(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 264) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 265) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (-a2 >> 2) << 16;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = ((v4 >> 2) >> 5) & 0xFE00 | ((v4 >> 2) >> 3) & 0xFC0000 | ((v4 >> 2) >> 27 << 26);
      return result;
    }

    *(a1 + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_RenderedShape.Shape(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v28 = *(a2 + 96);
  v29 = *(a2 + 104);
  outlined copy of _ShapeStyle_RenderedShape.Shape(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v25, v26, v27, v28, v29);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  *(a1 + 88) = v27;
  *(a1 + 96) = v28;
  *(a1 + 104) = v29;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_RenderedShape.Shape(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = v3;
  *(a1 + 104) = v4;
  outlined consume of _ShapeStyle_RenderedShape.Shape(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_RenderedShape.Shape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = (8 * *(a1 + 104)) & 0x7E00000 | (32 * *(a1 + 104)) & 0x1FC000 | (*(a1 + 104) >> 26 << 27) | *(a1 + 66) & 0x3FFF;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedShape.Shape(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 108) = 1;
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
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = (-a2 >> 2) << 16;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = ((v4 >> 2) >> 5) & 0xFE00 | ((v4 >> 2) >> 3) & 0xFC0000 | ((v4 >> 2) >> 27 << 26);
      return result;
    }

    *(a1 + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_RenderedShape.Shape(_DWORD *a1)
{
  v1 = a1[26] >> 29;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_RenderedShape.Shape(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 104) & 0x30301FF | (a2 << 29);
    *(result + 64) &= 0xFFFFFFFFC000FFFFLL;
    *(result + 104) = v2;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = -1610612736;
  }

  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_RenderedLayers(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);

  outlined copy of _ShapeStyle_RenderedLayers.Layers(v3, v4, v5, v6, v7, v8, v9, v12, v10);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v12;
  *(a1 + 72) = v10;
  *(a1 + 80) = v13;
  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_RenderedLayers(uint64_t a1, void *a2)
{
  v2 = a2;
  *a1 = *a2;

  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v22 = v2[9];
  LODWORD(v2) = *(v2 + 20);
  outlined copy of _ShapeStyle_RenderedLayers.Layers(v4, v5, v6, v7, v8, v9, v10, v11, v22);
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v22;
  *(a1 + 80) = v2;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_RenderedLayers(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_RenderedLayers(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 37) & 0x7FFFFFF | (BYTE2(*(a1 + 72)) << 27);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedLayers(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 80) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 84) = 1;
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
      result = 0.0;
      *(a1 + 40) = 0u;
      v4 = -a2;
      *(a1 + 24) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 56) = v4 << 37;
      *(a1 + 64) = 0;
      *(a1 + 72) = (v4 >> 11) & 0x1F0000;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _ShapeStyle_LayerID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_LayerID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of _ShapeStyle_LayerID(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_LayerID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of _ShapeStyle_LayerID(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_LayerID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_LayerID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_LayerID(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_LayerID(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t initializeWithCopy for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 20);
  if (*(a2 + 136))
  {
    v26 = *(a2 + 136);
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    v11 = *(a2 + 56);
    v12 = *(a2 + 64);
    v13 = *(a2 + 72);
    v14 = *(a2 + 80);
    v21 = *(a2 + 88);
    v22 = *(a2 + 96);
    v24 = *(a2 + 108);
    v25 = *(a2 + 104);
    v23 = *(a2 + 109);
    outlined copy of _ShapeStyle_Pack.Fill(v7, v8, v9, v10, v11, v12, v13, v14, v21, v22, v25 | (v24 << 32), v23);
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v21;
    *(a1 + 96) = v22;
    *(a1 + 108) = v24;
    *(a1 + 104) = v25;
    *(a1 + 109) = v23;
    *(a1 + 112) = *(a2 + 112);
    v15 = *(a2 + 128);
    if (v15 == 255)
    {
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
    }

    else
    {
      v16 = *(a2 + 120);
      v17 = v15 & 1;
      outlined copy of GraphicsBlendMode(v16, v15 & 1);
      *(a1 + 120) = v16;
      *(a1 + 128) = v17;
    }

    *(a1 + 136) = v26;
  }

  else
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  v18 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v18;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  v19 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v19;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 227) = *(a2 + 227);

  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of _ShapeStyle_LayerID(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v9 = *(a1 + 16);
  *(a1 + 16) = v6;
  outlined consume of _ShapeStyle_LayerID(v7, v8, v9);
  *(a1 + 20) = *(a2 + 20);
  v10 = *(a2 + 136);
  if (*(a1 + 136))
  {
    if (v10)
    {
      v66 = *(a2 + 32);
      v68 = *(a2 + 24);
      v11 = *(a2 + 40);
      v65 = *(a2 + 48);
      v12 = *(a2 + 56);
      v13 = *(a2 + 64);
      v14 = *(a2 + 72);
      v15 = *(a2 + 80);
      v70 = *(a2 + 88);
      v72 = *(a2 + 96);
      v74 = *(a2 + 108);
      v16 = *(a2 + 104);
      v17 = *(a2 + 109);
      outlined copy of _ShapeStyle_Pack.Fill(v68, v66, v11, v65, v12, v13, v14, v15, v70, v72, v16 | (v74 << 32), v17);
      v18 = *(a1 + 24);
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v25 = *(a1 + 80);
      v26 = *(a1 + 88);
      v27 = *(a1 + 96);
      v28 = *(a1 + 104) | (*(a1 + 108) << 32);
      v29 = *(a1 + 109);
      *(a1 + 24) = v68;
      *(a1 + 32) = v66;
      *(a1 + 40) = v11;
      *(a1 + 48) = v65;
      *(a1 + 56) = v12;
      *(a1 + 64) = v13;
      *(a1 + 72) = v14;
      *(a1 + 80) = v15;
      *(a1 + 88) = v70;
      *(a1 + 96) = v72;
      *(a1 + 104) = v16;
      *(a1 + 108) = v74;
      *(a1 + 109) = v17;
      outlined consume of _ShapeStyle_Pack.Fill(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
      *(a1 + 112) = *(a2 + 112);
      v30 = *(a2 + 128);
      if (*(a1 + 128) == 255)
      {
        if (v30 == 255)
        {
          v62 = *(a2 + 120);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 120) = v62;
        }

        else
        {
          v52 = *(a2 + 120);
          v53 = v30 & 1;
          outlined copy of GraphicsBlendMode(v52, v30 & 1);
          *(a1 + 120) = v52;
          *(a1 + 128) = v53;
        }
      }

      else if (v30 == 255)
      {
        outlined destroy of GraphicsBlendMode(a1 + 120);
        v60 = *(a2 + 128);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 128) = v60;
      }

      else
      {
        v31 = *(a2 + 120);
        v32 = v30 & 1;
        outlined copy of GraphicsBlendMode(v31, v30 & 1);
        v33 = *(a1 + 120);
        v34 = *(a1 + 128);
        *(a1 + 120) = v31;
        *(a1 + 128) = v32;
        outlined consume of GraphicsBlendMode(v33, v34);
      }

      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      outlined destroy of _ShapeStyle_Pack.Style(a1 + 24);
      v46 = *(a2 + 40);
      v47 = *(a2 + 56);
      v48 = *(a2 + 72);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 72) = v48;
      *(a1 + 56) = v47;
      *(a1 + 40) = v46;
      v49 = *(a2 + 104);
      v50 = *(a2 + 120);
      v51 = *(a2 + 136);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 136) = v51;
      *(a1 + 120) = v50;
      *(a1 + 104) = v49;
    }
  }

  else if (v10)
  {
    v35 = *(a2 + 24);
    v36 = *(a2 + 32);
    v38 = *(a2 + 40);
    v37 = *(a2 + 48);
    v39 = *(a2 + 56);
    v40 = *(a2 + 64);
    v42 = *(a2 + 72);
    v41 = *(a2 + 80);
    v67 = *(a2 + 88);
    v69 = *(a2 + 96);
    v73 = *(a2 + 108);
    v75 = *(a2 + 104);
    v71 = *(a2 + 109);
    outlined copy of _ShapeStyle_Pack.Fill(v35, v36, v38, v37, v39, v40, v42, v41, v67, v69, v75 | (v73 << 32), v71);
    *(a1 + 24) = v35;
    *(a1 + 32) = v36;
    *(a1 + 40) = v38;
    *(a1 + 48) = v37;
    *(a1 + 56) = v39;
    *(a1 + 64) = v40;
    *(a1 + 72) = v42;
    *(a1 + 80) = v41;
    *(a1 + 88) = v67;
    *(a1 + 96) = v69;
    *(a1 + 108) = v73;
    *(a1 + 104) = v75;
    *(a1 + 109) = v71;
    *(a1 + 112) = *(a2 + 112);
    v43 = *(a2 + 128);
    if (v43 == 255)
    {
      v61 = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 120) = v61;
    }

    else
    {
      v44 = *(a2 + 120);
      v45 = v43 & 1;
      outlined copy of GraphicsBlendMode(v44, v43 & 1);
      *(a1 + 120) = v44;
      *(a1 + 128) = v45;
    }

    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    v54 = *(a2 + 24);
    v55 = *(a2 + 40);
    v56 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v56;
    *(a1 + 40) = v55;
    *(a1 + 24) = v54;
    v57 = *(a2 + 88);
    v58 = *(a2 + 104);
    v59 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v59;
    *(a1 + 104) = v58;
    *(a1 + 88) = v57;
  }

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 184) = *(a2 + 184);
  v63 = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 192) = v63;
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 228) = *(a2 + 228);
  return a1;
}

__n128 __swift_memcpy229_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 221) = *(a2 + 221);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t assignWithTake for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = *a2;
  v7 = *(a1 + 16);
  *(a1 + 16) = v4;
  outlined consume of _ShapeStyle_LayerID(v5, v6, v7);
  *(a1 + 20) = *(a2 + 20);
  if (*(a1 + 136))
  {
    v8 = *(a2 + 136);
    if (v8)
    {
      v9 = *(a2 + 108);
      v10 = *(a2 + 104);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      v19 = *(a1 + 88);
      v20 = *(a1 + 96);
      v21 = *(a1 + 104) | (*(a1 + 108) << 32);
      v22 = *(a1 + 109);
      v23 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v23;
      v24 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v24;
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v10;
      *(a1 + 108) = v9;
      outlined consume of _ShapeStyle_Pack.Fill(v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
      *(a1 + 112) = *(a2 + 112);
      v25 = *(a1 + 128);
      if (v25 != 255)
      {
        v26 = *(a2 + 128);
        if (v26 != 255)
        {
          v27 = *(a1 + 120);
          *(a1 + 120) = *(a2 + 120);
          *(a1 + 128) = v26 & 1;
          outlined consume of GraphicsBlendMode(v27, v25 & 1);
LABEL_10:
          *(a1 + 136) = v8;

          goto LABEL_11;
        }

        outlined destroy of GraphicsBlendMode(a1 + 120);
      }

      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      goto LABEL_10;
    }

    outlined destroy of _ShapeStyle_Pack.Style(a1 + 24);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  swift_unknownObjectRelease();
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 228) = *(a2 + 228);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShapeStyle_InterpolatorGroup.Layer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 229))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _ShapeStyle_InterpolatorGroup.Layer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *(result + 228) = 0;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 229) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 229) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v22 = *(a2 + 72);
  outlined copy of _ShapeStyle_RenderedLayers.Layers(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v22;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

uint64_t assignWithTake for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v14;
  v15 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v15;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  outlined consume of _ShapeStyle_RenderedLayers.Layers(v5, v7, v6, v8, v9, v10, v11, v12, v13);
  return a1;
}

double storeEnumTagSinglePayload for _ShapeStyle_RenderedLayers.Layers(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 76) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      v4 = -a2;
      *a1 = 0u;
      *(a1 + 48) = v4 << 37;
      *(a1 + 56) = 0;
      *(a1 + 64) = (v4 >> 11) & 0x1F0000;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for _ShapeStyle_RenderedLayers.Layers(_DWORD *a1)
{
  v1 = a1[16];
  if (((v1 >> 28) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (v1 >> 28) & 3;
  }
}

uint64_t destructiveInjectEnumTag for _ShapeStyle_RenderedLayers.Layers(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 64) & 0xFFFFFFFFC000FFFFLL | (a2 << 28);
    *(result + 48) &= 0x1FFFFFFFFFuLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = 0x20000000;
    *(result + 72) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds()
{
  result = lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds;
  if (!lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeStyle_RenderedShape.LayerNeeds and conformance _ShapeStyle_RenderedShape.LayerNeeds);
  }

  return result;
}

uint64_t assignWithCopy for CompositedItemAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  outlined copy of GraphicsBlendMode(v4, v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  outlined consume of GraphicsBlendMode(v6, v7);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for CompositedItemAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  outlined consume of GraphicsBlendMode(v5, v6);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

uint64_t getEnumTagSinglePayload for CompositedItemAccumulator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CompositedItemAccumulator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider()
{
  result = lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider;
  if (!lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider;
  if (!lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider;
  if (!lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color.KeyColorProvider and conformance Color.KeyColorProvider()
{
  result = lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider;
  if (!lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider;
  if (!lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider;
  if (!lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color.KeyColorProvider and conformance Color.KeyColorProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.KeyColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.KeyColorProvider and conformance Color.KeyColorProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.CustomKeyColorProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.CustomKeyColorProvider and conformance Color.CustomKeyColorProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized ShapeStyledLeafView.contains(points:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  _ShapeSet.Wrapper.pathSet(in:)(&v17, a4, a5);
  v10 = 0;
  if (a1 && a2)
  {
    v11 = 0;
    v12 = 16 * a2;
    v13 = a1 + 8;
    do
    {
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = a4;
      v18.size.height = a5;
      v14 = CGRectContainsPoint(v18, *(v13 - 8));
      if (v11 < 0x41)
      {
        if (v11 == 64)
        {
          v15 = 0;
          if (!v14)
          {
LABEL_11:
            v10 &= ~v15;
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 1 << v11;
          if (!v14)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v15 = 0;
        if (!v14)
        {
          goto LABEL_11;
        }
      }

      v10 |= v15;
LABEL_5:
      v13 += 16;
      ++v11;
      v12 -= 16;
    }

    while (v12);
  }

  *a3 = v10;
  return result;
}

uint64_t specialized ShapeStyledLeafView.contains(points:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>)
{
  v9 = result;
  if (a3)
  {
    v11 = *(*a3 + 120);

    v13 = v11(v12);
    v17 = CGRect.outset(by:)(v13, v14, v15, v16, 0.0, 0.0, a5, a6);
    v19 = v18;
    a5 = v20;
    a6 = v21;

    v22 = 0;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = 0.0;
    v19 = 0.0;
    v22 = 0;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  if (a2)
  {
    v23 = 0;
    v24 = 16 * a2;
    v25 = v9 + 8;
    do
    {
      v27.origin.x = v17;
      v27.origin.y = v19;
      v27.size.width = a5;
      v27.size.height = a6;
      result = CGRectContainsPoint(v27, *(v25 - 8));
      if (v23 < 0x41)
      {
        if (v23 == 64)
        {
          v26 = 0;
          if ((result & 1) == 0)
          {
LABEL_14:
            v22 &= ~v26;
            goto LABEL_8;
          }
        }

        else
        {
          v26 = 1 << v23;
          if ((result & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v26 = 0;
        if (!result)
        {
          goto LABEL_14;
        }
      }

      v22 |= v26;
LABEL_8:
      v25 += 16;
      ++v23;
      v24 -= 16;
    }

    while (v24);
  }

LABEL_17:
  *a4 = v22;
  return result;
}

uint64_t specialized ShapeStyledLeafView.contains(points:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = a5;
  v7 = a4;
  v9 = result;
  v11 = *(v5 + 19);
  if (*(v5 + 161) == 3 || v11 == 0)
  {
    *&v39[12] = *(v5 + 92);
    v13 = v5[5];
    v38 = v5[4];
    *v39 = v13;
    v14 = v5[1];
    v34 = *v5;
    v35 = v14;
    v15 = v5[3];
    v36 = v5[2];
    v37 = v15;
    v16 = 0.0;
    v17 = 0.0;
    if (v39[24] == 2)
    {
      v7 = 0.0;
      if (v11)
      {
        v16 = v11[6];
        v17 = v11[7];
      }

      if (*&v35 != 0.0)
      {
        v31 = *(&v35 + 1);
        if (BYTE8(v36) <= 3u)
        {
          v32 = *&v36;
        }

        else
        {
          v32 = *(&v35 + 1);
        }

        if (BYTE8(v36) > 3u)
        {
          v31 = *&v36;
        }

        v7 = 1.0 / *&v35 * v31;
        v6 = 1.0 / *&v35 * v32;
        if (!result)
        {
          goto LABEL_36;
        }

LABEL_12:
        if (a2)
        {
          outlined init with copy of GraphicsImage(&v34, v33);
          v18 = 0;
          v19 = 0;
          v20 = 16 * a2;
          v21 = v9 + 8;
          while (1)
          {
            v40.origin.x = v16;
            v40.origin.y = v17;
            v40.size.width = v7;
            v40.size.height = v6;
            v22 = CGRectContainsPoint(v40, *(v21 - 8));
            if (v19 < 0x41)
            {
              if (v19 == 64)
              {
                v23 = 0;
                if (!v22)
                {
LABEL_21:
                  v18 &= ~v23;
                  goto LABEL_15;
                }
              }

              else
              {
                v23 = 1 << v19;
                if (!v22)
                {
                  goto LABEL_21;
                }
              }
            }

            else
            {
              v23 = 0;
              if (!v22)
              {
                goto LABEL_21;
              }
            }

            v18 |= v23;
LABEL_15:
            v21 += 16;
            ++v19;
            v20 -= 16;
            if (!v20)
            {
              result = outlined destroy of GraphicsImage(&v34);
              *a3 = v18;
              return result;
            }
          }
        }

LABEL_36:
        *a3 = 0;
        return result;
      }

      v6 = 0.0;
    }

    if (!result)
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  v24 = *(v5 + 41);
  v25 = *(v5 + 168);
  v26 = v11[8] * (a4 / v11[4]);
  v27 = v11[9] * (a5 / v11[5]);
  v33[0] = *(v5 + 161);
  LOBYTE(v34) = v25;
  SymbolVariants.Shape.path(in:cornerRadius:)(v24 | (v25 << 32), &v34, 0.0, 0.0, v26, v27);
  if (!v9 || !a2)
  {
LABEL_35:
    result = outlined destroy of Path(&v34);
    goto LABEL_36;
  }

  v28 = 0;
  v29 = v9 + 8;
  v30 = 16 * a2 - 16;
  while (v28)
  {
    if (!v30)
    {
      goto LABEL_34;
    }

    v28 = 1;
LABEL_28:
    v29 += 16;
    v30 -= 16;
  }

  v41.origin.x = 0.0;
  v41.origin.y = 0.0;
  v41.size.width = v26;
  v41.size.height = v27;
  v28 = CGRectContainsPoint(v41, *(v29 - 8));
  if (v30)
  {
    goto LABEL_28;
  }

  if (!v28)
  {
    goto LABEL_35;
  }

LABEL_34:
  Path.contains(points:eoFill:origin:)(v9, a2, a3, 0.0, 0.0);
  return outlined destroy of Path(&v34);
}

BOOL _s7SwiftUI19ShapeStyledLeafViewPAAE7isClear6stylesSbAA01_C10Style_PackV_tFAA01_C3SetV7WrapperV_Tt0B5Tm(uint64_t a1)
{
  v6 = a1;
  v5 = 0;
  v2 = _ShapeStyle_Pack.isClear(name:)(&v5);
  v3 = 0;
  if (v2)
  {
    v6 = a1;
    v5 = 1;
    return _ShapeStyle_Pack.isClear(name:)(&v5);
  }

  return v3;
}

BOOL specialized ShapeStyledResponderData.contentPath(size:)@<W0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v28 = a2;
  v27 = 0;
  if (_ShapeStyle_Pack.isClear(name:)(&v27) && (v28 = a2, v27 = 1, result = _ShapeStyle_Pack.isClear(name:)(&v27)))
  {
    v11 = 6;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
  }

  else
  {
    if (a1)
    {
      v16 = *(*a1 + 120);

      v18 = v16(v17);
      v22 = CGRect.outset(by:)(v18, v19, v20, v21, 0.0, 0.0, a4, a5);
      v24 = v23;
      a4 = v25;
      a5 = v26;
    }

    else
    {
      v22 = 0.0;
      v24 = 0.0;
    }

    v29.origin.x = v22;
    v29.origin.y = v24;
    v29.size.width = a4;
    v29.size.height = a5;
    result = CGRectIsNull(v29);
    if (result)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v22;
    }

    if (result)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v24;
    }

    if (result)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a4;
    }

    if (result)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a5;
    }

    if (result)
    {
      v11 = 6;
    }

    else
    {
      v11 = 0;
    }
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v11;
  return result;
}

void *specialized closure #1 in closure #1 in ContentResponderHelper.containsGlobalPoints(_:cacheKey:options:children:)@<X0>(void *__dst@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v14 = __dst;
  v16 = *(a3 + 16);
  if (v16)
  {
    if (v16 > a2)
    {
      __break(1u);
      return __dst;
    }

    memcpy(__dst, (a3 + 32), 16 * v16);
  }

  v32[0] = v14;
  v32[1] = a2;
  v17 = *(a4 + 48);
  v18 = *(a4 + 64);
  v19 = *(a4 + 80);
  v20 = *(a4 + 88);
  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 2;
  v33 = a6;
  if (v17 || v19 != 0.0)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v20 != 0.0 && a2 != 0)
  {
LABEL_13:
    v25[0] = v17;
    v25[1] = v18;
    v26 = v19;
    v27 = v20;
    specialized ViewTransform.convertGlobalToSpace(_:_:)(&v28, v25, v32);
  }

LABEL_14:
  outlined destroy of CoordinateSpace(&v28);
  v22 = *a4;
  v23 = *(a4 + 8);
  *&v25[0] = a7;
  LOBYTE(v28) = 0;
  if (_ShapeStyle_Pack.isClear(name:)(&v28) && (*&v25[0] = a7, LOBYTE(v28) = 1, _ShapeStyle_Pack.isClear(name:)(&v28)))
  {
    v24 = 0;
  }

  else
  {
    specialized ShapeStyledLeafView.contains(points:size:)(v14, a2, a5, v25, v22, v23);
    v24 = *&v25[0];
  }

  *a8 = v24;
  a8[1] = 0x3FF0000000000000;
  a8[2] = a9;
}

uint64_t specialized closure #1 in ContentResponderHelper.addContentPath(to:kind:in:observer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 96);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      outlined init with copy of ContentPathObservers.Observer(v8, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of ContentPathObservers.Observer(v15);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v15[1] = a2;
  swift_unknownObjectWeakInit();
  a1 = *(a3 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 96) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(a3 + 96) = a1;
  }

  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, a1);
    *(a3 + 96) = a1;
  }

  a1[2] = v14 + 1;
  return outlined init with take of ContentPathObservers.Observer(v15, &a1[2 * v14 + 4]);
}