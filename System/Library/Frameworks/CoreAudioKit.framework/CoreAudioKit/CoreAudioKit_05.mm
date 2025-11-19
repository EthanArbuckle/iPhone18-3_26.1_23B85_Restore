void sub_23717AFC0(unsigned __int8 a1, char a2)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer;
  v4 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer);
  if (!v4)
  {
    return;
  }

  v5 = v2;
  v8 = v4;
  v9 = sub_23717A578(a1, v8);

  if (!v9)
  {
    return;
  }

  v10 = sub_23719653C();
  v163 = [objc_opt_self() bundleWithIdentifier_];

  v167 = v5;
  v168 = a2;
  if (a1 > 3u)
  {
    if (a1 - 4 < 4)
    {
      v11 = *(v5 + v3);
      if (!v11)
      {
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v12 = v3;
      v13 = v11;
      v14 = sub_23717A578(5u, v13);

      if (v14)
      {
        sub_23717DBFC(v14, a2 & 1, v5, a1);
      }

      v15 = *(v5 + v12);
      if (!v15)
      {
        goto LABEL_140;
      }

      v16 = v15;
      v17 = sub_23717A578(7u, v16);

      v3 = v12;
      if (!v17)
      {
        goto LABEL_16;
      }

      v18 = a2 & 1;
      v19 = v17;
      goto LABEL_15;
    }

    if (a1 == 8)
    {
      v38 = *(v5 + v3);
      if (!v38)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v39 = v38;
      v40 = sub_23717A578(3u, v39);

      if (v40)
      {
        sub_23717DBFC(v40, a2 & 1, v5, 8u);
      }

      v41 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
      if (v41)
      {
        v42 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
        v43 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
        __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v42);
        v44 = (*(v43 + 56))(v42, v43);
        v45 = v41;
        v46 = [v44 traitCollection];

        v47 = [v46 userInterfaceStyle];
        v48 = 0.15;
        if (v47 == 2)
        {
          v48 = 0.25;
        }

        v49 = [v45 colorWithAlphaComponent_];

        v50 = [v49 CGColor];
        goto LABEL_92;
      }

      v108 = v3;
      v109 = objc_opt_self();
      v110 = v163;
      v111 = [v109 currentTraitCollection];
      if (a2)
      {
        v112 = sub_23719653C();
        v113 = [objc_opt_self() colorNamed:v112 inBundle:v110 compatibleWithTraitCollection:v111];

        if (v113)
        {
          v114 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
          v115 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
          __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v114);
          v116 = (*(v115 + 56))(v114, v115);
          v117 = [v116 traitCollection];

          v118 = [v117 userInterfaceStyle];
          v119 = 0.15;
          if (v118 == 2)
          {
            v119 = 0.25;
          }

LABEL_86:
          v134 = [v113 colorWithAlphaComponent_];

          v50 = [v134 CGColor];
LABEL_91:
          v3 = v108;
LABEL_92:
          [v9 setBackgroundColor_];
          goto LABEL_93;
        }
      }

      else
      {
        v128 = sub_23719653C();
        v113 = [objc_opt_self() colorNamed:v128 inBundle:v110 compatibleWithTraitCollection:v111];

        if (v113)
        {
          v129 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
          v130 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
          __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v129);
          v131 = (*(v130 + 56))(v129, v130);
          v132 = [v131 traitCollection];

          v133 = [v132 userInterfaceStyle];
          v119 = 0.15;
          if (v133 == 2)
          {
            v119 = 0.25;
          }

          goto LABEL_86;
        }
      }

      v50 = 0;
      goto LABEL_91;
    }

LABEL_39:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_23719B020;
    *(v59 + 56) = MEMORY[0x277D837D0];
    *(v59 + 32) = 0xD000000000000010;
    *(v59 + 40) = 0x80000002371A09A0;
    sub_237196ABC();

    goto LABEL_16;
  }

  if (a1 != 1 && a1 != 3)
  {
    goto LABEL_39;
  }

  v20 = *(v5 + v3);
  if (!v20)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v17 = v20;
  v18 = a2 & 1;
  v19 = v9;
LABEL_15:
  sub_23717DBFC(v19, v18, v5, a1);

LABEL_16:
  if (a1 <= 7u)
  {
    if (((1 << a1) & 0xAA) != 0)
    {
      v165 = v3;
      v21 = 0.4;
      if ((a2 & 1) == 0)
      {
        v21 = 0.0;
      }

      v22 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color;
      v23 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
      if (v23)
      {
        v24 = [v23 colorWithAlphaComponent_];
        v25 = [v24 CGColor];

        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          v27 = v26;
          v28 = v9;
          [v27 setFillColor_];

          a2 = v168;
          goto LABEL_44;
        }
      }

      else
      {
        v51 = v21;
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v53 = v52;
          v54 = v9;
          v55 = [v53 fillColor];
          if (!v55)
          {
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v56 = v55;
          v57 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

          v58 = [v57 colorWithAlphaComponent_];
          v25 = [v58 CGColor];

          [v53 setFillColor_];
          v5 = v167;
          a2 = v168;
LABEL_44:
          v3 = v165;

          if (*(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type) - 1 <= 1 && a1 == 3)
          {
            v64 = *(v5 + v165);
            if (!v64)
            {
LABEL_145:
              __break(1u);
              goto LABEL_146;
            }

            v65 = v64;
            v50 = sub_23717A2D4(v65, 0x726F697265746E49, 0xE800000000000000);

            if (!v50)
            {
              goto LABEL_94;
            }

            v66 = *(v5 + v22);
            if (v66)
            {
              v67 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
              v68 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
              __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v67);
              v69 = (*(v68 + 56))(v67, v68);
              v70 = v66;
              v71 = [v69 traitCollection];

              v72 = [v71 userInterfaceStyle];
              v73 = 0.15;
              if (v72 == 2)
              {
                v73 = 0.25;
              }

              v74 = [v70 colorWithAlphaComponent_];

              v75 = [v74 CGColor];
              [v50 setBackgroundColor_];

              v3 = v165;
              goto LABEL_93;
            }

            v97 = objc_opt_self();
            v98 = v163;
            v99 = [v97 currentTraitCollection];
            if (a2)
            {
              v100 = sub_23719653C();
              v101 = [objc_opt_self() colorNamed:v100 inBundle:v98 compatibleWithTraitCollection:v99];

              if (v101)
              {
                v102 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
                v103 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
                __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v102);
                v104 = (*(v103 + 56))(v102, v103);
                v105 = [v104 traitCollection];

                v106 = [v105 userInterfaceStyle];
                v107 = 0.15;
                if (v106 == 2)
                {
                  v107 = 0.25;
                }

LABEL_82:
                v126 = [v101 colorWithAlphaComponent_];

                v127 = [v126 CGColor];
LABEL_89:
                v3 = v165;
                [v50 setBackgroundColor_];

                a2 = v168;
LABEL_93:

LABEL_94:
                v135 = *(v5 + v3);
                if (!v135)
                {
LABEL_138:
                  __break(1u);
                  goto LABEL_139;
                }

                v136 = v135;
                v94 = sub_23717A2D4(v136, 0xD000000000000017, 0x80000002371A0A00);

                if (!v94)
                {
                  goto LABEL_98;
                }

                [v94 setHidden_];
                goto LABEL_97;
              }
            }

            else
            {
              v120 = sub_23719653C();
              v101 = [objc_opt_self() colorNamed:v120 inBundle:v98 compatibleWithTraitCollection:v99];

              if (v101)
              {
                v121 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
                v122 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
                __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v121);
                v123 = (*(v122 + 56))(v121, v122);
                v124 = [v123 traitCollection];

                v125 = [v124 userInterfaceStyle];
                v107 = 0.15;
                if (v125 == 2)
                {
                  v107 = 0.25;
                }

                goto LABEL_82;
              }
            }

            v127 = 0;
            goto LABEL_89;
          }

          goto LABEL_52;
        }

        v60 = [v9 backgroundColor];
        if (!v60)
        {
LABEL_148:
          __break(1u);
          return;
        }

        v61 = v60;
        v62 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

        v63 = [v62 colorWithAlphaComponent_];
        v25 = [v63 CGColor];
      }

      [v9 setBackgroundColor_];
      goto LABEL_44;
    }

    if (((1 << a1) & 0x50) != 0)
    {
      [v9 setHidden_];
      v29 = *(v5 + v3);
      if (!v29)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v30 = v29;
      v31 = sub_23717A2D4(v30, 0x726F697265746E49, 0xE800000000000000);

      if (!v31)
      {
        goto LABEL_60;
      }

      v32 = v3;
      v33 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
      if (v33)
      {
        v34 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
        v35 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
        __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v34);
        v36 = (*(v35 + 56))(v34, v35);
        v37 = v33;
      }

      else
      {
        v76 = objc_opt_self();
        v77 = v163;
        v78 = [v76 currentTraitCollection];
        v79 = sub_23719653C();
        v37 = [objc_opt_self() colorNamed:v79 inBundle:v77 compatibleWithTraitCollection:v78];

        if (!v37)
        {
          v86 = 0;
          a2 = v168;
LABEL_59:
          v3 = v32;
          [v31 setBackgroundColor_];

          goto LABEL_60;
        }

        v80 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
        v81 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
        __swift_project_boxed_opaque_existential_0((v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v80);
        v36 = (*(v81 + 56))(v80, v81);
        a2 = v168;
      }

      v82 = [v36 traitCollection];

      v83 = [v82 userInterfaceStyle];
      v84 = 0.15;
      if (v83 == 2)
      {
        v84 = 0.25;
      }

      v85 = [v37 colorWithAlphaComponent_];

      v86 = [v85 CGColor];
      goto LABEL_59;
    }
  }

  [v9 setHidden_];
LABEL_52:
  if (a1 == 3)
  {
    goto LABEL_94;
  }

LABEL_60:
  v87 = *(v5 + v3);
  if (!v87)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v88 = v87;
  v89 = sub_23717A2D4(v88, 0xD000000000000015, 0x80000002371A09C0);

  if (v89)
  {
    [v89 setHidden_];
    v90 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
    if (v90)
    {
      v91 = [v90 CGColor];
      [v89 setBackgroundColor_];
    }
  }

  v92 = *(v5 + v3);
  if (!v92)
  {
    goto LABEL_142;
  }

  v93 = v92;
  v94 = sub_23717A2D4(v93, 0xD000000000000016, 0x80000002371A09E0);

  if (!v94)
  {
    goto LABEL_98;
  }

  [v94 setHidden_];
  v95 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
  if (v95)
  {
    v96 = [v95 CGColor];
    [v94 setBackgroundColor_];
  }

LABEL_97:

LABEL_98:
  v137 = *(v5 + v3);
  if (!v137)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v138 = v137;
  v139 = sub_23717A2D4(v138, 0x726F697265746E49, 0xE800000000000000);

  if (v139)
  {
    [v139 setHidden_];
  }

  v140 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides;
  swift_beginAccess();
  v141 = *(v5 + v140);
  if (v141 >> 62)
  {
    v142 = sub_2371969FC();
    if (v142)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v142)
    {
LABEL_103:
      v162 = v9;
      if (v142 >= 1)
      {
        v164 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawHorizontalGuide;
        v166 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide;
        v143 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color;

        v144 = 0;
        while (1)
        {
          if ((v141 & 0xC000000000000001) != 0)
          {
            v145 = MEMORY[0x2383C62A0](v144, v141);
            if (a2)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v145 = *(v141 + 8 * v144 + 32);
            if (a2)
            {
LABEL_111:
              v146 = [v145 name];
              if (!v146)
              {
                goto LABEL_121;
              }

              v147 = v146;
              v148 = sub_23719657C();
              v150 = v149;

              if (v148 == 120 && v150 == 0xE100000000000000)
              {

                v5 = v167;
                a2 = v168;
              }

              else
              {
                v152 = sub_237196A7C();

                v5 = v167;
                a2 = v168;
                if ((v152 & 1) == 0)
                {
LABEL_121:
                  v154 = [v145 name];
                  if (v154)
                  {
                    v155 = v154;
                    v156 = sub_23719657C();
                    v158 = v157;

                    if (v156 == 121 && v158 == 0xE100000000000000)
                    {

                      v5 = v167;
                      goto LABEL_127;
                    }

                    v159 = sub_237196A7C();

                    v5 = v167;
                    if (v159)
                    {
LABEL_127:
                      v153 = *(v5 + v164) ^ 1;
                    }

                    else
                    {
                      v153 = 1;
                    }

                    a2 = v168;
                  }

                  else
                  {
                    v153 = 1;
                  }

LABEL_130:
                  [v145 setHidden_];
                  v160 = *(v5 + v143);
                  if (v160)
                  {
                    v161 = [v160 CGColor];
                    [v145 setBackgroundColor_];
                  }

                  goto LABEL_106;
                }
              }

              if ((*(v5 + v166) & 1) == 0)
              {
                goto LABEL_121;
              }

              v153 = 0;
              goto LABEL_130;
            }
          }

          [v145 setHidden_];
LABEL_106:
          ++v144;

          if (v142 == v144)
          {

            return;
          }
        }
      }

      __break(1u);
      goto LABEL_137;
    }
  }
}

void sub_23717C330(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
  v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v5 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v4);
  (*(v5 + 24))(v4, v5, a1);
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v9 = *&v8[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];

  v10 = v3[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v10);
  v12 = (*(v11 + 56))(v10, v11);
  v13 = *&v12[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
}

void sub_23717C484(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
  v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v5 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v4);
  (*(v5 + 32))(v4, v5, a1);
  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v9 = *&v8[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];

  v10 = v3[3];
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v10);
  v12 = (*(v11 + 56))(v10, v11);
  v13 = *&v12[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
}

void sub_23717C5D8(unsigned __int8 a1, double a2, double a3)
{
  if (a1 <= 8u)
  {
    if (((1 << a1) & 0x30) != 0)
    {
      v18 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels;
      v19 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels);
      v20 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location) - v19 - a2;
    }

    else
    {
      if (((1 << a1) & 0xC0) == 0)
      {
        if (((1 << a1) & 0x108) != 0)
        {
          sub_23717C330(a2);
          v7 = v6;
          v8 = (v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource);
          v9 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24);
          v10 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32);
          __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource), v9);
          v11 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1;
          (*(*(*(v10 + 8) + 8) + 40))(*(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1), v9, v7);
          sub_237178FFC(*(v3 + v11), v7);
          if (a1 == 3 && *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type) == 2)
          {
            v12 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
            v13 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
            __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v12);
            v14 = (*(v13 + 32))(v12, v13, a3);
            v15 = v8[3];
            v16 = v8[4];
            __swift_project_boxed_opaque_existential_0(v8, v15);
            v17 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2;
            (*(*(*(v16 + 8) + 8) + 40))(*(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2), v15, v14);
            sub_237178FFC(*(v3 + v17), v14);
          }

          sub_237179214();
          goto LABEL_21;
        }

        goto LABEL_10;
      }

      v18 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels;
      v19 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels);
      v20 = a2 - (*(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location) + v19);
    }

    *(v3 + v18) = v20 + v19;
    v32 = (v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource);
    v33 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24);
    v34 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32);
    __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource), v33);
    v35 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3;
    v36 = (*(*(*(v34 + 8) + 8) + 16))(*(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3), v33);
    v37 = v32[3];
    v38 = v32[4];
    __swift_project_boxed_opaque_existential_0(v32, v37);
    v39 = (*(*(*(v38 + 8) + 8) + 24))(*(v3 + v35), v37);
    sub_237178E8C(v36);
    v41 = v40;
    sub_237178E8C(v39);
    v43 = v42;
    v44 = v32[3];
    v45 = v32[4];
    __swift_project_boxed_opaque_existential_0(v32, v44);
    v46 = (*(v45 + 16))(*(v3 + v35), v44, v45);
    v47 = *(v3 + v18);
    if (v46 == 3)
    {
      v48 = v43;
      if (v47 >= v43)
      {
        v48 = v41;
        if (v41 >= v47)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v48 = v41;
      if (v47 >= v41)
      {
        v48 = v43;
        if (v43 >= v47)
        {
          goto LABEL_20;
        }
      }
    }

    *(v3 + v18) = v48;
    v47 = v48;
LABEL_20:
    sub_237178D00(v47);
    v50 = v49;
    v51 = v32[3];
    v52 = v32[4];
    __swift_project_boxed_opaque_existential_0(v32, v51);
    (*(*(*(v52 + 8) + 8) + 40))(*(v3 + v35), v51, v50);
    sub_237178FFC(*(v3 + v35), v50);
    goto LABEL_21;
  }

LABEL_10:
  if (a1 != 1)
  {
    return;
  }

  v21 = a3;
  sub_23717C330(a2);
  v23 = v22;
  v24 = (v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource);
  v25 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24);
  v26 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource), v25);
  v27 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1;
  (*(*(*(v26 + 8) + 8) + 40))(*(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1), v25, v23);
  sub_23717C484(v21);
  LODWORD(v21) = v28;
  v29 = v24[3];
  v30 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v29);
  v31 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2;
  (*(*(*(v30 + 8) + 8) + 40))(*(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2), v29, *&v21);
  sub_237178FFC(*(v3 + v27), v23);
  sub_237178FFC(*(v3 + v31), *&v21);
  sub_237179214();
LABEL_21:
  v53 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v54 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v53);
  v55 = (*(v54 + 56))(v53, v54);
  sub_23716A494();
}

uint64_t sub_23717CAAC(unsigned __int8 a1)
{
  v3 = a1;
  result = MEMORY[0x277D84F90];
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE95580);
      result = swift_allocObject();
      *(result + 16) = xmmword_23719B040;
      v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2);
      *(result + 32) = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1);
      *(result + 36) = v7;
      return result;
    }

    if (v3 != 3)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v3 - 4) < 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE95580);
    result = swift_allocObject();
    *(result + 16) = xmmword_23719B020;
    v5 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3;
LABEL_4:
    *(result + 32) = *(v1 + v5);
    return result;
  }

  if (v3 == 8)
  {
LABEL_10:
    if (a1 != 3 || *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type) != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE95580);
      result = swift_allocObject();
      *(result + 16) = xmmword_23719B020;
      v5 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1;
      goto LABEL_4;
    }

    v6 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE95580);
    result = swift_allocObject();
    *(result + 16) = xmmword_23719B040;
    *(result + 32) = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1);
    if (v6 == -1)
    {
      *(result + 36) = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3);
    }

    else
    {
      *(result + 36) = v6;
    }
  }

  return result;
}

