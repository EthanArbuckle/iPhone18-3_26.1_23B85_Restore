void ConcentricPaddingUpdater.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  if (ConcentricPaddingUpdater.oldValue.getter() != v3 || v7 != v4 || v8 != v5 || v9 != v6)
  {
    v13 = AGCreateWeakAttribute();
    specialized static GraphHost.currentHost.getter();
    *&v14 = v13;
    BYTE8(v14) = 0;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    specialized GraphHost.continueTransaction<A>(_:)(&v14);
  }

  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = 0;
}

void protocol witness for Rule.value.getter in conformance ConcentricCornerPaddingModifier<A>.CornerPadding(uint64_t a1@<X0>, double (*a2)(void, void, void, void, void)@<X2>, uint64_t a3@<X8>)
{
  *a3 = a2(*v3, v3[1], v3[2], *(a1 + 16), *(a1 + 24));
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
}

uint64_t ConcentricEdgePaddingModifier.EdgePadding.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v145 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  *&v144 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ConcentricEdgePaddingModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  *&v141 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v116 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v116 - v18;
  *&v146 = a2;
  ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(a4, a5, type metadata accessor for ConcentricEdgePaddingModifier, &v116 - v18);
  v20 = *v19;
  v140 = *(v12 + 8);
  result = (*&v140)(v19, v11);
  if (v20 != 4)
  {
    Value = AGGraphGetValue();
    v125 = *Value;
    v124 = Value[1];
    v138 = Value[2];
    v137 = Value[3];
    v23 = *(Value + 2);
    v170 = *(Value + 1);
    v171 = v23;
    v172 = Value[12];
    v24 = AGGraphGetValue();
    v25 = *(v24 + 8);
    v135 = *v24;
    v136 = v25;
    v134 = *(v24 + 16);
    v133 = *(v24 + 20);
    v130 = *(v24 + 24);
    v26 = *(v24 + 32);
    v128 = *(v24 + 36);
    v129 = v26;
    v27 = *(v24 + 40);
    v126 = *(v24 + 44);
    v127 = v27;
    v28 = *(v24 + 48);
    v131 = *(v24 + 52);
    v132 = v28;
    LODWORD(v122) = *(v24 + 56);
    v139 = a1;
    v123 = *&a3;
    v142 = *&a5;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(a4, a5, type metadata accessor for ConcentricEdgePaddingModifier, v16);
    v29 = *(v145 + 32);
    v30 = &v16[*(v11 + 36)];
    v143 = a4;
    v29(*&v144, v30, a4);
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      v33 = *&v142;
      v32 = v143;
      v34 = *&v123;
      v121 = 3;
    }

    else
    {
      v31 = 0;
      if (v20)
      {
        v121 = 2;
      }

      else
      {
        v121 = 1;
      }

      v33 = *&v142;
      v32 = v143;
      v34 = *&v123;
    }

    v35 = *&v141;
    ConcentricCornerPaddingModifier.CornerPadding.modifier.getter(v32, v33, type metadata accessor for ConcentricEdgePaddingModifier, *&v141);
    v36 = *(v35 + *(v11 + 40) + 32);
    (*&v140)(v35, v11);
    if (v36 == 1)
    {
      AGGraphGetValue();
    }

    v37 = 0.0;
    Edge.Set.contains(_:)(SwiftUI_Edge_top);
    Edge.Set.contains(_:)(SwiftUI_Edge_leading);
    Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
    Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
    *&v166 = __PAIR64__(v124, v125);
    *(&v166 + 1) = __PAIR64__(v137, v138);
    v167 = v170;
    v168 = v171;
    v169 = v172;
    v155 = v135;
    v156 = v136;
    *&v157 = COERCE_DOUBLE(__PAIR64__(v133, v134));
    v158 = v130;
    v159 = v129;
    v160 = v128;
    v161 = v127;
    v162 = v126;
    v163 = v132;
    v164 = v131;
    v165 = LOBYTE(v122);
    GeometryProxy.containerBoundsChildFrame(containerShape:)(&v155, v173);
    if (v174)
    {
      return (*(v145 + 8))(COERCE_DOUBLE(*&v144), v143);
    }

    v140 = *&v173[1];
    v141 = *v173;
    v119 = *&v173[3];
    v120 = *&v173[2];
    v122 = *&v173[5];
    v123 = *&v173[4];
    v117 = *&v173[7];
    v118 = *&v173[6];
    v38 = v143;
    ConcentricCornerPaddingModifier.CornerPadding.layoutComputer.getter(v34, &v155);
    v39 = v155;
    if (*&v155 == 0.0)
    {
      v40 = *&v144;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v39 = static LayoutComputer.defaultValue;
    }

    else
    {
      v40 = *&v144;
    }

    v41 = v145;
    *&v166 = v130;
    *(&v166 + 1) = __PAIR64__(v128, v129);
    *&v167 = __PAIR64__(v126, v127);
    *(&v167 + 1) = __PAIR64__(v131, v132);
    (*(*&v136 + 24))(&v155, 0, 0, 1, v134 | (v133 << 32), &v166);
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    if ((v159 & 1) == 0)
    {
      v42 = *&v155;
      v43 = v156;
      v44 = *&v157;
      v37 = v158;
    }

    specialized static Update.begin()();
    Attribute = AGWeakAttributeGetAttribute();
    v46 = 0uLL;
    v47 = 0uLL;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v46 = *InputValue;
      v47 = InputValue[1];
    }

    v145 = v47;
    v146 = v46;
    static Update.end()();
    v167 = v145;
    v166 = v146;
    ViewSize.proposal.getter(&v151);
    v49 = v151;
    v50 = v152;
    v51 = v153;
    v52 = v154;
    if (one-time initialization token for lockAssertionsAreEnabled != -1)
    {
      swift_once();
    }

    if (lockAssertionsAreEnabled)
    {
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (!_MovableLockIsOwner(static Update._lock))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    v147 = v49;
    v148 = v50;
    v149 = v51;
    v150 = v52;
    (*(*v39 + 120))(&v147);
    CornerConfigurationShape_v1.resolvedRadii(size:)(v38, *&v142);
    v57 = v53;
    v58 = v42;
    if (v31)
    {
      v57 = v54;
      v58 = v43;
      if (v31 != 1)
      {
        v57 = v56;
        v58 = v37;
      }
    }

    v59 = v122;
    v60 = v123 + v118;
    v61 = v58 - v57;
    if (v61 <= 0.0)
    {
      goto LABEL_61;
    }

    v62 = byte_1F0045268;
    if (v31)
    {
      if (v31 != 1)
      {
        if (byte_1F0045268)
        {
          v63 = v140 + v119;
        }

        else
        {
          v63 = v141;
        }

        v64 = v123;
        v65 = v122 + v117;
LABEL_49:
        if (byte_1F0045268)
        {
          v64 = v65;
        }

        v66 = v61 - vabdd_f64(v63, v64);
        if (v66 >= 0.0)
        {
          v67 = v42;
          if (v31)
          {
            v67 = v37;
            if (v31 == 1)
            {
              v67 = v43;
            }
          }

          if (v66 < v67)
          {
            v68 = 0;
            v69 = 1;
            if (v31)
            {
LABEL_57:
              if (v31 == 2)
              {
                v70 = 0.0;
                if (v62)
                {
                  v71 = v66;
                }

                else
                {
                  v71 = 0.0;
                }
              }

              else
              {
                v71 = 0.0;
                if (v62)
                {
                  v70 = 0.0;
                }

                else
                {
                  v70 = v66;
                }
              }

LABEL_92:
              if ((v68 & 1) == 0)
              {
                v83 = v42;
                if (v31)
                {
                  v53 = v54;
                  v83 = v43;
                  if (v31 != 1)
                  {
                    v53 = v56;
                    v83 = v37;
                  }
                }

                v84 = v83 - v53;
                v78 = 0.0;
                if (v84 <= 0.0)
                {
                  goto LABEL_127;
                }

                if (v31 == 2)
                {
                  if (byte_1F0045269)
                  {
                    v85 = v140 + v119;
                  }

                  else
                  {
                    v85 = v141;
                  }

                  v86 = v123;
                  v87 = v122 + v117;
                }

                else
                {
                  if (v31 == 1)
                  {
                    if (byte_1F0045269)
                    {
                      v85 = v140;
                    }

                    else
                    {
                      v85 = v141 + v120;
                    }

                    v86 = v123 + v118;
                  }

                  else
                  {
                    if (byte_1F0045269)
                    {
                      v85 = v140;
                    }

                    else
                    {
                      v85 = v141;
                    }

                    v86 = v123;
                  }

                  v87 = v122;
                }

                if (byte_1F0045269)
                {
                  v86 = v87;
                }

                v88 = v84 - vabdd_f64(v85, v86);
                if (v88 < 0.0)
                {
                  goto LABEL_127;
                }

                if (v31)
                {
                  v42 = v43;
                  if (v31 == 2)
                  {
                    v42 = v37;
                  }
                }

                if (v88 >= v42)
                {
                  goto LABEL_127;
                }

                if (v31 == 2)
                {
                  if (byte_1F0045269)
                  {
                    v71 = v88;
                  }
                }

                else if (v31 == 1 && !byte_1F0045269)
                {
                  v70 = v88;
                }
              }

              if (v69)
              {
                v78 = v70;
LABEL_128:
                v89 = v54;
                v90 = v43;
                if (v121 != 1)
                {
                  v89 = v55;
                  v90 = v44;
                  if (v121 != 3)
                  {
                    v89 = v56;
                    v90 = v37;
                  }
                }

                v91 = v90 - v89;
                if (v91 <= 0.0)
                {
                  goto LABEL_161;
                }

                v92 = byte_1F0045290;
                if (v121 == 1)
                {
                  if (byte_1F0045290)
                  {
                    v93 = v140;
                  }

                  else
                  {
                    v93 = v141 + v120;
                  }

                  v94 = v123 + v118;
                  v95 = v122;
                }

                else
                {
                  if (v121 == 2)
                  {
                    if (byte_1F0045290)
                    {
                      v93 = v140 + v119;
                    }

                    else
                    {
                      v93 = v141;
                    }

                    v94 = v123;
                  }

                  else
                  {
                    if (byte_1F0045290)
                    {
                      v93 = v140 + v119;
                    }

                    else
                    {
                      v93 = v141 + v120;
                    }

                    v94 = v123 + v118;
                  }

                  v95 = v122 + v117;
                }

                if (byte_1F0045290)
                {
                  v94 = v95;
                }

                v96 = v91 - vabdd_f64(v93, v94);
                if (v96 < 0.0)
                {
                  goto LABEL_161;
                }

                v97 = v43;
                if (v121 != 1)
                {
                  v97 = v37;
                  if (v121 == 3)
                  {
                    v97 = v44;
                  }
                }

                if (v96 >= v97)
                {
LABEL_161:
                  v92 = byte_1F0045291;
                  if (byte_1F0045291)
                  {
                    v101 = v140 + v119;
                  }

                  else
                  {
                    v101 = v141 + v120;
                  }

                  if (byte_1F0045291)
                  {
                    v102 = v140;
                  }

                  else
                  {
                    v102 = v141 + v120;
                  }

                  if (byte_1F0045291)
                  {
                    v103 = v140 + v119;
                  }

                  else
                  {
                    v103 = v141;
                  }

                  v104 = v54;
                  v105 = v43;
                  if (v121 != 1)
                  {
                    v104 = v55;
                    v105 = v44;
                    if (v121 != 3)
                    {
                      v104 = v56;
                      v105 = v37;
                    }
                  }

                  v106 = v105 - v104;
                  if (v106 <= 0.0)
                  {
                    goto LABEL_229;
                  }

                  v107 = v123 + v118;
                  v108 = v122 + v117;
                  if (v121 != 3)
                  {
                    v101 = v102;
                    v107 = v123 + v118;
                    v108 = v122;
                    if (v121 == 2)
                    {
                      v101 = v103;
                      v107 = v123;
                      v108 = v122 + v117;
                    }
                  }

                  v109 = byte_1F0045291 ? v108 : v107;
                  v96 = v106 - vabdd_f64(v101, v109);
                  if (v96 < 0.0)
                  {
                    goto LABEL_229;
                  }

                  v110 = v43;
                  if (v121 != 1)
                  {
                    v110 = v37;
                    if (v121 == 3)
                    {
                      v110 = v44;
                    }
                  }

                  if (v96 >= v110)
                  {
LABEL_229:

                    return (*(v41 + 8))(v40, v38);
                  }

                  v98 = 1;
                  if (v121 != 3)
                  {
                    goto LABEL_155;
                  }
                }

                else
                {
                  v98 = 0;
                  if (v121 != 3)
                  {
LABEL_155:
                    if (v121 == 2)
                    {
                      if (v92)
                      {
                        v99 = v96;
                      }

                      else
                      {
                        v99 = 0.0;
                      }

                      v100 = 0.0;
                      if ((v98 & 1) == 0)
                      {
                        goto LABEL_199;
                      }

LABEL_198:
                      v144 = v99;
                      *&v145 = v100;
                      *&v146 = v78;
                      v142 = v71;

                      return (*(v41 + 8))(v40, v38);
                    }

                    if (v92)
                    {
                      v100 = 0.0;
                    }

                    else
                    {
                      v100 = v96;
                    }

                    v99 = 0.0;
                    if (v98)
                    {
                      goto LABEL_198;
                    }

LABEL_199:
                    v111 = v43;
                    if (v121 != 1)
                    {
                      v54 = v56;
                      v111 = v37;
                      if (v121 == 3)
                      {
                        v54 = v55;
                        v111 = v44;
                      }
                    }

                    v112 = v111 - v54;
                    if (v112 > 0.0)
                    {
                      if (v121 == 1)
                      {
                        v113 = byte_1F0045291 ? v140 : v141 + v120;
                      }

                      else
                      {
                        if (v121 == 2)
                        {
                          v113 = byte_1F0045291 ? v140 + v119 : v141;
                          v60 = v123;
                        }

                        else
                        {
                          v113 = byte_1F0045291 ? v140 + v119 : v141 + v120;
                        }

                        v59 = v122 + v117;
                      }

                      v114 = byte_1F0045291 ? v59 : v60;
                      v115 = v112 - vabdd_f64(v113, v114);
                      if (v115 >= 0.0)
                      {
                        if (v121 != 1)
                        {
                          v43 = v37;
                          if (v121 == 3)
                          {
                            v43 = v44;
                          }
                        }

                        if (v115 < v43)
                        {
                          if (v121 == 1)
                          {
                            if (!byte_1F0045291)
                            {
                              v100 = v115;
                            }
                          }

                          else if (v121 == 3)
                          {
                            if (byte_1F0045291)
                            {
                              v99 = v115;
                            }

                            else
                            {
                              v100 = v115;
                            }
                          }

                          else if (byte_1F0045291)
                          {
                            v99 = v115;
                          }

                          goto LABEL_198;
                        }
                      }
                    }

                    goto LABEL_229;
                  }
                }

                if (v92)
                {
                  v100 = 0.0;
                }

                else
                {
                  v100 = v96;
                }

                if (v92)
                {
                  v99 = v96;
                }

                else
                {
                  v99 = 0.0;
                }

                if (v98)
                {
                  goto LABEL_198;
                }

                goto LABEL_199;
              }

              v78 = 0.0;
LABEL_127:
              v71 = 0.0;
              goto LABEL_128;
            }

LABEL_88:
            v70 = 0.0;
            v71 = 0.0;
            goto LABEL_92;
          }
        }

LABEL_61:
        v62 = byte_1F0045269;
        if (byte_1F0045269)
        {
          v72 = v140 + v119;
        }

        else
        {
          v72 = v141;
        }

        if (byte_1F0045269)
        {
          v73 = v140;
        }

        else
        {
          v73 = v141 + v120;
        }

        if (byte_1F0045269)
        {
          *&v74 = v140;
        }

        else
        {
          *&v74 = v141;
        }

        v75 = v53;
        v76 = v42;
        if (v31)
        {
          v75 = v54;
          v76 = v43;
          if (v31 != 1)
          {
            v75 = v56;
            v76 = v37;
          }
        }

        v77 = v76 - v75;
        v78 = 0.0;
        if (v77 <= 0.0)
        {
          goto LABEL_127;
        }

        if (v31)
        {
          v79 = v123;
          v80 = v122 + v117;
          if (v31 == 2)
          {
LABEL_79:
            if (byte_1F0045269)
            {
              v81 = v80;
            }

            else
            {
              v81 = v79;
            }

            v66 = v77 - vabdd_f64(v72, v81);
            if (v66 < 0.0)
            {
              goto LABEL_127;
            }

            v82 = v42;
            if (v31)
            {
              v82 = v37;
              if (v31 == 1)
              {
                v82 = v43;
              }
            }

            v69 = 0;
            if (v66 >= v82)
            {
              goto LABEL_127;
            }

            v68 = 1;
            if (v31)
            {
              goto LABEL_57;
            }

            goto LABEL_88;
          }

          v72 = v73;
          v79 = v123 + v118;
        }

        else
        {
          v72 = *&v74;
          v79 = v123;
        }

        v80 = v122;
        goto LABEL_79;
      }

      if (byte_1F0045268)
      {
        v63 = v140;
      }

      else
      {
        v63 = v141 + v120;
      }

      v64 = v123 + v118;
    }

    else
    {
      if (byte_1F0045268)
      {
        v63 = v140;
      }

      else
      {
        v63 = v141;
      }

      v64 = v123;
    }

    v65 = v122;
    goto LABEL_49;
  }

  return result;
}

