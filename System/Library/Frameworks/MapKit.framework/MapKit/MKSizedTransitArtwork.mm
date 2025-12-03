@interface MKSizedTransitArtwork
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransitArtworkViewMode:(id)mode;
- (MKSizedTransitArtwork)initWithArtwork:(id)artwork shieldSize:(int64_t)size fallbackShieldSize:(int64_t)shieldSize artworkCache:(id)cache;
- (id)badgeImageToDisplayWithScreenScale:(double)scale nightMode:(BOOL)mode;
- (id)imageToDisplayWithScreenScale:(double)scale nightMode:(BOOL)mode;
- (unint64_t)hash;
@end

@implementation MKSizedTransitArtwork

- (id)badgeImageToDisplayWithScreenScale:(double)scale nightMode:(BOOL)mode
{
  artwork = [(MKSizedTransitArtwork *)self artwork];
  if ([artwork hasRoutingIncidentBadge])
  {
    v6 = [MKIconManager imageForTrafficIncidentType:4 size:0 forScale:scale];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageToDisplayWithScreenScale:(double)scale nightMode:(BOOL)mode
{
  modeCopy = mode;
  artwork = [(MKSizedTransitArtwork *)self artwork];
  v8 = MKTransitArtworkDataSourceAllowMasking(artwork);

  artworkCache = [(MKSizedTransitArtwork *)self artworkCache];
  v10 = [artworkCache imageForSizedArtwork:self scale:modeCopy nightMode:scale];

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
  artwork = [(MKSizedTransitArtwork *)self artwork];
  v31 = 2654435761 * [artwork artworkSourceType];
  shieldDataSource = [artwork shieldDataSource];
  v30 = 2654435761 * [shieldDataSource shieldType];
  shieldText = [shieldDataSource shieldText];
  v29 = [shieldText hash];
  shieldColorString = [shieldDataSource shieldColorString];
  v28 = [shieldColorString hash];

  iconDataSource = [artwork iconDataSource];
  v27 = 2654435761 * [iconDataSource iconType];
  v26 = 2654435761 * [iconDataSource cartoID];
  v25 = 2654435761 * [iconDataSource defaultTransitType];
  v24 = 2654435761 * [iconDataSource iconAttributeKey];
  v23 = 2654435761 * [iconDataSource iconAttributeValue];
  iconFallbackShieldDataSource = [artwork iconFallbackShieldDataSource];
  v22 = 2654435761 * [iconFallbackShieldDataSource shieldType];
  shieldText2 = [iconFallbackShieldDataSource shieldText];
  v21 = [shieldText2 hash];
  shieldColorString2 = [iconFallbackShieldDataSource shieldColorString];
  v19 = [shieldColorString2 hash];

  textDataSource = [artwork textDataSource];
  text = [textDataSource text];
  v13 = [text hash];

  v14 = 2654435761 * [artwork artworkUseType];
  if ([artwork hasRoutingIncidentBadge])
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  accessibilityText = [artwork accessibilityText];
  v17 = [accessibilityText hash];

  return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v13 ^ v14 ^ v15 ^ v17;
}

- (BOOL)isEqualToTransitArtworkViewMode:(id)mode
{
  v163 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  shieldSize = [modeCopy shieldSize];
  if (shieldSize == [(MKSizedTransitArtwork *)self shieldSize])
  {
    artwork = [modeCopy artwork];
    artwork2 = [(MKSizedTransitArtwork *)self artwork];
    v8 = artwork;
    v9 = artwork2;
    v10 = v9;
    if (!v8 || !v9)
    {
      v35 = (v8 | v9) == 0;
LABEL_14:

LABEL_16:
      goto LABEL_17;
    }

    artworkSourceType = [v8 artworkSourceType];
    if (artworkSourceType != [v10 artworkSourceType] || (v12 = objc_msgSend(v8, "artworkUseType"), v12 != objc_msgSend(v10, "artworkUseType")))
    {

      v35 = 0;
      goto LABEL_16;
    }

    shieldDataSource = [v8 shieldDataSource];
    shieldDataSource2 = [v10 shieldDataSource];
    v15 = shieldDataSource;
    v16 = shieldDataSource2;
    v17 = v16;
    if (!(v15 | v16))
    {
LABEL_7:
      iconDataSource = [v8 iconDataSource];
      iconDataSource2 = [v10 iconDataSource];
      v20 = iconDataSource;
      v21 = iconDataSource2;
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

        iconAttributeValue = [v20 iconAttributeValue];
        iconAttributeValue2 = [v22 iconAttributeValue];

        if (iconAttributeValue != iconAttributeValue2)
        {
          goto LABEL_72;
        }
      }

      iconFallbackShieldDataSource = [v8 iconFallbackShieldDataSource];
      iconFallbackShieldDataSource2 = [v10 iconFallbackShieldDataSource];
      v25 = iconFallbackShieldDataSource;
      v26 = iconFallbackShieldDataSource2;
      v27 = v26;
      if (!(v25 | v26))
      {
        goto LABEL_9;
      }

      if ((v25 == 0) == (v26 == 0))
      {
        shieldType = [v25 shieldType];
        if (shieldType == [v27 shieldType])
        {
          shieldText = [v25 shieldText];
          if (!shieldText)
          {
            shieldText2 = [v27 shieldText];
            if (!shieldText2)
            {
              v137 = v20;
              shieldText2 = 0;
              LODWORD(v136) = 0;
              goto LABEL_91;
            }
          }

          shieldText3 = [v25 shieldText];
          shieldText4 = [v27 shieldText];
          v151 = shieldText3;
          v51 = shieldText3;
          shieldType = shieldText4;
          if ([v51 isEqualToString:shieldText4])
          {
            v137 = v20;
            LODWORD(v136) = 1;
            v20 = v151;
LABEL_91:
            v157 = v25;
            shieldColorString = [v25 shieldColorString];
            if (shieldColorString || ([v27 shieldColorString], (v130 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v133 = shieldType;
              v152 = v20;
              shieldColorString2 = [v157 shieldColorString];
              v88 = v27;
              shieldColorString3 = [v27 shieldColorString];
              v135 = [shieldColorString2 isEqualToString:shieldColorString3];

              if (shieldColorString)
              {

                v25 = v157;
                v27 = v88;
                v20 = v152;
                shieldType = v133;
                if (!v136)
                {
                  goto LABEL_96;
                }

                goto LABEL_95;
              }

              v27 = v88;
              v20 = v152;
              v90 = v130;
              shieldType = v133;
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
              if (shieldText)
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
              textDataSource = [v8 textDataSource];
              textDataSource2 = [v10 textDataSource];
              v30 = textDataSource;
              v31 = textDataSource2;
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
              text = [v32 text];
              [v33 text];
              v58 = v57 = v32;
              v59 = text;
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
              formatStrings = [v59 formatStrings];
              v131 = v61;
              formatStrings2 = [v61 formatStrings];
              v72 = formatStrings;
              v73 = formatStrings2;
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

              separators = [v132 separators];
              separators2 = [v131 separators];
              v77 = separators;
              v78 = separators2;
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

              formatTokens = [v132 formatTokens];
              formatTokens2 = [v131 formatTokens];
              v82 = formatTokens;
              v124 = formatTokens2;
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
                  alternativeString = [v132 alternativeString];
                  alternativeString2 = [v131 alternativeString];
                  if (alternativeString | alternativeString2)
                  {
                    v85 = [alternativeString isEqual:alternativeString2];
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
                  hasRoutingIncidentBadge = [v8 hasRoutingIncidentBadge];
                  if (hasRoutingIncidentBadge != [v10 hasRoutingIncidentBadge])
                  {
                    v35 = 0;
LABEL_47:
                    v52 = v153;
LABEL_86:
                    v33 = v146;
                    goto LABEL_87;
                  }

                  v143 = v32;
                  accessibilityText = [v8 accessibilityText];
                  if (accessibilityText || ([v10 accessibilityText], (v136 = objc_claimAutoreleasedReturnValue()) != 0))
                  {
                    v138 = v20;
                    accessibilityText2 = [v8 accessibilityText];
                    accessibilityText3 = [v10 accessibilityText];
                    v35 = [accessibilityText2 isEqualToString:accessibilityText3];

                    if (accessibilityText)
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

          v69 = shieldText2;
          if (shieldText)
          {
            v69 = shieldText;
          }
        }
      }

LABEL_71:
      goto LABEL_72;
    }

    if ((v15 == 0) == (v16 == 0))
    {
      shieldType2 = [v15 shieldType];
      if (shieldType2 == [v17 shieldType])
      {
        shieldText5 = [v15 shieldText];
        if (!shieldText5)
        {
          shieldText6 = [v17 shieldText];
          if (!shieldText6)
          {
            shieldText6 = 0;
            v41 = 0;
            goto LABEL_56;
          }
        }

        shieldText7 = [v15 shieldText];
        shieldText8 = [v17 shieldText];
        if ([shieldText7 isEqualToString:shieldText8])
        {
          v145 = shieldText8;
          v155 = shieldText7;
          v41 = 1;
LABEL_56:
          shieldColorString4 = [v15 shieldColorString];
          if (shieldColorString4 || ([v17 shieldColorString], (shieldText2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v154 = v41;
            shieldColorString5 = [v15 shieldColorString];
            shieldColorString6 = [v17 shieldColorString];
            v65 = [shieldColorString5 isEqualToString:shieldColorString6];

            if (shieldColorString4)
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
            v67 = shieldText2;
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
            if (!shieldText5)
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

        if (shieldText5)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MKSizedTransitArtwork *)self isEqualToTransitArtworkViewMode:equalCopy];

  return v5;
}

- (MKSizedTransitArtwork)initWithArtwork:(id)artwork shieldSize:(int64_t)size fallbackShieldSize:(int64_t)shieldSize artworkCache:(id)cache
{
  artworkCopy = artwork;
  cacheCopy = cache;
  v18.receiver = self;
  v18.super_class = MKSizedTransitArtwork;
  v13 = [(MKSizedTransitArtwork *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_artwork, artwork);
    v14->_shieldSize = size;
    v14->_fallbackShieldSize = shieldSize;
    if (cacheCopy)
    {
      v15 = cacheCopy;
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