id sub_23717CC84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAAUFilterControl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for CAAUFilterControl.type(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAAUFilterControl.type(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAAUFilterControl.part(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAAUFilterControl.part(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23717D01C()
{
  result = qword_27DE95568;
  if (!qword_27DE95568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE95568);
  }

  return result;
}

unint64_t sub_23717D074()
{
  result = qword_27DE95570;
  if (!qword_27DE95570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE95570);
  }

  return result;
}

unint64_t sub_23717D0CC()
{
  result = qword_27DE95578;
  if (!qword_27DE95578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE95578);
  }

  return result;
}

unint64_t sub_23717D120(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

id sub_23717D130(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v3 = sub_23719653C();
  [v2 setName_];

  v4 = (a1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
  v5 = *(a1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v6 = *(a1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
  __swift_project_boxed_opaque_existential_0((a1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v5);
  v7 = (*(v6 + 64))(v5, v6);
  v8 = [v7 colorWithAlphaComponent_];

  v9 = [v8 CGColor];
  [v2 setBackgroundColor_];

  [v2 setCornerRadius_];
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 26.0;
  v20.size.height = 26.0;
  v21 = CGRectIntegral(v20);
  [v2 setFrame_];
  [v2 setAnchorPoint_];
  v10 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = sub_23719653C();
  [v10 setName_];

  v12 = v4[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v12);
  v14 = (*(v13 + 64))(v12, v13);
  v15 = [v14 CGColor];

  [v10 setBackgroundColor_];
  v16 = [v2 backgroundColor];
  [v2 setBorderColor_];

  [v10 setCornerRadius_];
  v22.origin.x = 7.0;
  v22.origin.y = 7.0;
  v22.size.width = 12.0;
  v22.size.height = 12.0;
  v23 = CGRectIntegral(v22);
  [v10 setFrame_];
  [v2 setZPosition_];
  [v2 addSublayer_];
  v17 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points;
  swift_beginAccess();
  v18 = v2;
  MEMORY[0x2383C5F60]();
  if (*((*(a1 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();

  return v18;
}

id sub_23717D470(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = sub_23719653C();
  [v3 setName_];

  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = 26.0;
  v22.size.height = 13.0;
  v23 = CGRectIntegral(v22);
  [v3 setFrame_];
  [v3 setAnchorPoint_];
  v5 = (a2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
  v6 = *(a2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v7 = *(a2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
  __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v6);
  v8 = (*(v7 + 64))(v6, v7);
  v9 = [v8 colorWithAlphaComponent_];

  v10 = [v9 CGColor];
  [v3 setFillColor_];

  [v3 setLineWidth_];
  Mutable = CGPathCreateMutable();
  sub_23719672C();
  sub_23719674C();
  sub_23719674C();
  CGPathCloseSubpath(Mutable);
  v12 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v13 = sub_23719653C();
  [v12 setName_];

  [v3 frame];
  [v12 setFrame_];

  [v12 setPath_];
  [v12 setLineWidth_];
  v14 = v5[3];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v14);
  v16 = (*(v15 + 64))(v14, v15);
  v17 = [v16 CGColor];

  [v12 setFillColor_];
  v18 = [v3 fillColor];
  [v12 setStrokeColor_];

  [v3 setZPosition_];
  [v3 addSublayer_];
  v19 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points;
  v20 = swift_beginAccess();
  MEMORY[0x2383C5F60](v20);
  if (*((*(a2 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();

  return v3;
}

uint64_t sub_23717D854(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7261507468676952;
    v6 = 0x726F697265746E49;
    if (a1 != 8)
    {
      v6 = 0x6974616D6F747541;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x747261507466654CLL;
    if (a1 != 5)
    {
      v7 = 0x7261507468676952;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736302;
    v2 = 0x61507265746E6543;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x747261507466654CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746E696F50;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

_BYTE *sub_23717D9B0(unsigned __int8 a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color];
  if (!v2)
  {
    v4 = sub_23719653C();
    v5 = [objc_opt_self() bundleWithIdentifier_];

    v6 = a1;
    if (a1 - 4 < 4)
    {
      v7 = objc_opt_self();
      v5 = v5;
      v8 = [v7 currentTraitCollection];
      v9 = sub_23719653C();
      v1 = [objc_opt_self() colorNamed:v9 inBundle:v5 compatibleWithTraitCollection:v8];

      if (v1)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    if (v6 != 8 && v6 != 3 || v1[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] == 2)
    {
      goto LABEL_11;
    }

    v10 = objc_opt_self();
    v5 = v5;
    v11 = [v10 currentTraitCollection];
    v12 = sub_23719653C();
    v1 = [objc_opt_self() colorNamed:v12 inBundle:v5 compatibleWithTraitCollection:v11];

    if (!v1)
    {
      __break(1u);
LABEL_11:
      v1 = [objc_opt_self() redColor];
    }

LABEL_12:

    goto LABEL_13;
  }

  v1 = *&v1[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color];
LABEL_13:
  v13 = v2;
  return v1;
}

void sub_23717DBFC(void *a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v7 = [a1 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23719657C();
    v11 = v10;

    if (v9 == 0x746E696F50 && v11 == 0xE500000000000000)
    {
    }

    else
    {
      v13 = sub_237196A7C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    if (a2)
    {
      v14 = sub_23717D9B0(a4);
    }

    else
    {
      v15 = *(a3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
      v16 = *(a3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
      __swift_project_boxed_opaque_existential_0((a3 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v15);
      v14 = (*(v16 + 64))(v15, v16);
    }

    v17 = v14;
    v18 = [v14 colorWithAlphaComponent_];
    v19 = [v18 CGColor];

    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v22 = a1;
      [v21 setFillColor_];
    }

    else
    {
      [a1 setBackgroundColor_];
    }

    v23 = [a1 sublayers];
    if (!v23)
    {
      goto LABEL_45;
    }

    v24 = v23;
    v41 = v17;
    sub_23717DFE4();
    v25 = sub_23719663C();

    if (v25 >> 62)
    {
      v26 = sub_2371969FC();
      if (v26)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_18:
        if (v26 >= 1)
        {
          v27 = 0;
          v28 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed;
          while (1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x2383C62A0](v27, v25);
            }

            else
            {
              v30 = *(v25 + 8 * v27 + 32);
            }

            v31 = v30;
            v32 = [v30 name];
            if (v32)
            {
              v33 = v32;
              v34 = sub_23719657C();
              v36 = v35;

              if (v34 == 0x7265746E6543 && v36 == 0xE600000000000000)
              {

LABEL_33:
                if (*(a3 + v28) == 1)
                {
                  v39 = [objc_opt_self() clearColor];
                  v29 = [v39 CGColor];
                }

                else
                {
                  v29 = [v41 CGColor];
                }

                objc_opt_self();
                v40 = swift_dynamicCastObjCClass();
                if (v40)
                {
                  [v40 setFillColor_];
                }

                else
                {
                  [v31 setBackgroundColor_];
                }

                goto LABEL_21;
              }

              v38 = sub_237196A7C();

              if (v38)
              {
                goto LABEL_33;
              }
            }

            v29 = v31;
LABEL_21:
            ++v27;

            if (v26 == v27)
            {
              goto LABEL_41;
            }
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

LABEL_41:
  }
}

unint64_t sub_23717DFE4()
{
  result = qword_27DE95590;
  if (!qword_27DE95590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE95590);
  }

  return result;
}

void sub_23717E048()
{
  v1 = [v0 layer];
  [v1 setCornerRadius_];

  v2 = [v0 layer];
  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 colorWithAlphaComponent_];

    v6 = [v5 CGColor];
    [v2 setBorderColor_];

    v7 = [v0 layer];
    [v7 setBorderWidth_];
  }

  else
  {
    __break(1u);
  }
}

void sub_23717E334()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 != 2)
  {
    v11 = [objc_opt_self() clearColor];
    [v0 setBackgroundColor_];

    v6 = [v0 layer];
    v12 = [v0 tintColor];
    if (v12)
    {
      v9 = v12;
      v10 = [v12 CGColor];
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v3 = [v0 tintColor];
  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  v6 = [v0 layer];
  v7 = [v0 tintColor];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 colorWithAlphaComponent_];

  v10 = [v9 CGColor];
LABEL_7:
  v13 = v10;

  [v6 setBorderColor_];
}

id sub_23717E534()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUGenericViewClumpBackground();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23717E58C()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84F98];

  v2 = [*(v0 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack) arrangedSubviews];
  sub_237115094(0, &qword_27DE95598);
  v3 = sub_23719663C();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v4 = sub_2371969FC();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2383C62A0](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_23717E6D4(unsigned int a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  result = swift_beginAccess();
  v8 = *(v2 + v6);
  if (*(v8 + 16))
  {
    result = sub_2371906E0(a1);
    if (v9)
    {
      v10 = *(v8 + 56) + 152 * result;
      v11 = *(v10 + 16);
      v24[0] = *v10;
      v24[1] = v11;
      v12 = *(v10 + 80);
      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v24[4] = *(v10 + 64);
      v24[5] = v12;
      v24[2] = v14;
      v24[3] = v13;
      v15 = *(v10 + 96);
      v16 = *(v10 + 112);
      v17 = *(v10 + 128);
      v25 = *(v10 + 144);
      v24[7] = v16;
      v24[8] = v17;
      v24[6] = v15;
      v18 = v16;
      v19 = *(v10 + 80);
      v35 = *(v10 + 64);
      v36 = v19;
      v37 = *(v10 + 96);
      v20 = *(v10 + 16);
      v31 = *v10;
      v32 = v20;
      v21 = *(v10 + 48);
      v33 = *(v10 + 32);
      v34 = v21;
      v30[0] = *(v10 + 121);
      *(v30 + 15) = *(v10 + 136);
      sub_2371339F0(v24, v42);
      v22 = a2;

      v42[4] = v35;
      v42[5] = v36;
      v42[6] = v37;
      v42[0] = v31;
      v42[1] = v32;
      v42[2] = v33;
      v42[3] = v34;
      v43 = a2;
      v44 = 1;
      *(v45 + 15) = *(v30 + 15);
      v45[0] = v30[0];
      sub_23713445C();
      v38[4] = v35;
      v38[5] = v36;
      v38[6] = v37;
      v38[0] = v31;
      v38[1] = v32;
      v38[2] = v33;
      v38[3] = v34;
      v39 = a2;
      v40 = 1;
      *(v41 + 15) = *(v30 + 15);
      v41[0] = v30[0];
      swift_beginAccess();
      sub_2371339F0(v38, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v26[0] = *(v3 + v6);
      *(v3 + v6) = 0x8000000000000000;
      sub_23718E500(v38, a1, isUniquelyReferenced_nonNull_native);
      *(v3 + v6) = *&v26[0];
      swift_endAccess();
      v26[4] = v35;
      v26[5] = v36;
      v26[6] = v37;
      v26[0] = v31;
      v26[1] = v32;
      v26[2] = v33;
      v26[3] = v34;
      v27 = a2;
      v28 = 1;
      *&v29[15] = *(v30 + 15);
      *v29 = v30[0];
      return sub_237133A4C(v26);
    }
  }

  return result;
}

void sub_23717E908(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_appleLogo);
  [v5 frame];
  Width = CGRectGetWidth(v165);
  v7 = (v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName + 8);
  if (!*v7)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v8 = Width;
  v145 = v5;
  v9 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel);

  v10 = [v9 font];
  if (!v10)
  {
    goto LABEL_100;
  }

  v11 = v10;
  v12 = v8 + 24.0;
  v13 = sub_23719653C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B020;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v148 = sub_237115094(0, &unk_27DE94E10);
  *(inited + 64) = v148;
  *(inited + 40) = v11;
  v143 = v15;
  v16 = v11;
  sub_237119BCC(inited);
  swift_setDeallocating();
  sub_23717F6D0(inited + 32);
  type metadata accessor for Key(0);
  sub_23713D200();
  v17 = sub_23719651C();

  [v13 sizeWithAttributes_];
  v19 = v18;

  v20 = v12 + v19;
  i = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v22 = 0;
  v142 = i;
  v23 = *(v2 + i);
  v24 = 1 << *(v23 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v23 + 64);
  v27 = 0.0;
  if (v26)
  {
    while (1)
    {
      v28 = v22;
LABEL_11:
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v27 = v27 + *(*(v23 + 56) + 152 * (v29 | (v28 << 6)) + 136);
      if (!v26)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:

      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v28 >= ((v24 + 63) >> 6))
    {
      break;
    }

    v26 = *(v23 + 64 + 8 * v28);
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_11;
    }
  }

  if (v20 + v27 <= a1)
  {
    i = 0;
    v53 = 0;
LABEL_32:
    v55 = *(v2 + v142);
    v56 = *(v55 + 64);
    v141 = v55 + 64;
    v57 = 1 << *(v55 + 32);
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    else
    {
      v58 = -1;
    }

    v59 = v58 & v56;
    v60 = v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName;
    v139 = *(v2 + v142);
    v140 = (v57 + 63) >> 6;

    v61 = 0;
    if (i)
    {
      v62 = (v60 + 8);
    }

    else
    {
      v62 = v7;
    }

    v138 = v62;
    v136 = v2;
    v63 = a1 / 3.0;
    v135 = v9;
    v137 = v53;
LABEL_40:
    while (v59)
    {
      v64 = v61;
LABEL_45:
      v65 = *(v139 + 56) + 152 * (__clz(__rbit64(v59)) | (v64 << 6));
      v66 = *(v65 + 16);
      v160[0] = *v65;
      v160[1] = v66;
      v67 = *(v65 + 80);
      v69 = *(v65 + 32);
      v68 = *(v65 + 48);
      v160[4] = *(v65 + 64);
      v160[5] = v67;
      v160[2] = v69;
      v160[3] = v68;
      v70 = *(v65 + 96);
      v71 = *(v65 + 112);
      v72 = *(v65 + 128);
      v164 = *(v65 + 144);
      v162 = v71;
      v163 = v72;
      v161 = v70;
      v73 = v53;
      v74 = *(&v160[0] + 1);
      sub_2371339F0(v160, &v150);
      v75 = sub_23719653C();
      [v74 setText_];

      i = v161;
      if (v161)
      {
        v76 = 136;
        if (v73)
        {
          v76 = 128;
        }

        [v161 setConstant_];
      }

      if (*v138)
      {

        v77 = sub_23719653C();
      }

      else
      {
        v77 = 0;
      }

      v59 &= v59 - 1;
      [v9 setText_];

      if (v63 > a2)
      {
        v78 = *(v2 + v142);
        v79 = (v78 + 64);
        v80 = 1 << *(v78 + 32);
        if (v80 < 64)
        {
          v81 = ~(-1 << v80);
        }

        else
        {
          v81 = -1;
        }

        v82 = v81 & *(v78 + 64);
        v83 = (v80 + 63) >> 6;
        v147 = v78;

        v84 = 0;
        v85 = 0.0;
        v86 = 0.0;
        v87 = 0.0;
        v144 = v83;
        v146 = v79;
        while (v82)
        {
LABEL_62:
          v89 = *(v147 + 56) + 152 * (__clz(__rbit64(v82)) | (v84 << 6));
          v90 = *(v89 + 16);
          v150 = *v89;
          v151 = v90;
          v91 = *(v89 + 80);
          v93 = *(v89 + 32);
          v92 = *(v89 + 48);
          v154 = *(v89 + 64);
          v155 = v91;
          v152 = v93;
          v153 = v92;
          v94 = *(v89 + 96);
          v95 = *(v89 + 112);
          v96 = *(v89 + 128);
          v159 = *(v89 + 144);
          v157 = v95;
          v158 = v96;
          v156 = v94;
          v97 = *(&v150 + 1);
          sub_2371339F0(&v150, v149);
          v98 = [v97 text];
          if (!v98)
          {
            goto LABEL_98;
          }

          i = v98;
          v99 = [v97 font];
          if (!v99)
          {
            goto LABEL_97;
          }

          v100 = v99;
          v101 = swift_initStackObject();
          *(v101 + 16) = xmmword_23719B020;
          *(v101 + 32) = v143;
          *(v101 + 64) = v148;
          *(v101 + 40) = v100;
          v102 = v143;
          v103 = v100;
          sub_237119BCC(v101);
          swift_setDeallocating();
          sub_23717F6D0(v101 + 32);
          v104 = sub_23719651C();

          [i sizeWithAttributes_];
          v106 = v105;

          if (v87 <= v106)
          {
            v87 = v106;
          }

          [*(&v151 + 1) frame];
          if (v86 <= v107)
          {
            v86 = v107;
          }

          v108 = v151;
          v109 = [v151 text];
          if (!v109)
          {
            goto LABEL_96;
          }

          i = v109;
          v110 = [v108 font];
          if (!v110)
          {
            goto LABEL_95;
          }

          v111 = v110;
          v82 &= v82 - 1;
          v112 = swift_initStackObject();
          *(v112 + 16) = xmmword_23719B020;
          *(v112 + 32) = v102;
          *(v112 + 64) = v148;
          *(v112 + 40) = v111;
          v113 = v111;
          sub_237119BCC(v112);
          swift_setDeallocating();
          sub_23717F6D0(v112 + 32);
          v114 = sub_23719651C();

          [i sizeWithAttributes_];
          v116 = v115;

          sub_237133A4C(&v150);
          v83 = v144;
          v79 = v146;
          if (v85 <= v116)
          {
            v85 = v116;
          }
        }

        while (1)
        {
          v88 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            __break(1u);
            goto LABEL_91;
          }

          if (v88 >= v83)
          {
            break;
          }

          v82 = *(v79 + v88);
          ++v84;
          if (v82)
          {
            v84 = v88;
            goto LABEL_62;
          }
        }

        v119 = *(v136 + v142);
        v120 = 1 << *(v119 + 32);
        if (v120 < 64)
        {
          v121 = ~(-1 << v120);
        }

        else
        {
          v121 = -1;
        }

        v122 = v121 & *(v119 + 64);
        v123 = (v120 + 63) >> 6;

        v124 = 0;
        while (v122)
        {
          v125 = v124;
LABEL_86:
          v126 = __clz(__rbit64(v122));
          v122 &= v122 - 1;
          v127 = *(v119 + 56) + 152 * (v126 | (v125 << 6));
          v128 = *(v127 + 16);
          v150 = *v127;
          v151 = v128;
          v129 = *(v127 + 80);
          v131 = *(v127 + 32);
          v130 = *(v127 + 48);
          v154 = *(v127 + 64);
          v155 = v129;
          v152 = v131;
          v153 = v130;
          v132 = *(v127 + 96);
          v133 = *(v127 + 112);
          v134 = *(v127 + 128);
          v159 = *(v127 + 144);
          v157 = v133;
          v158 = v134;
          v156 = v132;
          i = *(&v150 + 1);
          sub_2371339F0(&v150, v149);
          [i setTextAlignment_];
          if (v156)
          {
            [v156 setConstant_];
          }

          sub_237133A4C(&v150);
          v124 = v125;
        }

        while (1)
        {
          v125 = v124 + 1;
          if (__OFADD__(v124, 1))
          {
            break;
          }

          if (v125 >= v123)
          {
            sub_237133A4C(v160);

            v61 = v64;
            v2 = v136;
            v9 = v135;
            v53 = v137;
            goto LABEL_40;
          }

          v122 = *(v119 + 64 + 8 * v125);
          ++v124;
          if (v122)
          {
            goto LABEL_86;
          }
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v53 = v137;
      if (i)
      {
        v117 = 136;
        if (v137)
        {
          v117 = 128;
        }

        v118 = *(v160 + v117);
        i = i;
        [i setConstant_];
        sub_237133A4C(v160);

        v61 = v64;
      }

      else
      {
        sub_237133A4C(v160);
        v61 = v64;
      }
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_93;
      }

      if (v64 >= v140)
      {

        return;
      }

      v59 = *(v141 + 8 * v64);
      ++v61;
      if (v59)
      {
        goto LABEL_45;
      }
    }
  }

  if (!*v7)
  {
    goto LABEL_101;
  }

  v30 = sub_23719653C();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_23719B020;
  *(v31 + 32) = v143;
  v32 = v143;
  v33 = [v9 font];
  if (!v33)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v34 = v33;

  *(v31 + 64) = v148;
  *(v31 + 40) = v34;
  sub_237119BCC(v31);
  swift_setDeallocating();
  sub_23717F6D0(v31 + 32);
  v35 = sub_23719651C();

  [v30 sizeWithAttributes_];
  v37 = v36;

  if (!*(v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName + 8))
  {
    goto LABEL_103;
  }

  v38 = sub_23719653C();
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_23719B020;
  *(v39 + 32) = v32;
  v40 = [v9 font];
  if (v40)
  {
    v41 = v40;

    *(v39 + 64) = v148;
    *(v39 + 40) = v41;
    sub_237119BCC(v39);
    swift_setDeallocating();
    sub_23717F6D0(v39 + 32);
    v42 = sub_23719651C();

    [v38 sizeWithAttributes_];
    v44 = v43;

    v45 = 0;
    v46 = *(v2 + v142);
    v47 = 1 << *(v46 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v46 + 64);
    v50 = 0.0;
    for (i = &selRef_effectiveContentSize; v49; v50 = v50 + *(*(v46 + 56) + 152 * (v52 | (v51 << 6)) + 128))
    {
      v51 = v45;
LABEL_26:
      v52 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
    }

    while (1)
    {
      v51 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_94;
      }

      if (v51 >= ((v47 + 63) >> 6))
      {
        [v145 frame];
        if (v50 + v37 + CGRectGetWidth(v166) + 24.0 <= a1)
        {
          [v145 frame];
          v54 = v27 + v44 + CGRectGetWidth(v167) + 24.0;
          i = v54 < a1;
          v53 = v54 >= a1;
        }

        else
        {
          i = 1;
          v53 = 1;
        }

        goto LABEL_32;
      }

      v49 = *(v46 + 64 + 8 * v51);
      ++v45;
      if (v49)
      {
        v45 = v51;
        goto LABEL_26;
      }
    }
  }

LABEL_104:
  __break(1u);
}

id sub_23717F678()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAAdjustingHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23717F6D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23717F790()
{
  v1 = [v0 contentView];
  v2 = [v1 layer];

  v3 = [objc_opt_self() redColor];
  v4 = [v3 CGColor];

  [v2 setBorderColor_];
  v5 = [v0 contentView];
  v6 = [v5 layer];

  [v6 setBorderWidth_];
  v7 = [v0 contentView];
  v8 = *&v0[OBJC_IVAR____TtC12CoreAudioKit22BandCollectionViewCell_label];
  [v7 addSubview_];

  v9 = [v8 leadingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  [v12 setActive_];

  v13 = [v8 trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  [v16 setActive_];

  v17 = [v8 centerXAnchor];
  v18 = [v0 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  [v20 setActive_];

  v21 = [v8 centerYAnchor];
  v22 = [v0 contentView];
  v23 = [v22 centerYAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  [v24 setActive_];
}

id sub_23717FB08(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC12CoreAudioKit22BandCollectionViewCell_isActive] = 0;
  v9 = OBJC_IVAR____TtC12CoreAudioKit22BandCollectionViewCell_label;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTextAlignment_];
  v11 = [objc_opt_self() secondaryLabelColor];
  [v10 setTextColor_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for BandCollectionViewCell();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_23717FC48(void *a1)
{
  v1[OBJC_IVAR____TtC12CoreAudioKit22BandCollectionViewCell_isActive] = 0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit22BandCollectionViewCell_label;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v4 setTextAlignment_];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BandCollectionViewCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_23717FDD0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_bandSelector] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_au] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_genericView] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_selectedBand] = 1;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for CAAUSettingsView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v9 layer];
  v11 = [objc_opt_self() lightGrayColor];
  v12 = [v11 CGColor];

  [v10 setBackgroundColor_];
  sub_237180094();

  return v9;
}

id sub_23717FF3C(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_bandSelector] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_au] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_genericView] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_selectedBand] = 1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CAAUSettingsView();
  v3 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = [v5 layer];
    v7 = [objc_opt_self() lightGrayColor];
    v8 = [v7 CGColor];

    [v6 setBackgroundColor_];
    sub_237180094();
  }

  return v4;
}

void sub_237180094()
{
  [v0 frame];
  Width = CGRectGetWidth(v35);
  v2 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  [v2 setSectionInset_];
  [v2 setMinimumInteritemSpacing_];
  [v2 setItemSize_];
  [v2 setScrollDirection_];
  v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, Width, 20.0}];

  v4 = OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_bandSelector;
  v5 = *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_bandSelector];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_bandSelector] = v3;

  v6 = *&v0[v4];
  if (!v6)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D752A0]) init];
    v8 = *&v0[v4];
    *&v0[v4] = v7;

    v6 = *&v0[v4];
    if (!v6)
    {
      goto LABEL_24;
    }
  }

  type metadata accessor for BandCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = v6;
  v11 = sub_23719653C();
  [v10 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v11];

  v12 = *&v0[v4];
  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemBackgroundColor];
  [v14 setBackgroundColor_];

  v16 = *&v0[v4];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = *&v0[v4];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v17 setDataSource_];
  v18 = *&v0[v4];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v18 setDelegate_];
  if (!*&v0[v4])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v0 addSubview_];
  v19 = *&v0[v4];
  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = [v19 leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  [v22 setActive_];
  v23 = *&v0[v4];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = [v23 topAnchor];
  v25 = [v0 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  [v26 setActive_];
  v27 = *&v0[v4];
  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = [v27 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  [v30 setActive_];
  v31 = *&v0[v4];
  if (!v31)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  [v33 setActive_];
}

id sub_2371804EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2371807B8(void *a1)
{
  v2 = sub_23719653C();
  v3 = sub_2371963AC();
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v2 forIndexPath:v3];

  type metadata accessor for BandCollectionViewCell();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = *(v5 + OBJC_IVAR____TtC12CoreAudioKit22BandCollectionViewCell_label);
  result = sub_2371963DC();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_237196A5C();
    v8 = sub_23719653C();

    [v6 setText_];

    return v5;
  }

  return result;
}