uint64_t ConcentricCornerPaddingModifier.CornerPadding.modifier.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t (*a3)(void, uint64_t, uint64_t)@<X5>, uint64_t a4@<X8>)
{
  v5 = a3(0, a1, a2);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t GeometryProxy.containerBoundsChildFrame(containerShape:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v38 = *v2;
  v39 = v4;
  v6 = *v2;
  v5 = v2[1];
  v40 = v2[2];
  v7 = *(a1 + 24);
  v41 = *(v2 + 12);
  v32[0] = v7;
  v33 = 1;
  v28 = v6;
  v29 = v5;
  v30 = v2[2];
  v31 = *(v2 + 12);
  GeometryProxy.transform.getter(&v25);
  v22 = v25;
  v23 = v26;
  v24 = v27;
  ViewTransform.containingSizedCoordinateSpace(name:)(v32, v36);
  outlined destroy of NamedCoordinateSpace(v32);

  if (v37)
  {
    v9 = 1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v34 = v36[0];
    v35 = v36[1];
    v32[0] = v7;
    v33 = 1;
    v14 = v2[1];
    v28 = *v2;
    v29 = v14;
    v30 = v2[2];
    v31 = *(v2 + 12);
    GeometryProxy.transform.getter(&v25);
    v22 = v25;
    v23 = v26;
    v24 = v27;
    CGRect.convert(to:transform:)(v32, &v22);

    outlined destroy of CoordinateSpace(v32);
    *&v28 = v7;
    BYTE8(v30) = 1;
    v19 = specialized GeometryProxy.frame<A>(in:)(&v28);
    v20 = v15;
    v18 = v16;
    v21 = v17;
    result = outlined destroy of NamedCoordinateSpace(&v28);
    *&v13 = v18;
    *&v12 = v19;
    v9 = 0;
    v10 = v34;
    v11 = v35;
    LOBYTE(v28) = 0;
    *(&v12 + 1) = v20;
    *(&v13 + 1) = v21;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  *(a2 + 64) = v9;
  return result;
}

uint64_t GeometryProxy.transform.getter@<X0>(uint64_t a1@<X8>)
{
  specialized static Update.begin()();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8] || (v2 = *MEMORY[0x1E698D3F8], AGWeakAttributeGetAttribute() == v2))
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v4 = *(InputValue + 8);
    v5 = *(InputValue + 16);
    v6 = *(InputValue + 24);
    v7 = *(InputValue + 32);
    v8 = *(InputValue + 40);
    *a1 = *InputValue;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    type metadata accessor for CGPoint(0);

    v9 = AGGraphGetInputValue();
    v10 = *v9;
    v11 = *(v9 + 8);
    *(a1 + 32) = v7 - (*v9 - v5);
    *(a1 + 40) = v8 - (v11 - v6);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
  }

  return static Update.end()();
}

void *initializeWithCopy for GlassContainer.Storage(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t outlined assign with take of ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.LazyEdits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t (*)()))
{
  v6 = a4(0, a3, type metadata accessor for ForEachState.LazyEdits);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

_OWORD *initializeWithCopy for ZStack(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

unint64_t lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2()
{
  result = lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2;
  if (!lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2;
  if (!lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHashable2 and conformance AnyHashable2);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.layoutDirection : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t initializeWithCopy for ViewGeometry(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t LayoutEngineBox.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *v1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  return (*(*(v2 + 184) + 40))(&v7, *(v2 + 176));
}

uint64_t RootGeometry.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = *MEMORY[0x1E698D3F8];
  if (v1[3] == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    Value = &static LayoutComputer.defaultValue;
  }

  else
  {
    Value = AGGraphGetValue();
  }

  v7 = *Value;
  v8 = Value[1];

  v9 = 0.0;
  v10 = 0.0;
  v11.f64[0] = 0.0;
  v12.f64[0] = 0.0;
  if (v4 != v5)
  {
    v13 = AGGraphGetValue();
    v14 = *v13;
    v15 = *(*v13 + 16);
    v11.f64[0] = 0.0;
    v12.f64[0] = 0.0;
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = 0;
        v12 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        v16 = v15 & 0x7FFFFFFFFFFFFFFELL;
        v17 = (v14 + 152);
        v12 = 0uLL;
        v18 = v15 & 0x7FFFFFFFFFFFFFFELL;
        v11 = 0uLL;
        do
        {
          v20 = v17[-7];
          v19 = v17[-6];
          v21 = *v17;
          v22 = v17[1];
          v17 += 14;
          v11 = vaddq_f64(vaddq_f64(v11, v19), v22);
          v12 = vaddq_f64(vaddq_f64(v12, v20), v21);
          v18 -= 2;
        }

        while (v18);
        if (v15 == v16)
        {
          goto LABEL_15;
        }
      }

      v23 = v15 - v16;
      v24 = (v14 + 112 * v16 + 40);
      do
      {
        v25 = *v24;
        v26 = v24[1];
        v24 += 7;
        v11 = vaddq_f64(v11, v26);
        v12 = vaddq_f64(v12, v25);
        --v23;
      }

      while (v23);
LABEL_15:
      v10 = v12.f64[1];
      v9 = v11.f64[1];
      if (v12.f64[1] != v11.f64[1] && v3 != v5)
      {
        v43 = v11.f64[0];
        recta = v12.f64[0];
        v28 = AGGraphGetValue();
        v11.f64[0] = v43;
        v12.f64[0] = recta;
        if (*v28)
        {
          v29 = v10;
        }

        else
        {
          v29 = v9;
        }

        if (*v28)
        {
          v10 = v9;
        }

        v9 = v29;
      }
    }
  }

  v44 = v11.f64[0];
  rect = v12.f64[0];
  v30 = AGGraphGetValue();
  v31 = v30[1];
  if (*v30 - (v9 + v10) < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *v30 - (v9 + v10);
  }

  if (v31 - (v44 + rect) < 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v31 - (v44 + rect);
  }

  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_37;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_37:
    v47 = v32;
    v48 = 0;
    v49 = v33;
    v50 = 0;
    v34 = (*(*v7 + 120))(&v47);
    v36 = v35;

    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v37 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    LODWORD(v37) = *(v37 + 232);

    if (v37 == 1)
    {
      v10 = v10 + (v32 - v34) * 0.5;
      rect = rect + (v33 - v36) * 0.5;
    }

    if (v3 == v5)
    {
      AGGraphGetValue();
    }

    else
    {
      v38 = *AGGraphGetValue();
      v39 = AGGraphGetValue();
      if (v38)
      {
        v40 = *v39;
        v51.origin.x = v10;
        v51.origin.y = rect;
        v51.size.width = v34;
        v51.size.height = v36;
        MaxX = CGRectGetMaxX(v51);

        v10 = v40 - MaxX;
LABEL_44:
        *a1 = v10;
        *(a1 + 8) = rect;
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        *(a1 + 32) = v34;
        *(a1 + 40) = v36;
        *(a1 + 48) = v32;
        *(a1 + 56) = v33;
        return result;
      }
    }

    goto LABEL_44;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *key path getter for EnvironmentValues.pixelLength : EnvironmentValues@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.pixelLength.getter();
  *a1 = v3;
  return result;
}

void ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(double a1)
{
  v11 = CGRectStandardize(*v1);
  height = v11.size.height;
  v6.f64[0] = a1 * 0.5 + v11.origin.x;
  y = v11.origin.y;
  v4 = a1 * 0.5 + v11.origin.y;
  v5 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(a1 * 0.5), 0), vaddq_f64(v11.origin, v11.size));
  v6.f64[1] = v4;
  if (a1 == 1.0)
  {
    v7 = vrndmq_f64(v6);
    v8 = vrndaq_f64(vsubq_f64(vrndmq_f64(v5), v7));
  }

  else
  {
    v9 = vdupq_lane_s64(*&a1, 0);
    v7 = vmulq_n_f64(vrndmq_f64(vdivq_f64(v6, v9)), a1);
    v8 = vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(vmulq_n_f64(vrndmq_f64(vdivq_f64(v5, v9)), a1), v7), v9)), a1);
  }

  *v1 = v7;
  *(v1 + 16) = v8;
}

uint64_t initializeWithCopy for DynamicContainer.Info(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);

  return a1;
}

void *closure #1 in _GraphInputs.layoutDirection.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v3, a2);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
  }

  return result;
}

uint64_t StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v19 = OutputValue[1];
    v23 = *OutputValue;
    v18 = v23;
    v24 = v19;
    MEMORY[0x1EEE9AC00](OutputValue);
    v22[-6] = a5;
    v22[-5] = a6;
    v22[-4] = a7;
    v22[-3] = a8;
    v22[-2] = a1;
    v22[-1] = a2;
    v20 = swift_retain_n();
    LayoutComputer.withMutableEngine<A, B>(type:do:)(v20);

    v23 = v18;
    v24 = v19 + 1;

    AGGraphSetOutputValue();
  }

  else
  {
    a3();
    LayoutComputer.init<A>(_:)(v16, a6, &v23);
    v22[1] = v23;
    v22[2] = v24;
    AGGraphSetOutputValue();
  }
}

uint64_t protocol witness for UnaryLayout.sizeThatFits(in:context:child:) in conformance IgnoresAutomaticPaddingLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a3 + 2);
  v13 = *a3;
  v14 = v7;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return LayoutProxy.size(in:)(&v9);
}

uint64_t outlined consume of DynamicContainer.Info?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata completion function for UnaryPositionAwareLayoutEngine()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double _FlexFrameLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  if (v4)
  {
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
  }

  else
  {
    v10 = 0.0;
    if ((*(v3 + 8) & 1) != 0 || (*(v3 + 40) & 1) != 0 || (v12 = *v3, v6 > v8))
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v6 <= *a1)
      {
        v12 = *a1;
      }

      if (v12 <= v8)
      {
        v10 = v12;
      }

      else
      {
        v10 = *(v3 + 32);
      }
    }
  }

  v13 = *(a1 + 16);
  v14 = *a3;
  v15 = *(a3 + 8);
  if (*(a1 + 24))
  {
    v16 = *(v3 + 72);
    if (((v11 | v16) & 1) == 0)
    {
      return v10;
    }
  }

  else if ((*(v3 + 56) & 1) == 0 && (*(v3 + 88) & 1) == 0 && *(v3 + 48) <= *(v3 + 80) && (v11 & 1) == 0)
  {
    return v10;
  }

  v23 = *(v3 + 32);
  v24 = *a1;
  LOBYTE(v25) = v4;
  v26 = v13;
  v27 = v5;
  _FlexFrameLayout.childProposal(myProposal:)(&v24, &v28);
  v17 = v28;
  v18 = v29;
  v24 = v14;
  v25 = v15;
  LayoutProxy.size(in:)(&v28);
  if (!v11)
  {
    return v10;
  }

  if (v7)
  {
    v10 = v19;
    if (v9)
    {
      return v10;
    }

    v10 = v23;
    v20 = *&v17;
    if (v18)
    {
      v20 = -INFINITY;
    }

    if (v20 >= v19)
    {
      v19 = v20;
    }

    if (v19 >= v23)
    {
      return v10;
    }

    return v19;
  }

  v10 = v6;
  if ((v9 & 1) != 0 || v6 > v23)
  {
    v21 = *&v17;
    if (v18)
    {
      v21 = INFINITY;
    }

    if (v21 < v19)
    {
      v19 = v21;
    }

    if (v19 >= v6)
    {
      return v19;
    }
  }

  else
  {
    if (v19 < v6)
    {
      v19 = v6;
    }

    if (v19 <= v23)
    {
      return v19;
    }

    else
    {
      return v23;
    }
  }

  return v10;
}

uint64_t _FlexFrameLayout.childProposal(myProposal:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(result + 8) & *(v2 + 24);
  if ((v4 & 1) == 0)
  {
    if (!*(result + 8))
    {
      v3 = *result;
    }

    v5 = *(v2 + 32);
    v6 = *v2;
    if (*(v2 + 8))
    {
      v6 = -INFINITY;
    }

    if (v6 <= v3)
    {
      v6 = v3;
    }

    if (*(v2 + 40))
    {
      v5 = INFINITY;
    }

    if (v5 >= v6)
    {
      v5 = v6;
    }

    v3 = v5;
  }

  v7 = *(v2 + 64);
  v8 = *(result + 24) & *(v2 + 72);
  if ((v8 & 1) == 0)
  {
    if (*(result + 24))
    {
      v9 = *(v2 + 64);
    }

    else
    {
      v9 = *(result + 16);
    }

    v10 = *(v2 + 80);
    v11 = *(v2 + 48);
    if (*(v2 + 56))
    {
      v11 = -INFINITY;
    }

    if (v11 <= v9)
    {
      v11 = v9;
    }

    if (*(v2 + 88))
    {
      v10 = INFINITY;
    }

    if (v10 >= v11)
    {
      v10 = v11;
    }

    v7 = v10;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t specialized UnaryLayoutComputer.updateValue()()
{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    LOBYTE(__src[0]) = 1;
    v7 = Value[1];
    __src[0] = *Value;
    __src[1] = v7;
    v8 = Value[2];
    v9 = Value[3];
    v10 = Value[6];
    __src[5] = Value[5];
    __src[6] = v10;
    v11 = Value[4];
    __src[3] = v9;
    __src[4] = v11;
    __src[2] = v8;
    v13 = v3;
    v14 = v3;
    v15 = v5;
    v16 = v3;
    v17 = v4;
    v18 = v2;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v22 = 1;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v26 = 1;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v30 = 1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v37 = 1;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v44 = 1;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v51 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = *(Value + 40);
    __src[0] = *Value;
    v9 = *(Value + 8);
    v10 = *(Value + 24);
    v11 = v7;
    v12 = v3;
    v13 = v3;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    v17 = v2;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v21 = 1;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v25 = 1;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v29 = 1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v36 = 1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v43 = 1;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v50 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = *(Value + 16);
    v9 = *(Value + 8);
    v8 = *(Value + 24);
    __src = *Value;
    v11 = v9;
    v12 = v7;
    v13 = v8;
    v14 = *(Value + 32);
    v15 = v3;
    v16 = v3;
    v17 = v5;
    v18 = v3;
    v19 = v4;
    v20 = v2;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v28 = 1;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v32 = 1;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v39 = 1;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v46 = 1;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v53 = 1;
    return specialized StatefulRule<>.update<A>(to:)(&__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = *(Value + 9);
    v8 = *(Value + 8);
    __src = *Value;
    v10 = v8;
    v11 = v7;
    v12 = v3;
    v13 = v3;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    v17 = v2;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v21 = 1;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v25 = 1;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v29 = 1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v36 = 1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v43 = 1;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v50 = 1;
    return specialized StatefulRule<>.update<A>(to:)(&__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    return specialized StatefulRule<>.update<A>(to:)(&__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *(v0 + 8);
    v14 = *(v0 + 4);
    v5 = v14;
    v15 = v4;
    Value = AGGraphGetValue();
    v16 = &v10;
    v7 = *Value;
    v17 = 1;
    v12 = 1;
    v13 = 1;
    v18 = 1;
    v19 = v7;
    v20 = v3;
    v21 = v3;
    v22 = v5;
    v23 = v3;
    v24 = v4;
    v25 = v2;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 1;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 1;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v44 = 1;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 1;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    MEMORY[0x1EEE9AC00](Value);
    v11 = v2;
    v9[2] = &v19;
    MEMORY[0x1EEE9AC00](v8);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    v19 = v7;
    v20 = v3;
    v21 = v3;
    v22 = v14;
    v23 = v3;
    v24 = v15;
    v25 = v11;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 1;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = v12;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = v13;
    v42 = 0u;
    v43 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v44 = 1;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 1;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    return outlined destroy of UnaryLayoutEngine<SpacingLayout>(&v19);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = Value[1];
    __src[0] = *Value;
    __src[1] = v7;
    v9 = v3;
    v10 = v3;
    v11 = v5;
    v12 = v3;
    v13 = v4;
    v14 = v2;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v18 = 1;
    v21 = 0u;
    v19 = 0u;
    v20 = 0u;
    v22 = 1;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v26 = 1;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v33 = 1;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v40 = 1;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v47 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = outlined init with copy of ConcentricPaddingLayout(Value, v10);
    v18 = 1;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 1;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 1;
    v44 = 1;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v29 = 1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v36 = 1;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v43 = 1;
    v10[12] = v3;
    v10[13] = v3;
    v10[14] = v5;
    v10[15] = v3;
    v10[16] = v4;
    v10[17] = v2;
    MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v8);
    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v9, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
    return outlined destroy of UnaryLayoutEngine<ConcentricPaddingLayout>(v10);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    Value = AGGraphGetValue();
    v7 = *(Value + 40);
    __src[0] = *Value;
    v9 = *(Value + 8);
    v10 = *(Value + 24);
    v11 = v7;
    v12 = v3;
    v13 = v3;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    v17 = v2;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v21 = 1;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v25 = 1;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v29 = 1;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v36 = 1;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v43 = 1;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v50 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    LOBYTE(__src) = 1;
    __src = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v31 = 1;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    return specialized StatefulRule<>.update<A>(to:)(&__src);
  }

  return result;
}

{
  result = AGGraphGetCurrentAttribute();
  v2 = *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *(v0 + 4);
    v4 = *(v0 + 8);
    __src[0] = *AGGraphGetValue();
    v7 = v3;
    v8 = v3;
    v9 = v5;
    v10 = v3;
    v11 = v4;
    v12 = v2;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v16 = 1;
    v19 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 1;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v24 = 1;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v31 = 1;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v38 = 1;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v45 = 1;
    return specialized StatefulRule<>.update<A>(to:)(__src);
  }

  return result;
}

uint64_t specialized StatefulRule<>.update<A>(to:)(void *__src)
{
  v11[77] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x261uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x261uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA010_FlexFrameC0VG_Tt1B5(v11, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[69] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x221uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x221uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[69] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x221uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x221uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[65] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x201uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_AspectRatioLayout>, lazy protocol witness table accessor for type _AspectRatioLayout and conformance _AspectRatioLayout, &type metadata for _AspectRatioLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x201uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA09_PositionC0VG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_AspectRatioLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[64] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x1F9uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<LayoutPriorityLayout>, lazy protocol witness table accessor for type LayoutPriorityLayout and conformance LayoutPriorityLayout, &type metadata for LayoutPriorityLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<LayoutPriorityLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[64] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x1F9uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_FixedSizeLayout>, lazy protocol witness table accessor for type _FixedSizeLayout and conformance _FixedSizeLayout, &type metadata for _FixedSizeLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FixedSizeLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[64] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x1F9uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>, lazy protocol witness table accessor for type IgnoresAutomaticPaddingLayout and conformance IgnoresAutomaticPaddingLayout, &type metadata for IgnoresAutomaticPaddingLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<IgnoresAutomaticPaddingLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[64] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x1F9uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<MoveTransition.MoveLayout>, lazy protocol witness table accessor for type MoveTransition.MoveLayout and conformance MoveTransition.MoveLayout, &type metadata for MoveTransition.MoveLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<MoveTransition.MoveLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[69] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x221uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;

    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);
      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x221uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[65] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x201uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_PositionLayout>, lazy protocol witness table accessor for type _PositionLayout and conformance _PositionLayout, &type metadata for _PositionLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x201uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA09_PositionC0VG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_PositionLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[64] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x1F9uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<_AlignmentLayout>, lazy protocol witness table accessor for type _AlignmentLayout and conformance _AlignmentLayout, &type metadata for _AlignmentLayout, type metadata accessor for UnaryLayoutEngine);
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x1F9uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm(v11, type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>, type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_AlignmentLayout>>, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[52] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x199uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>();
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x199uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA024PartialContainerRelativeH0VGG_Tt1B5(v11, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11[70] = *MEMORY[0x1E69E9840];
  memcpy(v10, __src, 0x229uLL);
  v9[4] = v10;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v3 = *OutputValue;
    v4 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v5 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v5 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>();
      v7 = MEMORY[0x1EEE9AC00](v6);
      (*(*v3 + 80))(v7);

      v11[0] = v3;
      v11[1] = v4 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    memcpy(v11, __src, 0x229uLL);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA19ConcentricRectangleVGG_Tt1B5(v11, v9);
    AGGraphSetOutputValue();
  }

  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA010_FlexFrameC0VG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>();
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 628) = v7;
    *(v4 + 632) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>();
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x261uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FlexFrameLayout>, lazy protocol witness table accessor for type _FlexFrameLayout and conformance _FlexFrameLayout, &type metadata for _FlexFrameLayout, type metadata accessor for UnaryLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FlexFrameLayout>>);
    }
  }
}

