@interface ASDPurchaseHistoryApp
- (ASDPurchaseHistoryApp)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurchaseHistoryApp

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(ASDPurchaseHistoryApp *)self title];
  bundleID = [(ASDPurchaseHistoryApp *)self bundleID];
  v8 = [v3 stringWithFormat:@"<%@: %p> '%@' %@", v5, self, title, bundleID];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(self) = 0;
    goto LABEL_105;
  }

  v5 = equalCopy;
  bundleID = [(ASDPurchaseHistoryApp *)self bundleID];
  selfCopy2 = [v5 bundleID];
  if (bundleID == selfCopy2 || (-[ASDPurchaseHistoryApp bundleID](self, "bundleID"), v8 = objc_claimAutoreleasedReturnValue(), [v5 bundleID], v179 = objc_claimAutoreleasedReturnValue(), v180 = v8, objc_msgSend(v8, "isEqual:", v179)))
  {
    circularIconURLString = [(ASDPurchaseHistoryApp *)self circularIconURLString];
    circularIconURLString2 = [v5 circularIconURLString];
    v178 = circularIconURLString;
    v18 = circularIconURLString != circularIconURLString2;
    if (circularIconURLString != circularIconURLString2)
    {
      circularIconURLString3 = [(ASDPurchaseHistoryApp *)self circularIconURLString];
      [v5 circularIconURLString];
      v173 = v174 = circularIconURLString3;
      if (![circularIconURLString3 isEqual:?])
      {
        memset(v182, 0, 44);
        v10 = 0;
        memset(v183, 0, sizeof(v183));
        v181 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        HIDWORD(v182[5]) = 1;
        memset(&v182[6], 0, 36);
        HIDWORD(v182[10]) = 1;
        goto LABEL_26;
      }
    }

    contentRatingFlags = [(ASDPurchaseHistoryApp *)self contentRatingFlags];
    HIDWORD(v182[10]) = v18;
    if (contentRatingFlags != [v5 contentRatingFlags])
    {
      memset(v182, 0, 44);
      v10 = 0;
      memset(v183, 0, sizeof(v183));
      v181 = 0;
      v11 = 0;
      v12 = 0;
      memset(&v182[6] + 4, 0, 32);
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(self) = 0;
      *(&v182[5] + 4) = 1;
      goto LABEL_26;
    }

    datePurchased = [(ASDPurchaseHistoryApp *)self datePurchased];
    [v5 datePurchased];
    v171 = v172 = datePurchased;
    v22 = datePurchased != v171;
    if (datePurchased != v171)
    {
      datePurchased2 = [(ASDPurchaseHistoryApp *)self datePurchased];
      [v5 datePurchased];
      v167 = v168 = datePurchased2;
      if (![datePurchased2 isEqual:?])
      {
        memset(&v182[6], 0, 32);
        memset(v182, 0, 40);
        v10 = 0;
        memset(v183, 0, sizeof(v183));
        v181 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        v182[5] = 0x100000001;
        LODWORD(v182[10]) = 1;
        goto LABEL_26;
      }
    }

    developerName = [(ASDPurchaseHistoryApp *)self developerName];
    [v5 developerName];
    v169 = v170 = developerName;
    v25 = developerName == v169;
    v26 = developerName != v169;
    LODWORD(v182[10]) = v22;
    if (v25)
    {
      HIDWORD(v182[9]) = v26;
    }

    else
    {
      developerName2 = [(ASDPurchaseHistoryApp *)self developerName];
      [v5 developerName];
      v165 = v166 = developerName2;
      if (![developerName2 isEqual:?])
      {
        v182[4] = 0;
        memset(v182, 0, 28);
        v10 = 0;
        memset(v183, 0, sizeof(v183));
        v181 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        memset(&v182[6], 0, 28);
        v182[5] = 0x100000001;
        HIDWORD(v182[3]) = 1;
        HIDWORD(v182[9]) = 1;
        goto LABEL_26;
      }

      HIDWORD(v182[9]) = v26;
    }

    isFamilyShared = [(ASDPurchaseHistoryApp *)self isFamilyShared];
    if (isFamilyShared != [v5 isFamilyShared] || (v29 = -[ASDPurchaseHistoryApp isFirstParty](self, "isFirstParty"), v29 != objc_msgSend(v5, "isFirstParty")) || (v30 = -[ASDPurchaseHistoryApp genreID](self, "genreID"), v30 != objc_msgSend(v5, "genreID")))
    {
      v182[4] = 0;
      memset(v182, 0, 28);
      v10 = 0;
      memset(v183, 0, sizeof(v183));
      v181 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(self) = 0;
      memset(&v182[6], 0, 28);
      v182[5] = 0x100000001;
      HIDWORD(v182[3]) = 1;
      goto LABEL_26;
    }

    genreName = [(ASDPurchaseHistoryApp *)self genreName];
    [v5 genreName];
    v163 = v164 = genreName;
    v25 = genreName == v163;
    v32 = genreName != v163;
    if (v25)
    {
      LODWORD(v182[9]) = v32;
    }

    else
    {
      genreName2 = [(ASDPurchaseHistoryApp *)self genreName];
      genreName3 = [v5 genreName];
      v162 = genreName2;
      if (![genreName2 isEqual:genreName3])
      {
        v182[4] = 0;
        memset(v182, 0, 24);
        v10 = 0;
        memset(v183, 0, sizeof(v183));
        v181 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        memset(&v182[6], 0, 24);
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        LODWORD(v182[9]) = 1;
        goto LABEL_26;
      }

      LODWORD(v182[9]) = v32;
    }

    hasMessagesExtension = [(ASDPurchaseHistoryApp *)self hasMessagesExtension];
    if (hasMessagesExtension != [v5 hasMessagesExtension] || (v45 = -[ASDPurchaseHistoryApp isHidden](self, "isHidden"), v45 != objc_msgSend(v5, "isHidden")) || (v46 = -[ASDPurchaseHistoryApp isHiddenFromSpringboard](self, "isHiddenFromSpringboard"), v46 != objc_msgSend(v5, "isHiddenFromSpringboard")))
    {
      v182[4] = 0;
      memset(v182, 0, 24);
      v10 = 0;
      memset(v183, 0, sizeof(v183));
      v181 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      memset(&v182[6], 0, 24);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(self) = 0;
      v182[5] = 0x100000001;
      v182[3] = 0x100000001;
      goto LABEL_26;
    }

    iconURLString = [(ASDPurchaseHistoryApp *)self iconURLString];
    iconURLString2 = [v5 iconURLString];
    v160 = iconURLString;
    v25 = iconURLString == iconURLString2;
    v48 = iconURLString != iconURLString2;
    if (v25)
    {
      HIDWORD(v182[8]) = v48;
    }

    else
    {
      iconURLString3 = [(ASDPurchaseHistoryApp *)self iconURLString];
      iconURLString4 = [v5 iconURLString];
      v156 = iconURLString3;
      if (![iconURLString3 isEqual:iconURLString4])
      {
        v182[4] = 0x100000000;
        memset(v182, 0, 24);
        v10 = 0;
        memset(v183, 0, sizeof(v183));
        v181 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        memset(&v182[6], 0, 20);
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        HIDWORD(v182[8]) = 1;
        goto LABEL_26;
      }

      HIDWORD(v182[8]) = v48;
    }

    appIconArtworkURLString = [(ASDPurchaseHistoryApp *)self appIconArtworkURLString];
    appIconArtworkURLString2 = [v5 appIconArtworkURLString];
    v158 = appIconArtworkURLString;
    if (appIconArtworkURLString != appIconArtworkURLString2)
    {
      appIconArtworkURLString3 = [(ASDPurchaseHistoryApp *)self appIconArtworkURLString];
      appIconArtworkURLString4 = [v5 appIconArtworkURLString];
      v152 = appIconArtworkURLString3;
      if (![appIconArtworkURLString3 isEqual:appIconArtworkURLString4])
      {
        v182[6] = 0;
        v182[7] = 0;
        memset(v182, 0, 24);
        v10 = 0;
        memset(v183, 0, sizeof(v183));
        v181 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        LODWORD(v182[8]) = 1;
        goto LABEL_26;
      }
    }

    appIconArtworkToken = [(ASDPurchaseHistoryApp *)self appIconArtworkToken];
    appIconArtworkToken2 = [v5 appIconArtworkToken];
    v154 = appIconArtworkToken;
    v25 = appIconArtworkToken == appIconArtworkToken2;
    v53 = appIconArtworkToken != appIconArtworkToken2;
    LODWORD(v182[8]) = appIconArtworkURLString != appIconArtworkURLString2;
    if (!v25)
    {
      appIconArtworkToken3 = [(ASDPurchaseHistoryApp *)self appIconArtworkToken];
      appIconArtworkToken4 = [v5 appIconArtworkToken];
      v148 = appIconArtworkToken3;
      if (![appIconArtworkToken3 isEqual:appIconArtworkToken4])
      {
        memset(v182, 0, 20);
        v10 = 0;
        memset(v183, 0, sizeof(v183));
        v181 = 0;
        v11 = 0;
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        HIDWORD(v182[2]) = 1;
        HIDWORD(v182[7]) = 1;
        goto LABEL_26;
      }
    }

    appIconCompatibleArtworkURLString = [(ASDPurchaseHistoryApp *)self appIconCompatibleArtworkURLString];
    appIconCompatibleArtworkURLString2 = [v5 appIconCompatibleArtworkURLString];
    v150 = appIconCompatibleArtworkURLString;
    HIDWORD(v183[3]) = appIconCompatibleArtworkURLString != appIconCompatibleArtworkURLString2;
    HIDWORD(v182[7]) = v53;
    if (appIconCompatibleArtworkURLString != appIconCompatibleArtworkURLString2)
    {
      appIconCompatibleArtworkURLString3 = [(ASDPurchaseHistoryApp *)self appIconCompatibleArtworkURLString];
      appIconCompatibleArtworkURLString4 = [v5 appIconCompatibleArtworkURLString];
      v144 = appIconCompatibleArtworkURLString3;
      if (![appIconCompatibleArtworkURLString3 isEqual:appIconCompatibleArtworkURLString4])
      {
        v182[0] = 0;
        v182[1] = 0;
        v10 = 0;
        v181 = 0;
        v11 = 0;
        memset(v183, 0, 28);
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        HIDWORD(v183[3]) = 1;
        goto LABEL_26;
      }
    }

    circularAppIconArtworkURLString = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkURLString];
    circularAppIconArtworkURLString2 = [v5 circularAppIconArtworkURLString];
    v146 = circularAppIconArtworkURLString;
    LODWORD(v183[3]) = circularAppIconArtworkURLString != circularAppIconArtworkURLString2;
    if (circularAppIconArtworkURLString != circularAppIconArtworkURLString2)
    {
      circularAppIconArtworkURLString3 = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkURLString];
      circularAppIconArtworkURLString4 = [v5 circularAppIconArtworkURLString];
      v140 = circularAppIconArtworkURLString3;
      if (![circularAppIconArtworkURLString3 isEqual:circularAppIconArtworkURLString4])
      {
        v182[0] = 0;
        v10 = 0;
        v181 = 0;
        memset(v183, 0, 24);
        v11 = 0;
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000000;
        LODWORD(v183[3]) = 1;
        goto LABEL_26;
      }
    }

    circularAppIconArtworkToken = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkToken];
    circularAppIconArtworkToken2 = [v5 circularAppIconArtworkToken];
    v142 = circularAppIconArtworkToken;
    HIDWORD(v183[2]) = circularAppIconArtworkToken != circularAppIconArtworkToken2;
    v101 = v5;
    if (circularAppIconArtworkToken != circularAppIconArtworkToken2)
    {
      circularAppIconArtworkToken3 = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkToken];
      circularAppIconArtworkToken4 = [v5 circularAppIconArtworkToken];
      v136 = circularAppIconArtworkToken3;
      if (![circularAppIconArtworkToken3 isEqual:circularAppIconArtworkToken4])
      {
        v10 = 0;
        *(v182 + 4) = 0;
        v11 = 0;
        memset(v183, 0, 20);
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        HIDWORD(v182[1]) = 1;
        v181 = 0;
        LODWORD(v182[0]) = 1;
        HIDWORD(v183[2]) = 1;
LABEL_140:
        v5 = v101;
        goto LABEL_26;
      }
    }

    circularAppIconCompatibleArtworkURLString = [(ASDPurchaseHistoryApp *)self circularAppIconCompatibleArtworkURLString];
    circularAppIconCompatibleArtworkURLString2 = [v5 circularAppIconCompatibleArtworkURLString];
    v138 = circularAppIconCompatibleArtworkURLString;
    LODWORD(v183[2]) = circularAppIconCompatibleArtworkURLString != circularAppIconCompatibleArtworkURLString2;
    if (circularAppIconCompatibleArtworkURLString != circularAppIconCompatibleArtworkURLString2)
    {
      circularAppIconCompatibleArtworkURLString3 = [(ASDPurchaseHistoryApp *)self circularAppIconCompatibleArtworkURLString];
      circularAppIconCompatibleArtworkURLString4 = [v5 circularAppIconCompatibleArtworkURLString];
      v134 = circularAppIconCompatibleArtworkURLString3;
      if (![circularAppIconCompatibleArtworkURLString3 isEqual:circularAppIconCompatibleArtworkURLString4])
      {
        *(v182 + 4) = 0;
        v183[0] = 0;
        v183[1] = 0;
        v11 = 0;
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        HIDWORD(v182[1]) = 1;
        v181 = 0;
        LODWORD(v182[0]) = 1;
        v10 = 1;
        LODWORD(v183[2]) = 1;
        goto LABEL_140;
      }
    }

    isArcade = [(ASDPurchaseHistoryApp *)self isArcade];
    if (isArcade != [v5 isArcade] || (v64 = -[ASDPurchaseHistoryApp is32BitOnly](self, "is32BitOnly"), v64 != objc_msgSend(v5, "is32BitOnly")) || (v65 = -[ASDPurchaseHistoryApp isEligibleForGamesApp](self, "isEligibleForGamesApp"), v65 != objc_msgSend(v5, "isEligibleForGamesApp")) || (v66 = -[ASDPurchaseHistoryApp isPreorder](self, "isPreorder"), v66 != objc_msgSend(v5, "isPreorder")))
    {
      *(v182 + 4) = 0;
      v183[0] = 0;
      v183[1] = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(self) = 0;
      *(&v182[5] + 4) = 1uLL;
      LODWORD(v182[5]) = 1;
      v182[3] = 0x100000001;
      v182[4] = 0x100000001;
      v182[2] = 0x100000001;
      HIDWORD(v182[1]) = 1;
      v181 = 0;
      LODWORD(v182[0]) = 1;
      v10 = 1;
      goto LABEL_140;
    }

    longTitle = [(ASDPurchaseHistoryApp *)self longTitle];
    longTitle2 = [v5 longTitle];
    v132 = longTitle;
    HIDWORD(v183[1]) = longTitle != longTitle2;
    if (longTitle != longTitle2)
    {
      longTitle3 = [(ASDPurchaseHistoryApp *)self longTitle];
      longTitle4 = [v5 longTitle];
      v130 = longTitle3;
      if (![longTitle3 isEqual:longTitle4])
      {
        *(v183 + 4) = 0;
        v181 = 0;
        v11 = 0;
        LODWORD(v183[0]) = 0;
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000000;
        v182[0] = 0x100000001;
        v10 = 1;
        HIDWORD(v183[1]) = 1;
        goto LABEL_140;
      }
    }

    mediaKind = [(ASDPurchaseHistoryApp *)self mediaKind];
    if (mediaKind != [v5 mediaKind])
    {
      *(v183 + 4) = 0;
      v11 = 0;
      LODWORD(v183[0]) = 0;
      v12 = 0;
      *(&v182[6] + 4) = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(self) = 0;
      LODWORD(v182[6]) = 0;
      v182[5] = 0x100000001;
      v182[3] = 0x100000001;
      v182[4] = 0x100000001;
      v182[2] = 0x100000001;
      v182[1] = 0x100000000;
      v181 = 0;
      v182[0] = 0x100000001;
      v10 = 1;
      goto LABEL_140;
    }

    ovalIconURLString = [(ASDPurchaseHistoryApp *)self ovalIconURLString];
    ovalIconURLString2 = [v5 ovalIconURLString];
    v128 = ovalIconURLString;
    LODWORD(v183[1]) = ovalIconURLString != ovalIconURLString2;
    if (ovalIconURLString != ovalIconURLString2)
    {
      ovalIconURLString3 = [(ASDPurchaseHistoryApp *)self ovalIconURLString];
      ovalIconURLString4 = [v5 ovalIconURLString];
      v124 = ovalIconURLString3;
      if (![ovalIconURLString3 isEqual:ovalIconURLString4])
      {
        v181 = 0;
        v183[0] = 0;
        v11 = 0;
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000001;
        v182[0] = 0x100000001;
        v10 = 1;
        LODWORD(v183[1]) = 1;
        goto LABEL_140;
      }
    }

    preflightPackageURL = [(ASDPurchaseHistoryApp *)self preflightPackageURL];
    preflightPackageURL2 = [v5 preflightPackageURL];
    v126 = preflightPackageURL;
    HIDWORD(v183[0]) = preflightPackageURL != preflightPackageURL2;
    if (preflightPackageURL != preflightPackageURL2)
    {
      preflightPackageURL3 = [(ASDPurchaseHistoryApp *)self preflightPackageURL];
      preflightPackageURL4 = [v5 preflightPackageURL];
      v120 = preflightPackageURL3;
      if (![preflightPackageURL3 isEqual:preflightPackageURL4])
      {
        v11 = 0;
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000001;
        v182[0] = 0x100000001;
        v10 = 1;
        v181 = 1;
        v183[0] = 0x100000000;
        goto LABEL_140;
      }
    }

    productURL = [(ASDPurchaseHistoryApp *)self productURL];
    productURL2 = [v101 productURL];
    v122 = productURL;
    LODWORD(v183[0]) = productURL != productURL2;
    if (productURL != productURL2)
    {
      productURL3 = [(ASDPurchaseHistoryApp *)self productURL];
      productURL4 = [v101 productURL];
      v118 = productURL3;
      if (![productURL3 isEqual:productURL4])
      {
        v12 = 0;
        *(&v182[6] + 4) = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        LODWORD(v182[6]) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000001;
        v182[0] = 0x100000001;
        v10 = 1;
        v181 = 1;
        v11 = 1;
        LODWORD(v183[0]) = 1;
        goto LABEL_140;
      }
    }

    purchaserDSID = [(ASDPurchaseHistoryApp *)self purchaserDSID];
    if (purchaserDSID != [v101 purchaserDSID])
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      LOBYTE(self) = 0;
      *(&v182[5] + 4) = 1uLL;
      LODWORD(v182[5]) = 1;
      v182[3] = 0x100000001;
      v182[4] = 0x100000001;
      v182[2] = 0x100000001;
      v182[1] = 0x100000001;
      v182[0] = 0x100000001;
      v10 = 1;
      v181 = 1;
      v11 = 1;
      goto LABEL_140;
    }

    redownloadParams = [(ASDPurchaseHistoryApp *)self redownloadParams];
    redownloadParams2 = [v101 redownloadParams];
    v116 = redownloadParams;
    LODWORD(v182[7]) = redownloadParams != redownloadParams2;
    if (redownloadParams != redownloadParams2)
    {
      redownloadParams3 = [(ASDPurchaseHistoryApp *)self redownloadParams];
      redownloadParams4 = [v101 redownloadParams];
      v112 = redownloadParams3;
      if (![redownloadParams3 isEqual:redownloadParams4])
      {
        v13 = 0;
        v182[6] = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000001;
        v182[0] = 0x100000001;
        v10 = 1;
        v181 = 1;
        v11 = 1;
        v12 = 1;
        LODWORD(v182[7]) = 1;
        goto LABEL_140;
      }
    }

    requiredCapabilities = [(ASDPurchaseHistoryApp *)self requiredCapabilities];
    requiredCapabilities2 = [v101 requiredCapabilities];
    v114 = requiredCapabilities;
    HIDWORD(v182[6]) = requiredCapabilities != requiredCapabilities2;
    if (requiredCapabilities != requiredCapabilities2)
    {
      requiredCapabilities3 = [(ASDPurchaseHistoryApp *)self requiredCapabilities];
      requiredCapabilities4 = [v101 requiredCapabilities];
      v110 = requiredCapabilities3;
      if (![requiredCapabilities3 isEqual:requiredCapabilities4])
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        v182[6] = 0x100000000;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000001;
        v182[0] = 0x100000001;
        v10 = 1;
        v181 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        goto LABEL_140;
      }
    }

    appCapabilities = [(ASDPurchaseHistoryApp *)self appCapabilities];
    appCapabilities2 = [v101 appCapabilities];
    v108 = appCapabilities;
    LODWORD(v182[6]) = appCapabilities != appCapabilities2;
    if (appCapabilities != appCapabilities2)
    {
      appCapabilities3 = [(ASDPurchaseHistoryApp *)self appCapabilities];
      appCapabilities4 = [v101 appCapabilities];
      v106 = appCapabilities3;
      if (![appCapabilities3 isEqual:appCapabilities4])
      {
        v15 = 0;
        v16 = 0;
        LOBYTE(self) = 0;
        v182[5] = 0x100000001;
        v182[3] = 0x100000001;
        v182[4] = 0x100000001;
        v182[2] = 0x100000001;
        v182[1] = 0x100000001;
        v182[0] = 0x100000001;
        v10 = 1;
        v181 = 1;
        v11 = 1;
        v12 = 1;
        v13 = 1;
        v14 = 1;
        LODWORD(v182[6]) = 1;
        goto LABEL_140;
      }
    }

    isCustomBrowserEngineApp = [(ASDPurchaseHistoryApp *)self isCustomBrowserEngineApp];
    if (isCustomBrowserEngineApp != [v101 isCustomBrowserEngineApp] || (v84 = -[ASDPurchaseHistoryApp storeItemID](self, "storeItemID"), v84 != objc_msgSend(v101, "storeItemID")) || (v85 = -[ASDPurchaseHistoryApp supportsIPad](self, "supportsIPad"), v85 != objc_msgSend(v101, "supportsIPad")) || (v86 = -[ASDPurchaseHistoryApp supportsIPhone](self, "supportsIPhone"), v86 != objc_msgSend(v101, "supportsIPhone")) || (v87 = -[ASDPurchaseHistoryApp supportsMac](self, "supportsMac"), v87 != objc_msgSend(v101, "supportsMac")) || (v88 = -[ASDPurchaseHistoryApp supportsRealityDevice](self, "supportsRealityDevice"), v88 != objc_msgSend(v101, "supportsRealityDevice")))
    {
      v15 = 0;
      v16 = 0;
      LOBYTE(self) = 0;
      v182[5] = 0x100000001;
      v182[3] = 0x100000001;
      v182[4] = 0x100000001;
      v182[2] = 0x100000001;
      v182[1] = 0x100000001;
      v182[0] = 0x100000001;
      v10 = 1;
      v181 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      goto LABEL_140;
    }

    title = [(ASDPurchaseHistoryApp *)self title];
    title2 = [v101 title];
    v104 = title;
    v176 = title != title2;
    if (title == title2 || (-[ASDPurchaseHistoryApp title](self, "title"), v90 = objc_claimAutoreleasedReturnValue(), [v101 title], v102 = v90, v100 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v90, "isEqual:")))
    {
      watchAppDeliveredIniOSApp = [(ASDPurchaseHistoryApp *)self watchAppDeliveredIniOSApp];
      if (watchAppDeliveredIniOSApp == [v101 watchAppDeliveredIniOSApp])
      {
        watchAppRunsIndependently = [(ASDPurchaseHistoryApp *)self watchAppRunsIndependently];
        if (watchAppRunsIndependently == [v101 watchAppRunsIndependently])
        {
          watchOnly = [(ASDPurchaseHistoryApp *)self watchOnly];
          if (watchOnly == [v101 watchOnly])
          {
            supportsLayeredImage = [(ASDPurchaseHistoryApp *)self supportsLayeredImage];
            if (supportsLayeredImage == [v101 supportsLayeredImage])
            {
              hasP3 = [(ASDPurchaseHistoryApp *)self hasP3];
              if (hasP3 == [v101 hasP3])
              {
                optedInForMacOSEligibility = [(ASDPurchaseHistoryApp *)self optedInForMacOSEligibility];
                if (optedInForMacOSEligibility == [v101 optedInForMacOSEligibility])
                {
                  optedInForXROSEligibility = [(ASDPurchaseHistoryApp *)self optedInForXROSEligibility];
                  if (optedInForXROSEligibility == [v101 optedInForXROSEligibility])
                  {
                    currentlyOptedInForMacOSEligibility = [(ASDPurchaseHistoryApp *)self currentlyOptedInForMacOSEligibility];
                    if (currentlyOptedInForMacOSEligibility == [v101 currentlyOptedInForMacOSEligibility])
                    {
                      currentlyOptedInForXROSEligibility = [(ASDPurchaseHistoryApp *)self currentlyOptedInForXROSEligibility];
                      v5 = v101;
                      LODWORD(self) = currentlyOptedInForXROSEligibility ^ [v101 currentlyOptedInForXROSEligibility] ^ 1;
                      v182[5] = 0x100000001;
                      v182[3] = 0x100000001;
                      v182[4] = 0x100000001;
                      v182[2] = 0x100000001;
                      v182[1] = 0x100000001;
                      v182[0] = 0x100000001;
                      v10 = 1;
                      v181 = 1;
                      v11 = 1;
                      v12 = 1;
                      v13 = 1;
                      v14 = 1;
                      v15 = 1;
                      v16 = v176;
                      goto LABEL_186;
                    }
                  }
                }
              }
            }
          }
        }
      }

      LOBYTE(self) = 0;
      v182[5] = 0x100000001;
      v182[3] = 0x100000001;
      v182[4] = 0x100000001;
      v182[2] = 0x100000001;
      v182[1] = 0x100000001;
      v182[0] = 0x100000001;
      v10 = 1;
      v181 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = v176;
    }

    else
    {
      LOBYTE(self) = 0;
      v182[5] = 0x100000001;
      v182[3] = 0x100000001;
      v182[4] = 0x100000001;
      v182[2] = 0x100000001;
      v182[1] = 0x100000001;
      v182[0] = 0x100000001;
      v10 = 1;
      v181 = 1;
      v11 = 1;
      v12 = 1;
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
    }

    v5 = v101;
