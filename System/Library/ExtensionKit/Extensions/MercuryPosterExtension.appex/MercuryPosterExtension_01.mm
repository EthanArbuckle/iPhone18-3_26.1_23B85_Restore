uint64_t sub_1000160E0()
{
  if (*(v0 + 56))
  {

    ContinuousRenderingToken.invalidate()();
  }

  sub_1000056DC(*(v0 + 24));
  sub_1000056DC(*(v0 + 40));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(v0 + 1184);
  v8[10] = *(v0 + 1168);
  v8[11] = v1;
  v8[12] = *(v0 + 1200);
  v9 = *(v0 + 1216);
  v2 = *(v0 + 1120);
  v8[6] = *(v0 + 1104);
  v8[7] = v2;
  v3 = *(v0 + 1152);
  v8[8] = *(v0 + 1136);
  v8[9] = v3;
  v4 = *(v0 + 1056);
  v8[2] = *(v0 + 1040);
  v8[3] = v4;
  v5 = *(v0 + 1088);
  v8[4] = *(v0 + 1072);
  v8[5] = v5;
  v6 = *(v0 + 1024);
  v8[0] = *(v0 + 1008);
  v8[1] = v6;
  sub_100004D30(v8);

  sub_1000047C4(v0 + OBJC_IVAR____TtC22MercuryPosterExtension25FluidityWallpaperRenderer_lastRenderingState, &unk_1001303A8);

  return v0;
}

uint64_t sub_10001624C()
{
  sub_1000160E0();

  return swift_deallocClassInstance();
}

void sub_1000162CC()
{
  sub_100017F5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100016414(void *a1, float *a2)
{
  v13 = v2;
  [a1 setSublayers:0];
  v16 = *a2;
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  v17 = *(v13 + 352);
  v18 = *(v17 + 16);
  if (v18 <= v16)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v19 = v17 + 32;
  v20 = (v19 + 248 * *a2);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  *&v228[48] = v20[3];
  *&v228[32] = v23;
  *&v228[16] = v22;
  *v228 = v21;
  v24 = v20[4];
  v25 = v20[5];
  v26 = v20[6];
  *&v229[48] = v20[7];
  *&v229[32] = v26;
  *&v229[16] = v25;
  *v229 = v24;
  v27 = v20[8];
  v28 = v20[9];
  v29 = v20[10];
  *&v230[48] = v20[11];
  *&v230[32] = v29;
  *&v230[16] = v28;
  *v230 = v27;
  v30 = v20[12];
  v31 = v20[13];
  v32 = v20[14];
  *&v231[32] = *(v20 + 60);
  *&v231[16] = v32;
  *v231 = v31;
  *&v230[64] = v30;
  v33 = *(a2 + 1);
  if (v33 == v16)
  {
    v157 = *&v231[4];
    v158 = *&v231[20];
    v34 = v231[0];
    v35 = *&v230[72];
    v155 = *&v230[56];
    v156 = *&v230[24];
    v168 = *&v230[8];
    v170 = *&v229[8];
    v160 = *&v230[40];
    v162 = *&v229[40];
    v36 = *&v229[56];
    v153 = *&v228[8];
    v154 = *&v229[24];
    v164 = *&v228[40];
    v166 = *&v228[24];
    v37 = *&v228[56];
    v38 = v228[0];
    v39 = v229[0];
    v40 = v230[0];
    sub_100019164(v228, v226);
    v42 = v153;
    v41 = v154;
    v44 = v155;
    v43 = v156;
    v46 = v157;
    v45 = v158;
    v47 = v164;
    v48 = v166;
    v49 = v168;
    v50 = v170;
    v51 = v160;
    v52 = v162;
    goto LABEL_8;
  }

  if (v33 < 0 || v18 <= v33)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
    goto LABEL_16;
  }

  v53 = v19 + 248 * v33;
  v54 = *v53;
  v55 = *(v53 + 16);
  v56 = *(v53 + 32);
  v226[3] = *(v53 + 48);
  v226[2] = v56;
  v226[1] = v55;
  v226[0] = v54;
  v57 = *(v53 + 64);
  v58 = *(v53 + 80);
  v59 = *(v53 + 96);
  v226[7] = *(v53 + 112);
  v226[6] = v59;
  v226[5] = v58;
  v226[4] = v57;
  v60 = *(v53 + 128);
  v61 = *(v53 + 144);
  v62 = *(v53 + 160);
  v226[11] = *(v53 + 176);
  v226[10] = v62;
  v226[9] = v61;
  v226[8] = v60;
  v63 = *(v53 + 192);
  v64 = *(v53 + 208);
  v65 = *(v53 + 224);
  v227 = *(v53 + 240);
  v226[14] = v65;
  v226[13] = v64;
  v226[12] = v63;
  v66 = a2[1];
  sub_100019164(v228, v192);
  sub_100019164(v226, v192);
  sub_10001EE5C(v226, v228, v192, v66);
  sub_1000191C0(v228);
  sub_1000191C0(v226);
  v45 = v210;
  v46 = v209;
  v34 = v208;
  v35 = v207;
  v43 = v204;
  v49 = v203;
  v51 = v205;
  v44 = v206;
  v41 = v199;
  v50 = v198;
  v52 = v200;
  v36 = v201;
  v48 = v194;
  v42 = v193;
  v47 = v195;
  v37 = v196;
  v38 = v192[0];
  v39 = v197;
  v40 = v202;
LABEL_8:
  v211 = v40 & 1;
  v212 = v49;
  v213 = v43;
  v214 = v51;
  v215 = v44;
  v216 = v39 & 1;
  v217 = v50;
  v218 = v41;
  v219 = v52;
  v220 = v36;
  v221 = v38 & 1;
  v222 = v42;
  v223 = v48;
  v224 = v47;
  v225 = v37;
  v173[0] = v38 & 1;
  v174 = v42;
  v163 = v47;
  v165 = *&v48;
  v175 = v48;
  v176 = v47;
  v177 = v37;
  v178 = v39 & 1;
  v167 = v49;
  v169 = v50;
  v179 = v50;
  v180 = v41;
  v159 = v51;
  v161 = v52;
  v181 = v52;
  v182 = v36;
  v183 = v40 & 1;
  v184 = v49;
  v185 = v43;
  v186 = v51;
  v187 = v44;
  v188 = v35;
  v189 = v34;
  v190 = v46;
  v191 = v45;
  [a1 bounds];
  v7 = v67;
  v8 = v68;
  v9 = v69;
  v10 = v70;
  if (*(v13 + 136) <= 7)
  {
    v12 = 1300.0;
  }

  else
  {
    v12 = 1000.0;
  }

  CGRectGetWidth(*&v67);
  v232.origin.x = v7;
  v232.origin.y = v8;
  v232.size.width = v9;
  v232.size.height = v10;
  Height = CGRectGetHeight(v232);
  v233.origin.x = v7;
  v233.origin.y = v8;
  v233.size.width = v9;
  v233.size.height = v10;
  Width = CGRectGetWidth(v233);
  v234.origin.x = v7;
  v234.origin.y = v8;
  v234.size.width = v9;
  v234.size.height = v10;
  v72 = Width * CGRectGetWidth(v234);
  v235.origin.x = v7;
  v235.origin.y = v8;
  v235.size.width = v9;
  v235.size.height = v10;
  v73 = CGRectGetHeight(v235);
  v236.origin.x = v7;
  v236.origin.y = v8;
  v236.size.width = v9;
  v236.size.height = v10;
  v74 = v72 + v73 * CGRectGetHeight(v236);
  v75 = sqrtf(v74);
  v4 = &kCGColorSpaceSRGB_ptr;
  p_name = &stru_10012CFF8.name;
  v76 = [objc_allocWithZone(CAGradientLayer) init];
  v77 = *(v13 + 1232);
  *(v13 + 1232) = v76;
  v78 = v76;

  v3 = &stru_10012CFF8.name;
  if (v78)
  {
    v237.origin.x = v7;
    v237.origin.y = v8;
    v237.size.width = v9;
    v237.size.height = v10;
    v79 = CGRectGetWidth(v237) * 0.5;
    v238.origin.x = v7;
    v238.origin.y = v8;
    v238.size.width = v9;
    v238.size.height = v10;
    [v78 setPosition:{v79, CGRectGetHeight(v238) * 0.5}];
  }

  v80 = *(v13 + 1232);
  v6 = &stru_10012CFF8.name;
  if (!v80)
  {
    goto LABEL_28;
  }

  [v80 setBounds:{0.0, 0.0, v75, v75}];
  v81 = *(v13 + 1232);
  if (!v81)
  {
    goto LABEL_28;
  }

  v82 = qword_10012F550;
  a2 = v81;
  if (v82 != -1)
  {
    goto LABEL_70;
  }

LABEL_16:
  sub_1000125FC(&unk_100130D20);
  isa = sub_1000E9894().super.isa;
  [a2 setActions:isa];

  v84 = *(v13 + 1232);
  if (v84)
  {
    [v84 setAnchorPoint:{0.5, 0.5}];
    v85 = *(v13 + 1232);
    if (v85)
    {
      v86 = v85;
      CATransform3DMakeRotation(&v172, -v165, 0.0, 0.0, 1.0);
      v171 = v172;
      [v86 setTransform:&v171];

      v87 = *(v13 + 1232);
      if (v87)
      {
        v88 = v87;
        v89 = sub_10001B7E4();
        sub_1000881C4(v89);

        v90 = sub_1000E9A74().super.isa;

        [v88 setColors:v90];

        v91 = *(v13 + 1232);
        if (v91)
        {
          v92 = *(v163 + 16);
          if (!v92)
          {
            __break(1u);
            goto LABEL_72;
          }

          if (v92 == 1)
          {
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          [v91 setStartPoint:{*(v163 + 32), 1.0 - *(v163 + 40)}];
          v93 = *(v13 + 1232);
          if (v93)
          {
            v94 = *(*(&v163 + 1) + 16);
            if (!v94)
            {
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

            if (v94 == 1)
            {
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            [v93 setEndPoint:{*(*(&v163 + 1) + 32), 1.0 - *(*(&v163 + 1) + 40)}];
            v95 = *(v13 + 1232);
            if (v95)
            {
              sub_1000125FC(&qword_1001303F0);
              v96 = swift_allocObject();
              *(v96 + 16) = xmmword_1000EC860;
              v97 = *(v13 + 496);
              *(v96 + 32) = v97;
              sub_100012904(0, &unk_1001303F8);
              v98 = v95;
              v99 = v97;
              v100 = sub_1000E9A74().super.isa;

              [v98 setInterpolations:v100];

              if (*(v13 + 1232))
              {
                [a1 addSublayer:?];
              }
            }
          }
        }
      }
    }
  }

LABEL_28:
  v101 = [objc_allocWithZone(v4[43]) p_name[203]];
  v102 = *(v13 + 1240);
  *(v13 + 1240) = v101;
  v103 = v101;

  if (v103)
  {
    [v103 v3[263]];
  }

  v104 = *(v13 + 1240);
  v105 = Height / v12;
  if (!v104)
  {
    goto LABEL_46;
  }

  [v104 v6[265]];
  v106 = *(v13 + 1240);
  if (!v106)
  {
    goto LABEL_46;
  }

  v107 = qword_10012F550;
  v108 = v106;
  if (v107 != -1)
  {
    swift_once();
  }

  sub_1000125FC(&unk_100130D20);
  v109 = sub_1000E9894().super.isa;
  [v108 setActions:v109];

  v110 = *(v13 + 1240);
  if (!v110)
  {
    goto LABEL_46;
  }

  [v110 setAnchorPoint:{0.5, 0.5}];
  v111 = *(v13 + 1240);
  if (!v111)
  {
    goto LABEL_46;
  }

  v112 = v111;
  v113 = sub_10001B7E4();
  sub_1000881C4(v113);

  v114 = sub_1000E9A74().super.isa;

  [v112 setColors:v114];

  v115 = *(v13 + 1240);
  if (!v115)
  {
    goto LABEL_46;
  }

  [v115 setType:kCAGradientLayerRadial];
  v116 = *(v13 + 1240);
  if (!v116)
  {
    goto LABEL_46;
  }

  v117 = *(v161 + 16);
  if (!v117)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v117 == 1)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  [v116 setStartPoint:{*(v161 + 32), 1.0 - *(v161 + 40)}];
  v118 = *(v13 + 1240);
  if (v118)
  {
    v119 = *(*(&v161 + 1) + 16);
    if (!v119)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v119 == 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    [v118 setEndPoint:{*(*(&v161 + 1) + 32), 1.0 - *(*(&v161 + 1) + 40)}];
    v120 = *(v13 + 1240);
    if (v120)
    {
      sub_1000125FC(&qword_1001303F0);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_1000EC860;
      v122 = *(v13 + 496);
      *(v121 + 32) = v122;
      sub_100012904(0, &unk_1001303F8);
      v123 = v120;
      v124 = v122;
      v125 = sub_1000E9A74().super.isa;

      [v123 setInterpolations:v125];

      if (*(v13 + 1240))
      {
        [a1 addSublayer:?];
      }
    }
  }

LABEL_46:
  v126 = [objc_allocWithZone(v4[43]) p_name[203]];
  v127 = *(v13 + 1248);
  *(v13 + 1248) = v126;
  v128 = v126;

  if (v128)
  {
    v239.origin.x = v7;
    v239.origin.y = v8;
    v239.size.width = v9;
    v239.size.height = v10;
    [v128 v3[263]];
  }

  v129 = *(v13 + 1248);
  if (!v129)
  {
    goto LABEL_62;
  }

  [v129 v6[265]];
  v130 = *(v13 + 1248);
  if (!v130)
  {
    goto LABEL_62;
  }

  v131 = qword_10012F550;
  v132 = v130;
  if (v131 != -1)
  {
    swift_once();
  }

  sub_1000125FC(&unk_100130D20);
  v133 = sub_1000E9894().super.isa;
  [v132 setActions:v133];

  v134 = *(v13 + 1248);
  if (!v134)
  {
    goto LABEL_62;
  }

  [v134 setAnchorPoint:{0.5, 0.5}];
  v135 = *(v13 + 1248);
  if (!v135)
  {
    goto LABEL_62;
  }

  v136 = v135;
  v137 = sub_10001B7E4();
  sub_1000881C4(v137);

  v138 = sub_1000E9A74().super.isa;

  [v136 setColors:v138];

  v139 = *(v13 + 1248);
  if (!v139)
  {
    goto LABEL_62;
  }

  [v139 setType:kCAGradientLayerRadial];
  v140 = *(v13 + 1248);
  if (!v140)
  {
    goto LABEL_62;
  }

  v141 = *(v159 + 16);
  if (!v141)
  {
    goto LABEL_73;
  }

  if (v141 == 1)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v140 setStartPoint:{*(v159 + 32), 1.0 - *(v159 + 40)}];
  v142 = *(v13 + 1248);
  if (v142)
  {
    v143 = *(*(&v159 + 1) + 16);
    if (v143)
    {
      if (v143 != 1)
      {
        v144 = *(*(&v159 + 1) + 32);
        v145 = *(*(&v159 + 1) + 40);
        v146 = v142;
        sub_1000191C0(v173);
        [v146 setEndPoint:{v144, 1.0 - v145}];

        goto LABEL_63;
      }

LABEL_82:
      __break(1u);
      return;
    }

    goto LABEL_79;
  }

LABEL_62:
  sub_1000191C0(v173);
LABEL_63:
  v147 = *(v13 + 1248);
  if (v147)
  {
    sub_1000125FC(&qword_1001303F0);
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_1000EC860;
    v149 = *(v13 + 496);
    *(v148 + 32) = v149;
    sub_100012904(0, &unk_1001303F8);
    v150 = v147;
    v151 = v149;
    v152 = sub_1000E9A74().super.isa;

    [v150 setInterpolations:v152];

    if (*(v13 + 1248))
    {
      [a1 addSublayer:?];
    }
  }
}

void sub_1000171A0(void *a1, float a2)
{
  [a1 bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v9 = CGRectGetWidth(v25) * 0.5;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v10 = CGRectGetHeight(v26);
  v11 = *&CATransform3DIdentity.m33;
  *&v24.m31 = *&CATransform3DIdentity.m31;
  *&v24.m33 = v11;
  v12 = *&CATransform3DIdentity.m43;
  *&v24.m41 = *&CATransform3DIdentity.m41;
  *&v24.m43 = v12;
  v13 = *&CATransform3DIdentity.m13;
  *&v24.m11 = *&CATransform3DIdentity.m11;
  *&v24.m13 = v13;
  v14 = *&CATransform3DIdentity.m23;
  *&v24.m21 = *&CATransform3DIdentity.m21;
  *&v24.m23 = v14;
  CATransform3DTranslate(&v23, &v24, v9, v10 * 0.5, 0.0);
  CATransform3DRotate(&v24, &v23, *(v2 + 1224), 0.0, 0.0, 1.0);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v15 = CGRectGetWidth(v27) * -0.5;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v16 = CGRectGetHeight(v28);
  v23 = v24;
  CATransform3DTranslate(&v22, &v23, v15, v16 * -0.5, 0.0);
  [a1 setTransform:&v22];
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v17 = CGRectGetHeight(v29);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v18 = (v17 - CGRectGetWidth(v30)) * 0.5 * a2 + 0.0;
  v19 = *(v2 + 1240);
  if (v19)
  {
    [v19 setPosition:{-v18, v18}];
  }

  v20 = *(v2 + 1248);
  if (v20)
  {
    v21 = v20;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    [v21 setPosition:{v18 + CGRectGetWidth(v31), v18}];
  }
}

void sub_1000173A8(uint64_t a1@<X8>, float a2@<S0>)
{
  v5 = v2;
  if (qword_10012F518 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v8 = byte_10012FDB0;
    sub_100012904(0, &unk_1001303E0);
    if (v8 == 1)
    {
      v9 = sub_10001A0B0();
      v10 = sub_10001A0F8();
    }

    else
    {
      v9 = sub_10001A0D0(a2);
      v10 = sub_10001A198(a2);
    }

    v55 = v10;
    v11 = *(v5 + 360);
    v12 = qword_10012F520;
    swift_unknownObjectRetain();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = dword_10012FDB4;
    v14 = [v9 subdividedMesh:dword_10012FDB4];
    swift_unknownObjectRetain();
    v15 = [v14 faceCount];
    if (v15 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v16 = v15;
    v5 = 6 * v15;
    if ((2 * v15 * 3) >> 64 != (6 * v15) >> 63)
    {
      goto LABEL_46;
    }

    if (v5 < 0)
    {
      goto LABEL_47;
    }

    if (v5)
    {
      v17 = sub_1000E9AC4();
      v17[2] = v5;
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_22:
        __break(1u);
LABEL_23:
        v21 = _swiftEmptyArrayStorage;
        goto LABEL_24;
      }
    }

    LODWORD(v53) = v13;
    v54 = v11;
    v3 = 0x1555555555555555;
    p_name = &stru_10012CFF8.name;
    if (v16)
    {
      v18 = 0;
      v19 = v17 + 6;
      while (1)
      {
        [v14 faceAtIndex:v18];
        *(v19 - 2) = *&v56.f64[0];
        if (v18 == 0x1555555555555555)
        {
          break;
        }

        v18 = (v18 + 1);
        *(v19 - 1) = vzip1_s32(*&v56.f64[1], *&v56.f64[0]);
        *v19 = *&v56.f64[1];
        v19 += 3;
        if (v16 == v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_16:
    v17[2] = v5;
    v20 = [v14 vertexCount];
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

    v13 = v20;
    v52 = v9;
    v16 = &stru_10012CFF8.name;
    if (!v20)
    {
      goto LABEL_23;
    }

    v21 = sub_1000E9AC4();
    v22 = 0;
    v21[2] = v13;
    v23 = v21 + 5;
    do
    {
      v24 = v22 + 1;
      [v14 vertexAtIndex:?];
      v23[-1] = vcvt_f32_f64(v57);
      *v23 = vcvt_f32_f64(v56);
      v23 += 2;
      v22 = v24;
    }

    while (v13 != v24);
LABEL_24:
    v21[2] = v13;
    v25 = sub_100018850(v54, v21, v17);
    v27 = v26;
    v29 = v28;
    v51 = v30;

    v31 = [v55 subdividedMesh:v53];
    v32 = [v31 faceCount];
    if (v32 + 0x4000000000000000 < 0)
    {
      goto LABEL_49;
    }

    v5 = v32;
    v53 = v29;
    v33 = 6 * v32;
    if ((2 * v32 * 3) >> 64 != (6 * v32) >> 63)
    {
      goto LABEL_50;
    }

    if (v33 < 0)
    {
      goto LABEL_51;
    }

    if (v33)
    {
      v34 = sub_1000E9AC4();
      v34[2] = v33;
      if (v5 < 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v34 = _swiftEmptyArrayStorage;
      if (v32 < 0)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        v38 = _swiftEmptyArrayStorage;
LABEL_41:
        v38[2] = v33;
        v42 = sub_100018850(v54, v38, v34);
        v44 = v43;
        v46 = v45;
        v48 = v47;

        *a1 = v50;
        *(a1 + 8) = v49;
        *(a1 + 16) = v53;
        *(a1 + 24) = v51;
        *(a1 + 32) = v42;
        *(a1 + 40) = v44;
        *(a1 + 48) = v46;
        *(a1 + 56) = v48;
        *(a1 + 64) = a2;
        return;
      }
    }

    v49 = v27;
    v50 = v25;
    if (!v5)
    {
      break;
    }

    v35 = 0;
    v36 = v34 + 6;
    while (1)
    {
      [v31 p_name[255]];
      *(v36 - 2) = *&v56.f64[0];
      if (v3 == v35)
      {
        break;
      }

      ++v35;
      *(v36 - 1) = vzip1_s32(*&v56.f64[1], *&v56.f64[0]);
      *v36 = *&v56.f64[1];
      v36 += 3;
      if (v5 == v35)
      {
        goto LABEL_33;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_33:
  v34[2] = v33;
  v37 = [v31 vertexCount];
  if ((v37 & 0x8000000000000000) == 0)
  {
    v33 = v37;
    if (!v37)
    {
      goto LABEL_40;
    }

    v38 = sub_1000E9AC4();
    v39 = 0;
    v38[2] = v33;
    v40 = v38 + 5;
    do
    {
      v41 = v39 + 1;
      [v31 v16[257]];
      v40[-1] = vcvt_f32_f64(v57);
      *v40 = vcvt_f32_f64(v56);
      v40 += 2;
      v39 = v41;
    }

    while (v33 != v41);
    goto LABEL_41;
  }

LABEL_52:
  __break(1u);
}

float *sub_100017848(float *result)
{
  v2 = 1.0 / (*(v1 + 408) / *(v1 + 416));
  *&v3 = v2 + 0.0;
  *&v4 = (v2 * 0.0) + 0.0;
  DWORD1(v4) = 0;
  *&v5 = v4;
  *(&v5 + 1) = COERCE_UNSIGNED_INT(1.0);
  DWORD2(v4) = 0;
  HIDWORD(v4) = 1.0;
  *(v1 + 432) = v3;
  *(v1 + 448) = __PAIR64__(1.0, v4);
  *(v1 + 464) = v5;
  *(v1 + 480) = v4;
  v6 = *result;
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(v1 + 352);
  v8 = *(v7 + 16);
  if (v8 <= v6)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v7 + 32;
  v10 = (v9 + 248 * *result);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  *&v128[32] = v10[2];
  *&v128[48] = v13;
  *v128 = v11;
  *&v128[16] = v12;
  v14 = v10[4];
  v15 = v10[5];
  v16 = v10[6];
  *&v129[48] = v10[7];
  *&v129[32] = v16;
  *&v129[16] = v15;
  *v129 = v14;
  v17 = v10[8];
  v18 = v10[9];
  v19 = v10[10];
  *&v130[48] = v10[11];
  *&v130[32] = v19;
  *&v130[16] = v18;
  *v130 = v17;
  v20 = v10[12];
  v21 = v10[13];
  v22 = v10[14];
  *&v131[32] = *(v10 + 60);
  *&v131[16] = v22;
  *v131 = v21;
  *&v130[64] = v20;
  v23 = *(result + 1);
  if (v23 < 0 || v8 <= v23)
  {
    goto LABEL_39;
  }

  v24 = v131[0];
  v25 = v9 + 248 * *(result + 1);
  v26 = *v25;
  v27 = *(v25 + 16);
  v28 = *(v25 + 48);
  v126[2] = *(v25 + 32);
  v126[3] = v28;
  v126[0] = v26;
  v126[1] = v27;
  v29 = *(v25 + 64);
  v30 = *(v25 + 80);
  v31 = *(v25 + 112);
  v126[6] = *(v25 + 96);
  v126[7] = v31;
  v126[4] = v29;
  v126[5] = v30;
  v32 = *(v25 + 128);
  v33 = *(v25 + 144);
  v34 = *(v25 + 176);
  v126[10] = *(v25 + 160);
  v126[11] = v34;
  v126[8] = v32;
  v126[9] = v33;
  v35 = *(v25 + 192);
  v36 = *(v25 + 208);
  v37 = *(v25 + 224);
  v127 = *(v25 + 240);
  v126[13] = v36;
  v126[14] = v37;
  v126[12] = v35;
  *(v1 + 216) = v131[0];
  *(v1 + 218) = v36;
  if (v6 == v23)
  {
    v83 = *&v131[28];
    v38 = *&v131[20];
    v82 = *&v131[12];
    v81 = *&v131[4];
    v39 = *&v130[72];
    v79 = *&v130[8];
    v80 = *&v130[24];
    v77 = *&v130[56];
    v78 = *&v130[40];
    v75 = *&v129[8];
    v76 = *&v129[24];
    v40 = *&v129[56];
    v73 = *&v128[24];
    v74 = *&v129[40];
    v71 = *&v128[40];
    v72 = *&v128[8];
    v41 = *&v128[56];
    v42 = v128[0];
    v43 = v129[0];
    v44 = v130[0];
    result = sub_100019164(v128, v105);
    v46 = v71;
    v45 = v72;
    v48 = v73;
    v47 = v74;
    v50 = v75;
    v49 = v76;
    v52 = v78;
    v51 = v79;
    v53 = v80;
    v54 = v81;
    v55 = v77;
    v57 = v82;
    v56 = v83;
  }

  else
  {
    v58 = result[1];
    sub_100019164(v128, v105);
    sub_100019164(v126, v105);
    sub_10001EE5C(v126, v128, v105, v58);
    sub_1000191C0(v126);
    result = sub_1000191C0(v128);
    v56 = v125;
    v38 = v124;
    v57 = v123;
    v54 = v122;
    v24 = v121;
    v39 = v120;
    v53 = v117;
    v51 = v116;
    v52 = v118;
    v55 = v119;
    v49 = v112;
    v50 = v111;
    v47 = v113;
    v40 = v114;
    v48 = v107;
    v45 = v106;
    v46 = v108;
    v41 = v109;
    v42 = v105[0];
    v43 = v110;
    v44 = v115;
  }

  v85[0] = v42 & 1;
  v86 = v45;
  v87 = v48;
  v88 = v46;
  v89 = v41;
  v90 = v43 & 1;
  v91 = v50;
  v92 = v49;
  v93 = v47;
  v94 = v40;
  v95 = v44 & 1;
  v96 = v51;
  v97 = v53;
  v98 = v52;
  v99 = v55;
  v100 = v39;
  v101 = v24;
  *&v59 = v54;
  *(&v59 + 1) = v57;
  v102 = v59;
  v103 = v38;
  v104 = v56;
  v60 = *(v39 + 16);
  if (!v60)
  {
    goto LABEL_40;
  }

  if (v60 == 1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v60 < 3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v60 == 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v1 + 224) = *(v39 + 32);
  v61 = *(*(&v55 + 1) + 16);
  if (!v61)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v62 = *(*(&v55 + 1) + 32);
  v63 = *(v62 + 16);
  if (!v63)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v63 == 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v63 < 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v63 == 3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(v1 + 240) = *(v62 + 32);
  if (v61 == 1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v64 = *(*(&v55 + 1) + 40);
  v65 = *(v64 + 16);
  if (!v65)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v65 == 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v65 < 3)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v65 == 3)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  *(v1 + 256) = *(v64 + 32);
  if (v61 < 3)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v66 = *(*(&v55 + 1) + 48);
  v67 = *(v66 + 16);
  if (!v67)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v67 == 1)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v67 < 3)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v67 == 3)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(v1 + 272) = *(v66 + 32);
  if (v61 == 3)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v68 = *(*(&v55 + 1) + 56);
  v69 = *(v68 + 16);
  if (!v69)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v69 == 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v69 < 3)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v69 == 3)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  *(v1 + 288) = *(v68 + 32);
  if (v63 < 5)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v65 < 5)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v67 < 5)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v69 >= 5)
  {
    LODWORD(v70) = *(v62 + 48);
    DWORD1(v70) = *(v64 + 48);
    DWORD2(v70) = *(v66 + 48);
    HIDWORD(v70) = *(v68 + 48);
    *(v1 + 304) = v70;
    *(v1 + 320) = v54;
    *(v1 + 328) = v57;
    *(v1 + 336) = v38;
    *(v1 + 344) = v56;
    v84 = HIDWORD(v56);
    result = sub_1000191C0(v85);
    *(v1 + 348) = v84;
    return result;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_100017D9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result > 1)
  {
    if (result == 2)
    {
      v20 = *(a2 + 748);
      v21 = *(a2 + 764);
      *v22 = *(a2 + 780);
      *&v22[12] = *(a2 + 792);
      v16 = *(a2 + 684);
      v17 = *(a2 + 700);
      v4 = *(a2 + 716);
      v5 = *(a2 + 732);
      v6 = *(a2 + 808);
      v7 = (a2 + 816);
      v8 = *(a2 + 820) + 3.1416;
      v9 = *(a2 + 836) + 3.1416;
      v10 = *(a2 + 824);
      v11 = (a2 + 832);
      goto LABEL_8;
    }

    v3 = (a2 + 964);
    if (result == 3)
    {
      v20 = *(a2 + 904);
      v21 = *(a2 + 920);
      *v22 = *(a2 + 936);
      *&v22[12] = *(a2 + 948);
      v16 = *(a2 + 840);
      v17 = *(a2 + 856);
      v18 = *(a2 + 872);
      v19 = *(a2 + 888);
      v12 = *v3;
      v7 = (a2 + 972);
      v8 = *(a2 + 976);
      v13 = *(a2 + 980);
      v11 = (a2 + 988);
      v9 = *(a2 + 992);
      goto LABEL_10;
    }

    if (result == 4)
    {
      v20 = *(a2 + 904);
      v21 = *(a2 + 920);
      *v22 = *(a2 + 936);
      *&v22[12] = *(a2 + 948);
      v16 = *(a2 + 840);
      v17 = *(a2 + 856);
      v4 = *(a2 + 872);
      v5 = *(a2 + 888);
      v6 = *v3;
      v7 = (a2 + 972);
      v8 = *(a2 + 976) + 3.1416;
      v9 = *(a2 + 992) + 3.1416;
      v10 = *(a2 + 980);
      v11 = (a2 + 988);
LABEL_8:
      v12 = vneg_f32(v6);
      v13 = vneg_f32(v10);
      v18 = v4;
      v19 = v5;
      goto LABEL_10;
    }
  }

  v20 = *(a2 + 748);
  v21 = *(a2 + 764);
  *v22 = *(a2 + 780);
  *&v22[12] = *(a2 + 792);
  v16 = *(a2 + 684);
  v17 = *(a2 + 700);
  v18 = *(a2 + 716);
  v19 = *(a2 + 732);
  v12 = *(a2 + 808);
  v7 = (a2 + 816);
  v8 = *(a2 + 820);
  v13 = *(a2 + 824);
  v11 = (a2 + 832);
  v9 = *(a2 + 836);