uint64_t type metadata completion function for UnaryLayoutEngine()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for LayoutSubviews(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 17) = *(a2 + 17);

  return a1;
}

unint64_t LayoutSubviews.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 17);
  if (*(v2 + 16))
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (*(v3 + 16) > result)
      {
        v5 = v3 + 12 * result;
        v6 = (v5 + 32);
        result = *(v5 + 40);
LABEL_8:
        *a2 = *v2;
        *(a2 + 4) = *v6;
        *(a2 + 12) = result;
        *(a2 + 16) = v4;
        return result;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if (*(v3 + 16) > result)
  {
    v6 = (v3 + 8 * result + 32);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_PaddingLayout>, lazy protocol witness table accessor for type _PaddingLayout and conformance _PaddingLayout, &type metadata for _PaddingLayout, type metadata accessor for UnaryLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_PaddingLayout>>);
    }
  }
}

double _PaddingLayout.effectiveInsets(in:)(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v4 = *(a1 + 8);
    swift_getKeyPath();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentFetch<EdgeInsets>);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    _ss7KeyPathCy7SwiftUI17EnvironmentValuesVAC15LayoutDirectionOGMaTm_0(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, EdgeInsets>);

    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<EdgeInsets> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<EdgeInsets>);
    lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>(&lazy protocol witness table cache variable for type EnvironmentFetch<EdgeInsets> and conformance EnvironmentFetch<A>, &lazy cache variable for type metadata for EnvironmentFetch<EdgeInsets>);
    v2 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
  }

  else
  {
    v2 = *(v1 + 8);
  }

  if (!Edge.Set.contains(_:)(SwiftUI_Edge_top))
  {
    v2 = 0.0;
  }

  Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  return v2;
}

uint64_t _PaddingLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 2);
  v18 = *a2;
  v19 = v7;
  v11 = _PaddingLayout.effectiveInsets(in:)(&v18);
  v14 = v3 - (v12 + v13);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  if (v4)
  {
    v14 = v3;
  }

  v15 = v5 - (v11 + v10);
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  v22 = v8;
  v23 = v9;
  v18 = v14;
  LOBYTE(v19) = v4;
  if (v6)
  {
    v16 = v5;
  }

  else
  {
    v16 = v15;
  }

  v20 = v16;
  v21 = v6;
  return LayoutProxy.size(in:)(&v18);
}

uint64_t LayoutEngineBox.lengthThatFits(_:in:)(uint64_t *a1, char a2)
{
  v3 = *v2;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return (*(*(v3 + 184) + 48))(&v8, a2 & 1, *(v3 + 176));
}

double LayoutEngine.lengthThatFits(_:in:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v10 = *a1;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  (*(a4 + 40))(&v10, a3, a4);
  if (a2)
  {
    return v9;
  }

  return result;
}

double _FrameLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = a3[1];
  v7 = a3[2];
  v8 = *v3;
  v9 = *(v3 + 8);
  if ((v9 & 1) == 0)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      return v8;
    }

    v10 = 0;
    v21 = *a3;
    v22 = v6;
    v13 = 1;
    v11 = *&v8;
    v23 = v7;
    goto LABEL_6;
  }

  v10 = *(a1 + 8);
  v11 = *a1;
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v21 = *a3;
  v22 = v6;
  v23 = v7;
  v14 = v12;
  if (v13)
  {
LABEL_6:
    v14 = v4;
  }

  v17 = v11;
  v18 = v10;
  v19 = v14;
  v20 = v13 & v5 & 1;
  LayoutProxy.size(in:)(&v17);
  if (v9)
  {
    return v15;
  }

  return v8;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0qC0V07WrappedC0VG_Tt1B5Tm@<X0>(const void *a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a2(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 564) = v11;
    *(v8 + 568) = v10;
  }

  else
  {
    a3(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x221uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for UnaryLayoutEngine<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<UnaryLayoutEngine<_FrameLayout>>);
    }
  }
}

char *StackLayout.makeChildren()()
{
  v1 = v0;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = specialized Collection.count.getter(*(v0 + 80), v2);
  v5 = *(v1 + 104);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v4 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 0, v5);
    v5 = result;
  }

  *(v1 + 104) = v5;
  *(v1 + 24) = 0;
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v2 + 32);
    v44 = *MEMORY[0x1E698D3F8];
    v43 = v8 - 1;
    v11 = 0.0;
    v41 = v2;
    v42 = v2 + 32;
    v40 = v3;