void sub_2371808D4()
{
  v1 = v0;
  v2 = sub_2371963DC();
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_selectedBand) = v3;
    v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit16CAAUSettingsView_genericView);
    if (v4)
    {
      v5 = &v4[OBJC_IVAR____TtC12CoreAudioKit21AUGenericViewInternal_showSingleClumpIndex];
      swift_beginAccess();
      *v5 = v3;
      v5[8] = 0;
      v6 = v4;
      sub_2371155D0();
    }
  }
}

void sub_237180970()
{
  v1 = v0;
  v2 = sub_23712F040();
  v3 = sub_23719342C();

  v4 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
  v54 = OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView;
  v5 = *&v1[OBJC_IVAR____TtC12CoreAudioKit22AUEQViewControllerBase____lazy_storage___eqView];
  v6 = sub_23719342C();

  v7 = *&v6[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = -1046478848;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = -1046478848;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1101004800;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1101004800;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 3;
  type metadata accessor for AUAppleViewControllerBase();
  v8 = sub_237175EDC();
  v56 = v7;
  v9 = &v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  v10 = v1;
  *v9 = v8;
  v9[1] = v11;

  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 1094713344;
  v12 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1186988032;
  v13 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1186988032;
  *&v4[v12] = 1101004800;
  *&v4[v13] = sub_237130920(0);
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0x40000000;
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 10;
  v14 = sub_237175EDC();
  v57 = v4;
  v15 = &v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v15 = v14;
  v15[1] = v16;

  sub_23712EA30();
  v17 = *&v1[v54];
  v18 = sub_23719342C();

  v58[3] = type metadata accessor for AUParametricEQViewController();
  v58[4] = &off_284A3A7C0;
  v58[0] = v1;
  v19 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  v20 = v10;
  sub_23710FAE0(v58, v18 + v19);
  swift_endAccess();
  sub_23716A678();

  sub_23710FB50(v58);
  v21 = *&v10[v54];
  v22 = sub_23719342C();

  v55 = sub_237168E74(0, 2, 1u, 0);
  v23 = *&v10[v54];
  v24 = sub_237193370();

  v25 = sub_237175EDC();
  v27 = v26;
  v28 = sub_237175EDC();
  v30 = v29;
  v31 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v32 = *&v24[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v33 = sub_23719653C();
  [v32 setText_];

  [*&v24[v31] setAccessibilityTraits_];
  v34 = *&v24[v31];
  v35 = sub_23719653C();
  [v34 setAccessibilityLabel_];

  v36 = &v24[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v36 = v25;
  v36[1] = v27;

  v37 = &v24[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName];
  *v37 = v28;
  v37[1] = v30;

  sub_23712F904(0);
  sub_23712FD40(2);
  sub_237130180(1);
  v38 = sub_23719653C();
  v39 = [objc_opt_self() bundleWithIdentifier_];

  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 currentTraitCollection];
  v43 = sub_23719653C();
  v44 = [objc_opt_self() colorNamed:v43 inBundle:v41 compatibleWithTraitCollection:v42];

  if (v44)
  {
    v45 = *&v10[v54];
    v46 = sub_237193370();

    (*((*MEMORY[0x277D85000] & *v46) + 0x170))(2, v44);
  }

  v47 = v55;
  if (v55)
  {
    v48 = *&v55[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
    if (v48)
    {
      v49 = *&v10[v54];
      v50 = v48;
      v51 = v49;
      v52 = sub_23719342C();

      v53 = [v52 layer];
      [v53 addSublayer_];

      v47 = v53;
    }
  }
}

uint64_t sub_237180F7C(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

uint64_t sub_237181010(int a1)
{
  if (a1 && a1 != 2)
  {
    return 0;
  }

  type metadata accessor for AUAppleViewControllerBase();
  return sub_237175EDC();
}

id sub_237181128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUParametricEQViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_237181180(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_23719686C();
    v5 = v4;
    v6 = sub_2371968DC();
    v8 = v7;
    v9 = MEMORY[0x2383C61E0](v3, v5, v6, v7);
    sub_237185FBC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_237185FBC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_23719684C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2371857FC(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_237185FBC(v3, v5, v2 != 0);
  return v12;
}

void sub_23718129C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23719684C();
  if (v4 == 1 << *(a1 + 32))
  {
    sub_237185FC8(&v34);
    v5 = v41;
    *(a2 + 96) = v40;
    *(a2 + 112) = v5;
    *(a2 + 128) = v42;
    *(a2 + 144) = v43;
    v6 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v6;
    v7 = v39;
    *(a2 + 64) = v38;
    *(a2 + 80) = v7;
    v8 = v35;
    *a2 = v34;
    *(a2 + 16) = v8;
  }

  else
  {
    sub_237185A20(v4, *(a1 + 36), a1, &v22);
    v10 = v27;
    v32[6] = v28;
    v9 = v28;
    v32[7] = v29;
    v11 = v29;
    v32[8] = v30;
    v13 = v23;
    v32[2] = v24;
    v12 = v24;
    v32[3] = v25;
    v14 = v25;
    v32[4] = v26;
    v15 = v26;
    v32[5] = v27;
    v32[0] = v22;
    v32[1] = v23;
    v16 = v29;
    *(a2 + 96) = v28;
    *(a2 + 112) = v16;
    *(a2 + 128) = v30;
    v17 = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = v17;
    v18 = v27;
    *(a2 + 64) = v26;
    *(a2 + 80) = v18;
    v20 = v22;
    v19 = v23;
    *a2 = v22;
    *(a2 + 16) = v19;
    v40 = v9;
    v41 = v11;
    v42 = v30;
    v36 = v12;
    v37 = v14;
    v38 = v15;
    v39 = v10;
    v33 = v31;
    *(a2 + 144) = v31;
    v43 = v31;
    v34 = v20;
    v35 = v13;
    sub_2371339F0(v32, &v21);
    sub_237133A4C(&v34);
    nullsub_1(a2);
  }
}

void sub_2371813FC()
{
  v1 = &v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins];
  *v1 = xmmword_23719C440;
  *(v1 + 1) = xmmword_23719C430;
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [v0 layer];
  [v5 setContentsScale_];

  v6 = *&v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer];
  v7 = sub_23719653C();
  [v6 setName_];

  v8 = [*&v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_border] CGColor];
  [v6 setBorderColor_];

  [v6 setBorderWidth_];
  v9 = [*&v0[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_fill] CGColor];
  [v6 setBackgroundColor_];

  v10 = [v0 layer];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v31.origin.x = v12;
  v31.origin.y = v14;
  v31.size.width = v16;
  v31.size.height = v18;
  v19 = CGRectGetWidth(v31) - *(v1 + 1) - *(v1 + 3);
  v20 = [v0 layer];
  [v20 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v32.origin.x = v22;
  v32.origin.y = v24;
  v32.size.width = v26;
  v32.size.height = v28;
  [v6 setBounds_];
  [v6 setPosition_];
  [v6 setAnchorPoint_];
  [v6 setContentsScale_];
  v29 = [v0 layer];
  [v29 addSublayer_];
}

unint64_t sub_2371816EC(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (*(result + 16))
  {
    result = sub_2371905D4(1852394873, 0xE400000000000000);
    if (v4)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
        *(v5 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) = v25;
        *(v5 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(2019642745, 0xE400000000000000);
    if (v6)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        v7 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
        *(v7 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max) = v25;
        *(v7 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x756F436469724779, 0xEA0000000000746ELL);
    if (v8)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x614C7374696E5579, 0xEB000000006C6562);
    if (v9)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        v10 = (*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel);
        *v10 = v25;
        v10[1] = v26;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(1852394872, 0xE400000000000000);
    if (v11)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        v12 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
        *(v12 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) = v25;
        *(v12 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(2019642744, 0xE400000000000000);
    if (v13)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        v14 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
        *(v14 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max) = v25;
        *(v14 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x6F6C6C416E694D78, 0xEB00000000646577);
    if (v15)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x6F6C6C4178614D78, 0xEB00000000646577);
    if (v16)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x65736142676F4C78, 0xE800000000000000);
    if (v17)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x756F436469724778, 0xEA0000000000746ELL);
    if (v18)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x614C7374696E5578, 0xEB000000006C6562);
    if (v19)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        v20 = (*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel);
        *v20 = v25;
        v20[1] = v26;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x54646E6574784578, 0xED00006F72655A6FLL);
    if (v21)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_extendToZero) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0xD000000000000011, 0x800000023719FF10);
    if (v22)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_abbreviateValues) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x4D6F5470696C4378, 0xEA00000000007861);
    if (v23)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_clipDisplayToMax) = v25;
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_2371905D4(0x6574616D696E61, 0xE700000000000000);
    if (v24)
    {
      sub_237114D0C(*(v3 + 56) + 32 * result, v27);
      result = swift_dynamicCast();
      if (result)
      {
        *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges) = v25;
      }
    }
  }

  return result;
}

void sub_237181E84()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!sub_2371969FC())
  {
LABEL_3:
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0x368);
    v4 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
    v3();
  }

LABEL_4:
  v5 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yLabels;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_6;
  }

  if (!sub_2371969FC())
  {
LABEL_6:
    v7 = *((*MEMORY[0x277D85000] & *v0) + 0x368);
    v8 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
    v7();
  }
}

