void updateShadow(platform:gradientLayer:shadow:opaque:)(uint64_t *a1, id a2, __int128 *a3, char a4)
{
  v5 = *a1;
  v6 = a3[1];
  v20 = *a3;
  v21 = v6;
  v22[0] = a3[2];
  *(v22 + 13) = *(a3 + 45);
  v7 = *(a3 + 53);
  if (v7)
  {
    goto LABEL_7;
  }

  v9 = [a2 sublayers];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AC03C0](0, v11);
      goto LABEL_6;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
LABEL_6:
      v13 = v12;

      [a2 setShadowPathIsBounds_];
      [a2 setPunchoutShadow_];
      v14 = v13;
      [v14 cornerRadius];
      [a2 setCornerRadius_];
      v15 = [v14 cornerCurve];

      [a2 setCornerCurve_];
LABEL_7:
      v19 = v5;
      v16[0] = v20;
      v16[1] = v21;
      *v17 = v22[0];
      *&v17[13] = *(v22 + 13);
      v18 = v7;
      DisplayList.ViewUpdater.Platform.setShadow(_:layer:)(v16, a2);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

BOOL PaintType.isOpaqueForShadow.getter()
{
  v1 = *v0;
  v2 = *(v0 + 56) >> 5;
  if (v2 > 2)
  {
    if (*(v0 + 56) >> 5 > 4u)
    {
      if (v2 == 5)
      {
        v10 = *(v1 + 16);
        if (v10)
        {
          v11 = (v1 + 44);
          LOBYTE(result) = 1;
          v12 = 1 - v10;
          while (1)
          {
            if (result)
            {
              result = *v11 == 1.0;
              if (!v12)
              {
                return result;
              }
            }

            else
            {
              result = 0;
              if (!v12)
              {
                return result;
              }
            }

            ++v12;
            v11 += 12;
            if (v12 == 1)
            {
              goto LABEL_47;
            }
          }
        }
      }
    }

    else if (v2 == 3)
    {
      v3 = *(v1 + 16);
      if (v3)
      {
        v4 = (v1 + 44);
        LOBYTE(result) = 1;
        v6 = 1 - v3;
        while (1)
        {
          if (result)
          {
            result = *v4 == 1.0;
            if (!v6)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (!v6)
            {
              return result;
            }
          }

          ++v6;
          v4 += 12;
          if (v6 == 1)
          {
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
      v16 = *(v1 + 16);
      if (v16)
      {
        v17 = (v1 + 44);
        LOBYTE(result) = 1;
        v18 = 1 - v16;
        while (1)
        {
          if (result)
          {
            result = *v17 == 1.0;
            if (!v18)
            {
              return result;
            }
          }

          else
          {
            result = 0;
            if (!v18)
            {
              return result;
            }
          }

          ++v18;
          v17 += 12;
          if (v18 == 1)
          {
            goto LABEL_48;
          }
        }
      }
    }

    return 0;
  }

  if (!v2)
  {
    return v0[3] == 1.0;
  }

  if (v2 != 1)
  {
    v13 = *(v1 + 16);
    if (v13)
    {
      v14 = (v1 + 44);
      LOBYTE(result) = 1;
      v15 = 1 - v13;
      while (1)
      {
        if (result)
        {
          result = *v14 == 1.0;
          if (!v15)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (!v15)
          {
            return result;
          }
        }

        ++v15;
        v14 += 12;
        if (v15 == 1)
        {
          goto LABEL_45;
        }
      }
    }

    return 0;
  }

  v7 = *(v1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = (v1 + 44);
  LOBYTE(result) = 1;
  v9 = 1 - v7;
  do
  {
    if (result)
    {
      result = *v8 == 1.0;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!v9)
      {
        return result;
      }
    }

    ++v9;
    v8 += 12;
  }

  while (v9 != 1);
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t ShapeLayerAsyncShadowHelper.visitPaint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v120 = a1;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v116[-v8];
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v116[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v116[-v15];
  v122 = v3;
  *&v121 = a3;
  AnyResolvedPaint.as<A>(type:)(a2, a3, v9);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v18 = v10;
  v19 = v16;
  (*(v10 + 32))(v16, v9, a2);
  v20 = v122;
  v21 = *(v122 + 8);
  v22 = *(v21 + 32);
  v167[0] = *(v21 + 16);
  v167[1] = v22;
  v168 = *(v21 + 48);
  v170 = v168;
  v169[0] = v167[0];
  v169[1] = v22;
  outlined init with copy of Path.Storage(v169, v134);
  ShapeType.init(_:)(v167, &v137);
  v23 = *(v20 + 16);
  v24 = *(v23 + 32);
  v165[0] = *(v23 + 16);
  v165[1] = v24;
  v166 = *(v23 + 48);
  v172 = v166;
  v171[0] = v165[0];
  v171[1] = v24;
  outlined init with copy of Path.Storage(v171, v134);
  ShapeType.init(_:)(v165, &v143);
  v119 = v18;
  v25 = *(v18 + 16);
  v25(v13, v120, a2);
  PaintType.init<A>(_:)(v13, a2, &v149);
  v25(v13, v19, a2);
  result = PaintType.init<A>(_:)(v13, a2, &v152);
  v155[2] = v139;
  v155[3] = v140;
  v155[4] = v141;
  v155[0] = v137;
  v155[1] = v138;
  v159 = v145;
  v160 = v146;
  v161 = v147;
  v157 = v143;
  v156 = v142;
  v162 = v148;
  v158 = v144;
  v26 = v19;
  if (v142)
  {
    if (v142 == 3)
    {
      v27 = vorrq_s8(vorrq_s8(v138, v140), vorrq_s8(v139, v141));
      if (!(*&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | *(&v137 + 1) | v137))
      {
        (*(v119 + 8))(v19, a2);
        outlined destroy of PaintType(&v149);
        outlined destroy of PaintType(&v152);
        if (v148 != 3)
        {
          return outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
        }

        v28 = vorrq_s8(vorrq_s8(v144, v146), vorrq_s8(v145, v147));
        if (*&vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL)) | *(&v143 + 1) | v143)
        {
          return outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
        }

        result = outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
        v46 = v122;
        goto LABEL_129;
      }
    }

LABEL_10:
    outlined destroy of PaintType(&v149);
    outlined destroy of PaintType(&v152);
    goto LABEL_11;
  }

  if (v148)
  {
    goto LABEL_10;
  }

  v29 = v21;
  v134[0] = v149;
  v134[1] = v150;
  v135[0] = v151[0];
  *(v135 + 9) = *(v151 + 9);
  v135[2] = v152;
  v135[3] = v153;
  v136[0] = v154[0];
  *(v136 + 9) = *(v154 + 9);
  v30 = BYTE8(v151[1]) >> 5;
  if (v30 <= 2)
  {
    if (v30)
    {
      if (v30 == 1)
      {
        if ((BYTE8(v154[1]) & 0xE0) != 0x20)
        {
          goto LABEL_114;
        }

        v35 = *(v149 + 16);
        if (v35)
        {
          v36 = (v149 + 44);
          LOBYTE(v37) = 1;
          v38 = 1 - v35;
          do
          {
            if (v37)
            {
              v37 = *v36 == 1.0;
              if (!v38)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v37 = 0;
              if (!v38)
              {
                goto LABEL_73;
              }
            }

            ++v38;
            v36 += 12;
          }

          while (v38 != 1);
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
          return result;
        }

        v37 = 0;
LABEL_73:
        v86 = *(v152 + 16);
        if (v86)
        {
          v87 = (v152 + 44);
          v88 = 1;
          v89 = 1 - v86;
          while (1)
          {
            if (v88)
            {
              v90 = *v87;
              v88 = *v87 == 1.0;
              if (!v89)
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (!v89)
              {
                goto LABEL_92;
              }

              v88 = 0;
            }

            ++v89;
            v87 += 12;
            if (v89 == 1)
            {
              goto LABEL_134;
            }
          }
        }
      }

      else
      {
        if ((BYTE8(v154[1]) & 0xE0) != 0x40)
        {
          goto LABEL_114;
        }

        v72 = *(v149 + 16);
        if (v72)
        {
          v73 = (v149 + 44);
          LOBYTE(v37) = 1;
          v74 = 1 - v72;
          while (1)
          {
            if (v37)
            {
              v37 = *v73 == 1.0;
              if (!v74)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v37 = 0;
              if (!v74)
              {
                goto LABEL_81;
              }
            }

            ++v74;
            v73 += 12;
            if (v74 == 1)
            {
              goto LABEL_131;
            }
          }
        }

        v37 = 0;
LABEL_81:
        v91 = *(v152 + 16);
        if (v91)
        {
          v92 = (v152 + 44);
          v93 = 1;
          v94 = 1 - v91;
          while (1)
          {
            if (v93)
            {
              v90 = *v92;
              v93 = *v92 == 1.0;
              if (!v94)
              {
LABEL_90:
                if (v37 != (v90 == 1.0))
                {
                  goto LABEL_114;
                }

LABEL_93:
                v163 = *(v21 + 72);
                v164 = *(v21 + 88);
                v96 = *(v21 + 96);
                v95 = *(v21 + 104);
                v97 = *(v21 + 112);
                v98 = *(v21 + 124);
                v129 = *(v23 + 72);
                LODWORD(v130) = *(v23 + 88);
                if (v98 == *(v23 + 124))
                {
                  v99 = *(v23 + 96);
                  v100 = *(v23 + 104);
                  v101 = *(v23 + 112);
                  v78 = v119;
                  if (v100 == v95 && v101 == v97)
                  {
                    outlined init with copy of ShapeType(&v137, &v124);
                    outlined init with copy of ShapeType(&v143, &v124);
                  }

                  else
                  {
                    outlined init with copy of ShapeType(&v137, &v124);
                    outlined init with copy of ShapeType(&v143, &v124);
                    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v100, v101);
                  }

                  goto LABEL_125;
                }

LABEL_120:
                outlined init with copy of ShapeType(&v137, &v124);
                outlined init with copy of ShapeType(&v143, &v124);
                outlined destroy of (ShapeType, ShapeType)(v134, &lazy cache variable for type metadata for (PaintType, PaintType));
                outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
                outlined destroy of ShapeType(&v143);
                outlined destroy of ShapeType(&v137);
                return (*(v119 + 8))(v19, a2);
              }
            }

            else
            {
              if (!v94)
              {
LABEL_92:
                if (v37)
                {
                  goto LABEL_114;
                }

                goto LABEL_93;
              }

              v93 = 0;
            }

            ++v94;
            v92 += 12;
            if (v94 == 1)
            {
              goto LABEL_135;
            }
          }
        }
      }

      if (v37)
      {
        goto LABEL_114;
      }

      goto LABEL_93;
    }

    if (BYTE8(v154[1]) > 0x1Fu)
    {
      goto LABEL_114;
    }

    v55 = *(&v152 + 3);
    v46 = v122;
    v56 = *(v29 + 72);
    v57 = *(v29 + 80);
    v58 = *(v29 + 84);
    v59 = *(v29 + 88);
    v61 = *(v29 + 96);
    v60 = *(v29 + 104);
    v62 = *(v29 + 112);
    v63 = *(v29 + 124);
    v123 = 0;
    v64 = *(v23 + 72);
    v66 = *(v23 + 80);
    v65 = *(v23 + 84);
    v67 = *(v23 + 88);
    v69 = *(v23 + 96);
    v68 = *(v23 + 104);
    v70 = *(v23 + 112);
    v71 = *(v23 + 124);
    LOBYTE(v163) = 0;
    v78 = v119;
    if (v63 != v71)
    {
      outlined destroy of (ShapeType, ShapeType)(v134, &lazy cache variable for type metadata for (PaintType, PaintType));
      outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
      return (*(v78 + 8))(v26, a2);
    }

    v79 = *(&v149 + 3);
    if (v68 != v60 || v70 != v62)
    {
      *&v121 = v56;
      LODWORD(v120) = v57;
      v117 = *(&v149 + 3);
      LODWORD(v118) = v59;
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v68, v70);
      v79 = v117;
      v59 = v118;
      v57 = v120;
      v56 = v121;
    }

    v80 = v58 * v79;
    v81 = v55 * v65;
    if (v69 != v61)
    {
      v82 = v69;
      v83 = v56;
      v84 = v57;
      v85 = v59;
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v82);
      v59 = v85;
      v57 = v84;
      v56 = v83;
    }

    *&v129 = v56;
    *(&v129 + 1) = __PAIR64__(LODWORD(v80), v57);
    LODWORD(v130) = v59;
    *&v124 = v64;
    *(&v124 + 1) = __PAIR64__(LODWORD(v81), v66);
    LODWORD(v125) = v67;
    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v129, &v124);
    outlined destroy of (ShapeType, ShapeType)(v134, &lazy cache variable for type metadata for (PaintType, PaintType));
    outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
    goto LABEL_128;
  }

  if (BYTE8(v151[1]) >> 5 > 4u)
  {
    if (v30 != 5 || (BYTE8(v154[1]) & 0xE0) != 0xA0)
    {
      goto LABEL_114;
    }

    v39 = v23;
    v40 = v19;
    v41 = *&v154[1];
    v42 = BYTE8(v154[1]) & 0x1F;
    v124 = v149;
    v125 = v150;
    v126 = v151[0];
    v127 = *&v151[1];
    v128 = BYTE8(v151[1]) & 0x1F;
    v120 = v152;
    v121 = v154[0];
    v118 = v153;
    v43 = AngularGradient._Paint.isOpaque.getter(result);
    v44 = v43;
    v129 = v120;
    v130 = v118;
    v131 = v121;
    v132 = v41;
    v133 = v42;
    v45 = AngularGradient._Paint.isOpaque.getter(v43);
    v46 = v122;
    if (((v44 ^ v45) & 1) != 0 || (v129 = *(v29 + 72), LODWORD(v130) = *(v29 + 88), v48 = *(v29 + 96), v47 = *(v29 + 104), v49 = *(v29 + 112), v50 = *(v29 + 124), v124 = *(v39 + 72), LODWORD(v125) = *(v39 + 88), v50 != *(v39 + 124)))
    {
      outlined destroy of (ShapeType, ShapeType)(v134, &lazy cache variable for type metadata for (PaintType, PaintType));
      outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
      return (*(v119 + 8))(v19, a2);
    }

    v52 = *(v39 + 96);
    v51 = *(v39 + 104);
    v53 = *(v39 + 112);
    v54 = v119;
    if (v51 != v47 || v53 != v49)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v51, v53);
    }

    if (v52 != v48)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v52);
    }

    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v129, &v124);
    outlined destroy of (ShapeType, ShapeType)(v134, &lazy cache variable for type metadata for (PaintType, PaintType));
    outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
    result = (*(v54 + 8))(v40, a2);
    goto LABEL_129;
  }

  if (v30 == 3)
  {
    if ((BYTE8(v154[1]) & 0xE0) != 0x60)
    {
      goto LABEL_114;
    }

    v31 = *(v149 + 16);
    if (v31)
    {
      v32 = (v149 + 44);
      LOBYTE(v33) = 1;
      v34 = 1 - v31;
      while (1)
      {
        if (v33)
        {
          v33 = *v32 == 1.0;
          if (!v34)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v33 = 0;
          if (!v34)
          {
            goto LABEL_98;
          }
        }

        ++v34;
        v32 += 12;
        if (v34 == 1)
        {
          goto LABEL_132;
        }
      }
    }

    v33 = 0;
LABEL_98:
    v102 = *(v152 + 16);
    if (v102)
    {
      v103 = (v152 + 44);
      v104 = 1;
      v105 = 1 - v102;
      while (1)
      {
        if (v104)
        {
          v106 = *v103;
          v104 = *v103 == 1.0;
          if (!v105)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (!v105)
          {
            goto LABEL_121;
          }

          v104 = 0;
        }

        ++v105;
        v103 += 12;
        if (v105 == 1)
        {
          goto LABEL_136;
        }
      }
    }

LABEL_113:
    if (v33)
    {
      goto LABEL_114;
    }

LABEL_116:
    v163 = *(v21 + 72);
    v164 = *(v21 + 88);
    v96 = *(v21 + 96);
    v111 = *(v21 + 104);
    v112 = *(v21 + 112);
    v113 = *(v21 + 124);
    v129 = *(v23 + 72);
    LODWORD(v130) = *(v23 + 88);
    if (v113 != *(v23 + 124))
    {
      goto LABEL_120;
    }

    v99 = *(v23 + 96);
    v114 = *(v23 + 104);
    v115 = *(v23 + 112);
    if (v114 == v111 && v115 == v112)
    {
      outlined init with copy of ShapeType(&v137, &v124);
      outlined init with copy of ShapeType(&v143, &v124);
      v78 = v119;
    }

    else
    {
      outlined init with copy of ShapeType(&v137, &v124);
      outlined init with copy of ShapeType(&v143, &v124);
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowOffsetO_Tt0g5(v114, v115);
      v78 = v119;
    }

LABEL_125:
    v46 = v122;
    if (v99 != v96)
    {
      _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE12ShadowRadiusO_Tt0g5(v99);
    }

    _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV6update_4from2toyxm_5ValueQzALtAA01_cd1_ef1_gH8PropertyRzSQALRQlFAE11ShadowColorO_Ttg5(&v163, &v129);
    outlined destroy of (ShapeType, ShapeType)(v134, &lazy cache variable for type metadata for (PaintType, PaintType));
    outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
    outlined destroy of ShapeType(&v143);
    outlined destroy of ShapeType(&v137);
LABEL_128:
    result = (*(v78 + 8))(v26, a2);
LABEL_129:
    *(v46 + 32) = 1;
    return result;
  }

  if ((BYTE8(v154[1]) & 0xE0) != 0x80)
  {
    goto LABEL_114;
  }

  v75 = *(v149 + 16);
  if (v75)
  {
    v76 = (v149 + 44);
    LOBYTE(v33) = 1;
    v77 = 1 - v75;
    while (1)
    {
      if (v33)
      {
        v33 = *v76 == 1.0;
        if (!v77)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v33 = 0;
        if (!v77)
        {
          goto LABEL_106;
        }
      }

      ++v77;
      v76 += 12;
      if (v77 == 1)
      {
        goto LABEL_133;
      }
    }
  }

  v33 = 0;
LABEL_106:
  v107 = *(v152 + 16);
  if (!v107)
  {
    goto LABEL_113;
  }

  v108 = (v152 + 44);
  v109 = 1;
  v110 = 1 - v107;
  while (v109)
  {
    v106 = *v108;
    v109 = *v108 == 1.0;
    if (!v110)
    {
LABEL_115:
      if (v33 != (v106 == 1.0))
      {
        goto LABEL_114;
      }

      goto LABEL_116;
    }

LABEL_109:
    ++v110;
    v108 += 12;
    if (v110 == 1)
    {
      goto LABEL_137;
    }
  }

  if (v110)
  {
    v109 = 0;
    goto LABEL_109;
  }