LABEL_14:
    v25 = 0.0;
    v26 = *(v2 + 16);
    if (v3)
    {
      while (1)
      {
        v27 = v10;
        if (v9 >= v26)
        {
          break;
        }

LABEL_22:
        if (*v27 == v44)
        {
          InputValue = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            InputValue = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          InputValue = AGGraphGetInputValue();
        }

        v29 = *InputValue;
        v30 = one-time initialization token for lockAssertionsAreEnabled;

        if (v30 != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_43;
          }
        }

        v31 = (*(*v29 + 88))();

        if (one-time initialization token for invalidValue != -1)
        {
          swift_once();
        }

        v47 = static ViewGeometry.invalidValue;
        v48 = *&qword_1ED53A0F8;
        v49 = xmmword_1ED53A108;
        v50 = unk_1ED53A118;
        LOBYTE(v59) = 1;
        LOBYTE(v63) = 1;
        v51 = static ViewGeometry.invalidValue;
        v52 = *&qword_1ED53A0F8;
        v53 = xmmword_1ED53A108;
        v54 = unk_1ED53A118;
        result = outlined init with copy of ViewGeometry(&v47, &v45);
        v33 = *(v5 + 2);
        v32 = *(v5 + 3);
        if (v33 >= v32 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v5);
          v5 = result;
        }

        *(v5 + 2) = v33 + 1;
        v34 = &v5[120 * v33];
        *(v34 + 4) = v31;
        *(v34 + 5) = 0;
        v34[48] = 1;
        v35 = *(&v65 + 3);
        *(v34 + 49) = v65;
        *(v34 + 13) = v35;
        *(v34 + 7) = 0;
        v34[64] = 1;
        v36 = v61;
        *(v34 + 17) = *(&v61 + 3);
        *(v34 + 65) = v36;
        *(v34 + 9) = v25;
        *(v34 + 10) = v9;
        v37 = v51;
        v38 = v52;
        v39 = v53;
        *(v34 + 136) = v54;
        *(v34 + 120) = v39;
        *(v34 + 104) = v38;
        *(v34 + 88) = v37;
        if (v43 == v9)
        {
          *(v1 + 104) = v5;
          return result;
        }

        v10 += 3;
        if (!++v9)
        {
          goto LABEL_14;
        }

        if (*(v1 + 16))
        {
          v12 = *(v1 + 97);
          v13 = *(v1 + 96);
          v14 = *(v1 + 88);
          LODWORD(v51) = *(v1 + 80);
          *(&v51 + 1) = v14;
          LOBYTE(v52) = v13;
          BYTE1(v52) = v12;
          LayoutSubviews.subscript.getter(v9 - 1, &v45);
          v65 = v45;
          v66 = v46;
          LayoutSubview.spacing.getter(&v63);
          v15 = v63;
          v16 = v64;
          v17 = *(v1 + 88);
          v18 = *(v1 + 96);
          v19 = *(v1 + 97);
          LODWORD(v47) = *(v1 + 80);
          *(&v47 + 1) = v17;
          LOBYTE(v48) = v18;
          BYTE1(v48) = v19;
          LayoutSubviews.subscript.getter(v9, &v61);
          v59 = v61;
          v60 = v62;
          LayoutSubview.spacing.getter(&v58);
          v20 = *(v1 + 17);
          v57 = v15;
          v56 = v16 & 1;
          v55 = v58;

          *&v21 = COERCE_DOUBLE(Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(v20, &v56, &v55));
          v23 = v22;

          if (v23)
          {
            swift_beginAccess();
            v24 = &unk_1EAB21528;
            if (!v20)
            {
              v24 = &static Spacing.defaultValue;
            }

            v25 = *v24;
          }

          else
          {

            v25 = *&v21;
          }

          v2 = v41;
          v3 = v40;
        }

        else
        {
          v25 = *(v1 + 8);
        }

        v11 = v11 + v25;
        *(v1 + 24) = v11;
        v26 = *(v2 + 16);
        if ((v3 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      if (v9 < v26)
      {
        v27 = (v42 + 8 * v9);
        goto LABEL_22;
      }

      __break(1u);
    }

    __break(1u);
LABEL_43:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t initializeWithCopy for _StackLayoutCache(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t specialized StackLayout.UnmanagedImplementation.sizeChildrenGenerallyWithConcreteMajorProposal(in:minorProposalForChild:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a5 + 17);
  if (*(a5 + 17))
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  if ((v10 & 1) == 0)
  {
    v11 = a7;
    v13 = a5;
    v16 = *(a5 + 24);
    LOBYTE(v88) = a2 & 1;
    v92 = a4 & 1;
    result = StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(a6, a7, a1, a2 & 1, a3, a4 & 1, a5, a6, a7);
    if (a6)
    {
      v18 = a6;
    }

    else
    {
      v18 = -8;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {
        return result;
      }

      v19 = 0;
      v20 = (v18 + 48);
      if (v9)
      {
        v21 = *&a3;
      }

      else
      {
        v21 = *&a1;
      }

      v22 = v21 - v16;
      v82 = *MEMORY[0x1E698D3F8];
      v80 = v20;
      v81 = a6;
      v77 = v11;
      v87 = v13;
      while (v19 < v11)
      {
        v25 = 15 * v19;
        if ((v19 * 120) >> 64 != (120 * v19) >> 63)
        {
          goto LABEL_140;
        }

        v26 = v20[15 * v19];
        v24 = v19 == v11;
        if (v19 != v11)
        {
          v23 = v19;
          while ((v23 * 120) >> 64 == (120 * v23) >> 63)
          {
            if (*(a6 + 120 * v20[15 * v23]) != *(a6 + 120 * v26))
            {
              goto LABEL_25;
            }

            if (v19 < 0)
            {
              goto LABEL_128;
            }

            v24 = v11 == ++v23;
            if (v11 == v23)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_127;
        }

LABEL_24:
        v23 = v11;
LABEL_25:
        if (v23 < v19)
        {
          goto LABEL_141;
        }

        if (v23 > v11)
        {
          goto LABEL_142;
        }

        v27 = 0.0;
        if (v26 == *v20)
        {
          if (v23 != v11)
          {
            v28 = v23;
            while ((v28 * 120) >> 64 == (120 * v28) >> 63)
            {
              if (v23 < 0)
              {
                goto LABEL_131;
              }

              v29 = a6 + 120 * v20[15 * v28];
              if (*(v29 + 16))
              {
                goto LABEL_145;
              }

              ++v28;
              v27 = v27 + *(v29 + 8);
              if (v11 == v28)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_129;
          }

LABEL_34:
          v22 = v22 - v27;
          v30 = v23 - v19;
          if (v23 != v19)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v23 != v19)
          {
            if (v19 <= v11)
            {
              v31 = v11;
            }

            else
            {
              v31 = v19;
            }

            v32 = v19;
            while ((v32 * 120) >> 64 == (120 * v32) >> 63)
            {
              if (v31 == v32)
              {
                goto LABEL_132;
              }

              v33 = a6 + 120 * v20[15 * v32];
              if (*(v33 + 16))
              {
                goto LABEL_146;
              }

              ++v32;
              v27 = v27 + *(v33 + 8);
              if (v23 == v32)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_130;
          }

LABEL_45:
          v22 = v22 + v27;
          v30 = v23 - v19;
          if (v23 != v19)
          {
LABEL_46:
            if (v23 < 0)
            {
              goto LABEL_143;
            }

            v79 = v23;
            v78 = v24;
            if (v19 <= v11)
            {
              v34 = v11;
            }

            else
            {
              v34 = v19;
            }

            if ((v19 * 120) >> 64 == (v25 * 8) >> 63)
            {
              v35 = v19 + 1;
              v84 = -v23;
              v85 = -v34;
              while (v85 + v35 != 1)
              {
                v36 = v20[v25];
                v37 = v22 / v30;
                if (v37 <= 0.0)
                {
                  v37 = 0.0;
                }

                if (*(v13 + 17) == 1)
                {
                  v38 = *&a8;
                }

                else
                {
                  v38 = v37;
                }

                if (*(v13 + 17) == 1)
                {
                  v39 = a9;
                }

                else
                {
                  v39 = 0;
                }

                if (*(v13 + 17) == 1)
                {
                  v40 = v37;
                }

                else
                {
                  v40 = *&a8;
                }

                if (*(v13 + 17) == 1)
                {
                  v41 = 0;
                }

                else
                {
                  v41 = a9;
                }

                v42 = *(v13 + 88);
                if (*(v13 + 96))
                {
                  if ((v36 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_134;
                  }

                  if (v36 >= *(v42 + 16))
                  {
                    goto LABEL_136;
                  }

                  v43 = v42 + 12 * v36;
                }

                else
                {
                  if ((v36 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_133;
                  }

                  if (v36 >= *(v42 + 16))
                  {
                    goto LABEL_135;
                  }

                  v43 = v42 + 8 * v36;
                }

                if (*(v43 + 32) == v82)
                {
                  InputValue = &static LayoutComputer.defaultValue;
                  if (one-time initialization token for defaultValue != -1)
                  {
                    swift_once();
                    InputValue = &static LayoutComputer.defaultValue;
                  }
                }

                else
                {
                  InputValue = AGGraphGetInputValue();
                }

                v46 = *InputValue;
                v45 = InputValue[1];
                v47 = one-time initialization token for lockAssertionsAreEnabled;

                if (v47 != -1)
                {
                  swift_once();
                }

                v48 = lockAssertionsAreEnabled;
                if (lockAssertionsAreEnabled)
                {
                  if (one-time initialization token for _lock != -1)
                  {
                    swift_once();
                  }

                  if (!_MovableLockIsOwner(static Update._lock))
                  {
                    goto LABEL_148;
                  }
                }

                *&v88 = v38;
                if (v41)
                {
                  v49 = NAN;
                }

                else
                {
                  v49 = v40;
                }

                BYTE8(v88) = v39 & 1;
                *&v89 = v40;
                BYTE8(v89) = v41 & 1;
                if (v39)
                {
                  v50 = NAN;
                }

                else
                {
                  v50 = v38;
                }

                v51 = (*(*v46 + 120))(&v88);
                v53 = v52;
                v54 = *v87;
                if (v48)
                {
                  v55 = one-time initialization token for _lock;

                  if (v55 != -1)
                  {
                    swift_once();
                  }

                  if (!_MovableLockIsOwner(static Update._lock))
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
                }

                *&v88 = v51;
                *(&v88 + 1) = v53;
                *&v89 = v50;
                *(&v89 + 1) = v49;
                *&v56 = COERCE_DOUBLE((*(*v46 + 144))(v54, &v88));
                v58 = v57;

                v86 = v30;
                if (v58)
                {
                  if (one-time initialization token for typeCache != -1)
                  {
                    swift_once();
                  }

                  os_unfair_lock_lock(&static AlignmentKey.typeCache);
                  if (v54 < 2)
                  {
                    goto LABEL_137;
                  }

                  if (v54 >> 1 > *(off_1ED537F58 + 2))
                  {
                    goto LABEL_138;
                  }

                  v59 = (off_1ED537F58 + 16 * (v54 >> 1) + 16);
                  v60 = *v59;
                  v61 = v59[1];
                  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
                  *&v88 = v46;
                  *(&v88 + 1) = v45;
                  v62 = v45;
                  *&v89 = v51;
                  *(&v89 + 1) = v53;
                  *&v90 = v50;
                  *(&v90 + 1) = v49;
                  (*(v61 + 8))(&v88, v60, v61);
                }

                else
                {
                  v63 = *&v56;
                  v62 = v45;
                }

                v64 = INFINITY;
                if ((*&v63 & 0xFFFFFFFFFFFFFLL) == 0)
                {
                  v64 = v63;
                }

                a6 = v81;
                v65 = v81 + 120 * v36;
                v66 = *(v65 + 56);
                v67 = *(v65 + 72);
                if ((~*&v63 & 0x7FF0000000000000) == 0)
                {
                  v63 = v64;
                }

                v68 = -v63;
                v69 = *(v65 + 104);
                if (*(v87 + 17))
                {
                  v70 = v68;
                }

                else
                {
                  v70 = 0.0;
                }

                if (*(v87 + 17))
                {
                  v68 = 0.0;
                }

                v90 = *(v65 + 88);
                v91 = v69;
                v88 = v66;
                v89 = v67;
                v71 = (v65 + 88);
                *(v65 + 56) = v70;
                *(v65 + 72) = v46;
                v13 = v87;
                *(v65 + 88) = v51;
                *(v65 + 104) = v50;
                *(v65 + 96) = v53;
                v72 = (v65 + 96);
                *(v65 + 64) = v68;
                *(v65 + 80) = v62;
                *(v65 + 112) = v49;
                result = outlined destroy of ViewGeometry(&v88);
                if (*(v87 + 17))
                {
                  v73 = v72;
                }

                else
                {
                  v73 = v71;
                }

                v74 = v22 - *v73;
                if ((*&v74 & 0xFFFFFFFFFFFFFLL) != 0)
                {
                  v75 = v22;
                }

                else
                {
                  v75 = v74;
                }

                if ((~*&v74 & 0x7FF0000000000000) != 0)
                {
                  v22 = v74;
                }

                else
                {
                  v22 = v75;
                }

                if (!(v84 + v35))
                {
                  v11 = v77;
                  v23 = v79;
                  v20 = v80;
                  v24 = v78;
                  goto LABEL_15;
                }

                v25 = 15 * v35;
                v76 = (v35 * 120) >> 64 == (120 * v35) >> 63;
                ++v35;
                v30 = v86 - 1;
                v20 = v80;
                if (!v76)
                {
                  goto LABEL_125;
                }
              }
            }

            else
            {
LABEL_125:
              __break(1u);
            }

            __break(1u);
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
            break;
          }
        }

LABEL_15:
        v19 = v23;
        if (v24)
        {
          return result;
        }
      }

      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
  }

  __break(1u);
LABEL_148:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(uint64_t result, unint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a5;
  v11 = a2;
  v12 = 40;
  if (!*(a7 + 17))
  {
    v12 = 56;
  }

  if (*(a7 + 17))
  {
    v13 = a4;
  }

  else
  {
    v13 = a6;
  }

  if (*(a7 + v12))
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 48;
    if (*(a7 + 17))
    {
      v14 = 32;
      v15 = *&a3;
    }

    else
    {
      v15 = *&a5;
    }

    if (v13 & 1 | (*(a7 + v14) != v15))
    {
      goto LABEL_16;
    }
  }

  v16 = 40;
  if (*(a7 + 17))
  {
    v16 = 56;
  }

  if (*(a7 + v16) != 1)
  {
    return result;
  }

LABEL_16:
  v104 = a3;
  if (!a2)
  {
    if (result)
    {
      v19 = result;
    }

    else
    {
      v19 = -8;
    }

    v114 = v19 + 48;
    v115 = 0;
    if (a9 <= 32)
    {
      if ((*(v19 + 48) - 0x111111111111112) >= 0xFDDDDDDDDDDDDDDDLL)
      {
        return result;
      }

      goto LABEL_231;
    }

    v108 = (v19 + 48);
    v20 = v19 + 8;
    goto LABEL_164;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_232;
  }

  v17 = (result + 32);
  v18 = a2;
  do
  {
    *(v17 - 3) = 0;
    *(v17 - 16) = 1;
    *(v17 - 1) = 0;
    *v17 = 1;
    v17 += 120;
    --v18;
  }

  while (v18);
  if (result)
  {
    v19 = result;
  }

  else
  {
    v19 = -8;
  }

  v20 = v19 + 8;
  v21 = (v19 + 48);
  v114 = v19 + 48;
  v115 = a2;
  v108 = (v19 + 48);
  if (a9 > 32)
  {
LABEL_164:
    LOBYTE(v110) = a4 & 1;
    v76 = a3;
    result = slowPath #1 (_:) in StackLayout.UnmanagedImplementation.prioritize(_:proposedSize:)(&v114, v19, a2, v20, a2, a7, a8, a9, a3, a4 & 1, a5, a6 & 1);
    a3 = v76;
    v21 = v108;
    goto LABEL_165;
  }

  if (a2 != 1)
  {
    v98 = *MEMORY[0x1E698D3F8];
    v22 = 1;
    v23 = 48;
    v99 = v19;
    v96 = v19 + 8;
    do
    {
      if (v22 == 0x111111111111112)
      {
        goto LABEL_228;
      }

      v26 = v21[15 * v22];
      v27 = 120 * v26;
      v97 = v26;
      if ((v26 * 120) >> 64 != (120 * v26) >> 63)
      {
        goto LABEL_229;
      }

      v28 = 0;
      v29 = v20 + v27;
      v94 = v23;
      v101 = 120 * v26;
      v102 = v22;
      v100 = v20 + v27;
      while (1)
      {
        v30 = *(v19 + v23);
        if ((v30 * 120) >> 64 != (120 * v30) >> 63)
        {
          __break(1u);
LABEL_203:
          __break(1u);
          goto LABEL_204;
        }

        v31 = *(v19 + v27);
        v32 = *(v19 + 120 * v30);
        if (v32 < v31)
        {
          goto LABEL_154;
        }

        if (v31 < v32)
        {
          goto LABEL_157;
        }

        if (*(v29 + 8))
        {
          v33 = *(a7 + 17);
          if (*(a7 + 17))
          {
            v34 = a3;
          }

          else
          {
            v34 = 0;
          }

          if (*(a7 + 17))
          {
            v35 = 0;
          }

          else
          {
            v35 = v10;
          }

          v36 = *(a7 + 88);
          if (*(a7 + 96))
          {
            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_212;
            }

            if (v97 >= *(v36 + 16))
            {
              goto LABEL_217;
            }

            v37 = v36 + 12 * v97;
          }

          else
          {
            if ((v97 & 0x8000000000000000) != 0)
            {
              goto LABEL_213;
            }

            if (v97 >= *(v36 + 16))
            {
              goto LABEL_216;
            }

            v37 = v36 + 8 * v97;
          }

          if (*(v37 + 32) == v98)
          {
            InputValue = &static LayoutComputer.defaultValue;
            if (one-time initialization token for defaultValue != -1)
            {
              swift_once();
              InputValue = &static LayoutComputer.defaultValue;
            }
          }

          else
          {
            InputValue = AGGraphGetInputValue();
          }

          v46 = *InputValue;
          v47 = one-time initialization token for lockAssertionsAreEnabled;

          if (v47 != -1)
          {
            swift_once();
          }

          v10 = a5;
          if (lockAssertionsAreEnabled)
          {
            if (one-time initialization token for _lock != -1)
            {
              swift_once();
            }

            if (!_MovableLockIsOwner(static Update._lock))
            {
              goto LABEL_233;
            }
          }

          v110 = v34;
          v111 = v33 & a4;
          v112 = v35;
          v113 = (v33 ^ 1) & a6;
          v38 = (*(*v46 + 128))(&v110, v33);

          v19 = v99;
          v29 = v100;
          *v100 = v38;
          *(v100 + 8) = 0;
          v22 = v102;
          a3 = v104;
          v21 = v108;
          v27 = v101;
          if ((*(v100 + 24) & 1) == 0)
          {
LABEL_77:
            v48 = *(v29 + 16);
            goto LABEL_86;
          }
        }

        else
        {
          v38 = *v29;
          if ((*(v29 + 24) & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        v39 = *(a7 + 17);
        v40 = *(a7 + 17) ? a3 : 0x7FF0000000000000;
        v41 = *(a7 + 17) ? 0x7FF0000000000000 : v10;
        v42 = *(a7 + 88);
        if (*(a7 + 96))
        {
          if ((v97 & 0x8000000000000000) != 0)
          {
            goto LABEL_214;
          }

          if (v97 >= *(v42 + 16))
          {
            goto LABEL_221;
          }

          v43 = v42 + 12 * v97;
        }

        else
        {
          if ((v97 & 0x8000000000000000) != 0)
          {
            goto LABEL_215;
          }

          if (v97 >= *(v42 + 16))
          {
            goto LABEL_219;
          }

          v43 = v42 + 8 * v97;
        }

        if (*(v43 + 32) == v98)
        {
          v45 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v45 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v45 = AGGraphGetInputValue();
        }

        v49 = *v45;
        v50 = one-time initialization token for lockAssertionsAreEnabled;

        if (v50 != -1)
        {
          swift_once();
        }

        v10 = a5;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_233;
          }
        }

        v110 = v40;
        v111 = v39 & a4;
        v112 = v41;
        v113 = (v39 ^ 1) & a6;
        v48 = (*(*v49 + 128))(&v110, v39);

        v19 = v99;
        v29 = v100;
        *(v100 + 16) = v48;
        *(v100 + 24) = 0;
        v22 = v102;
        a3 = v104;
        v21 = v108;
        v27 = v101;
LABEL_86:
        v51 = v96 + 120 * v30;
        if (*(v51 + 8))
        {
          v52 = *(a7 + 17);
          if (*(a7 + 17))
          {
            v53 = a3;
          }

          else
          {
            v53 = 0;
          }

          if (*(a7 + 17))
          {
            v54 = 0;
          }

          else
          {
            v54 = v10;
          }

          v55 = *(a7 + 88);
          if (*(a7 + 96))
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_218;
            }

            if (v30 >= *(v55 + 16))
            {
              goto LABEL_225;
            }

            v56 = v55 + 12 * v30;
          }

          else
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_220;
            }

            if (v30 >= *(v55 + 16))
            {
              goto LABEL_223;
            }

            v56 = v55 + 8 * v30;
          }

          if (*(v56 + 32) == v98)
          {
            v63 = &static LayoutComputer.defaultValue;
            if (one-time initialization token for defaultValue != -1)
            {
              swift_once();
              v63 = &static LayoutComputer.defaultValue;
            }
          }

          else
          {
            v63 = AGGraphGetInputValue();
          }

          v65 = *v63;
          v66 = one-time initialization token for lockAssertionsAreEnabled;

          if (v66 != -1)
          {
            swift_once();
          }

          v10 = a5;
          if (lockAssertionsAreEnabled)
          {
            if (one-time initialization token for _lock != -1)
            {
              swift_once();
            }

            if (!_MovableLockIsOwner(static Update._lock))
            {
              goto LABEL_233;
            }
          }

          v110 = v53;
          v111 = v52 & a4;
          v112 = v54;
          v113 = (v52 ^ 1) & a6;
          v57 = (*(*v65 + 128))(&v110, v52);

          *v51 = v57;
          *(v51 + 8) = 0;
          v22 = v102;
          a3 = v104;
          v19 = v99;
          v29 = v100;
          v21 = v108;
          v27 = v101;
          if ((*(v51 + 24) & 1) == 0)
          {
LABEL_128:
            v67 = *(v51 + 16);
            goto LABEL_137;
          }
        }

        else
        {
          v57 = *v51;
          if ((*(v51 + 24) & 1) == 0)
          {
            goto LABEL_128;
          }
        }

        v58 = *(a7 + 17);
        v59 = *(a7 + 17) ? a3 : 0x7FF0000000000000;
        v60 = *(a7 + 17) ? 0x7FF0000000000000 : v10;
        v61 = *(a7 + 88);
        if (*(a7 + 96))
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_222;
          }

          if (v30 >= *(v61 + 16))
          {
            goto LABEL_227;
          }

          v62 = v61 + 12 * v30;
        }

        else
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            goto LABEL_224;
          }

          if (v30 >= *(v61 + 16))
          {
            goto LABEL_226;
          }

          v62 = v61 + 8 * v30;
        }

        if (*(v62 + 32) == v98)
        {
          v64 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v64 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v64 = AGGraphGetInputValue();
        }

        v68 = *v64;
        v69 = one-time initialization token for lockAssertionsAreEnabled;

        if (v69 != -1)
        {
          swift_once();
        }

        v10 = a5;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_233;
          }
        }

        v110 = v59;
        v111 = v58 & a4;
        v112 = v60;
        v113 = (v58 ^ 1) & a6;
        v67 = (*(*v68 + 128))(&v110, v58);

        *(v51 + 16) = v67;
        *(v51 + 24) = 0;
        v22 = v102;
        a3 = v104;
        v19 = v99;
        v29 = v100;
        v21 = v108;
        v27 = v101;
LABEL_137:
        v70 = v48 - v38;
        v71 = v67 - v57;
        if (v48 - v38 == INFINITY)
        {
          v72 = v67 - v57;
          if (v71 == INFINITY)
          {
            if (v38 > v57)
            {
              goto LABEL_154;
            }

LABEL_147:
            v73 = -v57;
            v74 = -v38;
LABEL_150:
            if (v73 < v74)
            {
              goto LABEL_157;
            }

            goto LABEL_153;
          }
        }

        else
        {
          v72 = INFINITY;
          if (v71 != INFINITY)
          {
            v72 = v67 - v57;
            if (v70 == v71)
            {
              goto LABEL_149;
            }
          }
        }

        if (v70 >= v72)
        {
          break;
        }

LABEL_154:
        v75 = 15 * (v22 + v28);
        if (((v22 + v28) * 120) >> 64 != (v75 * 8) >> 63)
        {
          goto LABEL_203;
        }

        v23 -= 120;
        v21[v75] = v30;
        --v28;
        if (v23 == -72)
        {
          v24 = 0;
          v25 = v94;
          goto LABEL_26;
        }
      }

      if (v71 != INFINITY)
      {
        if (v70 == INFINITY)
        {
          goto LABEL_152;
        }

LABEL_149:
        v74 = 0.0;
        v73 = 0.0;
        if (v71 != v70)
        {
          goto LABEL_152;
        }

        goto LABEL_150;
      }

      v71 = INFINITY;
      if (v70 == INFINITY)
      {
        goto LABEL_147;
      }

LABEL_152:
      if (v71 < v70)
      {
        goto LABEL_157;
      }

LABEL_153:
      if (v97 < v30)
      {
        goto LABEL_154;
      }

LABEL_157:
      v25 = v94;
      if (!v28)
      {
        goto LABEL_28;
      }

      v24 = v22 + v28;
LABEL_26:
      if ((v24 * 120) >> 64 != (120 * v24) >> 63)
      {
        goto LABEL_230;
      }

      v21[15 * v24] = v97;
LABEL_28:
      ++v22;
      v23 = v25 + 120;
      v11 = a2;
      v20 = v96;
    }

    while (v22 != a2);
  }

