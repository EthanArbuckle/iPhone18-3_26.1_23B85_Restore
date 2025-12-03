@interface MKServerFormattedString
+ (id)attributesForServerFormatStyle:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToServerFormattedString:(id)string;
- (MKServerFormattedString)initWithCoder:(id)coder;
- (MKServerFormattedString)initWithComposedString:(id)string;
- (MKServerFormattedString)initWithGeoServerString:(id)string parameters:(id)parameters;
- (id)_attachmentTextForSFSymbol:(id)symbol attributes:(id)attributes;
- (id)_attributesByTokenForFormatStyles:(id)styles;
- (id)_multiPartAttributedStringForComposedStringWithAttributes:(id)attributes;
- (id)_parametersByScrubbingUnusedOverrideVariablesFromParameters:(id)parameters geoServerString:(id)string;
- (id)_textAttachmentForAvatarWithAttributes:(id)attributes;
- (id)_textAttachmentForGeoArtwork:(id)artwork attributes:(id)attributes accessibilityText:(id)text;
- (id)_textAttachmentForManeuver:(int)maneuver junctionInfo:(id)info defaultAttributes:(id)attributes;
- (id)debugDescription;
- (id)multiPartAttributedStringWithAttributes:(id)attributes;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MKServerFormattedString

- (id)debugDescription
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DB648];
  v11[0] = @"MKServerFormattedStringArtworkDebugDescriptionOnlyAttributeKey";
  v11[1] = v3;
  v12[0] = MEMORY[0x1E695E118];
  v4 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v5 = [v4 systemFontOfSize:?];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v7 = [(MKServerFormattedString *)self multiPartAttributedStringWithAttributes:v6];
  attributedString = [v7 attributedString];
  string = [attributedString string];

  return string;
}

- (unint64_t)hash
{
  geoServerString = [(MKServerFormattedString *)self geoServerString];
  v4 = [geoServerString hash];
  parameters = [(MKServerFormattedString *)self parameters];
  v6 = [parameters hash];

  return v6 ^ v4;
}

- (BOOL)isEqualToServerFormattedString:(id)string
{
  v90 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  geoServerString = [(MKServerFormattedString *)self geoServerString];
  geoServerString2 = [stringCopy geoServerString];
  v7 = geoServerString;
  v8 = geoServerString2;
  v9 = v8;
  if (!(v7 | v8))
  {
    goto LABEL_2;
  }

  if ((v7 == 0) != (v8 == 0))
  {
    goto LABEL_63;
  }

  formatStrings = [v7 formatStrings];
  formatStrings2 = [v9 formatStrings];
  v19 = formatStrings;
  v20 = formatStrings2;
  v21 = v20;
  if (v19 | v20)
  {
    if ((v19 == 0) != (v20 == 0) || (v34 = [v19 count], v34 != objc_msgSend(v21, "count")))
    {

LABEL_62:
LABEL_63:

      goto LABEL_64;
    }

    selfCopy = self;
    v76 = stringCopy;
    v35 = v21;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v79 = v19;
    v36 = v19;
    v37 = [v36 countByEnumeratingWithState:&v85 objects:v89 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = 0;
      v40 = *v86;
      while (2)
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v86 != v40)
          {
            objc_enumerationMutation(v36);
          }

          v42 = *(*(&v85 + 1) + 8 * i);
          v43 = [v35 objectAtIndexedSubscript:v39];
          if (v42 | v43)
          {
            v44 = v43;
            v45 = [v42 isEqual:v43];

            if (!v45)
            {

              v21 = v35;
              stringCopy = v76;
              v19 = v79;
              goto LABEL_62;
            }
          }

          ++v39;
        }

        v38 = [v36 countByEnumeratingWithState:&v85 objects:v89 count:16];
        if (v38)
        {
          continue;
        }

        break;
      }
    }

    v21 = v35;
    self = selfCopy;
    stringCopy = v76;
    v19 = v79;
  }

  separators = [v7 separators];
  separators2 = [v9 separators];
  v24 = separators;
  v25 = separators2;
  v26 = v25;
  if (v24 | v25)
  {
    if ((v24 == 0) != (v25 == 0) || (v46 = [v24 count], v46 != objc_msgSend(v26, "count")))
    {

LABEL_61:
      goto LABEL_62;
    }

    v84 = v26;
    v77 = stringCopy;
    v80 = v19;
    v47 = v21;
    v71 = v24;
    selfCopy2 = self;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v48 = v24;
    v49 = [v48 countByEnumeratingWithState:&v85 objects:v89 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = 0;
      v52 = *v86;
      while (2)
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v86 != v52)
          {
            objc_enumerationMutation(v48);
          }

          v54 = *(*(&v85 + 1) + 8 * j);
          v55 = [v84 objectAtIndexedSubscript:v51];
          if (v54 | v55)
          {
            v56 = v55;
            v57 = [v54 isEqual:v55];

            if (!v57)
            {

              v26 = v84;
              v21 = v47;
              stringCopy = v77;
              v19 = v80;
              v24 = v71;
              goto LABEL_61;
            }
          }

          ++v51;
        }

        v50 = [v48 countByEnumeratingWithState:&v85 objects:v89 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    v19 = v80;
    v21 = v47;
    self = selfCopy2;
    stringCopy = v77;
    v24 = v71;
  }

  else
  {
    v84 = v25;
  }

  formatTokens = [v7 formatTokens];
  formatTokens2 = [v9 formatTokens];
  v29 = formatTokens;
  v30 = formatTokens2;
  v31 = v30;
  if (!(v29 | v30))
  {
    v83 = v29;
    goto LABEL_12;
  }

  if ((v29 == 0) != (v30 == 0) || (v83 = v29, v58 = [v29 count], v59 = v58 == objc_msgSend(v31, "count"), v29 = v83, !v59))
  {

LABEL_56:
    v26 = v84;
    goto LABEL_61;
  }

  v70 = v21;
  v72 = v24;
  v78 = stringCopy;
  v81 = v19;
  selfCopy3 = self;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v60 = v83;
  v61 = [v60 countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = 0;
    v64 = *v86;
    while (2)
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v86 != v64)
        {
          objc_enumerationMutation(v60);
        }

        v66 = [v31 objectAtIndexedSubscript:v63];
        v67 = GEOServerFormatTokenEqual();

        if (!v67)
        {

          stringCopy = v78;
          v19 = v81;
          v21 = v70;
          v24 = v72;
          goto LABEL_56;
        }

        ++v63;
      }

      v62 = [v60 countByEnumeratingWithState:&v85 objects:v89 count:16];
      if (v62)
      {
        continue;
      }

      break;
    }
  }

  self = selfCopy3;
  stringCopy = v78;
  v19 = v81;
  v21 = v70;
  v24 = v72;
LABEL_12:
  alternativeString = [v7 alternativeString];
  alternativeString2 = [v9 alternativeString];
  if (!(alternativeString | alternativeString2))
  {

    goto LABEL_2;
  }

  v68 = alternativeString2;
  v82 = [alternativeString isEqual:alternativeString2];

  if ((v82 & 1) == 0)
  {
LABEL_64:
    v16 = 0;
    goto LABEL_65;
  }

LABEL_2:
  parameters = [(MKServerFormattedString *)self parameters];
  parameters2 = [stringCopy parameters];
  v12 = parameters;
  v13 = parameters2;
  if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
  {
    v16 = 0;
  }

  else
  {
    composedString = self->_composedString;
    if (composedString | stringCopy[3])
    {
      v16 = [(GEOComposedString *)composedString isEqual:?];
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_65:
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKServerFormattedString *)self isEqualToServerFormattedString:v5];
  }

  return v6;
}