LABEL_121:
  if (!v33)
  {
    goto LABEL_116;
  }

LABEL_114:
  outlined destroy of (ShapeType, ShapeType)(v134, &lazy cache variable for type metadata for (PaintType, PaintType));
LABEL_11:
  outlined destroy of (ShapeType, ShapeType)(v155, &lazy cache variable for type metadata for (ShapeType, ShapeType));
  return (*(v119 + 8))(v19, a2);
}

id PaintShapeLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 6;
  v5 = &v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint] = 0;
  v6 = &v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle] = 256;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t closure #1 in PaintShapeLayer.draw(in:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = (a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin);
  if (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin) != 0.0 || *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_origin + 8) != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    result = RBDrawingStateTranslateCTM();
  }

  v5 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paint);
  if (v5)
  {
    v6 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 16);
    v19[0] = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path);
    v19[1] = v6;
    v20 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_path + 32);
    v7 = 256;
    if (!*(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle + 1))
    {
      v7 = 0;
    }

    v15 = v7 | *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_fillStyle);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v8 = *v3;
    v9 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds);
    v10 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds + 8);
    v11 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds + 16);
    v12 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115PaintShapeLayer_paintBounds + 24);
    v13 = *v4;
    v14 = v4[1];

    outlined init with copy of Path(v19, &v21);
    v23.origin.x = v9;
    v23.origin.y = v10;
    v23.size.width = v11;
    v23.size.height = v12;
    v21 = CGRectOffset(v23, v13, v14);
    v22 = 0;
    (*(*v5 + 80))(v19, &v15, v8, &v21);
    outlined destroy of Path(v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id @objc ColorShapeLayer.init(layer:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6.receiver = a1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithLayer_, v3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4;
}

uint64_t specialized static ShapeLayerHelper.updateAsync(layer:old:new:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  result = 0;
  if (*(a2 + 112) == a3[112] && ((*(a2 + 113) ^ a3[113]) & 1) == 0)
  {
    if (*(a2 + 128) == a3[128])
    {
      v10 = v3;
      v11 = v4;
      v8[0] = a1;
      v8[1] = a2;
      v8[2] = a3;
      v9 = 0;
      v7 = *(**(a2 + 72) + 152);

      v7(v8, &unk_1F005AA28, &protocol witness table for ShapeLayerAsyncHelper);

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  outlined copy of ShapeType(*a2, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithCopy for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  outlined copy of ShapeType(*a2, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26);
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
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v24;
  *(a1 + 72) = v25;
  *(a1 + 80) = v26;
  outlined consume of ShapeType(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  outlined consume of ShapeType(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for Visitor #1 in static ShapeLayerHelper.layerType(_:_:mayClip:)(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for PaintType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  outlined copy of PaintType(*a2, v4, v5, v6, v7, v8, v9, v10);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  v18 = *(a1 + 56);
  *(a1 + 56) = v10;
  outlined consume of PaintType(v11, v12, v13, v14, v15, v16, v17, v18);
  return a1;
}

uint64_t assignWithTake for PaintType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  v13 = *(a1 + 56);
  *(a1 + 56) = v4;
  outlined consume of PaintType(v5, v7, v6, v8, v9, v10, v11, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for PaintType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for PaintType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 32;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for PaintType(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t destructiveInjectEnumTag for PaintType(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 56) & 3 | (32 * a2);
    *(result + 16) = *(result + 16);
    *(result + 56) = v2;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = -64;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShapeLayerAsyncHelper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ShapeLayerAsyncHelper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShapeLayerHelper(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 48);
  v10 = v4;
  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  v11 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v11;
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t assignWithCopy for ShapeLayerHelper(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Path.Storage(v7, v8, v9, v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v16 = *(a1 + 48);
  *(a1 + 48) = v11;
  outlined consume of Path.Storage(v12, v13, v14, v15, v16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for ShapeLayerHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a1 + 48);
  *(a1 + 48) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v11 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v11;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeLayerHelper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t storeEnumTagSinglePayload for ShapeLayerHelper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for ShapeType(uint64_t a1, uint64_t a2)
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
  outlined copy of ShapeType(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25);
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
  outlined consume of ShapeType(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  return a1;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for ShapeType(uint64_t a1, uint64_t a2)
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
  outlined consume of ShapeType(v4, v6, v5, v7, v8, v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
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

uint64_t storeEnumTagSinglePayload for ShapeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTag for ShapeType(uint64_t a1)
{
  if (*(a1 + 80) <= 2u)
  {
    return *(a1 + 80);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for ShapeType(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t initializeWithCopy for ShapeLayerShadowHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = v4;
  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 117) = *(a2 + 117);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

uint64_t assignWithCopy for ShapeLayerShadowHelper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of Path.Storage(v7, v8, v9, v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v16 = *(a1 + 48);
  *(a1 + 48) = v11;
  outlined consume of Path.Storage(v12, v13, v14, v15, v16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

__n128 __swift_memcpy126_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for ShapeLayerShadowHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 48);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v11;
  v12 = *(a1 + 48);
  *(a1 + 48) = v6;
  outlined consume of Path.Storage(v7, v8, v9, v10, v12);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeLayerShadowHelper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ShapeLayerShadowHelper(uint64_t result, int a2, int a3)
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
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShapeLayerAsyncShadowHelper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for ShapeLayerAsyncShadowHelper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for ShapeLayerAsyncShadowHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShapeLayerAsyncShadowHelper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ShapeLayerAsyncShadowHelper(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t Date.nextDown.getter()
{
  Date.timeIntervalSinceReferenceDate.getter();

  return Date.init(timeIntervalSinceReferenceDate:)();
}

uint64_t Date.nextUp.getter()
{
  Date.timeIntervalSinceReferenceDate.getter();

  return Date.init(timeIntervalSinceReferenceDate:)();
}

uint64_t max<A>(_:ifPresent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11, v17);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return (*(v15 + 16))(a6, a1, a3);
  }

  else
  {
    (*(v15 + 32))(v19, v14, a3);
    v22(a1, v19, a3, a4);
    return (*(v15 + 8))(v19, a3);
  }
}

uint64_t Array.sort<A>(by:reversed:)()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return MutableCollection<>.sort(by:)();
}

uint64_t RandomAccessCollection.lowerBound(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v31 = a1;
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v22 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.count.getter();
  if (result >= 1)
  {
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v12 = v14;
    v24 = (v5 + 8);
    v25 = (v5 + 16);
    v23 = (v13 - 8);
    v27 = a3;
    v28 = v3;
    v34 = v13;
    v26 = v14;
    do
    {
      v33 = result;
      v15 = result >> 1;
      v16 = v12;
      v12(v10, a3, v7);
      v35 = v15;
      Collection.formIndex(_:offsetBy:)();
      v17 = dispatch thunk of Collection.subscript.read();
      v18 = v7;
      v19 = v29;
      v20 = AssociatedTypeWitness;
      (*v25)(v29);
      (v17)(v36, 0);
      LOBYTE(v17) = v31(v19);
      (*v24)(v19, v20);
      v21 = *v23;
      if (v17)
      {
        v21(a3, v18);
        v16(a3, v10, v18);
        dispatch thunk of Collection.formIndex(after:)();
        v21(v10, v18);
        result = v33 + ~v35;
      }

      else
      {
        v21(v10, v18);
        result = v35;
      }

      v7 = v18;
      a3 = v27;
      v12 = v26;
    }

    while (result > 0);
  }

  return result;
}

uint64_t IndirectOptional.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v6 + 48))(v7) == 1)
  {
    v10 = type metadata accessor for Optional();
    result = (*(*(v10 - 8) + 8))(a1, v10);
    v12 = 0;
  }

  else
  {
    v13 = *(v6 + 32);
    v13(v9, a1, a2);
    v12 = swift_allocBox();
    result = (v13)(v14, v9, a2);
  }

  *a3 = v12;
  return result;
}

uint64_t IndirectOptional.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v4 = *(a1 + 16);
    v5 = swift_projectBox();
    v11 = *(v4 - 8);
    (*(v11 + 16))(a2, v5, v4);
    v6 = *(v11 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = *(a1 + 16);
    v6 = *(*(v9 - 8) + 56);
    v7 = a2;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t IndirectOptional.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    v8 = type metadata accessor for Optional();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v10 = 0;
  }

  else
  {
    v11 = *(v5 + 32);
    v11(v7, a1, v4);
    v10 = swift_allocBox();
    result = (v11)(v12, v7, v4);
  }

  *v2 = v10;
  return result;
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Slice();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Range();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v16);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v10 = *(*a1 + 56);
  v8 = *(*a1 + 24);
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Range();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v36 - v18;
  dispatch thunk of Collection.startIndex.getter();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v11, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v11[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v11, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = type metadata accessor for Slice();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Optional<A>.formMax(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v34 = &v29 - v19;
  v20 = *(v7 + 16);
  v20(v11, v4, a2, v18);
  v36 = v14;
  v21 = *(v14 + 48);
  if (v21(v11, 1, v13) == 1)
  {
    v22 = *(v7 + 8);
    v22(v4, a2);
    v22(v11, a2);
    return (v20)(v4, v35, a2);
  }

  else
  {
    v31 = a3;
    v30 = *(v36 + 32);
    v30(v34, v11, v13);
    v24 = v33;
    (v20)(v33, v35, a2);
    if (v21(v24, 1, v13) == 1)
    {
      (*(v36 + 8))(v34, v13);
      return (*(v7 + 8))(v24, a2);
    }

    else
    {
      (*(v7 + 8))(v4, a2);
      v25 = v32;
      v30(v32, v24, v13);
      v26 = v34;
      max<A>(_:_:)();
      v27 = v36;
      v28 = *(v36 + 8);
      v28(v25, v13);
      v28(v26, v13);
      return (*(v27 + 56))(v4, 0, 1, v13);
    }
  }
}

uint64_t (*bind<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a4, v10);
    v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = a4;
    *(v14 + 3) = a1;
    *(v14 + 4) = a2;
    (*(v7 + 32))(&v14[v13], v11, a4);
    v15 = partial apply for closure #1 in bind<A>(_:_:);
  }

  else
  {
    v15 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(a1);
  return v15;
}

uint64_t FloatingPoint.mappingNaN(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = dispatch thunk of FloatingPoint.isNaN.getter();
  v8 = *(*(a2 - 8) + 16);
  if (v7)
  {
    v9 = a1;
  }

  else
  {
    v9 = v3;
  }

  return v8(a3, v9, a2);
}

uint64_t BinaryFloatingPoint.ensuringNonzeroValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (dispatch thunk of FloatingPoint.isZero.getter())
  {
    return dispatch thunk of static FloatingPoint.leastNonzeroMagnitude.getter();
  }

  v6 = *(*(a1 - 8) + 16);

  return v6(a2, v2, a1);
}

uint64_t FixedWidthInteger.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v20 = a4;
  v18[2] = a3;
  v19 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v18[1] = v18 - v14;
  dispatch thunk of static FixedWidthInteger.min.getter();
  dispatch thunk of FloatingPoint.init<A>(_:)();
  dispatch thunk of static FixedWidthInteger.max.getter();
  dispatch thunk of FloatingPoint.init<A>(_:)();
  v15 = v19;
  Comparable.clamp(min:max:)(v12, v9, a2);
  v16 = *(v6 + 8);
  v16(v9, a2);
  v16(v12, a2);
  dispatch thunk of BinaryInteger.init<A>(_:)();
  return (v16)(v15, a2);
}

uint64_t abs(_:)(uint64_t a1)
{
  static Duration.zero.getter();
  if (static Duration.< infix(_:_:)())
  {
    static Duration.zero.getter();
    return static Duration.- infix(_:_:)();
  }

  return a1;
}

uint64_t Pair.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int Pair.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t Pair.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Pair<A, B>.CodingKeys()
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Pair<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Pair.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Pair<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Pair<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Pair<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int Pair<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Pair<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[4] = a4;
  v14[2] = a6;
  v7 = *(a2 + 24);
  v14[0] = a2;
  v14[1] = v7;
  type metadata accessor for Pair.CodingKeys();
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v12 = v14[5];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v15 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t Pair<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v33 = a5;
  v37 = a4;
  v31 = a6;
  v30 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Pair.CodingKeys();
  swift_getWitnessTable();
  v39 = type metadata accessor for KeyedDecodingContainer();
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v29 - v13;
  v36 = a2;
  v15 = type metadata accessor for Pair();
  v29 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v17;
  v40 = v15;
  v20 = v34;
  v21 = v35;
  v42 = 0;
  v22 = v36;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = *(v21 + 32);
  v37 = v19;
  v23(v19, v38, v22);
  v41 = 1;
  v24 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v14, v39);
  v25 = v40;
  v26 = v37;
  (*(v30 + 32))(&v37[*(v40 + 36)], v24, a3);
  v27 = v29;
  (*(v29 + 16))(v31, v26, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v27 + 8))(v26, v25);
}

uint64_t ArrayID.init<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

Swift::Int ArrayID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t hexFormatted(_:)()
{
  lazy protocol witness table accessor for type Int and conformance Int();
  v0 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x193ABEDD0](v0);

  return 30768;
}

uint64_t UnsafeMutableBufferProjectionPointer.init(start:count:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t UnsafeMutableBufferProjectionPointer.init(_:_:)@<X0>(unint64_t a1@<X1>, uint64_t *a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *a2;
  if (!a1)
  {

    v9 = ~*(*(*(v5 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 80) | 0xFFFFFFFFFFFFFF00;
    goto LABEL_5;
  }

  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v7 = swift_modifyAtWritableKeyPath();
    v9 = v8;
    v7(&v10, 0);

LABEL_5:
    *a3 = v9;
    a3[1] = a1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableBufferProjectionPointer.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(*(a2 + 16) - 8) + 72);
  if ((v4 * result) >> 64 == (v4 * result) >> 63)
  {
    return (*(*(*(a2 + 24) - 8) + 16))(a3, *v3 + v4 * result);
  }

  __break(1u);
  return result;
}

void *key path getter for UnsafeMutableBufferProjectionPointer.subscript(_:) : <A, B>UnsafeMutableBufferProjectionPointer<A, B>AB@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(*(*(a2 + a3 - 16) - 8) + 72);
  v5 = v4 * *a2;
  if ((v4 * *a2) >> 64 == v5 >> 63)
  {
    return (*(*(*(a2 + a3 - 8) - 8) + 16))(a4, *result + v5);
  }

  __break(1u);
  return result;
}

uint64_t key path setter for UnsafeMutableBufferProjectionPointer.subscript(_:) : <A, B>UnsafeMutableBufferProjectionPointer<A, B>AB(uint64_t result, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 16) - 8) + 72);
  v5 = v4 * *a3;
  if ((v4 * *a3) >> 64 == v5 >> 63)
  {
    return (*(*(*(a3 + a4 - 8) - 8) + 24))(*a2 + v5, result);
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableBufferProjectionPointer.subscript.unsafeAddressor(uint64_t result, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 72);
  if ((v3 * result) >> 64 == (v3 * result) >> 63)
  {
    return *v2 + v3 * result;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableBufferProjectionPointer.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 72);
  if ((v4 * a2) >> 64 == (v4 * a2) >> 63)
  {
    return (*(*(*(a3 + 24) - 8) + 40))(*v3 + v4 * a2, result);
  }

  __break(1u);
  return result;
}

uint64_t (*UnsafeMutableBufferProjectionPointer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(void, void)
{
  v3 = *(*(*(a3 + 16) - 8) + 72);
  if ((v3 * a2) >> 64 == (v3 * a2) >> 63)
  {
    return _ViewInputs.base.modify;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = UnsafeMutableBufferProjectionPointer.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableBufferProjectionPointer<A, B>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeMutableBufferProjectionPointer<A, B>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

uint64_t protocol witness for Collection.endIndex.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>@<X0>(uint64_t *a1@<X8>)
{
  result = UnsafeMutableBufferProjectionPointer.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = UnsafeMutableBufferProjectionPointer.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance UnsafeMutableBufferProjectionPointer<A, B>;
}

uint64_t (*UnsafeMutableBufferProjectionPointer.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))(void, void)
{
  v3 = *(*(*(a3 + 16) - 8) + 72);
  if ((v3 * a2) >> 64 == (v3 * a2) >> 63)
  {
    return _ViewInputs.base.modify;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t protocol witness for Collection.indices.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance UnsafeMutableBufferProjectionPointer<A, B>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

void protocol witness for Sequence.makeIterator() in conformance UnsafeMutableBufferProjectionPointer<A, B>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance UnsafeMutableBufferProjectionPointer<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeMutableBufferProjectionPointer<A, B>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t Numeric.isFinite.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v6, a1);
  v11(v9, a1);
  return v10 & 1;
}

uint64_t Sequence.first<A>(ofType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4);
  Sequence.first(where:)();
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t closure #1 in Sequence.first<A>(ofType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v11 + 16))(v14 - v10, a1, AssociatedTypeWitness, v9);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = result;
    (*(v5 + 8))(v7, a3);
    return v13;
  }

  return result;
}

uint64_t Collection<>.commonPrefix<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t))
{
  v114 = a8;
  v121 = a3;
  v88 = a2;
  v97 = a1;
  v122 = a5;
  v123 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v86 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v80 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = type metadata accessor for Range();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = v80 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v96 = swift_getTupleTypeMetadata2();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = v80 - v19;
  v104 = swift_getAssociatedConformanceWitness();
  v116 = v16;
  v93 = type metadata accessor for Range();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v99 = v80 - v20;
  v111 = swift_getAssociatedTypeWitness();
  v107 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v113 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v112 = v80 - v23;
  v103 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v100 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v117 = v80 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v105 = v80 - v29;
  v106 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v101 = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v80 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v80 - v36;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  v119 = a4;
  v120 = v8;
  v118 = a6;
  dispatch thunk of Collection.endIndex.getter();
  v38 = v116;
  dispatch thunk of Collection.endIndex.getter();
  v39 = *(v106 + 16);
  v102 = v37;
  v40 = v101;
  v90 = v106 + 16;
  v89 = v39;
  v39();
  v41 = *(v103 + 16);
  v42 = v100;
  v80[1] = v103 + 16;
  v80[0] = v41;
  v41(v100, v105, AssociatedTypeWitness);
  v43 = *(v104 + 8);
  v115 = v34;
  v110 = v43;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v44 = *(AssociatedConformanceWitness + 8);
    v108 = (v107 + 2);
    v109 = v44;
    ++v107;
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v45 = dispatch thunk of Collection.subscript.read();
      v46 = AssociatedTypeWitness;
      v47 = *v108;
      v48 = v111;
      v49 = v112;
      (*v108)(v112);
      v45(v124, 0);
      v50 = dispatch thunk of Collection.subscript.read();
      v51 = v113;
      v47(v113);
      (v50)(v124, 0);
      LOBYTE(v50) = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = *v107;
      (*v107)(v51, v48);
      v52(v49, v48);
      AssociatedTypeWitness = v46;
      v38 = v116;
      if ((v50 & 1) == 0)
      {
        break;
      }

      dispatch thunk of Collection.formIndex(after:)();
      dispatch thunk of Collection.formIndex(after:)();
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  }

  v53 = v102;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v55 = v91;
    v56 = v89;
    (v89)(v91, v53, v38);
    v57 = v40;
    v58 = v96;
    (v56)(&v55[*(v96 + 48)], v57, v38);
    v59 = v94;
    v60 = v95;
    (*(v94 + 16))(v95, v55, v58);
    v113 = *(v58 + 48);
    v61 = v106;
    v114 = *(v106 + 32);
    v114(v99, v60, v38);
    v62 = *(v61 + 8);
    v62(&v113[v60], v38);
    (*(v59 + 32))(v60, v55, v58);
    v63 = *(v58 + 48);
    v64 = v93;
    v65 = v99;
    v114(&v99[*(v93 + 36)], &v60[v63], v38);
    v114 = v62;
    v62(v60, v38);
    dispatch thunk of Collection.subscript.getter();
    (*(v92 + 8))(v65, v64);
    v66 = v105;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v67 = v42;
      v68 = v82;
      v69 = v80[0];
      (v80[0])(v82, v66, AssociatedTypeWitness);
      v70 = TupleTypeMetadata2;
      v69(&v68[*(TupleTypeMetadata2 + 48)], v67, AssociatedTypeWitness);
      v106 = v61 + 8;
      v71 = v85;
      v72 = v86;
      (*(v85 + 16))(v86, v68, v70);
      v120 = *(v70 + 48);
      v73 = v103;
      v74 = *(v103 + 32);
      v75 = v81;
      v74(v81, v72, AssociatedTypeWitness);
      v76 = *(v73 + 8);
      v76(&v72[v120], AssociatedTypeWitness);
      (*(v71 + 32))(v72, v68, v70);
      v77 = v84;
      v74(&v75[*(v84 + 36)], &v72[*(v70 + 48)], AssociatedTypeWitness);
      v76(v72, AssociatedTypeWitness);
      dispatch thunk of Collection.subscript.getter();
      (*(v83 + 8))(v75, v77);
      v76(v100, AssociatedTypeWitness);
      v78 = v116;
      v79 = v114;
      (v114)(v101, v116);
      v76(v117, AssociatedTypeWitness);
      v79(v115, v78);
      v76(v105, AssociatedTypeWitness);
      return (v79)(v102, v78);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t BidirectionalCollection<>.commonSuffix<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v130 = a8;
  v137 = a3;
  v97 = a2;
  v106 = a1;
  v129 = a7;
  v136 = *(a7 + 8);
  v138 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v95 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = v89 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = type metadata accessor for Range();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = v89 - v14;
  v128 = a6;
  v15 = *(a6 + 8);
  v16 = swift_getAssociatedTypeWitness();
  v105 = swift_getTupleTypeMetadata2();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = v89 - v19;
  v111 = swift_getAssociatedConformanceWitness();
  v140 = v16;
  v102 = type metadata accessor for Range();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v108 = v89 - v20;
  v124 = swift_getAssociatedTypeWitness();
  v122 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v127 = v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v126 = v89 - v23;
  v112 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v125 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v89 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v113 = v89 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v89 - v32;
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v133 = v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v109 = v89 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v89 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v135 = v89 - v42;
  dispatch thunk of Collection.startIndex.getter();
  v134 = v33;
  dispatch thunk of Collection.startIndex.getter();
  v131 = v15;
  v132 = a4;
  dispatch thunk of Collection.endIndex.getter();
  v43 = v113;
  dispatch thunk of Collection.endIndex.getter();
  v44 = *(v114 + 16);
  v45 = v109;
  v110 = v40;
  v99 = v114 + 16;
  v98 = v44;
  v44(v109, v40, v140);
  v46 = *(v112 + 16);
  v89[1] = v112 + 16;
  v89[0] = v46;
  v46(v28, v43, AssociatedTypeWitness);
  v123 = *(v111 + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v119 = (v122 + 16);
    v117 = (v122 + 8);
    v122 = *(AssociatedConformanceWitness + 8);
    v120 = (v114 + 8);
    v116 = (v114 + 32);
    v115 = (v112 + 32);
    v121 = AssociatedTypeWitness;
    v118 = (v112 + 8);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      dispatch thunk of BidirectionalCollection.index(before:)();
      v47 = v125;
      v48 = v28;
      dispatch thunk of BidirectionalCollection.index(before:)();
      v49 = dispatch thunk of Collection.subscript.read();
      v50 = *v119;
      v51 = v126;
      v52 = v124;
      (*v119)(v126);
      v49(v141, 0);
      v53 = dispatch thunk of Collection.subscript.read();
      v54 = v127;
      v50(v127);
      (v53)(v141, 0);
      LOBYTE(v53) = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = *v117;
      (*v117)(v54, v52);
      v56 = v52;
      v57 = v118;
      v55(v51, v56);
      v58 = *v57;
      if ((v53 & 1) == 0)
      {
        AssociatedTypeWitness = v121;
        v58(v47, v121);
        (*v120)(v133, v140);
        v28 = v48;
        break;
      }

      AssociatedTypeWitness = v121;
      v58(v48, v121);
      v59 = v140;
      (*v120)(v45, v140);
      (*v116)(v45, v133, v59);
      (*v115)(v48, v47, AssociatedTypeWitness);
      v28 = v48;
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }
    }
  }

  v60 = v110;
  v61 = v140;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v63 = v100;
    v64 = v61;
    v65 = v61;
    v66 = v98;
    v98(v100, v45, v64);
    v67 = v105;
    v66(&v63[*(v105 + 48)], v60, v65);
    v68 = v103;
    v69 = v104;
    (*(v103 + 16))(v104, v63, v67);
    v130 = *(v67 + 48);
    v70 = v114;
    v133 = *(v114 + 32);
    (v133)(v108, v69, v65);
    v71 = *(v70 + 8);
    v71(&v69[v130], v65);
    (*(v68 + 32))(v69, v63, v67);
    v72 = *(v67 + 48);
    v73 = v102;
    v74 = v108;
    (v133)(&v108[*(v102 + 36)], &v69[v72], v65);
    v133 = v71;
    v71(v69, v65);
    dispatch thunk of Collection.subscript.getter();
    (*(v101 + 8))(v74, v73);
    v75 = v113;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v114 = v70 + 8;
      v76 = v91;
      v77 = v89[0];
      (v89[0])(v91, v28, AssociatedTypeWitness);
      v139 = v28;
      v78 = TupleTypeMetadata2;
      v77(&v76[*(TupleTypeMetadata2 + 48)], v75, AssociatedTypeWitness);
      v79 = v94;
      v80 = v95;
      (*(v94 + 16))(v95, v76, v78);
      v132 = *(v78 + 48);
      v81 = v112;
      v82 = *(v112 + 32);
      v83 = v90;
      v82(v90, v80, AssociatedTypeWitness);
      v84 = *(v81 + 8);
      v84(&v80[v132], AssociatedTypeWitness);
      (*(v79 + 32))(v80, v76, v78);
      v85 = *(v78 + 48);
      v86 = v93;
      v82(&v83[*(v93 + 36)], &v80[v85], AssociatedTypeWitness);
      v84(v80, AssociatedTypeWitness);
      dispatch thunk of Collection.subscript.getter();
      (*(v92 + 8))(v83, v86);
      v84(v139, AssociatedTypeWitness);
      v87 = v140;
      v88 = v133;
      (v133)(v109, v140);
      v84(v113, AssociatedTypeWitness);
      (v88)(v110, v87);
      v84(v134, AssociatedTypeWitness);
      return (v88)(v135, v87);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CountingIndex.init(base:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for CountingIndex();
  v9 = a5 + *(result + 36);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t CountingIndexCollection.index(before:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v4 + 16))(v9, v12, AssociatedTypeWitness);
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v4 + 8);
  v14(v6, AssociatedTypeWitness);
  if (v13)
  {
    v14(v12, AssociatedTypeWitness);
    v15 = 0;
LABEL_5:
    v20 = v23;
    (*(v4 + 32))(v23, v9, AssociatedTypeWitness);
    result = type metadata accessor for CountingIndex();
    v21 = v20 + *(result + 36);
    *v21 = v15;
    *(v21 + 8) = v13 & 1;
    return result;
  }

  result = type metadata accessor for CountingIndex();
  v17 = (a1 + *(result + 36));
  if ((v17[1] & 1) == 0)
  {
    v18 = *v17;
    result = (v14)(v12, AssociatedTypeWitness);
    v19 = __OFSUB__(v18, 1);
    v15 = v18 - 1;
    if (!v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance CountingIndexCollection<A>@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CountingIndex();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance CountingIndexCollection<A>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

void protocol witness for Collection.distance(from:to:) in conformance CountingIndexCollection<A>()
{
  swift_getWitnessTable();

  JUMPOUT(0x193ABE9B0);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CountingIndexCollection<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t CountingIndex.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x193ABEDD0](0x203A6573616228, 0xE700000000000000);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x193ABEDD0](0x657366666F207C20, 0xEB00000000203A74);
  if (*(v1 + *(a1 + 36) + 8))
  {
    v3 = 0xE300000000000000;
    v4 = 7104878;
  }

  else
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v4 = BinaryInteger.description.getter();
    v3 = v5;
  }

  MEMORY[0x193ABEDD0](v4, v3);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0;
}