LABEL_165:
  v77 = 120 * *v21;
  if ((*v21 * 120) >> 64 == v77 >> 63)
  {
    if (!v11)
    {
      return result;
    }

    v78 = *(v19 + v77);
    v103 = *MEMORY[0x1E698D3F8];
    v79 = v11;
    v109 = v21;
    while (!__OFSUB__(v79--, 1))
    {
      if (v79 < 0 || v79 >= v11)
      {
        goto LABEL_205;
      }

      if ((v79 * 120) >> 64 != (120 * v79) >> 63)
      {
        goto LABEL_206;
      }

      v82 = v21[15 * v79];
      v83 = 120 * v82;
      if ((v82 * 120) >> 64 != (120 * v82) >> 63)
      {
        goto LABEL_207;
      }

      if (*(v19 + 120 * v82) == v78)
      {
        return result;
      }

      v84 = v20 + v83;
      if (*(v20 + v83 + 8) == 1)
      {
        v85 = v19;
        v86 = *(a7 + 17);
        if (*(a7 + 17))
        {
          v87 = a3;
        }

        else
        {
          v87 = 0;
        }

        if (*(a7 + 17))
        {
          v88 = 0;
        }

        else
        {
          v88 = v10;
        }

        v89 = *(a7 + 88);
        if (*(a7 + 96))
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_208;
          }

          if (v82 >= *(v89 + 16))
          {
            goto LABEL_210;
          }

          v90 = v89 + 12 * v82;
        }

        else
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_209;
          }

          if (v82 >= *(v89 + 16))
          {
            goto LABEL_211;
          }

          v90 = v89 + 8 * v82;
        }

        if (*(v90 + 32) == v103)
        {
          v91 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v91 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v91 = AGGraphGetInputValue();
        }

        v92 = *v91;
        v93 = one-time initialization token for lockAssertionsAreEnabled;

        if (v93 != -1)
        {
          swift_once();
        }

        v10 = a5;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            goto LABEL_233;
          }
        }

        v110 = v87;
        v111 = v86 & a4;
        v112 = v88;
        v113 = (v86 ^ 1) & a6;
        v80 = (*(*v92 + 128))(&v110, v86);

        *v84 = v80;
        *(v84 + 8) = 0;
        a3 = v104;
        v11 = a2;
        v19 = v85;
        v21 = v109;
      }

      if (!v79)
      {
        return result;
      }
    }

LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
  }

LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized DynamicLayoutMap.attributes(info:)(uint64_t *a1)
{
  v2 = v1;
  LODWORD(v3) = *(a1 + 11);
  if (*(v1 + 16) == v3)
  {
    return *(v2 + 8);
  }

  v4 = *a1;
  v5 = a1[3];
  v6 = a1[4];
  v35 = *(a1 + 40);
  v7 = v1 + 8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v9 + 2));
  }

  else
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI21LayoutProxyAttributesV_Tt1g5(0, *(v9 + 3) >> 1);

    *v7 = v10;
  }

  if (v4 >> 62)
  {
LABEL_58:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v6 + v5;
  v12 = v11 - (v6 + v5);
  v13 = v12 - 1;
  if ((v12 < 1) | v35 & 1)
  {
    goto LABEL_12;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

  if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    {
      v15 = *(i + 76);
      v16 = *(i + 28);

      v12 = v16 + v15;
LABEL_12:
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_60:
      ;
    }

    if (v12)
    {
      v33 = v12;
      v34 = v2;
      v31 = v3;
      v6 = 0;
      v30 = v7;
      v17 = *v7;
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      v18 = v4 & 0xC000000000000001;
      while (1)
      {
        v7 = v6;
        if ((v35 & 1) == 0)
        {
          break;
        }

LABEL_30:
        if (v18)
        {
          v22 = MEMORY[0x193AC03C0](v7, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }
        }

        v23 = *(v22 + 76);

        v3 = v6 - v23;
        if (__OFSUB__(v6, v23))
        {
          goto LABEL_53;
        }

        if (v18)
        {
          v24 = MEMORY[0x193AC03C0](v7, v4);
        }

        else
        {
        }

        v25 = *(v24 + 24);

        if (v3 < 0xFFFFFFFF80000000)
        {
          goto LABEL_55;
        }

        if (v3 > 0x7FFFFFFF)
        {
          goto LABEL_56;
        }

        v36[0] = v25;
        v36[1] = v3;
        DynamicLayoutMap.subscript.getter(v36, &v37);
        v26 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v28 = *(v17 + 2);
        v27 = *(v17 + 3);
        if (v28 >= v27 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v17);
        }

        v6 = (v6 + 1);
        *(v17 + 2) = v28 + 1;
        *&v17[8 * v28 + 32] = v26;
        if (v6 == v33)
        {
          *v30 = v17;
          v2 = v34;
          LODWORD(v3) = v31;
          goto LABEL_47;
        }
      }

      if (v4 >> 62)
      {
        v19 = __CocoaSet.count.getter();
      }

      else
      {
        v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = v19 - v32;
      if (v19 - v32 < 0)
      {
        goto LABEL_57;
      }

      v7 = 0;
      while (v3 != v7)
      {
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v18)
        {
          v20 = *(MEMORY[0x193AC03C0](v7, v4) + 76);

          v21 = MEMORY[0x193AC03C0](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v20 = *(*(v4 + 8 * v7 + 32) + 76);
        }

        v2 = *(v21 + 28);

        if (__OFADD__(v20, v2))
        {
          goto LABEL_50;
        }

        ++v7;
        if (v6 < v20 + v2)
        {
          --v7;
          goto LABEL_30;
        }
      }

      goto LABEL_62;
    }

LABEL_47:
    *(v2 + 16) = v3;
    return *(v2 + 8);
  }

  __break(1u);
LABEL_62:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double LayoutEngineBox.layoutPriority()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 192), v3);
  v7 = (*(*(v2 + 184) + 8))(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

void type metadata accessor for Axis?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double closure #1 in ViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, __int16 a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v14 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v16);
  v17 = *(a11 + 56);
  v20[16] = a3 & 1;
  v20[8] = a5 & 1;
  v18 = v17(a2);
  (*(v14 + 8))(v16, a10);
  return v18;
}

uint64_t specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, char a9)
{
  v9 = a7;
  v10 = a6;
  if (*(a5 + 17))
  {
    v12 = a4;
  }

  else
  {
    v12 = a2;
  }

  if (v12)
  {
    result = specialized StackLayout.UnmanagedImplementation.sizeChildrenIdeally(in:minorProposalForChild:)(a5, a6, a7, a8, a9 & 1);
  }

  else
  {
    LOBYTE(v49[0]) = a2 & 1;
    v48[0] = a4 & 1;
    result = specialized StackLayout.UnmanagedImplementation.sizeChildrenGenerallyWithConcreteMajorProposal(in:minorProposalForChild:)(a1, a2 & 1, a3, a4 & 1, a5, a6, a7, a8, a9 & 1);
  }

  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v10)
  {
    if (v9)
    {
      v17 = 120 * v9;
      v18 = v10;
      while (1)
      {
        v19 = *v18;
        v20 = *(v18 + 16);
        v21 = *(v18 + 32);
        v50 = *(v18 + 48);
        v22 = *(v18 + 112);
        v24 = *(v18 + 80);
        v23 = *(v18 + 96);
        v51 = *(v18 + 64);
        v52 = v24;
        v53 = v23;
        v49[1] = v20;
        v49[2] = v21;
        v49[0] = v19;
        v54 = v22;
        v25 = *(a5 + 17);
        v26 = *(&v50 + 1);
        v27 = *&v51;
        v28 = *(&v24 + 1);
        v29 = *&v23;
        outlined init with copy of StackLayout.Child(v49, v48);
        v55.origin.x = v26;
        v55.origin.y = v27;
        v55.size.width = v28;
        v55.size.height = v29;
        IsNull = CGRectIsNull(v55);
        result = outlined destroy of StackLayout.Child(v49);
        v31 = 0.0;
        v32 = 0.0;
        if (!IsNull)
        {
          if (v25)
          {
            v33 = v28;
          }

          else
          {
            v33 = v29;
          }

          if (v25)
          {
            v34 = v26;
          }

          else
          {
            v34 = v27;
          }

          v32 = v34 + v33;
          if (v32 >= v34)
          {
            v35 = v34;
          }

          else
          {
            v35 = v32;
          }

          if (v34 > v32)
          {
            v32 = v34;
          }

          if (v35 <= v32)
          {
            v31 = v35;
          }

          else
          {
            v32 = 0.0;
            v31 = 0.0;
          }
        }

        if (v31 < v15)
        {
          v15 = v31;
        }

        if (v16 <= v32)
        {
          v16 = v32;
        }

        if (v15 > v16)
        {
          break;
        }

        v18 += 120;
        v17 -= 120;
        if (!v17)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_62;
    }
  }

  else
  {
LABEL_31:
    if (v9)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
LABEL_62:
        __break(1u);
        return result;
      }

      v36 = *(a5 + 17);
      v37 = 56;
      if (*(a5 + 17))
      {
        v38 = 64;
      }

      else
      {
        v38 = 56;
      }

      if (!*(a5 + 17))
      {
        v37 = 64;
      }

      v14 = 0.0;
      do
      {
        v40 = v14 + *(v10 + 40);
        if ((~*&v40 & 0x7FF0000000000000) != 0 || (*&v40 & 0xFFFFFFFFFFFFFLL) == 0)
        {
          *(v10 + v38) = v40;
        }

        v42 = *(v10 + v37) - v15;
        v43 = ~*&v42 & 0x7FF0000000000000;
        v44 = *&v42 & 0xFFFFFFFFFFFFFLL;
        if (v43)
        {
          v45 = 1;
        }

        else
        {
          v45 = v44 == 0;
        }

        if (v45)
        {
          *(v10 + v37) = *(v10 + v37) - v15;
        }

        if (v36)
        {
          v39 = 96;
        }

        else
        {
          v39 = 88;
        }

        v14 = v40 + *(v10 + v39);
        v10 += 120;
        --v9;
      }

      while (v9);
    }
  }

  v46 = v16 - v15;
  if (*(a5 + 17))
  {
    v47 = v16 - v15;
  }

  else
  {
    v47 = v14;
  }

  if (*(a5 + 17))
  {
    v46 = v14;
  }

  *(a5 + 64) = v47;
  *(a5 + 72) = v46;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>)
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(255, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
  }

  return result;
}

double UnaryLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  (*(v19 + 16))(v6, v3, a2, v11);
  v20 = *(v9 + 32);
  v68 = v13;
  v69 = v8;
  v20(v13, v6, v8);
  v21 = (v3 + *(a2 + 36));
  v22 = *v21;
  v23 = *(v21 + 2);
  v24 = (v3 + *(a2 + 40));
  v25 = *v24;
  v26 = *(v24 + 2);
  v27 = v3 + *(a2 + 44);
  v28 = v15;
  v29 = *v27;
  v30 = *(v27 + 8);
  v32 = *(v27 + 16);
  v31 = *(v27 + 24);
  v34 = *(v27 + 32);
  v33 = *(v27 + 40);
  v35 = *(v27 + 48);
  v36 = *(v27 + 72);
  v37 = *(v27 + 56);
  v39 = *(v27 + 88);
  v38 = *(v27 + 96);
  v40 = *(v27 + 144);
  if ((v35 & 1) == 0)
  {
    if (v16)
    {
      if ((v30 & 1) == 0)
      {
        if (*(v27 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((*(v27 + 64) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v30 & 1) != 0 || v15 != v29)
    {
      goto LABEL_2;
    }

    if (v18)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v31 & 1) != 0 || v17 != v32)
    {
      goto LABEL_2;
    }

    v40 = *(v27 + 32);
    goto LABEL_39;
  }

LABEL_2:
  if (*(v27 + 104))
  {
    goto LABEL_22;
  }

  if (v16)
  {
    goto LABEL_10;
  }

  if ((*(v27 + 64) & 1) != 0 || *&v37 != v15)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v18)
  {
    if (*(v27 + 80))
    {
LABEL_21:
      v40 = *(v27 + 88);
      goto LABEL_39;
    }
  }

  else if ((*(v27 + 80) & 1) == 0 && *&v36 == v17)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v27 + 160))
  {
LABEL_23:
    v57 = *(v27 + 104);
    v58 = v36;
    v59 = v37;
    v56 = v39;
    v60 = v38;
    v62 = v35;
    v63 = v31;
    v64 = v32;
    v65 = v30;
    v61 = v29;
    v67 = v9;
    v41 = v34;
    v66 = v33;
    v42 = v17;
    v43 = v28;
    swift_beginAccess();
    v44 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v44[4] = v43;
      *(v44 + 5) = v16;
      v44[6] = v42;
      *(v44 + 28) = v18;
    }

    v45 = *(a2 + 24);
    v74 = v43;
    v75 = v16;
    v76 = v42;
    v77 = v18;
    v72 = v22;
    v73 = v23;
    v70 = v25;
    v71 = v26;
    v46 = v68;
    v47 = v69;
    v40 = (*(v45 + 56))(&v74, &v72, &v70, v69);
    v48 = v58;
    *(v27 + 112) = v59;
    *(v27 + 128) = v48;
    v49 = v60;
    *(v27 + 144) = v56;
    *(v27 + 152) = v49;
    *(v27 + 160) = v57;
    v50 = v65;
    *(v27 + 56) = v61;
    *(v27 + 64) = v50;
    v51 = v63;
    *(v27 + 72) = v64;
    *(v27 + 80) = v51;
    v52 = v66;
    *(v27 + 88) = v41;
    *(v27 + 96) = v52;
    *(v27 + 104) = v62;
    *v27 = v43;
    *(v27 + 8) = v16;
    *(v27 + 16) = v42;
    *(v27 + 24) = v18;
    *(v27 + 32) = v40;
    *(v27 + 40) = v53;
    *(v27 + 48) = 0;
    v9 = v67;
    goto LABEL_42;
  }

  if (v16)
  {
    if ((*(v27 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v27 + 120) & 1) != 0 || *(v27 + 112) != v15)
  {
    goto LABEL_23;
  }

  if (v18)
  {
    if ((*(v27 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v27 + 136) & 1) != 0 || *(v27 + 128) != v17)
  {
    goto LABEL_23;
  }

LABEL_39:
  swift_beginAccess();
  v54 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v54[4] = v15;
    *(v54 + 5) = v16;
    v54[6] = v17;
    *(v54 + 28) = v18 | 0x100;
  }

  v46 = v68;
  v47 = v69;
LABEL_42:
  (*(v9 + 8))(v46, v47);
  return v40;
}

uint64_t LayoutProxy.size(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  if (*(v1 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v7 = *InputValue;
  v8 = one-time initialization token for lockAssertionsAreEnabled;

  if (v8 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    (*(*v7 + 120))(&v10);
  }

  return result;
}

double ViewLayoutEngine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v57 = *(a2 + 16);
  v58 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v46 - v8;
  v65 = *a1;
  v10 = *(a1 + 8);
  v62 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a2 + 36);
  v13 = v2 + *(a2 + 40);
  v14 = *v13;
  v15 = *(v13 + 8);
  v55 = *(v2 + *(a2 + 44));
  v56 = v14;
  v59 = v7;
  v16 = *(v7 + 16);

  v60 = v12;
  v61 = AssociatedTypeWitness;
  v64 = v9;
  v16(v9, v2 + v12, AssociatedTypeWitness);
  v17 = *(a2 + 48);
  v63 = v2;
  v18 = v2 + v17;
  v20 = *(v2 + v17);
  v19 = *(v2 + v17 + 8);
  v21 = *(v2 + v17 + 16);
  v22 = *(v2 + v17 + 24);
  v23 = *(v2 + v17 + 32);
  v24 = *(v2 + v17 + 40);
  v25 = *(v2 + v17 + 48);
  v26 = *(v2 + v17 + 64);
  v27 = *(v2 + v17 + 80);
  v28 = *(v2 + v17 + 72);
  v29 = *(v2 + v17 + 56);
  v31 = *(v2 + v17 + 88);
  v30 = *(v18 + 96);
  v32 = *(v18 + 104);
  v33 = *(v18 + 144);
  if ((v25 & 1) == 0)
  {
    if (v10)
    {
      if ((v19 & 1) == 0)
      {
        if (*(v18 + 104))
        {
          goto LABEL_22;
        }

LABEL_10:
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }
    }

    else if ((v19 & 1) != 0 || v65 != v20)
    {
      goto LABEL_2;
    }

    if (v11)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    else if ((v22 & 1) != 0 || v62 != v21)
    {
      goto LABEL_2;
    }

    v33 = v23;
    goto LABEL_43;
  }

LABEL_2:
  if (*(v18 + 104))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    goto LABEL_10;
  }

  if ((v26 & 1) != 0 || *&v29 != v65)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v11)
  {
    if (v27)
    {
LABEL_21:

      v33 = v31;
      goto LABEL_43;
    }
  }

  else if ((v27 & 1) == 0 && *&v28 == v62)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (*(v18 + 160))
  {
LABEL_23:
    v48 = v28;
    v49 = v29;
    v52 = v25;
    v51 = v22;
    v50 = v21;
    v47 = v19;
    v53 = v23;
    v54 = v24;
    swift_beginAccess();
    v34 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v34[4] = v65;
      *(v34 + 5) = v10;
      v34[6] = v62;
      *(v34 + 28) = v11;
    }

    v67 = v10;
    v66 = v11;
    if (v55)
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    v36 = v62;
    v37 = v65;
    v33 = closure #1 in ViewLayoutEngine.sizeThatFits(_:)(v63, *&v65, v10, *&v62, v11, v56, v15, v35, v64, v57, v58);
    v39 = v38;

    v40 = v48;
    *(v18 + 112) = v49;
    *(v18 + 128) = v40;
    *(v18 + 144) = v31;
    *(v18 + 152) = v30;
    *(v18 + 160) = v32;
    v41 = v47;
    *(v18 + 56) = v20;
    *(v18 + 64) = v41;
    v42 = v51;
    *(v18 + 72) = v50;
    *(v18 + 80) = v42;
    v43 = v54;
    *(v18 + 88) = v53;
    *(v18 + 96) = v43;
    *(v18 + 104) = v52;
    *v18 = v37;
    *(v18 + 8) = v10;
    *(v18 + 16) = v36;
    *(v18 + 24) = v11;
    *(v18 + 32) = v33;
    *(v18 + 40) = v39;
    *(v18 + 48) = 0;
    goto LABEL_45;
  }

  if (v10)
  {
    if ((*(v18 + 120) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v18 + 120) & 1) != 0 || *(v18 + 112) != v65)
  {
    goto LABEL_23;
  }

  if (v11)
  {
    if ((*(v18 + 136) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((*(v18 + 136) & 1) != 0 || *(v18 + 128) != v62)
  {
    goto LABEL_23;
  }

LABEL_43:
  swift_beginAccess();
  v44 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v44[4] = v65;
    *(v44 + 5) = v10;
    v44[6] = v62;
    *(v44 + 28) = v11 | 0x100;
  }

LABEL_45:
  (*(v59 + 40))(v63 + v60, v64, v61);
  return v33;
}

uint64_t initializeWithCopy for ViewLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + a1) & ~v10;
  v12 = (v6 + v10 + a2) & ~v10;
  (*(v8 + 16))(v11, v12, AssociatedTypeWitness);
  v13 = *(v9 + 48);
  v14 = v13 + v11;
  v15 = v13 + v12;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *(v16 + 16) = *(v17 + 16);
  v18 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v19 + 16);
  v20 = *(v19 + 32);
  *v18 = *v19;
  *(v18 + 16) = v21;
  *(v18 + 32) = v20;
  v22 = *(v19 + 96);
  v24 = *(v19 + 48);
  v23 = *(v19 + 64);
  *(v18 + 80) = *(v19 + 80);
  *(v18 + 96) = v22;
  *(v18 + 48) = v24;
  *(v18 + 64) = v23;
  v25 = *(v19 + 160);
  v27 = *(v19 + 128);
  v26 = *(v19 + 144);
  *(v18 + 112) = *(v19 + 112);
  *(v18 + 128) = v27;
  *(v18 + 144) = v26;
  *(v18 + 160) = v25;
  v28 = ((v14 + 199) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v15 + 199) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;
  v31 = ((v28 + 39) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v29 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v33 = *v34;
  v35 = *(v34 + 64);
  v37 = *(v34 + 32);
  v36 = *(v34 + 48);
  *(v33 + 16) = *(v34 + 16);
  *(v33 + 32) = v37;
  *(v33 + 48) = v36;
  *(v33 + 64) = v35;
  *((v31 + 87) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 87) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for ViewLayoutEngine(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))((v4 + *(*(AssociatedTypeWitness - 8) + 80)) & ~*(*(AssociatedTypeWitness - 8) + 80), AssociatedTypeWitness);
}