LABEL_10:
  v14 = *v11;
  v15 = *v7;
  *(a3 + 64) = v20;
  *(a3 + 80) = v21;
  *(a3 + 96) = *v22;
  *(a3 + 108) = *&v22[12];
  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v18;
  *(a3 + 48) = v19;
  *(a3 + 124) = v12;
  *(a3 + 132) = v15;
  *(a3 + 136) = v8;
  *(a3 + 140) = v13;
  *(a3 + 148) = v14;
  *(a3 + 152) = v9;
  return result;
}

void sub_100017F5C()
{
  if (!qword_10012FE10)
  {
    type metadata accessor for FluidityWallpaperRenderer.RenderingState(255);
    v0 = sub_1000E9C94();
    if (!v1)
    {
      atomic_store(v0, &qword_10012FE10);
    }
  }
}

__n128 sub_100017FB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100017FD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
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

uint64_t sub_100018020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 68) = 1;
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

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100018084()
{
  result = sub_1000E94E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100018118()
{
  if (qword_10012F510 != -1)
  {
    swift_once();
  }

  v0 = qword_10013AA28;
  v1 = qword_10013AA28;
  return v0;
}

uint64_t sub_10001817C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_1000056DC(v3);
}

uint64_t sub_100018190(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1000056DC(v3);
}

uint64_t sub_1000181A4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FluidityWallpaperRenderer(0);
  v11 = swift_allocObject();
  sub_100014580(a1, v12, a3, a4, a5, a6);
  return v11;
}

id sub_10001822C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1000E9344(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 options:a2 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = sub_1000E93B4();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    sub_1000E92E4();

    swift_willThrow();
    v14 = sub_1000E93B4();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

unint64_t sub_100018380()
{
  result = qword_1001303A0;
  if (!qword_1001303A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001303A0);
  }

  return result;
}