void sub_237181FF0(uint64_t a1)
{
  v2 = [v1 layer];
  [v2 contentsScale];
  v4 = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D76938];
  v108 = v6;
  v9 = [v7 preferredFontForTextStyle_];
  v10 = sub_237115094(0, &unk_27DE94E10);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 labelColor];
  v15 = sub_237115094(0, &qword_27DE94788);
  *(inited + 104) = v15;
  *(inited + 80) = v14;
  v16 = a1;
  sub_237119BCC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94888);
  swift_arrayDestroy();
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_23719B040;
  *(v17 + 32) = v108;
  v99 = v8;
  v100 = v7;
  *(v17 + 40) = [v7 preferredFontForTextStyle_];
  *(v17 + 64) = v10;
  *(v17 + 72) = v13;
  v98 = v12;
  v18 = [v12 secondaryLabelColor];
  *(v17 + 104) = v15;
  *(v17 + 80) = v18;
  sub_237119BCC(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  v109 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount;
  v19 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v20 = v19 + 1;
  v21 = v101;
  if (__OFADD__(v19, 1))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v94 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_clipDisplayToMax;
    v110 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
    v22 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
    v86 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max;
    v87 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yLabels;
    v23 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels;
    v107 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_abbreviateValues;
    v92 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_drawFirstAndLastKOnly;
    v95 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
    v88 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine;
    v89 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_majorLine;
    v90 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center;
    v85 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yGrids;
    v91 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xGrids;
    v25 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
    v24 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8);
    v93 = *MEMORY[0x277CDA040];
    v102 = *MEMORY[0x277CDA020];

    v26 = 0;
    v106 = 0;
    v96 = v23;
    v97 = v20;
    v103 = v25;
    v104 = v24;
    while (1)
    {
      v27 = *(v16 + v109);
      v63 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v63)
      {
        break;
      }

      if (v26 == v28 && *(v16 + v94) == 1)
      {
        v29 = *(v16 + v86);
      }

      else
      {
        sub_237185B04(v16, v26);
        v29 = v30;
      }

      v31 = [objc_allocWithZone(MEMORY[0x277CD9FC8]) init];
      v32 = [v100 preferredFontForTextStyle_];
      [v31 setFont_];

      v33 = [v98 labelColor];
      v34 = [v33 CGColor];

      [v31 setForegroundColor_];
      [v31 setFontSize_];
      v35 = (*(v21 + v110) + v22[225]);
      v36 = v35[1];
      if (v25 != *v35 || (v37 = v102, v24 != v36))
      {
        v38 = sub_237196A7C();
        v37 = v93;
        if (v38)
        {
          v37 = v102;
        }
      }

      v39 = v37;
      [v31 setAlignmentMode_];

      v40 = v31;
      [v40 setContentsScale_];
      [v40 setAnchorPoint_];

      v41 = (*(v21 + v110) + v22[225]);
      v105 = v40;
      if (v25 == *v41 && v24 == v41[1] || (sub_237196A7C() & 1) != 0)
      {
        swift_beginAccess();
        v42 = v40;
        MEMORY[0x2383C5F60]();
        if (*((*(v21 + v23) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + v23) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }
      }

      else
      {
        swift_beginAccess();
        v43 = v40;
        MEMORY[0x2383C5F60]();
        if (*((*(v21 + v87) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v21 + v87) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }
      }

      sub_23719665C();
      swift_endAccess();
      v44 = v106;
      v45 = 0;
      v112 = 0xE000000000000000;
      if (*(v16 + v107) == 1 && v29 > 1000.0)
      {
        v29 = v29 / 1000.0;
        if ((v106 & 1) != 0 && *(v16 + v92) == 1)
        {
          v46 = *(v16 + v109);
          v63 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v63)
          {
            goto LABEL_72;
          }

          if (v26 != v47)
          {
            goto LABEL_29;
          }
        }

        v48 = sub_23719653C();
        v49 = [objc_opt_self() bundleWithIdentifier_];

        if (!v49)
        {
LABEL_29:
          v45 = 0;
          v112 = 0xE000000000000000;
        }

        else
        {
          v50 = v49;
          v51 = sub_23719653C();
          v52 = sub_23719653C();
          v53 = sub_23719653C();
          v54 = [v50 localizedStringForKey:v51 value:v52 table:v53];

          v45 = sub_23719657C();
          v112 = v55;
        }

        v44 = 1;
      }

      sub_237185BE4(*(v16 + v107), v29);
      v56 = v16;
      v57 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v58 = sub_23719653C();

      type metadata accessor for Key(0);
      sub_23713D200();
      v59 = sub_23719651C();
      v60 = v57;
      v16 = v56;
      v61 = [v60 initWithString:v58 attributes:v59];

      v106 = v44;
      if (v44)
      {
        goto LABEL_38;
      }

      v62 = *(v56 + v109);
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      v65 = v63;
      if (v63)
      {
        goto LABEL_71;
      }

      if (v26 == v64 || (*(v56 + v92) & 1) == 0)
      {
LABEL_38:
        MEMORY[0x2383C5F20](v45, v112);
        v66 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v67 = sub_23719653C();

        v68 = sub_23719651C();
        v69 = [v66 initWithString:v67 attributes:v68];

        [v61 appendAttributedString_];
        v70 = *(v56 + v109);
        v63 = __OFADD__(v70, 1);
        v64 = v70 + 1;
        v65 = v63;
      }

      v24 = v104;
      if (v65)
      {
        goto LABEL_69;
      }

      if (v26 == v64)
      {
        v71 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v72 = sub_23719653C();
        v73 = sub_23719651C();
        v74 = [v71 initWithString:v72 attributes:v73];

        [v61 appendAttributedString_];
      }

      [v105 setString_];
      v21 = v101;
      v75 = [v101 layer];
      [v75 addSublayer_];

      if (v26)
      {
        v76 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
        sub_2371966AC();
        v77 = sub_23719653C();

        [v76 setName_];

        v22 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
        v78 = (*(v101 + v95) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
        v25 = v103;
        if (v103 == *v78 && v104 == v78[1] || (sub_237196A7C()) && v29 == *(v16 + v90) && (v79 = *(v16 + v88)) != 0)
        {
          v80 = v79;

          v81 = [v80 CGColor];

          v22 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
        }

        else
        {

          v81 = [*(v16 + v89) CGColor];
        }

        [v76 setBackgroundColor_];

        v82 = (*(v101 + v110) + v22[225]);
        if (v103 == *v82 && v104 == v82[1] || (sub_237196A7C() & 1) != 0)
        {
          swift_beginAccess();
          v83 = v76;
          MEMORY[0x2383C5F60]();
          if (*((*(v101 + v91) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v101 + v91) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23719664C();
            v22 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
          }

          sub_23719665C();
          swift_endAccess();
          v25 = v103;
        }

        else
        {
          swift_beginAccess();
          v76;
          MEMORY[0x2383C5F60]();
          if (*((*(v101 + v85) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v101 + v85) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23719664C();
            v22 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
          }

          sub_23719665C();
          swift_endAccess();
        }

        v24 = v104;
        v84 = [v101 layer];
        [v84 addSublayer_];
      }

      else
      {

        v22 = &OBJC_IVAR____TtC12CoreAudioKit31AUGenericViewMeterParameterCell_minLabel;
        v25 = v103;
      }

      v23 = v96;
      if (v97 == v26)
      {

        (*((*MEMORY[0x277D85000] & *v101) + 0x378))(v16);
        return;
      }

      v63 = __OFADD__(v26++, 1);
      if (v63)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_74:
  __break(1u);
}

void sub_237182D80()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v2 = *(*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_37;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_offsetXLabels;
    v5 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels;
    v6 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer;
    v7 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xGrids;
    swift_beginAccess();
    v32 = v7;
    swift_beginAccess();
    v8 = 0;
    while (1)
    {
      v9 = *(v0 + v1);
      sub_237185B04(v9, v8);
      v11 = v10;
      v12 = v9;
      sub_237183E14(v12, v11);
      v14 = v13;

      if (*(v0 + v4))
      {
        v15 = ((v8 << 63 >> 63) & 0xC);
      }

      else
      {
        v15 = 0.0;
      }

      v16 = *(v0 + v5);
      if (v16 >> 62)
      {
        v17 = sub_2371969FC();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = floor(v14);
      if (v8 < v17)
      {
        v19 = *(v0 + v5);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v20 = MEMORY[0x2383C62A0](v8, v19);
        }

        else
        {
          if (v8 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v20 = *(v19 + 8 * v8 + 32);
        }

        v21 = *(v0 + v6);
        [v21 frame];
        Height = CGRectGetHeight(v33);
        [v21 frame];
        [v20 setFrame_];
      }

      if (!v8 || *(*(v0 + v1) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount) < v8)
      {
        goto LABEL_25;
      }

      v24 = *(v0 + v32);
      if (v24 >> 62)
      {
        if (v8 < sub_2371969FC())
        {
LABEL_18:
          v25 = *(v0 + v32);
          if ((v25 & 0xC000000000000001) != 0)
          {

            v26 = MEMORY[0x2383C62A0](v8, v25);
          }

          else
          {
            if (v8 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v26 = *(v25 + 8 * v8 + 32);
          }

          v27 = *(v0 + v6);
          [v27 frame];
          v29 = v28;
          if (v11 == *(*(v0 + v1) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center))
          {
            v30 = 1.0;
          }

          else
          {
            v30 = 0.5;
          }

          [v27 frame];
          [v26 setFrame_];
        }
      }

      else if (v8 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

LABEL_25:
      if (v3 == v8)
      {
        return;
      }

      if (__OFADD__(v8++, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }
    }
  }

  __break(1u);
}

id sub_2371830D4()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges;
  if ((*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges) & 1) == 0)
  {
    v2 = objc_opt_self();
    [v2 begin];
    [v2 setDisableActions_];
  }

  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
  if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_hideLabels) == 1)
  {
    v4 = [v0 layer];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v50.origin.x = v6;
    v50.origin.y = v8;
    v50.size.width = v10;
    v50.size.height = v12;
    Width = CGRectGetWidth(v50);
    v14 = [v0 layer];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v51.origin.x = v16;
    v51.origin.y = v18;
    v51.size.width = v20;
    v51.size.height = v22;
    v23 = [v3 setBounds_];
  }

  else
  {
    v24 = (v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins);
    v26 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins);
    v25 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins + 8);
    v27 = [v0 layer];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v52.origin.x = v29;
    v52.origin.y = v31;
    v52.size.width = v33;
    v52.size.height = v35;
    v36 = CGRectGetWidth(v52) - v24[1] - v24[3];
    v37 = [v0 layer];
    [v37 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v53.origin.x = v39;
    v53.origin.y = v41;
    v53.size.width = v43;
    v53.size.height = v45;
    v23 = [v3 setBounds_];
  }

  v46 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x388))(v23);
  sub_2371838EC();
  result = (*((*v46 & *v0) + 0x398))();
  if ((*(v0 + v1) & 1) == 0)
  {
    v48 = objc_opt_self();

    return [v48 commit];
  }

  return result;
}

uint64_t sub_2371833F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE957A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23719BD00;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 32) = 2019642744;
  *(v1 + 40) = 0xE400000000000000;
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
  v4 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max;
  v5 = MEMORY[0x277D83A90];
  *(v1 + 64) = *(v3 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max);
  *(v1 + 120) = v2;
  *(v1 + 88) = v5;
  *(v1 + 96) = 0x65736142676F4C78;
  *(v1 + 104) = 0xE800000000000000;
  v6 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase;
  *(v1 + 128) = *(v3 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase);
  *(v1 + 184) = v2;
  *(v1 + 152) = v5;
  *(v1 + 160) = 1852394873;
  *(v1 + 168) = 0xE400000000000000;
  v7 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
  *(v1 + 192) = *(v7 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min);
  *(v1 + 248) = v2;
  *(v1 + 216) = v5;
  *(v1 + 224) = 2019642745;
  *(v1 + 232) = 0xE400000000000000;
  *(v1 + 256) = *(v7 + v4);
  *(v1 + 312) = v2;
  *(v1 + 280) = v5;
  *(v1 + 288) = 0x65736142676F4C79;
  *(v1 + 296) = 0xE800000000000000;
  *(v1 + 320) = *(v7 + v6);
  *(v1 + 376) = v2;
  *(v1 + 344) = v5;
  *(v1 + 352) = 0x646E6574784579;
  *(v1 + 360) = 0xE700000000000000;
  LOBYTE(v2) = *(v7 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_extendHorizontally);
  *(v1 + 408) = MEMORY[0x277D839B0];
  *(v1 + 384) = v2;
  sub_237115094(0, &qword_27DE957B0);
  return sub_2371966FC();
}

void sub_237183574(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_showActiveArea) != 1)
  {
    return;
  }

  v2 = v1;
  if (*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) != *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed))
  {
    v3 = 1852403064;
    v4 = (*&v1[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
    v5 = a1;
    v6 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name) == *v4 && *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8) == v4[1];
    if (!v6 && (sub_237196A7C() & 1) == 0)
    {
      v3 = 1852403065;
    }

    v7 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
    swift_beginAccess();
    if (*(*&v1[v7] + 16))
    {

      sub_2371905D4(v3, 0xE400000000000000);
      if (v8)
      {

LABEL_14:
        a1 = v5;
        goto LABEL_15;
      }
    }

    v9 = sub_2371851A8(v1);
    v10 = sub_23719653C();
    [v9 setName_];

    swift_beginAccess();
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *&v2[v7];
    *&v2[v7] = 0x8000000000000000;
    sub_23718E25C(v11, v3, 0xE400000000000000, isUniquelyReferenced_nonNull_native);

    *&v2[v7] = v25;
    swift_endAccess();
    v13 = [v2 layer];
    [v13 addSublayer_];

    goto LABEL_14;
  }

LABEL_15:
  if (*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max) == *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed))
  {
    return;
  }

  v14 = 2019650936;
  v15 = (*&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  v16 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name) == *v15 && *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8) == v15[1];
  if (!v16 && (sub_237196A7C() & 1) == 0)
  {
    v14 = 2019650937;
  }

  v17 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
  swift_beginAccess();
  if (*(*&v2[v17] + 16))
  {

    sub_2371905D4(v14, 0xE400000000000000);
    if (v18)
    {

      return;
    }
  }

  v19 = sub_2371851A8(v2);
  v20 = sub_23719653C();
  [v19 setName_];

  swift_beginAccess();
  v21 = v19;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *&v2[v17];
  *&v2[v17] = 0x8000000000000000;
  sub_23718E25C(v21, v14, 0xE400000000000000, v22);

  *&v2[v17] = v24;
  swift_endAccess();
  v23 = [v2 layer];
  [v23 addSublayer_];
}

void sub_2371838EC()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  v2 = *(*(v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_29;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yLabels;
    v5 = v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins;
    v6 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yGrids;
    v26 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer;
    swift_beginAccess();
    v27 = v6;
    swift_beginAccess();
    v7 = 0;
    while (1)
    {
      v8 = *(v0 + v1);
      sub_237185B04(v8, v7);
      v10 = v9;
      v11 = v8;
      sub_237183E14(v11, v10);
      v13 = v12;

      v14 = *(v0 + v4);
      if ((v14 & 0xC000000000000001) != 0)
      {

        v15 = MEMORY[0x2383C62A0](v7, v14);
      }

      else
      {
        if (v7 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          break;
        }

        v15 = *(v14 + 8 * v7 + 32);
      }

      v16 = floor(v13);
      if (v7)
      {
        v17 = 8.0;
      }

      else
      {
        v17 = 14.0;
      }

      [v15 setFrame_];

      if (v7 && *(*(v0 + v1) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount) >= v7)
      {
        v18 = *(v0 + v27);
        if ((v18 & 0xC000000000000001) != 0)
        {

          v19 = MEMORY[0x2383C62A0](v7 - 1, v18);
        }

        else
        {
          if (v7 > *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v19 = *(v18 + 8 * v7 + 24);
        }

        v20 = *(v0 + v26);
        [v20 frame];
        v22 = v21;
        [v20 frame];
        Width = CGRectGetWidth(v28);
        if (v10 == *(*(v0 + v1) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center))
        {
          v24 = 1.0;
        }

        else
        {
          v24 = 0.5;
        }

        [v19 setFrame_];
      }

      if (v3 == v7)
      {
        return;
      }

      if (__OFADD__(v7++, 1))
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
}

void sub_237183B90(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v6 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  v7 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8);
  v8 = (*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (sub_237196A7C() & 1) != 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
    [v10 frame];
    MinX = CGRectGetMinX(v29);
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
    [v10 frame];
    MinX = CGRectGetMinY(v30);
  }

  v12 = a2 - MinX;
  v13 = (*(v2 + v5) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  v15 = v6 == *v13 && v7 == v13[1];
  if (v12 <= 0.0)
  {
    if (!v15)
    {
      sub_237196A7C();
    }
  }

  else
  {
    if (v15 || (sub_237196A7C() & 1) != 0)
    {
      [v10 frame];
      Width = CGRectGetWidth(v31);
    }

    else
    {
      [v10 frame];
      Width = CGRectGetHeight(v32);
    }

    v17 = (*(v2 + v5) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
    v19 = v6 == *v17 && v7 == v17[1];
    if (Width <= v12)
    {
      if (!v19)
      {
        sub_237196A7C();
      }
    }

    else
    {
      if (v19 || (sub_237196A7C() & 1) != 0)
      {
        [v10 frame];
        Height = CGRectGetWidth(v33);
      }

      else
      {
        [v10 frame];
        Height = CGRectGetHeight(v34);
      }

      v21 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        v24 = v23;
        v25 = v12 / (Height / v23);
        v26 = (*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
        if (v6 == *v26 && v7 == v26[1] || (sub_237196A7C() & 1) != 0)
        {
          v25 = vabdd_f64(v25, v24);
        }

        v27 = v25;
        sub_237185B04(a1, v27);
      }
    }
  }
}

void sub_237183E14(uint64_t a1, float a2)
{
  v5 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v6 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  v7 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name + 8);
  v8 = (*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (sub_237196A7C() & 1) != 0)
  {
    v10 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
    [v10 frame];
    CGRectGetWidth(v16);
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
    [v10 frame];
    CGRectGetHeight(v17);
  }

  v11 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase);
  if (v11 != 0.0)
  {
    if (__OFADD__(*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount), 1))
    {
      __break(1u);
      return;
    }

    logf(a2 / *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min));
    logf(v11);
  }

  v12 = (*(v2 + v5) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  if (v6 != *v12 || v7 != v12[1])
  {
    sub_237196A7C();
  }

  [v10 frame];
  v14 = (*(v2 + v5) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name);
  if (v6 != *v14 || v7 != v14[1])
  {
    sub_237196A7C();
  }
}

void sub_237184014(char a1, double a2)
{
  v3 = v2;
  v6 = objc_opt_self();
  [v6 begin];
  [v6 setDisableActions_];
  v7 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_2371905D4(1852403064, 0xE400000000000000);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *(v3 + v7);
  if (*(v13 + 16))
  {

    v14 = sub_2371905D4(2019650936, 0xE400000000000000);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      v17 = v16;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
  [v18 frame];
  Width = CGRectGetWidth(v34);
  if (v11)
  {
    [v11 frame];
    Width = Width - CGRectGetMinX(v35);
    [v11 frame];
    MinX = CGRectGetMinX(v36);
    [v11 frame];
    v21 = MinX + CGRectGetWidth(v37);
    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v21 = 0.0;
  if (v16)
  {
LABEL_15:
    [v18 frame];
    v22 = CGRectGetWidth(v38);
    [v16 frame];
    Width = Width - (v22 - CGRectGetMinX(v39));
  }

LABEL_16:
  v23 = (a2 - v21) / Width;
  if (v23 >= 0.0)
  {
    v24 = 1.0;
    if (v23 <= 1.0)
    {
      v24 = v23;
      if ((a1 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else if ((a1 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v24 = 0.0;
    v23 = 0.0;
    if ((a1 & 1) == 0)
    {
LABEL_33:
      if (v11)
      {
        v25 = (0.25 - v23) * 4.0;
        v26 = objc_opt_self();
        v27 = v11;
        v28 = [v26 redColor];
        v29 = [v28 colorWithAlphaComponent_];

        v30 = [v29 CGColor];
LABEL_37:
        v33 = v30;

        [v27 setBackgroundColor_];
        goto LABEL_38;
      }

      goto LABEL_38;
    }
  }

  if (v11)
  {
    [v11 setHidden_];
  }

  if (v16)
  {
    [v16 setHidden_];
  }

  sub_2371853A0(v3, v11, v16);
  v23 = v24;
LABEL_30:
  if (v23 <= 0.25)
  {
    goto LABEL_33;
  }

  v24 = v23;
  if (v23 >= 0.75)
  {
LABEL_35:
    if (v16)
    {
      v31 = objc_opt_self();
      v27 = v16;
      v32 = [v31 redColor];
      v29 = [v32 colorWithAlphaComponent_];

      v30 = [v29 CGColor];
      goto LABEL_37;
    }

LABEL_38:
    *(v3 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_areasHidden) = 0;
    goto LABEL_39;
  }

  sub_2371853A0(v3, v11, v16);
LABEL_39:
  [v6 commit];
}

void sub_2371843F0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_2371905D4(1852403064, 0xE400000000000000);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
      v8 = *&v7[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed];
      v9 = v7;
      sub_237183E14(v9, v8);
      v11 = v10;

      v12 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
      [v12 frame];
      v13 = CGRectGetMinY(v57) + -1.0;
      [v12 frame];
      [v6 setFrame_];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v14 = *(v1 + v2);
  if (*(v14 + 16))
  {

    v15 = sub_2371905D4(2019650936, 0xE400000000000000);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
      v19 = *&v18[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed];
      v20 = v18;
      sub_237183E14(v20, v19);
      v22 = v21;

      v23 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
      [v23 frame];
      v25 = v24 + 1.0;
      [v23 frame];
      [v17 setFrame_];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = 0;
LABEL_12:
  v26 = *(v1 + v2);
  if (*(v26 + 16))
  {

    v27 = sub_2371905D4(1852403065, 0xE400000000000000);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);

      v30 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
      v31 = *&v30[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed];
      v32 = v30;
      sub_237183E14(v32, v31);
      v34 = v33;

      v35 = floor(v34);
      v36 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
      [v36 frame];
      v38 = v37;
      [v36 frame];
      v40 = v39;
      [v36 frame];
      v41 = v40 + CGRectGetHeight(v60) - v35;
      [v36 frame];
      Width = CGRectGetWidth(v61);
      [v36 frame];
      [v29 setFrame_];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v29 = 0;
LABEL_18:
  v43 = *(v1 + v2);
  if (*(v43 + 16))
  {

    v44 = sub_2371905D4(2019650937, 0xE400000000000000);
    if (v45)
    {
      v46 = *(*(v43 + 56) + 8 * v44);

      v47 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
      v48 = *&v47[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed];
      v49 = v47;
      sub_237183E14(v49, v48);
      v51 = v50;

      v52 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
      [v52 frame];
      v54 = v53;
      [v52 frame];
      v56 = v55;
      [v52 frame];
      [v46 setFrame_];
    }

    else
    {
    }
  }

  else
  {
  }
}

double sub_237184864(float a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
  sub_237183E14(v3, a1);
  v5 = v4;

  return v5;
}

double sub_2371848B8(float a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
  sub_237183E14(v3, a1);
  v5 = v4;

  return v5;
}

float sub_23718490C(double a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis);
  sub_237183B90(v3, a1);
  LODWORD(a1) = v4;

  return *&a1;
}

float sub_237184960(double a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis);
  sub_237183B90(v3, a1);
  LODWORD(a1) = v4;

  return *&a1;
}

id sub_2371849D0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_majorLine;
  v6 = [objc_opt_self() labelColor];
  v7 = [v6 colorWithAlphaComponent_];

  *&v2[v5] = v7;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minorLine] = 0;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine] = 0;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount] = 9;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_minAllowed] = 0;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_maxAllowed] = 1120403456;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min] = 0;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max] = 1120403456;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center] = 1112014848;
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase] = 0;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_clipDisplayToMax] = 1;
  v8 = &v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_unitsLabel];
  *v8 = 0;
  v8[1] = 0;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_abbreviateValues] = 1;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_drawFirstAndLastKOnly] = 0;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_suppressInitialUnit] = 0;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_showActiveArea] = 1;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_suppressLabels] = 0;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_extendToZero] = 0;
  v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_extendHorizontally] = 0;
  v9 = &v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_name];
  *v9 = a1;
  v9[1] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for CAAUGraphView.AxisSetting();
  return objc_msgSendSuper2(&v11, sel_init);
}

