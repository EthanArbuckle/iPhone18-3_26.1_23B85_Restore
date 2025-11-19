@interface MKSizedTransitArtwork
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransitArtworkViewMode:(id)a3;
- (MKSizedTransitArtwork)initWithArtwork:(id)a3 shieldSize:(int64_t)a4 fallbackShieldSize:(int64_t)a5 artworkCache:(id)a6;
- (id)badgeImageToDisplayWithScreenScale:(double)a3 nightMode:(BOOL)a4;
- (id)imageToDisplayWithScreenScale:(double)a3 nightMode:(BOOL)a4;
- (unint64_t)hash;
@end

@implementation MKSizedTransitArtwork

- (id)badgeImageToDisplayWithScreenScale:(double)a3 nightMode:(BOOL)a4
{
  v5 = [(MKSizedTransitArtwork *)self artwork];
  if ([v5 hasRoutingIncidentBadge])
  {
    v6 = [MKIconManager imageForTrafficIncidentType:4 size:0 forScale:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageToDisplayWithScreenScale:(double)a3 nightMode:(BOOL)a4
{
  v4 = a4;
  v7 = [(MKSizedTransitArtwork *)self artwork];
  v8 = MKTransitArtworkDataSourceAllowMasking(v7);

  v9 = [(MKSizedTransitArtwork *)self artworkCache];
  v10 = [v9 imageForSizedArtwork:self scale:v4 nightMode:a3];

  if (v8)
  {
    v11 = [v10 imageWithRenderingMode:2];

    v10 = v11;
  }

  return v10;
}

- (unint64_t)hash
{
  v33 = 2654435761 * [(MKSizedTransitArtwork *)self shieldSize];
  v32 = 2654435761 * [(MKSizedTransitArtwork *)self fallbackShieldSize];
  v3 = [(MKSizedTransitArtwork *)self artwork];
  v31 = 2654435761 * [v3 artworkSourceType];
  v4 = [v3 shieldDataSource];
  v30 = 2654435761 * [v4 shieldType];
  v5 = [v4 shieldText];
  v29 = [v5 hash];
  v6 = [v4 shieldColorString];
  v28 = [v6 hash];

  v7 = [v3 iconDataSource];
  v27 = 2654435761 * [v7 iconType];
  v26 = 2654435761 * [v7 cartoID];
  v25 = 2654435761 * [v7 defaultTransitType];
  v24 = 2654435761 * [v7 iconAttributeKey];
  v23 = 2654435761 * [v7 iconAttributeValue];
  v8 = [v3 iconFallbackShieldDataSource];
  v22 = 2654435761 * [v8 shieldType];
  v9 = [v8 shieldText];
  v21 = [v9 hash];
  v10 = [v8 shieldColorString];
  v19 = [v10 hash];

  v11 = [v3 textDataSource];
  v12 = [v11 text];
  v13 = [v12 hash];

  v14 = 2654435761 * [v3 artworkUseType];
  if ([v3 hasRoutingIncidentBadge])
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v3 accessibilityText];
  v17 = [v16 hash];

  return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v13 ^ v14 ^ v15 ^ v17;
}

- (BOOL)isEqualToTransitArtworkViewMode:(id)a3
{
  v163 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 shieldSize];
  if (v5 == [(MKSizedTransitArtwork *)self shieldSize])
  {
    v6 = [v4 artwork];
    v7 = [(MKSizedTransitArtwork *)self artwork];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (!v8 || !v9)
    {
      v35 = (v8 | v9) == 0;
LABEL_14:

LABEL_16:
      goto LABEL_17;
    }

    v11 = [v8 artworkSourceType];
    if (v11 != [v10 artworkSourceType] || (v12 = objc_msgSend(v8, "artworkUseType"), v12 != objc_msgSend(v10, "artworkUseType")))
    {

      v35 = 0;
      goto LABEL_16;
    }

    v13 = [v8 shieldDataSource];
    v14 = [v10 shieldDataSource];
    v15 = v13;
    v16 = v14;
    v17 = v16;
    if (!(v15 | v16))
    {
LABEL_7:
      v18 = [v8 iconDataSource];
      v19 = [v10 iconDataSource];
      v20 = v18;
      v21 = v19;
      v22 = v21;
      if (v20 | v21)
      {
        if ((v20 == 0) != (v21 == 0) || (v42 = [v20 iconType], v42 != objc_msgSend(v22, "iconType")) || (v43 = objc_msgSend(v20, "cartoID"), v43 != objc_msgSend(v22, "cartoID")) || (v44 = objc_msgSend(v20, "defaultTransitType"), v44 != objc_msgSend(v22, "defaultTransitType")) || (v45 = objc_msgSend(v20, "iconAttributeKey"), v45 != objc_msgSend(v22, "iconAttributeKey")))
        {

LABEL_72:
          v35 = 0;
LABEL_88:

          goto LABEL_89;
        }

        v46 = [v20 iconAttributeValue];
        v47 = [v22 iconAttributeValue];

        if (v46 != v47)
        {
          goto LABEL_72;
        }
      }

      v23 = [v8 iconFallbackShieldDataSource];
      v24 = [v10 iconFallbackShieldDataSource];
      v25 = v23;
      v26 = v24;
      v27 = v26;
      if (!(v25 | v26))
      {
        goto LABEL_9;
      }

      if ((v25 == 0) == (v26 == 0))
      {
        v48 = [v25 shieldType];
        if (v48 == [v27 shieldType])
        {
          v147 = [v25 shieldText];
          if (!v147)
          {
            v142 = [v27 shieldText];
            if (!v142)
            {
              v137 = v20;
              v142 = 0;
              LODWORD(v136) = 0;
              goto LABEL_91;
            }
          }

          v49 = [v25 shieldText];
          v50 = [v27 shieldText];
          v151 = v49;
          v51 = v49;
          v48 = v50;
          if ([v51 isEqualToString:v50])
          {
            v137 = v20;
            LODWORD(v136) = 1;
            v20 = v151;
LABEL_91:
            v157 = v25;
            v86 = [v25 shieldColorString];
            if (v86 || ([v27 shieldColorString], (v130 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v133 = v48;
              v152 = v20;
              v87 = [v157 shieldColorString];
              v88 = v27;
              v89 = [v27 shieldColorString];
              v135 = [v87 isEqualToString:v89];

              if (v86)
              {

                v25 = v157;
                v27 = v88;
                v20 = v152;
                v48 = v133;
                if (!v136)
                {
                  goto LABEL_96;
                }

                goto LABEL_95;
              }

              v27 = v88;
              v20 = v152;
              v90 = v130;
              v48 = v133;
            }

            else
            {
              v90 = 0;
              v135 = 1;
            }

            v25 = v157;
            if ((v136 & 1) == 0)
            {
LABEL_96:
              if (v147)
              {

                v20 = v137;
                if (!v135)
                {
                  goto LABEL_71;
                }
              }

              else
              {

                v20 = v137;
                if ((v135 & 1) == 0)
                {
                  goto LABEL_71;
                }
              }

LABEL_9:
              v153 = v27;
              v28 = [v8 textDataSource];
              v29 = [v10 textDataSource];
              v30 = v28;
              v31 = v29;
              v32 = v30;
              v33 = v31;
              v150 = v17;
              v156 = v25;
              if (!(v32 | v31))
              {
                goto LABEL_10;
              }

              if ((v32 == 0) != (v31 == 0))
              {
                goto LABEL_39;
              }

              v136 = v22;
              v56 = [v32 text];
              [v33 text];
              v58 = v57 = v32;
              v59 = v56;
              v60 = v58;
              if (!(v59 | v60))
              {

                v32 = v57;
                v22 = v136;
                goto LABEL_10;
              }

              v61 = v60;
              v144 = v57;
              v148 = v33;
              if ((v59 == 0) != (v60 == 0))
              {

                v32 = v57;
                v35 = 0;
                v52 = v153;
                v22 = v136;
                goto LABEL_87;
              }

              v132 = v59;
              v70 = [v59 formatStrings];
              v131 = v61;
              v71 = [v61 formatStrings];
              v72 = v70;
              v73 = v71;
              v74 = v73;
              v22 = v136;
              if (v72 | v73)
              {
                if ((v72 == 0) != (v73 == 0) || (v126 = v72, v91 = [v72 count], v92 = v91 == objc_msgSend(v74, "count"), v72 = v126, !v92))
                {

                  v32 = v144;
LABEL_116:

                  goto LABEL_153;
                }

                v140 = v20;
                v160 = 0u;
                v161 = 0u;
                v158 = 0u;
                v159 = 0u;
                obj = v126;
                v93 = [obj countByEnumeratingWithState:&v158 objects:v162 count:16];
                v134 = v74;
                if (v93)
                {
                  v94 = v93;
                  v95 = 0;
                  v96 = *v159;
                  while (2)
                  {
                    for (i = 0; i != v94; ++i)
                    {
                      if (*v159 != v96)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v98 = *(*(&v158 + 1) + 8 * i);
                      v99 = [v134 objectAtIndexedSubscript:v95];
                      if (v98 | v99)
                      {
                        v100 = v99;
                        v101 = [v98 isEqual:v99];

                        if (!v101)
                        {

                          v74 = v134;
                          v20 = v140;
                          v32 = v144;
                          v22 = v136;
                          v72 = v126;
                          goto LABEL_116;
                        }
                      }

                      ++v95;
                    }

                    v94 = [obj countByEnumeratingWithState:&v158 objects:v162 count:16];
                    if (v94)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v22 = v136;
                v20 = v140;
              }

              else
              {
                v134 = v73;
                v126 = v72;
              }

              v75 = [v132 separators];
              v76 = [v131 separators];
              v77 = v75;
              v78 = v76;
              v79 = v78;
              if (v77 | v78)
              {
                if ((v77 == 0) != (v78 == 0) || (v123 = v77, v102 = [v77 count], v102 != objc_msgSend(v79, "count")))
                {

                  v32 = v144;
                  v111 = v77;
                  v112 = v126;
LABEL_152:

LABEL_153:
                  v33 = v148;
LABEL_39:

LABEL_40:
                  v35 = 0;
                  v52 = v153;
LABEL_87:

                  v17 = v150;
                  goto LABEL_88;
                }

                v122 = v79;
                v141 = v20;
                v160 = 0u;
                v161 = 0u;
                v158 = 0u;
                v159 = 0u;
                v125 = v77;
                v103 = [v125 countByEnumeratingWithState:&v158 objects:v162 count:16];
                if (v103)
                {
                  v104 = v103;
                  v105 = 0;
                  obja = *v159;
                  while (2)
                  {
                    for (j = 0; j != v104; ++j)
                    {
                      if (*v159 != obja)
                      {
                        objc_enumerationMutation(v125);
                      }

                      v107 = *(*(&v158 + 1) + 8 * j);
                      v108 = [v122 objectAtIndexedSubscript:v105];
                      if (v107 | v108)
                      {
                        v109 = v108;
                        v110 = [v107 isEqual:v108];

                        if (!v110)
                        {

                          v20 = v141;
                          v32 = v144;
                          v79 = v122;
                          v22 = v136;
                          v112 = v126;
                          v111 = v123;
                          goto LABEL_152;
                        }
                      }

                      ++v105;
                    }

                    v104 = [v125 countByEnumeratingWithState:&v158 objects:v162 count:16];
                    if (v104)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v22 = v136;
                v20 = v141;
              }

              else
              {
                v122 = v78;
                v123 = v77;
              }

              v80 = [v132 formatTokens];
              v81 = [v131 formatTokens];
              v82 = v80;
              v124 = v81;
              if (!(v82 | v124))
              {
                v121 = v82;
                v139 = v20;
                goto LABEL_82;
              }

              if ((v82 == 0) == (v124 == 0))
              {
                v121 = v82;
                v113 = [v82 count];
                v92 = v113 == [v124 count];
                v82 = v121;
                if (v92)
                {
                  v139 = v20;
                  v160 = 0u;
                  v161 = 0u;
                  v158 = 0u;
                  v159 = 0u;
                  v120 = v121;
                  v114 = [v120 countByEnumeratingWithState:&v158 objects:v162 count:16];
                  if (v114)
                  {
                    v115 = v114;
                    v116 = 0;
                    objb = *v159;
                    while (2)
                    {
                      for (k = 0; k != v115; ++k)
                      {
                        if (*v159 != objb)
                        {
                          objc_enumerationMutation(v120);
                        }

                        v118 = [v124 objectAtIndexedSubscript:v116];
                        v119 = GEOServerFormatTokenEqual();

                        if (!v119)
                        {

                          v20 = v139;
                          v32 = v144;
                          v22 = v136;
                          goto LABEL_146;
                        }

                        ++v116;
                      }

                      v115 = [v120 countByEnumeratingWithState:&v158 objects:v162 count:16];
                      if (v115)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_82:
                  v83 = [v132 alternativeString];
                  v84 = [v131 alternativeString];
                  if (v83 | v84)
                  {
                    v85 = [v83 isEqual:v84];
                  }

                  else
                  {
                    v85 = 1;
                  }

                  v33 = v148;
                  v32 = v144;

                  v22 = v136;
                  v20 = v139;
                  if ((v85 & 1) == 0)
                  {
                    goto LABEL_40;
                  }

LABEL_10:
                  v146 = v33;
                  v34 = [v8 hasRoutingIncidentBadge];
                  if (v34 != [v10 hasRoutingIncidentBadge])
                  {
                    v35 = 0;
LABEL_47:
                    v52 = v153;
LABEL_86:
                    v33 = v146;
                    goto LABEL_87;
                  }

                  v143 = v32;
                  v53 = [v8 accessibilityText];
                  if (v53 || ([v10 accessibilityText], (v136 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v138 = v20;
                    v54 = [v8 accessibilityText];
                    v55 = [v10 accessibilityText];
                    v35 = [v54 isEqualToString:v55];

                    if (v53)
                    {

                      v20 = v138;
                      v32 = v143;
                      goto LABEL_47;
                    }

                    v20 = v138;
                    v32 = v143;
                    v52 = v153;
                    v68 = v136;
                  }

                  else
                  {
                    v68 = 0;
                    v35 = 1;
                    v52 = v153;
                    v32 = v143;
                  }

                  goto LABEL_86;
                }
              }

              v32 = v144;
LABEL_146:
              v112 = v126;
              v79 = v122;
              v111 = v123;
              goto LABEL_152;
            }

LABEL_95:

            goto LABEL_96;
          }

          v69 = v142;
          if (v147)
          {
            v69 = v147;
          }
        }
      }

LABEL_71:
      goto LABEL_72;
    }

    if ((v15 == 0) == (v16 == 0))
    {
      v37 = [v15 shieldType];
      if (v37 == [v17 shieldType])
      {
        v38 = [v15 shieldText];
        if (!v38)
        {
          v149 = [v17 shieldText];
          if (!v149)
          {
            v149 = 0;
            v41 = 0;
            goto LABEL_56;
          }
        }

        v39 = [v15 shieldText];
        v40 = [v17 shieldText];
        if ([v39 isEqualToString:v40])
        {
          v145 = v40;
          v155 = v39;
          v41 = 1;
LABEL_56:
          v62 = [v15 shieldColorString];
          if (v62 || ([v17 shieldColorString], (v142 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v154 = v41;
            v63 = [v15 shieldColorString];
            v64 = [v17 shieldColorString];
            v65 = [v63 isEqualToString:v64];

            if (v62)
            {

              v66 = v155;
              if (!v154)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            }

            v66 = v155;
            LOBYTE(v41) = v154;
            v67 = v142;
          }

          else
          {
            v67 = 0;
            v65 = 1;
            v66 = v155;
          }

          if ((v41 & 1) == 0)
          {
LABEL_61:
            if (!v38)
            {
            }

            if (v65)
            {
              goto LABEL_7;
            }

LABEL_52:
            v35 = 0;
LABEL_89:

            goto LABEL_14;
          }

LABEL_60:

          goto LABEL_61;
        }

        if (v38)
        {
        }

        else
        {
        }
      }
    }

    goto LABEL_52;
  }

  v35 = 0;
LABEL_17:

  return v35;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MKSizedTransitArtwork *)self isEqualToTransitArtworkViewMode:v4];

  return v5;
}

- (MKSizedTransitArtwork)initWithArtwork:(id)a3 shieldSize:(int64_t)a4 fallbackShieldSize:(int64_t)a5 artworkCache:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = MKSizedTransitArtwork;
  v13 = [(MKSizedTransitArtwork *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_artwork, a3);
    v14->_shieldSize = a4;
    v14->_fallbackShieldSize = a5;
    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = +[MKArtworkDataSourceCache sharedInstance];
    }

    artworkCache = v14->_artworkCache;
    v14->_artworkCache = v15;
  }

  return v14;
}

@end