uint64_t sub_1000183D4(uint64_t a1, char a2)
{
  if (*(a1 + 36))
  {
    if (qword_10012F768 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E96A4();
    sub_100007488(v2, qword_10013DE00);
    v3 = sub_1000E9684();
    v4 = sub_1000E9BA4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpectedly transitioning in render.", v5, 2u);
    }

    goto LABEL_8;
  }

  v7 = *a1;
  v8 = *(a1 + 8);

  v9 = sub_1000838E8(v7, v8);
  if (v9 == 5)
  {
LABEL_8:
    if (qword_10012F530 != -1)
    {
      swift_once();
    }

    return word_10012FDBA;
  }

  v11 = (v9 - 2);
  if (v11 >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0x500040002uLL >> (16 * ((v9 - 2) & 0xFu));
  }

  v13 = 0x600000001uLL >> (16 * ((v9 - 2) & 0xFu));
  if (v11 >= 3)
  {
    LOWORD(v13) = 7;
  }

  if (a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (qword_10012F528 != -1)
  {
    swift_once();
  }

  result = (word_10012FDB8 + v14);
  if (result != (word_10012FDB8 + v14))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000185B0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000E98E4();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_1000E9CC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v13;
      if (qword_10012F768 != -1)
      {
        swift_once();
      }

      v4 = sub_1000E96A4();
      sub_100007488(v4, qword_10013DE00);
      v5 = sub_1000E9684();
      v6 = sub_1000E9BB4();
      if (!os_log_type_enabled(v5, v6))
      {
        v8 = 0;
        goto LABEL_18;
      }

      v7 = swift_slowAlloc();
      *v7 = 33685760;
      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "The last saved scheme from UserDefaults was %{public}hd.", v7, 6u);
      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1000047C4(v16, &qword_100131DA0);
  }

  if (qword_10012F768 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E96A4();
  sub_100007488(v9, qword_10013DE00);
  v5 = sub_1000E9684();
  v10 = sub_1000E9BB4();
  if (!os_log_type_enabled(v5, v10))
  {
    v3 = 0;
    v8 = 1;
    goto LABEL_18;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  _os_log_impl(&_mh_execute_header, v5, v10, "No existing scheme found in UserDefaults.", v11, 2u);
  v3 = 0;
  v8 = 1;
LABEL_15:

LABEL_18:

  return v3 | (v8 << 16);
}

id sub_100018850(id result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >> 61)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = [result newBufferWithLength:4 * v3 options:0];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 16);
  if (v7 >> 59)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  swift_unknownObjectRetain();
  result = [v6 newBufferWithLength:16 * v7 options:0];
  if (result)
  {
    v9 = result;
    swift_unknownObjectRetain();
    sub_100013EC4(a2, a3, v8, v9);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100018950(__int16 a1)
{
  if (qword_10012F768 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E96A4();
  sub_100007488(v2, qword_10013DE00);
  v3 = sub_1000E9684();
  v4 = sub_1000E9BB4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 33685760;
    *(v5 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Save scheme %{public}hd into UserDefaults.", v5, 6u);
  }

  v6 = [objc_opt_self() standardUserDefaults];
  isa = sub_1000EA004().super.super.isa;
  v8 = sub_1000E98E4();
  [v6 setObject:isa forKey:v8];
}

void sub_100018ACC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_1000E93B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41[-1] - v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v41[-1] - v13;
  v43 = v5;
  v15 = *(v5 + 16);
  v15(&v41[-1] - v13, a1, v4, v12);
  v16 = objc_allocWithZone(NSFileWrapper);
  v17 = sub_10001822C(v14, 0);
  if (v2)
  {

LABEL_3:
    if (qword_10012F768 != -1)
    {
      swift_once();
    }

    v18 = sub_1000E96A4();
    sub_100007488(v18, qword_10013DE00);
    (v15)(v7, a1, v4);
    v19 = sub_1000E9684();
    v20 = sub_1000E9BB4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136315138;
      v23 = sub_1000E9314();
      v25 = v24;
      (*(v43 + 8))(v7, v4);
      v26 = sub_100093A3C(v23, v25, v41);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error: Couldn't create wrapper for %s", v21, 0xCu);
      sub_100012710(v22);
    }

    else
    {

      (*(v43 + 8))(v7, v4);
    }

    sub_100018380();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    return;
  }

  v28 = v40;
  if (!v17)
  {
    goto LABEL_3;
  }

  v29 = v17;
  sub_100031418(v29, v42);
  if (sub_100019138(v42) == 1)
  {
    if (qword_10012F768 != -1)
    {
      swift_once();
    }

    v30 = sub_1000E96A4();
    sub_100007488(v30, qword_10013DE00);
    v31 = v10;
    (v15)(v10, a1, v4);
    v32 = sub_1000E9684();
    v33 = sub_1000E9BB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v34 = 136315138;
      v40 = sub_1000E9314();
      v37 = v36;
      (*(v43 + 8))(v31, v4);
      v38 = sub_100093A3C(v40, v37, v41);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Error: Couldn't load document from %s", v34, 0xCu);
      sub_100012710(v35);
    }

    else
    {

      (*(v43 + 8))(v31, v4);
    }

    sub_100018380();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
  }

  else
  {
    memcpy(v41, v42, 0x1D4uLL);

    memcpy(v28, v41, 0x1D4uLL);
  }
}

unint64_t sub_100018FC4()
{
  result = qword_1001303C0;
  if (!qword_1001303C0)
  {
    sub_100019048(&qword_1001303B8);
    sub_100019090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001303C0);
  }

  return result;
}

uint64_t sub_100019048(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100019090()
{
  result = qword_1001303C8;
  if (!qword_1001303C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001303C8);
  }

  return result;
}

uint64_t sub_1000190E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100019138(uint64_t a1)
{
  if (*(a1 + 468))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100019214()
{
  result = qword_10012F9E0;
  if (!qword_10012F9E0)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012F9E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FluidityWallpaperRenderer.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FluidityWallpaperRenderer.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000193CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100019414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100019468()
{
  result = qword_100130408;
  if (!qword_100130408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130408);
  }

  return result;
}

uint64_t sub_100019638(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return _s22MercuryPosterExtension14WallpaperStateV4LookO21__derived_enum_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_100019684(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1000199EC(&v5, &v7) & 1;
}

unint64_t sub_1000196D0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v16 = *(a1 + 48);
  v17 = v11;
  v15 = v10;
  v13 = v8;
  v14 = v9;
  v12 = v7;
  return sub_10001A010(&v15, &v12);
}

BOOL sub_100019748(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return _s22MercuryPosterExtension14WallpaperStateV23__derived_struct_equalsySbAC_ACtFZ_0(v15, v17);
}

uint64_t WallpaperState.description.getter()
{
  sub_1000E9D64(16);
  v1._countAndFlagsBits = 0x2093949FF0;
  v1._object = 0xA500000000000000;
  sub_1000E99A4(v1);
  sub_1000E9B54();
  v2._countAndFlagsBits = 0x2085949FF0202CLL;
  v2._object = 0xA700000000000000;
  sub_1000E99A4(v2);
  sub_1000E9B54();
  return 0;
}

uint64_t sub_1000198B8()
{
  sub_1000E9D64(16);
  v1._countAndFlagsBits = 0x2093949FF0;
  v1._object = 0xA500000000000000;
  sub_1000E99A4(v1);
  sub_1000E9B54();
  v2._countAndFlagsBits = 0x2085949FF0202CLL;
  v2._object = 0xA700000000000000;
  sub_1000E99A4(v2);
  sub_1000E9B54();
  return 0;
}

uint64_t sub_1000199EC(double *a1, uint64_t a2)
{
  v2 = *a1;
  if ((a1[5] & 1) == 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return *&v2 == *a2;
    }

    return 0;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*&v2 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = *(a2 + 24);
    v8 = *(a2 + 32);
    sub_10001A064();
    v9 = sub_1000E9C84() & (v5 == v7);
    if (v6 == v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s22MercuryPosterExtension14WallpaperStateV4LookO21__derived_enum_equalsySbAE_AEtFZ_0(float *a1, float *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (a1[9])
  {
    if (a2[9])
    {
      if (v8 = *(a1 + 2), v9 = *(a1 + 3), v10 = a1[8], v11 = *(a2 + 2), v12 = *(a2 + 3), v13 = a2[8], v4 == v6) && v5 == v7 || (sub_1000E9F74())
      {
        if (v8 == v11 && v9 == v12 || (sub_1000E9F74() & 1) != 0)
        {
          return v10 == v13;
        }
      }
    }

    return 0;
  }

  if (a2[9])
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_1000E9F74();
}

BOOL _s22MercuryPosterExtension14WallpaperStateV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || ((*(a1 + 12) ^ *(a2 + 12)) & 1) != 0 || ((*(a1 + 13) ^ *(a2 + 13)) & 1) != 0 || ((*(a1 + 14) ^ *(a2 + 14)) & 1) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0)
    {
      return 0;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    if (v4 != v6 || v5 != v7)
    {
      v14 = a1;
      v15 = a2;
      v16 = sub_1000E9F74();
      a2 = v15;
      v17 = v16;
      a1 = v14;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 == v11 && v9 == v12)
    {
      if (v10 != v13)
      {
        return 0;
      }
    }

    else
    {
      v22 = a1;
      v23 = a2;
      v24 = sub_1000E9F74();
      v2 = 0;
      if ((v24 & 1) == 0)
      {
        return v2;
      }

      a2 = v23;
      a1 = v22;
      if (v10 != v13)
      {
        return v2;
      }
    }
  }

  else
  {
    if (*(a2 + 52))
    {
      return 0;
    }

    if (v4 != v6 || v5 != v7)
    {
      v18 = a1;
      v19 = a2;
      v20 = sub_1000E9F74();
      a2 = v19;
      v21 = v20;
      a1 = v18;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v25 = *(a1 + 72);
  v44 = *(a1 + 56);
  v45[0] = v25;
  v26 = a1;
  *(v45 + 9) = *(a1 + 81);
  v27 = *(a2 + 72);
  v42 = *(a2 + 56);
  v43[0] = v27;
  v28 = a2;
  *(v43 + 9) = *(a2 + 81);
  if ((sub_1000199EC(&v44, &v42) & 1) == 0 || !CGRectEqualToRect(*(v26 + 104), *(v28 + 104)) || *(v26 + 144) != *(v28 + 144))
  {
    return 0;
  }

  v2 = 0;
  if (*(v26 + 152) == *(v28 + 152) && *(v26 + 160) == *(v28 + 160))
  {
    v30 = *(v26 + 192);
    v29 = *(v26 + 200);
    v31 = *(v26 + 184);
    v33 = *(v28 + 192);
    v32 = *(v28 + 200);
    v34 = *(v28 + 176);
    v35 = *(v28 + 184);
    v39.f64[0] = *(v26 + 176);
    v39.f64[1] = v31;
    v40 = v30;
    v41 = v29;
    v37 = v33;
    v38 = v32;
    v36.f64[0] = v34;
    v36.f64[1] = v35;
    if (sub_10001A010(&v39, &v36))
    {
      return *(v26 + 208) == *(v28 + 208);
    }

    return 0;
  }

  return v2;
}

__n128 sub_100019E20(uint64_t a1, uint64_t a2)
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

__n128 sub_100019E74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100019E88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 37))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100019ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

__n128 sub_100019F48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100019F5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100019FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_10001A010(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(v2, v3));
  if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v5 = vandq_s8(vceqq_f64(*a1, vnegq_f64(*a2)), vceqq_f64(v2, vnegq_f64(v3)));
  return vandq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] >> 63;
}

unint64_t sub_10001A064()
{
  result = qword_100130410;
  if (!qword_100130410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100130410);
  }

  return result;
}

uint64_t sub_10001A118(uint64_t a1, uint64_t a2)
{
  v8[2] = &off_10011FEC8;
  v8[3] = a1;
  type metadata accessor for CAMeshVertex(0);
  sub_10001A394(a2, v8, a1, v5, v2, &type metadata for Never, &protocol witness table for Never, v6);
  return v8[7];
}

uint64_t sub_10001A1C0(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v9[2] = &off_10011FEC8;
  v10 = sub_10001A4D0(24, a1, a2, a4);
  v11 = v4;
  type metadata accessor for CAMeshVertex(0);
  sub_10001A394(a3, v9, v10, v6, v4, &type metadata for Never, &protocol witness table for Never, v7);

  return v12;
}

uint64_t sub_10001A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a5;
  type metadata accessor for CAMeshFace(0);
  return sub_10001A394(sub_10001A4A8, v10, a3, v7, a5, &type metadata for Never, &protocol witness table for Never, v8);
}

id sub_10001A30C@<X0>(id result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  if (a3)
  {
    if (result)
    {
      result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVertexCount:*(a2 + 16) vertices:a3 faceCount:*(a4 + 16) faces:result depthNormalization:0];
      *a5 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v15 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80)), *(v15 + 16), v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