void *sub_237184C3C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_fill;
  v11 = objc_opt_self();
  *&v5[v10] = [v11 systemBackgroundColor];
  v12 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_border;
  *&v5[v12] = [v11 labelColor];
  v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges] = 0;
  v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_hideLabels] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_gridPoint] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_gridPointSelected] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_gridPointHighlighted] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_guide] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_guideHighlight] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_widthAreaFill] = 0;
  v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_offsetXLabels] = 0;
  v13 = &v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins];
  *v13 = 0u;
  v13[1] = 0u;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_labelGap] = 0;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_activeWidth] = 0;
  v14 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v15 = type metadata accessor for CAAUGraphView.AxisSetting();
  v16 = objc_allocWithZone(v15);
  *&v5[v14] = sub_2371849D0(88, 0xE100000000000000);
  v17 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  v18 = objc_allocWithZone(v15);
  *&v5[v17] = sub_2371849D0(89, 0xE100000000000000);
  v19 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer;
  *&v5[v19] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v20 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yLabels] = v20;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xGrids] = v20;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yGrids] = v20;
  *&v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas] = MEMORY[0x277D84F98];
  v21 = &v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_editPoint];
  *v21 = 0;
  v21[1] = 0;
  v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_touchDown] = 0;
  v5[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_areasHidden] = 0;
  v26.receiver = v5;
  v26.super_class = type metadata accessor for CAAUGraphView();
  v22 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = *((*MEMORY[0x277D85000] & *v22) + 0x348);
  v24 = v22;
  v23();

  return v24;
}

void *sub_237184F00(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_fill;
  v5 = objc_opt_self();
  *&v2[v4] = [v5 systemBackgroundColor];
  v6 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_border;
  *&v2[v6] = [v5 labelColor];
  v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_animateChanges] = 0;
  v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_hideLabels] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_gridPoint] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_gridPointSelected] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_gridPointHighlighted] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_guide] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_guideHighlight] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_widthAreaFill] = 0;
  v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_offsetXLabels] = 0;
  v7 = &v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins];
  *v7 = 0u;
  v7[1] = 0u;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_labelGap] = 0;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_activeWidth] = 0;
  v8 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v9 = type metadata accessor for CAAUGraphView.AxisSetting();
  v10 = objc_allocWithZone(v9);
  *&v2[v8] = sub_2371849D0(88, 0xE100000000000000);
  v11 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  v12 = objc_allocWithZone(v9);
  *&v2[v11] = sub_2371849D0(89, 0xE100000000000000);
  v13 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v14 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xLabels] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yLabels] = v14;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xGrids] = v14;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yGrids] = v14;
  *&v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas] = MEMORY[0x277D84F98];
  v15 = &v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_editPoint];
  *v15 = 0;
  v15[1] = 0;
  v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_touchDown] = 0;
  v2[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_areasHidden] = 0;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for CAAUGraphView();
  v16 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);
  v17 = v16;
  if (v16)
  {
    v18 = *((*MEMORY[0x277D85000] & *v16) + 0x348);
    v19 = v16;
    v18();
  }

  return v17;
}

id sub_2371851A8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v3 = [a1 layer];
  [v3 contentsScale];
  v5 = v4;

  [v2 setContentsScale_];
  v6 = [objc_opt_self() redColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  [v2 setBackgroundColor_];

  [v2 setHidden_];
  [v2 setZPosition_];
  return v2;
}

void sub_2371853A0(uint64_t a1, void *a2, void *a3)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_areasHidden;
  if ((*(a1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_areasHidden) & 1) == 0)
  {
    if (a2)
    {
      v7 = [objc_opt_self() redColor];
      v8 = [v7 colorWithAlphaComponent_];

      v9 = [v8 CGColor];
      [a2 &selRef:v9 setImage:?];
    }

    if (a3)
    {
      v10 = [objc_opt_self() redColor];
      v11 = [v10 colorWithAlphaComponent_];

      v12 = [v11 CGColor];
      [a3 setBackgroundColor_];
    }

    *(a1 + v3) = 1;
  }
}

uint64_t sub_237185528(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_237115094(0, &qword_27DE94790);
  sub_237114F70();
  v8 = sub_2371966DC();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

id sub_237185640(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2371857FC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2383C6210](a1, a2, v7);
      sub_237115094(0, &qword_27DE94790);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_237115094(0, &qword_27DE94790);
    if (sub_23719689C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2371968AC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2371967CC();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2371967DC();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_237185A20@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v21 = v4;
    v22 = v5;
    v6 = *(a3 + 56) + 152 * result;
    v7 = *(v6 + 16);
    v19[0] = *v6;
    v19[1] = v7;
    v8 = *(v6 + 80);
    v10 = *(v6 + 32);
    v9 = *(v6 + 48);
    v19[4] = *(v6 + 64);
    v19[5] = v8;
    v19[2] = v10;
    v19[3] = v9;
    v12 = *(v6 + 112);
    v11 = *(v6 + 128);
    v13 = *(v6 + 96);
    v20 = *(v6 + 144);
    v19[7] = v12;
    v19[8] = v11;
    v19[6] = v13;
    v14 = *(v6 + 112);
    *(a4 + 96) = *(v6 + 96);
    *(a4 + 112) = v14;
    *(a4 + 128) = *(v6 + 128);
    *(a4 + 144) = *(v6 + 144);
    v15 = *(v6 + 48);
    *(a4 + 32) = *(v6 + 32);
    *(a4 + 48) = v15;
    v16 = *(v6 + 80);
    *(a4 + 64) = *(v6 + 64);
    *(a4 + 80) = v16;
    v17 = *(v6 + 16);
    *a4 = *v6;
    *(a4 + 16) = v17;
    return sub_2371339F0(v19, v18);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_237185B04(uint64_t a1, float a2)
{
  v3 = *(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_logBase);
  if (v3 != 0.0)
  {
    powf(v3, a2);
    return;
  }

  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(*(a1 + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount), 1))
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_237185BE4(char a1, float a2)
{
  v2 = a2;
  if (a1)
  {
    if (a2 >= 1000.0)
    {
      a2 = a2 / 1000.0;
    }

    v3 = floorf(a2 * 100.0) / 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_23719B020;
    v5 = MEMORY[0x277D83B08];
    *(v4 + 56) = MEMORY[0x277D83A90];
    *(v4 + 64) = v5;
    *(v4 + 32) = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D83A90];
    *(v6 + 16) = xmmword_23719B020;
    v8 = MEMORY[0x277D83B08];
    *(v6 + 56) = v7;
    *(v6 + 64) = v8;
    *(v6 + 32) = v2;
  }

  v9 = sub_23719654C();

  return v9;
}

void sub_237185D18(uint64_t a1)
{
  v2 = sub_237181180(a1);
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v2)
  {
    [v2 locationInView_];
    v5 = v7;
    v6 = v8;
  }

  if ((*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_hideLabels) & 1) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins + 16);
  }

  if (v3)
  {
    v9 = v6 + v4;
    if ([*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer) containsPoint_])
    {
      *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_touchDown) = 1;
      v10 = (v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_editPoint);
      *v10 = v5;
      v10[1] = v9;

      sub_237184014(1, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_237185E18(uint64_t a1)
{
  v2 = sub_237181180(a1);
  v3 = v2;
  if (v2)
  {
    [v2 locationInView_];
    v5 = v4;

    sub_237184014(0, v5);
  }

  else
  {
    __break(1u);
  }
}

id sub_237185E8C(uint64_t a1)
{
  result = sub_237181180(a1);
  if (result)
  {
    v3 = result;
    [result locationInView_];

    *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_touchDown) = 0;
    v4 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    for (i = 0; v8; result = [*(*(v5 + 56) + ((v11 << 9) | (8 * v12))) setHidden_])
    {
      v11 = i;
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
    }

    while (1)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++i;
      if (v8)
      {
        i = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237185FBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_237185FC8(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

void sub_23718615C()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = [v4 CGColor];

  [v2 setBorderColor_];
  v6 = [v1 layer];
  v7 = [v3 systemBackgroundColor];
  v8 = [v7 CGColor];

  [v6 setBackgroundColor_];
  v9 = [v1 layer];
  [v9 setBorderWidth_];

  v10 = *&v1[OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks];
  v11 = [v3 tintColor];
  v12 = [v11 colorWithAlphaComponent_];

  v13 = [v12 CGColor];
  [v10 setFillColor_];

  v14 = [v1 layer];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v10 setFrame_];
  v23 = [v1 layer];
  [v23 contentsScale];
  v25 = v24;

  [v10 setContentsScale_];
  v26 = [v3 redColor];
  v27 = [v26 CGColor];

  [v10 setBorderColor_];
  [v10 setBorderWidth_];
  v28 = [v1 layer];
  [v28 addSublayer_];

  v29 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v30 = [v3 labelColor];
  v31 = [v30 colorWithAlphaComponent_];

  v32 = [v31 CGColor];
  [v29 setBackgroundColor_];

  v33 = [v1 layer];
  [v33 __block_descriptor_40_e8_32bs_e45_v24__0___UIRemoteViewController_8__NSError_16ls32l8];

  v34 = OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_lines;
  swift_beginAccess();
  v35 = v29;
  MEMORY[0x2383C5F60]();
  if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();

  v36 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v37 = [v3 labelColor];
  v38 = [v37 colorWithAlphaComponent_];

  v39 = [v38 CGColor];
  v40 = &selRef_effectiveContentSize;
  [v36 setBackgroundColor_];

  v41 = [v1 layer];
  [v41 __block_descriptor_40_e8_32bs_e45_v24__0___UIRemoteViewController_8__NSError_16ls32l8];

  swift_beginAccess();
  v42 = v36;
  MEMORY[0x2383C5F60]();
  if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
    v40 = &selRef_effectiveContentSize;
  }

  sub_23719665C();
  swift_endAccess();

  v43 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v44 = [v3 labelColor];
  v45 = [v44 colorWithAlphaComponent_];

  v46 = [v45 CGColor];
  [v43 v40[406]];

  v47 = [v1 layer];
  [v47 __block_descriptor_40_e8_32bs_e45_v24__0___UIRemoteViewController_8__NSError_16ls32l8];

  swift_beginAccess();
  v48 = v43;
  MEMORY[0x2383C5F60]();
  if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();
  swift_endAccess();
}

void sub_2371867F8()
{
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks];
  v2 = [v0 layer];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame_];
  [v0 bounds];
  Height = CGRectGetHeight(v19);
  v12 = OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_lines;
  swift_beginAccess();
  v13 = *&v0[v12];
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x2383C62A0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v14 = *(v13 + 32);
  }

  v6 = (Height + -2.0) * 0.25;
  v15 = floor(v6 + 1.0) + 0.5;
  [v0 bounds];
  [v14 setFrame_];

  v16 = *&v0[v12];
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x2383C62A0](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_16;
    }

    v17 = *(v16 + 40);
  }

  Height = floor(v6 + v15) + 0.5;
  [v0 bounds];
  [v17 setFrame_];

  v13 = *&v0[v12];
  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v18 = MEMORY[0x2383C62A0](2, v13);

    goto LABEL_10;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v18 = *(v13 + 48);
LABEL_10:
    [v0 bounds];
    [v18 setFrame_];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_237186AA0(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_levels;
  v5 = *(*&v1[OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_levels] + 16);
  [v1 bounds];
  if (CGRectGetWidth(v24) >= v5)
  {
    goto LABEL_6;
  }

  v6 = *&v1[v4];
  if (!*(v6 + 2))
  {
    goto LABEL_32;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_33:
    v6 = sub_237187004(v6);
    v7 = *(v6 + 2);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_34:
    __break(1u);
    return;
  }

  v7 = *(v6 + 2);
  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_5:
  *(v6 + 2) = v7 - 1;
  *&v2[v4] = v6;
LABEL_6:
  v8 = 0.0;
  if (a1 >= 0.0)
  {
    v8 = a1;
  }

  if (a1 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  [v2 frame];
  sub_237187018(0, 0, v9 * (v10 + -2.0));
  path = CGPathCreateMutable();
  [v2 frame];
  a1 = -1.0;
  sub_23719672C();
  v6 = *(*&v2[v4] + 16);
  if (v6)
  {
    [v2 frame];
    if (CGRectGetWidth(v25) + -2.0 >= 1.0)
    {
      v11 = 0;
      v12 = 0;
      v13 = v6 - 1;
      do
      {
        v14 = v11;
        v15 = *&v2[v4];
        v16 = *(v15 + 16);
        if (v14 >= v16)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v17 = v15 + 8 * v14;
        v18 = *(v17 + 32);
        if (v14 + 1 >= v16)
        {
          if (v18 != 0.0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v19 = *(v17 + 40);
          if (v19 != 0.0 || v19 != v18)
          {
LABEL_20:
            [v2 frame];
            v12 = 0;
            goto LABEL_26;
          }
        }

        if ((v12 & 1) == 0)
        {
          [v2 frame];
          v12 = 1;
LABEL_26:
          v6 = path;
          sub_23719674C();
          if (v13 == v14)
          {
            break;
          }

          goto LABEL_27;
        }

        v12 = 1;
        if (v13 == v14)
        {
          break;
        }

LABEL_27:
        [v2 frame];
        Width = CGRectGetWidth(v26);
        v11 = v14 + 1;
      }

      while (Width + -2.0 >= (v14 + 2));
    }
  }

  [v2 frame];
  sub_23719674C();
  CGPathCloseSubpath(path);
  [*&v2[OBJC_IVAR____TtC12CoreAudioKit18AULimiterGraphView_peaks] setPath_];
}

id sub_237186EC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AULimiterGraphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_237186F8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2371969FC();
  }

  return sub_23719695C();
}