uint64_t LayoutEngineBox.explicitAlignment(_:at:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return (*(*(v3 + 184) + 64))(a1, v6, *(v3 + 176));
}

uint64_t LayoutChildGeometries.value.getter()
{
  v0 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v7 = *Value;
  v8 = Value[1];
  type metadata accessor for CGPoint(0);
  v2 = AGGraphGetValue();
  v3 = *v2;
  v4 = v2[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v9[0] = v7;
    v9[1] = v8;
    v5 = (*(*v0 + 136))(v9, v3, v4);

    return v5;
  }

  return result;
}

uint64_t outlined init with copy of StackLayout.Child(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 17) = *(a1 + 17);
  *(a2 + 8) = v3;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  v4 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v4;
  v5 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v5;

  return a2;
}

uint64_t assignWithTake for _StackLayoutCache(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  LOBYTE(v4) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v4;

  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t ColorBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 176) - 8) + 32))(v2 + *(*v2 + 192), a1);
  return v2;
}

uint64_t LayoutComputer.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = (v6 + 16);
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox();
    (*v9)(v8, a1, a2);
    swift_allocObject();
    v10 = TracingLayoutEngineBox.init(_:)(v8);
  }

  else
  {
    type metadata accessor for LayoutEngineBox();
    (*v9)(v8, a1, a2);
    v10 = ColorBox.__allocating_init(_:)(v8);
  }

  v11 = v10;
  result = (*(v6 + 8))(a1, a2);
  *a3 = v11;
  a3[1] = 0;
  return result;
}

uint64_t _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, Swift::UInt32 a4@<W4>, int a5@<W5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0u;
  *(a8 + 192) = 0u;
  *(a8 + 208) = 1;
  *(a8 + 216) = 0u;
  *(a8 + 232) = 0u;
  *(a8 + 248) = 0u;
  *(a8 + 264) = 1;
  *(a8 + 272) = 0u;
  *(a8 + 288) = 0u;
  *(a8 + 304) = 0u;
  *(a8 + 320) = 1;
  v13 = (a8 + 328);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = MEMORY[0x1E69E7CC0];
  *(a8 + 440) = 0;
  *(a8 + 368) = 0;
  *(a8 + 376) = 0;
  *(a8 + 360) = v14;
  *(a8 + 384) = 0;
  *(a8 + 392) = 0;
  *(a8 + 400) = 0;
  *(a8 + 408) = 0;
  *(a8 + 416) = 0;
  *(a8 + 424) = 0;
  *(a8 + 432) = 0;
  *(a8 + 136) = a5;
  *(a8 + 144) = a6;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v15 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a8 + 152) = v15;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  specialized HVStack.makeCache(subviews:)(a5, a6, v16, a1, a2, a3 & 1, a7, (a8 + 24));
}

__n128 closure #1 in StackLayout.sizeThatFits(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, __n128 *a8@<X8>)
{
  if (a1[2].n128_u8[8])
  {
    if ((a5 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((a5 & 1) != 0 || a1[2].n128_f64[0] != a4)
  {
    goto LABEL_10;
  }

  if (a1[3].n128_u8[8])
  {
    if (a7)
    {
      goto LABEL_20;
    }

LABEL_10:
    if (!a3)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (a7)
  {
    goto LABEL_10;
  }

  if (a1[3].n128_f64[0] != a6 && a3 != 0)
  {
LABEL_11:
    if (a1[1].n128_u8[1])
    {
      v14 = *&a4;
    }

    else
    {
      v14 = *&a6;
    }

    if (a1[1].n128_u8[1])
    {
      v15 = a5;
    }

    else
    {
      v15 = a7;
    }

    v16 = a5 & 1;
    v17 = a7 & 1;
    specialized StackLayout.UnmanagedImplementation.placeChildren1(in:minorProposalForChild:)(*&a4, a5 & 1, *&a6, a7 & 1, a1, a2, a3, v14, v15 & 1);
    if (a1[6].n128_u8[2] == 1)
    {
      StackLayout.UnmanagedImplementation.resizeAnyChildrenWithTrailingOverflow(in:)(*&a4, v16, *&a6, v17, a1, a2, a3);
    }

    a1[2].n128_f64[0] = a4;
    a1[2].n128_u8[8] = v16;
    a1[3].n128_f64[0] = a6;
    a1[3].n128_u8[8] = v17;
  }

LABEL_20:
  result = a1[4];
  *a8 = result;
  return result;
}

__n128 specialized HVStack.makeCache(subviews:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, _OWORD *a8@<X8>)
{
  *&v10 = a4;
  *(&v10 + 1) = a5;
  LOBYTE(v11) = a6 & 1;
  BYTE1(v11) = a7;
  *&v12 = 0xFFF0000000000000;
  BYTE8(v12) = 0;
  v13.n128_u64[0] = 0xFFF0000000000000;
  v13.n128_u8[8] = 0;
  LODWORD(v14) = a1;
  *(&v14 + 1) = a2;
  LOBYTE(v15) = a3 & 1;
  *(&v15 + 1) = HIBYTE(a3) & 1;
  *(&v15 + 1) = MEMORY[0x1E69E7CC0];

  StackLayout.makeChildren()();
  a8[4] = 0uLL;
  a8[5] = v14;
  a8[6] = v15;
  *a8 = v10;
  a8[1] = v11;
  result = v13;
  a8[2] = v12;
  a8[3] = v13;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm@<X0>(const void *a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a2(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 464) = v11;
    *(v8 + 468) = v10;
  }

  else
  {
    a3(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x1C0uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

double _s7SwiftUI7HVStackPAAE12sizeThatFits8proposal8subviews5cacheSo6CGSizeVAA16ProposedViewSizeV_AA14LayoutSubviewsVAA06_StackN5CacheVztFAA07_HStackN0V_Tt0t2g5Tm(uint64_t a1, char a2, uint64_t a3, char a4, __n128 *a5)
{
  v10 = a5[6].n128_u64[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v11 = *(v10 + 2);
  v13.n128_u8[0] = a2 & 1;
  closure #1 in StackLayout.sizeThatFits(_:)(a5, (v10 + 32), v11, *&a1, a2 & 1, *&a3, a4 & 1, &v13);
  result = v13.n128_f64[0];
  a5[6].n128_u64[1] = v10;
  return result;
}

uint64_t initializeWithCopy for StackLayout.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v3;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t specialized Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v27[56] = *MEMORY[0x1E69E9840];
  v25[0] = a6;
  v25[1] = a7;
  v13 = a8 & 1;
  v26 = a8 & 1;
  v21[4] = v25;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v27[0] = v15;
      v27[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, 1, v27);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v27, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_VStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v27[56] = *MEMORY[0x1E69E9840];
  v25[0] = a6;
  v25[1] = a7;
  v13 = a8 & 1;
  v26 = a8 & 1;
  v21[4] = v25;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v27[0] = v15;
      v27[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, 0, v27);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v27, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<_HStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_HStackLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v27[56] = *MEMORY[0x1E69E9840];
  v25[0] = a6;
  v25[1] = a7;
  v13 = a8 & 1;
  v26 = a8 & 1;
  v21[4] = v25;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v27[0] = v15;
      v27[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, 0, v27);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v27, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<HStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v27[56] = *MEMORY[0x1E69E9840];
  v25[0] = a6;
  v25[1] = a7;
  v13 = a8 & 1;
  v26 = a8 & 1;
  v21[4] = v25;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v27[0] = v15;
      v27[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, 1, v27);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v27, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<VStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<VStackLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v27[56] = *MEMORY[0x1E69E9840];
  v25[0] = a6;
  v25[1] = a7;
  v13 = a8 & 1;
  v26 = a8 & 1;
  v21[4] = v25;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<VStackLayout>, lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout, &type metadata for VStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v27[0] = v15;
      v27[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, 1, v27);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v27, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<VStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<VStackLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v27[56] = *MEMORY[0x1E69E9840];
  v25[0] = a6;
  v25[1] = a7;
  v13 = a8 & 1;
  v26 = a8 & 1;
  v21[4] = v25;
  v21[5] = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v15 = *OutputValue;
    v16 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v17 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v17 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<HStackLayout>, lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout, &type metadata for HStackLayout, type metadata accessor for ViewLayoutEngine);
      v19 = MEMORY[0x1EEE9AC00](v18);
      (*(*v15 + 80))(v19);

      v27[0] = v15;
      v27[1] = v16 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {

    _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA07_HStackD0V_Tt3B5Tm(a6, a7, v13, a3, a4, a5, 0, v27);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA07_HStackC0VG_Tt1B5Tm(v27, type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<HStackLayout>>, type metadata accessor for LayoutEngineBox<ViewLayoutEngine<HStackLayout>>, v21);
    AGGraphSetOutputValue();
  }

  return result;
}

void type metadata accessor for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>)
  {
    type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(255, &lazy cache variable for type metadata for ViewLayoutEngine<_VStackLayout>, lazy protocol witness table accessor for type _VStackLayout and conformance _VStackLayout, &type metadata for _VStackLayout, type metadata accessor for ViewLayoutEngine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<ViewLayoutEngine<_VStackLayout>>);
    }
  }
}

uint64_t one-time initialization function for invalidValue()
{
  static ViewGeometry.invalidValue = vdupq_n_s64(0x7FF8000000000000uLL);
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  qword_1ED53A0F8 = static ViewDimensions.invalidValue;
  unk_1ED53A100 = unk_1ED539E20;
  xmmword_1ED53A108 = xmmword_1ED539E28;
  unk_1ED53A118 = unk_1ED539E38;
}

double one-time initialization function for invalidValue()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  v0 = static LayoutComputer.defaultValue;
  v1 = unk_1ED53B850;
  v2 = one-time initialization token for invalidValue;

  if (v2 != -1)
  {
    swift_once();
  }

  static ViewDimensions.invalidValue = v0;
  unk_1ED539E20 = v1;
  result = *&static CGSize.invalidValue;
  xmmword_1ED539E28 = static CGSize.invalidValue;
  unk_1ED539E38 = static CGSize.invalidValue;
  return result;
}

{
  if (one-time initialization token for invalidValue != -1)
  {
    swift_once();
  }

  result = *&static CGSize.invalidValue;
  static SizeThatFitsMeasurer.invalidValue = static CGSize.invalidValue;
  return result;
}

int64x2_t one-time initialization function for invalidValue()
{
  result = vdupq_n_s64(0xFFF0000000000000);
  static CGSize.invalidValue = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews()
{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance EnvironmentFetch<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t instantiation function for generic protocol witness table for EnvironmentFetch<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for ViewLayoutEngine()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

void type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>)
  {
    type metadata accessor for (Spacing.Key, Spacing.Value)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>);
    }
  }
}

uint64_t SpacerLayoutComputer.Engine.spacing()@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if ((*(v5 + 32))(v6, v5))
  {
    v7 = (*(v5 + 48))(v6, v5);
    v8 = *(v2 + *(a1 + 36));
    if (v7)
    {
      if (v8 != 2)
      {
        type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>();
        if (v8)
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDACA80;
          if (one-time initialization token for textBaseline != -1)
          {
            v22 = inited;
            swift_once();
            inited = v22;
          }

          v10 = static Spacing.Category.textBaseline;
          *(inited + 32) = static Spacing.Category.textBaseline;
          *(inited + 40) = 0;
          v11 = 0uLL;
          *(inited + 48) = 0u;
          *(inited + 64) = 0u;
          *(inited + 80) = 0;
          *(inited + 88) = v10;
          v12 = 2;
          *(inited + 96) = 2;
          *(inited + 104) = 0u;
          *(inited + 120) = 0u;
          *(inited + 136) = 0;
          if (one-time initialization token for default != -1)
          {
            v23 = inited;
            swift_once();
            v11 = 0uLL;
            inited = v23;
          }

          v13 = static Spacing.Category.default;
          *(inited + 144) = static Spacing.Category.default;
          *(inited + 152) = 0;
        }

        else
        {
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDACA80;
          if (one-time initialization token for leftTextBaseline != -1)
          {
            v24 = inited;
            swift_once();
            inited = v24;
          }

          *(inited + 32) = static Spacing.Category.leftTextBaseline;
          *(inited + 40) = 1;
          v19 = 0uLL;
          *(inited + 48) = 0u;
          *(inited + 64) = 0u;
          *(inited + 80) = 0;
          if (one-time initialization token for rightTextBaseline != -1)
          {
            v25 = inited;
            swift_once();
            v19 = 0uLL;
            inited = v25;
          }

          *(inited + 88) = static Spacing.Category.rightTextBaseline;
          v12 = 3;
          *(inited + 96) = 3;
          *(inited + 104) = v19;
          *(inited + 120) = v19;
          *(inited + 136) = 0;
          if (one-time initialization token for default != -1)
          {
            v26 = inited;
            swift_once();
            inited = v26;
          }

          v13 = static Spacing.Category.default;
          *(inited + 144) = static Spacing.Category.default;
          *(inited + 152) = 1;
          v11 = 0uLL;
        }

        *(inited + 160) = v11;
        *(inited + 176) = v11;
        *(inited + 192) = 0;
        *(inited + 200) = v13;
        *(inited + 208) = v12;
        *(inited + 216) = v11;
        *(inited + 232) = v11;
        *(inited + 248) = 0;
LABEL_36:
        v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
        result = swift_setDeallocating();
        *a2 = v21;
        return result;
      }
    }

    else if (v8 != 2)
    {
      type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>();
      if (v8)
      {
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_18DDAB4C0;
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v16 = static Spacing.Category.default;
        *(v15 + 32) = static Spacing.Category.default;
        *(v15 + 40) = 0;
        v17 = 0uLL;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        *(v15 + 80) = 0;
        *(v15 + 88) = v16;
        v18 = 2;
      }

      else
      {
        v15 = swift_initStackObject();
        *(v15 + 16) = xmmword_18DDAB4C0;
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v20 = static Spacing.Category.default;
        *(v15 + 32) = static Spacing.Category.default;
        *(v15 + 40) = 1;
        v17 = 0uLL;
        *(v15 + 48) = 0u;
        *(v15 + 64) = 0u;
        *(v15 + 80) = 0;
        *(v15 + 88) = v20;
        v18 = 3;
      }

      *(v15 + 96) = v18;
      *(v15 + 104) = v17;
      *(v15 + 120) = v17;
      *(v15 + 136) = 0;
      inited = v15;
      goto LABEL_36;
    }

    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    *a2 = static Spacing.zero;
  }

  else
  {

    return Spacing.init()().minima._rawValue;
  }
}