LABEL_186:
    v9 = v100;
    goto LABEL_26;
  }

  memset(v182, 0, sizeof(v182));
  v10 = 0;
  memset(v183, 0, sizeof(v183));
  v181 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  LOBYTE(self) = 0;
LABEL_26:
  if (v16)
  {
    v175 = equalCopy;
    v34 = v5;
    selfCopy = self;
    self = selfCopy2;
    v36 = bundleID;
    v37 = v14;
    v38 = v10;
    v39 = v13;
    v40 = v11;
    v41 = v12;
    v42 = v15;

    v15 = v42;
    v12 = v41;
    v11 = v40;
    v13 = v39;
    v10 = v38;
    v14 = v37;
    bundleID = v36;
    selfCopy2 = self;
    LOBYTE(self) = selfCopy;
    v5 = v34;
    equalCopy = v175;
  }

  if (v15)
  {
  }

  if (LODWORD(v182[6]))
  {
  }

  if (v14)
  {
  }

  if (HIDWORD(v182[6]))
  {
  }

  if (v13)
  {
  }

  if (LODWORD(v182[7]))
  {
  }

  if (v12)
  {
  }

  if (LODWORD(v183[0]))
  {
  }

  if (v11)
  {
  }

  if (HIDWORD(v183[0]))
  {
  }

  if (v181)
  {
  }

  if (LODWORD(v183[1]))
  {
  }

  if (LODWORD(v182[1]))
  {
  }

  if (HIDWORD(v183[1]))
  {
  }

  if (HIDWORD(v182[0]))
  {
  }

  if (LODWORD(v183[2]))
  {
  }

  if (v10)
  {
  }

  if (HIDWORD(v183[2]))
  {
  }

  if (LODWORD(v182[0]))
  {
  }

  if (LODWORD(v183[3]))
  {
  }

  if (HIDWORD(v182[1]))
  {
  }

  if (HIDWORD(v183[3]))
  {
  }

  if (LODWORD(v182[2]))
  {
  }

  if (HIDWORD(v182[7]))
  {
  }

  if (HIDWORD(v182[2]))
  {
  }

  if (LODWORD(v182[8]))
  {
  }

  if (LODWORD(v182[4]))
  {
  }

  if (HIDWORD(v182[8]))
  {
  }

  if (HIDWORD(v182[4]))
  {
  }

  if (LODWORD(v182[9]))
  {
  }

  if (LODWORD(v182[3]))
  {
  }

  if (HIDWORD(v182[9]))
  {
  }

  if (HIDWORD(v182[3]))
  {
  }

  if (LODWORD(v182[10]))
  {
  }

  if (LODWORD(v182[5]))
  {
  }

  if (HIDWORD(v182[10]))
  {
  }

  if (HIDWORD(v182[5]))
  {
  }

  if (bundleID != selfCopy2)
  {
  }