- (id)_attributesByTokenForFormatStyles:(id)styles
{
  v19 = *MEMORY[0x1E69E9840];
  stylesCopy = styles;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(stylesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = stylesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [objc_opt_class() attributesForServerFormatStyle:{objc_msgSend(v10, "styleType", v14)}];
        token = [v10 token];
        [v4 setObject:v11 forKey:token];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)multiPartAttributedStringWithAttributes:(id)attributes
{
  v240 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v177 = attributesCopy;
  if (self->_composedString)
  {
    v5 = [(MKServerFormattedString *)self _multiPartAttributedStringForComposedStringWithAttributes:attributesCopy];
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69A2580];
  selfCopy = self;
  geoServerString = [(MKServerFormattedString *)self geoServerString];
  v175 = [v7 serverFormattedStringByEvaluatingConditionsInString:geoServerString];

  v226 = 0;
  v227 = &v226;
  v228 = 0x3032000000;
  v229 = __Block_byref_object_copy__9981;
  v230 = __Block_byref_object_dispose__9982;
  formatStrings = [v175 formatStrings];
  formatStyles = [v175 formatStyles];
  v220 = 0;
  v221 = &v220;
  v222 = 0x3032000000;
  v223 = __Block_byref_object_copy__9981;
  v224 = __Block_byref_object_dispose__9982;
  separators = [v175 separators];
  if (GEOConfigGetBOOL())
  {
    v219[0] = MEMORY[0x1E69E9820];
    v219[1] = 3221225472;
    v219[2] = __67__MKServerFormattedString_multiPartAttributedStringWithAttributes___block_invoke;
    v219[3] = &unk_1E76C7C70;
    v219[4] = &v226;
    v219[5] = &v220;
    v9 = MEMORY[0x1A58E9F30](v219);
    if (![v221[5] count] && objc_msgSend(v227[5], "count") == 1)
    {
      (v9)[2](v9, @" · ");
    }

    if (![v221[5] count] && objc_msgSend(v227[5], "count") == 1)
    {
      (v9)[2](v9, @" · ");
    }
  }

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v179 = [v10 initWithCapacity:{objc_msgSend(v227[5], "count")}];
  v176 = [(MKServerFormattedString *)selfCopy _attributesByTokenForFormatStyles:formatStyles];
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  obj = v227[5];
  v172 = [obj countByEnumeratingWithState:&v215 objects:v233 count:16];
  if (v172)
  {
    v173 = *v216;
    v201 = *MEMORY[0x1E69DB648];
    v192 = *MEMORY[0x1E69DB670];
    v181 = *MEMORY[0x1E69DB650];
    __asm { FMOV            V0.2D, #7.0 }

    v180 = _Q0;
    do
    {
      for (i = 0; i != v172; ++i)
      {
        if (*v216 != v173)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v215 + 1) + 8 * i);
        if ([v15 length])
        {
          v174 = [objc_alloc(MEMORY[0x1E69A2588]) initWithString:v15];
          v16 = [v174 attributedStringWithStyleAttributes:v176 defaultAttributes:v177];
          v206 = [v16 mutableCopy];

          mutableString = [v206 mutableString];
          v213 = 0u;
          v214 = 0u;
          v211 = 0u;
          v212 = 0u;
          formatTokens = [v175 formatTokens];
          v186 = [formatTokens countByEnumeratingWithState:&v211 objects:v232 count:16];
          if (v186)
          {
            v185 = *v212;
            do
            {
              v194 = 0;
              do
              {
                if (*v212 != v185)
                {
                  objc_enumerationMutation(formatTokens);
                }

                v202 = *(*(&v211 + 1) + 8 * v194);
                context = objc_autoreleasePoolPush();
                strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
                token = [v202 token];
                v18 = [mutableString rangeOfString:?];
                v210 = v17;
                if (v18 != 0x7FFFFFFFFFFFFFFFLL && v17 != 0)
                {
                  while (1)
                  {
                    v208 = [v206 attributesAtIndex:v18 effectiveRange:0];
                    v20 = [strongToStrongObjectsMapTable objectForKey:?];
                    if (!v20)
                    {
                      break;
                    }

LABEL_108:
                    if ([v20 length])
                    {
                      [v206 replaceCharactersInRange:v18 withAttributedString:{v210, v20}];
                    }

                    else
                    {
                      [v206 deleteCharactersInRange:{v18, v210}];
                    }

                    v99 = [v20 length] + v18;
                    if ([mutableString length] <= v99 || (v100 = objc_msgSend(mutableString, "length"), v100 == v99))
                    {
                      v210 = 0;
                      v18 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v101 = [mutableString rangeOfString:token options:0 range:{v99, v100 - v99}];
                      v210 = v102;
                      v18 = v101;
                    }

                    if (v18 == 0x7FFFFFFFFFFFFFFFLL || !v210)
                    {
                      goto LABEL_30;
                    }
                  }

                  parameters = [(MKServerFormattedString *)selfCopy parameters];
                  v22 = v202;
                  v203 = parameters;
                  v209 = v208;
                  v207 = v22;
                  if ([v22 type] == 11)
                  {
                    v23 = [v209 objectForKeyedSubscript:@"MKServerFormattedStringArtworkSizeAttribute"];
                    urlValue = v23;
                    if (v23)
                    {
                      unsignedIntegerValue = [v23 unsignedIntegerValue];
                    }

                    else
                    {
                      unsignedIntegerValue = 4;
                    }

                    v36 = [v209 objectForKeyedSubscript:@"MKServerFormattedStringArtworkFeatureTypeAttributeKey"];
                    v28 = v36;
                    if (v36)
                    {
                      unsignedIntegerValue2 = [v36 unsignedIntegerValue];
                    }

                    else
                    {
                      unsignedIntegerValue2 = 2;
                    }

                    artworkValue = [v207 artworkValue];
                    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
                    [mainScreen scale];
                    v41 = v40;

                    v42 = [v209 objectForKeyedSubscript:@"MKServerFormattedStringArtworkDebugDescriptionOnlyAttributeKey"];
                    bOOLValue = [v42 BOOLValue];

                    if (bOOLValue)
                    {
                      shieldDataSource = [artworkValue shieldDataSource];
                      ShouldBeFlipped = ImageForShieldDataSourceTypeShouldBeFlipped([shieldDataSource shieldType]);

                      v46 = MKTransitArtworkDataSourceAllowMasking(artworkValue);
                      v47 = MKKeyForTransitArtwork(artworkValue, unsignedIntegerValue, unsignedIntegerValue2, ShouldBeFlipped, 0, 1.0, v41);
                      v48 = MEMORY[0x1E696AEC0];
                      token2 = [v207 token];
                      stringValue = [v207 stringValue];
                      v51 = stringValue;
                      v52 = &stru_1F15B23C0;
                      if (stringValue)
                      {
                        v53 = stringValue;
                      }

                      else
                      {
                        v53 = &stru_1F15B23C0;
                      }

                      if (v46)
                      {
                        v52 = @"can mask";
                      }

                      v54 = [v48 stringWithFormat:@"{Artwork %@ '%@' %@ (%@)}", token2, v53, v47, v52];

                      v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v54 attributes:v209];
                      goto LABEL_89;
                    }

                    v55 = +[MKTransitArtworkManager sharedInstance];
                    v56 = [v55 transitArtworkImageWithDataSource:artworkValue size:unsignedIntegerValue featureType:unsignedIntegerValue2 scale:0 nightMode:v41];

                    v57 = [v209 objectForKeyedSubscript:@"MKServerFormattedStringArtworkAlphaAttribute"];
                    [v57 doubleValue];
                    v59 = v58;

                    if (v59 > 0.0 && v59 < 1.0)
                    {
                      v60 = [v56 _mapkit_imageWithAlpha:v59];

                      v56 = v60;
                    }

                    if (v56)
                    {
                      if (MKTransitArtworkDataSourceAllowMasking(artworkValue))
                      {
                        v61 = [v209 objectForKeyedSubscript:v181];
                        if (v61)
                        {
                          [v56 imageWithTintColor:v61 renderingMode:2];
                        }

                        else
                        {
                          [v56 imageWithRenderingMode:2];
                        }
                        v54 = ;
                      }

                      else
                      {
                        v54 = v56;
                      }

                      v198 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
                      [v198 setImage:v54];
                      accessibilityLabel = [v207 accessibilityLabel];
                      [v198 setAccessibilityLabel:accessibilityLabel];

                      v63 = [v209 objectForKeyedSubscript:v201];
                      [v54 size];
                      v65 = v64;
                      v67 = v66;
                      v68 = [v209 objectForKey:@"MKServerFormattedStringArtworkScaleAttributeKey"];
                      v195 = v68;
                      if (v68)
                      {
                        [v68 _mapkit_cgFloatValue];
                        v70 = v69;
                        [v195 _mapkit_cgFloatValue];
                        v71 = v65 * v70;
                        v73 = v67 * v72;
                        if (v63)
                        {
                          goto LABEL_73;
                        }

LABEL_80:
                        v77 = v73;
                      }

                      else
                      {
                        v73 = v67;
                        v71 = v65;
                        if (!v63)
                        {
                          goto LABEL_80;
                        }

LABEL_73:
                        [v63 ascender];
                        v75 = v74;
                        [v63 _mapkit_lineHeight];
                        v77 = v76;
                        v78 = [v209 objectForKeyedSubscript:@"MKServerFormattedStringArtworkMatchLineHeightAttributeKey"];
                        bOOLValue2 = [v78 BOOLValue];

                        v80 = [v209 objectForKeyedSubscript:@"MKServerFormattedStringArtworkLimitToLineHeightAttributeKey"];
                        bOOLValue3 = [v80 BOOLValue];

                        v82 = [v209 objectForKeyedSubscript:@"MKServerFormattedStringArtworkLimitToFontAscenderAttributeKey"];
                        bOOLValue4 = [v82 BOOLValue];

                        v84 = v65 / v67;
                        if (bOOLValue2 || (v73 > v77 ? (v85 = bOOLValue3) : (v85 = 0), v85 == 1))
                        {
                          v71 = v84 * v77;
                        }

                        else
                        {
                          v86 = v73 > v75;
                          v87 = v84 * v75;
                          if ((bOOLValue4 & v86) != 0)
                          {
                            v77 = v75;
                          }

                          else
                          {
                            v77 = v73;
                          }

                          if ((bOOLValue4 & v86) != 0)
                          {
                            v71 = v87;
                          }
                        }
                      }

                      [v63 capHeight];
                      v89 = (v88 - v77) * 0.5;
                      v90 = 0.0;
                      if (v63)
                      {
                        v90 = v89;
                      }

                      [v198 setBounds:{0.0, v90, v71, v77}];
                      v30 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v198];
                    }

                    else
                    {
                      v54 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v202;
                        _os_log_impl(&dword_1A2EA0000, v54, OS_LOG_TYPE_ERROR, "Could not find requested shield: %@", buf, 0xCu);
                      }

                      v30 = 0;
                    }

LABEL_89:

LABEL_90:
LABEL_91:

                    if (!v30)
                    {
                      goto LABEL_92;
                    }

LABEL_99:
                    type = [v207 type];
                    if (type == 9 || type == 3)
                    {
                      v95 = [v209 objectForKeyedSubscript:v201];
                      if (v95)
                      {
                        v96 = [v30 mutableCopy];
                        _mapkit_fontByAddingFeaturesForTimeDisplay = [v95 _mapkit_fontByAddingFeaturesForTimeDisplay];
                        [v96 addAttribute:v201 value:_mapkit_fontByAddingFeaturesForTimeDisplay range:{0, objc_msgSend(v96, "length")}];

                        v98 = [v96 copy];
                        v30 = v98;
                      }
                    }

                    if (v30)
                    {
                      v20 = v30;
                    }

                    else
                    {
                      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F15B23C0];
                    }

                    [strongToStrongObjectsMapTable setObject:v20 forKey:v209];
                    goto LABEL_108;
                  }

                  if ([v22 type] == 14)
                  {
                    urlValue = [v22 urlValue];
                    v26 = objc_alloc(MEMORY[0x1E696AD40]);
                    displayTitle = [urlValue displayTitle];
                    v28 = [v26 initWithString:displayTitle];

                    v29 = [urlValue url];
                    [v28 addAttribute:v192 value:v29 range:{0, objc_msgSend(v28, "length")}];

                    v30 = [v28 copy];
                    goto LABEL_91;
                  }

                  if ([v22 type] != 15)
                  {
LABEL_92:
                    v91 = MEMORY[0x1E696AEC0];
                    if (v203)
                    {
                      [v203 options];
                    }

                    else
                    {
                      memset(buf, 0, 32);
                    }

                    variableOverrides = [v203 variableOverrides];
                    v93 = [v91 _navigation_replacementForFormatToken:v207 options:buf overrideVariables:variableOverrides];

                    if (v93)
                    {
                      v30 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v93 attributes:v209];
                    }

                    else
                    {
                      v30 = 0;
                    }

                    goto LABEL_99;
                  }

                  maneuverValue = [v22 maneuverValue];
                  maneuverType = [maneuverValue maneuverType];

                  if (maneuverType <= 0x27 && ((1 << maneuverType) & 0x8600050000) != 0)
                  {
                    urlValue = [v209 objectForKey:@"MKServerFormattedStringArtworkArrivalIconImageKey"];
                    if (!urlValue)
                    {
                      v33 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v202;
                        _os_log_impl(&dword_1A2EA0000, v33, OS_LOG_TYPE_ERROR, "No arrival icon image for token: %@", buf, 0xCu);
                      }

                      goto LABEL_45;
                    }
                  }

                  else
                  {
LABEL_45:
                    v34 = [v209 objectForKey:@"MKServerFormattedStringArtworkArrowFillColorAttributeKey"];
                    v35 = v34;
                    if (v34)
                    {
                      labelColor = v34;
                    }

                    else
                    {
                      labelColor = [MEMORY[0x1E69DC888] labelColor];
                    }

                    v103 = [v209 objectForKey:@"MKServerFormattedStringArtworkJunctionFillColorAttributeKey"];
                    v104 = v103;
                    if (v103)
                    {
                      secondaryLabelColor = v103;
                    }

                    else
                    {
                      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
                    }

                    v105 = [v209 objectForKey:@"MKServerFormattedStringArtworkSideLengthAttributeKey"];
                    v191 = v105;
                    if (!v105)
                    {
                      v106 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v202;
                        _os_log_impl(&dword_1A2EA0000, v106, OS_LOG_TYPE_ERROR, "No side length attribute for token: %@", buf, 0xCu);
                      }

                      v105 = 0;
                    }

                    [v105 _mapkit_cgFloatValue];
                    v108 = v107;
                    maneuverValue2 = [v207 maneuverValue];
                    junctionInfo = [maneuverValue2 junctionInfo];
                    junctionType = [junctionInfo junctionType];
                    maneuverValue3 = [v207 maneuverValue];
                    maneuverType2 = [maneuverValue3 maneuverType];
                    maneuverValue4 = [v207 maneuverValue];
                    junctionInfo2 = [maneuverValue4 junctionInfo];
                    drivingSide = [junctionInfo2 drivingSide];
                    maneuverValue5 = [v207 maneuverValue];
                    junctionInfo3 = [maneuverValue5 junctionInfo];
                    junctionElements = [junctionInfo3 junctionElements];
                    maneuverValue6 = [v207 maneuverValue];
                    junctionInfo4 = [maneuverValue6 junctionInfo];
                    junctionElementsCount = [junctionInfo4 junctionElementsCount];
                    memset(v239, 0, sizeof(v239));
                    v238 = 0u;
                    v237 = 0u;
                    v236 = 0u;
                    v235 = 0u;
                    memset(buf, 0, sizeof(buf));
                    BOOL = GEOConfigGetBOOL();
                    buf[0] = 0;
                    *&buf[8] = MKDefaultGuidanceManeuverMetrics_referenceSize;
                    if (BOOL)
                    {
                      *&buf[24] = v180;
                      *&buf[40] = xmmword_1A30F6FE0;
                      *&buf[56] = xmmword_1A30F6FF0;
                      *&buf[72] = xmmword_1A30F7000;
                      *&buf[88] = xmmword_1A30F7010;
                      *&buf[104] = 0x4026000000000000;
                      *&buf[112] = 3;
                      *&buf[120] = xmmword_1A30F7020;
                      *&buf[152] = xmmword_1A30F7030;
                      *&buf[168] = xmmword_1A30F7040;
                      *&buf[184] = xmmword_1A30F7050;
                      *&buf[200] = xmmword_1A30F7060;
                      *&buf[216] = xmmword_1A30F7070;
                      v118 = xmmword_1A30F7080;
                      *&buf[248] = xmmword_1A30F7080;
                      *&buf[264] = 0x403E8BA2F8000000;
                      v119 = 0x1000000000001;
                      v120 = xmmword_1A30F7090;
                    }

                    else
                    {
                      __asm { FMOV            V0.2D, #8.0 }

                      *&buf[24] = _Q0;
                      *&buf[40] = xmmword_1A30F6F10;
                      *&buf[56] = xmmword_1A30F6F20;
                      *&buf[72] = xmmword_1A30F6F30;
                      memset(&buf[88], 0, 24);
                      *&buf[120] = xmmword_1A30F6F40;
                      *&buf[136] = xmmword_1A30F6F50;
                      *&buf[152] = xmmword_1A30F6F60;
                      *&buf[112] = 3;
                      *&buf[168] = 0x402E000000000000;
                      *&buf[176] = 0uLL;
                      *&buf[192] = xmmword_1A30F6F70;
                      *&buf[208] = xmmword_1A30F6F80;
                      *&buf[224] = xmmword_1A30F6F90;
                      *&buf[240] = xmmword_1A30F6FA0;
                      *&buf[256] = xmmword_1A30F6FB0;
                      v119 = 1;
                      v120 = xmmword_1A30F6FC0;
                      v118 = xmmword_1A30F6FD0;
                    }

                    memset(&v239[3] + 8, 0, 104);
                    memset(v239 + 8, 0, 40);
                    v235 = xmmword_1A30F70A0;
                    *&v236 = 0x4024000000000000;
                    BYTE8(v236) = 0;
                    v237 = v118;
                    v238 = v120;
                    LODWORD(v239[0]) = vuzp1_s8(v119, v119).u32[0];
                    *&buf[24] = 0x401C000000000000;
                    *&buf[136] = xmmword_1A30F70B0;
                    *&buf[240] = 0x4037000000000000;
                    *&buf[224] = xmmword_1A30F70C0;
                    *&buf[152] = 0;
                    *&buf[200] = 0x403E8BA2F8000000;
                    *&buf[216] = 0x4030000000000000;
                    *&v239[3] = 0x4020000000000000;
                    *&buf[80] = xmmword_1A30F70D0;
                    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
                    [mainScreen2 scale];
                    v124 = v123;

                    urlValue = MKJunctionArrowImage(junctionType, maneuverType2, drivingSide, junctionElements, junctionElementsCount, buf, labelColor, secondaryLabelColor, v108, v108, v124, 0);

                    if (!urlValue)
                    {
                      v125 = GEOFindOrCreateLog();
                      if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
                      {
                        maneuverValue7 = [v207 maneuverValue];
                        maneuverType3 = [maneuverValue7 maneuverType];
                        v127 = @"NO_TURN";
                        switch(maneuverType3)
                        {
                          case 0:
                            break;
                          case 1:
                            v127 = @"LEFT_TURN";
                            break;
                          case 2:
                            v127 = @"RIGHT_TURN";
                            break;
                          case 3:
                            v127 = @"STRAIGHT_AHEAD";
                            break;
                          case 4:
                            v127 = @"U_TURN";
                            break;
                          case 5:
                            v127 = @"FOLLOW_ROAD";
                            break;
                          case 6:
                            v127 = @"ENTER_ROUNDABOUT";
                            break;
                          case 7:
                            v127 = @"EXIT_ROUNDABOUT";
                            break;
                          case 11:
                            v127 = @"OFF_RAMP";
                            break;
                          case 12:
                            v127 = @"ON_RAMP";
                            break;
                          case 16:
                            v127 = @"ARRIVE_END_OF_NAVIGATION";
                            break;
                          case 17:
                            v127 = @"START_ROUTE";
                            break;
                          case 18:
                            v127 = @"ARRIVE_AT_DESTINATION";
                            break;
                          case 20:
                            v127 = @"KEEP_LEFT";
                            break;
                          case 21:
                            v127 = @"KEEP_RIGHT";
                            break;
                          case 22:
                            v127 = @"ENTER_FERRY";
                            break;
                          case 23:
                            v127 = @"EXIT_FERRY";
                            break;
                          case 24:
                            v127 = @"CHANGE_FERRY";
                            break;
                          case 25:
                            v127 = @"START_ROUTE_WITH_U_TURN";
                            break;
                          case 26:
                            v127 = @"U_TURN_AT_ROUNDABOUT";
                            break;
                          case 27:
                            v127 = @"LEFT_TURN_AT_END";
                            break;
                          case 28:
                            v127 = @"RIGHT_TURN_AT_END";
                            break;
                          case 29:
                            v127 = @"HIGHWAY_OFF_RAMP_LEFT";
                            break;
                          case 30:
                            v127 = @"HIGHWAY_OFF_RAMP_RIGHT";
                            break;
                          case 33:
                            v127 = @"ARRIVE_AT_DESTINATION_LEFT";
                            break;
                          case 34:
                            v127 = @"ARRIVE_AT_DESTINATION_RIGHT";
                            break;
                          case 35:
                            v127 = @"U_TURN_WHEN_POSSIBLE";
                            break;
                          case 39:
                            v127 = @"ARRIVE_END_OF_DIRECTIONS";
                            break;
                          case 41:
                            v127 = @"ROUNDABOUT_EXIT_1";
                            break;
                          case 42:
                            v127 = @"ROUNDABOUT_EXIT_2";
                            break;
                          case 43:
                            v127 = @"ROUNDABOUT_EXIT_3";
                            break;
                          case 44:
                            v127 = @"ROUNDABOUT_EXIT_4";
                            break;
                          case 45:
                            v127 = @"ROUNDABOUT_EXIT_5";
                            break;
                          case 46:
                            v127 = @"ROUNDABOUT_EXIT_6";
                            break;
                          case 47:
                            v127 = @"ROUNDABOUT_EXIT_7";
                            break;
                          case 48:
                            v127 = @"ROUNDABOUT_EXIT_8";
                            break;
                          case 49:
                            v127 = @"ROUNDABOUT_EXIT_9";
                            break;
                          case 50:
                            v127 = @"ROUNDABOUT_EXIT_10";
                            break;
                          case 51:
                            v127 = @"ROUNDABOUT_EXIT_11";
                            break;
                          case 52:
                            v127 = @"ROUNDABOUT_EXIT_12";
                            break;
                          case 53:
                            v127 = @"ROUNDABOUT_EXIT_13";
                            break;
                          case 54:
                            v127 = @"ROUNDABOUT_EXIT_14";
                            break;
                          case 55:
                            v127 = @"ROUNDABOUT_EXIT_15";
                            break;
                          case 56:
                            v127 = @"ROUNDABOUT_EXIT_16";
                            break;
                          case 57:
                            v127 = @"ROUNDABOUT_EXIT_17";
                            break;
                          case 58:
                            v127 = @"ROUNDABOUT_EXIT_18";
                            break;
                          case 59:
                            v127 = @"ROUNDABOUT_EXIT_19";
                            break;
                          case 60:
                            v127 = @"SHARP_LEFT_TURN";
                            break;
                          case 61:
                            v127 = @"SHARP_RIGHT_TURN";
                            break;
                          case 62:
                            v127 = @"SLIGHT_LEFT_TURN";
                            break;
                          case 63:
                            v127 = @"SLIGHT_RIGHT_TURN";
                            break;
                          case 64:
                            v127 = @"CHANGE_HIGHWAY";
                            break;
                          case 65:
                            v127 = @"CHANGE_HIGHWAY_LEFT";
                            break;
                          case 66:
                            v127 = @"CHANGE_HIGHWAY_RIGHT";
                            break;
                          case 80:
                            v127 = @"TOLL_STATION";
                            break;
                          case 81:
                            v127 = @"ENTER_TUNNEL";
                            break;
                          case 82:
                            v127 = @"WAYPOINT_STOP";
                            break;
                          case 83:
                            v127 = @"WAYPOINT_STOP_LEFT";
                            break;
                          case 84:
                            v127 = @"WAYPOINT_STOP_RIGHT";
                            break;
                          case 85:
                            v127 = @"RESUME_ROUTE";
                            break;
                          case 86:
                            v127 = @"RESUME_ROUTE_WITH_U_TURN";
                            break;
                          case 87:
                            v127 = @"CUSTOM";
                            break;
                          case 88:
                            v127 = @"TURN_AROUND";
                            break;
                          default:
                            v127 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", maneuverType3];
                            break;
                        }

                        *buf = 138412290;
                        *&buf[4] = v127;
                        _os_log_impl(&dword_1A2EA0000, v125, OS_LOG_TYPE_INFO, "Junction for maneuver type %@ could not be drawn; trying regular maneuver arrow", buf, 0xCu);
                      }

                      maneuverValue8 = [v207 maneuverValue];
                      maneuverType4 = [maneuverValue8 maneuverType];
                      maneuverValue9 = [v207 maneuverValue];
                      junctionInfo5 = [maneuverValue9 junctionInfo];
                      drivingSide2 = [junctionInfo5 drivingSide];
                      v134 = GEOConfigGetBOOL();
                      buf[0] = 0;
                      *&buf[8] = MKDefaultGuidanceManeuverMetrics_referenceSize;
                      if (v134)
                      {
                        *&buf[24] = v180;
                        *&buf[40] = xmmword_1A30F6FE0;
                        *&buf[56] = xmmword_1A30F6FF0;
                        *&buf[72] = xmmword_1A30F7000;
                        *&buf[88] = xmmword_1A30F7010;
                        *&buf[104] = 0x4026000000000000;
                        *&buf[112] = 3;
                        *&buf[120] = xmmword_1A30F7020;
                        *&buf[136] = xmmword_1A30F70E0;
                        *&buf[152] = xmmword_1A30F7030;
                        *&buf[168] = xmmword_1A30F7040;
                        *&buf[184] = xmmword_1A30F7050;
                        *&buf[200] = xmmword_1A30F7060;
                        *&buf[216] = xmmword_1A30F7070;
                        *&buf[232] = xmmword_1A30F70F0;
                        v135 = xmmword_1A30F7080;
                        *&buf[248] = xmmword_1A30F7080;
                        *&buf[264] = 0x403E8BA2F8000000;
                        v136 = 0x1000000000001;
                        v137 = xmmword_1A30F7090;
                      }

                      else
                      {
                        __asm { FMOV            V0.2D, #8.0 }

                        *&buf[24] = _Q0;
                        *&buf[40] = xmmword_1A30F6F10;
                        *&buf[56] = xmmword_1A30F6F20;
                        *&buf[72] = xmmword_1A30F6F30;
                        memset(&buf[88], 0, 24);
                        *&buf[120] = xmmword_1A30F6F40;
                        *&buf[136] = xmmword_1A30F6F50;
                        *&buf[152] = xmmword_1A30F6F60;
                        *&buf[112] = 3;
                        *&buf[168] = 0x402E000000000000;
                        *&buf[176] = 0uLL;
                        *&buf[192] = xmmword_1A30F6F70;
                        *&buf[208] = xmmword_1A30F6F80;
                        *&buf[224] = xmmword_1A30F6F90;
                        *&buf[240] = xmmword_1A30F6FA0;
                        *&buf[256] = xmmword_1A30F6FB0;
                        v136 = 1;
                        v137 = xmmword_1A30F6FC0;
                        v135 = xmmword_1A30F6FD0;
                      }

                      memset(v239 + 8, 0, 152);
                      v235 = xmmword_1A30F70A0;
                      *&v236 = 0x4024000000000000;
                      BYTE8(v236) = 0;
                      v237 = v135;
                      v238 = v137;
                      LODWORD(v239[0]) = vuzp1_s8(v136, v136).u32[0];
                      mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
                      [mainScreen3 scale];
                      v141 = v140;

                      urlValue = MKManeuverArrowImage(maneuverType4, drivingSide2, buf, labelColor, secondaryLabelColor, 0, v108, v108, v141);

                      if (!urlValue)
                      {
                        v142 = GEOFindOrCreateLog();
                        if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
                        {
                          maneuverValue10 = [v207 maneuverValue];
                          maneuverType5 = [maneuverValue10 maneuverType];
                          v144 = @"NO_TURN";
                          switch(maneuverType5)
                          {
                            case 0:
                              break;
                            case 1:
                              v144 = @"LEFT_TURN";
                              break;
                            case 2:
                              v144 = @"RIGHT_TURN";
                              break;
                            case 3:
                              v144 = @"STRAIGHT_AHEAD";
                              break;
                            case 4:
                              v144 = @"U_TURN";
                              break;
                            case 5:
                              v144 = @"FOLLOW_ROAD";
                              break;
                            case 6:
                              v144 = @"ENTER_ROUNDABOUT";
                              break;
                            case 7:
                              v144 = @"EXIT_ROUNDABOUT";
                              break;
                            case 11:
                              v144 = @"OFF_RAMP";
                              break;
                            case 12:
                              v144 = @"ON_RAMP";
                              break;
                            case 16:
                              v144 = @"ARRIVE_END_OF_NAVIGATION";
                              break;
                            case 17:
                              v144 = @"START_ROUTE";
                              break;
                            case 18:
                              v144 = @"ARRIVE_AT_DESTINATION";
                              break;
                            case 20:
                              v144 = @"KEEP_LEFT";
                              break;
                            case 21:
                              v144 = @"KEEP_RIGHT";
                              break;
                            case 22:
                              v144 = @"ENTER_FERRY";
                              break;
                            case 23:
                              v144 = @"EXIT_FERRY";
                              break;
                            case 24:
                              v144 = @"CHANGE_FERRY";
                              break;
                            case 25:
                              v144 = @"START_ROUTE_WITH_U_TURN";
                              break;
                            case 26:
                              v144 = @"U_TURN_AT_ROUNDABOUT";
                              break;
                            case 27:
                              v144 = @"LEFT_TURN_AT_END";
                              break;
                            case 28:
                              v144 = @"RIGHT_TURN_AT_END";
                              break;
                            case 29:
                              v144 = @"HIGHWAY_OFF_RAMP_LEFT";
                              break;
                            case 30:
                              v144 = @"HIGHWAY_OFF_RAMP_RIGHT";
                              break;
                            case 33:
                              v144 = @"ARRIVE_AT_DESTINATION_LEFT";
                              break;
                            case 34:
                              v144 = @"ARRIVE_AT_DESTINATION_RIGHT";
                              break;
                            case 35:
                              v144 = @"U_TURN_WHEN_POSSIBLE";
                              break;
                            case 39:
                              v144 = @"ARRIVE_END_OF_DIRECTIONS";
                              break;
                            case 41:
                              v144 = @"ROUNDABOUT_EXIT_1";
                              break;
                            case 42:
                              v144 = @"ROUNDABOUT_EXIT_2";
                              break;
                            case 43:
                              v144 = @"ROUNDABOUT_EXIT_3";
                              break;
                            case 44:
                              v144 = @"ROUNDABOUT_EXIT_4";
                              break;
                            case 45:
                              v144 = @"ROUNDABOUT_EXIT_5";
                              break;
                            case 46:
                              v144 = @"ROUNDABOUT_EXIT_6";
                              break;
                            case 47:
                              v144 = @"ROUNDABOUT_EXIT_7";
                              break;
                            case 48:
                              v144 = @"ROUNDABOUT_EXIT_8";
                              break;
                            case 49:
                              v144 = @"ROUNDABOUT_EXIT_9";
                              break;
                            case 50:
                              v144 = @"ROUNDABOUT_EXIT_10";
                              break;
                            case 51:
                              v144 = @"ROUNDABOUT_EXIT_11";
                              break;
                            case 52:
                              v144 = @"ROUNDABOUT_EXIT_12";
                              break;
                            case 53:
                              v144 = @"ROUNDABOUT_EXIT_13";
                              break;
                            case 54:
                              v144 = @"ROUNDABOUT_EXIT_14";
                              break;
                            case 55:
                              v144 = @"ROUNDABOUT_EXIT_15";
                              break;
                            case 56:
                              v144 = @"ROUNDABOUT_EXIT_16";
                              break;
                            case 57:
                              v144 = @"ROUNDABOUT_EXIT_17";
                              break;
                            case 58:
                              v144 = @"ROUNDABOUT_EXIT_18";
                              break;
                            case 59:
                              v144 = @"ROUNDABOUT_EXIT_19";
                              break;
                            case 60:
                              v144 = @"SHARP_LEFT_TURN";
                              break;
                            case 61:
                              v144 = @"SHARP_RIGHT_TURN";
                              break;
                            case 62:
                              v144 = @"SLIGHT_LEFT_TURN";
                              break;
                            case 63:
                              v144 = @"SLIGHT_RIGHT_TURN";
                              break;
                            case 64:
                              v144 = @"CHANGE_HIGHWAY";
                              break;
                            case 65:
                              v144 = @"CHANGE_HIGHWAY_LEFT";
                              break;
                            case 66:
                              v144 = @"CHANGE_HIGHWAY_RIGHT";
                              break;
                            case 80:
                              v144 = @"TOLL_STATION";
                              break;
                            case 81:
                              v144 = @"ENTER_TUNNEL";
                              break;
                            case 82:
                              v144 = @"WAYPOINT_STOP";
                              break;
                            case 83:
                              v144 = @"WAYPOINT_STOP_LEFT";
                              break;
                            case 84:
                              v144 = @"WAYPOINT_STOP_RIGHT";
                              break;
                            case 85:
                              v144 = @"RESUME_ROUTE";
                              break;
                            case 86:
                              v144 = @"RESUME_ROUTE_WITH_U_TURN";
                              break;
                            case 87:
                              v144 = @"CUSTOM";
                              break;
                            case 88:
                              v144 = @"TURN_AROUND";
                              break;
                            default:
                              v144 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", maneuverType5];
                              break;
                          }

                          *buf = 138412290;
                          *&buf[4] = v144;
                          _os_log_impl(&dword_1A2EA0000, v142, OS_LOG_TYPE_INFO, "Maneuver type %@ could not be drawn; defaulting to .STRAIGHT_AHEAD", buf, 0xCu);
                        }

                        maneuverValue11 = [v207 maneuverValue];
                        junctionInfo6 = [maneuverValue11 junctionInfo];
                        drivingSide3 = [junctionInfo6 drivingSide];
                        v149 = GEOConfigGetBOOL();
                        buf[0] = 0;
                        *&buf[8] = MKDefaultGuidanceManeuverMetrics_referenceSize;
                        if (v149)
                        {
                          *&buf[24] = v180;
                          *&buf[40] = xmmword_1A30F6FE0;
                          *&buf[56] = xmmword_1A30F6FF0;
                          *&buf[72] = xmmword_1A30F7000;
                          *&buf[88] = xmmword_1A30F7010;
                          *&buf[104] = 0x4026000000000000;
                          *&buf[112] = 3;
                          *&buf[120] = xmmword_1A30F7020;
                          *&buf[136] = xmmword_1A30F70E0;
                          *&buf[152] = xmmword_1A30F7030;
                          *&buf[168] = xmmword_1A30F7040;
                          *&buf[184] = xmmword_1A30F7050;
                          *&buf[200] = xmmword_1A30F7060;
                          *&buf[216] = xmmword_1A30F7070;
                          *&buf[232] = xmmword_1A30F70F0;
                          v150 = xmmword_1A30F7080;
                          *&buf[248] = xmmword_1A30F7080;
                          *&buf[264] = 0x403E8BA2F8000000;
                          v151 = 0x1000000000001;
                          v152 = xmmword_1A30F7090;
                        }

                        else
                        {
                          __asm { FMOV            V0.2D, #8.0 }

                          *&buf[24] = _Q0;
                          *&buf[40] = xmmword_1A30F6F10;
                          *&buf[56] = xmmword_1A30F6F20;
                          *&buf[72] = xmmword_1A30F6F30;
                          memset(&buf[88], 0, 24);
                          *&buf[120] = xmmword_1A30F6F40;
                          *&buf[136] = xmmword_1A30F6F50;
                          *&buf[152] = xmmword_1A30F6F60;
                          *&buf[112] = 3;
                          *&buf[168] = 0x402E000000000000;
                          *&buf[176] = 0uLL;
                          *&buf[192] = xmmword_1A30F6F70;
                          *&buf[208] = xmmword_1A30F6F80;
                          *&buf[224] = xmmword_1A30F6F90;
                          *&buf[240] = xmmword_1A30F6FA0;
                          *&buf[256] = xmmword_1A30F6FB0;
                          v151 = 1;
                          v152 = xmmword_1A30F6FC0;
                          v150 = xmmword_1A30F6FD0;
                        }

                        memset(v239 + 8, 0, 152);
                        v235 = xmmword_1A30F70A0;
                        *&v236 = 0x4024000000000000;
                        BYTE8(v236) = 0;
                        v237 = v150;
                        v238 = v152;
                        LODWORD(v239[0]) = vuzp1_s8(v151, v151).u32[0];
                        mainScreen4 = [MEMORY[0x1E69DCEB0] mainScreen];
                        [mainScreen4 scale];
                        v156 = v155;

                        urlValue = MKManeuverArrowImage(3, drivingSide3, buf, labelColor, secondaryLabelColor, 0, v108, v108, v156);
                      }
                    }
                  }

                  v28 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
                  [v28 setImage:urlValue];
                  artworkValue = [v209 objectForKeyedSubscript:v201];
                  [artworkValue capHeight];
                  v158 = v157;
                  [urlValue size];
                  v160 = v159;
                  [urlValue size];
                  v162 = v161;
                  [urlValue size];
                  [v28 setBounds:{0.0, round(v158 - v160) * 0.5, v162, v163}];
                  v30 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v28];
                  goto LABEL_90;
                }

LABEL_30:

                objc_autoreleasePoolPop(context);
                ++v194;
              }

              while (v194 != v186);
              v164 = [formatTokens countByEnumeratingWithState:&v211 objects:v232 count:16];
              v186 = v164;
            }

            while (v164);
          }

          if ([v206 length])
          {
            [v179 addObject:v206];
          }
        }
      }

      v172 = [obj countByEnumeratingWithState:&v215 objects:v233 count:16];
    }

    while (v172);
  }

  v165 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v221[5], "count")}];
  for (j = 0; j < [v179 count]; ++j)
  {
    if (j < [v179 count] - 1)
    {
      v167 = &stru_1F15B23C0;
      if (j < [v221[5] count])
      {
        v167 = [v221[5] objectAtIndexedSubscript:j];
      }

      v168 = [objc_alloc(MEMORY[0x1E69A2588]) initWithString:v167];
      v169 = [v168 attributedStringWithStyleAttributes:v176 defaultAttributes:v177];
      [v165 addObject:v169];
    }
  }

  v5 = [[MKMultiPartAttributedString alloc] initWithComponents:v179 separators:v165];

  _Block_object_dispose(&v220, 8);
  _Block_object_dispose(&v226, 8);