uint64_t sub_10001A4D0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  if (!result)
  {
    result = _swiftEmptyArrayStorage;
    v8 = *(a2 + 16);
    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  type metadata accessor for CAMeshVertex(0);
  result = sub_1000E9AC4();
  *(result + 16) = v7;
  v8 = *(a2 + 16);
  if (v8)
  {
LABEL_6:
    v9 = 0;
    v10 = a4;
    v11 = *(a3 + 16);
    v12 = v8;
    while (v11)
    {
      v13 = *(a2 + v9 + 64) + (*(a3 + v9 + 64) - *(a2 + v9 + 64)) * v10;
      v14 = vaddq_f64(*(a2 + v9 + 48), vmulq_n_f64(vsubq_f64(*(a3 + v9 + 48), *(a2 + v9 + 48)), v10));
      v15 = result + v9;
      *(v15 + 32) = *(a2 + v9 + 32);
      *(v15 + 48) = v14;
      *(v15 + 64) = v13;
      --v11;
      v9 += 40;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_9:
  if (v8 <= v7)
  {
    *(result + 16) = v8;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10001A5E0(id a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = [a1 newDefaultLibrary];
    if (!v4)
    {
LABEL_12:
      sub_10001B6F8();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
LABEL_13:
      swift_unknownObjectRelease();
      type metadata accessor for VariableBlurrer();
      swift_deallocPartialClassInstance();
      return v2;
    }
  }

  swift_unknownObjectRetain();
  v5 = sub_1000E98E4();
  v6 = [v4 newFunctionWithName:v5];

  if (!v6)
  {
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v7 = sub_1000E98E4();
  v8 = [v4 newFunctionWithName:v7];

  if (!v8)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v19 = 0;
  v9 = [a1 newComputePipelineStateWithFunction:v6 error:&v19];
  v10 = v19;
  if (!v9)
  {
    v17 = v19;
    sub_1000E92E4();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  *(v2 + 16) = v9;
  v19 = 0;
  v11 = v10;
  v12 = [a1 newComputePipelineStateWithFunction:v8 error:&v19];
  if (!v12)
  {
    v18 = v19;
    sub_1000E92E4();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v13 = v12;
  v14 = v19;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v2 + 24) = v13;
  return v2;
}

uint64_t sub_10001A890(int a1, int a2, void *a3, uint64_t a4, id a5, id a6, void *a7)
{
  v8 = a7;
  p_name = a6;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v14 = [a6 computeCommandEncoder];
    if (!v14)
    {
      sub_10001B6F8();
      swift_allocError();
      *v45 = 4;
      return swift_willThrow();
    }

    v13 = v14;
  }

  v50 = v7;
  v15 = *(v7 + 16);
  swift_unknownObjectRetain();
  [v13 setComputePipelineState:v15];
  if (!v8)
  {
    v8 = sub_1000E98E4();
    [v13 setLabel:v8];
  }

  swift_getObjectType();
  v16 = sub_100013028();
  v54 = v17;
  v55 = v16;
  v53 = v18;
  v20 = log2([a5 width]);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_68;
  }

  if (v20 <= -9.22337204e18)
  {
    goto LABEL_69;
  }

  if (v20 >= 9.22337204e18)
  {
    goto LABEL_70;
  }

  if (v20 < 0)
  {
    goto LABEL_71;
  }

  v49 = p_name;
  v57 = a4;
  v58 = a3;
  v21 = 0;
  v59 = a4 & 0xC000000000000001;
  v56 = a4 & 0xFFFFFFFFFFFFFF8;
  v51 = a4 + 32;
  v52 = v20 + 1;
  v8 = 63;
  do
  {
    v24 = [a5 width];
    v25 = [a5 height];
    if (v21 == 63)
    {
      v26 = 63;
    }

    else
    {
      v26 = v21 + 1;
    }

    if (v21 > 0x3F)
    {
      v26 = 63;
    }

    a4 = v24 >> v26;
    p_name = v25 >> v26;
    if (v24 >> v26)
    {
      v27 = p_name == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      break;
    }

    v15 = v21 + 1;
    v64 = 0;
    if (v21)
    {
      v30 = (v21 - 1) >> 1;
      if (v59)
      {
        v31 = sub_1000E9D74();
      }

      else
      {
        if (v30 >= *(v56 + 16))
        {
          goto LABEL_65;
        }

        v31 = *(v51 + 8 * v30);
        swift_unknownObjectRetain();
      }

      if (v21 > 0x7FFE)
      {
        goto LABEL_63;
      }

      HIWORD(v64) = v21 + 1;
      v22 = v58;
      swift_unknownObjectRetain_n();
      v23 = v31;
    }

    else
    {
      v23 = v21 ? v58 : a5;
      v28 = v21 >> 1;
      if (v59)
      {
        swift_unknownObjectRetain_n();
        v29 = sub_1000E9D74();
        if (v21 >> 15)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v28 >= *(v56 + 16))
        {
          goto LABEL_66;
        }

        v29 = *(v51 + 8 * v28);
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        if (v21 >> 15)
        {
          goto LABEL_64;
        }
      }

      LOWORD(v64) = v21;
      v22 = v29;
    }

    swift_unknownObjectRetain();
    [v13 setTexture:v23 atIndex:0];
    swift_unknownObjectRelease();
    [v13 setTexture:v22 atIndex:1];
    swift_unknownObjectRelease();
    [v13 setBytes:&v64 length:4 atIndex:0];
    sub_100013B98(a4, p_name, &v63);
    v60 = v55;
    v61 = v54;
    v62 = v53;
    [v13 dispatchThreads:&v63 threadsPerThreadgroup:&v60];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v21 = v15;
  }

  while (v52 != v15);
  v32 = [a5 pixelFormat];
  if (v32 != [v58 pixelFormat])
  {
    [v13 setComputePipelineState:*(v50 + 24)];
    swift_getObjectType();
    v8 = sub_100013028();
    v15 = v38;
    a4 = v39;
    [v13 setTexture:a5 atIndex:0];
    [v13 setTexture:v58 atIndex:1];
    LOWORD(v64) = 0;
    [v13 setBytes:&v64 length:2 atIndex:0];
    sub_100013B98([a5 width], objc_msgSend(a5, "height"), &v63);
    v60 = v8;
    v61 = v15;
    v62 = a4;
    [v13 dispatchThreads:&v63 threadsPerThreadgroup:&v60];
    v19 = v57;
    if (v57 >> 62)
    {
      goto LABEL_72;
    }

    v40 = *(v56 + 16);
    if (v40)
    {
      goto LABEL_52;
    }

LABEL_58:
    [v13 endEncoding];
    return swift_unknownObjectRelease();
  }

  [v13 endEncoding];
  v33 = [v49 blitCommandEncoder];
  if (v33)
  {
    v8 = v33;
    v34 = sub_1000E98E4();
    [v8 setLabel:v34];

    p_name = &stru_10012CFF8.name;
    [v8 copyFromTexture:a5 sourceSlice:0 sourceLevel:0 toTexture:v58 destinationSlice:0 destinationLevel:0 sliceCount:1 levelCount:1];
    if (v57 >> 62)
    {
      goto LABEL_74;
    }

    v15 = *(v56 + 16);
    if (v15)
    {
      do
      {
        v35 = 0;
        a4 = 0x4000000000000000;
        v36 = 1;
        while (1)
        {
          if (v59)
          {
            v37 = sub_1000E9D74();
            if (v35 == 0x4000000000000000)
            {
              break;
            }

            goto LABEL_48;
          }

          v37 = *(v57 + 8 * v35 + 32);
          swift_unknownObjectRetain();
          if (v35 == 0x4000000000000000)
          {
            break;
          }

LABEL_48:
          ++v35;
          [v8 *(p_name + 2336)];
          swift_unknownObjectRelease();
          v36 += 2;
          if (v15 == v35)
          {
            goto LABEL_49;
          }
        }

        while (1)
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          v46 = v19;
          v47 = sub_1000E9E64();
          if (v47 < 0)
          {
            break;
          }

          v40 = v47;
          v19 = v46;
          if (!v47)
          {
            goto LABEL_58;
          }

LABEL_52:
          v41 = 0;
          p_name = 1;
          while (1)
          {
            if (v59)
            {
              v42 = sub_1000E9D74();
            }

            else
            {
              v42 = *(v19 + 8 * v41 + 32);
              swift_unknownObjectRetain();
            }

            [v13 setTexture:v42 atIndex:0];
            if (v41 == 0x4000)
            {
              break;
            }

            LOWORD(v64) = (2 * v41) | 1;
            [v13 setBytes:&v64 length:2 atIndex:0];
            sub_100013B98([v42 width], objc_msgSend(v42, "height"), &v63);
            v60 = v8;
            v61 = v15;
            v62 = a4;
            [v13 dispatchThreads:&v63 threadsPerThreadgroup:&v60];
            swift_unknownObjectRelease();
            ++v41;
            v19 = v57;
            if (v40 == v41)
            {
              goto LABEL_58;
            }
          }

          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
        }

        __break(1u);
LABEL_74:
        v48 = sub_1000E9E64();
        if (v48 < 0)
        {
          __break(1u);
        }

        v15 = v48;
      }

      while (v48);
    }

LABEL_49:
    [v8 endEncoding];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  sub_10001B6F8();
  swift_allocError();
  *v44 = 4;
  swift_willThrow();
  return swift_unknownObjectRelease();
}

uint64_t sub_10001B0CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10001B130(void *a1, id a2, char a3)
{
  v38 = [a1 width];
  [a1 height];
  v6 = [a1 device];
  v7 = a2;
  if (a3)
  {
    v7 = [a1 pixelFormat];
  }

  v8 = objc_opt_self();
  v9 = [v8 texture2DDescriptorWithPixelFormat:v7 width:objc_msgSend(a1 height:"width") mipmapped:objc_msgSend(a1, "height"), 1];
  [v9 setStorageMode:2];
  [v9 setUsage:3];
  v39 = [v6 newTextureWithDescriptor:v9];
  if (v39)
  {
    v37 = v9;
    v10 = [a1 label];
    if (v10)
    {
      v11 = v10;
      v35 = v6;
      v12 = sub_1000E9914();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        v40._countAndFlagsBits = v12;
        v40._object = v14;
        sub_1000E99A4(v40);
      }

      v6 = v35;
    }

    v17 = sub_1000E98E4();

    [v39 setLabel:v17];

    if (a3)
    {
      a2 = [a1 pixelFormat];
    }

    v18 = [v8 texture2DDescriptorWithPixelFormat:a2 width:1 height:1 mipmapped:0];
    [v18 setStorageMode:2];
    [v18 setUsage:3];
    v19 = [v37 mipmapLevelCount];
    if (v19 >= 2)
    {
      v20 = v19;
      v9 = 1;
      while (1)
      {
        if (__OFADD__(v9, 2))
        {
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v9 + 2;
        }

        v22 = [a1 width];
        if (v9 < -64)
        {
LABEL_40:
          [a1 height];
          goto LABEL_41;
        }

        v23 = v22;
        if (v9 > 64)
        {
          break;
        }

        if (v9 < 0)
        {
          if (v9 == -64)
          {
            goto LABEL_40;
          }

          v36 = -v9;
          v31 = v22 << -v9;
          v32 = [a1 height];
          if (!v31)
          {
            goto LABEL_41;
          }

          v26 = v31;
          v27 = v32 << v36;
          if (!(v32 << v36))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v25 = [a1 height];
          if (v9 == 64)
          {
            v26 = v23 >> 63;
            if (v23 >= 0)
            {
              goto LABEL_41;
            }

            goto LABEL_22;
          }

          v26 = v23 >> v9;
          if (!(v23 >> v9))
          {
            goto LABEL_41;
          }

          v27 = v25 >> v9;
          if (!(v25 >> v9))
          {
            goto LABEL_41;
          }
        }

LABEL_28:
        [v18 setWidth:v26];
        [v18 setHeight:v27];
        v28 = [v6 newTextureWithDescriptor:v18];
        if (!v28)
        {

          sub_10001B6F8();
          swift_allocError();
          *v34 = 3;
          swift_willThrow();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return v9;
        }

        v29 = v28;
        v41._countAndFlagsBits = sub_1000E9F54();
        sub_1000E99A4(v41);

        v30 = sub_1000E98E4();

        [v29 setLabel:v30];

        swift_unknownObjectRetain();
        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        swift_unknownObjectRelease();
        v9 = v21;
        if (v21 >= v20)
        {
          goto LABEL_41;
        }
      }

      v24 = v22 >> 63;
      v25 = [a1 height];
      if (!v24)
      {
        goto LABEL_41;
      }

      v26 = v24;
LABEL_22:
      v27 = v25 >> 63;
      if (v25 >= 0)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

LABEL_41:

    v9 = v38;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10001B6F8();
    swift_allocError();
    *v16 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return v9;
}

unint64_t sub_10001B6F8()
{
  result = qword_100133210;
  if (!qword_100133210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133210);
  }

  return result;
}

uint64_t sub_10001B74C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001B794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10001B7E4()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_1000E9DC4();
    for (i = v1 + 32; ; i += 8)
    {
      v5 = *(*i + 16);
      if (!v5)
      {
        break;
      }

      if (v5 == 1)
      {
        goto LABEL_11;
      }

      if (v5 < 3)
      {
        goto LABEL_12;
      }

      if (v5 == 3)
      {
        goto LABEL_13;
      }

      CGColorCreateSRGB(*(*i + 32), *(*i + 36), *(*i + 40), *(*i + 44));
      sub_1000E9DA4();
      sub_1000E9DD4();
      sub_1000E9DE4();
      result = sub_1000E9DB4();
      if (!--v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001B8D4()
{
  if (*v0)
  {
    return 0x5974657366666FLL;
  }

  else
  {
    return 0x5874657366666FLL;
  }
}

uint64_t sub_10001B908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5874657366666FLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1000E9F74() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5974657366666FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000E9F74();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10001B9E4(uint64_t a1)
{
  v2 = sub_10001BBE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BA20(uint64_t a1)
{
  v2 = sub_10001BBE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FluidityParameters.Offset.encode(to:)(void *a1)
{
  v3 = sub_1000125FC(&qword_1001304D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100012800(a1, a1[3]);
  sub_10001BBE4();
  sub_1000EA084();
  v10 = 0;
  sub_1000E9F34();
  if (!v1)
  {
    v9 = 1;
    sub_1000E9F34();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10001BBE4()
{
  result = qword_1001304E0;
  if (!qword_1001304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001304E0);
  }

  return result;
}

void sub_10001BC50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001F19C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

uint64_t sub_10001BCD0()
{
  if (*v0)
  {
    return 0x746E6F7266;
  }

  else
  {
    return 1801675106;
  }
}

uint64_t sub_10001BD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1801675106 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000E9F74() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6F7266 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000E9F74();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10001BDD8(uint64_t a1)
{
  v2 = sub_10001F34C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001BE14(uint64_t a1)
{
  v2 = sub_10001F34C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FluidityParameters.State.encode(to:)(void *a1, float a2, float a3, float a4, float a5)
{
  v11 = sub_1000125FC(&qword_1001304E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  sub_100012800(a1, a1[3]);
  sub_10001F34C();
  sub_1000EA084();
  v18 = a2;
  v19 = a3;
  v17 = 0;
  sub_10001F3A0();
  sub_1000E9F44();
  if (!v5)
  {
    v18 = a4;
    v19 = a5;
    v17 = 1;
    sub_1000E9F44();
  }

  return (*(v12 + 8))(v14, v11);
}

void sub_10001C040(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001F3F4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

uint64_t sub_10001C0B8()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x726F74636166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_10001C104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001F638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001C12C(uint64_t a1)
{
  v2 = sub_10001F5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C168(uint64_t a1)
{
  v2 = sub_10001F5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FluidityParameters.Mask.encode(to:)(void *a1)
{
  v3 = sub_1000125FC(&qword_100130500);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100012800(a1, a1[3]);
  sub_10001F5E4();
  sub_1000EA084();
  v8[15] = 0;
  sub_1000E9F34();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000E9F34();
    v8[13] = 2;
    sub_1000E9F34();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10001C384(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001F748(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
  }
}

unint64_t sub_10001C3D4(char a1)
{
  result = 6582113;
  switch(a1)
  {
    case 1:
      result = 1801678700;
      break;
    case 2:
      result = 1701670760;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 16:
      result = 0xD000000000000011;
      break;
    case 6:
    case 7:
    case 17:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6B6F6F4C6B636162;
      break;
    case 11:
      result = 0x6B6F6F4C6B636162;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
    case 15:
      result = 0x6F6F4C746E6F7266;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001C590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001FA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001C5C4(uint64_t a1)
{
  v2 = sub_10001F91C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001C600(uint64_t a1)
{
  v2 = sub_10001F91C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FluidityParameters.Device.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000125FC(&qword_100130510);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100012800(a1, a1[3]);
  sub_10001F91C();
  sub_1000EA084();
  v12 = *v3;
  v11 = 0;
  sub_10001F970();
  sub_1000E9F44();
  if (!v2)
  {
    v12 = v3[1];
    v11 = 1;
    sub_1000E9F44();
    v12 = v3[2];
    v11 = 2;
    sub_1000E9F44();
    *&v12 = *(v3 + 6);
    DWORD2(v12) = *(v3 + 14);
    v11 = 3;
    sub_10001F9C4();
    sub_1000E9F44();
    *&v12 = *(v3 + 60);
    DWORD2(v12) = *(v3 + 17);
    v11 = 4;
    sub_1000E9F44();
    *&v12 = *(v3 + 9);
    DWORD2(v12) = *(v3 + 20);
    v11 = 5;
    sub_1000E9F44();
    *&v12 = *(v3 + 84);
    DWORD2(v12) = *(v3 + 23);
    v11 = 6;
    sub_1000E9F44();
    *&v12 = *(v3 + 12);
    DWORD2(v12) = *(v3 + 26);
    v11 = 7;
    sub_1000E9F44();
    *&v12 = *(v3 + 108);
    DWORD2(v12) = *(v3 + 29);
    v11 = 8;
    sub_1000E9F44();
    LOBYTE(v12) = 9;
    sub_1000E9F34();
    LOBYTE(v12) = 10;
    sub_1000E9F34();
    LOBYTE(v12) = 11;
    sub_1000E9F34();
    LOBYTE(v12) = 12;
    sub_1000E9F34();
    LOBYTE(v12) = 13;
    sub_1000E9F34();
    LOBYTE(v12) = 14;
    sub_1000E9F34();
    LOBYTE(v12) = 15;
    sub_1000E9F34();
    LOBYTE(v12) = 16;
    sub_1000E9F34();
    LOBYTE(v12) = 17;
    sub_1000E9F34();
  }

  return (*(v6 + 8))(v8, v5);
}

double FluidityParameters.Device.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10001FFB8(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    a2[6] = v9[6];
    a2[7] = v5;
    a2[8] = *v10;
    *(a2 + 140) = *&v10[12];
    v6 = v9[3];
    a2[2] = v9[2];
    a2[3] = v6;
    v7 = v9[5];
    a2[4] = v9[4];
    a2[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
  }

  return result;
}

uint64_t sub_10001CB84()
{
  v1 = 0x74726F5064615069;
  if (*v0 != 1)
  {
    v1 = 0x646E614C64615069;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F685069;
  }
}

uint64_t sub_10001CBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100020654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001CC18(uint64_t a1)
{
  v2 = sub_1000205AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001CC54(uint64_t a1)
{
  v2 = sub_1000205AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FluidityParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000125FC(&qword_100130530);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_100012800(a1, a1[3]);
  sub_1000205AC();
  sub_1000EA084();
  v9 = v3[7];
  v31 = v3[6];
  v32 = v9;
  v33[0] = v3[8];
  *(v33 + 12) = *(v3 + 140);
  v10 = v3[3];
  v27 = v3[2];
  v28 = v10;
  v11 = v3[5];
  v29 = v3[4];
  v30 = v11;
  v12 = v3[1];
  v25 = *v3;
  v26 = v12;
  v24 = 0;
  sub_100020600();
  sub_1000E9F44();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = *(v3 + 268);
  v14 = *(v3 + 284);
  v31 = *(v3 + 252);
  v32 = v13;
  v33[0] = v14;
  *(v33 + 12) = *(v3 + 296);
  v15 = *(v3 + 204);
  v27 = *(v3 + 188);
  v28 = v15;
  v16 = *(v3 + 236);
  v29 = *(v3 + 220);
  v30 = v16;
  v17 = *(v3 + 172);
  v25 = *(v3 + 156);
  v26 = v17;
  v24 = 1;
  sub_1000E9F44();
  v19 = *(v3 + 424);
  v31 = *(v3 + 408);
  v32 = v19;
  v33[0] = *(v3 + 440);
  *(v33 + 12) = *(v3 + 452);
  v20 = *(v3 + 360);
  v27 = *(v3 + 344);
  v28 = v20;
  v21 = *(v3 + 392);
  v29 = *(v3 + 376);
  v30 = v21;
  v22 = *(v3 + 328);
  v25 = *(v3 + 312);
  v26 = v22;
  v24 = 2;
  sub_1000E9F44();
  return (*(v6 + 8))(v8, v5);
}

void *FluidityParameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100020774(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x1D4uLL);
  }

  return result;
}

_UNKNOWN **sub_10001CF7C(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 16) != 2 || *(a2 + 16) != 2)
  {
    return &off_10011F8C0;
  }

  sub_1000125FC(&qword_100130658);
  result = swift_allocObject();
  v6 = vaddq_f64(*(a1 + 32), vmulq_n_f64(vsubq_f64(*(a2 + 32), *(a1 + 32)), a3));
  *(result + 1) = xmmword_1000EC880;
  *(result + 2) = v6;
  return result;
}

_UNKNOWN **sub_10001D020(float32x4_t *a1, float32x4_t *a2, float a3)
{
  if (a1[1].i64[0] != 4 || a2[1].i64[0] != 4)
  {
    return &off_10011F8F0;
  }

  sub_1000125FC(&qword_100132540);
  result = swift_allocObject();
  v6 = vaddq_f32(a1[2], vmulq_n_f32(vsubq_f32(a2[2], a1[2]), a3));
  *(result + 1) = xmmword_1000EDAA0;
  *(result + 2) = v6;
  return result;
}

_UNKNOWN **sub_10001D0C4(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 16) != 2 || *(a2 + 16) != 2)
  {
    return &off_10011F980;
  }

  sub_1000125FC(&qword_100130650);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000EC880;
  *(v6 + 32) = sub_10001D020(*(a1 + 32), *(a2 + 32), a3);
  v7 = sub_10001D020(*(a1 + 40), *(a2 + 40), a3);
  result = v6;
  *(v6 + 40) = v7;
  return result;
}

_UNKNOWN **sub_10001D18C(float32x4_t *a1, float32x4_t *a2, float a3)
{
  if (a1[1].i64[0] != 5 || a2[1].i64[0] != 5)
  {
    return &off_10011F9B0;
  }

  sub_1000125FC(&qword_100132540);
  result = swift_allocObject();
  v6 = vaddq_f32(a1[2], vmulq_n_f32(vsubq_f32(a2[2], a1[2]), a3));
  *(result + 1) = xmmword_1000EDAB0;
  *(result + 2) = v6;
  *(result + 12) = a1[3].f32[0] + ((a2[3].f32[0] - a1[3].f32[0]) * a3);
  return result;
}

_UNKNOWN **sub_10001D248(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 16) != 4 || *(a2 + 16) != 4)
  {
    return &off_10011FAA8;
  }

  sub_1000125FC(&qword_100130650);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000EDAA0;
  *(v6 + 32) = sub_10001D18C(*(a1 + 32), *(a2 + 32), a3);
  *(v6 + 40) = sub_10001D18C(*(a1 + 40), *(a2 + 40), a3);
  *(v6 + 48) = sub_10001D18C(*(a1 + 48), *(a2 + 48), a3);
  v7 = sub_10001D18C(*(a1 + 56), *(a2 + 56), a3);
  result = v6;
  *(v6 + 56) = v7;
  return result;
}

unint64_t sub_10001D338(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      return 0xD000000000000018;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    v1 = 0x6764456775626564;
    if (a1 == 9)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000017;
    }

    v2 = 0xD000000000000019;
    if (a1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100020B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001D4E4(uint64_t a1)
{
  v2 = sub_100020B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D520(uint64_t a1)
{
  v2 = sub_100020B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ColorOptions.encode(to:)(void *a1)
{
  v3 = sub_1000125FC(&qword_100130548);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100012800(a1, a1[3]);
  sub_100020B48();
  sub_1000EA084();
  v8[15] = 0;
  sub_1000E9F34();
  if (!v1)
  {
    v8[14] = 1;
    sub_1000E9F34();
    v8[13] = 2;
    sub_1000E9F34();
    v8[12] = 3;
    sub_1000E9F34();
    v8[11] = 4;
    sub_1000E9F34();
    v8[10] = 5;
    sub_1000E9F34();
    v8[9] = 6;
    sub_1000E9F34();
    v8[8] = 7;
    sub_1000E9F34();
    v8[7] = 8;
    sub_1000E9F34();
    v8[6] = 9;
    sub_1000E9F34();
    v8[5] = 10;
    sub_1000E9F34();
  }

  return (*(v4 + 8))(v6, v3);
}

double ColorOptions.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100020F1C(a1, &v6);
  if (!v2)
  {
    v5 = *v7;
    *a2 = v6;
    a2[1] = v5;
    result = *&v7[12];
    *(a2 + 28) = *&v7[12];
  }

  return result;
}

uint64_t sub_10001D864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61697861;
  }

  else
  {
    v3 = 0x6C6169646172;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61697861;
  }

  else
  {
    v5 = 0x6C6169646172;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000E9F74();
  }

  return v8 & 1;
}

Swift::Int sub_10001D904()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_10001D980()
{
  sub_1000E9974();
}

Swift::Int sub_10001D9E8()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_10001DA60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100121CA0;
  v8._object = v3;
  v5 = sub_1000E9EC4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10001DAC0(uint64_t *a1@<X8>)
{
  v2 = 0x6C6169646172;
  if (*v1)
  {
    v2 = 0x6C61697861;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10001DBA8(void *a1)
{
  v3 = v1;
  v5 = sub_1000125FC(&qword_100130700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100012800(a1, a1[3]);
  sub_100024350();
  sub_1000EA084();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_1000244B8();
  sub_1000E9F44();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1000E9F24();
    LOBYTE(v10) = 2;
    sub_1000E9F24();
    LOBYTE(v10) = 3;
    sub_1000E9F24();
    LOBYTE(v10) = 4;
    sub_1000E9F24();
    v10 = *(v3 + 40);
    v11 = 5;
    sub_1000125FC(&qword_1001306E8);
    sub_1000243F8(&qword_100130710);
    sub_1000E9F44();
    v10 = *(v3 + 48);
    v11 = 6;
    sub_1000E9F44();
    v10 = *(v3 + 56);
    v11 = 7;
    sub_1000125FC(&qword_100130600);
    sub_100023BC0(&qword_100130638, &qword_100130640);
    sub_1000E9F44();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001DEEC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x746E696F50646E65;
  if (v1 != 6)
  {
    v3 = 0x73726F6C6F63;
  }

  v4 = 0x6163536465656C62;
  if (v1 != 4)
  {
    v4 = 0x696F507472617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 2)
  {
    v5 = 0x6E6F697461746F72;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001DFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100021F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001E00C(uint64_t a1)
{
  v2 = sub_100024350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E048(uint64_t a1)
{
  v2 = sub_100024350();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001E084@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100022194(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_10001E0E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000226D4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001E1C8(char a1)
{
  result = 0x6461724765736162;
  switch(a1)
  {
    case 1:
    case 5:
      result = 0xD000000000000011;
      break;
    case 2:
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6C6F436E776F7263;
      break;
    case 6:
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001E330(void *a1)
{
  v2 = v1;
  v4 = sub_1000125FC(&qword_100130628);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  sub_100012800(a1, a1[3]);
  sub_100023A08();
  sub_1000EA084();
  v8 = v2[1];
  v51[0] = *v2;
  v51[1] = v8;
  v9 = v2[3];
  v11 = *v2;
  v10 = v2[1];
  v51[2] = v2[2];
  v51[3] = v9;
  v43 = v11;
  v44 = v10;
  v12 = v2[3];
  v45 = v2[2];
  v46 = v12;
  v42 = 0;
  sub_100023B34(v51, &v38);
  sub_100023B6C();
  v13 = v52;
  sub_1000E9F44();
  if (v13)
  {
    v38 = v43;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    sub_100023AB0(&v38);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v52 = v5;
    v38 = v43;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    sub_100023AB0(&v38);
    v15 = v2[5];
    v50[0] = v2[4];
    v50[1] = v15;
    v16 = v2[7];
    v18 = v2[4];
    v17 = v2[5];
    v50[2] = v2[6];
    v50[3] = v16;
    v34 = v18;
    v35 = v17;
    v19 = v2[7];
    v36 = v2[6];
    v37 = v19;
    v33 = 1;
    sub_100023B34(v50, v32);
    sub_1000E9F44();
    v32[0] = v34;
    v32[1] = v35;
    v32[2] = v36;
    v32[3] = v37;
    sub_100023AB0(v32);
    v20 = v2[9];
    v47[0] = v2[8];
    v47[1] = v20;
    v21 = v2[11];
    v23 = v2[8];
    v22 = v2[9];
    v48 = v2[10];
    v49 = v21;
    v28 = v23;
    v29 = v22;
    v30 = v48;
    v31 = v2[11];
    v27 = 2;
    sub_100023B34(v47, v26);
    sub_1000E9F44();
    v26[0] = v28;
    v26[1] = v29;
    v26[2] = v30;
    v26[3] = v31;
    sub_100023AB0(v26);
    v25 = *(v2 + 24);
    HIBYTE(v24) = 3;
    sub_1000125FC(&qword_100130600);
    sub_100023BC0(&qword_100130638, &qword_100130640);
    sub_1000E9F44();
    v25 = *(v2 + 25);
    HIBYTE(v24) = 4;
    sub_1000125FC(&qword_100130618);
    sub_100023C4C(&qword_100130640);
    sub_1000E9F44();
    LOBYTE(v25) = *(v2 + 208);
    HIBYTE(v24) = 5;
    sub_100023CB8();
    sub_1000E9F44();
    LOBYTE(v25) = 6;
    sub_1000E9F34();
    LOBYTE(v25) = 7;
    sub_1000E9F34();
    LOBYTE(v25) = 8;
    sub_1000E9F34();
    LOBYTE(v25) = 9;
    sub_1000E9F34();
    LOBYTE(v25) = 10;
    sub_1000E9F34();
    LOBYTE(v25) = 11;
    sub_1000E9F34();
    LOBYTE(v25) = 12;
    sub_1000E9F34();
    LOBYTE(v25) = 13;
    sub_1000E9F34();
    return (*(v52 + 8))(0, v4);
  }
}

uint64_t sub_10001E8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000226E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001E92C(uint64_t a1)
{
  v2 = sub_100023A08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E968(uint64_t a1)
{
  v2 = sub_100023A08();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001E9A4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100022B54(a1, v12);
  if (!v2)
  {
    v5 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v5;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v6 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v6;
    v7 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v7;
    v8 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v8;
    v9 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v9;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
  }

  return result;
}

float32x2_t sub_10001EA54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(a2 + 136);
  v5 = v4 - *(a1 + 136);
  if (v5 <= 3.1416)
  {
    if (v5 >= -3.1416)
    {
      goto LABEL_6;
    }

    v6 = 6.2832;
  }

  else
  {
    v6 = -6.2832;
  }

  v4 = v4 + v6;
LABEL_6:
  v8 = *(a1 + 32);
  v7 = *(a1 + 48);
  v10 = *(a1 + 64);
  v9 = *(a1 + 80);
  v12 = *(a1 + 96);
  v11 = *(a1 + 112);
  v13 = *(a1 + 128);
  v14 = *(a2 + 128);
  v15 = *(a1 + 144);
  v16 = *(a2 + 152);
  v17 = *(a1 + 152);
  v18 = v16 - v17;
  v19 = v16 + -6.2832;
  if ((v16 - v17) < -3.1416)
  {
    v16 = v16 + 6.2832;
  }

  if (v18 > 3.1416)
  {
    v16 = v19;
  }

  v14.i64[1] = __PAIR64__(*(a2 + 140), LODWORD(v4));
  v13.i64[1] = *(a1 + 136);
  v20 = vsub_f32(*(a2 + 144), v15);
  v21 = vsubq_f32(*(a2 + 112), v11);
  v22 = vsubq_f32(*(a2 + 96), v12);
  v23 = vsubq_f32(*(a2 + 80), v9);
  v24 = vsubq_f32(*(a2 + 64), v10);
  v25 = vsubq_f32(*(a2 + 48), v7);
  v26 = vsubq_f32(*(a2 + 32), v8);
  v27 = v17 + ((v16 - v17) * *&a4);
  v28 = vaddq_f32(*(a1 + 16), vmulq_n_f32(vsubq_f32(*(a2 + 16), *(a1 + 16)), *&a4));
  *a3 = vaddq_f32(*a1, vmulq_n_f32(vsubq_f32(*a2, *a1), *&a4));
  *(a3 + 16) = v28;
  *(a3 + 32) = vaddq_f32(v8, vmulq_n_f32(v26, *&a4));
  *(a3 + 48) = vaddq_f32(v7, vmulq_n_f32(v25, *&a4));
  *(a3 + 64) = vaddq_f32(v10, vmulq_n_f32(v24, *&a4));
  *(a3 + 80) = vaddq_f32(v9, vmulq_n_f32(v23, *&a4));
  *(a3 + 96) = vaddq_f32(v12, vmulq_n_f32(v22, *&a4));
  *(a3 + 112) = vaddq_f32(v11, vmulq_n_f32(v21, *&a4));
  *(a3 + 128) = vaddq_f32(v13, vmulq_n_f32(vsubq_f32(v14, v13), *&a4));
  result = vadd_f32(v15, vmul_f32(v20, *&vdupq_lane_s32(*&a4, 0)));
  *(a3 + 144) = result;
  *(a3 + 152) = v27;
  return result;
}

uint64_t sub_10001EC08@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = *a1;
  if (*a1)
  {
    v9 = 0x6C61697861;
  }

  else
  {
    v9 = 0x6C6169646172;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = *a2;
  if (*a2)
  {
    v12 = 0x6C61697861;
  }

  else
  {
    v12 = 0x6C6169646172;
  }

  if (*a2)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v9 == v12 && v10 == v13)
  {
  }

  else
  {
    v15 = sub_1000E9F74();

    if ((v15 & 1) == 0)
    {
      v16 = *(a2 + 40);
LABEL_24:
      v31 = *(a2 + 24);
      v33 = *(a2 + 48);
      v29 = *(a2 + 8);
      result = sub_100023B34(a2, v40);
      v28 = v29;
      v27 = v31;
      v26 = v33;
      goto LABEL_25;
    }
  }

  v17 = *(a1 + 5);
  v16 = *(a2 + 40);
  if (*(v17 + 16) != *(v16 + 16))
  {
    goto LABEL_24;
  }

  v18 = *(a1 + 6);
  v19 = *(a2 + 48);
  if (*(v18 + 16) != *(v19 + 16))
  {
    goto LABEL_24;
  }

  v20 = *(a1 + 7);
  v21 = *(a2 + 56);
  if (*(v20 + 16) != *(v21 + 16))
  {
    goto LABEL_24;
  }

  v34[64] = v8;
  v32 = vaddq_f64(*(a1 + 8), vmulq_n_f64(vsubq_f64(*(a2 + 8), *(a1 + 8)), a4));
  v30 = vaddq_f64(*(a1 + 24), vmulq_n_f64(vsubq_f64(*(a2 + 24), *(a1 + 24)), a4));
  v22 = sub_10001CF7C(v17, v16, a4);

  v23 = sub_10001CF7C(v18, v19, a4);

  v24 = sub_10001D0C4(v20, v21, a4);

  v35[0] = v8;
  v36 = v32;
  v37 = v30;
  v38 = v22;
  *&v39 = v23;
  *(&v39 + 1) = v24;
  v40[0] = v8;
  v41 = v32;
  v42 = v30;
  v43 = v22;
  v44 = v23;
  v45 = v24;
  sub_100023B34(v35, v34);
  result = sub_100023AB0(v40);
  v26 = v39;
  v16 = v38;
  v28 = v36;
  v27 = v37;
  v11 = v35[0];
LABEL_25:
  *a3 = v11;
  *(a3 + 8) = v28;
  *(a3 + 24) = v27;
  *(a3 + 40) = v16;
  *(a3 + 48) = v26;
  return result;
}

double sub_10001EE5C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v37[0] = 1;
  __asm { FMOV            V2.2D, #1.0 }

  *&v37[8] = _Q2;
  *&v37[24] = xmmword_1000EDAC0;
  *&v37[40] = _swiftEmptyArrayStorage;
  *&v38 = _swiftEmptyArrayStorage;
  *(&v38 + 1) = _swiftEmptyArrayStorage;
  v39[0] = 1;
  *&v39[8] = _Q2;
  *&v39[24] = xmmword_1000EDAC0;
  *&v39[40] = _swiftEmptyArrayStorage;
  *&v40 = _swiftEmptyArrayStorage;
  *(&v40 + 1) = _swiftEmptyArrayStorage;
  v41[0] = 1;
  *&v41[8] = _Q2;
  *&v41[24] = xmmword_1000EDAC0;
  *&v41[40] = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  *(&v42 + 1) = _swiftEmptyArrayStorage;
  *&v43 = _swiftEmptyArrayStorage;
  *(&v43 + 1) = &off_10011F890;
  v44[0] = 0;
  __asm { FMOV            V1.4S, #1.0 }

  *&v44[4] = _Q1;
  *&v44[20] = _Q1;
  v13 = *a1;
  v53[1] = a1[1];
  v14 = a1[3];
  v53[2] = a1[2];
  v53[3] = v14;
  v15 = *(a2 + 16);
  v52[0] = *a2;
  v52[1] = v15;
  v16 = *(a2 + 48);
  v52[2] = *(a2 + 32);
  v52[3] = v16;
  v53[0] = v13;
  sub_10001EC08(v53, v52, v45, a4);
  sub_100023D0C(v45, v37);
  v17 = a1[5];
  v51[0] = a1[4];
  v51[1] = v17;
  v18 = a1[7];
  v51[2] = a1[6];
  v51[3] = v18;
  v19 = *(a2 + 80);
  v50[0] = *(a2 + 64);
  v50[1] = v19;
  v20 = *(a2 + 112);
  v50[2] = *(a2 + 96);
  v50[3] = v20;
  sub_10001EC08(v51, v50, v46, a4);
  sub_100023D0C(v46, v39);
  v21 = a1[9];
  v49[0] = a1[8];
  v49[1] = v21;
  v22 = a1[11];
  v49[2] = a1[10];
  v49[3] = v22;
  v23 = *(a2 + 144);
  v48[0] = *(a2 + 128);
  v48[1] = v23;
  v24 = *(a2 + 176);
  v48[2] = *(a2 + 160);
  v48[3] = v24;
  sub_10001EC08(v49, v48, v47, a4);
  sub_100023D0C(v47, v41);
  v25 = sub_10001D248(*(a1 + 24), *(a2 + 192), a4);

  *&v43 = v25;
  v26 = sub_10001D020(*(a1 + 25), *(a2 + 200), a4);

  *(&v43 + 1) = v26;
  v44[0] = *(a2 + 208);
  *&v44[4] = vaddq_f32(*(a1 + 212), vmulq_n_f32(vsubq_f32(*(a2 + 212), *(a1 + 212)), a4));
  *&v44[20] = vaddq_f32(*(a1 + 228), vmulq_n_f32(vsubq_f32(*(a2 + 228), *(a1 + 228)), a4));
  v62 = *v41;
  v63 = *&v41[16];
  v64 = *&v41[32];
  v65 = v42;
  v58 = *v39;
  v59 = *&v39[16];
  v60 = *&v39[32];
  v61 = v40;
  v54 = *v37;
  v55 = *&v37[16];
  v56 = *&v37[32];
  v57 = v38;
  v66 = v43;
  v67 = *v44;
  v68 = *&v44[16];
  v70[12] = v43;
  v70[13] = *v44;
  v70[14] = *&v44[16];
  v70[8] = *v41;
  v70[9] = *&v41[16];
  v70[10] = *&v41[32];
  v70[11] = v42;
  v70[4] = *v39;
  v70[5] = *&v39[16];
  v70[6] = *&v39[32];
  v70[7] = v40;
  v69 = *&v44[32];
  v71 = *&v44[32];
  v70[0] = *v37;
  v70[1] = *&v37[16];
  v70[2] = *&v37[32];
  v70[3] = v38;
  sub_100019164(&v54, v36);
  sub_1000191C0(v70);
  v27 = v67;
  *(a3 + 192) = v66;
  *(a3 + 208) = v27;
  *(a3 + 224) = v68;
  *(a3 + 240) = v69;
  v28 = v63;
  *(a3 + 128) = v62;
  *(a3 + 144) = v28;
  v29 = v65;
  *(a3 + 160) = v64;
  *(a3 + 176) = v29;
  v30 = v59;
  *(a3 + 64) = v58;
  *(a3 + 80) = v30;
  v31 = v61;
  *(a3 + 96) = v60;
  *(a3 + 112) = v31;
  v32 = v55;
  *a3 = v54;
  *(a3 + 16) = v32;
  result = *&v56;
  v34 = v57;
  *(a3 + 32) = v56;
  *(a3 + 48) = v34;
  return result;
}

float sub_10001F19C(void *a1)
{
  v2 = sub_1000125FC(&qword_1001306A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_100012800(a1, a1[3]);
  sub_10001BBE4();
  sub_1000EA074();
  v9[15] = 0;
  sub_1000E9EF4();
  v7 = v6;
  v9[14] = 1;
  sub_1000E9EF4();
  (*(v3 + 8))(v5, v2);
  sub_100012710(a1);
  return v7;
}

unint64_t sub_10001F34C()
{
  result = qword_1001304F0;
  if (!qword_1001304F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001304F0);
  }

  return result;
}

unint64_t sub_10001F3A0()
{
  result = qword_1001304F8;
  if (!qword_1001304F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001304F8);
  }

  return result;
}

float sub_10001F3F4(void *a1)
{
  v2 = sub_1000125FC(&qword_100130698);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100012800(a1, a1[3]);
  sub_10001F34C();
  sub_1000EA074();
  HIBYTE(v8) = 0;
  sub_100023E40();
  sub_1000E9F04();
  v6 = v9;
  HIBYTE(v8) = 1;
  sub_1000E9F04();
  (*(v3 + 8))(v5, v2);
  sub_100012710(a1);
  return v6;
}

unint64_t sub_10001F5E4()
{
  result = qword_100130508;
  if (!qword_100130508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130508);
  }

  return result;
}

uint64_t sub_10001F638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

float sub_10001F748(void *a1)
{
  v2 = sub_1000125FC(&qword_100130690);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  sub_100012800(a1, a1[3]);
  sub_10001F5E4();
  sub_1000EA074();
  v12 = 0;
  sub_1000E9EF4();
  v7 = v6;
  v11 = 1;
  sub_1000E9EF4();
  v10 = 2;
  sub_1000E9EF4();
  (*(v3 + 8))(v5, v2);
  sub_100012710(a1);
  return v7;
}

unint64_t sub_10001F91C()
{
  result = qword_100130518;
  if (!qword_100130518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130518);
  }

  return result;
}

unint64_t sub_10001F970()
{
  result = qword_100130520;
  if (!qword_100130520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130520);
  }

  return result;
}

unint64_t sub_10001F9C4()
{
  result = qword_100130528;
  if (!qword_100130528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130528);
  }

  return result;
}

uint64_t sub_10001FA18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6582113 && a2 == 0xE300000000000000;
  if (v3 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1801678700 && a2 == 0xE400000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F6C60 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F6C80 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000F6CA0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000F6CC0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000F6CE0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F6D00 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F6D20 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6B6F6F4C6B636162 && a2 == 0xEB00000000587075 || (sub_1000E9F74() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B6F6F4C6B636162 && a2 == 0xEB00000000597075 || (sub_1000E9F74() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000F6D40 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F6D60 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6F6F4C746E6F7266 && a2 == 0xEC0000005870756BLL || (sub_1000E9F74() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F6F4C746E6F7266 && a2 == 0xEC0000005970756BLL || (sub_1000E9F74() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000F6D80 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000F6DA0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_10001FFB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000125FC(&qword_100130678);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100012800(a1, a1[3]);
  sub_10001F91C();
  sub_1000EA074();
  if (v2)
  {
    return sub_100012710(a1);
  }

  v46 = 0;
  sub_100023D98();
  sub_1000E9F04();
  v43 = v44;
  v46 = 1;
  sub_1000E9F04();
  v42 = v44;
  v46 = 2;
  sub_1000E9F04();
  v9 = v44;
  v46 = 3;
  sub_100023DEC();
  sub_1000E9F04();
  v10 = v44;
  v11 = DWORD2(v44);
  v46 = 4;
  sub_1000E9F04();
  v12 = v44;
  v13 = DWORD2(v44);
  v46 = 5;
  sub_1000E9F04();
  v14 = v44;
  v15 = DWORD2(v44);
  v46 = 6;
  sub_1000E9F04();
  v41 = v44;
  v45 = DWORD2(v44);
  v46 = 7;
  sub_1000E9F04();
  v40 = v44;
  v39 = DWORD2(v44);
  v46 = 8;
  sub_1000E9F04();
  v38 = v44;
  v37 = DWORD2(v44);
  LOBYTE(v44) = 9;
  sub_1000E9EF4();
  v36 = v16;
  LOBYTE(v44) = 10;
  sub_1000E9EF4();
  v35 = v17;
  LOBYTE(v44) = 11;
  sub_1000E9EF4();
  v34 = v18;
  LOBYTE(v44) = 12;
  sub_1000E9EF4();
  v33 = v19;
  LOBYTE(v44) = 13;
  sub_1000E9EF4();
  v32 = v20;
  LOBYTE(v44) = 14;
  sub_1000E9EF4();
  v31 = v21;
  LOBYTE(v44) = 15;
  sub_1000E9EF4();
  v30 = v22;
  LOBYTE(v44) = 16;
  sub_1000E9EF4();
  v29 = v23;
  LOBYTE(v44) = 17;
  sub_1000E9EF4();
  v28 = v24;
  (*(v6 + 8))(v8, v5);
  result = sub_100012710(a1);
  v26 = v42;
  *a2 = v43;
  *(a2 + 16) = v26;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 60) = v12;
  *(a2 + 68) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 84) = v41;
  *(a2 + 92) = v45;
  *(a2 + 96) = v40;
  *(a2 + 104) = v39;
  *(a2 + 108) = v38;
  LODWORD(v26) = v36;
  *(a2 + 116) = v37;
  *(a2 + 120) = v26;
  LODWORD(v26) = v34;
  *(a2 + 124) = v35;
  *(a2 + 128) = v26;
  LODWORD(v26) = v32;
  *(a2 + 132) = v33;
  *(a2 + 136) = v26;
  LODWORD(v26) = v30;
  *(a2 + 140) = v31;
  *(a2 + 144) = v26;
  LODWORD(v26) = v28;
  *(a2 + 148) = v29;
  *(a2 + 152) = v26;
  return result;
}

unint64_t sub_1000205AC()
{
  result = qword_100130538;
  if (!qword_100130538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130538);
  }

  return result;
}

unint64_t sub_100020600()
{
  result = qword_100130540;
  if (!qword_100130540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130540);
  }

  return result;
}

uint64_t sub_100020654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
  if (v4 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F5064615069 && a2 == 0xEC00000074696172 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E614C64615069 && a2 == 0xED00006570616373)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100020774@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = sub_1000125FC(&qword_100130668);
  v5 = *(v110 - 8);
  __chkstk_darwin(v110);
  v7 = &v31 - v6;
  sub_100012800(a1, a1[3]);
  sub_1000205AC();
  sub_1000EA074();
  if (v2)
  {
    return sub_100012710(a1);
  }

  *&v64 = v5;
  v98 = 0;
  sub_100023D44();
  v8 = v110;
  sub_1000E9F04();
  v62 = v100;
  v63 = v99;
  v60 = v102;
  v61 = v101;
  v58 = v104;
  v59 = v103;
  v56 = v106;
  v57 = v105;
  v55 = v107;
  v9 = v108;
  v10 = v109;
  v77 = 1;
  sub_1000E9F04();
  v11 = v78;
  v12 = v79;
  v13 = v80;
  v14 = v81;
  v15 = v82;
  v16 = v83;
  v53 = v85;
  v54 = v84;
  v51 = v87;
  v52 = v86;
  v49 = v89;
  v50 = v88;
  v47 = v91;
  v48 = v90;
  v45 = v93;
  v46 = v92;
  v43 = v95;
  v44 = v94;
  v42 = v96;
  v41 = v97;
  v65 = 2;
  sub_1000E9F04();
  (*(v64 + 8))(v7, v8);
  LODWORD(v110) = v76;
  v64 = v66;
  v39 = v68;
  v40 = v67;
  v37 = v70;
  v38 = v69;
  v35 = v72;
  v36 = v71;
  v33 = v74;
  v34 = v73;
  v32 = v75;
  result = sub_100012710(a1);
  v18 = v62;
  *a2 = v63;
  *(a2 + 16) = v18;
  v19 = v60;
  *(a2 + 32) = v61;
  *(a2 + 48) = v19;
  v20 = v58;
  *(a2 + 64) = v59;
  *(a2 + 80) = v20;
  v21 = v56;
  *(a2 + 96) = v57;
  *(a2 + 112) = v21;
  *(a2 + 128) = v55;
  *(a2 + 144) = v9;
  *(a2 + 152) = v10;
  *(a2 + 156) = v11;
  *(a2 + 164) = v12;
  *(a2 + 172) = v13;
  *(a2 + 180) = v14;
  *(a2 + 188) = v15;
  *(a2 + 196) = v16;
  *&v21 = v53;
  *(a2 + 204) = v54;
  *(a2 + 212) = v21;
  *&v21 = v51;
  *(a2 + 220) = v52;
  *(a2 + 228) = v21;
  *&v21 = v49;
  *(a2 + 236) = v50;
  *(a2 + 244) = v21;
  v22 = v47;
  *(a2 + 252) = v48;
  v24 = v45;
  v23 = v46;
  *(a2 + 260) = v22;
  *(a2 + 268) = v23;
  v26 = v43;
  v25 = v44;
  *(a2 + 276) = v24;
  *(a2 + 284) = v25;
  *&v21 = v42;
  *(a2 + 292) = v26;
  *(a2 + 300) = v21;
  *(a2 + 308) = v41;
  *(a2 + 312) = v64;
  v27 = v39;
  *(a2 + 328) = v40;
  *(a2 + 344) = v27;
  v28 = v37;
  *(a2 + 360) = v38;
  *(a2 + 376) = v28;
  v29 = v35;
  *(a2 + 392) = v36;
  *(a2 + 408) = v29;
  v30 = v33;
  *(a2 + 424) = v34;
  *(a2 + 440) = v30;
  *(a2 + 456) = v32;
  *(a2 + 464) = v110;
  return result;
}

unint64_t sub_100020B48()
{
  result = qword_100130550;
  if (!qword_100130550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130550);
  }

  return result;
}

uint64_t sub_100020B9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001000F6DC0 == a2;
  if (v3 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000F6DE0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000F6E00 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000F6E20 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000F6E40 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000F6E60 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000F6E80 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000F6EA0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000F6EC0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000F6EE0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6764456775626564 && a2 == 0xEA00000000007365)
  {

    return 10;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100020F1C@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_1000125FC(&qword_100130660);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  sub_100012800(a1, a1[3]);
  sub_100020B48();
  sub_1000EA074();
  if (v2)
  {
    return sub_100012710(a1);
  }

  v44 = 0;
  sub_1000E9EF4();
  v10 = v9;
  v43 = 1;
  sub_1000E9EF4();
  v12 = v11;
  v42 = 2;
  sub_1000E9EF4();
  v14 = v13;
  v41 = 3;
  sub_1000E9EF4();
  v16 = v15;
  v40 = 4;
  sub_1000E9EF4();
  v18 = v17;
  v39 = 5;
  sub_1000E9EF4();
  v20 = v19;
  v38 = 6;
  sub_1000E9EF4();
  v22 = v21;
  v37 = 7;
  sub_1000E9EF4();
  v33 = v23;
  v36 = 8;
  sub_1000E9EF4();
  v25 = v24;
  v35 = 9;
  sub_1000E9EF4();
  v32 = v26;
  v34 = 10;
  sub_1000E9EF4();
  v31 = v27;
  (*(v6 + 8))(v8, v5);
  result = sub_100012710(a1);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  a2[4] = v18;
  a2[5] = v20;
  v29 = v32;
  v30 = v33;
  a2[6] = v22;
  a2[7] = v30;
  a2[8] = v25;
  a2[9] = v29;
  a2[10] = v31;
  return result;
}

uint64_t sub_10002123C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 468))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002125C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 464) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 468) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FluidityParameters.Offset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FluidityParameters.Offset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_100021398(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1000213CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 156))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000213EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = (a2 - 1);
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

  *(result + 156) = v3;
  return result;
}

__n128 sub_100021450(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100021464(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 44))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021484(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 44) = v3;
  return result;
}

__n128 sub_1000214CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 60);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100021518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 244))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100021560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 244) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 244) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColorOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FluidityParameters.Device.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FluidityParameters.Device.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000218D4()
{
  result = qword_100130558;
  if (!qword_100130558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130558);
  }

  return result;
}

unint64_t sub_10002192C()
{
  result = qword_100130560;
  if (!qword_100130560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130560);
  }

  return result;
}