uint64_t == infix<A, B, C, D>(_:_:)(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v68 = a6;
  v69 = a7;
  v67 = a5;
  v62 = a4;
  v63 = a1;
  v60 = a3;
  v65 = a2;
  v74 = a13;
  v73 = a14;
  v71 = a8;
  v72 = a15;
  v59 = a12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = swift_getTupleTypeMetadata2();
  v64 = swift_getTupleTypeMetadata2();
  v70 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v66 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v76 = v51 - v19;
  v78 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v61 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v51 - v23;
  v25 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v51 - v31;
  v77 = a9;
  v33 = *(a9 - 8);
  v57 = *(v33 + 16);
  v58 = v33 + 16;
  v57(v51 - v31, v63, a9, v30);
  v34 = *(TupleTypeMetadata2 + 48);
  v75 = a10;
  v35 = *(a10 - 8);
  v56 = *(v35 + 16);
  v63 = v35 + 16;
  v56(&v32[v34], v65, a10);
  v53 = a11;
  v36 = *(a11 - 8);
  v54 = *(v36 + 16);
  v55 = v36 + 16;
  v54(v24, v60, a11);
  v37 = *(v16 + 48);
  v38 = v59;
  v39 = *(v59 - 8);
  v52 = *(v39 + 16);
  v60 = v39 + 16;
  v52(&v24[v37], v62, v59);
  v40 = *(v25 + 32);
  v51[1] = v25 + 32;
  v62 = v40;
  v41 = v76;
  v40(v76, v32, TupleTypeMetadata2);
  v42 = v64;
  v65 = &v41[*(v64 + 48)];
  v43 = *(v78 + 32);
  v78 += 32;
  v43();
  (v57)(v28, v67, v77);
  v56(&v28[*(TupleTypeMetadata2 + 48)], v68, v75);
  v44 = v61;
  v54(v61, v69, v53);
  v45 = v16;
  v52(&v44[*(v16 + 48)], v71, v38);
  v46 = v66;
  v62(v66, v28, TupleTypeMetadata2);
  (v43)(&v46[*(v42 + 48)], v44, v45);
  v47 = v76;
  v48 = v46;
  LOBYTE(v25) = == infix<A, B, C, D>(_:_:)();
  v49 = *(v70 + 8);
  v49(v48, v42);
  v49(v47, v42);
  return v25 & 1;
}

uint64_t Optional.init(if:then:)@<X0>(char a1@<W0>, void (*a2)(void *__return_ptr)@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1)
  {
    v5 = a3;
    a2(a4);
    a3 = v5;
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(*(a3 - 8) + 56);

  return v7(a4, v6, 1);
}

uint64_t IndirectOptional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocBox();
  result = (*(*(a2 - 8) + 32))(v7, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t key path setter for IndirectOptional.wrappedValue : <A>IndirectOptional<A>(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*(v6 + 16))(&v9 - v4, a1, v3);
  v7 = type metadata accessor for IndirectOptional();
  return IndirectOptional.wrappedValue.setter(v5, v7);
}

void (*IndirectOptional.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  IndirectOptional.wrappedValue.getter(a2, v11);
  return IndirectOptional.wrappedValue.modify;
}

void IndirectOptional.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    IndirectOptional.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    IndirectOptional.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static IndirectOptional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v13 = *v12;
  if (!*v11)
  {
    if (!v13)
    {
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  if (!v13)
  {
LABEL_5:
    v17 = 0;
    return v17 & 1;
  }

  v20[1] = v8;
  v14 = swift_projectBox();
  v15 = swift_projectBox();
  v16 = *(v4 + 16);
  v16(v10, v14, a3);
  v16(v6, v15, a3);

  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v6, a3);
  v18(v10, a3);

  return v17 & 1;
}

uint64_t IndirectOptional<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v2)
  {
    return MEMORY[0x193AC11A0](v5);
  }

  v8 = swift_projectBox();
  (*(v4 + 16))(v7, v8, v3);
  MEMORY[0x193AC11A0](1);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int IndirectOptional<A>.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  Hasher.init(_seed:)();
  IndirectOptional<A>.hash(into:)(v4, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> IndirectOptional<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  IndirectOptional<A>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t Cache3.init()@<X0>(uint64_t a1@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v4 = *(TupleTypeMetadata3 + 48);
  v5 = *(TupleTypeMetadata3 + 64);
  v7 = *(*(TupleTypeMetadata2 - 8) + 56);
  v7(a1, 1, 1, TupleTypeMetadata2);
  v7(a1 + v4, 1, 1, TupleTypeMetadata2);

  return (v7)(a1 + v5, 1, 1, TupleTypeMetadata2);
}

uint64_t Cache3.find(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v54 = a2;
  v55 = a1;
  v53 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v56 = v5;
  v57 = *(v5 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v51 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v25;
  (*(v25 + 16))(v21, v4, TupleTypeMetadata3, v23);
  v26 = *(TupleTypeMetadata3 + 48);
  v49 = TupleTypeMetadata3;
  v27 = *(TupleTypeMetadata3 + 64);
  v58 = v9;
  v28 = *(v9 + 32);
  v28(v18, v21, v8);
  v28(&v18[v26], &v21[v26], v8);
  v28(&v18[v27], &v21[v27], v8);
  v29 = *(*(TupleTypeMetadata2 - 8) + 48);
  if (v29(v18, 1, TupleTypeMetadata2) != 1)
  {
    (*(v58 + 16))(v15, v18, v8);
    v52 = &v15[*(TupleTypeMetadata2 + 48)];
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v6 - 8) + 8))(v15, v6);
    if (v30)
    {
      v50 = v27;
      v31 = v56;
      v32 = v52;
LABEL_12:
      v39 = v57;
      v40 = *(v57 + 32);
      v41 = v51;
      v40(v51, v32, v31);
      v42 = *(v58 + 8);
      v42(&v18[v50], v8);
      v42(&v18[v26], v8);
      v42(v18, v8);
      v43 = v53;
      v40(v53, v41, v31);
      return (*(v39 + 56))(v43, 0, 1, v31);
    }

    (*(v57 + 8))(v52, v56);
  }

  v33 = v29(&v18[v26], 1, TupleTypeMetadata2);
  v34 = v56;
  if (v33 != 1)
  {
    v50 = v27;
    v31 = v56;
    v35 = v47;
    (*(v58 + 16))(v47, &v18[v26], v8);
    v52 = &v35[*(TupleTypeMetadata2 + 48)];
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v6 - 8) + 8))(v35, v6);
    if (v36)
    {
      v32 = v52;
      goto LABEL_12;
    }

    v34 = v31;
    (*(v57 + 8))(v52, v31);
    v27 = v50;
  }

  if (v29(&v18[v27], 1, TupleTypeMetadata2) != 1)
  {
    v37 = v46;
    (*(v58 + 16))(v46, &v18[v27], v8);
    v32 = &v37[*(TupleTypeMetadata2 + 48)];
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v6 - 8) + 8))(v37, v6);
    if (v38)
    {
      v50 = v27;
      v31 = v34;
      goto LABEL_12;
    }

    (*(v57 + 8))(v32, v34);
  }

  (*(v57 + 56))(v53, 1, 1, v34);
  return (*(v48 + 8))(v18, v49);
}

uint64_t Cache3.put(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 + 48);
  v12 = *(v9 - 8);
  (*(v12 + 24))(v3 + *(TupleTypeMetadata3 + 64), v3 + v11, v9);
  (*(v12 + 40))(v3 + v11, v3, v9);
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(v7 - 8) + 16))(v3, a1, v7);
  (*(*(v6 - 8) + 16))(v3 + v13, a2, v6);
  v14 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v14(v3, 0, 1, TupleTypeMetadata2);
}

uint64_t Cache3.get(_:makeValue:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a2;
  v78 = a1;
  v73 = a5;
  v6 = *(a4 + 24);
  v77 = *(a4 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v6;
  v64 = type metadata accessor for Optional();
  v62 = *(v64 - 8);
  v24 = MEMORY[0x1EEE9AC00](v64);
  v72 = &v59 - v25;
  v61 = v16;
  v26 = *(v16 + 16);
  v67 = v5;
  v26(v21, v5, TupleTypeMetadata3, v24);
  v27 = *(TupleTypeMetadata3 + 48);
  v71 = TupleTypeMetadata3;
  v28 = *(TupleTypeMetadata3 + 64);
  v29 = *(v8 + 32);
  v29(v18, v21, v7);
  v29(&v18[v27], &v21[v27], v7);
  v74 = v28;
  v30 = &v21[v28];
  v31 = TupleTypeMetadata2;
  v29(&v18[v28], v30, v7);
  v63 = *(v31 - 8);
  v32 = *(v63 + 48);
  if (v32(v18, 1, v31) != 1)
  {
    v70 = v8;
    (*(v8 + 16))(v14, v18, v7);
    v33 = &v14[*(v31 + 48)];
    v34 = v77;
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v34 - 8) + 8))(v14, v34);
    if (v35)
    {
      v68 = v27;
      v36 = v75;
LABEL_7:
      v8 = v70;
LABEL_12:
      v47 = v76;
      v48 = *(v76 + 32);
      v49 = v69;
      v48(v69, v33, v36);
      v50 = *(v8 + 8);
      v50(&v18[v74], v7);
      v50(&v18[v68], v7);
      v50(v18, v7);
      v51 = v72;
      v48(v72, v49, v36);
      (*(v47 + 56))(v51, 0, 1, v36);
      v31 = TupleTypeMetadata2;
      goto LABEL_15;
    }

    (*(v76 + 8))(v33, v75);
    v31 = TupleTypeMetadata2;
    v8 = v70;
  }

  v37 = v32(&v18[v27], 1, v31);
  v36 = v75;
  if (v37 != 1)
  {
    v70 = v8;
    v38 = *(v8 + 16);
    v68 = v27;
    v39 = &v18[v27];
    v40 = v60;
    v38(v60, v39, v7);
    v33 = &v40[*(v31 + 48)];
    v41 = v77;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v41 - 8) + 8))(v40, v41);
    if (v42)
    {
      goto LABEL_7;
    }

    (*(v76 + 8))(v33, v36);
    v31 = TupleTypeMetadata2;
    v8 = v70;
    v27 = v68;
  }

  v43 = v74;
  if (v32(&v18[v74], 1, v31) != 1)
  {
    v44 = v59;
    (*(v8 + 16))(v59, &v18[v43], v7);
    v33 = &v44[*(v31 + 48)];
    v45 = v77;
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(*(v45 - 8) + 8))(v44, v45);
    if (v46)
    {
      v68 = v27;
      goto LABEL_12;
    }

    (*(v76 + 8))(v33, v36);
    v31 = TupleTypeMetadata2;
  }

  v47 = v76;
  v51 = v72;
  (*(v76 + 56))(v72, 1, 1, v36);
  (*(v61 + 8))(v18, v71);