void type metadata accessor for _DictionaryStorage<GestureDependency, Int>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized SpacerLayoutComputer.updateValue()(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(v2 + 4);
  if (v3 == 2)
  {
    if (*(v2 + 8) == *MEMORY[0x1E698D3F8])
    {
      v3 = 2;
    }

    else
    {
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for Axis?, &type metadata for Axis, MEMORY[0x1E69E6720]);
      v3 = *AGGraphGetValue();
    }
  }

  Value = AGGraphGetValue();
  v5 = *(Value + 8) | (v3 << 8);
  v6 = *Value;

  return a2(v6, v5);
}

uint64_t specialized StatefulRule<>.update<A>(to:)(uint64_t a1, __int16 a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a2 & 0xFF01;
  v11[4] = &v12;
  v12 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>.Engine, &type metadata for Spacer, &protocol witness table for Spacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>, v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a2 & 0xFF01;
  v11[4] = &v12;
  v12 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine, &type metadata for _TextBaselineRelativeSpacer, &protocol witness table for _TextBaselineRelativeSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_TextBaselineRelativeSpacer>.Engine>, v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a2 & 0xFF01;
  v11[4] = &v12;
  v12 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_HSpacer>.Engine, &type metadata for _HSpacer, &protocol witness table for _HSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_HSpacer>.Engine>, v11);
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a2 & 0xFF01;
  v11[4] = &v12;
  v12 = a1;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SpacerLayoutComputer<_VSpacer>.Engine, &type metadata for _VSpacer, &protocol witness table for _VSpacer, type metadata accessor for SpacerLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11[0] = v5;
      v11[1] = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm(a1, a2 & 0xFF01, type metadata accessor for TracingLayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>, type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<_VSpacer>.Engine>, v11);
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA06SpacercD033_81D5572A9475F8358655E25B09BAFBA9LLV0E0VyAA021_TextBaselineRelativeF0V_G_Tt1g5Tm@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    a3(0);
    v10 = swift_allocObject();
    result = AGGraphGetCurrentAttribute();
    v12 = result == *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = result;
    }

    *(v10 + 28) = v13;
    *(v10 + 32) = v12;
  }

  else
  {
    a4(0);
    result = swift_allocObject();
    v10 = result;
  }

  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 25) = HIBYTE(a2);
  *a5 = v10;
  a5[1] = 0;
  return result;
}

void type metadata accessor for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>()
{
  if (!lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for SpacerLayoutComputer<Spacer>.Engine, &type metadata for Spacer, &protocol witness table for Spacer, type metadata accessor for SpacerLayoutComputer.Engine);
    v0 = type metadata accessor for LayoutEngineBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LayoutEngineBox<SpacerLayoutComputer<Spacer>.Engine>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<Spacing.Key, Spacing.Value>, lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 40; ; i += 56)
    {
      v5 = *(i - 8);
      v6 = *i;
      v15 = *(i + 24);
      v16 = *(i + 8);
      v7 = *(i + 40);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, *i);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[7] + 40 * result;
      *v11 = v16;
      *(v11 + 16) = v15;
      *(v11 + 32) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(String, CGFloat)>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for (Path, FillStyle)(255, a3);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Spacing.distanceToSuccessorView(along:layoutDirection:preferring:)(char a1, _BYTE *a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = *v3;
  if (*a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  if (*a2)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  if (*(v5 + 16) >= *(v4 + 16))
  {
    v14 = *a3;
    v13 = v9;
    v12 = v8;
    v11 = v5;
  }

  else
  {
    v14 = *v3;
    v13 = v8;
    v12 = v9;
    v11 = v4;
  }

  return Spacing._distance(from:to:ofViewPreferring:)(&v13, &v12, &v11);
}

uint64_t Spacing._distance(from:to:ofViewPreferring:)(unsigned __int8 *a1, Swift::UInt8 *a2, uint64_t *a3)
{
  v96 = *a1;
  v94 = *a2;
  v4 = *a3;
  v5 = *v3;
  v6 = *v3 + 64;
  v93 = 1;
  v7 = 1 << *(*v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*v3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = v4;
  v92 = 0.0;
  v12 = 0;
  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
  v14 = off_1ED533000;
  v95 = v4;
  while (v9)
  {
LABEL_9:
    v16 = __clz(__rbit64(v9)) | (v12 << 6);
    v17 = v5[6] + 16 * v16;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = v5[7] + 40 * v16;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    if (v13[430] != -1)
    {
      v91 = v18;
      v57 = *(v20 + 16);
      swift_once();
      v23 = v57;
      v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
      v14 = off_1ED533000;
      v11 = v95;
      v18 = v91;
    }

    v9 &= v9 - 1;
    v26 = v18 != v14[164] && v19 == v96;
    if (v26)
    {
      if (*(v11 + 16))
      {
        v27 = v23;
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v94);
        v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
        v14 = off_1ED533000;
        v11 = v95;
        if (v29)
        {
          v30 = *(v95 + 56) + 40 * v28;
          v32 = *v30;
          v31 = *(v30 + 8);
          v33 = *(v30 + 32);
          if (v25 == 1)
          {
            if (!*(v30 + 32))
            {
LABEL_38:
              v35.i64[0] = *v30;
              goto LABEL_110;
            }

            if (v33 == 2)
            {
              v86 = *(v30 + 16);
              if (one-time initialization token for semantic != -1)
              {
                v70 = *(v30 + 8);
                v71 = *v30;
                swift_once();
                v32 = v71;
                v31 = v70;
              }

              v88 = v32;
              v90 = v31;
              v38 = static Semantics_v5.semantic;
              if (one-time initialization token for forced != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if (byte_1ED53C51C != 1)
              {
                v35.i64[0] = 0;
                v11 = v95;
                v14 = off_1ED533000;
                v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                if (static Semantics.forced < v38)
                {
                  goto LABEL_110;
                }

LABEL_43:
                v41 = v90;
                v42 = v86;
                if ((~*&v21 & 0x7FF0000000000000) == 0 || (*&v88 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v88;
                  v50 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v21, v39);
                  v41 = v90;
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v95;
                  v45 = v27;
                  if ((v50 & 1) == 0)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  v43 = fabs(v21);
                  v44 = fabs(v88);
                  if (v43 <= v44)
                  {
                    v43 = v44;
                  }

                  if (v43 <= 2.22507386e-308)
                  {
                    v43 = 2.22507386e-308;
                  }

                  v45 = v27;
                  if (vabdd_f64(v21, v88) >= v43 * 0.0000000149011612)
                  {
LABEL_103:
                    v42 = v88 + v90 + v86 - v90 + v22 - v22 - v88;
                    goto LABEL_104;
                  }
                }

                if ((~*&v22 & 0x7FF0000000000000) == 0 || (*&v41 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v90;
                  v58 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v22, v39);
                  v45 = v27;
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v95;
                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  v51 = fabs(v22);
                  v52 = fabs(v90);
                  if (v51 <= v52)
                  {
                    v51 = v52;
                  }

                  if (v51 <= 2.22507386e-308)
                  {
                    v51 = 2.22507386e-308;
                  }

                  if (vabdd_f64(v22, v90) >= v51 * 0.0000000149011612)
                  {
                    goto LABEL_103;
                  }
                }

                if ((~*&v45 & 0x7FF0000000000000) == 0 || (*&v86 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v86;
                  v65 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v45, v39);
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v95;
                  if ((v65 & 1) == 0)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  v59 = fabs(v45);
                  v60 = fabs(v86);
                  if (v59 <= v60)
                  {
                    v59 = v60;
                  }

                  if (v59 <= 2.22507386e-308)
                  {
                    v59 = 2.22507386e-308;
                  }

                  if (vabdd_f64(v45, v86) >= v59 * 0.0000000149011612)
                  {
                    goto LABEL_103;
                  }
                }

LABEL_104:
                if (v24 == 1.0)
                {
                  goto LABEL_105;
                }

LABEL_109:
                *v35.i64 = v24 * ceil(v42 / v24);
                goto LABEL_110;
              }

              v40 = dyld_program_sdk_at_least();
              v35.i64[0] = 0;
              v11 = v95;
              v14 = off_1ED533000;
              v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
              if (v40)
              {
                goto LABEL_43;
              }

              goto LABEL_110;
            }
          }

          else
          {
            if (v25 != 2)
            {
              *v35.i64 = v21;
              if (!*(v30 + 32))
              {
                *v35.i64 = v21 + v32;
              }

              goto LABEL_110;
            }

            if (!*(v30 + 32))
            {
              goto LABEL_38;
            }

            if (v33 == 1)
            {
              v24 = *(v30 + 24);
              v85 = *(v30 + 16);
              if (one-time initialization token for semantic != -1)
              {
                v68 = *(v30 + 8);
                v69 = *v30;
                swift_once();
                v32 = v69;
                v31 = v68;
              }

              v87 = v32;
              v89 = v31;
              v34 = static Semantics_v5.semantic;
              if (one-time initialization token for forced != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if (byte_1ED53C51C != 1)
              {
                v35.i64[0] = 0;
                v11 = v95;
                v14 = off_1ED533000;
                v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                if (static Semantics.forced < v34)
                {
                  goto LABEL_110;
                }

LABEL_52:
                v46 = v27;
                v42 = v27;
                v47 = v89;
                if ((~*&v87 & 0x7FF0000000000000) == 0 || (*&v21 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  *v35.i64 = v21;
                  v49 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v87, v36);
                  v47 = v89;
                  v46 = v27;
                  v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                  v14 = off_1ED533000;
                  v11 = v95;
                  if (v49)
                  {
                    goto LABEL_73;
                  }
                }

                else
                {
                  v53 = fabs(v87);
                  v54 = fabs(v21);
                  if (v53 <= v54)
                  {
                    v53 = v54;
                  }

                  if (v53 <= 2.22507386e-308)
                  {
                    v53 = 2.22507386e-308;
                  }

                  if (vabdd_f64(v87, v21) < v53 * 0.0000000149011612)
                  {
LABEL_73:
                    if ((~*&v47 & 0x7FF0000000000000) == 0 || (*&v22 & 0x7FF0000000000000) == 0x7FF0000000000000)
                    {
                      *v35.i64 = v22;
                      v56 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v89, v36);
                      v46 = v27;
                      v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                      v14 = off_1ED533000;
                      v11 = v95;
                      if (v56)
                      {
                        goto LABEL_94;
                      }
                    }

                    else
                    {
                      v61 = fabs(v89);
                      v62 = fabs(v22);
                      if (v61 <= v62)
                      {
                        v61 = v62;
                      }

                      if (v61 <= 2.22507386e-308)
                      {
                        v61 = 2.22507386e-308;
                      }

                      if (vabdd_f64(v89, v22) < v61 * 0.0000000149011612)
                      {
LABEL_94:
                        if ((~*&v85 & 0x7FF0000000000000) == 0 || (*&v46 & 0x7FF0000000000000) == 0x7FF0000000000000)
                        {
                          *v35.i64 = v27;
                          v66 = specialized FloatingPoint.rescaledAlmostEqual(to:tolerance:)(v35, 0.0000000149011612, v85, v36);
                          v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
                          v14 = off_1ED533000;
                          v11 = v95;
                          if (v66)
                          {
                            goto LABEL_108;
                          }
                        }

                        else
                        {
                          v63 = fabs(v85);
                          v64 = fabs(v27);
                          if (v63 <= v64)
                          {
                            v63 = v64;
                          }

                          if (v63 <= 2.22507386e-308)
                          {
                            v63 = 2.22507386e-308;
                          }

                          if (vabdd_f64(v85, v27) < v63 * 0.0000000149011612)
                          {
LABEL_108:
                            if (v24 == 1.0)
                            {
LABEL_105:
                              *v35.i64 = ceil(v42);
                              goto LABEL_110;
                            }

                            goto LABEL_109;
                          }
                        }
                      }
                    }
                  }
                }

                v42 = v21 + v22 + v27 - v22 + v89 - v89 - v21;
                goto LABEL_108;
              }

              v37 = dyld_program_sdk_at_least();
              v35.i64[0] = 0;
              v11 = v95;
              v14 = off_1ED533000;
              v13 = &type metadata instantiation cache for ForEachState.LazyEdits;
              if (v37)
              {
                goto LABEL_52;
              }

LABEL_110:
              v67 = v92;
              if (v93)
              {
                v67 = -INFINITY;
              }

              if (v67 > *v35.i64)
              {
                *v35.i64 = v67;
              }

              v92 = *v35.i64;
              v93 = 0;
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_141;
    }

    if (v15 < v10)
    {
      v9 = *(v6 + 8 * v15);
      ++v12;
      if (v9)
      {
        v12 = v15;
        goto LABEL_9;
      }

      continue;
    }

    break;
  }

  if ((v93 & 1) == 0)
  {
    *&result = v92;
    return result;
  }

  if (one-time initialization token for default != -1)
  {
LABEL_141:
    swift_once();
  }

  v72 = 0.0;
  if (v5[2] && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, v96), (v74 & 1) != 0))
  {
    v75 = v5[7] + 40 * v73;
    v76 = *v75;
    LODWORD(v75) = *(v75 + 32);
    v77 = v75 != 0;
    if (v75)
    {
      v72 = 0.0;
    }

    else
    {
      v72 = v76;
    }
  }

  else
  {
    v77 = 1;
  }

  if (*(v95 + 16) && (v79 = specialized __RawDictionaryStorage.find<A>(_:)(static Spacing.Category.default, v94), (v80 & 1) != 0))
  {
    v81 = *(v95 + 56) + 40 * v79;
    v82 = *v81;
    LODWORD(v81) = *(v81 + 32);
    v26 = v81 == 0;
    v83 = v81 != 0;
    if (v26)
    {
      *&result = v82;
    }

    else
    {
      *&result = 0.0;
    }

    if (!v77)
    {
LABEL_130:
      if (v83)
      {
        v84 = -INFINITY;
        goto LABEL_136;
      }

LABEL_135:
      v84 = *&result;
LABEL_136:
      if (v72 > v84)
      {
        v84 = v72;
      }

      *&result = v84;
      return result;
    }
  }

  else
  {
    *&result = 0.0;
    v83 = 1;
    if (!v77)
    {
      goto LABEL_130;
    }
  }

  if (!v83)
  {
    v72 = -INFINITY;
    goto LABEL_135;
  }

  return result;
}

uint64_t LayoutSubview.spacing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v1 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v5 = *InputValue;
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*v5 + 112))(&v8);

    *a1 = v8;
    *(a1 + 8) = v3;
  }

  return result;
}

Swift::Void __swiftcall ForEachState.evictItems(seed:)(Swift::UInt32 seed)
{
  v2 = v1;
  v3 = *(*v1 + 88);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](*&seed);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v11;
  v13 = *(v12 + 256);
  if (*(v1 + v13) == v7)
  {
    return;
  }

  v14 = *(v9 + 264);
  if (*(v1 + v14) != 1)
  {
    return;
  }

  v45 = v8;
  v46 = v10;
  v42 = v14;
  *(v1 + v13) = v7;
  v56 = *(v9 + 80);
  v57 = v3;
  v15 = *(v9 + 96);
  v50 = *(v9 + 112);
  v58 = v15;
  v59 = v50;
  v16 = type metadata accessor for ForEachState.Item();
  v60 = Array.init()();
  v17 = *(*v1 + 200);
  swift_beginAccess();

  v19 = v50;
  v20 = MEMORY[0x193ABE620](v18, v3, v16, v50);
  v22 = v21;
  v24 = v23;

  v53 = v20;
  v54 = v22;
  v25 = v17;
  v55 = v24 & 1;

  v27 = MEMORY[0x193ABE6F0](v26, v3, v16, v19);
  v48 = v28;
  v49 = v27;
  v47 = v29;

  v44 = *(*v2 + 272);
  v43 = (v4 + 16);
  v30 = (v4 + 8);
  *&v50 = 64;
  while ((static Dictionary.Index.== infix(_:_:)() & 1) == 0)
  {
    v32 = v25;

    Dictionary.subscript.getter();

    if ((*(v52 + *(*v52 + 240)) & 1) == 0)
    {
      v33 = *(*v52 + 232);
      if (*(v52 + v33) == 1)
      {
        if (v52[6] == 1)
        {
          type metadata accessor for Array();

          Array.append(_:)();
          (*v43)(v46, v51, v3);
          swift_beginAccess();
          type metadata accessor for Set();
          v34 = v45;
          Set.insert(_:)();
          swift_endAccess();
          (*v30)(v34, v3);
          *&v50 = v50 - 1;
        }
      }

      else
      {
        --*(v52 + v33);
      }
    }

    v25 = v32;
    v31 = *(v2 + v32);

    MEMORY[0x193ABE700](&v53, v31, v3, v16, v19);

    (*v30)(v51, v3);
    if (v50 <= 0)
    {
      goto LABEL_12;
    }
  }

  *&v50 = 1;
LABEL_12:
  v35 = v60;
  if (!MEMORY[0x193ABF2C0](v60, v16))
  {
    goto LABEL_21;
  }

  v36 = 4;
  while (1)
  {
    v37 = v36 - 4;
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v39 = *(v35 + 8 * v36);

    v40 = v36 - 3;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_20;
    }