unint64_t sub_100021984()
{
  result = qword_100130568;
  if (!qword_100130568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130568);
  }

  return result;
}

unint64_t sub_1000219DC()
{
  result = qword_100130570;
  if (!qword_100130570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130570);
  }

  return result;
}

unint64_t sub_100021A34()
{
  result = qword_100130578;
  if (!qword_100130578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130578);
  }

  return result;
}

unint64_t sub_100021A8C()
{
  result = qword_100130580;
  if (!qword_100130580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130580);
  }

  return result;
}

unint64_t sub_100021AE4()
{
  result = qword_100130588;
  if (!qword_100130588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130588);
  }

  return result;
}

unint64_t sub_100021B3C()
{
  result = qword_100130590;
  if (!qword_100130590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130590);
  }

  return result;
}

unint64_t sub_100021B94()
{
  result = qword_100130598;
  if (!qword_100130598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130598);
  }

  return result;
}

unint64_t sub_100021BEC()
{
  result = qword_1001305A0;
  if (!qword_1001305A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305A0);
  }

  return result;
}

unint64_t sub_100021C44()
{
  result = qword_1001305A8;
  if (!qword_1001305A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305A8);
  }

  return result;
}

unint64_t sub_100021C9C()
{
  result = qword_1001305B0;
  if (!qword_1001305B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305B0);
  }

  return result;
}