LABEL_15:
  if ((*(v47 + 48))(v51, 1, v36) != 1)
  {
    return (*(v47 + 32))(v73, v51, v36);
  }

  v52 = (*(v62 + 8))(v51, v64);
  v53 = v73;
  v66(v52);
  v54 = v31;
  v55 = *(v71 + 48);
  v56 = v67;
  (*(v8 + 24))(v67 + *(v71 + 64), v67 + v55, v7);
  (*(v8 + 40))(v56 + v55, v56, v7);
  v57 = *(v54 + 48);
  (*(*(v77 - 8) + 16))(v56, v78);
  (*(v47 + 16))(v56 + v57, v53, v36);
  return (*(v63 + 56))(v56, 0, 1, v54);
}

uint64_t Cache3.map(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a1;
  v37 = a3;
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v10 = &v30 - v9;
  v11 = *(v6 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v30 = &v30 - v14;
  v15 = *(*(a2 - 8) + 16);
  v35 = v3;
  v15(a3, v3, a2, v13);
  v16 = *(v8 + 16);
  v34 = v8 + 16;
  v36 = v16;
  v16(v10, v3, TupleTypeMetadata3);
  v17 = *(TupleTypeMetadata3 + 48);
  v18 = *(TupleTypeMetadata3 + 64);
  v19 = v31;
  v31(v10);
  v20 = *(v11 + 8);
  v20(&v10[v18], v6);
  v20(&v10[v17], v6);
  v20(v10, v6);
  v21 = *(v11 + 40);
  v32 = v11 + 40;
  v33 = v21;
  v22 = v30;
  v21(v37, v30, v6);
  v36(v10, v35, TupleTypeMetadata3);
  v23 = *(TupleTypeMetadata3 + 48);
  v24 = *(TupleTypeMetadata3 + 64);
  v19(&v10[v23]);
  v20(&v10[v24], v6);
  v20(&v10[v23], v6);
  v20(v10, v6);
  v25 = v37;
  v26 = v22;
  v33(v37 + *(TupleTypeMetadata3 + 48), v22, v6);
  v36(v10, v35, TupleTypeMetadata3);
  v27 = *(TupleTypeMetadata3 + 48);
  v28 = *(TupleTypeMetadata3 + 64);
  v31(&v10[v28]);
  v20(&v10[v28], v6);
  v20(&v10[v27], v6);
  v20(v10, v6);
  return (v33)(v25 + *(TupleTypeMetadata3 + 64), v26, v6);
}

unint64_t specialized Dictionary.optimisticFilter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (*(a1 + 16) < 0x41uLL)
  {
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v11 = 0;
    v56 = v3;
    v57 = 0;
    v54 = 1;
    v55 = 1;
    while (v8)
    {
LABEL_13:
      v13 = __clz(__rbit64(v8)) | (v11 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v13, v68);
      *&v67 = v15;
      *(&v67 + 1) = v16;
      *&v63 = v15;
      *(&v63 + 1) = v16;
      outlined init with take of _ViewList_Elements(v68, &v64);
      outlined init with copy of (key: EventID, value: EventType)(&v63, v61);
      v59[0] = v61[0];
      v59[1] = v61[1];
      outlined init with copy of AnyTrackedValue(v62, v60);
      __swift_project_boxed_opaque_existential_1(v60, v60[3]);
      DynamicType = swift_getDynamicType();
      outlined init with copy of AnyTrackedValue(a2, v58);
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      v18 = swift_getDynamicType();
      v19 = v58[4];
      __swift_destroy_boxed_opaque_existential_1(v58);
      v20 = (*(v19 + 8))(v18, v19);
      outlined destroy of (key: EventID, value: EventType)(v59, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v63, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v62);
      if (DynamicType == v20)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v54 = 0;
        v21 = 1 << v10;
        if (v10 >= 0x40)
        {
          v21 = 0;
        }

        v57 |= v21;
      }

      else
      {
        v55 = 0;
      }

      v8 &= v8 - 1;
      ++v10;
      v3 = v56;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        if (v54)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v55)
        {

          return v3;
        }

        v23 = 1 << *(v3 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        v25 = v24 & *(v3 + 64);
        v26 = (v23 + 63) >> 6;

        v27 = 0;
        v28 = 0;
        v29 = MEMORY[0x1E69E7CC8];
        while (v25)
        {
          v30 = v28;
LABEL_38:
          v33 = __clz(__rbit64(v25));
          v25 &= v25 - 1;
          v34 = v33 | (v30 << 6);
          v35 = (*(v3 + 48) + 16 * v34);
          v36 = *v35;
          v37 = v35[1];
          outlined init with copy of AnyTrackedValue(*(v3 + 56) + 40 * v34, v61);
          *&v63 = v36;
          *(&v63 + 1) = v37;
          outlined init with take of _ViewList_Elements(v61, &v64);
LABEL_39:
          v67 = v63;
          v68[0] = v64;
          v68[1] = v65;
          v69 = v66;
          v38 = v63;
          if (!v63)
          {

            return v29;
          }

          v39 = *(&v67 + 1);
          outlined init with take of _ViewList_Elements(v68, &v63);
          if (v27 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v27 < 0x40 && ((v57 >> v27) & 1) != 0)
          {
            outlined init with copy of AnyTrackedValue(&v63, v61);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59[0] = v29;
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
            v43 = v29[2];
            v44 = (v42 & 1) == 0;
            v45 = __OFADD__(v43, v44);
            v46 = v43 + v44;
            if (v45)
            {
              goto LABEL_58;
            }

            v47 = v42;
            if (v29[3] >= v46)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v53 = v41;
                specialized _NativeDictionary.copy()();
                v41 = v53;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
              v41 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
              if ((v47 & 1) != (v48 & 1))
              {
                goto LABEL_61;
              }
            }

            v29 = v59[0];
            if (v47)
            {
              v49 = *(v59[0] + 56) + 40 * v41;
              __swift_destroy_boxed_opaque_existential_1(v49);
              outlined init with take of _ViewList_Elements(v61, v49);
              __swift_destroy_boxed_opaque_existential_1(&v63);
              v3 = v56;
              ++v27;
            }

            else
            {
              *(v59[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
              v50 = (v29[6] + 16 * v41);
              *v50 = v38;
              v50[1] = v39;
              outlined init with take of _ViewList_Elements(v61, v29[7] + 40 * v41);
              __swift_destroy_boxed_opaque_existential_1(&v63);
              v51 = v29[2];
              v45 = __OFADD__(v51, 1);
              v52 = v51 + 1;
              if (v45)
              {
                goto LABEL_59;
              }

              v29[2] = v52;
              v3 = v56;
              ++v27;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v63);
            ++v27;
          }
        }

        if (v26 <= v28 + 1)
        {
          v31 = v28 + 1;
        }

        else
        {
          v31 = v26;
        }

        v32 = v31 - 1;
        while (1)
        {
          v30 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v30 >= v26)
          {
            v25 = 0;
            v66 = 0;
            v64 = 0u;
            v65 = 0u;
            v28 = v32;
            v63 = 0u;
            goto LABEL_39;
          }

          v25 = *(v5 + 8 * v30);
          ++v28;
          if (v25)
          {
            v28 = v30;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
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
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  return result;
}

unint64_t specialized Dictionary.optimisticFilter(_:)(uint64_t a1, int a2)
{
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
    v53 = 0;
    v50 = 1;
    v51 = 1;
    while (v6)
    {
LABEL_13:
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      outlined init with copy of AnyTrackedValue(*(a1 + 56) + 40 * v11, v63);
      *&v62 = v13;
      *(&v62 + 1) = v14;
      *&v58 = v13;
      *(&v58 + 1) = v14;
      outlined init with take of _ViewList_Elements(v63, &v59);
      outlined init with copy of (key: EventID, value: EventType)(&v58, v56);
      v54[0] = v56[0];
      v54[1] = v56[1];
      outlined init with copy of AnyTrackedValue(v57, v55);
      type metadata accessor for EventFilter<TappableEvent>();
      v15 = *AGGraphGetValue();

      LOBYTE(v15) = v15(v55);

      outlined destroy of (key: EventID, value: EventType)(v54, type metadata accessor for (key: EventID, value: EventType));
      outlined destroy of (key: EventID, value: EventType)(&v58, type metadata accessor for (key: EventID, value: EventType));
      __swift_destroy_boxed_opaque_existential_1(v57);
      if (v15)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v51 = 0;
        v16 = 1 << v8;
        if (v8 >= 0x40)
        {
          v16 = 0;
        }

        v53 |= v16;
      }

      else
      {
        v50 = 0;
      }

      v6 &= v6 - 1;
      ++v8;
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
        v17 = a1;

        if (v51)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v50)
        {

          return v17;
        }

        v19 = 1 << *(a1 + 32);
        v20 = -1;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        v21 = v20 & *(a1 + 64);
        v22 = (v19 + 63) >> 6;

        v23 = 0;
        v24 = 0;
        v25 = MEMORY[0x1E69E7CC8];
        while (v21)
        {
          v26 = v24;
LABEL_38:
          v29 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v30 = v29 | (v26 << 6);
          v31 = (*(v17 + 48) + 16 * v30);
          v32 = *v31;
          v33 = v31[1];
          outlined init with copy of AnyTrackedValue(*(v17 + 56) + 40 * v30, v56);
          *&v58 = v32;
          *(&v58 + 1) = v33;
          outlined init with take of _ViewList_Elements(v56, &v59);
LABEL_39:
          v62 = v58;
          v63[0] = v59;
          v63[1] = v60;
          v64 = v61;
          v34 = v58;
          if (!v58)
          {

            return v25;
          }

          v35 = *(&v62 + 1);
          outlined init with take of _ViewList_Elements(v63, &v58);
          if (v23 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v23 < 0x40 && ((v53 >> v23) & 1) != 0)
          {
            outlined init with copy of AnyTrackedValue(&v58, v56);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v54[0] = v25;
            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
            v39 = v25[2];
            v40 = (v38 & 1) == 0;
            v41 = __OFADD__(v39, v40);
            v42 = v39 + v40;
            if (v41)
            {
              goto LABEL_58;
            }

            v43 = v38;
            if (v25[3] >= v42)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v49 = v37;
                specialized _NativeDictionary.copy()();
                v37 = v49;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
              v37 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
              if ((v43 & 1) != (v44 & 1))
              {
                goto LABEL_61;
              }
            }

            v17 = a1;
            v25 = v54[0];
            if (v43)
            {
              v45 = *(v54[0] + 56) + 40 * v37;
              __swift_destroy_boxed_opaque_existential_1(v45);
              outlined init with take of _ViewList_Elements(v56, v45);
              __swift_destroy_boxed_opaque_existential_1(&v58);
              ++v23;
            }

            else
            {
              *(v54[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
              v46 = (v25[6] + 16 * v37);
              *v46 = v34;
              v46[1] = v35;
              outlined init with take of _ViewList_Elements(v56, v25[7] + 40 * v37);
              __swift_destroy_boxed_opaque_existential_1(&v58);
              v47 = v25[2];
              v41 = __OFADD__(v47, 1);
              v48 = v47 + 1;
              if (v41)
              {
                goto LABEL_60;
              }

              v25[2] = v48;
              ++v23;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v58);
            ++v23;
          }
        }

        if (v22 <= v24 + 1)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = v22;
        }

        v28 = v27 - 1;
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v26 >= v22)
          {
            v21 = 0;
            v61 = 0;
            v59 = 0u;
            v60 = 0u;
            v24 = v28;
            v58 = 0u;
            goto LABEL_39;
          }

          v21 = *(v3 + 8 * v26);
          ++v24;
          if (v21)
          {
            v24 = v26;
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
    return specialized _NativeDictionary.filter(_:)(a1, a2);
  }

  return result;
}

uint64_t Dictionary.optimisticFilter(_:)(uint64_t (*a1)(char *, char *), void (**a2)(char *, void, uint64_t, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v120 = &v114 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v139 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v114 - v18;
  v130 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v146 = &v114 - v23;
  v129 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v124 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v147 = &v114 - v27;
  v145 = v28;
  v123 = type metadata accessor for Optional();
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v114 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v114 - v34;
  if (MEMORY[0x193ABE6A0](a3, a4, a5, a6, v33) > 64)
  {

    return Dictionary.filter(_:)();
  }

  v153 = a5;
  v115 = a3 & 0xC000000000000001;
  v119 = a6;
  v122 = v21;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v37 = __CocoaDictionary.makeIterator()();
    v121 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v37 | 0x8000000000000000;
  }

  else
  {
    v41 = -1 << *(a3 + 32);
    v38 = ~v41;
    v42 = *(a3 + 64);
    v121 = a3 + 64;
    v43 = -v41;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v39 = v44 & v42;
    v40 = a3;
  }

  v152 = (v129 + 32);
  v151 = (v130 + 32);
  v144 = (v15 + 56);
  v117 = v38;
  v45 = (v38 + 64) >> 6;
  v132 = (v129 + 16);
  v131 = (v130 + 16);
  v143 = (v15 + 48);
  v134 = (v15 + 16);
  v133 = (v15 + 8);
  v141 = (v129 + 8);
  v142 = (v130 + 8);
  v116 = a3;

  v46 = 0;
  v47 = 0;
  v140 = 0;
  v127 = 1;
  v128 = 1;
  v150 = a4;
  v135 = a1;
  v136 = a2;
  v137 = v40;
  v48 = v39;
  while (1)
  {
    v149 = v46;
    if ((v40 & 0x8000000000000000) != 0)
    {
      break;
    }

    v50 = v48;
    v51 = v47;
    if (v48)
    {
LABEL_21:
      v148 = ((v50 - 1) & v50);
      v55 = __clz(__rbit64(v50)) | (v51 << 6);
      v56 = v129;
      (*(v129 + 16))(v147, *(v40 + 48) + *(v129 + 72) * v55, a4);
      v57 = *(v40 + 56);
      v58 = v130;
      v59 = v153;
      (*(v130 + 16))(v146, v57 + *(v130 + 72) * v55, v153);
      v60 = v145;
      v61 = *(v145 + 48);
      (*(v56 + 32))(v35, v147, v150);
      v62 = v59;
      a4 = v150;
      (*(v58 + 32))(&v35[v61], v146, v62);
      v63 = *v144;
      (*v144)(v35, 0, 1, v60);
      v53 = v51;
      v64 = v60;
    }

    else
    {
      if (v45 <= v47 + 1)
      {
        v52 = v47 + 1;
      }

      else
      {
        v52 = v45;
      }

      v53 = v52 - 1;
      v54 = v47;
      while (1)
      {
        v51 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
          goto LABEL_67;
        }

        if (v51 >= v45)
        {
          break;
        }

        v50 = *(v121 + 8 * v51);
        ++v54;
        if (v50)
        {
          goto LABEL_21;
        }
      }

      v64 = v145;
      v63 = *v144;
      (*v144)(v35, 1, 1, v145);
      v148 = 0;
    }

LABEL_25:
    if ((*v143)(v35, 1, v64) == 1)
    {
      goto LABEL_32;
    }

    v71 = v64;
    v72 = *(v64 + 48);
    v73 = v138;
    (*v152)(v138, v35, a4);
    v74 = v153;
    (*v151)(&v73[v72], &v35[v72], v153);
    v75 = v139;
    (*v134)(v139, v73, v71);
    v76 = *(v71 + 48);
    LOBYTE(v72) = v135(v75, &v75[v76]);
    (*v133)(v73, v71);
    v77 = v74;
    a4 = v150;
    (*v142)(&v75[v76], v77);
    result = (*v141)(v75, a4);
    if (v72)
    {
      v49 = v149;
      if ((v149 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v128 = 0;
      v78 = 1 << v149;
      if (v149 >= 0x40)
      {
        v78 = 0;
      }

      v140 |= v78;
    }

    else
    {
      v127 = 0;
      v49 = v149;
    }

    v46 = v49 + 1;
    v47 = v53;
    v48 = v148;
    v40 = v137;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v65 = v147;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v66 = v146;
    v67 = v153;
    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v68 = v145;
    v69 = *(v145 + 48);
    (*v152)(v35, v65, a4);
    v70 = &v35[v69];
    v64 = v68;
    (*v151)(v70, v66, v67);
    v63 = *v144;
    (*v144)(v35, 0, 1, v68);
    v53 = v47;
    v148 = v48;
    goto LABEL_25;
  }

  v63 = *v144;
  (*v144)(v35, 1, 1, v145);
LABEL_32:
  outlined consume of Set<EventID>.Iterator._Variant();
  if (v128)
  {
    v79 = v153;
    swift_getTupleTypeMetadata2();
    v80 = static Array._allocateUninitialized(_:)();
    v81 = specialized Dictionary.init(dictionaryLiteral:)(v80, a4, v79, v119);

    return v81;
  }

  if (v127)
  {
  }

  v149 = v63;
  v154 = Dictionary.init()();
  if (v115)
  {
    v82 = __CocoaDictionary.makeIterator()();
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = v82 | 0x8000000000000000;
  }

  else
  {
    v87 = -1 << *(v116 + 32);
    v84 = ~v87;
    v83 = (v116 + 64);
    v88 = -v87;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    else
    {
      v89 = -1;
    }

    v85 = v89 & *(v116 + 64);
    v86 = v116;
  }

  v90 = v126;
  v91 = v125;
  v135 = v84;
  v92 = (v84 + 64) >> 6;
  v148 = (v118 + 32);
  v136 = (v130 + 56);

  v93 = 0;
  v94 = 0;
  v138 = v86;
  v139 = v83;
  while (2)
  {
    v137 = v85;
    if ((v86 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        v105 = 1;
        v113 = v85;
        v98 = v94;
        v150 = v113;
        v103 = v145;
        goto LABEL_57;
      }

      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v101 = v146;
      v102 = v153;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v96 = v94;
      v150 = v85;
LABEL_56:
      v103 = v145;
      v104 = *(v145 + 48);
      v90 = v126;
      (*v152)();
      (*v151)(&v90[v104], v101, v102);
      v105 = 0;
      v98 = v96;
      v91 = v125;
LABEL_57:
      (v149)(v90, v105, 1, v103);
      (*v148)(v91, v90, v123);
      v106 = (*v143)(v91, 1, v103);
      v107 = v124;
      if (v106 == 1)
      {
        outlined consume of Set<EventID>.Iterator._Variant();
        return v154;
      }

      v108 = *(v103 + 48);
      (*v152)(v124, v91, a4);
      v109 = &v91[v108];
      v110 = v122;
      v111 = v153;
      result = (*v151)(v122, v109, v153);
      if (v93 == 0x8000000000000000)
      {
        goto LABEL_69;
      }

      if (v93 <= 0x3F && ((v140 >> v93) & 1) != 0)
      {
        (*v132)(v147, v107, a4);
        v112 = v120;
        (*v131)(v120, v110, v111);
        (*v136)(v112, 0, 1, v111);
        type metadata accessor for Dictionary();
        v91 = v125;
        v90 = v126;
        Dictionary.subscript.setter();
        v111 = v153;
      }

      (*v142)(v110, v111);
      result = (*v141)(v107, a4);
      ++v93;
      v94 = v98;
      v85 = v150;
      v86 = v138;
      v83 = v139;
      continue;
    }

    break;
  }

  v95 = v85;
  v96 = v94;
  if (v85)
  {
LABEL_53:
    v150 = (v95 - 1) & v95;
    v100 = __clz(__rbit64(v95)) | (v96 << 6);
    (*(v129 + 16))(v147, *(v86 + 48) + *(v129 + 72) * v100, a4);
    v101 = v146;
    v102 = v153;
    (*(v130 + 16))(v146, *(v86 + 56) + *(v130 + 72) * v100, v153);
    goto LABEL_56;
  }

  if (v92 <= v94 + 1)
  {
    v97 = v94 + 1;
  }

  else
  {
    v97 = v92;
  }

  v98 = v97 - 1;
  v99 = v94;
  while (1)
  {
    v96 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v96 >= v92)
    {
      v150 = 0;
      v105 = 1;
      v103 = v145;
      goto LABEL_57;
    }

    v95 = *&v83[8 * v96];
    ++v99;
    if (v95)
    {
      goto LABEL_53;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t Dictionary.init<A>(identifying:by:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v47 = a2;
  v48 = a3;
  v39 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v45 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v26 = &v35 - v25;
  v49 = a4;
  v52 = Dictionary.init()();
  v37 = v20;
  (*(v20 + 16))(v23, v39, a6);
  dispatch thunk of Sequence.makeIterator()();
  v38 = a6;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v27 = v51;
  v28 = *(v51 + 48);
  if (v28(v19, 1, a5) != 1)
  {
    v30 = *(v27 + 32);
    v29 = v27 + 32;
    v42 = (v29 - 16);
    v43 = v30;
    v51 = v29;
    v40 = (v29 - 24);
    v41 = (v29 + 24);
    v44 = v28;
    do
    {
      v43(v14, v19, a5);
      v47(v14);
      v31 = v19;
      v32 = v45;
      (*v42)(v45, v14, a5);
      (*v41)(v32, 0, 1, a5);
      type metadata accessor for Dictionary();
      v19 = v31;
      v33 = v44;
      Dictionary.subscript.setter();
      (*v40)(v14, a5);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v33(v31, 1, a5) != 1);
  }

  (*(v37 + 8))(v39, v38);
  (*(v36 + 8))(v26, AssociatedTypeWitness);
  return v52;
}

uint64_t readEnvironment(_:_:)(_BYTE *a1, char *a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v4 = getenv(a2);
    if (v4)
    {
      LOBYTE(v2) = atoi(v4) != 0;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *a1 = v2;
  }

  return v2 & 1;
}

uint64_t BidirectionalCollection<>.formNextLexicographicalPermutation()(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v145 = a3;
  v140 = a4;
  v141 = a2;
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v132 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v101 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v100 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v111 = type metadata accessor for Range();
  v100 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v102 = &v100 - v11;
  swift_getAssociatedTypeWitness();
  v105 = swift_getAssociatedConformanceWitness();
  v108 = swift_getAssociatedTypeWitness();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v100 - v12;
  v118 = swift_checkMetadataState();
  v103 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v100 - v13;
  v135 = AssociatedConformanceWitness;
  v116 = type metadata accessor for PartialRangeFrom();
  v134 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v142 = &v100 - v14;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v104 = &v100 - v16;
  v130 = swift_getTupleTypeMetadata2();
  v110 = type metadata accessor for Optional();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v131 = &v100 - v17;
  v137 = AssociatedTypeWitness;
  v121 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v100 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v100 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v100 - v25;
  v26 = v5;
  v27 = a1;
  v28 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v28);
  v127 = swift_getAssociatedConformanceWitness();
  v29 = type metadata accessor for ReversedCollection();
  v129 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v100 - v30;
  WitnessTable = swift_getWitnessTable();
  v32 = type metadata accessor for Slice();
  v123 = v32;
  v128 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v122 = &v100 - v33;
  v34 = swift_getWitnessTable();
  v125 = v34;
  v124 = swift_getWitnessTable();
  v151 = v32;
  v152 = v29;
  v153 = v34;
  v154 = v124;
  v139 = type metadata accessor for Zip2Sequence();
  v120 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v100 - v35;
  v36 = v144;
  dispatch thunk of Collection.indices.getter();
  v37 = v127;
  MEMORY[0x193ABE9C0](v28, v127);
  v38 = v122;
  Collection.dropFirst(_:)();
  v39 = v26;
  v40 = v130;
  v113 = v39;
  dispatch thunk of Collection.indices.getter();
  MEMORY[0x193ABE9C0](v28, v37);
  v41 = v138;
  v42 = v123;
  zip<A, B>(_:_:)();
  v43 = v29;
  v44 = v139;
  v129[1](v31, v43);
  (*(v128 + 1))(v38, v42);
  v133 = v27;
  v146 = v27;
  v147 = v141;
  v148 = v145;
  v149 = v140;
  v150 = v36;
  swift_getWitnessTable();
  v45 = v131;
  Sequence.first(where:)();
  v46 = (*(*(v40 - 8) + 48))(v45, 1, v40);
  if (v46 == 1)
  {
    (*(v120 + 8))(v41, v44);
    (*(v109 + 8))(v45, v110);
    return v46 != 1;
  }

  v47 = *(v40 + 48);
  v48 = v121;
  v49 = v121 + 32;
  v50 = *(v121 + 32);
  v51 = v137;
  v50(v143, v45, v137);
  v52 = &v45[v47];
  v53 = v49;
  v54 = v136;
  v128 = v50;
  v50(v136, v52, v51);
  v55 = *(v135 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v57 = v48;
  v127 = v55;
  v130 = v53;
  LODWORD(WitnessTable) = v46;
  v58 = *(v48 + 16);
  v59 = v142;
  v131 = (v48 + 16);
  v129 = v58;
  (v58)(v142, v54, v51);
  v60 = v116;
  swift_getWitnessTable();
  v61 = v119;
  v62 = v133;
  v63 = v144;
  v64 = v145;
  MutableCollection.subscript.getter();
  v65 = *(v134 + 8);
  v134 += 8;
  v125 = v65;
  v65(v59, v60);
  v66 = v106;
  v67 = v118;
  dispatch thunk of Collection.indices.getter();
  v68 = (*(v103 + 8))(v61, v67);
  MEMORY[0x1EEE9AC00](v68);
  v70 = v140;
  v69 = v141;
  *(&v100 - 6) = v62;
  *(&v100 - 5) = v69;
  *(&v100 - 4) = v64;
  *(&v100 - 3) = v70;
  v71 = v143;
  *(&v100 - 2) = v63;
  *(&v100 - 1) = v71;
  v141 = swift_getAssociatedConformanceWitness();
  v72 = v108;
  v73 = v137;
  swift_getAssociatedConformanceWitness();
  v74 = v104;
  BidirectionalCollection.last(where:)();
  (*(v107 + 8))(v66, v72);
  result = (*(v57 + 48))(v74, 1, v73);
  if (result != 1)
  {
    v75 = v128;
    v128(v114, v74, v73);
    dispatch thunk of MutableCollection.swapAt(_:_:)();
    v76 = v136;
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = v115;
    v78 = v102;
    v79 = v117;
    if (result)
    {
      v80 = v142;
      (v129)(v142, v76, v73);
      dispatch thunk of Collection.endIndex.getter();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if (result)
      {
        (v129)(v77, v80, v73);
        v81 = v79;
        v82 = TupleTypeMetadata2;
        v83 = v75;
        v75(&v77[*(TupleTypeMetadata2 + 48)], v81, v73);
        v84 = v132;
        v85 = *(v132 + 16);
        v86 = v101;
        v127 = v132 + 16;
        v124 = v85;
        v85(v101, v77, v82);
        v140 = *(v82 + 48);
        v83(v78, v86, v73);
        v87 = *(v121 + 8);
        v87(&v140[v86], v73);
        v88 = *(v84 + 32);
        v132 = v84 + 32;
        v140 = v88;
        (v88)(v86, v77, v82);
        v89 = v78;
        v90 = v111;
        v83(&v78[*(v111 + 36)], &v86[*(v82 + 48)], v73);
        v123 = v87;
        v87(v86, v73);
        dispatch thunk of Collection.subscript.getter();
        (*(v100 + 8))(v78, v90);
        swift_getAssociatedConformanceWitness();
        MutableCollection<>.reverse()();
        v91 = v117;
        dispatch thunk of Collection.endIndex.getter();
        v92 = v142;
        result = dispatch thunk of static Comparable.<= infix(_:_:)();
        if (result)
        {
          v93 = v115;
          v94 = TupleTypeMetadata2;
          v95 = v137;
          (v129)(v115, v92, v137);
          v96 = v128;
          v128(&v93[*(v94 + 48)], v91, v95);
          v124(v86, v93, v94);
          v97 = *(v94 + 48);
          v96(v89, v86, v95);
          v98 = &v86[v97];
          v99 = v123;
          v123(v98, v95);
          (v140)(v86, v93, v94);
          v96(&v89[*(v111 + 36)], &v86[*(v94 + 48)], v95);
          v99(v86, v95);
          dispatch thunk of MutableCollection.subscript.setter();
          v125(v142, v116);
          v99(v114, v95);
          v99(v136, v95);
          (*(v120 + 8))(v138, v139);
          v99(v143, v95);
          v46 = WitnessTable;
          return v46 != 1;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t closure #1 in BidirectionalCollection<>.formNextLexicographicalPermutation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v40 = a2;
  v35 = a1;
  v7 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  v36 = v34 - v11;
  v34[0] = v7;
  v34[1] = a3;
  v13 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = *(v15 + 16);
  v38 = v34 - v20;
  v19(v34 - v20, a1, TupleTypeMetadata2, v18);
  v39 = *(TupleTypeMetadata2 + 48);
  v21 = dispatch thunk of Collection.subscript.read();
  v22 = *(v45 + 16);
  v23 = v12;
  v24 = AssociatedTypeWitness;
  v22(v23);
  v21(v44, 0);
  v25 = v37;
  (v19)(v37, v35, TupleTypeMetadata2);
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = dispatch thunk of Collection.subscript.read();
  v28 = v42;
  v22(v42);
  (v27)(v44, 0);
  v29 = v36;
  LOBYTE(v27) = dispatch thunk of static Comparable.< infix(_:_:)();
  v30 = *(v45 + 8);
  v30(v28, v24);
  v30(v29, v24);
  v31 = *(*(v13 - 8) + 8);
  v31(&v25[v26], v13);
  v31(v25, v13);
  v32 = v38;
  v31(&v38[v39], v13);
  v31(v32, v13);
  return v27 & 1;
}

uint64_t closure #2 in BidirectionalCollection<>.formNextLexicographicalPermutation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[2] = a3;
  v19[3] = a7;
  v19[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v14 = dispatch thunk of Collection.subscript.read();
  v15 = *(v8 + 16);
  v15(v13);
  v14(v20, 0);
  v16 = dispatch thunk of Collection.subscript.read();
  v15(v10);
  (v16)(v20, 0);
  LOBYTE(v16) = dispatch thunk of static Comparable.> infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, AssociatedTypeWitness);
  v17(v13, AssociatedTypeWitness);
  return v16 & 1;
}

uint64_t RandomAccessCollection<>.lowerBound(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return RandomAccessCollection.lowerBound(_:)(partial apply for closure #1 in RandomAccessCollection<>.lowerBound(of:), v6, a5);
}

uint64_t ClosedRange.intersection(_:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v33 = a2;
  v3 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  v30 = TupleTypeMetadata2;
  v31 = v5;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  max<A>(_:_:)();
  v32 = a1;
  min<A>(_:_:)();
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {
    v27 = *(v11 + 8);
    v27(v14, v3);
    v27(v17, v3);
    v26 = 1;
    v25 = v32;
    v23 = v33;
    return (*(*(v25 - 8) + 56))(v23, v26, 1, v25);
  }

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v19 = *(v11 + 32);
    v20 = v10;
    v19(v10, v17, v3);
    v21 = v30;
    v19(&v10[*(v30 + 48)], v14, v3);
    v22 = v31;
    (*(v31 + 16))(v7, v20, v21);
    v29 = *(v21 + 48);
    v23 = v33;
    v19(v33, v7, v3);
    v24 = *(v11 + 8);
    v24(&v7[v29], v3);
    (*(v22 + 32))(v7, v20, v21);
    v25 = v32;
    v19(&v23[*(v32 + 36)], &v7[*(v21 + 48)], v3);
    v24(v7, v3);
    v26 = 0;
    return (*(*(v25 - 8) + 56))(v23, v26, 1, v25);
  }

  __break(1u);
  return result;
}

uint64_t ClosedRange.init(bounds:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v39 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v36 = TupleTypeMetadata2;
  v37 = v10;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v34 - v14;
  v15 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  min<A>(_:_:)();
  max<A>(_:_:)();
  v38 = a4;
  LOBYTE(a4) = dispatch thunk of static Comparable.<= infix(_:_:)();
  v22 = *(v15 + 8);
  v22(a2, a3);
  v35 = v22;
  result = (v22)(a1, a3);
  if (a4)
  {
    v24 = *(v15 + 32);
    v25 = v34;
    v24(v34, v21, a3);
    v26 = v36;
    v24(&v25[*(v36 + 48)], v18, a3);
    v27 = v37;
    (*(v37 + 16))(v12, v25, v26);
    v28 = *(v26 + 48);
    v29 = v39;
    v24(v39, v12, a3);
    v30 = &v12[v28];
    v31 = v35;
    v35(v30, a3);
    (*(v27 + 32))(v12, v25, v26);
    v32 = *(v26 + 48);
    v33 = type metadata accessor for ClosedRange();
    v24(&v29[*(v33 + 36)], &v12[v32], a3);
    return v31(v12, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClosedRange.union(_:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v28 = a2;
  v3 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  min<A>(_:_:)();
  max<A>(_:_:)();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v17 = *(v9 + 32);
    v17(v8, v15, v3);
    v18 = TupleTypeMetadata2;
    v17(&v8[*(TupleTypeMetadata2 + 48)], v12, v3);
    v19 = v26;
    v20 = v27;
    (*(v26 + 16))(v27, v8, v18);
    v24 = *(v18 + 48);
    v25 = a1;
    v21 = v28;
    v17(v28, v20, v3);
    v22 = *(v9 + 8);
    v22(&v20[v24], v3);
    (*(v19 + 32))(v20, v8, v18);
    v17(&v21[*(v25 + 36)], &v20[*(v18 + 48)], v3);
    return (v22)(v20, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Range.contains(_:)()
{
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    return dispatch thunk of static Comparable.>= infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static ClosedRange<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, char *a7@<X8>)
{
  v39 = a6;
  v40 = a4;
  v38 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v36 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v23 = *(a5 + 8);
  v24 = v39;
  (v39)(a1, a2, a3, v23, v20);
  v34 = type metadata accessor for ClosedRange();
  v24(a1 + *(v34 + 36), a2, a3, v23);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v26 = v36;
    v27 = *(v36 + 32);
    v27(v15, v22, a3);
    v28 = TupleTypeMetadata2;
    v27(&v15[*(TupleTypeMetadata2 + 48)], v18, a3);
    v29 = v37;
    (*(v37 + 16))(v12, v15, v28);
    v30 = *(v28 + 48);
    v40 = v15;
    v31 = v38;
    v27(v38, v12, a3);
    v32 = *(v26 + 8);
    v32(&v12[v30], a3);
    (*(v29 + 32))(v12, v40, v28);
    v27(&v31[*(v34 + 36)], &v12[*(v28 + 48)], a3);
    return (v32)(v12, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static ClosedRange<>.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = type metadata accessor for ClosedRange();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v13 + 32))(&v18 - v15, a1, v12, v14);
  a6(v16, a2, a3, a4, a5);
  return (*(v13 + 8))(v16, v12);
}

uint64_t Range<>.offset(by:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v27 = a2;
  v3 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v22 - v8;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v17 = *(v9 + 32);
    v18 = v25;
    v17(v25, v15, v3);
    v17(&v18[*(TupleTypeMetadata2 + 48)], v12, v3);
    v19 = v26;
    (*(v5 + 16))(v26, v18, TupleTypeMetadata2);
    v23 = *(TupleTypeMetadata2 + 48);
    v24 = a1;
    v20 = v27;
    v17(v27, v19, v3);
    v21 = *(v9 + 8);
    v21(&v19[v23], v3);
    (*(v5 + 32))(v19, v18, TupleTypeMetadata2);
    v17(&v20[*(v24 + 36)], &v19[*(TupleTypeMetadata2 + 48)], v3);
    return (v21)(v19, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CollectionOfTwo.elements.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, v3, TupleTypeMetadata2, v8);
  v12 = *(TupleTypeMetadata2 + 48);
  v13 = *(*(v6 - 8) + 32);
  v13(a1, v10, v6);
  return (v13)(a2, &v10[v12], v6);
}

uint64_t CollectionOfTwo.elements.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 32);
  v15(&v19 - v12, a1, v5, v11);
  (v15)(&v13[*(TupleTypeMetadata2 + 48)], v20, v5);
  (*(v7 + 32))(v9, v13, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *(v14 + 40);
  v17(v3, v9, v5);
  return (v17)(v3 + *(TupleTypeMetadata2 + 48), &v9[v16], v5);
}

uint64_t CollectionOfTwo.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v16 - v11;
  if (a1 == 1)
  {
    (*(v9 + 16))(v12, v4, TupleTypeMetadata2, v10);
    v13 = &v12[*(TupleTypeMetadata2 + 48)];
LABEL_5:
    v14 = *(v7 - 8);
    (*(v14 + 32))(a3, v13, v7);
    return (*(v14 + 8))(v12, v7);
  }

  if (!a1)
  {
    (*(v9 + 16))(v12, v4, TupleTypeMetadata2, v10);
    v13 = v12;
    v12 += *(TupleTypeMetadata2 + 48);
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t key path setter for CollectionOfTwo.subscript(_:) : <A>CollectionOfTwo<A>A(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v9 - v2;
  v5 = *v4;
  (*(v6 + 16))(&v9 - v2, v1);
  v7 = type metadata accessor for CollectionOfTwo();
  return CollectionOfTwo.subscript.setter(v3, v5, v7);
}

uint64_t CollectionOfTwo.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v5 = *(a3 + 16);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v7 = *(*(v5 - 8) + 40);
    v8 = v3 + *(TupleTypeMetadata2 + 48);
    v9 = a1;
    v10 = v5;
  }

  else
  {
    if (a2)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v10 = *(a3 + 16);
    v7 = *(*(v10 - 8) + 40);
    v8 = v3;
    v9 = a1;
  }

  return v7(v8, v9, v10);
}

void (*CollectionOfTwo.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  CollectionOfTwo.subscript.getter(a2, a3, v13);
  return CollectionOfTwo.subscript.modify;
}

void CollectionOfTwo.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    CollectionOfTwo.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CollectionOfTwo.subscript.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfTwo<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionOfTwo.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance CollectionOfTwo<A>(uint64_t a1)
{
  specialized MutableCollection<>.subscript.setter();
  swift_getWitnessTable();
  v2 = type metadata accessor for Slice();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance CollectionOfTwo<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CollectionOfTwo<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CollectionOfTwo.subscript.read(v6, *a2, a3);
  return protocol witness for Collection.subscript.read in conformance CollectionOfTwo<A>;
}

uint64_t (*CollectionOfTwo.subscript.read(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  CollectionOfTwo.subscript.getter(a2, a3, v9);
  return CollectionOfTwo.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance CollectionOfTwo<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t protocol witness for Collection.indices.getter in conformance CollectionOfTwo<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance CollectionOfTwo<A>()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CollectionOfTwo<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CollectionOfTwo<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = type metadata accessor for IndexingIterator();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CollectionOfTwo<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance CollectionOfTwo<A>()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t String.isNewLineOrReturn.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 10 && a2 == 0xE100000000000000)
  {
    return 1;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = a1 == 13 && a2 == 0xE100000000000000;
  v7 = v6;
  if ((v5 & 1) != 0 || v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id one-time initialization function for roundingFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setMinimumFractionDigits_];
  result = [v0 setMaximumFractionDigits_];
  roundingFormatter.super.super.isa = v0;
  return result;
}

void specialized BinaryFloatingPoint.roundedForDisplay()()
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
}

Swift::Void __swiftcall DefaultStringInterpolation.appendInterpolation(rounding:)(Swift::Float rounding)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  specialized BinaryFloatingPoint.roundedForDisplay()();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v3;
  v6 = [v4 initWithFloat_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    MEMORY[0x193ABEDD0](v8, v10);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DefaultStringInterpolation.appendInterpolation(rounding:)(Swift::Double rounding)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v3 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v4 = round(v3 * rounding) / v3;
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    MEMORY[0x193ABEDD0](v8, v10);
  }

  else
  {
    __break(1u);
  }
}

void DefaultStringInterpolation.appendInterpolation(rounding:)(__n128 a1)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v2 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v3 = round(v19.f64[0] * v2) / v2;
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v6 = [(objc_class *)isa stringFromNumber:v5];

  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x193ABEDD0](v7, v9);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v10 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v11 = round(vmuld_lane_f64(v10, v19, 1)) / v10;
  if (v11 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v14 = [(objc_class *)isa stringFromNumber:v13];

  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  MEMORY[0x193ABEDD0](v15, v17);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
}

void DefaultStringInterpolation.appendInterpolation(rounding:)(float64x2_t a1, __n128 a2)
{
  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v3 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v4 = round(a1.f64[0] * v3) / v3;
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x193ABEDD0](v8, v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v12 = round(vmuld_lane_f64(v11, a1, 1)) / v11;
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v15 = [(objc_class *)isa stringFromNumber:v14];

  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  MEMORY[0x193ABEDD0](v16, v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v20 = round(v19 * v28) / v19;
  if (v20 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v23 = [(objc_class *)isa stringFromNumber:v22];

  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  MEMORY[0x193ABEDD0](v24, v26);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
}

{
  _StringGuts.grow(_:)(16);

  if (one-time initialization token for roundingFormatter != -1)
  {
    swift_once();
  }

  isa = roundingFormatter.super.super.isa;
  v3 = __exp10([(objc_class *)roundingFormatter.super.super.isa maximumFractionDigits]);
  v4 = round(a1.f64[0] * v3) / v3;
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [(objc_class *)isa stringFromNumber:v6];

  if (!v7)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x193ABEDD0](v8, v10);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v11 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v12 = round(vmuld_lane_f64(v11, a1, 1)) / v11;
  if (v12 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v15 = [(objc_class *)isa stringFromNumber:v14];

  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  MEMORY[0x193ABEDD0](v16, v18);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v19 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v20 = round(v19 * v36.f64[0]) / v19;
  if (v20 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v23 = [(objc_class *)isa stringFromNumber:v22];

  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  MEMORY[0x193ABEDD0](v24, v26);

  MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
  v27 = __exp10([(objc_class *)isa maximumFractionDigits]);
  v28 = round(vmuld_lane_f64(v27, v36, 1)) / v27;
  if (v28 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = v28;
  }

  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v31 = [(objc_class *)isa stringFromNumber:v30];

  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  MEMORY[0x193ABEDD0](v32, v34);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  MEMORY[0x193ABEDD0](40, 0xE100000000000000);
}

uint64_t closure #1 in Sequence.sorted<A>(by:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v10 = dispatch thunk of static Comparable.< infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  return v10 & 1;
}

uint64_t closure #1 in Array.sort<A>(by:reversed:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = *(*a4 + *MEMORY[0x1E69E77B0] + 8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (a3)
  {
    v12 = dispatch thunk of static Comparable.> infix(_:_:)();
  }

  else
  {
    v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  }

  v13 = v12;
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  return v13 & 1;
}

uint64_t Array<A>.removingDuplicates()()
{
  Dictionary.init()();
  type metadata accessor for Array();

  swift_getWitnessTable();
  v0 = _ArrayProtocol.filter(_:)();

  return v0;
}

uint64_t Array<A>.removeDuplicates()()
{
  v1 = Array<A>.removingDuplicates()();

  *v0 = v1;
  return result;
}

uint64_t EquatableOptionalObject.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t ConformingTuple.wrappedValue.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7, v21);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t ConformingTuple.wrappedValue.setter(uint64_t TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6, v21);
}

uint64_t ConformingTuple.init(wrappedValue:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  v39 = a4;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ConformingTuple();
  v38 = &v36;
  v24 = *(v37 - 8);
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
  v27 = &v36 - v26;
  if (a2)
  {
    v28 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v7 + 32);
    v30 = a2;
    do
    {
      if (a2 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *v29;
      }

      v33 = *v28++;
      v32 = v33;
      v34 = *v6++;
      (*(*(v32 - 8) + 32))(&v23[v31], v34);
      v29 += 4;
      --v30;
    }

    while (v30);
  }

  (*(v21 + 16))(v27, v23, v7, v25);
  (*(v24 + 32))(v39, v27, v37);
  return (*(v21 + 8))(v23, v7);
}

uint64_t ConformingTuple<each A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v7 = *(a2 + 16);
  if (v7 == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v9 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v12 = 0;
      v13 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v11[-v13] < 0x20)
      {
        goto LABEL_9;
      }

      v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v14 = (v13 + 16);
      v15 = v11 + 16;
      v16 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v17 = *v14;
        *(v15 - 1) = *(v14 - 1);
        *v15 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v7 != v12)
      {
LABEL_9:
        v18 = v7 - v12;
        v19 = 8 * v12;
        v20 = &v11[8 * v12];
        v21 = (v13 + v19);
        do
        {
          v22 = *v21++;
          *v20 = v22;
          v20 += 8;
          --v18;
        }

        while (v18);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v9;
  }

  v44[1] = v44;
  v23 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v44[0] = v23;
  v27 = *(v23 + 16);
  v47 = v25;
  v45 = TupleTypeMetadata;
  v28 = v27(v25, v5, TupleTypeMetadata);
  if (v7)
  {
    v29 = v7;
    v30 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v31 = v49 & 0xFFFFFFFFFFFFFFFELL;
    v32 = 32;
    v33 = v29;
    v46 = v29;
    while (1)
    {
      v48 = v44;
      v49 = v33;
      v34 = *v30;
      v35 = *(*v30 - 8);
      v36.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
      v38 = v44 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      v40 = v39 == 1 ? 0 : *(v45 + v32);
      (*(v35 + 16))(v38, &v47[v40], v34, v36);
      __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
      v41 = v52;
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v52 = v41;
      v42 = v49;
      if (v41)
      {
        break;
      }

      v28 = (*(v35 + 8))(v38, v34);
      v32 += 16;
      v31 += 8;
      ++v30;
      v33 = v42 - 1;
      if (!v33)
      {
        goto LABEL_19;
      }
    }

    (*(v35 + 8))(v38, v34);
    (*(v44[0] + 8))(v47, v45);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
LABEL_19:
    (*(v44[0] + 8))(v47, v45);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }
}

uint64_t ConformingTuple<each A>.init(from:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v39 = a4;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v37 = TupleTypeMetadata;
  v38 = &v35;
  v48 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ConformingTuple();
  v45 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  v40 = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v44;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v26;
  v42 = v24;
  v43 = &v35;
  v44 = v23;
  v35 = a1;
  if (a2)
  {
    v29 = 0;
    v39 &= ~1uLL;
    v40 &= ~1uLL;
    v30 = v37 + 16;
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      ++v29;
      v30 += 16;
      v31 = v42;
      v32 = v48;
      v33 = v45;
      v34 = v41;
    }

    while (a2 != v29);
  }

  else
  {
    v31 = v42;
    v32 = v48;
    v33 = v45;
    v34 = v41;
  }

  (*(v32 + 32))(v34, v44, v37);
  __swift_destroy_boxed_opaque_existential_1(v46);
  (*(v33 + 32))(v36, v34, v31);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t static ConformingTuple<each A>.== infix(_:_:)(uint64_t TupleTypeMetadata, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v58 = a5;
  v6 = a3;
  if (a3 == 1)
  {
    v8 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v11 = 0;
      v12 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v6)
      {
LABEL_9:
        v17 = v6 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = *(v22 + 16);
  v53 = v50 - v28;
  v27(v26);
  v54 = v24;
  v29 = (v27)(v24, a2, v8);
  if (v6)
  {
    v50[1] = v50;
    v51 = v22;
    v30 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v31 = (v58 & 0xFFFFFFFFFFFFFFFELL);
    v52 = v8;
    v32 = (v8 + 32);
    v33 = v6;
    v58 = v6;
    while (1)
    {
      v56 = v50;
      v34 = *v30;
      v57 = *v31;
      v35 = *(v34 - 8);
      MEMORY[0x1EEE9AC00](v29);
      v37 = v50 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = v50;
      v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
      v41 = v50 - v40;
      v42 = v6 == 1 ? 0 : *v32;
      v43 = *(v35 + 16);
      v43(v37, &v53[v42], v34, v39);
      v44 = v58 == 1 ? 0 : *v32;
      (v43)(v41, &v54[v44], v34);
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v35 + 8);
      v46(v41, v34);
      v29 = (v46)(v37, v34);
      if ((v45 & 1) == 0)
      {
        break;
      }

      v32 += 4;
      ++v31;
      ++v30;
      --v33;
      v6 = v58;
      if (!v33)
      {
        v47 = 1;
        goto LABEL_25;
      }
    }

    v47 = 0;
LABEL_25:
    v22 = v51;
    v8 = v52;
  }

  else
  {
    v47 = 1;
  }

  v48 = *(v22 + 8);
  v48(v54, v8);
  v48(v53, v8);
  return v47;
}

uint64_t ConformingTuple<each A>.hash(into:)(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v38 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 != 1)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v8 = 0;
      v9 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_8;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_8;
      }

      v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v5 != v8)
      {
LABEL_8:
        v14 = v5 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v36 = v22;
  v37 = v21;
  v23 = *(v22 + 16);
  v39 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23(v19);
  if (v5)
  {
    v25 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v26 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v27 = (v37 + 32);
    v28 = v5;
    do
    {
      v30 = *v25;
      v31 = *(*v25 - 8);
      MEMORY[0x1EEE9AC00](v24);
      v33 = &v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v34 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      (*(v31 + 16))(v33, &v39[v29], v30);
      dispatch thunk of Hashable.hash(into:)();
      v24 = (*(v31 + 8))(v33, v30);
      v27 += 4;
      v26 += 8;
      ++v25;
      --v28;
    }

    while (v28);
  }

  return (*(v36 + 8))(v39, v37);
}

Swift::Int ConformingTuple<each A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  ConformingTuple<each A>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConformingTuple<Pack{repeat A}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  ConformingTuple<each A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t areEqual<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v17);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k103BindingManagerCAAE24dispatchNonGestureEvents33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH09ForwardedK10Dispatcher_pTf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x193AC4820](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

{
  v3 = v2;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k90BindingManagerC14sendDownstream33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH0K14BindingManagerCTf1nnc_n(v13, v8, a1, a2);
      MEMORY[0x193AC4820](v13, -1, -1);

      return v11;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = specialized closure #1 in _NativeDictionary.filter(_:)(v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

  return v11;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, int a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI17k97FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLV5valueAA08FilteredE0ACLLVvgSbAA0C2IDV3key_AA0C4m28_pAEt_tXEfU_AA08TappableC0V_Y0AH0K12FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLVyAH08TappableK0VGTf1nnc_n(v10, v6, v4, a2);
  result = MEMORY[0x193AC4820](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k103BindingManagerCAAE24dispatchNonGestureEvents33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH09ForwardedK10Dispatcher_pTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI19k90BindingManagerC14sendDownstream33_D63F4C292364B83D9F441CFC1A31B3F3LLyShyAA0C2IDVGSDyAgA0C4M32_pGFSbAG3key_AaI_p5valuet_tXEfU_AH0K14BindingManagerCTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i4UI17k97FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLV5valueAA08FilteredE0ACLLVvgSbAA0C2IDV3key_AA0C4m28_pAEt_tXEfU_AA08TappableC0V_Y0AH0K12FilterEvents33_DE98B8F5384114B687077BAB0EFA27D9LLVyAH08TappableK0VGTf1nnc_n(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n03_s7i94UI13LayoutGesturePAAE11childEvents33_05F3243F43C616B77CCF383885E80E96LL6events5index3boxSDyAA7k8IDVAA0Q4M52_pGAL_SiAA0cD3BoxAELLCtFSbAJ3key_AaK_p5valuet_tXEfU_AH16LayoutGestureBox33_05F3243F43C616B77CCF383885E80E96LLC5ChildVTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    outlined init with copy of LayoutGestureBox.Child(a4, &v9);
    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    outlined destroy of LayoutGestureBox.Child(a4);
    outlined destroy of LayoutGestureBox.Child(a4);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

BOOL partial apply for closure #1 in Array<A>.removingDuplicates()()
{
  type metadata accessor for Dictionary();
  Dictionary.updateValue(_:forKey:)();
  return v1 == 2;
}

unint64_t lazy protocol witness table accessor for type ArrayID and conformance ArrayID()
{
  result = lazy protocol witness table cache variable for type ArrayID and conformance ArrayID;
  if (!lazy protocol witness table cache variable for type ArrayID and conformance ArrayID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArrayID and conformance ArrayID);
  }

  return result;
}

uint64_t base witness table accessor for Equatable in <each A> ConformingTuple<Pack{repeat A}>(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {
    v5 = (*(v1 - 8) & 0xFFFFFFFFFFFFFFFELL);
    v6 = v4;
    do
    {
      v7 = *v5++;
      *v6++ = *(v7 + 8);
      --v2;
    }

    while (v2);
  }

  v9[1] = v4;
  return swift_getWitnessTable();
}

uint64_t *initializeBufferWithCopyOfBuffer for CountingIndex(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 8);
    v12 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v12 = *v10;
    *(v12 + 8) = v11;
  }

  return v3;
}

uint64_t initializeWithCopy for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithCopy for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t initializeWithTake for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithTake for CountingIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

void *assignWithTake for IndirectOptional(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for IndirectOptional(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IndirectOptional(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for Cache3()
{
  swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v3 = &v2;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for Cache3(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v39 = *(a3 + 16);
  v40 = *(a3 + 24);
  v5 = *(v39 - 8);
  v6 = *(v5 + 84);
  v7 = *(v40 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v38 = *(v5 + 64) + v9;
  v10 = v38 & ~v9;
  v11 = *(v7 + 64);
  v12 = v10 + v11;
  if (v8 | v6)
  {
    v13 = v10 + v11;
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = (*(v5 + 80) | v9);
  v15 = ~v14;
  v16 = v13 + v14;
  if (v14 <= 7 && ((*(v5 + 80) | v9) & 0x100000) == 0 && ((v13 + v14 + ((v13 + v14) & ~v14)) & ~v14) + v13 <= 0x18)
  {
    v36 = ~v9;
    v37 = v8 | v6;
    if (v8 | v6)
    {
      if (v6 >= v8)
      {
        if (!(*(v5 + 48))(a2, v6, v39))
        {
LABEL_38:
          (*(v5 + 16))(a1, a2, v39);
          (*(v7 + 16))((a1 + v38) & v36, (a2 + v38) & v36, v40);
          if (v37)
          {
            v24 = ((a1 + v16) & v15);
            v25 = ((a2 + v16) & v15);
            if (v6 >= v8)
            {
LABEL_40:
              if (!(*(v5 + 48))(v25, v6, v39))
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

LABEL_30:
            if (!(*(v7 + 48))(&v25[v38] & v36, v8, v40))
            {
LABEL_63:
              (*(v5 + 16))(v24, v25, v39);
              (*(v7 + 16))(&v24[v38] & v36, &v25[v38] & v36, v40);
              if (v37)
              {
                v29 = (&v24[v16] & v15);
                v30 = (&v25[v16] & v15);
                if (v6 >= v8)
                {
LABEL_65:
                  if (!(*(v5 + 48))(v30, v6, v39))
                  {
LABEL_85:
                    (*(v5 + 16))(v29, v30, v39);
                    (*(v7 + 16))(&v29[v38] & v36, &v30[v38] & v36, v40);
                    if (!v37)
                    {
                      v29[v12] = 0;
                    }

                    return a1;
                  }

LABEL_84:
                  memcpy(v29, v30, v13);
                  return a1;
                }

LABEL_61:
                if (!(*(v7 + 48))(&v30[v38] & v36, v8, v40))
                {
                  goto LABEL_85;
                }

                goto LABEL_84;
              }

              v24[v12] = 0;
              v29 = (&v24[v16] & v15);
              v30 = (&v25[v16] & v15);
              goto LABEL_68;
            }

LABEL_59:
            memcpy(v24, v25, v13);
            v29 = (&v24[v16] & v15);
            v30 = (&v25[v16] & v15);
            if (v37)
            {
              if (v6 >= v8)
              {
                goto LABEL_65;
              }

              goto LABEL_61;
            }

LABEL_68:
            if (!v30[v12])
            {
              goto LABEL_85;
            }

            v31 = (v30[v12] - 1) << (8 * v12);
            if (v12 > 3)
            {
              v31 = 0;
            }

            if (v12)
            {
              v32 = v12 <= 3 ? v12 : 4;
              if (v32 > 2)
              {
                v33 = v32 == 3 ? *v30 | (v30[2] << 16) : *v30;
              }

              else
              {
                v33 = v32 == 1 ? *v30 : *v30;
              }
            }

            else
            {
              v33 = 0;
            }

            if ((v33 | v31) == 0xFFFFFFFF)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          }

          *(a1 + v12) = 0;
          v24 = ((a1 + v16) & v15);
          v25 = ((a2 + v16) & v15);
          goto LABEL_43;
        }
      }

      else if (!(*(v7 + 48))((a2 + v38) & v36, v8, v40))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (!*(a2 + v12))
      {
        goto LABEL_38;
      }

      v21 = (*(a2 + v12) - 1) << (8 * v12);
      if (v12 > 3)
      {
        v21 = 0;
      }

      if (v12)
      {
        v22 = v12 <= 3 ? v12 : 4;
        if (v22 > 2)
        {
          v23 = v22 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v23 = v22 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v23 = 0;
      }

      if ((v23 | v21) == 0xFFFFFFFF)
      {
        goto LABEL_38;
      }
    }

    memcpy(a1, a2, v13);
    v24 = ((a1 + v16) & v15);
    v25 = ((a2 + v16) & v15);
    if (v37)
    {
      if (v6 >= v8)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

LABEL_43:
    if (!v25[v12])
    {
      goto LABEL_63;
    }

    v26 = (v25[v12] - 1) << (8 * v12);
    if (v12 > 3)
    {
      v26 = 0;
    }

    if (v12)
    {
      v27 = v12 <= 3 ? v12 : 4;
      if (v27 > 2)
      {
        v28 = v27 == 3 ? *v25 | (v25[2] << 16) : *v25;
      }

      else
      {
        v28 = v27 == 1 ? *v25 : *v25;
      }
    }

    else
    {
      v28 = 0;
    }

    if ((v28 | v26) == 0xFFFFFFFF)
    {
      goto LABEL_63;
    }

    goto LABEL_59;
  }

  v19 = *a2;
  *a1 = *a2;
  v20 = v19 + ((v14 + 16) & v15);

  return v20;
}

uint64_t destroy for Cache3(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v32 = *(a2 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v6 = *(v3 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v30 = ~v8;
  v31 = v6;
  v9 = *(v4 + 64) + v8;
  v10 = (v9 & v30) + *(v6 + 64);
  v11 = v7 | v5;
  if (v7 | v5)
  {
    if (v5 >= v7)
    {
      if ((*(v4 + 48))(a1, v5, v32))
      {
        goto LABEL_17;
      }
    }

    else if ((*(v6 + 48))((a1 + v9) & v30, v7, v3))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!*(a1 + v10))
  {
    goto LABEL_16;
  }

  v12 = (*(a1 + v10) - 1) << (8 * v10);
  if (v10 > 3)
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v10 <= 3 ? (v9 & v30) + *(v6 + 64) : 4;
    if (v13 > 2)
    {
      v14 = v13 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
    }

    else
    {
      v14 = v13 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v14 = 0;
  }

  if ((v14 | v12) == 0xFFFFFFFF)
  {
LABEL_16:
    (*(v4 + 8))(a1, v32);
    (*(v31 + 8))((a1 + v9) & v30, v3);
  }

LABEL_17:
  if (v11)
  {
    v15 = v10;
  }

  else
  {
    v15 = v10 + 1;
  }

  v16 = *(v4 + 80) | v8;
  v17 = v15 + v16;
  v18 = ~v16;
  v19 = ((a1 + v15 + v16) & ~v16);
  if (v11)
  {
    if (v5 >= v7)
    {
      if ((*(v4 + 48))(v19, v5, v32))
      {
        goto LABEL_36;
      }
    }

    else if ((*(v31 + 48))((v19 + v9) & v30, v7, v3))
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (!*(v19 + v10))
  {
    goto LABEL_35;
  }

  v20 = (*(v19 + v10) - 1) << (8 * v10);
  if (v10 > 3)
  {
    v20 = 0;
  }

  if (v10)
  {
    v21 = v10 <= 3 ? v10 : 4;
    if (v21 > 2)
    {
      v22 = v21 == 3 ? *v19 | (*(v19 + 2) << 16) : *v19;
    }

    else
    {
      v22 = v21 == 1 ? *v19 : *v19;
    }
  }

  else
  {
    v22 = 0;
  }

  if ((v22 | v20) == 0xFFFFFFFF)
  {
LABEL_35:
    (*(v4 + 8))(v19, v32);
    (*(v31 + 8))((v19 + v9) & v30, v3);
  }

LABEL_36:
  v23 = ((v19 + v17) & v18);
  if (v11)
  {
    if (v5 >= v7)
    {
      result = (*(v4 + 48))(v23, v5, v32);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = (*(v31 + 48))((v23 + v9) & v30, v7, v3);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_72;
  }

  if (!*(v23 + v10))
  {
    goto LABEL_72;
  }

  v25 = (*(v23 + v10) - 1) << (8 * v10);
  if (v10 > 3)
  {
    v25 = 0;
  }

  if (v10)
  {
    v26 = v10 <= 3 ? v10 : 4;
    if (v26 > 2)
    {
      v27 = v26 == 3 ? *v23 | (*(v23 + 2) << 16) : *v23;
    }

    else
    {
      v27 = v26 == 1 ? *v23 : *v23;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 | v25;
  result = (v28 + 1);
  if (v28 == -1)
  {
LABEL_72:
    (*(v4 + 8))(v23, v32);
    v29 = *(v31 + 8);

    return v29((v23 + v9) & v30, v3);
  }

  return result;
}

char *initializeWithCopy for Cache3(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v39 = *(a3 + 24);
  v40 = *(a3 + 16);
  v5 = *(v40 - 8);
  v6 = *(v5 + 84);
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  v38 = v7;
  v9 = *(v7 + 80);
  v36 = *(v5 + 64) + v9;
  v37 = ~v9;
  v10 = (v36 & v37) + *(v7 + 64);
  v11 = v8 | v6;
  if (!(v8 | v6))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_26;
    }

    v12 = (*(a2 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v10 <= 3 ? v10 : 4;
      if (v13 > 2)
      {
        v14 = v13 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v14 = v13 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v14 = 0;
    }

    if ((v14 | v12) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v6 >= v8)
  {
    if (!(*(v5 + 48))(a2, v6, v40))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v11)
    {
      v15 = v10;
    }

    else
    {
      v15 = v10 + 1;
    }

    memcpy(a1, a2, v15);
    goto LABEL_28;
  }

  if ((*(v38 + 48))((a2 + v36) & v37, v8, v39))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v5 + 16))(a1, a2, v40);
  (*(v38 + 16))(&a1[v36] & v37, (a2 + v36) & v37, v39);
  if (!v11)
  {
    a1[v10] = 0;
  }

LABEL_28:
  if (v11)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10 + 1;
  }

  v17 = v5;
  v18 = *(v5 + 80) | v9;
  v34 = a1;
  __n = v16;
  v19 = v16 + v18;
  v20 = &a1[v16 + v18];
  v21 = ~v18;
  v22 = (v20 & ~v18);
  v23 = ((a2 + v16 + v18) & ~v18);
  if (v11)
  {
    if (v6 >= v8)
    {
      if (!(*(v17 + 48))(v23, v6, v40))
      {
        goto LABEL_54;
      }
    }

    else if (!(*(v38 + 48))(&v23[v36] & v37, v8, v39))
    {
      goto LABEL_54;
    }

LABEL_46:
    memcpy(v22, v23, __n);
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    if (v11)
    {
      goto LABEL_56;
    }

LABEL_62:
    v29 = v34;
    if (!*(v28 + v10))
    {
      goto LABEL_79;
    }

    v30 = (*(v28 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v30 = 0;
    }

    if (v10)
    {
      v31 = v10 <= 3 ? v10 : 4;
      if (v31 > 2)
      {
        v32 = v31 == 3 ? *v28 | (*(v28 + 2) << 16) : *v28;
      }

      else
      {
        v32 = v31 == 1 ? *v28 : *v28;
      }
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v30) == 0xFFFFFFFF)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v23[v10])
  {
    v24 = (v23[v10] - 1) << (8 * v10);
    if (v10 > 3)
    {
      v24 = 0;
    }

    if (v10)
    {
      v25 = v10 <= 3 ? v10 : 4;
      if (v25 > 2)
      {
        v26 = v25 == 3 ? *v23 | (v23[2] << 16) : *v23;
      }

      else
      {
        v26 = v25 == 1 ? *v23 : *v23;
      }
    }

    else
    {
      v26 = 0;
    }

    if ((v26 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  (*(v17 + 16))(v22, v23, v40);
  (*(v38 + 16))((v22 + v36) & v37, &v23[v36] & v37, v39);
  if (!v11)
  {
    *(v22 + v10) = 0;
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    goto LABEL_62;
  }

  v27 = ((v22 + v19) & v21);
  v28 = (&v23[v19] & v21);
LABEL_56:
  v29 = v34;
  if (v6 < v8)
  {
    if (!(*(v38 + 48))((v28 + v36) & v37, v8, v39))
    {
      goto LABEL_79;
    }

LABEL_78:
    memcpy(v27, v28, __n);
    return v29;
  }

  if ((*(v17 + 48))(v28, v6, v40))
  {
    goto LABEL_78;
  }

LABEL_79:
  (*(v17 + 16))(v27, v28, v40);
  (*(v38 + 16))((v27 + v36) & v37, (v28 + v36) & v37, v39);
  if (!v11)
  {
    *(v27 + v10) = 0;
  }

  return v29;
}

unsigned __int8 *assignWithCopy for Cache3(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v81 = *(a3 + 16);
  v4 = *(v81 - 8);
  v76 = *(a3 + 24);
  v78 = *(v76 - 8);
  v5 = *(v78 + 80);
  v79 = *(v4 + 64) + v5;
  v80 = ~v5;
  v6 = (v79 & v80) + *(v78 + 64);
  v77 = *(v4 + 84);
  v7 = *(v78 + 84) | v77;
  v72 = v6;
  v73 = v4;
  v74 = v7;
  v75 = *(v78 + 84);
  if (v7)
  {
    if (v77 >= v75)
    {
      v9 = *(v4 + 48);
      v10 = v9(a1, v77, v81);
      v11 = a2;
      v12 = v77;
      v13 = v81;
    }

    else
    {
      v9 = *(v78 + 48);
      v10 = v9((&a1[v79] & v80), v75, v76);
      v11 = ((a2 + v79) & v80);
      v12 = v75;
      v13 = v76;
    }

    v17 = v9(v11, v12, v13);
    v3 = a2;
    if (v10)
    {
      v4 = v73;
      if (v17)
      {
LABEL_17:
        if (v7)
        {
          v18 = v6;
        }

        else
        {
          v18 = v6 + 1;
        }

        memcpy(a1, v3, v18);
        v19 = v76;
        goto LABEL_67;
      }

      goto LABEL_65;
    }

    goto LABEL_56;
  }

  if (!a1[v6])
  {
    goto LABEL_37;
  }

  v14 = (a1[v6] - 1) << (8 * v6);
  if (v6 > 3)
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v6 <= 3 ? v6 : 4;
    if (v15 > 2)
    {
      v16 = v15 == 3 ? *a1 | (a1[2] << 16) : *a1;
    }

    else
    {
      v16 = v15 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v16 = 0;
  }

  if ((v16 | v14) == 0xFFFFFFFF)
  {
LABEL_37:
    if (!*(a2 + v6))
    {
      goto LABEL_61;
    }

    v23 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v23 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v24 = v6;
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v25 = *a2;
        }
      }

      else if (v24 == 1)
      {
        v25 = *a2;
      }

      else
      {
        v25 = *a2;
      }
    }

    else
    {
      v25 = 0;
    }

    v17 = (v25 | v23) + 1;
LABEL_56:
    v4 = v73;
    if (v17)
    {
      (*(v73 + 8))(a1, v81);
      v19 = v76;
      (*(v78 + 8))(&a1[v79] & v80, v76);
      if (v7)
      {
        v26 = v6;
      }

      else
      {
        v26 = v6 + 1;
      }

      memcpy(a1, v3, v26);
      goto LABEL_67;
    }

LABEL_61:
    (*(v4 + 24))(a1, v3, v81);
    v19 = v76;
    (*(v78 + 24))(&a1[v79] & v80, (v3 + v79) & v80, v76);
    goto LABEL_67;
  }

  if (*(a2 + v6))
  {
    v20 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v20 = 0;
    }

    if (v6)
    {
      v21 = v6 <= 3 ? v6 : 4;
      if (v21 > 2)
      {
        v22 = v21 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v22 = v21 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v22 = 0;
    }

    v4 = *(v81 - 8);
    if ((v22 | v20) != 0xFFFFFFFF)
    {
      goto LABEL_17;
    }
  }

LABEL_65:
  (*(v4 + 16))(a1, v3, v81);
  v19 = v76;
  (*(v78 + 16))(&a1[v79] & v80, (v3 + v79) & v80, v76);
  if (!v7)
  {
    a1[v6] = 0;
  }

LABEL_67:
  if (v7)
  {
    v27 = v6;
  }

  else
  {
    v27 = v6 + 1;
  }

  v28 = *(v4 + 80) | v5;
  v29 = ~v28;
  v30 = (&a1[v27 + v28] & ~v28);
  v70 = v27 + v28;
  __n = v27;
  v31 = ((v3 + v27 + v28) & ~v28);
  if (v7)
  {
    v32 = ~v28;
    if (v77 >= v75)
    {
      v37 = v4;
      v41 = *(v4 + 48);
      v33 = (&a1[v27 + v28] & ~v28);
      v35 = v41(v30, v77, v81);
      v36 = v41(v31, v77, v81);
      v19 = v76;
    }

    else
    {
      v33 = (&a1[v27 + v28] & ~v28);
      v34 = *(v78 + 48);
      v35 = v34((v30 + v79) & v80, v75, v76);
      v36 = v34((v31 + v79) & v80, v75, v76);
      v19 = v76;
      v37 = v73;
    }

    v6 = v72;
    v29 = v32;
    if (v35)
    {
      goto LABEL_85;
    }

    goto LABEL_125;
  }

  if (!*(v30 + v6))
  {
    goto LABEL_105;
  }

  v38 = (*(v30 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v38 = 0;
  }

  if (v6)
  {
    v39 = v6 <= 3 ? v6 : 4;
    if (v39 > 2)
    {
      v40 = v39 == 3 ? *v30 | (*(v30 + 2) << 16) : *v30;
    }

    else
    {
      v40 = v39 == 1 ? *v30 : *v30;
    }
  }

  else
  {
    v40 = 0;
  }

  if ((v40 | v38) == 0xFFFFFFFF)
  {
LABEL_105:
    if (!*(v31 + v6))
    {
      goto LABEL_128;
    }

    v48 = (*(v31 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v48 = 0;
    }

    v37 = v4;
    if (v6)
    {
      if (v6 <= 3)
      {
        v49 = v6;
      }

      else
      {
        v49 = 4;
      }

      v33 = v30;
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          v50 = *v31 | (*(v31 + 2) << 16);
        }

        else
        {
          v50 = *v31;
        }
      }

      else if (v49 == 1)
      {
        v50 = *v31;
      }

      else
      {
        v50 = *v31;
      }
    }

    else
    {
      v33 = v30;
      v50 = 0;
    }

    v36 = (v50 | v48) + 1;
LABEL_125:
    v30 = v33;
    v4 = v37;
    if (v36)
    {
      (*(v37 + 8))(v30, v81);
      v42 = v19;
      (*(v78 + 8))((v30 + v79) & v80, v19);
      goto LABEL_127;
    }

LABEL_128:
    (*(v4 + 24))(v30, v31, v81);
    v42 = v19;
    (*(v78 + 24))((v30 + v79) & v80, (v31 + v79) & v80, v19);
LABEL_129:
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    v51 = v74;
    if (v74)
    {
LABEL_130:
      if (v77 >= v75)
      {
        v61 = *(v4 + 48);
        v62 = v61(v46, v77, v81);
        v52 = v81;
        v55 = v61(v47, v77, v81);
        v56 = a1;
        if (v62)
        {
LABEL_132:
          if (!v55)
          {
LABEL_133:
            v42 = v76;
            v6 = v72;
            v51 = v74;
            goto LABEL_164;
          }

LABEL_147:
          memcpy(v46, v47, __n);
          return v56;
        }
      }

      else
      {
        v52 = v81;
        v53 = *(v78 + 48);
        v54 = v53(&v46[v79] & v80, v75, v76);
        v4 = v73;
        v55 = v53(&v47[v79] & v80, v75, v76);
        v56 = a1;
        if (v54)
        {
          goto LABEL_132;
        }
      }

      if (v55)
      {
LABEL_146:
        (*(v4 + 8))(v46, v52);
        (*(v78 + 8))(&v46[v79] & v80, v76);
        goto LABEL_147;
      }

      goto LABEL_185;
    }

    goto LABEL_134;
  }

  if (!*(v31 + v6))
  {
    goto LABEL_103;
  }

  v43 = (*(v31 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v43 = 0;
  }

  v37 = v4;
  if (v6)
  {
    if (v6 <= 3)
    {
      v44 = v6;
    }

    else
    {
      v44 = 4;
    }

    v33 = v30;
    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v45 = *v31 | (*(v31 + 2) << 16);
      }

      else
      {
        v45 = *v31;
      }
    }

    else if (v44 == 1)
    {
      v45 = *v31;
    }

    else
    {
      v45 = *v31;
    }
  }

  else
  {
    v33 = v30;
    v45 = 0;
  }

  v36 = (v45 | v43) + 1;
LABEL_85:
  v30 = v33;
  v4 = v37;
  if (v36)
  {
    v42 = v19;
LABEL_127:
    memcpy(v30, v31, __n);
    goto LABEL_129;
  }

LABEL_103:
  (*(v4 + 16))(v30, v31, v81);
  (*(v78 + 16))((v30 + v79) & v80, (v31 + v79) & v80, v19);
  if (v74)
  {
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    goto LABEL_130;
  }

  v42 = v19;
  *(v30 + v6) = 0;
  v46 = ((v30 + v70) & v29);
  v47 = ((v31 + v70) & v29);
  v51 = 0;
LABEL_134:
  v57 = 8 * v6;
  v56 = a1;
  if (!v46[v6])
  {
    goto LABEL_166;
  }

  v58 = (v46[v6] - 1) << v57;
  if (v6 > 3)
  {
    v58 = 0;
  }

  if (v6)
  {
    v59 = v6 <= 3 ? v6 : 4;
    if (v59 > 2)
    {
      v60 = v59 == 3 ? *v46 | (v46[2] << 16) : *v46;
    }

    else
    {
      v60 = v59 == 1 ? *v46 : *v46;
    }
  }

  else
  {
    v60 = 0;
  }

  if ((v60 | v58) == 0xFFFFFFFF)
  {
LABEL_166:
    if (!v47[v6])
    {
LABEL_186:
      (*(v4 + 24))(v46, v47, v81);
      (*(v78 + 24))(&v46[v79] & v80, &v47[v79] & v80, v42);
      return v56;
    }

    v66 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v66 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v67 = v6;
      }

      else
      {
        v67 = 4;
      }

      if (v67 > 2)
      {
        v52 = v81;
        if (v67 == 3)
        {
          v68 = *v47 | (v47[2] << 16);
        }

        else
        {
          v68 = *v47;
        }
      }

      else
      {
        v52 = v81;
        if (v67 == 1)
        {
          v68 = *v47;
        }

        else
        {
          v68 = *v47;
        }
      }
    }

    else
    {
      v52 = v81;
      v68 = 0;
    }

    if ((v68 | v66) != 0xFFFFFFFF)
    {
      goto LABEL_146;
    }

LABEL_185:
    v42 = v76;
    goto LABEL_186;
  }

  if (v47[v6])
  {
    v63 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v63 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v64 = v6;
      }

      else
      {
        v64 = 4;
      }

      if (v64 > 2)
      {
        if (v64 == 3)
        {
          v65 = *v47 | (v47[2] << 16);
        }

        else
        {
          v65 = *v47;
        }
      }

      else if (v64 == 1)
      {
        v65 = *v47;
      }

      else
      {
        v65 = *v47;
      }
    }

    else
    {
      v65 = 0;
    }

    if ((v65 | v63) == 0xFFFFFFFF)
    {
      goto LABEL_133;
    }

    goto LABEL_147;
  }

LABEL_164:
  (*(v4 + 16))(v46, v47, v81);
  (*(v78 + 16))(&v46[v79] & v80, &v47[v79] & v80, v42);
  if (!v51)
  {
    v46[v6] = 0;
  }

  return v56;
}

char *initializeWithTake for Cache3(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v39 = *(a3 + 24);
  v40 = *(a3 + 16);
  v5 = *(v40 - 8);
  v6 = *(v5 + 84);
  v7 = *(v39 - 8);
  v8 = *(v7 + 84);
  v38 = v7;
  v9 = *(v7 + 80);
  v36 = *(v5 + 64) + v9;
  v37 = ~v9;
  v10 = (v36 & v37) + *(v7 + 64);
  v11 = v8 | v6;
  if (!(v8 | v6))
  {
    if (!*(a2 + v10))
    {
      goto LABEL_26;
    }

    v12 = (*(a2 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v10 <= 3 ? v10 : 4;
      if (v13 > 2)
      {
        v14 = v13 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v14 = v13 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v14 = 0;
    }

    if ((v14 | v12) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v6 >= v8)
  {
    if (!(*(v5 + 48))(a2, v6, v40))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v11)
    {
      v15 = v10;
    }

    else
    {
      v15 = v10 + 1;
    }

    memcpy(a1, a2, v15);
    goto LABEL_28;
  }

  if ((*(v38 + 48))((a2 + v36) & v37, v8, v39))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v5 + 32))(a1, a2, v40);
  (*(v38 + 32))(&a1[v36] & v37, (a2 + v36) & v37, v39);
  if (!v11)
  {
    a1[v10] = 0;
  }

LABEL_28:
  if (v11)
  {
    v16 = v10;
  }

  else
  {
    v16 = v10 + 1;
  }

  v17 = v5;
  v18 = *(v5 + 80) | v9;
  v34 = a1;
  __n = v16;
  v19 = v16 + v18;
  v20 = &a1[v16 + v18];
  v21 = ~v18;
  v22 = (v20 & ~v18);
  v23 = ((a2 + v16 + v18) & ~v18);
  if (v11)
  {
    if (v6 >= v8)
    {
      if (!(*(v17 + 48))(v23, v6, v40))
      {
        goto LABEL_54;
      }
    }

    else if (!(*(v38 + 48))(&v23[v36] & v37, v8, v39))
    {
      goto LABEL_54;
    }

LABEL_46:
    memcpy(v22, v23, __n);
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    if (v11)
    {
      goto LABEL_56;
    }

LABEL_62:
    v29 = v34;
    if (!*(v28 + v10))
    {
      goto LABEL_79;
    }

    v30 = (*(v28 + v10) - 1) << (8 * v10);
    if (v10 > 3)
    {
      v30 = 0;
    }

    if (v10)
    {
      v31 = v10 <= 3 ? v10 : 4;
      if (v31 > 2)
      {
        v32 = v31 == 3 ? *v28 | (*(v28 + 2) << 16) : *v28;
      }

      else
      {
        v32 = v31 == 1 ? *v28 : *v28;
      }
    }

    else
    {
      v32 = 0;
    }

    if ((v32 | v30) == 0xFFFFFFFF)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  if (v23[v10])
  {
    v24 = (v23[v10] - 1) << (8 * v10);
    if (v10 > 3)
    {
      v24 = 0;
    }

    if (v10)
    {
      v25 = v10 <= 3 ? v10 : 4;
      if (v25 > 2)
      {
        v26 = v25 == 3 ? *v23 | (v23[2] << 16) : *v23;
      }

      else
      {
        v26 = v25 == 1 ? *v23 : *v23;
      }
    }

    else
    {
      v26 = 0;
    }

    if ((v26 | v24) != 0xFFFFFFFF)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  (*(v17 + 32))(v22, v23, v40);
  (*(v38 + 32))((v22 + v36) & v37, &v23[v36] & v37, v39);
  if (!v11)
  {
    *(v22 + v10) = 0;
    v27 = ((v22 + v19) & v21);
    v28 = (&v23[v19] & v21);
    goto LABEL_62;
  }

  v27 = ((v22 + v19) & v21);
  v28 = (&v23[v19] & v21);
LABEL_56:
  v29 = v34;
  if (v6 < v8)
  {
    if (!(*(v38 + 48))((v28 + v36) & v37, v8, v39))
    {
      goto LABEL_79;
    }

LABEL_78:
    memcpy(v27, v28, __n);
    return v29;
  }

  if ((*(v17 + 48))(v28, v6, v40))
  {
    goto LABEL_78;
  }

LABEL_79:
  (*(v17 + 32))(v27, v28, v40);
  (*(v38 + 32))((v27 + v36) & v37, (v28 + v36) & v37, v39);
  if (!v11)
  {
    *(v27 + v10) = 0;
  }

  return v29;
}

unsigned __int8 *assignWithTake for Cache3(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v81 = *(a3 + 16);
  v4 = *(v81 - 8);
  v76 = *(a3 + 24);
  v78 = *(v76 - 8);
  v5 = *(v78 + 80);
  v79 = *(v4 + 64) + v5;
  v80 = ~v5;
  v6 = (v79 & v80) + *(v78 + 64);
  v77 = *(v4 + 84);
  v7 = *(v78 + 84) | v77;
  v72 = v6;
  v73 = v4;
  v74 = v7;
  v75 = *(v78 + 84);
  if (v7)
  {
    if (v77 >= v75)
    {
      v9 = *(v4 + 48);
      v10 = v9(a1, v77, v81);
      v11 = a2;
      v12 = v77;
      v13 = v81;
    }

    else
    {
      v9 = *(v78 + 48);
      v10 = v9((&a1[v79] & v80), v75, v76);
      v11 = ((a2 + v79) & v80);
      v12 = v75;
      v13 = v76;
    }

    v17 = v9(v11, v12, v13);
    v3 = a2;
    if (v10)
    {
      v4 = v73;
      if (v17)
      {
LABEL_17:
        if (v7)
        {
          v18 = v6;
        }

        else
        {
          v18 = v6 + 1;
        }

        memcpy(a1, v3, v18);
        v19 = v76;
        goto LABEL_67;
      }

      goto LABEL_65;
    }

    goto LABEL_56;
  }

  if (!a1[v6])
  {
    goto LABEL_37;
  }

  v14 = (a1[v6] - 1) << (8 * v6);
  if (v6 > 3)
  {
    v14 = 0;
  }

  if (v6)
  {
    v15 = v6 <= 3 ? v6 : 4;
    if (v15 > 2)
    {
      v16 = v15 == 3 ? *a1 | (a1[2] << 16) : *a1;
    }

    else
    {
      v16 = v15 == 1 ? *a1 : *a1;
    }
  }

  else
  {
    v16 = 0;
  }

  if ((v16 | v14) == 0xFFFFFFFF)
  {
LABEL_37:
    if (!*(a2 + v6))
    {
      goto LABEL_61;
    }

    v23 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v23 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v24 = v6;
      }

      else
      {
        v24 = 4;
      }

      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v25 = *a2;
        }
      }

      else if (v24 == 1)
      {
        v25 = *a2;
      }

      else
      {
        v25 = *a2;
      }
    }

    else
    {
      v25 = 0;
    }

    v17 = (v25 | v23) + 1;
LABEL_56:
    v4 = v73;
    if (v17)
    {
      (*(v73 + 8))(a1, v81);
      v19 = v76;
      (*(v78 + 8))(&a1[v79] & v80, v76);
      if (v7)
      {
        v26 = v6;
      }

      else
      {
        v26 = v6 + 1;
      }

      memcpy(a1, v3, v26);
      goto LABEL_67;
    }

LABEL_61:
    (*(v4 + 40))(a1, v3, v81);
    v19 = v76;
    (*(v78 + 40))(&a1[v79] & v80, (v3 + v79) & v80, v76);
    goto LABEL_67;
  }

  if (*(a2 + v6))
  {
    v20 = (*(a2 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v20 = 0;
    }

    if (v6)
    {
      v21 = v6 <= 3 ? v6 : 4;
      if (v21 > 2)
      {
        v22 = v21 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v22 = v21 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v22 = 0;
    }

    v4 = *(v81 - 8);
    if ((v22 | v20) != 0xFFFFFFFF)
    {
      goto LABEL_17;
    }
  }

LABEL_65:
  (*(v4 + 32))(a1, v3, v81);
  v19 = v76;
  (*(v78 + 32))(&a1[v79] & v80, (v3 + v79) & v80, v76);
  if (!v7)
  {
    a1[v6] = 0;
  }

LABEL_67:
  if (v7)
  {
    v27 = v6;
  }

  else
  {
    v27 = v6 + 1;
  }

  v28 = *(v4 + 80) | v5;
  v29 = ~v28;
  v30 = (&a1[v27 + v28] & ~v28);
  v70 = v27 + v28;
  __n = v27;
  v31 = ((v3 + v27 + v28) & ~v28);
  if (v7)
  {
    v32 = ~v28;
    if (v77 >= v75)
    {
      v37 = v4;
      v41 = *(v4 + 48);
      v33 = (&a1[v27 + v28] & ~v28);
      v35 = v41(v30, v77, v81);
      v36 = v41(v31, v77, v81);
      v19 = v76;
    }

    else
    {
      v33 = (&a1[v27 + v28] & ~v28);
      v34 = *(v78 + 48);
      v35 = v34((v30 + v79) & v80, v75, v76);
      v36 = v34((v31 + v79) & v80, v75, v76);
      v19 = v76;
      v37 = v73;
    }

    v6 = v72;
    v29 = v32;
    if (v35)
    {
      goto LABEL_85;
    }

    goto LABEL_125;
  }

  if (!*(v30 + v6))
  {
    goto LABEL_105;
  }

  v38 = (*(v30 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v38 = 0;
  }

  if (v6)
  {
    v39 = v6 <= 3 ? v6 : 4;
    if (v39 > 2)
    {
      v40 = v39 == 3 ? *v30 | (*(v30 + 2) << 16) : *v30;
    }

    else
    {
      v40 = v39 == 1 ? *v30 : *v30;
    }
  }

  else
  {
    v40 = 0;
  }

  if ((v40 | v38) == 0xFFFFFFFF)
  {
LABEL_105:
    if (!*(v31 + v6))
    {
      goto LABEL_128;
    }

    v48 = (*(v31 + v6) - 1) << (8 * v6);
    if (v6 > 3)
    {
      v48 = 0;
    }

    v37 = v4;
    if (v6)
    {
      if (v6 <= 3)
      {
        v49 = v6;
      }

      else
      {
        v49 = 4;
      }

      v33 = v30;
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          v50 = *v31 | (*(v31 + 2) << 16);
        }

        else
        {
          v50 = *v31;
        }
      }

      else if (v49 == 1)
      {
        v50 = *v31;
      }

      else
      {
        v50 = *v31;
      }
    }

    else
    {
      v33 = v30;
      v50 = 0;
    }

    v36 = (v50 | v48) + 1;
LABEL_125:
    v30 = v33;
    v4 = v37;
    if (v36)
    {
      (*(v37 + 8))(v30, v81);
      v42 = v19;
      (*(v78 + 8))((v30 + v79) & v80, v19);
      goto LABEL_127;
    }

LABEL_128:
    (*(v4 + 40))(v30, v31, v81);
    v42 = v19;
    (*(v78 + 40))((v30 + v79) & v80, (v31 + v79) & v80, v19);
LABEL_129:
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    v51 = v74;
    if (v74)
    {
LABEL_130:
      if (v77 >= v75)
      {
        v61 = *(v4 + 48);
        v62 = v61(v46, v77, v81);
        v52 = v81;
        v55 = v61(v47, v77, v81);
        v56 = a1;
        if (v62)
        {
LABEL_132:
          if (!v55)
          {
LABEL_133:
            v42 = v76;
            v6 = v72;
            v51 = v74;
            goto LABEL_164;
          }

LABEL_147:
          memcpy(v46, v47, __n);
          return v56;
        }
      }

      else
      {
        v52 = v81;
        v53 = *(v78 + 48);
        v54 = v53(&v46[v79] & v80, v75, v76);
        v4 = v73;
        v55 = v53(&v47[v79] & v80, v75, v76);
        v56 = a1;
        if (v54)
        {
          goto LABEL_132;
        }
      }

      if (v55)
      {
LABEL_146:
        (*(v4 + 8))(v46, v52);
        (*(v78 + 8))(&v46[v79] & v80, v76);
        goto LABEL_147;
      }

      goto LABEL_185;
    }

    goto LABEL_134;
  }

  if (!*(v31 + v6))
  {
    goto LABEL_103;
  }

  v43 = (*(v31 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v43 = 0;
  }

  v37 = v4;
  if (v6)
  {
    if (v6 <= 3)
    {
      v44 = v6;
    }

    else
    {
      v44 = 4;
    }

    v33 = v30;
    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v45 = *v31 | (*(v31 + 2) << 16);
      }

      else
      {
        v45 = *v31;
      }
    }

    else if (v44 == 1)
    {
      v45 = *v31;
    }

    else
    {
      v45 = *v31;
    }
  }

  else
  {
    v33 = v30;
    v45 = 0;
  }

  v36 = (v45 | v43) + 1;
LABEL_85:
  v30 = v33;
  v4 = v37;
  if (v36)
  {
    v42 = v19;
LABEL_127:
    memcpy(v30, v31, __n);
    goto LABEL_129;
  }

LABEL_103:
  (*(v4 + 32))(v30, v31, v81);
  (*(v78 + 32))((v30 + v79) & v80, (v31 + v79) & v80, v19);
  if (v74)
  {
    v46 = ((v30 + v70) & v29);
    v47 = ((v31 + v70) & v29);
    goto LABEL_130;
  }

  v42 = v19;
  *(v30 + v6) = 0;
  v46 = ((v30 + v70) & v29);
  v47 = ((v31 + v70) & v29);
  v51 = 0;
LABEL_134:
  v57 = 8 * v6;
  v56 = a1;
  if (!v46[v6])
  {
    goto LABEL_166;
  }

  v58 = (v46[v6] - 1) << v57;
  if (v6 > 3)
  {
    v58 = 0;
  }

  if (v6)
  {
    v59 = v6 <= 3 ? v6 : 4;
    if (v59 > 2)
    {
      v60 = v59 == 3 ? *v46 | (v46[2] << 16) : *v46;
    }

    else
    {
      v60 = v59 == 1 ? *v46 : *v46;
    }
  }

  else
  {
    v60 = 0;
  }

  if ((v60 | v58) == 0xFFFFFFFF)
  {
LABEL_166:
    if (!v47[v6])
    {
LABEL_186:
      (*(v4 + 40))(v46, v47, v81);
      (*(v78 + 40))(&v46[v79] & v80, &v47[v79] & v80, v42);
      return v56;
    }

    v66 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v66 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v67 = v6;
      }

      else
      {
        v67 = 4;
      }

      if (v67 > 2)
      {
        v52 = v81;
        if (v67 == 3)
        {
          v68 = *v47 | (v47[2] << 16);
        }

        else
        {
          v68 = *v47;
        }
      }

      else
      {
        v52 = v81;
        if (v67 == 1)
        {
          v68 = *v47;
        }

        else
        {
          v68 = *v47;
        }
      }
    }

    else
    {
      v52 = v81;
      v68 = 0;
    }

    if ((v68 | v66) != 0xFFFFFFFF)
    {
      goto LABEL_146;
    }

LABEL_185:
    v42 = v76;
    goto LABEL_186;
  }

  if (v47[v6])
  {
    v63 = (v47[v6] - 1) << v57;
    if (v6 > 3)
    {
      v63 = 0;
    }

    if (v6)
    {
      if (v6 <= 3)
      {
        v64 = v6;
      }

      else
      {
        v64 = 4;
      }

      if (v64 > 2)
      {
        if (v64 == 3)
        {
          v65 = *v47 | (v47[2] << 16);
        }

        else
        {
          v65 = *v47;
        }
      }

      else if (v64 == 1)
      {
        v65 = *v47;
      }

      else
      {
        v65 = *v47;
      }
    }

    else
    {
      v65 = 0;
    }

    if ((v65 | v63) == 0xFFFFFFFF)
    {
      goto LABEL_133;
    }

    goto LABEL_147;
  }

LABEL_164:
  (*(v4 + 32))(v46, v47, v81);
  (*(v78 + 32))(&v46[v79] & v80, &v47[v79] & v80, v42);
  if (!v51)
  {
    v46[v6] = 0;
  }

  return v56;
}