LABEL_3:

  return v5;
}

void __67__MKServerFormattedString_multiPartAttributedStringWithAttributes___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(*(*(a1 + 32) + 8) + 40) firstObject];
  v4 = [v3 componentsSeparatedByString:v12];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "count") - 1}];
  if ([*(*(*(a1 + 32) + 8) + 40) count] != 1)
  {
    v8 = 0;
    do
    {
      [v7 addObject:v12];
      ++v8;
    }

    while (v8 < [*(*(*(a1 + 32) + 8) + 40) count] - 1);
  }

  v9 = [v7 copy];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (id)_multiPartAttributedStringForComposedStringWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  composedString = self->_composedString;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __85__MKServerFormattedString__multiPartAttributedStringForComposedStringWithAttributes___block_invoke;
  v19 = &unk_1E76C7C28;
  selfCopy = self;
  v6 = attributesCopy;
  v21 = v6;
  v7 = [(GEOComposedString *)composedString optionsWithArgumentHandler:&v16];
  [v7 setCreateAttributedString:{1, v16, v17, v18, v19, selfCopy}];
  [v7 setStringAttributes:v6];
  [v7 setPreserveIndividualComponents:1];
  [v7 setFormatStyleHandler:&__block_literal_global_10059];
  v8 = [(GEOComposedString *)self->_composedString stringResultWithOptions:v7];
  attributedComponentStrings = [v8 attributedComponentStrings];
  v10 = [attributedComponentStrings count];

  if (v10)
  {
    v11 = [MKMultiPartAttributedString alloc];
    attributedComponentStrings2 = [v8 attributedComponentStrings];
    attributedSeparatorStrings = [v8 attributedSeparatorStrings];
    v14 = [(MKMultiPartAttributedString *)v11 initWithComponents:attributedComponentStrings2 separators:attributedSeparatorStrings];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __85__MKServerFormattedString__multiPartAttributedStringForComposedStringWithAttributes___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 type];
  if (v4 <= 11)
  {
    if (v4 == 2 || v4 == 9)
    {
      v10 = *MEMORY[0x1E69DB648];
      v11 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 _mapkit_fontByAddingFeaturesForTimeDisplay];
        v24 = v10;
        v25[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        [v3 setStringAttributes:v14];
      }
    }

    else if (v4 == 11)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __85__MKServerFormattedString__multiPartAttributedStringForComposedStringWithAttributes___block_invoke_2;
      v22[3] = &unk_1E76C7BD8;
      v5 = *(a1 + 40);
      v22[4] = *(a1 + 32);
      v23 = v5;
      v6 = [v3 artworkFormat];
      [v6 setAttributedStringHandler:v22];

      v7 = v23;