unint64_t sub_237187018(unint64_t result, uint64_t a2, double a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_237189FD8(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_2371870EC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_2371870EC(unint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_2371871AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView;
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView];
  v4 = *&v1[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_v3AU];
  v5 = *&v3[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_auAudioUnit];
  *&v3[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_auAudioUnit] = v4;
  v6 = v4;
  v7 = v3;

  sub_2371241A8();
  v8 = *&v1[v2];
  v12[3] = type metadata accessor for AUDistortionViewController();
  v12[4] = &off_284A3AF60;
  v12[0] = v1;
  v9 = OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_parameterDataSource;
  swift_beginAccess();
  v10 = v8;
  v11 = v1;
  sub_23718A218(v12, v8 + v9);
  swift_endAccess();
}

void sub_237187290()
{
  v1 = v0;
  v233.receiver = v0;
  v233.super_class = type metadata accessor for AUDistortionViewController();
  objc_msgSendSuper2(&v233, sel_viewDidLoad);
  v2 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView;
  v3 = *&v0[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView];
  v4 = [v1 view];
  if (!v4)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v234.origin.x = v7;
  v234.origin.y = v9;
  v234.size.width = v11;
  v234.size.height = v13;
  Width = CGRectGetWidth(v234);
  v15 = [v1 view];
  if (!v15)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v235.origin.x = v18;
  v235.origin.y = v20;
  v235.size.width = v22;
  v235.size.height = v24;
  [v3 setFrame_];

  v218 = v1;
  v220 = v2;
  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = 0;
  v224 = MEMORY[0x277D84F90];
  v26 = &unk_284A39808;
  v27 = &unk_284A39798;
  v28 = MEMORY[0x277D837D0];
  v29 = &selRef_effectiveContentSize;
  do
  {
    v30 = sub_23719653C();
    v31 = objc_opt_self();
    v32 = [v31 v29[183]];

    if (!v32)
    {
      swift_arrayDestroy();
      goto LABEL_5;
    }

    v225 = v27;

    v33 = sub_23719653C();

    swift_arrayDestroy();
    v34 = sub_23719653C();

    v35 = sub_23719653C();
    v36 = v28;
    v37 = [v32 localizedStringForKey:v33 value:v34 table:v35];

    v29 = &selRef_effectiveContentSize;
    v38 = sub_23719657C();
    v40 = v39;

    v41 = sub_23719653C();
    v42 = [v31 bundleWithIdentifier_];

    if (!v42)
    {

LABEL_22:
      v28 = v36;
      v27 = v225;
      goto LABEL_5;
    }

    v221 = v38;

    swift_arrayDestroy();
    v43 = objc_opt_self();
    v44 = v42;
    v45 = [v43 currentTraitCollection];
    v46 = sub_23719653C();

    v47 = [objc_opt_self() colorNamed:v46 inBundle:v44 compatibleWithTraitCollection:v45];

    if (!v47)
    {

      v29 = &selRef_effectiveContentSize;
      goto LABEL_22;
    }

    v230[0] = 1701667150;
    v230[1] = 0xE400000000000000;
    v230[2] = v221;
    v230[3] = v40;
    v230[5] = v36;
    v231[0] = 0x726F6C6F43;
    v231[1] = 0xE500000000000000;
    v48 = sub_237115094(0, &qword_27DE94788);
    v231[2] = v47;
    v231[5] = v48;
    v232[0] = 0x6567616D49;
    v232[1] = 0xE500000000000000;
    v49 = v47;
    v50 = sub_23719653C();
    v51 = [v31 bundleWithIdentifier_];

    v52 = [v43 currentTraitCollection];
    v53 = sub_23719653C();

    v54 = [objc_opt_self() imageNamed:v53 inBundle:v51 compatibleWithTraitCollection:v52];

    v232[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE953F8);
    v232[2] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94898);
    v55 = sub_237196A2C();

    sub_23714D4D0(v230, &v227);
    v56 = v227;
    v57 = v228;
    v58 = sub_2371905D4(v227, v228);
    v27 = v225;
    if (v59)
    {
      goto LABEL_44;
    }

    v60 = v55 + 8;
    *(v55 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v58;
    v61 = (v55[6] + 16 * v58);
    *v61 = v56;
    v61[1] = v57;
    sub_23711BDA4(v229, (v55[7] + 32 * v58));
    v62 = v55[2];
    v63 = __OFADD__(v62, 1);
    v64 = v62 + 1;
    if (v63)
    {
      goto LABEL_45;
    }

    v55[2] = v64;
    sub_23714D4D0(v231, &v227);
    v65 = v227;
    v66 = v228;
    v67 = sub_2371905D4(v227, v228);
    if (v68)
    {
      goto LABEL_44;
    }

    *(v60 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
    v69 = (v55[6] + 16 * v67);
    *v69 = v65;
    v69[1] = v66;
    sub_23711BDA4(v229, (v55[7] + 32 * v67));
    v70 = v55[2];
    v63 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v63)
    {
      goto LABEL_45;
    }

    v55[2] = v71;
    sub_23714D4D0(v232, &v227);
    v72 = v227;
    v73 = v228;
    v74 = sub_2371905D4(v227, v228);
    if (v75)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    *(v60 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
    v76 = (v55[6] + 16 * v74);
    *v76 = v72;
    v76[1] = v73;
    sub_23711BDA4(v229, (v55[7] + 32 * v74));
    v77 = v55[2];
    v63 = __OFADD__(v77, 1);
    v78 = v77 + 1;
    if (v63)
    {
      goto LABEL_45;
    }

    v55[2] = v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v224 = sub_23718995C(0, v224[2] + 1, 1, v224);
    }

    v29 = &selRef_effectiveContentSize;
    v28 = MEMORY[0x277D837D0];
    v80 = v224[2];
    v79 = v224[3];
    if (v80 >= v79 >> 1)
    {
      v224 = sub_23718995C((v79 > 1), v80 + 1, 1, v224);
    }

    v224[2] = v80 + 1;
    v224[v80 + 4] = v55;
LABEL_5:
    ++v25;
    v26 += 16;
    v27 += 16;
  }

  while (v25 != 5);
  v81 = objc_allocWithZone(type metadata accessor for AUVerticalTabView());

  v83 = sub_237122118(v82, 1, 0.0, 0.0, 200.0, 400.0);
  v84 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_tabView;
  v85 = v218;
  v86 = *&v218[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_tabView];
  *&v218[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_tabView] = v83;
  v87 = v83;

  [v87 setTranslatesAutoresizingMaskIntoConstraints_];
  v226 = v84;
  v88 = *&v218[v84];
  if (v88)
  {
    v89 = [v88 layer];
    v90 = [objc_opt_self() labelColor];
    v91 = [v90 CGColor];

    [v89 setBorderColor_];
  }

  v92 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_headerView;
  v93 = *&v218[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_headerView];
  v94 = [v218 view];
  if (!v94)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v95 = v94;
  [v94 frame];
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;

  v236.origin.x = v97;
  v236.origin.y = v99;
  v236.size.width = v101;
  v236.size.height = v103;
  [v93 setFrame_];

  v222 = v92;
  [*&v218[v92] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_23718902C();
  v104 = [v218 view];
  if (!v104)
  {
    goto LABEL_49;
  }

  v105 = v104;
  [v104 bounds];
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;

  v114 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v115 = [v114 layer];
  v116 = objc_opt_self();
  v117 = [v116 secondaryLabelColor];
  v118 = [v117 CGColor];

  [v115 setBorderColor_];
  v119 = [v114 layer];
  [v119 setBorderWidth_];

  [v114 &selRef:0 bundleWithIdentifier:? + 2];
  v120 = [v218 view];
  if (!v120)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v121 = v120;
  [v120 addSubview_];

  v122 = sub_23719653C();
  v123 = [objc_opt_self() bundleWithIdentifier_];

  v124 = objc_opt_self();
  v125 = v123;
  v126 = [v124 currentTraitCollection];
  v127 = sub_23719653C();
  v128 = [v116 colorNamed:v127 inBundle:v125 compatibleWithTraitCollection:v126];

  v217 = v125;
  if (!v128)
  {
    v128 = [v116 systemBackgroundColor];
  }

  v129 = [v114 layer];
  v216 = v128;
  v130 = [v128 CGColor];
  [v129 setBackgroundColor_];

  v131 = *&v218[v222];
  type metadata accessor for AUAppleViewControllerBase();
  v132 = v131;
  v133 = sub_237175EDC();
  v135 = v134;
  v136 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v137 = *&v132[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v138 = sub_23719653C();
  [v137 setText_];

  [*&v132[v136] setAccessibilityTraits_];
  v139 = *&v132[v136];
  v140 = sub_23719653C();
  [v139 setAccessibilityLabel_];

  v141 = &v132[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v141 = v133;
  v141[1] = v135;

  [v114 addSubview_];
  v142 = *&v218[v226];
  v143 = &off_23719A000;
  if (v142)
  {
    v144 = v142;
    [v114 &selRef_getHostCallbackInfo];
    v145 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_23719AB20;
    v147 = [v144 widthAnchor];
    v148 = [v147 constraintEqualToConstant_];

    *(v146 + 32) = v148;
    v149 = [v144 0x1FBB445BALL];

    v150 = [v149 constraintEqualToConstant_];
    *(v146 + 40) = v150;
    v151 = [v144 trailingAnchor];

    v152 = [v114 trailingAnchor];
    v153 = [v151 0x1FBB28F65];

    *(v146 + 48) = v153;
    v154 = [v144 topAnchor];

    v155 = [v114 topAnchor];
    v156 = [v154 0x1FBB28F65];

    *(v146 + 56) = v156;
    v85 = v218;
    sub_237115094(0, &qword_27DE94CC0);
    v157 = sub_23719661C();

    v158 = v145;
    v143 = &off_23719A000;
    [v158 activateConstraints_];
  }

  [v114 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v159 = swift_allocObject();
  v223 = *(v143 + 178);
  *(v159 + 16) = v223;
  v160 = [v114 leadingAnchor];
  v161 = [v85 view];
  if (!v161)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v162 = v161;
  v163 = [v161 leadingAnchor];

  v164 = [v160 0x1FBB28F65];
  *(v159 + 32) = v164;
  v165 = [v114 trailingAnchor];
  v166 = [v85 view];
  if (!v166)
  {
    goto LABEL_52;
  }

  v167 = v166;
  v168 = [v166 trailingAnchor];

  v169 = [v165 0x1FBB28F65];
  *(v159 + 40) = v169;
  v170 = [v114 &off_278A25950];
  v171 = [v85 view];
  if (v171)
  {
    v172 = v171;
    v173 = [v171 &off_278A25950];

    v174 = [v170 0x1FBB28F65];
    *(v159 + 48) = v174;
    v175 = [v114 bottomAnchor];
    v176 = [v85 view];
    if (!v176)
    {
      goto LABEL_54;
    }

    v177 = v176;
    v178 = v85;

    v219 = objc_opt_self();
    v179 = [v177 &selRef_setNeedsDisplayInRect_ + 5];

    v180 = [v175 0x1FBB28F65];
    *(v159 + 56) = v180;
    sub_237115094(0, &qword_27DE94CC0);
    v181 = sub_23719661C();

    [v219 activateConstraints_];

    v182 = swift_allocObject();
    *(v182 + 16) = v223;
    v183 = [*&v178[v222] leadingAnchor];
    v184 = [v114 leadingAnchor];
    v185 = [v183 0x1FBB28F65];

    *(v182 + 32) = v185;
    v186 = [*&v178[v222] trailingAnchor];
    v187 = [v114 trailingAnchor];
    v188 = [v186 0x1FBB28F65];

    *(v182 + 40) = v188;
    v189 = [*&v178[v222] topAnchor];
    v190 = [v114 &off_278A25950];
    v191 = [v189 0x1FBB28F65];

    *(v182 + 48) = v191;
    v192 = [*&v178[v222] heightAnchor];
    v193 = [v192 constraintEqualToConstant_];

    *(v182 + 56) = v193;
    v194 = sub_23719661C();

    [v219 activateConstraints_];

    v195 = swift_allocObject();
    *(v195 + 16) = v223;
    v196 = [*&v178[v220] leadingAnchor];
    v197 = [v114 leadingAnchor];
    v198 = [v196 0x1FBB28F65];

    *(v195 + 32) = v198;
    v199 = [*&v178[v220] trailingAnchor];
    v200 = [v114 trailingAnchor];
    v201 = [v199 0x1FBB28F65];

    *(v195 + 40) = v201;
    v202 = [*&v178[v220] topAnchor];
    v203 = [*&v178[v222] bottomAnchor];
    v204 = [v202 0x1FBB28F65];

    *(v195 + 48) = v204;
    v205 = [*&v178[v220] bottomAnchor];
    v206 = [v114 bottomAnchor];
    v207 = [v205 0x1FBB28F65];

    *(v195 + 56) = v207;
    v208 = sub_23719661C();

    [v219 activateConstraints_];

    v209 = *&v178[v226];
    if (v209)
    {
      *&v209[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_maxTabDimension] = 0x4049000000000000;
      v210 = v216;
      if (*&v209[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension] > 50.0)
      {
        *&v209[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabDimension] = 0x4049000000000000;
      }

      v211 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex;
      v212 = *&v209[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex];
      *&v209[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex] = 0;
      v213 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
      swift_beginAccess();
      v214 = *(*&v209[v213] + 16);
      v215 = v209;
      if (v214)
      {
        sub_237122A10();
      }

      else
      {

        *&v209[v211] = v212;
        v210 = v215;
      }
    }

    else
    {

      v210 = v217;
    }

    return;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_23718896C()
{
  [*(v0 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView) removeFromSuperview];
  v1 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = AUListenerDispose(v2);
    if (v3 != sub_2371964DC())
    {
      sub_237176A9C(0xD00000000000001BLL, 0x800000023719EF90, v3);
    }
  }

  *(v0 + v1) = 0;
}

void sub_237188AF4()
{
  v1 = v0;
  v2 = sub_23719641C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23719630C();
  if (v7)
  {
    v8 = v7;
    v18 = 0x6F697463656C6573;
    v19 = 0xE90000000000006ELL;
    sub_23719690C();
    if (*(v8 + 16) && (v9 = sub_237190728(v20), (v10 & 1) != 0))
    {
      sub_237114D0C(*(v8 + 56) + 32 * v9, v21);
      sub_237114F1C(v20);

      if (swift_dynamicCast())
      {
        v11 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView);
        v12 = *&v11[OBJC_IVAR____TtC12CoreAudioKit16AUDistortionView_collectionView];
        if (v12)
        {
          v13 = v18;
          v14 = v11;
          v15 = v12;
          MEMORY[0x2383C5D40](v13, 0);
          v16 = sub_2371963AC();
          (*(v3 + 8))(v6, v2);
          [v15 scrollToItemAtIndexPath:v16 atScrollPosition:1 animated:1];
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {

      sub_237114F1C(v20);
    }
  }
}

void sub_237188D08()
{
  v1 = v0;
  v2 = sub_23719630C();
  if (v2)
  {
    v3 = v2;
    sub_23719690C();
    if (!*(v3 + 16))
    {
      goto LABEL_13;
    }

    v4 = sub_237190728(v14);
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_237114D0C(*(v3 + 56) + 32 * v4, v15);
    sub_237114F1C(v14);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    sub_23719690C();
    if (*(v3 + 16) && (v6 = sub_237190728(v14), (v7 & 1) != 0))
    {
      sub_237114D0C(*(v3 + 56) + 32 * v6, v15);
      sub_237114F1C(v14);

      if (swift_dynamicCast())
      {
        if ((1937207154 * 0x736E6D756C6F63) >> 64 == -1)
        {
          v8 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_tabView);
          if (v8)
          {
            *&v8[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_numActiveTabs] = 1;
            v9 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex;
            v10 = *&v8[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex];
            if (v10 < 0)
            {
              *&v8[OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_selectedTabIndex] = 1;
              v11 = OBJC_IVAR____TtC12CoreAudioKit17AUVerticalTabView_tabs;
              swift_beginAccess();
              if (*(*&v8[v11] + 16) > 1uLL)
              {
                v12 = v8;
                sub_237122A10();
LABEL_18:
                sub_237122A10();

                return;
              }

              *&v8[v9] = v10;
            }

            v13 = v8;
            goto LABEL_18;
          }
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
LABEL_13:

      sub_237114F1C(v14);
    }
  }
}

uint64_t sub_237188F3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_23719631C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_23718902C()
{
  v1 = v0;
  v16 = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  v3 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  result = swift_beginAccess();
  v5 = 0;
  inRunLoopMode = *MEMORY[0x277CBE738];
  do
  {
    v9 = *&v1[v2];
    if (v9)
    {
      v10 = *(&unk_284A39AC0 + v5 + 32);
      v11 = *&v1[v3];
      if (!v11)
      {
        v12 = CFRunLoopGetCurrent();
        swift_beginAccess();
        v13 = AUEventListenerCreate(sub_237176350, v1, v12, inRunLoopMode, 0.05, 0.05, &v1[v3]);
        swift_endAccess();

        if (v13 != sub_2371964DC())
        {
          *&inEvent.mEventType = 0;
          inEvent.mArgument.mParameter.mAudioUnit = 0xE000000000000000;
          sub_23719693C();

          *&inEvent.mEventType = 0xD00000000000002BLL;
          inEvent.mArgument.mParameter.mAudioUnit = 0x800000023719EAE0;
          v6 = sub_237196A5C();
          MEMORY[0x2383C5F20](v6);

          v7 = *&inEvent.mEventType;
          mAudioUnit = inEvent.mArgument.mParameter.mAudioUnit;
LABEL_3:
          sub_237176A9C(v7, mAudioUnit, v13);

          goto LABEL_4;
        }

        v11 = *&v1[v3];
      }

      inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
      inEvent.mArgument.mParameter.mAudioUnit = v9;
      *&inEvent.mArgument.mProperty.mPropertyID = v10;
      if (!v11)
      {
        __break(1u);
      }

      sub_2371964DC();
      inEvent.mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
      v13 = AUEventListenerAddEventType(v11, v1, &inEvent);
      if (v13 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
        v13 = AUEventListenerAddEventType(v11, v1, &inEvent);
      }

      if (v13 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
        v13 = AUEventListenerAddEventType(v11, v1, &inEvent);
      }

      result = sub_2371964DC();
      if (v13 != result)
      {
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD00000000000002DLL, 0x800000023719EB10);
        type metadata accessor for AudioUnitParameter(0);
        sub_2371969CC();
        v7 = 0;
        mAudioUnit = 0xE000000000000000;
        goto LABEL_3;
      }
    }

LABEL_4:
    v5 += 4;
  }

  while (v5 != 64);
  return result;
}

uint64_t sub_23718931C(uint64_t result, AudioUnitParameterValue a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v3)
  {
    v5 = result;
    inParameter.mAudioUnit = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
    inParameter.mScope = 0;
    inParameter.mElement = 0;
    inParameter.mParameterID = result;
    v6 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    v7 = AUParameterSet(*&v2[v6], v2, &inParameter, a2, 0);
    result = sub_2371964DC();
    if (v7 == result)
    {
      outValue = 0.0;
      result = AudioUnitGetParameter(v3, v5, 0, 0, &outValue);
      if (outValue != a2)
      {
        v8 = result;
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD000000000000019, 0x800000023719FA10);
        v9 = sub_237196A5C();
        MEMORY[0x2383C5F20](v9);

        MEMORY[0x2383C5F20](8237, 0xE200000000000000);
        sub_2371966AC();
        MEMORY[0x2383C5F20](0xD000000000000023, 0x800000023719FA30);
        sub_2371966AC();
        sub_237176A9C(0, 0xE000000000000000, v8);
      }
    }
  }

  return result;
}

void sub_237189510(int a1, int a2, int a3, uint64_t inID)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    outValue = 0.0;
    v6 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
    if (v6)
    {
      AudioUnitGetParameter(v6, inID, 0, 0, &outValue);
      sub_2371964DC();
      v7 = outValue;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = *(v4 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView);
    sub_237125904(inID, v7);
  }
}

id sub_2371895D0()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_headerView;
  type metadata accessor for CAAdjustingHeaderView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_tabView] = 0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView;
  type metadata accessor for AUDistortionView();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_v3AU] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for AUDistortionViewController();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_237189698(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_headerView;
  type metadata accessor for CAAdjustingHeaderView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_tabView] = 0;
  v4 = OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView;
  type metadata accessor for AUDistortionView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_v3AU] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AUDistortionViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_23718978C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_v3AU);
}

id sub_2371897EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUDistortionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_2371898B0(AudioUnitParameterID inID)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  outValue = 0.0;
  v4 = *(v3 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (!v4)
  {
    return 0.0;
  }

  AudioUnitGetParameter(v4, inID, 0, 0, &outValue);
  sub_2371964DC();
  *&result = outValue;
  return result;
}

void *sub_23718995C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE957F0);
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
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE957F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_237189A90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95810);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_237189BB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_237189CD8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95818);
  v10 = *(sub_23719641C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23719641C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_237189EB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_237189FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95808);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_23718A0DC()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = sub_23719653C();
  [v2 addObserver:v0 selector:sel_tabSelectionChangedWithNotification_ name:v3 object:*(v0 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_tabView)];

  v4 = [v1 defaultCenter];
  v5 = sub_23719653C();
  [v4 addObserver:v0 selector:sel_layoutChangedWithNotification_ name:v5 object:*(v0 + OBJC_IVAR____TtC12CoreAudioKit26AUDistortionViewController_distortionView)];
}

uint64_t sub_23718A218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94C30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_23718A288@<D0>(unsigned int a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2371906E0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    *&v15[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2371928BC();
      v9 = *&v15[0];
    }

    memmove(a2, (*(v9 + 56) + 152 * v7), 0x98uLL);
    sub_23718DC38(v7, v9);
    *v3 = v9;
    nullsub_1(a2);
  }

  else
  {
    sub_237185FC8(v15);
    v11 = v15[7];
    a2[6] = v15[6];
    a2[7] = v11;
    a2[8] = v15[8];
    *(a2 + 18) = v16;
    v12 = v15[3];
    a2[2] = v15[2];
    a2[3] = v12;
    v13 = v15[5];
    a2[4] = v15[4];
    a2[5] = v13;
    result = *v15;
    v14 = v15[1];
    *a2 = v15[0];
    a2[1] = v14;
  }

  return result;
}

double sub_23718A36C@<D0>(unsigned int a1@<W0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2371906E0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2371925F4();
      v9 = v11;
    }

    sub_23711BDA4((*(v9 + 56) + 32 * v7), a2);
    sub_23718DAC4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_23718A460(char a1)
{
  *(v1 + 40) = a1;
  v2 = *v1;
  v3 = sel_tag;
  if ((a1 & 1) == 0)
  {
LABEL_7:
    v7 = *(v1 + 24);
    v8 = [v2 v3];
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8 < *(v7 + 16))
      {

        v9 = sub_23719653C();

        [v2 setTitle:v9 forState:0];

        v10 = [v2 tag];
        if ((v10 & 0x8000000000000000) == 0)
        {
          if (v10 < *(v7 + 16))
          {
            goto LABEL_11;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v4 = *(v1 + 32);
  v5 = [*v1 tag];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v1 = sub_23719653C();

  [v2 setTitle:v1 forState:0];

  v6 = [v2 tag];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 >= *(v4 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:

  v11 = sub_23719653C();

  [v2 setTitle:v11 forState:2];
}

char *sub_23718A61C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl];
  v10 = type metadata accessor for CAAUNBandEQHeaderView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 25) = 0u;
  v17.receiver = v4;
  v17.super_class = v10;
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = *&v13[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack];
  [v15 setSpacing_];

  return v13;
}

uint64_t sub_23718A7D0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  v7 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v8 = *(a3 + 16);
  if (v8)
  {
    sub_237115094(0, &qword_27DE950C8);
    v13 = 0;
    v14 = (a3 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v17 = swift_allocObject();
      v17[2] = a4;
      v17[3] = v13;
      v17[4] = a5;
      v17[5] = a6;
      v17[6] = v16;
      v17[7] = v15;
      swift_bridgeObjectRetain_n();
      v18 = a4;
      swift_unknownObjectRetain();
      v19 = sub_2371967EC();
      MEMORY[0x2383C5F60](v19, v20, v21, v22, v23);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      ++v13;
      sub_23719665C();

      v14 += 2;
    }

    while (v8 != v13);
    v6 = a1;
    v7 = v27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23719B030;
  if (v7 >> 62)
  {
    sub_237115094(0, &qword_27DE950C0);

    sub_2371969EC();
  }

  else
  {

    sub_237196A8C();
    sub_237115094(0, &qword_27DE950C0);
  }

  sub_237115094(0, &qword_27DE94D10);
  *(v24 + 32) = sub_2371967BC();
  v6(v24);
}

uint64_t sub_23718AA90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = (a2 + OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl);
  swift_beginAccess();
  v8 = *v7;
  if (*v7 && (v9 = a3, sub_23712D680(*v7), v10 = v8, sub_23712D610(v8), [v10 setTag_], v10, (v11 = *v7) != 0))
  {
    swift_unknownObjectRetain();
    sub_23712D680(v11);
    v12 = v11;
    sub_23712D610(v11);
    v25[0] = v12;
    a3 = v9;
    sub_237115094(0, &qword_27DE95828);
    v13 = sub_237196A6C();
  }

  else
  {
    swift_unknownObjectRetain();
    v13 = 0;
  }

  [a4 performSelector:a5 withObject:v13];
  swift_unknownObjectRelease();
  v14 = a4;
  v15 = *v7;
  if (*v7)
  {
    sub_23712D680(*v7);
    v16 = v15;
    sub_23712D610(v15);
    v17 = sub_23719653C();
    [v16 setTitle:v17 forState:0];

    v18 = *v7;
    if (*v7)
    {
      sub_23712D680(v18);
      v19 = v18;
      sub_23712D610(v18);
      v20 = sub_23719653C();
      [v19 setTitle:v20 forState:2];
    }
  }

  v22 = sub_23718A400();
  if (*v21)
  {
    v21[2] = a3;
  }

  return (v22)(v25, 0);
}