unint64_t sub_100021CF4()
{
  result = qword_1001305B8;
  if (!qword_1001305B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305B8);
  }

  return result;
}

unint64_t sub_100021D4C()
{
  result = qword_1001305C0;
  if (!qword_1001305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305C0);
  }

  return result;
}

unint64_t sub_100021DA4()
{
  result = qword_1001305C8;
  if (!qword_1001305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305C8);
  }

  return result;
}

unint64_t sub_100021DFC()
{
  result = qword_1001305D0;
  if (!qword_1001305D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305D0);
  }

  return result;
}

unint64_t sub_100021E54()
{
  result = qword_1001305D8;
  if (!qword_1001305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305D8);
  }

  return result;
}

unint64_t sub_100021EAC()
{
  result = qword_1001305E0;
  if (!qword_1001305E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305E0);
  }

  return result;
}

uint64_t sub_100021F00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6163536465656C62 && a2 == 0xEA0000000000656CLL || (sub_1000E9F74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696F507472617473 && a2 == 0xEA0000000000746ELL || (sub_1000E9F74() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E696F50646E65 && a2 == 0xE800000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100022194@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000125FC(&qword_1001306D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_100012800(a1, a1[3]);
  sub_100024350();
  sub_1000EA074();
  if (v2)
  {
    sub_100012710(a1);
    LOBYTE(v31) = 1;
    *(&v31 + 1) = v39[0];
    HIDWORD(v31) = *(v39 + 3);
    v32 = 1.0;
    v33 = 1.0;
    v34 = 0;
    v35 = 1.0;
    v36 = _swiftEmptyArrayStorage;
    v37 = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage;
    return sub_100023AB0(&v31);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_1000243A4();
    sub_1000E9F04();
    v40 = a2;
    v9 = v31;
    LOBYTE(v31) = 1;
    sub_1000E9EE4();
    v11 = v10;
    LOBYTE(v31) = 2;
    sub_1000E9EE4();
    v13 = v12;
    LOBYTE(v31) = 3;
    sub_1000E9EE4();
    v15 = v14;
    LOBYTE(v31) = 4;
    sub_1000E9EE4();
    v17 = v16;
    sub_1000125FC(&qword_1001306E8);
    LOBYTE(v25) = 5;
    sub_1000243F8(&qword_1001306F0);
    sub_1000E9F04();
    v18 = v31;
    LOBYTE(v25) = 6;
    sub_1000E9F04();
    v19 = v31;
    sub_1000125FC(&qword_100130600);
    v29 = 7;
    sub_100023BC0(&qword_100130608, &qword_100130610);
    sub_1000E9F04();
    (*(v6 + 8))(v8, v5);
    v20 = v30;
    LOBYTE(v25) = v9;
    *(&v25 + 1) = v11;
    *&v26 = v13;
    *(&v26 + 1) = v15;
    *&v27 = v17;
    *(&v27 + 1) = v18;
    *&v28 = v19;
    *(&v28 + 1) = v30;
    sub_100023B34(&v25, &v31);
    sub_100012710(a1);
    LOBYTE(v31) = v9;
    v32 = v11;
    v33 = v13;
    v34 = v15;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    v38 = v20;
    result = sub_100023AB0(&v31);
    v22 = v26;
    v23 = v40;
    *v40 = v25;
    v23[1] = v22;
    v24 = v28;
    v23[2] = v27;
    v23[3] = v24;
  }

  return result;
}

unint64_t sub_1000226D4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000226E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6461724765736162 && a2 == 0xEC000000746E6569;
  if (v4 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000F6F00 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F6F20 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F6F40 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F436E776F7263 && a2 == 0xEA0000000000726FLL || (sub_1000E9F74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000F6F60 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000F6F80 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000F6FA0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000F6FC0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000F6FE0 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000F7000 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000F7020 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000F7040 == a2 || (sub_1000E9F74() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001000F7060 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_100022B54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000125FC(&qword_1001305E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - v7;
  v9 = a1[3];
  v75 = a1;
  sub_100012800(a1, v9);
  sub_100023A08();
  sub_1000EA074();
  if (v2)
  {
    *&v92 = v2;
    v88 = 0;
    v83 = 1;
    v90 = 1.0;
    v201 = 1.0;
    v87 = &off_100121CF0;
    v202 = 1.0;
    LODWORD(v91) = 1.0;
    v84 = 1.0;
    v85 = 1.0;
    v86 = 1.0;
    v82 = 1.0;
    v81 = _swiftEmptyArrayStorage;
    v78 = 1;
    v80 = 1.0;
    v77 = 1.0;
    v79 = 0;
    v76 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    v89 = 1;
    sub_100012710(v75);
    LOBYTE(v158) = v83;
    *(&v158 + 1) = v200[0];
    HIDWORD(v158) = *(v200 + 3);
    v159 = 1.0;
    v160 = 1.0;
    v161 = 0;
    v162 = v82;
    v163 = _swiftEmptyArrayStorage;
    v164 = _swiftEmptyArrayStorage;
    v165 = v81;
    v166 = v78;
    *v167 = v199[0];
    *&v167[3] = *(v199 + 3);
    v168 = v80;
    v169 = v77;
    v170 = v79;
    v171 = 1.0;
    v172 = v76;
    v173 = v74;
    v174 = _swiftEmptyArrayStorage;
    v175 = v89;
    *&v176[3] = *(v198 + 3);
    *v176 = v198[0];
    v177 = 1.0;
    v178 = COERCE_UNSIGNED_INT64(1.0);
    v179 = 1.0;
    v180 = _swiftEmptyArrayStorage;
    v181 = _swiftEmptyArrayStorage;
    v182 = _swiftEmptyArrayStorage;
    v183 = _swiftEmptyArrayStorage;
    v184 = v87;
    v185 = v88;
    v186 = v196;
    v187 = v197;
    v188 = v86;
    v189 = v85;
    v190 = v84;
    v191 = v91;
    v192 = v202;
    v193 = v201;
    v194 = v90;
    v195 = 1065353216;
    return sub_1000191C0(&v158);
  }

  else
  {
    v148 = 0;
    sub_100023A5C();
    sub_1000E9F04();
    v83 = v149;
    v200[0] = *v150;
    *(v200 + 3) = *&v150[3];
    v11 = v151;
    v12 = v152;
    v13 = v153;
    v14 = v154;
    v72 = v156;
    v73 = v155;
    v81 = v157;
    v142[0] = 1;
    __asm { FMOV            V0.2D, #1.0 }

    v92 = _Q0;
    v143 = _Q0;
    v91 = xmmword_1000EDAC0;
    v144 = xmmword_1000EDAC0;
    v145 = _swiftEmptyArrayStorage;
    v146 = _swiftEmptyArrayStorage;
    v147 = _swiftEmptyArrayStorage;
    sub_100023AB0(v142);
    v132 = 1;
    sub_1000E9F04();
    v82 = v14;
    v71 = v12;
    v69 = a2;
    v78 = v133;
    v199[0] = *v134;
    *(v199 + 3) = *&v134[3];
    v20 = v135;
    v21 = v136;
    v22 = v137;
    v23 = v138;
    v76 = v139;
    v24 = v140;
    v70 = v141;
    v126[0] = 1;
    v127 = v92;
    v128 = v91;
    v129 = _swiftEmptyArrayStorage;
    v130 = _swiftEmptyArrayStorage;
    v131 = _swiftEmptyArrayStorage;
    sub_100023AB0(v126);
    v116 = 2;
    sub_1000E9F04();
    v79 = v22;
    v80 = v20;
    v77 = v21;
    v74 = v24;
    LODWORD(v24) = v117;
    v198[0] = *v118;
    *(v198 + 3) = *&v118[3];
    v68 = v119;
    v25 = v120;
    v26 = v121;
    v65 = v122;
    v66 = v124;
    v67 = v123;
    v64 = v125;
    v110[0] = 1;
    v111 = v92;
    v112 = v91;
    v113 = _swiftEmptyArrayStorage;
    v114 = _swiftEmptyArrayStorage;
    v115 = _swiftEmptyArrayStorage;
    sub_100023AB0(v110);
    sub_1000125FC(&qword_100130600);
    LOBYTE(v93) = 3;
    sub_100023BC0(&qword_100130608, &qword_100130610);
    sub_1000E9F04();
    v89 = v24;
    v27 = v158;
    sub_1000125FC(&qword_100130618);
    LOBYTE(v93) = 4;
    sub_100023C4C(&qword_100130610);
    sub_1000E9F04();
    v63 = v13;
    v28 = v158;
    LOBYTE(v93) = 5;
    sub_100023AE0();
    sub_1000E9F04();
    v87 = v28;
    v62 = v11;
    v29 = v158;
    LOBYTE(v158) = 6;
    sub_1000E9EF4();
    v88 = v29;
    v86 = v30;
    LOBYTE(v158) = 7;
    sub_1000E9EF4();
    v85 = v31;
    *&v60 = v25;
    *(&v60 + 1) = v26;
    v61 = v27;
    v59 = v23;
    LOBYTE(v158) = 8;
    sub_1000E9EF4();
    *&v92 = 0;
    v84 = v32;
    LOBYTE(v158) = 9;
    sub_1000E9EF4();
    LODWORD(v91) = v33;
    *&v92 = 0;
    LOBYTE(v158) = 10;
    sub_1000E9EF4();
    v202 = v34;
    *&v92 = 0;
    LOBYTE(v158) = 11;
    sub_1000E9EF4();
    v201 = v35;
    *&v92 = 0;
    LOBYTE(v158) = 12;
    sub_1000E9EF4();
    v90 = v36;
    *&v92 = 0;
    v109 = 13;
    sub_1000E9EF4();
    *&v92 = 0;
    LODWORD(v13) = v37;
    (*(v6 + 8))(v8, v5);
    v38 = v83;
    LOBYTE(v93) = v83;
    *(&v93 + 1) = v200[0];
    DWORD1(v93) = *(v200 + 3);
    v39 = v62;
    v40 = v71;
    *(&v93 + 1) = v62;
    *&v94 = v71;
    v41 = v82;
    *(&v94 + 1) = v63;
    *&v95 = v82;
    v42 = v72;
    *(&v95 + 1) = v73;
    *&v96 = v72;
    v43 = v81;
    *(&v96 + 1) = v81;
    LOBYTE(v29) = v78;
    LOBYTE(v97) = v78;
    *(&v97 + 1) = v199[0];
    DWORD1(v97) = *(v199 + 3);
    v44 = v79;
    v45 = v80;
    v46 = v77;
    *(&v97 + 1) = v80;
    *&v98 = v77;
    v47 = v59;
    *(&v98 + 1) = v79;
    *&v99 = v59;
    v48 = v76;
    v49 = v74;
    *(&v99 + 1) = v76;
    *&v100 = v74;
    v50 = v70;
    *(&v100 + 1) = v70;
    LOBYTE(v101) = v89;
    *(&v101 + 1) = v198[0];
    DWORD1(v101) = *(v198 + 3);
    *(&v101 + 1) = v68;
    v102 = v60;
    *&v103 = v65;
    *(&v103 + 1) = v67;
    *&v104 = v66;
    *(&v104 + 1) = v64;
    *&v105 = v61;
    *(&v105 + 1) = v87;
    LOBYTE(v106) = v88;
    *(&v106 + 1) = v196;
    BYTE3(v106) = v197;
    *(&v106 + 4) = __PAIR64__(LODWORD(v85), LODWORD(v86));
    *(&v106 + 3) = v84;
    *&v107 = __PAIR64__(LODWORD(v202), v91);
    *(&v107 + 1) = __PAIR64__(LODWORD(v90), LODWORD(v201));
    v108 = v13;
    sub_100019164(&v93, &v158);
    sub_100012710(v75);
    LOBYTE(v158) = v38;
    *(&v158 + 1) = v200[0];
    HIDWORD(v158) = *(v200 + 3);
    v159 = v39;
    v160 = v40;
    v161 = v63;
    v162 = v41;
    v163 = v73;
    v164 = v42;
    v165 = v43;
    v166 = v29;
    *v167 = v199[0];
    *&v167[3] = *(v199 + 3);
    v168 = v45;
    v169 = v46;
    v170 = v44;
    v171 = v47;
    v172 = v48;
    v173 = v49;
    v174 = v50;
    v175 = v89;
    *v176 = v198[0];
    *&v176[3] = *(v198 + 3);
    v177 = v68;
    v178 = v60;
    v179 = v65;
    v180 = v67;
    v181 = v66;
    v182 = v64;
    v183 = v61;
    v184 = v87;
    v185 = v88;
    v186 = v196;
    v187 = v197;
    v188 = v86;
    v189 = v85;
    v190 = v84;
    v191 = v91;
    v192 = v202;
    v193 = v201;
    v194 = v90;
    v195 = v13;
    result = sub_1000191C0(&v158);
    v51 = v106;
    v52 = v69;
    *(v69 + 192) = v105;
    *(v52 + 208) = v51;
    *(v52 + 224) = v107;
    *(v52 + 240) = v108;
    v53 = v102;
    *(v52 + 128) = v101;
    *(v52 + 144) = v53;
    v54 = v104;
    *(v52 + 160) = v103;
    *(v52 + 176) = v54;
    v55 = v98;
    *(v52 + 64) = v97;
    *(v52 + 80) = v55;
    v56 = v100;
    *(v52 + 96) = v99;
    *(v52 + 112) = v56;
    v57 = v94;
    *v52 = v93;
    *(v52 + 16) = v57;
    v58 = v96;
    *(v52 + 32) = v95;
    *(v52 + 48) = v58;
  }

  return result;
}

unint64_t sub_100023A08()
{
  result = qword_1001305F0;
  if (!qword_1001305F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305F0);
  }

  return result;
}

unint64_t sub_100023A5C()
{
  result = qword_1001305F8;
  if (!qword_1001305F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001305F8);
  }

  return result;
}

unint64_t sub_100023AE0()
{
  result = qword_100130620;
  if (!qword_100130620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130620);
  }

  return result;
}

unint64_t sub_100023B6C()
{
  result = qword_100130630;
  if (!qword_100130630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130630);
  }

  return result;
}

uint64_t sub_100023BC0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100019048(&qword_100130600);
    sub_100023C4C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023C4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019048(&qword_100130618);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023CB8()
{
  result = qword_100130648;
  if (!qword_100130648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130648);
  }

  return result;
}

unint64_t sub_100023D44()
{
  result = qword_100130670;
  if (!qword_100130670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130670);
  }

  return result;
}