LABEL_10:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  switch(v4)
  {
    case 12:
      v15 = +[MKTransitItemReferenceDateUpdater referenceDate];
      v16 = [v3 countdownFormat];
      [v16 setOverrideReferenceDate:v15];

      IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
      v18 = [v3 countdownFormat];
      [v18 setRightToLeft:IsRightToLeft];
LABEL_16:

      break;
    case 14:
      v19 = *MEMORY[0x1E69DB670];
      v18 = [v3 urlFormat];
      [v18 setLinkAttributeName:v19];
      goto LABEL_16;
    case 15:
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __85__MKServerFormattedString__multiPartAttributedStringForComposedStringWithAttributes___block_invoke_3;
      v20[3] = &unk_1E76C7C00;
      v8 = *(a1 + 40);
      v20[4] = *(a1 + 32);
      v21 = v8;
      v9 = [v3 maneuverFormat];
      [v9 setAttributedStringHandler:v20];

      v7 = v21;
      goto LABEL_10;
  }

LABEL_17:
}

id __85__MKServerFormattedString__multiPartAttributedStringForComposedStringWithAttributes___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v7 artworkType] == 3)
  {
    v10 = *(a1 + 32);
    v11 = [v7 sfSymbol];
    v12 = [v10 _attachmentTextForSFSymbol:v11 attributes:v8];
LABEL_8:
    v16 = v12;
    goto LABEL_9;
  }

  v13 = [v7 artworkType];
  v14 = *(a1 + 32);
  if (v13 == 4)
  {
    v15 = [v14 _textAttachmentForAvatarWithAttributes:*(a1 + 40)];
    if (v15)
    {
      v11 = v15;
LABEL_7:
      v12 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v11];
      goto LABEL_8;
    }

    v18 = *(a1 + 32);
    v19 = [v7 appleAccountAvatarFallbackSfSymbol];
    v16 = [v18 _attachmentTextForSFSymbol:v19 attributes:v8];

    v11 = 0;
  }

  else
  {
    v11 = [v14 _textAttachmentForGeoArtwork:v7 attributes:v8 accessibilityText:v9];
    if (v11)
    {
      goto LABEL_7;
    }

    v16 = 0;
  }