uint64_t sub_23718AD74(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, float a9, float a10, float a11, float a12, double a13, uint64_t a14)
{
  objc_opt_self();
  v204 = swift_dynamicCastObjCClassUnconditional();
  v23 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v24 = a7;
  v192 = [v23 initWithFrame_];
  [v192 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v26 = objc_opt_self();
  v27 = v25;
  v200 = v26;
  v28 = [v26 systemFontOfSize_];
  [v27 setFont_];

  [v27 setTextAlignment_];
  [v27 setAdjustsFontSizeToFitWidth_];
  [v27 setAllowsDefaultTighteningForTruncation_];
  [v27 setMinimumScaleFactor_];
  v29 = v27;
  [v29 setBaselineAdjustment_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v205 = a2;
  v197 = a3;
  v30 = sub_23719653C();
  [v29 setText_];

  LODWORD(v31) = 1112014848;
  [v29 setContentHuggingPriority:0 forAxis:v31];
  LODWORD(v32) = 1144750080;
  [v29 setContentCompressionResistancePriority:0 forAxis:v32];
  v33 = type metadata accessor for CAAUEQHeaderView.AUAccessibleTextField();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = a10;
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = a11;
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = a12;
  v264.receiver = v34;
  v264.super_class = v33;
  v35 = objc_msgSendSuper2(&v264, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
  v36 = *MEMORY[0x277D765B0];
  v37 = *MEMORY[0x277D76538];
  if (!*MEMORY[0x277D765B0])
  {
    if (!v37)
    {
      v36 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v36 |= v37;
    goto LABEL_7;
  }

  if ((v37 & ~v36) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v38 = v35;
  [v38 setAccessibilityTraits_];
  [v38 setSecureTextEntry_];
  v39 = v38;
  v40 = [v26 systemFontOfSize_];
  [v39 setFont_];

  v41 = v39;
  [v41 setTextAlignment_];
  v42 = [objc_opt_self() systemBackgroundColor];
  [v41 setBackgroundColor_];

  [v41 setClearButtonMode_];
  [v41 setEnablesReturnKeyAutomatically_];
  [v41 setAdjustsFontSizeToFitWidth_];
  [v41 setMinimumFontSize_];
  *&v41[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = a10;
  *&v41[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = a11;
  *&v41[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = a12;
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  [v41 setReturnKeyType_];
  [v41 setContentVerticalAlignment_];
  [v41 setEnabled_];

  v43 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v44 = a9;
  v45 = [v43 initWithFloat_];
  v46 = [v204 stringFromNumber_];

  [v41 setText_];
  [v41 setTag_];

  v47 = sub_23719653C();
  v48 = [objc_opt_self() bundleWithIdentifier_];

  v194 = v48;
  v202 = a1;
  if (!v48)
  {
    goto LABEL_10;
  }

  v50 = v48;
  sub_23719634C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_23719B040;
  v52 = [v41 text];
  if (v52)
  {
    v53 = v52;
    v54 = sub_23719657C();
    v56 = v55;

    v57 = MEMORY[0x277D837D0];
    *(v51 + 56) = MEMORY[0x277D837D0];
    v58 = sub_237115040();
    *(v51 + 32) = v54;
    *(v51 + 40) = v56;
    *(v51 + 96) = v57;
    *(v51 + 104) = v58;
    *(v51 + 64) = v58;
    *(v51 + 72) = a8;
    *(v51 + 80) = a14;

    sub_23719659C();

    v59 = sub_23719653C();

    [v41 setAccessibilityValue_];

LABEL_10:
    LODWORD(v49) = 1144750080;
    [v41 setContentCompressionResistancePriority:0 forAxis:v49];
    LODWORD(v60) = 1144750080;
    [v41 setContentHuggingPriority:0 forAxis:v60];
    v61 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v62 = [v200 systemFontOfSize_];
    [v61 setFont_];

    [v61 setTextAlignment_];
    [v61 setAdjustsFontSizeToFitWidth_];
    [v61 setAllowsDefaultTighteningForTruncation_];
    [v61 setAdjustsFontSizeToFitWidth_];
    [v61 setMinimumScaleFactor_];
    v63 = v61;
    [v63 setBaselineAdjustment_];
    [v63 setTranslatesAutoresizingMaskIntoConstraints_];
    v64 = sub_23719653C();
    [v63 setText_];

    LODWORD(v65) = 1148846080;
    [v63 setContentHuggingPriority:0 forAxis:v65];
    LODWORD(v66) = 1132068864;
    [v63 setContentCompressionResistancePriority:0 forAxis:v66];
    [v63 setAccessibilityElementsHidden_];

    [v192 addSubview_];
    [v192 addSubview_];
    [v192 addSubview_];

    v300 = v192;
    v301 = v29;
    v302 = v63;
    v303 = v41;
    v304 = a1;
    v305 = a9;
    v306 = a10;
    v307 = a11;
    v308 = v205;
    v309 = v197;
    v310 = a4;
    v311 = a5;
    v312 = a6;
    v313 = v204;
    v314 = 0;
    v315 = a13;
    v316 = 0;
    v317 = 0;
    v319 = v266;
    v318 = v265;
    v322 = 0;
    v320 = 0;
    v321 = 0;
    v67 = a6;

    sub_2371377FC();
    v277 = v192;
    v278 = v29;
    v279 = v63;
    v280 = v41;
    v281 = a1;
    v282 = a9;
    v283 = a10;
    v284 = a11;
    v285 = v205;
    v286 = v197;
    v287 = a4;
    v288 = a5;
    v289 = a6;
    v290 = v204;
    v291 = 0;
    v292 = a13;
    v293 = 0;
    v294 = 0;
    v296 = v266;
    v295 = v265;
    v299 = 0;
    v297 = 0;
    v298 = 0;
    v323[0] = 0;
    v68 = v192;
    sub_237137C10();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = [v68 widthAnchor];

    v76 = [v75 constraintEqualToConstant_];
    sub_237120D04(v323, &qword_27DE94E80);
    [v76 setActive_];
    v253 = MEMORY[0x277D84F90];
    v193 = v68;
    *&v254 = v68;
    *(&v254 + 1) = v29;
    *&v255 = v63;
    *(&v255 + 1) = v41;
    *&v256 = __PAIR64__(LODWORD(a9), a1);
    v77 = &v254;
    *(&v256 + 1) = __PAIR64__(LODWORD(a11), LODWORD(a10));
    *&v257 = v205;
    *(&v257 + 1) = v197;
    *&v258 = a4;
    *(&v258 + 1) = a5;
    *&v259 = a6;
    *(&v259 + 1) = v204;
    v196 = v76;
    *&v260 = v76;
    *(&v260 + 1) = a13;
    *&v261 = 0;
    WORD4(v261) = 0;
    HIWORD(v261) = v266;
    *(&v261 + 10) = v265;
    *&v262 = v72;
    *(&v262 + 1) = v70;
    v263 = v74;
    v78 = objc_allocWithZone(MEMORY[0x277D750A0]);
    v273 = v260;
    v274 = v261;
    v275 = v262;
    v276 = v263;
    v269 = v256;
    v270 = v257;
    v271 = v258;
    v272 = v259;
    v267 = v254;
    v268 = v255;
    sub_2371339F0(&v254, v234);
    sub_2371339F0(&v254, v234);
    v79 = v29;
    v80 = v41;
    v81 = v63;
    v82 = [v78 initWithAccessibilityContainer_];
    swift_unknownObjectRelease();
    sub_237133A4C(&v254);
    *&v267 = 0;
    *(&v267 + 1) = 0xE000000000000000;
    v83 = [v79 text];
    if (v83)
    {
      v84 = v83;
      v85 = sub_23719657C();
      v87 = v86;

      MEMORY[0x2383C5F20](v85, v87);

      MEMORY[0x2383C5F20](8236, 0xE200000000000000);
      v88 = [v80 text];
      if (v88)
      {
        v89 = v88;
        v187 = v72;
        v188 = v74;
        v189 = v70;
        v190 = a9;
        v191 = __PAIR64__(LODWORD(a11), LODWORD(a10));
        v201 = a13;
        v90 = sub_23719657C();
        v92 = v91;

        MEMORY[0x2383C5F20](v90, v92);

        MEMORY[0x2383C5F20](8236, 0xE200000000000000);
        v93 = [v81 text];
        if (v93)
        {
          v94 = v93;
          v95 = sub_23719657C();
          v97 = v96;

          MEMORY[0x2383C5F20](v95, v97);

          v98 = sub_23719653C();

          [v82 setAccessibilityLabel_];

          [v79 frame];
          v100 = v99;
          v102 = v101;
          v104 = v103;
          v106 = v105;

          [v80 frame];
          v108 = v107;
          v110 = v109;
          v112 = v111;
          v114 = v113;

          v324.origin.x = v100;
          v324.origin.y = v102;
          v324.size.width = v104;
          v324.size.height = v106;
          v328.origin.x = v108;
          v328.origin.y = v110;
          v328.size.width = v112;
          v328.size.height = v114;
          v325 = CGRectUnion(v324, v328);
          x = v325.origin.x;
          y = v325.origin.y;
          width = v325.size.width;
          height = v325.size.height;
          [v81 frame];
          v120 = v119;
          v122 = v121;
          v124 = v123;
          v126 = v125;

          v326.origin.x = x;
          v326.origin.y = y;
          v326.size.width = width;
          v326.size.height = height;
          v329.origin.x = v120;
          v329.origin.y = v122;
          v329.size.width = v124;
          v329.size.height = v126;
          v327 = CGRectUnion(v326, v329);
          [v82 setAccessibilityFrameInContainerSpace_];
          v127 = v82;
          MEMORY[0x2383C5F60]();
          if (*((v253 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v253 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_38;
          }

          while (1)
          {
            sub_23719665C();

            *&v267 = v193;
            *(&v267 + 1) = v79;
            *&v268 = v81;
            *(&v268 + 1) = v80;
            *&v269 = __PAIR64__(LODWORD(v190), v202);
            *(&v269 + 1) = v191;
            *&v270 = v205;
            *(&v270 + 1) = v197;
            *&v271 = a4;
            *(&v271 + 1) = a5;
            *&v272 = a6;
            *(&v272 + 1) = v204;
            *&v273 = v196;
            *(&v273 + 1) = v201;
            *&v274 = 0;
            WORD4(v274) = 0;
            HIWORD(v274) = v266;
            *(&v274 + 10) = *(v77 + 170);
            *&v275 = v187;
            *(&v275 + 1) = v189;
            v276 = v188;
            v234[0] = v193;
            v234[1] = v79;
            v234[2] = v81;
            v234[3] = v80;
            v235 = v202;
            v236 = v190;
            v237 = v191;
            v238 = v205;
            v239 = v197;
            v240 = a4;
            v241 = a5;
            v242 = a6;
            v243 = v204;
            v244 = v196;
            v245 = v201;
            v246 = 0;
            v247 = 0;
            v249 = v266;
            v248 = *(v77 + 170);
            v250 = v187;
            v251 = v189;
            v252 = v188;
            sub_2371339F0(&v267, &__dst);
            sub_237133A4C(v234);
            v81 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
            swift_beginAccess();
            sub_2371339F0(&v267, &__dst);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&__dst = *&v81[v206];
            *&v81[v206] = 0x8000000000000000;
            sub_23718E500(&v267, v202, isUniquelyReferenced_nonNull_native);
            *&v81[v206] = __dst;
            swift_endAccess();
            [*(v206 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack) addArrangedSubview_];
            v129 = *(&v268 + 1);
            [*(&v268 + 1) addTarget:v206 action:sel_textFieldEditingDidChange_ forControlEvents:0x40000];
            [v129 setKeyboardType_];
            [v129 setDelegate_];
            sub_237133A4C(&v267);
            v130 = *&v81[v206];
            v132 = *(v130 + 64);
            v127 = (v130 + 64);
            v131 = v132;
            v77 = 1;
            v133 = 1 << *(*&v81[v206] + 32);
            v134 = -1;
            if (v133 < 64)
            {
              v134 = ~(-1 << v133);
            }

            v135 = v134 & v131;
            v136 = (v133 + 63) >> 6;
            v205 = *&v81[v206];

            v79 = 0;
            v80 = 152;
            while (v135)
            {
LABEL_24:
              v153 = (*(v205 + 56) + 152 * (__clz(__rbit64(v135)) | (v79 << 6)));
              v154 = v153[1];
              v224[0] = *v153;
              v224[1] = v154;
              v155 = v153[5];
              v157 = v153[2];
              v156 = v153[3];
              v224[4] = v153[4];
              v224[5] = v155;
              v224[2] = v157;
              v224[3] = v156;
              v158 = v153[6];
              v159 = v153[7];
              v160 = v153[8];
              v225 = *(v153 + 18);
              v224[7] = v159;
              v224[8] = v160;
              v224[6] = v158;
              v80 = v157;
              v161 = v153[5];
              v220 = v153[4];
              v221 = v161;
              v222 = v153[6];
              v223 = *(v153 + 14);
              v162 = v153[1];
              v216 = *v153;
              v217 = v162;
              v163 = v153[3];
              v218 = v153[2];
              v219 = v163;
              v164 = *(v153 + 121);
              *(v215 + 15) = *(v153 + 136);
              v215[0] = v164;
              memmove(&__dst, v153, 0x78uLL);
              v233[8] = 1;
              *&v233[9] = v215[0];
              *&v233[24] = *(v215 + 15);
              v77 = v206;
              swift_beginAccess();
              sub_2371339F0(v224, &v207);
              sub_2371339F0(&__dst, &v207);
              v165 = swift_isUniquelyReferenced_nonNull_native();
              v166 = *&v81[v206];
              *&v81[v206] = 0x8000000000000000;
              v167 = sub_2371906E0(v80);
              v169 = v166[2];
              v170 = (v168 & 1) == 0;
              v171 = __OFADD__(v169, v170);
              v172 = v169 + v170;
              if (v171)
              {
                goto LABEL_36;
              }

              v173 = v168;
              if (v166[3] < v172)
              {
                sub_237191428(v172, v165);
                v167 = sub_2371906E0(v80);
                if ((v173 & 1) != (v174 & 1))
                {
                  goto LABEL_43;
                }

LABEL_29:
                if (v173)
                {
                  goto LABEL_17;
                }

                goto LABEL_30;
              }

              if (v165)
              {
                goto LABEL_29;
              }

              v185 = v167;
              sub_2371928BC();
              v167 = v185;
              if (v173)
              {
LABEL_17:
                v80 = 152;
                v137 = v166[7] + 152 * v167;
                v138 = *(v137 + 16);
                v207 = *v137;
                v208 = v138;
                v139 = *(v137 + 80);
                v141 = *(v137 + 32);
                v140 = *(v137 + 48);
                v211 = *(v137 + 64);
                v212 = v139;
                v209 = v141;
                v210 = v140;
                v143 = *(v137 + 112);
                v142 = *(v137 + 128);
                v144 = *(v137 + 96);
                *&v214[32] = *(v137 + 144);
                *&v214[16] = v142;
                v213 = v144;
                *v214 = v143;
                v145 = v227;
                *v137 = __dst;
                *(v137 + 16) = v145;
                v146 = v228;
                v147 = v229;
                v148 = v231;
                *(v137 + 64) = v230;
                *(v137 + 80) = v148;
                *(v137 + 32) = v146;
                *(v137 + 48) = v147;
                v149 = v232;
                v150 = *v233;
                v151 = *&v233[16];
                *(v137 + 144) = *&v233[32];
                *(v137 + 112) = v150;
                *(v137 + 128) = v151;
                *(v137 + 96) = v149;
                sub_237133A4C(&v207);
                v77 = 1;
                goto LABEL_18;
              }

LABEL_30:
              v77 = 1;
              v166[(v167 >> 6) + 8] |= 1 << v167;
              *(v166[6] + 4 * v167) = v80;
              v80 = 152;
              v175 = v166[7] + 152 * v167;
              v176 = v227;
              *v175 = __dst;
              *(v175 + 16) = v176;
              v177 = v231;
              v178 = v229;
              v179 = v228;
              *(v175 + 64) = v230;
              *(v175 + 80) = v177;
              *(v175 + 32) = v179;
              *(v175 + 48) = v178;
              v180 = v232;
              v181 = *v233;
              v182 = *&v233[16];
              *(v175 + 144) = *&v233[32];
              *(v175 + 112) = v181;
              *(v175 + 128) = v182;
              *(v175 + 96) = v180;
              v183 = v166[2];
              v171 = __OFADD__(v183, 1);
              v184 = v183 + 1;
              if (v171)
              {
                goto LABEL_37;
              }

              v166[2] = v184;
LABEL_18:
              v135 &= v135 - 1;
              *&v81[v206] = v166;
              swift_endAccess();
              v211 = v220;
              v212 = v221;
              v213 = v222;
              *v214 = v223;
              v207 = v216;
              v208 = v217;
              v209 = v218;
              v210 = v219;
              v214[8] = 1;
              *&v214[9] = v215[0];
              *&v214[24] = *(v215 + 15);
              sub_237133A4C(&v207);
            }

            while (1)
            {
              v152 = v79 + 1;
              if (__OFADD__(v79, 1))
              {
                break;
              }

              if (v152 >= v136)
              {
              }

              v135 = *(v127 + v152);
              v79 = v79 + 1;
              if (v135)
              {
                v79 = v152;
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            sub_23719664C();
          }
        }

        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  result = sub_237196AAC();
  __break(1u);
  return result;
}

uint64_t sub_23718C140(unsigned int a1, unsigned int a2, void *a3, float a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16) && (v12 = sub_2371906E0(a1), (v13 & 1) != 0))
  {
    v14 = *(v11 + 56) + 152 * v12;
    v15 = *(v14 + 16);
    v32[0] = *v14;
    v32[1] = v15;
    v16 = *(v14 + 80);
    v18 = *(v14 + 32);
    v17 = *(v14 + 48);
    v32[4] = *(v14 + 64);
    v32[5] = v16;
    v32[2] = v18;
    v32[3] = v17;
    v19 = *(v14 + 96);
    v20 = *(v14 + 112);
    v21 = *(v14 + 128);
    v33 = *(v14 + 144);
    v32[7] = v20;
    v32[8] = v21;
    v32[6] = v19;
    v22 = v18;
    v23 = v20;
    v24 = *(v14 + 16);
    v49 = *v14;
    v50 = v24;
    v25 = *(v14 + 68);
    v46 = *(v14 + 52);
    v47 = v25;
    v48[0] = *(v14 + 84);
    *(v48 + 12) = *(v14 + 96);
    v45 = *(v14 + 36);
    v26 = *(v14 + 121);
    *(v44 + 15) = *(v14 + 136);
    v44[0] = v26;
    swift_beginAccess();
    sub_2371339F0(v32, v60);
    sub_23718A288(v22, v34);
    swift_endAccess();
    sub_237120D04(v34, &qword_27DE94E48);
    v27 = a3;

    v60[0] = v49;
    v60[1] = v50;
    v63 = v46;
    v64 = v47;
    v61 = a2;
    *v65 = v48[0];
    *&v65[12] = *(v48 + 12);
    v62 = v45;
    v66 = a3;
    v67 = 1;
    *(v68 + 15) = *(v44 + 15);
    v68[0] = v44[0];
    sub_23713445C();
    v51[0] = v49;
    v51[1] = v50;
    v54 = v46;
    v55 = v47;
    v52 = a2;
    *v56 = v48[0];
    *&v56[12] = *(v48 + 12);
    v53 = v45;
    v57 = a3;
    v58 = 1;
    *(v59 + 15) = *(v44 + 15);
    v59[0] = v44[0];
    swift_beginAccess();
    sub_2371339F0(v51, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = *(v5 + v10);
    *(v5 + v10) = 0x8000000000000000;
    sub_23718E500(v51, a2, isUniquelyReferenced_nonNull_native);
    *(v5 + v10) = *&v35[0];
    swift_endAccess();
    sub_237135E04(a2, a4);
    v35[0] = v49;
    v35[1] = v50;
    v38 = v46;
    v39 = v47;
    v36 = a2;
    *v40 = v48[0];
    *&v40[12] = *(v48 + 12);
    v37 = v45;
    v41 = a3;
    v42 = 1;
    *&v43[15] = *(v44 + 15);
    *v43 = v44[0];
    return sub_237133A4C(v35);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_23719B020;
    sub_23719693C();

    v31 = sub_237196A5C();
    MEMORY[0x2383C5F20](v31);

    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 32) = 0xD00000000000002ALL;
    *(v30 + 40) = 0x80000002371A1060;
    sub_237196ABC();
  }
}

uint64_t sub_23718C4EC(unsigned int a1, char a2, void *a3)
{
  v7 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_2371906E0(a1), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 152 * v9;
    v12 = *(v11 + 16);
    v36[0] = *v11;
    v36[1] = v12;
    v13 = *(v11 + 80);
    v15 = *(v11 + 32);
    v14 = *(v11 + 48);
    v36[4] = *(v11 + 64);
    v36[5] = v13;
    v36[2] = v15;
    v36[3] = v14;
    v16 = *(v11 + 96);
    v17 = *(v11 + 112);
    v18 = *(v11 + 128);
    v39 = *(v11 + 144);
    v37 = v17;
    v38 = v18;
    v36[6] = v16;
    v19 = *(v11 + 80);
    v45 = *(v11 + 64);
    v46 = v19;
    v47 = *(v11 + 96);
    v20 = *(v11 + 16);
    v41 = *v11;
    v42 = v20;
    v21 = *(v11 + 48);
    v43 = *(v11 + 32);
    v44 = v21;
    v22 = *&v36[0];
    v23 = v37;
    v24 = BYTE8(v37);
    v25 = *(v11 + 121);
    *(v40 + 15) = *(v11 + 136);
    v40[0] = v25;
    sub_2371339F0(v36, v48);
    [v22 setHidden_];
    if (a3)
    {
      v26 = v37;
      v27 = a3;

      v48[4] = v45;
      v48[5] = v46;
      v48[6] = v47;
      v48[0] = v41;
      v48[1] = v42;
      v48[2] = v43;
      v48[3] = v44;
      v49 = a3;
      v50 = 1;
      *(v51 + 15) = *(v40 + 15);
      v51[0] = v40[0];
      sub_23713445C();

      v24 = 1;
    }

    else
    {
      a3 = v23;
    }

    v32[4] = v45;
    v32[5] = v46;
    v32[6] = v47;
    v32[0] = v41;
    v32[1] = v42;
    v32[2] = v43;
    v32[3] = v44;
    v33 = a3;
    v34 = v24;
    *&v35[15] = *(v40 + 15);
    *v35 = v40[0];
    return sub_237133A4C(v32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_23719B020;
    sub_23719693C();

    *&v48[0] = 0xD000000000000028;
    *(&v48[0] + 1) = 0x80000002371A1030;
    LODWORD(v36[0]) = a1;
    v29 = sub_237196A5C();
    MEMORY[0x2383C5F20](v29);

    v30 = v48[0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 32) = v30;
    sub_237196ABC();
  }
}

id sub_23718C784()
{
  v1 = (v0 + OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl);
  swift_beginAccess();
  if (*v1)
  {
    v2 = *v1;

    [v2 setHidden_];
  }

  v3 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  *(v0 + v3) = MEMORY[0x277D84F98];

  v4 = [*(v0 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack) arrangedSubviews];
  sub_237115094(0, &qword_27DE95598);
  v5 = sub_23719663C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }
  }

LABEL_17:
  v6 = sub_2371969FC();
  if (!v6)
  {
  }

LABEL_5:
  for (i = 0; ; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383C62A0](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      result = *(v5 + 8 * i + 32);
    }

    v9 = result;
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v11 = *v1;
    if (!*v1)
    {
      break;
    }

    sub_237115094(0, &qword_27DE95318);
    v12 = v11;
    v13 = sub_2371967DC();

    if ((v13 & 1) == 0)
    {
      [v9 removeFromSuperview];
    }

    if (v10 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_23718C9AC(double a1)
{
  v2 = v1;
  v4 = sub_23719633C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v151 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23718A400();
  if (*v8)
  {
    sub_23718A460(0);
  }

  (v7)(v159, 0);
  v9 = (v1 + OBJC_IVAR____TtC12CoreAudioKit21CAAUNBandEQHeaderView_typeControl);
  swift_beginAccess();
  v10 = *v9;
  if (*v9)
  {
    sub_23712D680(v10);
    v11 = v10;
    sub_23712D610(v10);
    [v11 sizeThatFits_];
    v13 = v12;
  }

  else
  {
    v13 = 50.0;
  }

  v149 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_appleLogo);
  [v149 frame];
  Width = CGRectGetWidth(v165);
  v15 = v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName;
  v16 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName + 8);
  v155 = (v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName + 8);
  if (!v16)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v17 = Width;
  v18 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel);

  v157 = v18;
  v19 = [v18 font];
  if (!v19)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v20 = v19;
  v21 = v17 + 16.0;
  v22 = sub_23719653C();

  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E08);
  inited = swift_initStackObject();
  v154 = xmmword_23719B020;
  *(inited + 16) = xmmword_23719B020;
  v24 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v153 = sub_237115094(0, &unk_27DE94E10);
  *(inited + 64) = v153;
  *(inited + 40) = v20;
  v25 = v24;
  v26 = v20;
  sub_237119BCC(inited);
  swift_setDeallocating();
  sub_237120D04(inited + 32, &qword_27DE94888);
  type metadata accessor for Key(0);
  v28 = v27;
  v152 = sub_23713D200();
  v29 = sub_23719651C();

  [v22 sizeWithAttributes_];
  v31 = v30;

  v32 = v13 + v21 + v31 + 8.0;
  v33 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  v34 = 0;
  v35 = *(v2 + v33);
  v36 = 1 << *(v35 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v35 + 64);
  v39 = (v36 + 63) >> 6;
  if (v38)
  {
    while (1)
    {
      v40 = v34;
LABEL_16:
      v41 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v32 = v32 + *(*(v35 + 56) + 152 * (v41 | (v40 << 6)) + 136);
      if (!v38)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v35 + 64 + 8 * v40);
    ++v34;
    if (v38)
    {
      v34 = v40;
      goto LABEL_16;
    }
  }

  if (v32 <= a1)
  {
    LODWORD(v156) = 0;
    v59 = 0;
    v58 = 0;
    goto LABEL_70;
  }

  if (!*(v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName + 8))
  {
    v59 = 0;
    v58 = 0;
    LODWORD(v156) = 1;
    goto LABEL_70;
  }

  v148 = v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName;
  v150 = v28;
  if (!*v155)
  {
    goto LABEL_110;
  }

  v42 = sub_23719653C();
  v43 = swift_initStackObject();
  *(v43 + 16) = v154;
  *(v43 + 32) = v25;
  v44 = v25;
  v45 = [v157 font];
  if (!v45)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v46 = v45;

  *(v43 + 64) = v153;
  *(v43 + 40) = v46;
  sub_237119BCC(v43);
  swift_setDeallocating();
  sub_237120D04(v43 + 32, &qword_27DE94888);
  v47 = sub_23719651C();

  [v42 sizeWithAttributes_];
  v49 = v48;

  if (!*(v148 + 8))
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v50 = sub_23719653C();
  v51 = swift_initStackObject();
  *(v51 + 16) = v154;
  *(v51 + 32) = v44;
  v52 = [v157 font];
  if (!v52)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v53 = v52;

  v54 = v32 - v49;
  *(v51 + 64) = v153;
  *(v51 + 40) = v53;
  sub_237119BCC(v51);
  swift_setDeallocating();
  sub_237120D04(v51 + 32, &qword_27DE94888);
  v55 = sub_23719651C();

  [v50 sizeWithAttributes_];
  v57 = v56;

  if (v54 + v57 >= a1)
  {
    [v149 frame];
    v60 = CGRectGetWidth(v166);
    if (!*v155)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v61 = v60;

    v62 = sub_23719653C();
    v63 = swift_initStackObject();
    *(v63 + 16) = v154;
    *(v63 + 32) = v44;
    v147 = v44;
    v64 = [v157 font];
    if (!v64)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v65 = v64;

    v66 = v61 + 16.0;
    *(v63 + 64) = v153;
    *(v63 + 40) = v65;
    sub_237119BCC(v63);
    swift_setDeallocating();
    sub_237120D04(v63 + 32, &qword_27DE94888);
    v67 = sub_23719651C();

    [v62 sizeWithAttributes_];
    v69 = v68;

    v70 = 0;
    v71 = v13 + v66 + v69 + 8.0;
    v72 = *(v2 + v33);
    v73 = 1 << *(v72 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v75 = v74 & *(v72 + 64);
    v76 = (v73 + 63) >> 6;
    if (v75)
    {
      while (1)
      {
        v77 = v70;
LABEL_38:
        v78 = __clz(__rbit64(v75));
        v75 &= v75 - 1;
        v71 = v71 + *(*(v72 + 56) + 152 * (v78 | (v77 << 6)) + 128);
        if (!v75)
        {
          goto LABEL_34;
        }
      }
    }

    while (1)
    {
LABEL_34:
      v77 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_106;
      }

      if (v77 >= v76)
      {
        break;
      }

      v75 = *(v72 + 64 + 8 * v77);
      ++v70;
      if (v75)
      {
        v70 = v77;
        goto LABEL_38;
      }
    }

    if (v71 <= a1)
    {
      v59 = 0;
      v58 = 0;
      LODWORD(v156) = 1;
      goto LABEL_70;
    }

    if (!*v155)
    {
      goto LABEL_116;
    }

    v79 = sub_23719653C();
    v80 = swift_initStackObject();
    *(v80 + 16) = v154;
    v81 = v147;
    *(v80 + 32) = v147;
    v82 = v81;
    v83 = [v157 font];
    if (!v83)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v84 = v83;

    *(v80 + 64) = v153;
    *(v80 + 40) = v84;
    sub_237119BCC(v80);
    swift_setDeallocating();
    sub_237120D04(v80 + 32, &qword_27DE94888);
    v85 = sub_23719651C();

    [v79 sizeWithAttributes_];
    v87 = v86;

    if (!*(v148 + 8))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v88 = sub_23719653C();
    v89 = swift_initStackObject();
    *(v89 + 16) = v154;
    *(v89 + 32) = v82;
    v90 = [v157 font];
    if (!v90)
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v91 = v90;

    v92 = v71 - v87;
    *(v89 + 64) = v153;
    *(v89 + 40) = v91;
    sub_237119BCC(v89);
    swift_setDeallocating();
    sub_237120D04(v89 + 32, &qword_27DE94888);
    v93 = sub_23719651C();

    [v88 sizeWithAttributes_];
    v95 = v94;

    if (v92 + v95 <= a1)
    {
      v58 = 0;
      LODWORD(v156) = 1;
      v59 = 1;
      goto LABEL_70;
    }

    [v149 frame];
    v96 = CGRectGetWidth(v167);
    if (!*(v148 + 8))
    {
      goto LABEL_120;
    }

    v97 = v96;

    v98 = sub_23719653C();
    v99 = swift_initStackObject();
    *(v99 + 16) = v154;
    *(v99 + 32) = v82;
    v100 = v82;
    v101 = [v157 font];
    if (!v101)
    {
LABEL_121:
      __break(1u);
      return;
    }

    v102 = v101;

    *(v99 + 64) = v153;
    *(v99 + 40) = v102;
    sub_237119BCC(v99);
    swift_setDeallocating();
    sub_237120D04(v99 + 32, &qword_27DE94888);
    v103 = sub_23719651C();

    [v98 sizeWithAttributes_];
    v105 = v104;

    v106 = 0;
    v107 = *(v2 + v33);
    v108 = 1 << *(v107 + 32);
    v109 = -1;
    if (v108 < 64)
    {
      v109 = ~(-1 << v108);
    }

    v110 = v109 & *(v107 + 64);
    v111 = v13 + v97 + 16.0 + v105 + 8.0;
    if (v110)
    {
      while (1)
      {
        v112 = v106;
LABEL_56:
        v113 = __clz(__rbit64(v110));
        v110 &= v110 - 1;
        v114 = *(v107 + 56) + 152 * (v113 | (v112 << 6));
        if (*(v114 + 80))
        {
          v115 = 144;
        }

        else
        {
          v115 = 128;
        }

        v111 = v111 + *(v114 + v115);
        if (!v110)
        {
          goto LABEL_52;
        }
      }
    }

    while (1)
    {
LABEL_52:
      v112 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_107;
      }

      if (v112 >= ((v108 + 63) >> 6))
      {
        break;
      }

      v110 = *(v107 + 64 + 8 * v112);
      ++v106;
      if (v110)
      {
        v106 = v112;
        goto LABEL_56;
      }
    }

    if (v111 <= a1)
    {
      LODWORD(v156) = 1;
      v59 = 1;
      v58 = 1;
      goto LABEL_70;
    }

    v29 = v33;
    v22 = sub_23718A400();
    if (*v116)
    {
      LODWORD(v156) = 1;
      sub_23718A460(1);
      (v22)(v159, 0);
LABEL_69:
      v59 = 1;
      v58 = 1;
      v33 = v29;
      goto LABEL_70;
    }

LABEL_68:
    (v22)(v159, 0);
    LODWORD(v156) = 1;
    goto LABEL_69;
  }

  LODWORD(v156) = 0;
  v58 = 0;
  v59 = 1;
LABEL_70:
  v117 = *(v2 + v33);
  v118 = 1 << *(v117 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & *(v117 + 64);
  v121 = v2 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auAbbreviatedName;
  v122 = (v118 + 63) >> 6;

  v123 = 0;
  v124 = v155;
  if (v59)
  {
    v124 = (v121 + 8);
  }

  v155 = v124;
  if (v59)
  {
    v125 = v121;
  }

  else
  {
    v125 = v15;
  }

  *&v154 = v125;
  if (v120)
  {
    goto LABEL_80;
  }

  while (2)
  {
    v126 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (v126 < v122)
    {
      v120 = *(v117 + 64 + 8 * v126);
      ++v123;
      if (!v120)
      {
        continue;
      }

LABEL_84:
      v127 = *(v117 + 56) + 152 * (__clz(__rbit64(v120)) | (v126 << 6));
      v128 = *(v127 + 16);
      v159[0] = *v127;
      v159[1] = v128;
      v129 = *(v127 + 80);
      v131 = *(v127 + 32);
      v130 = *(v127 + 48);
      v159[4] = *(v127 + 64);
      v160 = v129;
      v159[2] = v131;
      v159[3] = v130;
      v132 = *(v127 + 96);
      v133 = *(v127 + 112);
      v134 = *(v127 + 128);
      v164 = *(v127 + 144);
      v162 = v133;
      v163 = v134;
      v161 = v132;
      if (v58)
      {
        v135 = v160;
        if (v160)
        {
          sub_2371339F0(v159, v158);
          v136 = v135;
        }

        else
        {
          sub_237115094(0, &qword_27DE94D28);
          sub_2371339F0(v159, v158);
          sub_23719632C();
          v136 = sub_2371967AC();
        }

        v140 = *(&v159[0] + 1);
        v141 = v135;
        [v140 setAttributedText_];
      }

      else
      {
        v137 = *(&v159[0] + 1);
        sub_2371339F0(v159, v158);
        v138 = sub_23719653C();
        [v137 setText_];

        if (v161)
        {
          v139 = 136;
          if (v156)
          {
            v139 = 128;
          }

          [v161 setConstant_];
        }
      }

      if (*v155)
      {

        v142 = sub_23719653C();
      }

      else
      {
        v142 = 0;
      }

      v120 &= v120 - 1;
      [v157 setText_];

      if (v58)
      {
        if (v161)
        {
          v143 = v164;
          v144 = v161;
          [v144 setConstant_];
          sub_237133A4C(v159);

          v123 = v126;
          if (!v120)
          {
            continue;
          }

          goto LABEL_80;
        }
      }

      else if (v161)
      {
        v145 = 136;
        if (v156)
        {
          v145 = 128;
        }

        [v161 setConstant_];
      }

      sub_237133A4C(v159);
      v123 = v126;
      if (!v120)
      {
        continue;
      }

LABEL_80:
      v126 = v123;
      goto LABEL_84;
    }

    break;
  }
}

id sub_23718D994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAAUNBandEQHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23718DA20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_23718DA68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23718DAC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23719685C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v6);
      result = MEMORY[0x2383C6420](*(a2 + 40), *v11, 4);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 4 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23718DC38(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23719685C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x2383C6420](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 152 * v3;
          v16 = (v15 + 152 * v6);
          if (v3 != v6 || result >= v16 + 152)
          {
            result = memmove(result, v16, 0x98uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23718DDB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23719685C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_237196ADC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23718DF20(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23719685C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_2371967CC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_23718E0AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23719685C() + 1) & ~v5;
    do
    {
      sub_237196AEC();

      sub_2371965BC();
      v10 = sub_237196B2C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}