LABEL_16:
    ForEachState.eraseItem(_:)(v39);

    ++v36;
    if (v40 == MEMORY[0x193ABF2C0](v35, v16))
    {
      goto LABEL_21;
    }
  }

  v39 = _ArrayBuffer._getElementSlowPath(_:)();
  v40 = v36 - 3;
  if (!__OFADD__(v37, 1))
  {
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v49, v48, v47 & 1);

  v41 = v50 == 0;
  outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v53, v54, v55);
  *(v2 + v42) = v41;
}

void ForEachState.Evictor.value.getter()
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    if ((*WeakValue & 1) == 0)
    {
      return;
    }

    goto LABEL_3;
  }

  if (one-time initialization token for evictByDefault != -1)
  {
    swift_once();
  }

  if (static ForEachEvictionInput.evictByDefault == 1)
  {
LABEL_3:
    Value = AGGraphGetValue();
    ForEachState.evictItems(seed:)(*Value);
  }
}

uint64_t SpacerLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  result = (*(v2 + 32))(v3, v2);
  if (result)
  {
    result = (*(v2 + 24))(v3, v2, 0.0, 0.0);
    if (v5)
    {
      return swift_beginAccess();
    }
  }

  return result;
}

SwiftUI::Spacing __swiftcall Spacing.init()()
{
  v1 = v0;
  type metadata accessor for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDACA80;
  if (one-time initialization token for edgeBelowText != -1)
  {
    swift_once();
  }

  *(inited + 32) = static Spacing.Category.edgeBelowText;
  *(inited + 40) = 0;
  v3 = 0uLL;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0;
  if (one-time initialization token for edgeAboveText != -1)
  {
    swift_once();
    v3 = 0uLL;
  }

  *(inited + 88) = static Spacing.Category.edgeAboveText;
  *(inited + 96) = 2;
  *(inited + 104) = v3;
  *(inited + 120) = v3;
  *(inited + 136) = 0;
  if (one-time initialization token for edgeRightText != -1)
  {
    swift_once();
  }

  *(inited + 144) = static Spacing.Category.edgeRightText;
  *(inited + 152) = 1;
  v4 = 0uLL;
  *(inited + 160) = 0u;
  *(inited + 176) = 0u;
  *(inited + 192) = 0;
  if (one-time initialization token for edgeLeftText != -1)
  {
    swift_once();
    v4 = 0uLL;
  }

  *(inited + 200) = static Spacing.Category.edgeLeftText;
  *(inited + 208) = 3;
  *(inited + 216) = v4;
  *(inited + 232) = v4;
  *(inited + 248) = 0;
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
  result.minima._rawValue = swift_setDeallocating();
  *v1 = v5;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7SwiftUI12AnyHashable2V_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
  result = MEMORY[0x193ABF540](v2, &type metadata for AnyHashable2, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      specialized Set._Variant.insert(_:)(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *closure #1 in _GraphInputs.containerShape.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1;
  if (!*(a1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(*a1, a2);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v2, a2);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v4);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014ContainerShapeV033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt0B5(a1, v8);
  if (result)
  {
    v6 = *(result + 11);
    *a2 = *(result + 9);
    *(a2 + 16) = v6;
    *(a2 + 32) = *(result + 13);
    v7 = *(result + 113);
  }

  else
  {
    *a2 = &type metadata for DefaultContainerShapeType;
    *(a2 + 8) = &protocol witness table for DefaultContainerShapeType;
    v7 = 0uLL;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  *(a2 + 41) = v7;
  return result;
}

void type metadata accessor for (Spacing.Key, Spacing.Value)()
{
  if (!lazy cache variable for type metadata for (Spacing.Key, Spacing.Value))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacing.Key, Spacing.Value));
    }
  }
}

unint64_t lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key()
{
  result = lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key;
  if (!lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key;
  if (!lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key);
  }

  return result;
}

uint64_t one-time initialization function for edgeRightText()
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeRightText = result;
  return result;
}

uint64_t one-time initialization function for edgeLeftText()
{
  result = AGMakeUniqueID();
  static Spacing.Category.edgeLeftText = result;
  return result;
}

Swift::Void __swiftcall AnimatableFrameAttribute.updateValue()()
{
  v1 = v0;
  v19 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v4 = v3;
  v14 = *Value;
  v5 = AGGraphGetValue();
  v7 = v4 | v6;
  v13 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v11 = *AGGraphGetValue();
  v15[0] = v14;
  v15[1] = v13;
  v16 = v8;
  v17 = v9;
  if (v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 & 1;
  }

  v18 = v12;
  ViewFrame.roundCoordinatesToNearestOrUp(toMultipleOf:)(v11);
  if ((*(v1 + 84) & 1) == 0)
  {
    specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v15, 0, *(v1 + 12), (v1 + 16));
  }

  if ((v18 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }
}

uint64_t ConcentricLayoutComputer.updateValue()()
{
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = Value[1];
    v8 = *Value;
    v5 = *(AGGraphGetValue() + 8);

    v3 = v7;
    v2 = v8;
  }

  v9[0] = v2;
  v9[1] = v3;
  v10 = v4;
  v11 = v5;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 1;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v23 = 1;
  specialized StatefulRule<>.updateIfNotEqual<A>(to:)(v9);
  return outlined destroy of ConcentricLayoutComputer.Engine(v9);
}

uint64_t outlined init with copy of ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v4;
  v5 = *(a1 + 144);
  v7 = *(a1 + 96);
  v6 = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v5;
  *(a2 + 96) = v7;
  *(a2 + 112) = v6;
  v9 = *(a1 + 176);
  v8 = *(a1 + 192);
  v10 = *(a1 + 160);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 176) = v9;
  *(a2 + 192) = v8;
  *(a2 + 160) = v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v12;
  *(a2 + 48) = v11;

  return a2;
}

uint64_t initializeWithCopy for ConcentricLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v5;
  *(a1 + 208) = *(a2 + 208);
  v6 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v6;
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  v8 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  v9 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v9;

  return a1;
}

uint64_t ConcentricLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 48);
  v10 = *(v1 + 56);
  v12 = *(v1 + 72);
  v13 = *(v1 + 136);
  v14 = *(v1 + 144);
  v15 = *(v1 + 152);
  if ((*(v1 + 96) & 1) == 0)
  {
    if (v3)
    {
      if ((v10 & 1) == 0)
      {
        if (*(v1 + 152))
        {
          goto LABEL_21;
        }

        goto LABEL_10;
      }
    }

    else if ((v10 & 1) != 0 || v2 != v11)
    {
      goto LABEL_2;
    }

    if (v5)
    {
      if (v12)
      {
        goto LABEL_38;
      }
    }

    else if ((v12 & 1) == 0 && v4 == *(v1 + 64))
    {
      goto LABEL_38;
    }
  }

LABEL_2:
  if (*(v1 + 152))
  {
    goto LABEL_21;
  }

  if ((v3 & 1) == 0)
  {
    if ((*(v1 + 112) & 1) != 0 || *(v1 + 104) != v2)
    {
      goto LABEL_21;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v1 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (v5)
  {
    if (*(v1 + 128))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v1 + 128) & 1) == 0 && *(v1 + 120) == v4)
  {
    goto LABEL_38;
  }

LABEL_21:
  if (*(v1 + 208))
  {
    goto LABEL_22;
  }

  if (v3)
  {
    if ((*(v1 + 168) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((*(v1 + 168) & 1) != 0 || *(v1 + 160) != v2)
  {
    goto LABEL_22;
  }

  if ((v5 & 1) == 0)
  {
    if ((*(v1 + 184) & 1) == 0 && *(v1 + 176) == v4)
    {
      goto LABEL_38;
    }

LABEL_22:
    v22 = *(v1 + 120);
    v23 = *(v1 + 104);
    v26 = *(v1 + 96);
    v24 = *(v1 + 64);
    v25 = *(v1 + 72);
    v21 = *(v1 + 56);
    v27 = *(v1 + 80);
    v28 = *(v1 + 88);
    swift_beginAccess();
    v16 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v16[4] = v2;
      *(v16 + 5) = v3;
      v16[6] = v4;
      *(v16 + 28) = v5;
    }

    result = closure #1 in ConcentricLayoutComputer.Engine.sizeThatFits(_:)(v1, *&v2, v3, *&v4, v5, v6, v7, v8, v9);
    *(v1 + 160) = v23;
    *(v1 + 176) = v22;
    *(v1 + 192) = v13;
    *(v1 + 200) = v14;
    *(v1 + 208) = v15;
    *(v1 + 104) = v11;
    *(v1 + 112) = v21;
    *(v1 + 120) = v24;
    *(v1 + 128) = v25;
    *(v1 + 136) = v27;
    *(v1 + 144) = v28;
    *(v1 + 152) = v26;
    *(v1 + 48) = v2;
    *(v1 + 56) = v3;
    *(v1 + 64) = v4;
    *(v1 + 72) = v5;
    *(v1 + 80) = v18;
    *(v1 + 88) = v19;
    *(v1 + 96) = 0;
    return result;
  }

  if ((*(v1 + 184) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_38:
  result = swift_beginAccess();
  v20 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    result = swift_beginAccess();
    v20[4] = v2;
    *(v20 + 5) = v3;
    v20[6] = v4;
    *(v20 + 28) = v5 | 0x100;
  }

  return result;
}

uint64_t DynamicLayoutComputer.updateValue()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v4 + 16))(v6, Value, v3);
  v8 = *(v1 + 1);
  v9 = v1[8];
  v25 = *v1;
  *&v10 = *(v1 + 1);
  v14 = v10;
  v26 = v10;
  v27 = v8;
  v28 = v9;
  result = DynamicLayoutComputer.containerInfo.getter(v20);
  if (v20[0])
  {
    v15[0] = v20[0];
    v15[1] = v20[1];
    v16 = v21;
    v17 = v22;
    v18 = v23 & 1;
    v19 = v24;
    v12 = specialized DynamicLayoutMap.attributes(info:)(v15);

    WitnessTable = swift_getWitnessTable();
    StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v6, v14, v12, a1, v3, WitnessTable, *(a1 + 24));

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicLayoutComputer.containerInfo.getter@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  if (result == *MEMORY[0x1E698D3F8])
  {
    v4 = 0;
    *(a1 + 40) = 0;
    v5 = 0uLL;
    *a1 = 0u;
  }

  else
  {
    Value = AGGraphGetValue();
    v7 = *(Value + 8);
    v10 = *(Value + 16);
    v4 = *(Value + 32);
    v8 = *(Value + 40);
    v9 = *(Value + 44);
    *a1 = *Value;
    *(a1 + 8) = v7;
    *(a1 + 40) = v8;
    *(a1 + 44) = v9;

    v5 = v10;
  }

  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  return result;
}

uint64_t StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v17[0] = result;
    v17[1] = result;
    v17[2] = a2;
    v15 = result;
    v16 = a3;

    Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(v7, v17, &v15, a5, a4, a7, a6);
  }

  return result;
}

uint64_t Layout.updateLayoutComputer<A>(rule:layoutContext:children:)(uint64_t a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *a3;
  v13 = *(a3 + 1);
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v14 = type metadata accessor for ViewLayoutEngine();
  return StatefulRule<>.update<A>(modify:create:)(partial apply for closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v22, partial apply for closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v16, a5, v14, a7, &protocol witness table for ViewLayoutEngine<A>);
}

uint64_t specialized StatefulRule<>.updateIfNotEqual<A>(to:)(__int128 *a1)
{
  v105 = *MEMORY[0x1E69E9840];
  v2 = a1[11];
  v87 = a1[10];
  v88 = v2;
  v89 = a1[12];
  v90 = *(a1 + 208);
  v3 = a1[7];
  v83 = a1[6];
  v84 = v3;
  v4 = a1[9];
  v85 = a1[8];
  v86 = v4;
  v5 = a1[3];
  v79 = a1[2];
  v80 = v5;
  v6 = a1[5];
  v81 = a1[4];
  v82 = v6;
  v7 = a1[1];
  v77 = *a1;
  v78 = v7;
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v9 = *OutputValue;
    v10 = OutputValue[1];
    type metadata accessor for LayoutEngineBox<ConcentricLayoutComputer.Engine>(0, &lazy cache variable for type metadata for LayoutEngineBox<ConcentricLayoutComputer.Engine>, &type metadata for ConcentricLayoutComputer.Engine, &protocol witness table for ConcentricLayoutComputer.Engine, type metadata accessor for LayoutEngineBox);
    v11 = swift_dynamicCastClassUnconditional();
    v12 = *(v11 + 16);
    v13 = *(v11 + 32);
    v14 = *(v11 + 48);
    v15 = *(v11 + 64);
    v16 = *(v11 + 96);
    v75[4] = *(v11 + 80);
    v75[5] = v16;
    v75[2] = v14;
    v75[3] = v15;
    v17 = *(v11 + 112);
    v18 = *(v11 + 128);
    v19 = *(v11 + 160);
    v75[8] = *(v11 + 144);
    v75[9] = v19;
    v75[6] = v17;
    v75[7] = v18;
    v20 = *(v11 + 176);
    v21 = *(v11 + 192);
    v22 = *(v11 + 208);
    v76 = *(v11 + 224);
    v75[11] = v21;
    v75[12] = v22;
    v75[10] = v20;
    v75[0] = v12;
    v75[1] = v13;
    v23 = *(v11 + 192);
    v71 = *(v11 + 176);
    v72 = v23;
    v73 = *(v11 + 208);
    v74 = *(v11 + 224);
    v24 = *(v11 + 128);
    v67 = *(v11 + 112);
    v68 = v24;
    v25 = *(v11 + 160);
    v69 = *(v11 + 144);
    v70 = v25;
    v26 = *(v11 + 64);
    v63 = *(v11 + 48);
    v64 = v26;
    v27 = *(v11 + 96);
    v65 = *(v11 + 80);
    v66 = v27;
    v28 = *(v11 + 32);
    v61 = *(v11 + 16);
    v62 = v28;
    swift_retain_n();
    outlined init with copy of ConcentricLayoutComputer.Engine(v75, v59);
    v29 = specialized static ConcentricLayoutComputer.Engine.== infix(_:_:)(&v61, &v77);
    v101 = v71;
    v102 = v72;
    v103 = v73;
    v104 = v74;
    v97 = v67;
    v98 = v68;
    v99 = v69;
    v100 = v70;
    v93 = v63;
    v94 = v64;
    v95 = v65;
    v96 = v66;
    v91 = v61;
    v92 = v62;
    outlined destroy of ConcentricLayoutComputer.Engine(&v91);
    if ((v29 & 1) == 0)
    {
      v37 = v81;
      v38 = v80;
      v59[4] = v81;
      v59[5] = v82;
      v39 = v78;
      v40 = v79;
      v59[2] = v79;
      v59[3] = v80;
      v41 = v84;
      v42 = v85;
      v59[8] = v85;
      v59[9] = v86;
      v43 = v82;
      v44 = v83;
      v59[6] = v83;
      v59[7] = v84;
      v60 = v90;
      v45 = v88;
      v59[12] = v89;
      v46 = v87;
      v47 = v86;
      v59[10] = v87;
      v59[11] = v88;
      v59[0] = v77;
      v59[1] = v78;
      v48 = *(v11 + 16);
      v49 = *(v11 + 32);
      v50 = *(v11 + 48);
      v51 = *(v11 + 64);
      v52 = *(v11 + 96);
      v65 = *(v11 + 80);
      v66 = v52;
      v63 = v50;
      v64 = v51;
      v53 = *(v11 + 112);
      v54 = *(v11 + 128);
      v55 = *(v11 + 160);
      v69 = *(v11 + 144);
      v70 = v55;
      v67 = v53;
      v68 = v54;
      v56 = *(v11 + 176);
      v57 = *(v11 + 208);
      v72 = *(v11 + 192);
      v73 = v57;
      v71 = v56;
      v61 = v48;
      v62 = v49;
      v74 = *(v11 + 224);
      *(v11 + 16) = v77;
      *(v11 + 32) = v39;
      *(v11 + 80) = v37;
      *(v11 + 96) = v43;
      *(v11 + 48) = v40;
      *(v11 + 64) = v38;
      *(v11 + 176) = v46;
      *(v11 + 192) = v45;
      *(v11 + 208) = v89;
      *(v11 + 224) = v90;
      *(v11 + 112) = v44;
      *(v11 + 128) = v41;
      *(v11 + 144) = v42;
      *(v11 + 160) = v47;
      outlined init with copy of ConcentricLayoutComputer.Engine(v59, v58);
      outlined destroy of ConcentricLayoutComputer.Engine(&v61);
      v58[0] = v9;
      v58[1] = v10 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    v30 = a1[11];
    v101 = a1[10];
    v102 = v30;
    v103 = a1[12];
    v104 = *(a1 + 208);
    v31 = a1[7];
    v97 = a1[6];
    v98 = v31;
    v32 = a1[9];
    v99 = a1[8];
    v100 = v32;
    v33 = a1[3];
    v93 = a1[2];
    v94 = v33;
    v34 = a1[5];
    v95 = a1[4];
    v96 = v34;
    v35 = a1[1];
    v91 = *a1;
    v92 = v35;
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA010ConcentriccD033_7079FF89BCF97F81EB250A589B9A5CEDLLV0E0V_Tt1B5(&v91, &v61);
    v59[0] = v61;
    outlined init with copy of ConcentricLayoutComputer.Engine(&v91, v75);
    AGGraphSetOutputValue();
  }
}