LABEL_9:

  return v16;
}

id __85__MKServerFormattedString__multiPartAttributedStringForComposedStringWithAttributes___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [*(a1 + 32) _textAttachmentForManeuver:a2 junctionInfo:a3 defaultAttributes:*(a1 + 40)];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_textAttachmentForAvatarWithAttributes:(id)attributes
{
  v3 = [attributes objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v4 = v3;
  if (v3)
  {
    [v3 pointSize];
    v6 = v5;
    v7 = MEMORY[0x1E695CD58];
    v8 = +[MKSystemController sharedInstance];
    [v8 screenScale];
    v10 = [v7 _mapkit_meAvatarImageWithSize:MKApplicationLayoutDirectionIsRightToLeft() scale:v6 rightToLeft:{v6, v9}];

    v11 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v11 setImage:v10];
    [v4 capHeight];
    v13 = v12;
    [v10 size];
    v15 = (v13 - v14) * 0.5;
    [v10 size];
    v17 = v16;
    [v10 size];
    [v11 setBounds:{0.0, v15, v17, v18}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_textAttachmentForManeuver:(int)maneuver junctionInfo:(id)info defaultAttributes:(id)attributes
{
  v6 = *&maneuver;
  v87 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  attributesCopy = attributes;
  v9 = attributesCopy;
  if (v6 <= 0x27 && ((1 << v6) & 0x8600050000) != 0)
  {
    v10 = [attributesCopy objectForKey:@"MKServerFormattedStringArtworkArrivalIconImageKey"];
    if (v10)
    {
      goto LABEL_230;
    }

    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if ((0x8E7FF7u >> (v6 - 16)))
      {
        v12 = off_1E76C7C90[(v6 - 16)];
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
      }

      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_ERROR, "No arrival icon image for maneuver token: %@", buf, 0xCu);
    }
  }

  v13 = [v9 objectForKey:@"MKServerFormattedStringArtworkArrowFillColorAttributeKey"];
  v14 = v13;
  if (v13)
  {
    labelColor = v13;
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v16 = labelColor;

  v17 = [v9 objectForKey:@"MKServerFormattedStringArtworkJunctionFillColorAttributeKey"];
  v18 = v17;
  if (v17)
  {
    secondaryLabelColor = v17;
  }

  else
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  v80 = secondaryLabelColor;

  v20 = [v9 objectForKey:@"MKServerFormattedStringArtworkSideLengthAttributeKey"];
  if (!v20)
  {
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = @"NO_TURN";
      switch(v6)
      {
        case 0:
          break;
        case 1:
          v22 = @"LEFT_TURN";
          break;
        case 2:
          v22 = @"RIGHT_TURN";
          break;
        case 3:
          v22 = @"STRAIGHT_AHEAD";
          break;
        case 4:
          v22 = @"U_TURN";
          break;
        case 5:
          v22 = @"FOLLOW_ROAD";
          break;
        case 6:
          v22 = @"ENTER_ROUNDABOUT";
          break;
        case 7:
          v22 = @"EXIT_ROUNDABOUT";
          break;
        case 11:
          v22 = @"OFF_RAMP";
          break;
        case 12:
          v22 = @"ON_RAMP";
          break;
        case 16:
          v22 = @"ARRIVE_END_OF_NAVIGATION";
          break;
        case 17:
          v22 = @"START_ROUTE";
          break;
        case 18:
          v22 = @"ARRIVE_AT_DESTINATION";
          break;
        case 20:
          v22 = @"KEEP_LEFT";
          break;
        case 21:
          v22 = @"KEEP_RIGHT";
          break;
        case 22:
          v22 = @"ENTER_FERRY";
          break;
        case 23:
          v22 = @"EXIT_FERRY";
          break;
        case 24:
          v22 = @"CHANGE_FERRY";
          break;
        case 25:
          v22 = @"START_ROUTE_WITH_U_TURN";
          break;
        case 26:
          v22 = @"U_TURN_AT_ROUNDABOUT";
          break;
        case 27:
          v22 = @"LEFT_TURN_AT_END";
          break;
        case 28:
          v22 = @"RIGHT_TURN_AT_END";
          break;
        case 29:
          v22 = @"HIGHWAY_OFF_RAMP_LEFT";
          break;
        case 30:
          v22 = @"HIGHWAY_OFF_RAMP_RIGHT";
          break;
        case 33:
          v22 = @"ARRIVE_AT_DESTINATION_LEFT";
          break;
        case 34:
          v22 = @"ARRIVE_AT_DESTINATION_RIGHT";
          break;
        case 35:
          v22 = @"U_TURN_WHEN_POSSIBLE";
          break;
        case 39:
          v22 = @"ARRIVE_END_OF_DIRECTIONS";
          break;
        case 41:
          v22 = @"ROUNDABOUT_EXIT_1";
          break;
        case 42:
          v22 = @"ROUNDABOUT_EXIT_2";
          break;
        case 43:
          v22 = @"ROUNDABOUT_EXIT_3";
          break;
        case 44:
          v22 = @"ROUNDABOUT_EXIT_4";
          break;
        case 45:
          v22 = @"ROUNDABOUT_EXIT_5";
          break;
        case 46:
          v22 = @"ROUNDABOUT_EXIT_6";
          break;
        case 47:
          v22 = @"ROUNDABOUT_EXIT_7";
          break;
        case 48:
          v22 = @"ROUNDABOUT_EXIT_8";
          break;
        case 49:
          v22 = @"ROUNDABOUT_EXIT_9";
          break;
        case 50:
          v22 = @"ROUNDABOUT_EXIT_10";
          break;
        case 51:
          v22 = @"ROUNDABOUT_EXIT_11";
          break;
        case 52:
          v22 = @"ROUNDABOUT_EXIT_12";
          break;
        case 53:
          v22 = @"ROUNDABOUT_EXIT_13";
          break;
        case 54:
          v22 = @"ROUNDABOUT_EXIT_14";
          break;
        case 55:
          v22 = @"ROUNDABOUT_EXIT_15";
          break;
        case 56:
          v22 = @"ROUNDABOUT_EXIT_16";
          break;
        case 57:
          v22 = @"ROUNDABOUT_EXIT_17";
          break;
        case 58:
          v22 = @"ROUNDABOUT_EXIT_18";
          break;
        case 59:
          v22 = @"ROUNDABOUT_EXIT_19";
          break;
        case 60:
          v22 = @"SHARP_LEFT_TURN";
          break;
        case 61:
          v22 = @"SHARP_RIGHT_TURN";
          break;
        case 62:
          v22 = @"SLIGHT_LEFT_TURN";
          break;
        case 63:
          v22 = @"SLIGHT_RIGHT_TURN";
          break;
        case 64:
          v22 = @"CHANGE_HIGHWAY";
          break;
        case 65:
          v22 = @"CHANGE_HIGHWAY_LEFT";
          break;
        case 66:
          v22 = @"CHANGE_HIGHWAY_RIGHT";
          break;
        case 80:
          v22 = @"TOLL_STATION";
          break;
        case 81:
          v22 = @"ENTER_TUNNEL";
          break;
        case 82:
          v22 = @"WAYPOINT_STOP";
          break;
        case 83:
          v22 = @"WAYPOINT_STOP_LEFT";
          break;
        case 84:
          v22 = @"WAYPOINT_STOP_RIGHT";
          break;
        case 85:
          v22 = @"RESUME_ROUTE";
          break;
        case 86:
          v22 = @"RESUME_ROUTE_WITH_U_TURN";
          break;
        case 87:
          v22 = @"CUSTOM";
          break;
        case 88:
          v22 = @"TURN_AROUND";
          break;
        default:
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
          break;
      }

      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&dword_1A2EA0000, v21, OS_LOG_TYPE_ERROR, "No side length attribute for maneuver token: %@", buf, 0xCu);
    }
  }

  v79 = v20;
  [v20 _mapkit_cgFloatValue];
  v24 = v23;
  junctionType = [infoCopy junctionType];
  drivingSide = [infoCopy drivingSide];
  junctionElements = [infoCopy junctionElements];
  junctionElementsCount = [infoCopy junctionElementsCount];
  memset(v86, 0, sizeof(v86));
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  memset(buf, 0, sizeof(buf));
  BOOL = GEOConfigGetBOOL();
  buf[0] = 0;
  *&buf[8] = MKDefaultGuidanceManeuverMetrics_referenceSize;
  if (BOOL)
  {
    __asm { FMOV            V0.2D, #7.0 }

    *&buf[24] = _Q0;
    *&buf[40] = xmmword_1A30F6FE0;
    *&buf[56] = xmmword_1A30F6FF0;
    *&buf[72] = xmmword_1A30F7000;
    *&buf[88] = xmmword_1A30F7010;
    *&buf[104] = 0x4026000000000000;
    *&buf[112] = 3;
    *&buf[120] = xmmword_1A30F7020;
    *&buf[152] = xmmword_1A30F7030;
    *&buf[168] = xmmword_1A30F7040;
    *&buf[184] = xmmword_1A30F7050;
    *&buf[200] = xmmword_1A30F7060;
    *&buf[216] = xmmword_1A30F7070;
    v35 = xmmword_1A30F7080;
    *&buf[248] = xmmword_1A30F7080;
    *&buf[264] = 0x403E8BA2F8000000;
    v36 = 0x1000000000001;
    v37 = xmmword_1A30F7090;
  }

  else
  {
    __asm { FMOV            V0.2D, #8.0 }

    *&buf[24] = _Q0;
    *&buf[40] = xmmword_1A30F6F10;
    *&buf[56] = xmmword_1A30F6F20;
    *&buf[72] = xmmword_1A30F6F30;
    memset(&buf[88], 0, 24);
    *&buf[112] = 3;
    *&buf[120] = xmmword_1A30F6F40;
    *&buf[136] = xmmword_1A30F6F50;
    *&buf[152] = xmmword_1A30F6F60;
    *&buf[176] = 0uLL;
    *&buf[168] = 0x402E000000000000;
    *&buf[192] = xmmword_1A30F6F70;
    *&buf[208] = xmmword_1A30F6F80;
    *&buf[224] = xmmword_1A30F6F90;
    *&buf[240] = xmmword_1A30F6FA0;
    *&buf[256] = xmmword_1A30F6FB0;
    v36 = 1;
    v37 = xmmword_1A30F6FC0;
    v35 = xmmword_1A30F6FD0;
  }

  v82 = xmmword_1A30F70A0;
  *&v83 = 0x4024000000000000;
  memset(v86 + 8, 0, 40);
  memset(&v86[3] + 8, 0, 104);
  BYTE8(v83) = 0;
  v84 = v35;
  v85 = v37;
  LODWORD(v86[0]) = vuzp1_s8(v36, v36).u32[0];
  *&buf[24] = 0x401C000000000000;
  *&buf[136] = xmmword_1A30F70B0;
  *&buf[240] = 0x4037000000000000;
  *&buf[224] = xmmword_1A30F70C0;
  *&buf[152] = 0;
  *&buf[200] = 0x403E8BA2F8000000;
  *&buf[216] = 0x4030000000000000;
  *&v86[3] = 0x4020000000000000;
  *&buf[80] = xmmword_1A30F70D0;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v41 = v40;

  v42 = junctionElements;
  v43 = v16;
  v44 = v80;
  v45 = MKJunctionArrowImage(junctionType, v6, drivingSide, v42, junctionElementsCount, buf, v16, v80, v24, v24, v41, 0);
  if (!v45)
  {
    v44 = 0x1E69DC000;
    v46 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = @"NO_TURN";
      switch(v6)
      {
        case 0:
          break;
        case 1:
          v47 = @"LEFT_TURN";
          break;
        case 2:
          v47 = @"RIGHT_TURN";
          break;
        case 3:
          v47 = @"STRAIGHT_AHEAD";
          break;
        case 4:
          v47 = @"U_TURN";
          break;
        case 5:
          v47 = @"FOLLOW_ROAD";
          break;
        case 6:
          v47 = @"ENTER_ROUNDABOUT";
          break;
        case 7:
          v47 = @"EXIT_ROUNDABOUT";
          break;
        case 11:
          v47 = @"OFF_RAMP";
          break;
        case 12:
          v47 = @"ON_RAMP";
          break;
        case 16:
          v47 = @"ARRIVE_END_OF_NAVIGATION";
          break;
        case 17:
          v47 = @"START_ROUTE";
          break;
        case 18:
          v47 = @"ARRIVE_AT_DESTINATION";
          break;
        case 20:
          v47 = @"KEEP_LEFT";
          break;
        case 21:
          v47 = @"KEEP_RIGHT";
          break;
        case 22:
          v47 = @"ENTER_FERRY";
          break;
        case 23:
          v47 = @"EXIT_FERRY";
          break;
        case 24:
          v47 = @"CHANGE_FERRY";
          break;
        case 25:
          v47 = @"START_ROUTE_WITH_U_TURN";
          break;
        case 26:
          v47 = @"U_TURN_AT_ROUNDABOUT";
          break;
        case 27:
          v47 = @"LEFT_TURN_AT_END";
          break;
        case 28:
          v47 = @"RIGHT_TURN_AT_END";
          break;
        case 29:
          v47 = @"HIGHWAY_OFF_RAMP_LEFT";
          break;
        case 30:
          v47 = @"HIGHWAY_OFF_RAMP_RIGHT";
          break;
        case 33:
          v47 = @"ARRIVE_AT_DESTINATION_LEFT";
          break;
        case 34:
          v47 = @"ARRIVE_AT_DESTINATION_RIGHT";
          break;
        case 35:
          v47 = @"U_TURN_WHEN_POSSIBLE";
          break;
        case 39:
          v47 = @"ARRIVE_END_OF_DIRECTIONS";
          break;
        case 41:
          v47 = @"ROUNDABOUT_EXIT_1";
          break;
        case 42:
          v47 = @"ROUNDABOUT_EXIT_2";
          break;
        case 43:
          v47 = @"ROUNDABOUT_EXIT_3";
          break;
        case 44:
          v47 = @"ROUNDABOUT_EXIT_4";
          break;
        case 45:
          v47 = @"ROUNDABOUT_EXIT_5";
          break;
        case 46:
          v47 = @"ROUNDABOUT_EXIT_6";
          break;
        case 47:
          v47 = @"ROUNDABOUT_EXIT_7";
          break;
        case 48:
          v47 = @"ROUNDABOUT_EXIT_8";
          break;
        case 49:
          v47 = @"ROUNDABOUT_EXIT_9";
          break;
        case 50:
          v47 = @"ROUNDABOUT_EXIT_10";
          break;
        case 51:
          v47 = @"ROUNDABOUT_EXIT_11";
          break;
        case 52:
          v47 = @"ROUNDABOUT_EXIT_12";
          break;
        case 53:
          v47 = @"ROUNDABOUT_EXIT_13";
          break;
        case 54:
          v47 = @"ROUNDABOUT_EXIT_14";
          break;
        case 55:
          v47 = @"ROUNDABOUT_EXIT_15";
          break;
        case 56:
          v47 = @"ROUNDABOUT_EXIT_16";
          break;
        case 57:
          v47 = @"ROUNDABOUT_EXIT_17";
          break;
        case 58:
          v47 = @"ROUNDABOUT_EXIT_18";
          break;
        case 59:
          v47 = @"ROUNDABOUT_EXIT_19";
          break;
        case 60:
          v47 = @"SHARP_LEFT_TURN";
          break;
        case 61:
          v47 = @"SHARP_RIGHT_TURN";
          break;
        case 62:
          v47 = @"SLIGHT_LEFT_TURN";
          break;
        case 63:
          v47 = @"SLIGHT_RIGHT_TURN";
          break;
        case 64:
          v47 = @"CHANGE_HIGHWAY";
          break;
        case 65:
          v47 = @"CHANGE_HIGHWAY_LEFT";
          break;
        case 66:
          v47 = @"CHANGE_HIGHWAY_RIGHT";
          break;
        case 80:
          v47 = @"TOLL_STATION";
          break;
        case 81:
          v47 = @"ENTER_TUNNEL";
          break;
        case 82:
          v47 = @"WAYPOINT_STOP";
          break;
        case 83:
          v47 = @"WAYPOINT_STOP_LEFT";
          break;
        case 84:
          v47 = @"WAYPOINT_STOP_RIGHT";
          break;
        case 85:
          v47 = @"RESUME_ROUTE";
          break;
        case 86:
          v47 = @"RESUME_ROUTE_WITH_U_TURN";
          break;
        case 87:
          v47 = @"CUSTOM";
          break;
        case 88:
          v47 = @"TURN_AROUND";
          break;
        default:
LABEL_117:
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
          break;
      }

      *buf = 138412290;
      *&buf[4] = v47;
      _os_log_impl(&dword_1A2EA0000, v46, OS_LOG_TYPE_INFO, "Junction for maneuver type %@ could not be drawn; trying regular maneuver arrow", buf, 0xCu);

      v43 = v16;
    }

    drivingSide2 = [infoCopy drivingSide];
    v49 = GEOConfigGetBOOL();
    buf[0] = 0;
    *&buf[8] = MKDefaultGuidanceManeuverMetrics_referenceSize;
    if (v49)
    {
      __asm { FMOV            V0.2D, #7.0 }

      *&buf[24] = _Q0;
      *&buf[40] = xmmword_1A30F6FE0;
      *&buf[56] = xmmword_1A30F6FF0;
      *&buf[72] = xmmword_1A30F7000;
      *&buf[88] = xmmword_1A30F7010;
      *&buf[104] = 0x4026000000000000;
      *&buf[112] = 3;
      *&buf[120] = xmmword_1A30F7020;
      *&buf[136] = xmmword_1A30F70E0;
      *&buf[152] = xmmword_1A30F7030;
      *&buf[168] = xmmword_1A30F7040;
      *&buf[184] = xmmword_1A30F7050;
      *&buf[200] = xmmword_1A30F7060;
      *&buf[216] = xmmword_1A30F7070;
      *&buf[232] = xmmword_1A30F70F0;
      v51 = xmmword_1A30F7080;
      *&buf[248] = xmmword_1A30F7080;
      *&buf[264] = 0x403E8BA2F8000000;
      v52 = 0x1000000000001;
      v53 = xmmword_1A30F7090;
    }

    else
    {
      __asm { FMOV            V0.2D, #8.0 }

      *&buf[24] = _Q0;
      *&buf[40] = xmmword_1A30F6F10;
      *&buf[56] = xmmword_1A30F6F20;
      *&buf[72] = xmmword_1A30F6F30;
      memset(&buf[88], 0, 24);
      *&buf[112] = 3;
      *&buf[120] = xmmword_1A30F6F40;
      *&buf[136] = xmmword_1A30F6F50;
      *&buf[152] = xmmword_1A30F6F60;
      *&buf[176] = 0uLL;
      *&buf[168] = 0x402E000000000000;
      *&buf[192] = xmmword_1A30F6F70;
      *&buf[208] = xmmword_1A30F6F80;
      *&buf[224] = xmmword_1A30F6F90;
      *&buf[240] = xmmword_1A30F6FA0;
      *&buf[256] = xmmword_1A30F6FB0;
      v52 = 1;
      v53 = xmmword_1A30F6FC0;
      v51 = xmmword_1A30F6FD0;
    }

    v16 = v44;
    v82 = xmmword_1A30F70A0;
    *&v83 = 0x4024000000000000;
    memset(v86 + 8, 0, 152);
    BYTE8(v83) = 0;
    v84 = v51;
    v85 = v53;
    LODWORD(v86[0]) = vuzp1_s8(v52, v52).u32[0];
    mainScreen2 = [v44[470] mainScreen];
    [mainScreen2 scale];
    v57 = v56;

    v44 = v80;
    v45 = MKManeuverArrowImage(v6, drivingSide2, buf, v43, v80, 0, v24, v24, v57);
    if (!v45)
    {
      v58 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        if (v6 <= 0x58)
        {
          v46 = @"NO_TURN";
          switch(v6)
          {
            case 0:
              goto LABEL_224;
            case 1:
              v46 = @"LEFT_TURN";
              goto LABEL_224;
            case 2:
              v46 = @"RIGHT_TURN";
              goto LABEL_224;
            case 3:
              v46 = @"STRAIGHT_AHEAD";
              goto LABEL_224;
            case 4:
              v46 = @"U_TURN";
              goto LABEL_224;
            case 5:
              v46 = @"FOLLOW_ROAD";
              goto LABEL_224;
            case 6:
              v46 = @"ENTER_ROUNDABOUT";
              goto LABEL_224;
            case 7:
              v46 = @"EXIT_ROUNDABOUT";
              goto LABEL_224;
            case 8:
            case 9:
            case 10:
            case 13:
            case 14:
            case 15:
            case 19:
            case 31:
            case 32:
            case 36:
            case 37:
            case 38:
            case 40:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 72:
            case 73:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
              break;
            case 11:
              v46 = @"OFF_RAMP";
              goto LABEL_224;
            case 12:
              v46 = @"ON_RAMP";
              goto LABEL_224;
            case 16:
              v46 = @"ARRIVE_END_OF_NAVIGATION";
              goto LABEL_224;
            case 17:
              v46 = @"START_ROUTE";
              goto LABEL_224;
            case 18:
              v46 = @"ARRIVE_AT_DESTINATION";
              goto LABEL_224;
            case 20:
              v46 = @"KEEP_LEFT";
              goto LABEL_224;
            case 21:
              v46 = @"KEEP_RIGHT";
              goto LABEL_224;
            case 22:
              v46 = @"ENTER_FERRY";
              goto LABEL_224;
            case 23:
              v46 = @"EXIT_FERRY";
              goto LABEL_224;
            case 24:
              v46 = @"CHANGE_FERRY";
              goto LABEL_224;
            case 25:
              v46 = @"START_ROUTE_WITH_U_TURN";
              goto LABEL_224;
            case 26:
              v46 = @"U_TURN_AT_ROUNDABOUT";
              goto LABEL_224;
            case 27:
              v46 = @"LEFT_TURN_AT_END";
              goto LABEL_224;
            case 28:
              v46 = @"RIGHT_TURN_AT_END";
              goto LABEL_224;
            case 29:
              v46 = @"HIGHWAY_OFF_RAMP_LEFT";
              goto LABEL_224;
            case 30:
              v46 = @"HIGHWAY_OFF_RAMP_RIGHT";
              goto LABEL_224;
            case 33:
              v46 = @"ARRIVE_AT_DESTINATION_LEFT";
              goto LABEL_224;
            case 34:
              v46 = @"ARRIVE_AT_DESTINATION_RIGHT";
              goto LABEL_224;
            case 35:
              v46 = @"U_TURN_WHEN_POSSIBLE";
              goto LABEL_224;
            case 39:
              v46 = @"ARRIVE_END_OF_DIRECTIONS";
              goto LABEL_224;
            case 41:
              v46 = @"ROUNDABOUT_EXIT_1";
              goto LABEL_224;
            case 42:
              v46 = @"ROUNDABOUT_EXIT_2";
              goto LABEL_224;
            case 43:
              v46 = @"ROUNDABOUT_EXIT_3";
              goto LABEL_224;
            case 44:
              v46 = @"ROUNDABOUT_EXIT_4";
              goto LABEL_224;
            case 45:
              v46 = @"ROUNDABOUT_EXIT_5";
              goto LABEL_224;
            case 46:
              v46 = @"ROUNDABOUT_EXIT_6";
              goto LABEL_224;
            case 47:
              v46 = @"ROUNDABOUT_EXIT_7";
              goto LABEL_224;
            case 48:
              v46 = @"ROUNDABOUT_EXIT_8";
              goto LABEL_224;
            case 49:
              v46 = @"ROUNDABOUT_EXIT_9";
              goto LABEL_224;
            case 50:
              v46 = @"ROUNDABOUT_EXIT_10";
              goto LABEL_224;
            case 51:
              v46 = @"ROUNDABOUT_EXIT_11";
              goto LABEL_224;
            case 52:
              v46 = @"ROUNDABOUT_EXIT_12";
              goto LABEL_224;
            case 53:
              v46 = @"ROUNDABOUT_EXIT_13";
              goto LABEL_224;
            case 54:
              v46 = @"ROUNDABOUT_EXIT_14";
              goto LABEL_224;
            case 55:
              v46 = @"ROUNDABOUT_EXIT_15";
              goto LABEL_224;
            case 56:
              v46 = @"ROUNDABOUT_EXIT_16";
              goto LABEL_224;
            case 57:
              v46 = @"ROUNDABOUT_EXIT_17";
              goto LABEL_224;
            case 58:
              v46 = @"ROUNDABOUT_EXIT_18";
              goto LABEL_224;
            case 59:
              v46 = @"ROUNDABOUT_EXIT_19";
              goto LABEL_224;
            case 60:
              v46 = @"SHARP_LEFT_TURN";
              goto LABEL_224;
            case 61:
              v46 = @"SHARP_RIGHT_TURN";
              goto LABEL_224;
            case 62:
              v46 = @"SLIGHT_LEFT_TURN";
              goto LABEL_224;
            case 63:
              v46 = @"SLIGHT_RIGHT_TURN";
              goto LABEL_224;
            case 64:
              v46 = @"CHANGE_HIGHWAY";
              goto LABEL_224;
            case 65:
              v46 = @"CHANGE_HIGHWAY_LEFT";
              goto LABEL_224;
            case 66:
              v46 = @"CHANGE_HIGHWAY_RIGHT";
              goto LABEL_224;
            case 80:
              v46 = @"TOLL_STATION";
              goto LABEL_224;
            case 81:
              v46 = @"ENTER_TUNNEL";
              goto LABEL_224;
            case 82:
              v46 = @"WAYPOINT_STOP";
              goto LABEL_224;
            case 83:
              v46 = @"WAYPOINT_STOP_LEFT";
              goto LABEL_224;
            case 84:
              v46 = @"WAYPOINT_STOP_RIGHT";
              goto LABEL_224;
            case 85:
              v46 = @"RESUME_ROUTE";
              goto LABEL_224;
            case 86:
              v46 = @"RESUME_ROUTE_WITH_U_TURN";
              goto LABEL_224;
            case 87:
              v46 = @"CUSTOM";
              goto LABEL_224;
            case 88:
              v46 = @"TURN_AROUND";
              goto LABEL_224;
            default:
              goto LABEL_117;
          }
        }

        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
LABEL_224:
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_impl(&dword_1A2EA0000, v58, OS_LOG_TYPE_INFO, "Maneuver type %@ could not be drawn; defaulting to .STRAIGHT_AHEAD", buf, 0xCu);
      }

      drivingSide3 = [infoCopy drivingSide];
      v60 = GEOConfigGetBOOL();
      buf[0] = 0;
      *&buf[8] = MKDefaultGuidanceManeuverMetrics_referenceSize;
      if (v60)
      {
        __asm { FMOV            V0.2D, #7.0 }

        *&buf[24] = _Q0;
        *&buf[40] = xmmword_1A30F6FE0;
        *&buf[56] = xmmword_1A30F6FF0;
        *&buf[72] = xmmword_1A30F7000;
        *&buf[88] = xmmword_1A30F7010;
        *&buf[104] = 0x4026000000000000;
        *&buf[112] = 3;
        *&buf[120] = xmmword_1A30F7020;
        *&buf[136] = xmmword_1A30F70E0;
        *&buf[152] = xmmword_1A30F7030;
        *&buf[168] = xmmword_1A30F7040;
        *&buf[184] = xmmword_1A30F7050;
        *&buf[200] = xmmword_1A30F7060;
        *&buf[216] = xmmword_1A30F7070;
        *&buf[232] = xmmword_1A30F70F0;
        v62 = xmmword_1A30F7080;
        *&buf[248] = xmmword_1A30F7080;
        *&buf[264] = 0x403E8BA2F8000000;
        v63 = 0x1000000000001;
        v64 = xmmword_1A30F7090;
      }

      else
      {
        __asm { FMOV            V0.2D, #8.0 }

        *&buf[24] = _Q0;
        *&buf[40] = xmmword_1A30F6F10;
        *&buf[56] = xmmword_1A30F6F20;
        *&buf[72] = xmmword_1A30F6F30;
        memset(&buf[88], 0, 24);
        *&buf[112] = 3;
        *&buf[120] = xmmword_1A30F6F40;
        *&buf[136] = xmmword_1A30F6F50;
        *&buf[152] = xmmword_1A30F6F60;
        *&buf[176] = 0uLL;
        *&buf[168] = 0x402E000000000000;
        *&buf[192] = xmmword_1A30F6F70;
        *&buf[208] = xmmword_1A30F6F80;
        *&buf[224] = xmmword_1A30F6F90;
        *&buf[240] = xmmword_1A30F6FA0;
        *&buf[256] = xmmword_1A30F6FB0;
        v63 = 1;
        v64 = xmmword_1A30F6FC0;
        v62 = xmmword_1A30F6FD0;
      }

      v82 = xmmword_1A30F70A0;
      *&v83 = 0x4024000000000000;
      memset(v86 + 8, 0, 152);
      BYTE8(v83) = 0;
      v84 = v62;
      v85 = v64;
      LODWORD(v86[0]) = vuzp1_s8(v63, v63).u32[0];
      mainScreen3 = [v16[470] mainScreen];
      [mainScreen3 scale];
      v68 = v67;

      v44 = v80;
      v45 = MKManeuverArrowImage(3, drivingSide3, buf, v43, v80, 0, v24, v24, v68);
    }
  }

  v10 = v45;

LABEL_230:
  v69 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v69 setImage:v10];
  v70 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  [v70 capHeight];
  v72 = v71;
  [v10 size];
  v74 = round(v72 - v73) * 0.5;
  [v10 size];
  v76 = v75;
  [v10 size];
  [v69 setBounds:{0.0, v74, v76, v77}];

  return v69;
}

- (id)_textAttachmentForGeoArtwork:(id)artwork attributes:(id)attributes accessibilityText:(id)text
{
  v60 = *MEMORY[0x1E69E9840];
  artworkCopy = artwork;
  attributesCopy = attributes;
  textCopy = text;
  v10 = [attributesCopy objectForKeyedSubscript:@"MKServerFormattedStringArtworkSizeAttribute"];
  v11 = v10;
  if (v10)
  {
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 4;
  }

  v13 = [attributesCopy objectForKeyedSubscript:@"MKServerFormattedStringArtworkFeatureTypeAttributeKey"];
  v14 = v13;
  if (v13)
  {
    unsignedIntegerValue2 = [v13 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 2;
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v18 = v17;

  v19 = +[MKArtworkDataSourceCache sharedInstance];
  v20 = [v19 imageForArtwork:artworkCopy size:unsignedIntegerValue featureType:unsignedIntegerValue2 scale:0 nightMode:v18];

  v21 = [attributesCopy objectForKeyedSubscript:@"MKServerFormattedStringArtworkAlphaAttribute"];
  [v21 doubleValue];
  v23 = v22;

  if (v23 > 0.0 && v23 < 1.0)
  {
    v24 = [v20 _mapkit_imageWithAlpha:v23];

    v20 = v24;
  }

  if (v20)
  {
    if (MKTransitArtworkDataSourceAllowMasking(artworkCopy))
    {
      v25 = [v20 imageWithRenderingMode:2];

      v20 = v25;
    }

    v26 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    [v26 setImage:v20];
    [v26 setAccessibilityLabel:textCopy];
    v27 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    [v20 size];
    v29 = v28;
    v31 = v30;
    v32 = [attributesCopy objectForKey:@"MKServerFormattedStringArtworkScaleAttributeKey"];
    v33 = v32;
    if (v32)
    {
      [v32 _mapkit_cgFloatValue];
      v35 = v29 * v34;
      [v33 _mapkit_cgFloatValue];
      v37 = v31 * v36;
      if (v27)
      {
LABEL_15:
        v55 = v11;
        v56 = textCopy;
        v57 = artworkCopy;
        v38 = v29 / v31;
        [v27 ascender];
        v40 = v39;
        [v27 _mapkit_lineHeight];
        v42 = v41;
        v43 = [attributesCopy objectForKeyedSubscript:@"MKServerFormattedStringArtworkMatchLineHeightAttributeKey"];
        bOOLValue = [v43 BOOLValue];

        v45 = [attributesCopy objectForKeyedSubscript:@"MKServerFormattedStringArtworkLimitToLineHeightAttributeKey"];
        bOOLValue2 = [v45 BOOLValue];

        v47 = [attributesCopy objectForKeyedSubscript:@"MKServerFormattedStringArtworkLimitToFontAscenderAttributeKey"];
        bOOLValue3 = [v47 BOOLValue];

        if (bOOLValue)
        {
          v35 = v38 * v42;
          textCopy = v56;
          artworkCopy = v57;
        }

        else
        {
          if (v37 > v42)
          {
            v49 = bOOLValue2;
          }

          else
          {
            v49 = 0;
          }

          textCopy = v56;
          if (v49 == 1)
          {
            v35 = v38 * v42;
          }

          else
          {
            v50 = v37 > v40;
            if ((bOOLValue3 & v50) != 0)
            {
              v42 = v40;
            }

            else
            {
              v42 = v37;
            }

            if ((bOOLValue3 & v50) != 0)
            {
              v35 = v38 * v40;
            }
          }

          artworkCopy = v57;
        }

        v11 = v55;
        goto LABEL_34;
      }
    }

    else
    {
      v37 = v31;
      v35 = v29;
      if (v27)
      {
        goto LABEL_15;
      }
    }

    v42 = v37;
LABEL_34:
    [v27 capHeight];
    v52 = (v51 - v42) * 0.5;
    v53 = 0.0;
    if (v27)
    {
      v53 = v52;
    }

    [v26 setBounds:{0.0, v53, v35, v42}];

    goto LABEL_37;
  }

  v20 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v59 = artworkCopy;
    _os_log_impl(&dword_1A2EA0000, v20, OS_LOG_TYPE_ERROR, "Could not find requested shield: %@", buf, 0xCu);
  }

  v26 = 0;
LABEL_37:

  return v26;
}

- (id)_attachmentTextForSFSymbol:(id)symbol attributes:(id)attributes
{
  attributesCopy = attributes;
  symbolName = [symbol symbolName];
  if (symbolName)
  {
    v7 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    v8 = [attributesCopy objectForKey:@"MKServerFormattedStringArtworkSFSymbolScaleAttributeKey"];
    v9 = v8;
    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    v12 = [attributesCopy objectForKey:@"MKServerFormattedStringArtworkSFSymbolStyleAttributeKey"];
    v13 = v12;
    if (v12)
    {
      [v12 floatValue];
      v15 = v14;
    }

    else
    {
      v15 = *MEMORY[0x1E69DB968];
    }

    v16 = MEMORY[0x1E69DCAD8];
    [v7 pointSize];
    v17 = [v16 configurationWithPointSize:v15 weight:integerValue scale:?];
    v18 = [MEMORY[0x1E69DCAB8] _mapkit_systemImageNamed:symbolName];
    v19 = [v18 _mapkit_imageWithSymbolConfiguration:v17];

    v20 = [v19 imageWithRenderingMode:2];

    if (v20)
    {
      v21 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      [v21 setImage:v20];
      v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v21];
      v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v22];
      [v11 addAttributes:attributesCopy range:{0, objc_msgSend(v11, "length")}];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F15B23C0];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_parametersByScrubbingUnusedOverrideVariablesFromParameters:(id)parameters geoServerString:(id)string
{
  v28 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  stringCopy = string;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = stringCopy;
  formatTokens = [stringCopy formatTokens];
  v9 = [formatTokens countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(formatTokens);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        variableOverrides = [parametersCopy variableOverrides];
        token = [v13 token];
        v16 = [variableOverrides objectForKeyedSubscript:token];

        if (v16)
        {
          token2 = [v13 token];
          [dictionary setObject:v16 forKeyedSubscript:token2];
        }
      }

      v10 = [formatTokens countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v18 = [MKServerFormattedStringParameters alloc];
  if (parametersCopy)
  {
    [parametersCopy options];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v19 = [(MKServerFormattedStringParameters *)v18 initWithOptions:v22 variableOverrides:dictionary];

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  geoServerString = self->_geoServerString;
  coderCopy = coder;
  [coderCopy encodeObject:geoServerString forKey:@"geoServerString"];
  [coderCopy encodeObject:self->_parameters forKey:@"parameters"];
  [coderCopy encodeObject:self->_composedString forKey:@"composedString"];
}

- (MKServerFormattedString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MKServerFormattedString;
  v5 = [(MKServerFormattedString *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"geoServerString"];
    geoServerString = v5->_geoServerString;
    v5->_geoServerString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
    parameters = v5->_parameters;
    v5->_parameters = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"composedString"];
    composedString = v5->_composedString;
    v5->_composedString = v10;
  }

  return v5;
}

- (MKServerFormattedString)initWithComposedString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = MKServerFormattedString;
  v6 = [(MKServerFormattedString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_composedString, string);
  }

  return v7;
}

- (MKServerFormattedString)initWithGeoServerString:(id)string parameters:(id)parameters
{
  stringCopy = string;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = MKServerFormattedString;
  v9 = [(MKServerFormattedString *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_geoServerString, string);
    v11 = [(MKServerFormattedString *)v10 _parametersByScrubbingUnusedOverrideVariablesFromParameters:parametersCopy geoServerString:v10->_geoServerString];
    parameters = v10->_parameters;
    v10->_parameters = v11;
  }

  return v10;
}

+ (id)attributesForServerFormatStyle:(int64_t)style
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (style == 4)
  {
    v11 = *MEMORY[0x1E69DB650];
    linkColor = [MEMORY[0x1E69DC888] linkColor];
    v12 = linkColor;
    v5 = MEMORY[0x1E695DF20];
    v6 = &v12;
    v7 = &v11;
    goto LABEL_9;
  }

  if (style == 2)
  {
    v8 = +[MKInfoCardThemeManager currentTheme];
    linkColor = [v8 transitDelayedTextColor];

    if (linkColor)
    {
      v13 = *MEMORY[0x1E69DB650];
      v14 = linkColor;
      v5 = MEMORY[0x1E695DF20];
      v6 = &v14;
      v7 = &v13;
      goto LABEL_9;
    }

LABEL_11:
    v9 = MEMORY[0x1E695E0F8];
    goto LABEL_12;
  }

  if (style != 1)
  {
    v9 = MEMORY[0x1E695E0F8];
    goto LABEL_13;
  }

  v3 = +[MKInfoCardThemeManager currentTheme];
  linkColor = [v3 transitOntimeTextColor];

  if (!linkColor)
  {
    goto LABEL_11;
  }

  v15 = *MEMORY[0x1E69DB650];
  v16[0] = linkColor;
  v5 = MEMORY[0x1E695DF20];
  v6 = v16;
  v7 = &v15;
LABEL_9:
  v9 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
LABEL_12:

LABEL_13:

  return v9;
}

@end