LABEL_105:
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if (self)
  {
    if (self->_currentlyOptedInForMacOSEligibility)
    {
      v4 = 0x10000;
    }

    else
    {
      v4 = 0;
    }

    if (self->_currentlyOptedInForXROSEligibility)
    {
      v4 |= 0x200000u;
    }

    v5 = v4 | self->_familyShared;
    if (self->_firstParty)
    {
      v5 |= 2u;
    }

    if (self->_hasMessagesExtension)
    {
      v5 |= 4u;
    }

    if (self->_hasP3)
    {
      v5 |= 0x2000u;
    }

    if (self->_hidden)
    {
      v5 |= 8u;
    }

    if (self->_hiddenFromSpringboard)
    {
      v5 |= 0x10u;
    }

    if (self->_isArcade)
    {
      v5 |= 0x2000000u;
    }

    if (self->_is32BitOnly)
    {
      v5 |= 0x20u;
    }

    if (self->_isEligibleForGamesApp)
    {
      v5 |= 0x4000000u;
    }

    if (self->_isPreorder)
    {
      v5 |= 0x40u;
    }

    if (self->_optedInForMacOSEligibility)
    {
      v5 |= 0x4000u;
    }

    if (self->_optedInForXROSEligibility)
    {
      v5 |= 0x400000u;
    }

    if (self->_requiresRosetta)
    {
      v5 |= 0x80000u;
    }

    if (self->_runsOnAppleSilicon)
    {
      v5 |= 0x40000u;
    }

    if (self->_runsOnIntel)
    {
      v5 |= 0x20000u;
    }

    if (self->_supportsIPad)
    {
      v5 |= 0x80u;
    }

    if (self->_supportsIPhone)
    {
      v5 |= 0x100u;
    }

    if (self->_supportsLayeredImage)
    {
      v5 |= 0x1000u;
    }

    if (self->_supportsMac)
    {
      v5 |= 0x8000u;
    }

    if (self->_supportsRealityDevice)
    {
      v5 |= 0x800000u;
    }

    if (self->_watchAppDeliveredIniOSApp)
    {
      v5 |= 0x200u;
    }

    if (self->_watchAppRunsIndependently)
    {
      v5 |= 0x400u;
    }

    if (self->_watchOnly)
    {
      v5 |= 0x800u;
    }

    if (self->_customBrowserEngineApp)
    {
      v6 = v5 | 0x1000000;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  coderCopy = coder;
  [coderCopy encodeInt32:v6 forKey:@"A"];
  [coderCopy encodeObject:self->_bundleID forKey:@"B"];
  [coderCopy encodeObject:self->_circularIconURLString forKey:@"T"];
  [coderCopy encodeInteger:self->_contentRatingFlags forKey:@"C"];
  [coderCopy encodeObject:self->_datePurchased forKey:@"D"];
  [coderCopy encodeObject:self->_developerName forKey:@"E"];
  [coderCopy encodeObject:self->_iconURLString forKey:@"F"];
  [coderCopy encodeObject:self->_appIconArtworkURLString forKey:@"AB"];
  [coderCopy encodeObject:self->_appIconArtworkToken forKey:@"AC"];
  [coderCopy encodeObject:self->_appIconCompatibleArtworkURLString forKey:@"AD"];
  [coderCopy encodeObject:self->_circularAppIconArtworkURLString forKey:@"AE"];
  [coderCopy encodeObject:self->_circularAppIconArtworkToken forKey:@"AF"];
  [coderCopy encodeObject:self->_circularAppIconCompatibleArtworkURLString forKey:@"AG"];
  [coderCopy encodeObject:self->_longTitle forKey:@"G"];
  [coderCopy encodeInt32:self->_mediaKind forKey:@"U"];
  [coderCopy encodeObject:self->_ovalIconURLString forKey:@"H"];
  [coderCopy encodeObject:self->_preflightPackageURL forKey:@"I"];
  [coderCopy encodeInt64:self->_purchaserDSID forKey:@"J"];
  [coderCopy encodeObject:self->_redownloadParams forKey:@"K"];
  [coderCopy encodeObject:self->_requiredCapabilities forKey:@"L"];
  [coderCopy encodeInt64:self->_storeItemID forKey:@"M"];
  [coderCopy encodeInt32:self->_purchaseToken forKey:@"N"];
  [coderCopy encodeInt64:self->_lockerItemID forKey:@"O"];
  [coderCopy encodeObject:self->_productURL forKey:@"P"];
  [coderCopy encodeInt64:self->_genreID forKey:@"Q"];
  [coderCopy encodeObject:self->_genreName forKey:@"R"];
  [coderCopy encodeObject:self->_title forKey:@"S"];
  [coderCopy encodeObject:self->_appCapabilities forKey:@"Z"];
}

- (ASDPurchaseHistoryApp)initWithCoder:(id)coder
{
  v54[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = ASDPurchaseHistoryApp;
  v5 = [(ASDPurchaseHistoryApp *)&v53 init];
  if (v5)
  {
    v6 = [coderCopy decodeInt32ForKey:@"A"];
    v5[8] = v6 & 1;
    v5[9] = (v6 & 2) != 0;
    v5[10] = (v6 & 4) != 0;
    v5[11] = (v6 & 0x2000) != 0;
    v5[12] = (v6 & 8) != 0;
    v5[13] = (v6 & 0x10) != 0;
    v5[15] = (v6 & 0x2000000) != 0;
    v5[16] = (v6 & 0x20) != 0;
    v5[17] = (v6 & 0x4000000) != 0;
    v5[18] = (v6 & 0x40) != 0;
    v7 = vdupq_n_s32(v6);
    *(v5 + 19) = vuzp1_s8(vand_s8(vmovn_s32(vshlq_u32(v7, xmmword_1B82B0270)), 0x1000100010001), *v7.i8).u32[0];
    v5[24] = (v6 & 0x80000) != 0;
    v5[26] = (v6 & 0x40000) != 0;
    v5[25] = (v6 & 0x20000) != 0;
    v5[27] = (v6 & 0x80) != 0;
    *v7.i8 = vand_s8(vmovn_s32(vshlq_u32(v7, xmmword_1B82B0280)), 0x1000100010001);
    *(v5 + 7) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
    v5[32] = (v6 & 0x200) != 0;
    v5[33] = (v6 & 0x400) != 0;
    v5[34] = (v6 & 0x800) != 0;
    v5[14] = HIBYTE(v6) & 1;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    v9 = *(v5 + 7);
    *(v5 + 7) = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"T"];
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    *(v5 + 9) = [coderCopy decodeIntegerForKey:@"C"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"D"];
    v13 = *(v5 + 10);
    *(v5 + 10) = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    v15 = *(v5 + 11);
    *(v5 + 11) = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"F"];
    v17 = *(v5 + 14);
    *(v5 + 14) = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AB"];
    v19 = *(v5 + 15);
    *(v5 + 15) = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AC"];
    v21 = *(v5 + 16);
    *(v5 + 16) = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AD"];
    v23 = *(v5 + 17);
    *(v5 + 17) = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AE"];
    v25 = *(v5 + 18);
    *(v5 + 18) = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AF"];
    v27 = *(v5 + 19);
    *(v5 + 19) = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AG"];
    v29 = *(v5 + 20);
    *(v5 + 20) = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"G"];
    v31 = *(v5 + 21);
    *(v5 + 21) = v30;

    *(v5 + 9) = [coderCopy decodeInt32ForKey:@"U"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"H"];
    v33 = *(v5 + 23);
    *(v5 + 23) = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    v35 = *(v5 + 24);
    *(v5 + 24) = v34;

    *(v5 + 26) = [coderCopy decodeInt64ForKey:@"J"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    v37 = *(v5 + 27);
    *(v5 + 27) = v36;

    v38 = MEMORY[0x1E695DFD8];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v40 = [v38 setWithArray:v39];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"L"];
    v42 = *(v5 + 28);
    *(v5 + 28) = v41;

    *(v5 + 29) = [coderCopy decodeInt64ForKey:@"M"];
    *(v5 + 10) = [coderCopy decodeInt32ForKey:@"N"];
    *(v5 + 31) = [coderCopy decodeInt64ForKey:@"O"];
    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"P"];
    v44 = *(v5 + 25);
    *(v5 + 25) = v43;

    *(v5 + 12) = [coderCopy decodeInt64ForKey:@"Q"];
    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"R"];
    v46 = *(v5 + 13);
    *(v5 + 13) = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    v48 = *(v5 + 30);
    *(v5 + 30) = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Z"];
    v50 = *(v5 + 6);
    *(v5 + 6) = v49;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

@end