unint64_t sub_100023D98()
{
  result = qword_100130680;
  if (!qword_100130680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130680);
  }

  return result;
}

unint64_t sub_100023DEC()
{
  result = qword_100130688;
  if (!qword_100130688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130688);
  }

  return result;
}

unint64_t sub_100023E40()
{
  result = qword_1001306A0;
  if (!qword_1001306A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColorData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompositingFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CompositingFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100024134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100024148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000241F4()
{
  result = qword_1001306B0;
  if (!qword_1001306B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306B0);
  }

  return result;
}

unint64_t sub_10002424C()
{
  result = qword_1001306B8;
  if (!qword_1001306B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306B8);
  }

  return result;
}

unint64_t sub_1000242A4()
{
  result = qword_1001306C0;
  if (!qword_1001306C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306C0);
  }

  return result;
}

unint64_t sub_1000242FC()
{
  result = qword_1001306C8;
  if (!qword_1001306C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306C8);
  }

  return result;
}

unint64_t sub_100024350()
{
  result = qword_1001306D8;
  if (!qword_1001306D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306D8);
  }

  return result;
}

unint64_t sub_1000243A4()
{
  result = qword_1001306E0;
  if (!qword_1001306E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306E0);
  }

  return result;
}

uint64_t sub_1000243F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019048(&qword_1001306E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024464()
{
  result = qword_1001306F8;
  if (!qword_1001306F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001306F8);
  }

  return result;
}

unint64_t sub_1000244B8()
{
  result = qword_100130708;
  if (!qword_100130708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130708);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SolarEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SolarEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100024670()
{
  result = qword_100130718;
  if (!qword_100130718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130718);
  }

  return result;
}

unint64_t sub_1000246C8()
{
  result = qword_100130720;
  if (!qword_100130720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130720);
  }

  return result;
}

unint64_t sub_100024720()
{
  result = qword_100130728;
  if (!qword_100130728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130728);
  }

  return result;
}

unint64_t sub_100024778()
{
  result = qword_100130730;
  if (!qword_100130730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130730);
  }

  return result;
}

unint64_t sub_1000247CC()
{
  result = qword_100130738;
  if (!qword_100130738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130738);
  }

  return result;
}

id sub_100024898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MercuryPosterUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000248F0(void *a1)
{
  v2 = v1;
  v4 = [v1 identifier];
  v5 = sub_1000E9914();
  v7 = v6;

  v8 = [a1 identifier];
  v9 = sub_1000E9914();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_1000E9F74();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = sub_1000E98E4();
  v16 = [a1 objectForUserInfoKey:v15];

  if (v16)
  {
    sub_1000E9CC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (*(&v47 + 1))
  {
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v44;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v45;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_1000258E4(&v48);
    v18 = 0;
    v19 = 0;
  }

  v20 = sub_1000E98E4();
  v21 = [v2 objectForUserInfoKey:v20];

  if (v21)
  {
    sub_1000E9CC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (*(&v47 + 1))
  {
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v44;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v45;
    }

    else
    {
      v24 = 0;
    }

    if (v19)
    {
      if (v24)
      {
        if (v18 == v23 && v19 == v24)
        {
        }

        else
        {
          v25 = sub_1000E9F74();

          if ((v25 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_39;
      }

LABEL_37:

      return 0;
    }

    if (v24)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_1000258E4(&v48);
    if (v19)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
  *&v46 = _swiftEmptyArrayStorage;
  sub_1000AA408(0, 1, 0);
  v26 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage[2];
  v27 = _swiftEmptyArrayStorage[3];
  if (v28 >= v27 >> 1)
  {
    sub_1000AA408((v27 > 1), v28 + 1, 1);
    v26 = v46;
  }

  v26[2] = v28 + 1;
  v29 = &v26[2 * v28];
  v29[4] = 3355236;
  v29[5] = 0xE300000000000000;
  v30 = [v2 identifier];
  v31 = sub_1000E9914();
  v33 = v32;

  *&v48 = v31;
  *(&v48 + 1) = v33;
  __chkstk_darwin(v34);
  v43[2] = &v48;
  LOBYTE(v30) = sub_10002517C(sub_10002594C, v43, v26);

  if ((v30 & 1) == 0)
  {
    return 1;
  }

  v35 = sub_1000E98E4();
  v36 = [v2 objectForUserInfoKey:v35];

  if (v36)
  {
    sub_1000E9CC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (*(&v47 + 1))
  {
    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = v44;
    }

    else
    {
      v38 = 0;
    }

    v39 = v37 ^ 1;
  }

  else
  {
    sub_1000258E4(&v48);
    v38 = 0;
    v39 = 1;
  }

  v40 = sub_1000E98E4();
  v41 = [a1 objectForUserInfoKey:v40];

  if (v41)
  {
    sub_1000E9CC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (*(&v47 + 1))
  {
    LODWORD(result) = swift_dynamicCast();
    v42 = v44;
    if (!result)
    {
      v42 = 0;
    }

    if (v39)
    {
      return 0;
    }
  }

  else
  {
    sub_1000258E4(&v48);
    v42 = 0;
    LODWORD(result) = 0;
    if (v39)
    {
      return 0;
    }
  }

  if (v38 == v42)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000250A8()
{
  result = qword_1001307C8;
  if (!qword_1001307C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001307C8);
  }

  return result;
}

void *sub_1000250F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000125FC(&qword_1001303F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_10002517C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void (*sub_100025228(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000E9D74();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000252A8;
  }

  __break(1u);
  return result;
}

void *sub_1000252B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100025404()
{
  v10 = _swiftEmptyArrayStorage;
  if (sub_100084BA8() != 2)
  {
    if (qword_10012F640 != -1)
    {
      swift_once();
    }

    sub_1000BA374(v0);
  }

  if (sub_100084B6C() != 2)
  {
    if (qword_10012F650 != -1)
    {
      swift_once();
    }

    sub_1000BA374(v1);
  }

  if (sub_100084D50() != 2)
  {
    if (qword_10012F658 != -1)
    {
      swift_once();
    }

    sub_1000BA374(v2);
  }

  v9[3] = &type metadata for MercuryFeatureFlags;
  v9[4] = sub_1000259A4();
  v3 = sub_1000E95D4();
  sub_100012710(v9);
  if (v3)
  {
    if (qword_10012F660 != -1)
    {
      swift_once();
    }

    sub_1000BA374(v4);
  }

  if (sub_100084B30() != 2)
  {
    if (qword_10012F668 != -1)
    {
      swift_once();
    }

    sub_1000BA374(v5);
  }

  if (MGGetProductType() == 1872992317)
  {
    if (qword_10012F670 != -1)
    {
      swift_once();
    }

    sub_1000BA374(v6);
  }

  if (qword_10012F648 != -1)
  {
    swift_once();
  }

  sub_1000BA374(v7);
  return v10;
}

void sub_100025694(uint64_t a1, uint64_t a2)
{
  sub_100025404();
  v4 = sub_100025404();
  v5 = v4;
  v24 = a2;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_26:
    v7 = sub_1000E9E64();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = sub_1000E9D74();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_25;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v11 = [v9 identifier];
    v12 = sub_1000E9914();
    v14 = v13;

    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }

    v15 = sub_10009F208(v12, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      goto LABEL_18;
    }

    v18 = *(*(a1 + 56) + 8 * v15);
    v19 = sub_1000248F0(v10);

    ++v8;
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = sub_1000250F4(*(a1 + 16), 0);
    v22 = sub_1000252B0(v26, v21 + 4, v20, a1);
    v10 = v26[2];

    sub_1000258DC();
    if (v22 != v20)
    {
      __break(1u);
LABEL_17:

LABEL_18:

LABEL_19:

      v23 = v24;
      goto LABEL_21;
    }
  }

  v23 = v24;
LABEL_21:
  sub_1000250A8();
  isa = sub_1000E9A74().super.isa;
  (*(v23 + 16))(v23, isa, 0);
}

uint64_t sub_1000258E4(uint64_t a1)
{
  v2 = sub_1000125FC(&qword_100131DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002594C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000E9F74() & 1;
  }
}

unint64_t sub_1000259A4()
{
  result = qword_1001307D0;
  if (!qword_1001307D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307D0);
  }

  return result;
}

uint64_t sub_1000259F8(unsigned __int8 a1, uint64_t a2)
{
  v23 = *(a2 + 16);
  v2 = 0;
  if (v23)
  {
    v24 = a2 + 32;
    v3 = a1;
    while (1)
    {
      v4 = *(v24 + v2);
      if (v4 > 3)
      {
        if (*(v24 + v2) > 5u)
        {
          if (v4 == 6)
          {
            v10 = 0xE600000000000000;
            v9 = 0x7465736E7573;
          }

          else
          {
            v10 = 0xE400000000000000;
            v9 = 1802728804;
          }
        }

        else
        {
          if (v4 == 4)
          {
            v9 = 0x6F6F4E72616C6F73;
          }

          else
          {
            v9 = 0x657466416574616CLL;
          }

          if (v4 == 4)
          {
            v10 = 0xE90000000000006ELL;
          }

          else
          {
            v10 = 0xED00006E6F6F6E72;
          }
        }
      }

      else
      {
        if (v4 == 2)
        {
          v5 = 0x657369726E7573;
        }

        else
        {
          v5 = 0x696E726F4D64696DLL;
        }

        if (v4 == 2)
        {
          v6 = 0xE700000000000000;
        }

        else
        {
          v6 = 0xEA0000000000676ELL;
        }

        if (*(v24 + v2))
        {
          v7 = 1853317476;
        }

        else
        {
          v7 = 0x64694D72616C6F73;
        }

        if (*(v24 + v2))
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xED0000746867696ELL;
        }

        if (*(v24 + v2) <= 1u)
        {
          v9 = v7;
        }

        else
        {
          v9 = v5;
        }

        if (*(v24 + v2) <= 1u)
        {
          v10 = v8;
        }

        else
        {
          v10 = v6;
        }
      }

      v11 = 0x7465736E7573;
      if (v3 != 6)
      {
        v11 = 1802728804;
      }

      v12 = 0xE600000000000000;
      if (v3 != 6)
      {
        v12 = 0xE400000000000000;
      }

      v13 = 0x6F6F4E72616C6F73;
      if (v3 != 4)
      {
        v13 = 0x657466416574616CLL;
      }

      v14 = 0xED00006E6F6F6E72;
      if (v3 == 4)
      {
        v14 = 0xE90000000000006ELL;
      }

      if (v3 <= 5)
      {
        v11 = v13;
        v12 = v14;
      }

      if (v3 == 2)
      {
        v15 = 0x657369726E7573;
      }

      else
      {
        v15 = 0x696E726F4D64696DLL;
      }

      if (v3 == 2)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA0000000000676ELL;
      }

      if (v3)
      {
        v17 = 1853317476;
      }

      else
      {
        v17 = 0x64694D72616C6F73;
      }

      if (v3)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xED0000746867696ELL;
      }

      if (v3 <= 1)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = v3 <= 3 ? v15 : v11;
      v20 = v3 <= 3 ? v16 : v12;
      if (v9 == v19 && v10 == v20)
      {
        break;
      }

      v21 = sub_1000E9F74();

      if (v21)
      {
        return v2;
      }

      if (v23 == ++v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_100025CB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100028E78(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100025CE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000746867696ELL;
  v4 = 0x64694D72616C6F73;
  v5 = 0xE600000000000000;
  v6 = 0x7465736E7573;
  if (v2 != 6)
  {
    v6 = 1802728804;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE90000000000006ELL;
  v8 = 0x6F6F4E72616C6F73;
  if (v2 != 4)
  {
    v8 = 0x657466416574616CLL;
    v7 = 0xED00006E6F6F6E72;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x657369726E7573;
  if (v2 != 2)
  {
    v10 = 0x696E726F4D64696DLL;
    v9 = 0xEA0000000000676ELL;
  }

  if (*v1)
  {
    v4 = 1853317476;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

char *sub_100025E04()
{
  type metadata accessor for SolarEvent();
  swift_allocObject();
  result = sub_100025E44();
  qword_10013AA30 = result;
  return result;
}

char *sub_100025E44()
{
  v1 = v0;
  v29 = sub_1000E9BF4();
  __chkstk_darwin(v29);
  v2 = sub_1000E9C04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E9824();
  __chkstk_darwin(v6 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 8;
  *(v0 + 48) = 0;
  v7 = OBJC_IVAR____TtC22MercuryPosterExtension10SolarEvent_mostRecentStartUpdatingTimestamp;
  v8 = sub_1000E94E4();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  if (qword_10012F758 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E96A4();
  sub_100007488(v9, qword_10013DDD0);
  v10 = sub_1000E9684();
  v11 = sub_1000E9BB4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SolarEvent calculator created.", v12, 2u);
  }

  sub_100012904(0, &qword_100130A20);
  sub_1000E9814();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  v31 = &_swiftEmptyArrayStorage;
  sub_1000299A4(&qword_100130A28, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000125FC(&qword_100130A30);
  sub_100028F40(&qword_100130A38, &qword_100130A30);
  sub_1000E9CD4();
  v13 = sub_1000E9C34();
  v14 = *(v1 + 2);
  *(v1 + 2) = v13;

  v15 = type metadata accessor for LocationDelegate();
  v16 = objc_allocWithZone(v15);
  swift_weakInit();
  swift_weakAssign();
  v30.receiver = v16;
  v30.super_class = v15;
  v17 = objc_msgSendSuper2(&v30, "init", v29);
  v18 = *(v1 + 4);
  *(v1 + 4) = v17;
  v19 = v17;

  v20 = *(v1 + 2);
  v21 = objc_allocWithZone(CLLocationManager);
  v22 = v20;
  v23 = sub_1000E98E4();
  v24 = [v21 initWithEffectiveBundlePath:v23 delegate:v19 onQueue:v22];

  v25 = *(v1 + 3);
  *(v1 + 3) = v24;

  v26 = *(v1 + 3);
  if (v26)
  {
    [v26 setDesiredAccuracy:kCLLocationAccuracyReduced];
    v27 = *(v1 + 3);
    if (v27)
    {
      [v27 requestWhenInUseAuthorizationWithPrompt];
    }
  }

  return v1;
}

void sub_1000262E0()
{
  v1 = v0;
  v2 = sub_1000125FC(&qword_100131CE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = sub_1000E94E4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = *(v1 + 24);
  if (v15)
  {
    v16 = OBJC_IVAR____TtC22MercuryPosterExtension10SolarEvent_mostRecentStartUpdatingTimestamp;
    swift_beginAccess();
    sub_1000299EC(v1 + v16, v7, &qword_100131CE0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v17 = v15;
      sub_1000047C4(v7, &qword_100131CE0);
LABEL_18:
      if (qword_10012F758 != -1)
      {
        swift_once();
      }

      v30 = sub_1000E96A4();
      sub_100007488(v30, qword_10013DDD0);
      v31 = sub_1000E9684();
      v32 = sub_1000E9BB4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Turn on location updating.", v33, 2u);
      }

      sub_1000E94B4();
      (*(v9 + 56))(v4, 0, 1, v8);
      swift_beginAccess();
      sub_100029A54(v4, v1 + v16);
      swift_endAccess();
      [v15 startUpdatingLocation];

      return;
    }

    (*(v9 + 32))(v14, v7, v8);
    v35 = v15;
    sub_1000E94B4();
    sub_1000E9454();
    v23 = v22;
    v24 = *(v9 + 8);
    v24(v11, v8);
    if (v23 >= 600.0)
    {
      v24(v14, v8);
      goto LABEL_18;
    }

    v25 = v24;
    if (qword_10012F758 != -1)
    {
      swift_once();
    }

    v26 = sub_1000E96A4();
    sub_100007488(v26, qword_10013DDD0);
    v27 = sub_1000E9684();
    v28 = sub_1000E9BB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "We turned on location updating fairly recently. Let's not ask again right now.", v29, 2u);
    }

    v25(v14, v8);
  }

  else
  {
    if (qword_10012F758 != -1)
    {
      swift_once();
    }

    v18 = sub_1000E96A4();
    sub_100007488(v18, qword_10013DDD0);
    v35 = sub_1000E9684();
    v19 = sub_1000E9BB4();
    if (os_log_type_enabled(v35, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v35, v19, "We tried to turn on location updating, but didn't have a locationManager.", v20, 2u);
    }

    v21 = v35;
  }
}

void sub_10002681C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = qword_10012F758;
    v10 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_1000E96A4();
    sub_100007488(v3, qword_10013DDD0);
    v4 = sub_1000E9684();
    v5 = sub_1000E9BB4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Turn off location updating.", v6, 2u);
    }

    [v10 stopUpdatingLocation];
  }

  else
  {
    if (qword_10012F758 != -1)
    {
      swift_once();
    }

    v7 = sub_1000E96A4();
    sub_100007488(v7, qword_10013DDD0);
    v10 = sub_1000E9684();
    v8 = sub_1000E9BB4();
    if (os_log_type_enabled(v10, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v10, v8, "We tried to turn off location updating, but didn't have a locationManager.", v9, 2u);
    }
  }
}

uint64_t sub_1000269E4()
{
  sub_1000047C4(v0 + OBJC_IVAR____TtC22MercuryPosterExtension10SolarEvent_mostRecentStartUpdatingTimestamp, &qword_100131CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SolarEvent()
{
  result = qword_100130808;
  if (!qword_100130808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100026ACC()
{
  sub_100026B78();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100026B78()
{
  if (!qword_100131B70)
  {
    sub_1000E94E4();
    v0 = sub_1000E9C94();
    if (!v1)
    {
      atomic_store(v0, &qword_100131B70);
    }
  }
}

void sub_100026BD0(void *a1)
{
  v3 = sub_1000125FC(&qword_100130A40);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v28 - v5;
  v7 = [a1 authorizationStatus];
  if (v7 > 2)
  {
    if ((v7 - 3) > 1)
    {
      goto LABEL_26;
    }

    v12 = v1;
    if (qword_10012F758 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E96A4();
    sub_100007488(v13, qword_10013DDD0);
    v14 = sub_1000E9684();
    v15 = sub_1000E9BB4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Location access authorized.", v16, 2u);
    }

    v17 = sub_1000E9B34();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_1000E9B14();
    v18 = v12;
    v19 = sub_1000E9B04();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    sub_100088690(0, 0, v6, &unk_1000EEBD0, v20);
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (qword_10012F758 != -1)
        {
          swift_once();
        }

        v25 = sub_1000E96A4();
        sub_100007488(v25, qword_10013DDD0);
        v29 = sub_1000E9684();
        v9 = sub_1000E9BA4();
        if (!os_log_type_enabled(v29, v9))
        {
          goto LABEL_31;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Location access restricted.";
        goto LABEL_30;
      }

      if (v7 == 2)
      {
        if (qword_10012F758 != -1)
        {
          swift_once();
        }

        v8 = sub_1000E96A4();
        sub_100007488(v8, qword_10013DDD0);
        v29 = sub_1000E9684();
        v9 = sub_1000E9BA4();
        if (!os_log_type_enabled(v29, v9))
        {
          goto LABEL_31;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Location access denied.";
LABEL_30:
        _os_log_impl(&_mh_execute_header, v29, v9, v11, v10, 2u);

LABEL_31:
        v27 = v29;

        return;
      }

LABEL_26:
      if (qword_10012F758 != -1)
      {
        swift_once();
      }

      v26 = sub_1000E96A4();
      sub_100007488(v26, qword_10013DDD0);
      v29 = sub_1000E9684();
      v9 = sub_1000E9BA4();
      if (!os_log_type_enabled(v29, v9))
      {
        goto LABEL_31;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Location access authorization is unknown.";
      goto LABEL_30;
    }

    if (qword_10012F758 != -1)
    {
      swift_once();
    }

    v21 = sub_1000E96A4();
    sub_100007488(v21, qword_10013DDD0);
    v22 = sub_1000E9684();
    v23 = sub_1000E9BA4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Location access not determined. Try again.", v24, 2u);
    }

    [a1 requestWhenInUseAuthorizationWithPrompt];
  }
}