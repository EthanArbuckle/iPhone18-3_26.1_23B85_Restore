@interface ASDPurchaseHistoryApp
- (ASDPurchaseHistoryApp)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurchaseHistoryApp

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ASDPurchaseHistoryApp *)self title];
  v7 = [(ASDPurchaseHistoryApp *)self bundleID];
  v8 = [v3 stringWithFormat:@"<%@: %p> '%@' %@", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(self) = 0;
    goto LABEL_105;
  }

  v5 = v4;
  v6 = [(ASDPurchaseHistoryApp *)self bundleID];
  v7 = [v5 bundleID];
  if (v6 == v7 || (-[ASDPurchaseHistoryApp bundleID](self, "bundleID"), v8 = objc_claimAutoreleasedReturnValue(), [v5 bundleID], v179 = objc_claimAutoreleasedReturnValue(), v180 = v8, objc_msgSend(v8, "isEqual:", v179)))
  {
    v17 = [(ASDPurchaseHistoryApp *)self circularIconURLString];
    v177 = [v5 circularIconURLString];
    v178 = v17;
    v18 = v17 != v177;
    if (v17 != v177)
    {
      v19 = [(ASDPurchaseHistoryApp *)self circularIconURLString];
      [v5 circularIconURLString];
      v173 = v174 = v19;
      if (![v19 isEqual:?])
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

    v20 = [(ASDPurchaseHistoryApp *)self contentRatingFlags];
    HIDWORD(v182[10]) = v18;
    if (v20 != [v5 contentRatingFlags])
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

    v21 = [(ASDPurchaseHistoryApp *)self datePurchased];
    [v5 datePurchased];
    v171 = v172 = v21;
    v22 = v21 != v171;
    if (v21 != v171)
    {
      v23 = [(ASDPurchaseHistoryApp *)self datePurchased];
      [v5 datePurchased];
      v167 = v168 = v23;
      if (![v23 isEqual:?])
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

    v24 = [(ASDPurchaseHistoryApp *)self developerName];
    [v5 developerName];
    v169 = v170 = v24;
    v25 = v24 == v169;
    v26 = v24 != v169;
    LODWORD(v182[10]) = v22;
    if (v25)
    {
      HIDWORD(v182[9]) = v26;
    }

    else
    {
      v27 = [(ASDPurchaseHistoryApp *)self developerName];
      [v5 developerName];
      v165 = v166 = v27;
      if (![v27 isEqual:?])
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

    v28 = [(ASDPurchaseHistoryApp *)self isFamilyShared];
    if (v28 != [v5 isFamilyShared] || (v29 = -[ASDPurchaseHistoryApp isFirstParty](self, "isFirstParty"), v29 != objc_msgSend(v5, "isFirstParty")) || (v30 = -[ASDPurchaseHistoryApp genreID](self, "genreID"), v30 != objc_msgSend(v5, "genreID")))
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

    v31 = [(ASDPurchaseHistoryApp *)self genreName];
    [v5 genreName];
    v163 = v164 = v31;
    v25 = v31 == v163;
    v32 = v31 != v163;
    if (v25)
    {
      LODWORD(v182[9]) = v32;
    }

    else
    {
      v33 = [(ASDPurchaseHistoryApp *)self genreName];
      v161 = [v5 genreName];
      v162 = v33;
      if (![v33 isEqual:v161])
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

    v44 = [(ASDPurchaseHistoryApp *)self hasMessagesExtension];
    if (v44 != [v5 hasMessagesExtension] || (v45 = -[ASDPurchaseHistoryApp isHidden](self, "isHidden"), v45 != objc_msgSend(v5, "isHidden")) || (v46 = -[ASDPurchaseHistoryApp isHiddenFromSpringboard](self, "isHiddenFromSpringboard"), v46 != objc_msgSend(v5, "isHiddenFromSpringboard")))
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

    v47 = [(ASDPurchaseHistoryApp *)self iconURLString];
    v159 = [v5 iconURLString];
    v160 = v47;
    v25 = v47 == v159;
    v48 = v47 != v159;
    if (v25)
    {
      HIDWORD(v182[8]) = v48;
    }

    else
    {
      v49 = [(ASDPurchaseHistoryApp *)self iconURLString];
      v155 = [v5 iconURLString];
      v156 = v49;
      if (![v49 isEqual:v155])
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

    v50 = [(ASDPurchaseHistoryApp *)self appIconArtworkURLString];
    v157 = [v5 appIconArtworkURLString];
    v158 = v50;
    if (v50 != v157)
    {
      v51 = [(ASDPurchaseHistoryApp *)self appIconArtworkURLString];
      v151 = [v5 appIconArtworkURLString];
      v152 = v51;
      if (![v51 isEqual:v151])
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

    v52 = [(ASDPurchaseHistoryApp *)self appIconArtworkToken];
    v153 = [v5 appIconArtworkToken];
    v154 = v52;
    v25 = v52 == v153;
    v53 = v52 != v153;
    LODWORD(v182[8]) = v50 != v157;
    if (!v25)
    {
      v54 = [(ASDPurchaseHistoryApp *)self appIconArtworkToken];
      v147 = [v5 appIconArtworkToken];
      v148 = v54;
      if (![v54 isEqual:v147])
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

    v55 = [(ASDPurchaseHistoryApp *)self appIconCompatibleArtworkURLString];
    v149 = [v5 appIconCompatibleArtworkURLString];
    v150 = v55;
    HIDWORD(v183[3]) = v55 != v149;
    HIDWORD(v182[7]) = v53;
    if (v55 != v149)
    {
      v56 = [(ASDPurchaseHistoryApp *)self appIconCompatibleArtworkURLString];
      v143 = [v5 appIconCompatibleArtworkURLString];
      v144 = v56;
      if (![v56 isEqual:v143])
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

    v57 = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkURLString];
    v145 = [v5 circularAppIconArtworkURLString];
    v146 = v57;
    LODWORD(v183[3]) = v57 != v145;
    if (v57 != v145)
    {
      v58 = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkURLString];
      v139 = [v5 circularAppIconArtworkURLString];
      v140 = v58;
      if (![v58 isEqual:v139])
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

    v59 = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkToken];
    v141 = [v5 circularAppIconArtworkToken];
    v142 = v59;
    HIDWORD(v183[2]) = v59 != v141;
    v101 = v5;
    if (v59 != v141)
    {
      v60 = [(ASDPurchaseHistoryApp *)self circularAppIconArtworkToken];
      v135 = [v5 circularAppIconArtworkToken];
      v136 = v60;
      if (![v60 isEqual:v135])
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

    v61 = [(ASDPurchaseHistoryApp *)self circularAppIconCompatibleArtworkURLString];
    v137 = [v5 circularAppIconCompatibleArtworkURLString];
    v138 = v61;
    LODWORD(v183[2]) = v61 != v137;
    if (v61 != v137)
    {
      v62 = [(ASDPurchaseHistoryApp *)self circularAppIconCompatibleArtworkURLString];
      v133 = [v5 circularAppIconCompatibleArtworkURLString];
      v134 = v62;
      if (![v62 isEqual:v133])
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

    v63 = [(ASDPurchaseHistoryApp *)self isArcade];
    if (v63 != [v5 isArcade] || (v64 = -[ASDPurchaseHistoryApp is32BitOnly](self, "is32BitOnly"), v64 != objc_msgSend(v5, "is32BitOnly")) || (v65 = -[ASDPurchaseHistoryApp isEligibleForGamesApp](self, "isEligibleForGamesApp"), v65 != objc_msgSend(v5, "isEligibleForGamesApp")) || (v66 = -[ASDPurchaseHistoryApp isPreorder](self, "isPreorder"), v66 != objc_msgSend(v5, "isPreorder")))
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

    v67 = [(ASDPurchaseHistoryApp *)self longTitle];
    v131 = [v5 longTitle];
    v132 = v67;
    HIDWORD(v183[1]) = v67 != v131;
    if (v67 != v131)
    {
      v68 = [(ASDPurchaseHistoryApp *)self longTitle];
      v129 = [v5 longTitle];
      v130 = v68;
      if (![v68 isEqual:v129])
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

    v69 = [(ASDPurchaseHistoryApp *)self mediaKind];
    if (v69 != [v5 mediaKind])
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

    v70 = [(ASDPurchaseHistoryApp *)self ovalIconURLString];
    v127 = [v5 ovalIconURLString];
    v128 = v70;
    LODWORD(v183[1]) = v70 != v127;
    if (v70 != v127)
    {
      v71 = [(ASDPurchaseHistoryApp *)self ovalIconURLString];
      v123 = [v5 ovalIconURLString];
      v124 = v71;
      if (![v71 isEqual:v123])
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

    v72 = [(ASDPurchaseHistoryApp *)self preflightPackageURL];
    v125 = [v5 preflightPackageURL];
    v126 = v72;
    HIDWORD(v183[0]) = v72 != v125;
    if (v72 != v125)
    {
      v73 = [(ASDPurchaseHistoryApp *)self preflightPackageURL];
      v119 = [v5 preflightPackageURL];
      v120 = v73;
      if (![v73 isEqual:v119])
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

    v74 = [(ASDPurchaseHistoryApp *)self productURL];
    v121 = [v101 productURL];
    v122 = v74;
    LODWORD(v183[0]) = v74 != v121;
    if (v74 != v121)
    {
      v75 = [(ASDPurchaseHistoryApp *)self productURL];
      v117 = [v101 productURL];
      v118 = v75;
      if (![v75 isEqual:v117])
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

    v76 = [(ASDPurchaseHistoryApp *)self purchaserDSID];
    if (v76 != [v101 purchaserDSID])
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

    v77 = [(ASDPurchaseHistoryApp *)self redownloadParams];
    v115 = [v101 redownloadParams];
    v116 = v77;
    LODWORD(v182[7]) = v77 != v115;
    if (v77 != v115)
    {
      v78 = [(ASDPurchaseHistoryApp *)self redownloadParams];
      v111 = [v101 redownloadParams];
      v112 = v78;
      if (![v78 isEqual:v111])
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

    v79 = [(ASDPurchaseHistoryApp *)self requiredCapabilities];
    v113 = [v101 requiredCapabilities];
    v114 = v79;
    HIDWORD(v182[6]) = v79 != v113;
    if (v79 != v113)
    {
      v80 = [(ASDPurchaseHistoryApp *)self requiredCapabilities];
      v109 = [v101 requiredCapabilities];
      v110 = v80;
      if (![v80 isEqual:v109])
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

    v81 = [(ASDPurchaseHistoryApp *)self appCapabilities];
    v107 = [v101 appCapabilities];
    v108 = v81;
    LODWORD(v182[6]) = v81 != v107;
    if (v81 != v107)
    {
      v82 = [(ASDPurchaseHistoryApp *)self appCapabilities];
      v105 = [v101 appCapabilities];
      v106 = v82;
      if (![v82 isEqual:v105])
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

    v83 = [(ASDPurchaseHistoryApp *)self isCustomBrowserEngineApp];
    if (v83 != [v101 isCustomBrowserEngineApp] || (v84 = -[ASDPurchaseHistoryApp storeItemID](self, "storeItemID"), v84 != objc_msgSend(v101, "storeItemID")) || (v85 = -[ASDPurchaseHistoryApp supportsIPad](self, "supportsIPad"), v85 != objc_msgSend(v101, "supportsIPad")) || (v86 = -[ASDPurchaseHistoryApp supportsIPhone](self, "supportsIPhone"), v86 != objc_msgSend(v101, "supportsIPhone")) || (v87 = -[ASDPurchaseHistoryApp supportsMac](self, "supportsMac"), v87 != objc_msgSend(v101, "supportsMac")) || (v88 = -[ASDPurchaseHistoryApp supportsRealityDevice](self, "supportsRealityDevice"), v88 != objc_msgSend(v101, "supportsRealityDevice")))
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

    v89 = [(ASDPurchaseHistoryApp *)self title];
    v103 = [v101 title];
    v104 = v89;
    v176 = v89 != v103;
    if (v89 == v103 || (-[ASDPurchaseHistoryApp title](self, "title"), v90 = objc_claimAutoreleasedReturnValue(), [v101 title], v102 = v90, v100 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v90, "isEqual:")))
    {
      v91 = [(ASDPurchaseHistoryApp *)self watchAppDeliveredIniOSApp];
      if (v91 == [v101 watchAppDeliveredIniOSApp])
      {
        v92 = [(ASDPurchaseHistoryApp *)self watchAppRunsIndependently];
        if (v92 == [v101 watchAppRunsIndependently])
        {
          v93 = [(ASDPurchaseHistoryApp *)self watchOnly];
          if (v93 == [v101 watchOnly])
          {
            v94 = [(ASDPurchaseHistoryApp *)self supportsLayeredImage];
            if (v94 == [v101 supportsLayeredImage])
            {
              v95 = [(ASDPurchaseHistoryApp *)self hasP3];
              if (v95 == [v101 hasP3])
              {
                v96 = [(ASDPurchaseHistoryApp *)self optedInForMacOSEligibility];
                if (v96 == [v101 optedInForMacOSEligibility])
                {
                  v97 = [(ASDPurchaseHistoryApp *)self optedInForXROSEligibility];
                  if (v97 == [v101 optedInForXROSEligibility])
                  {
                    v98 = [(ASDPurchaseHistoryApp *)self currentlyOptedInForMacOSEligibility];
                    if (v98 == [v101 currentlyOptedInForMacOSEligibility])
                    {
                      v99 = [(ASDPurchaseHistoryApp *)self currentlyOptedInForXROSEligibility];
                      v5 = v101;
                      LODWORD(self) = v99 ^ [v101 currentlyOptedInForXROSEligibility] ^ 1;
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
    v175 = v4;
    v34 = v5;
    v35 = self;
    self = v7;
    v36 = v6;
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
    v6 = v36;
    v7 = self;
    LOBYTE(self) = v35;
    v5 = v34;
    v4 = v175;
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

  if (v6 != v7)
  {
  }

LABEL_105:
  return self;
}

- (void)encodeWithCoder:(id)a3
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

  v7 = a3;
  [v7 encodeInt32:v6 forKey:@"A"];
  [v7 encodeObject:self->_bundleID forKey:@"B"];
  [v7 encodeObject:self->_circularIconURLString forKey:@"T"];
  [v7 encodeInteger:self->_contentRatingFlags forKey:@"C"];
  [v7 encodeObject:self->_datePurchased forKey:@"D"];
  [v7 encodeObject:self->_developerName forKey:@"E"];
  [v7 encodeObject:self->_iconURLString forKey:@"F"];
  [v7 encodeObject:self->_appIconArtworkURLString forKey:@"AB"];
  [v7 encodeObject:self->_appIconArtworkToken forKey:@"AC"];
  [v7 encodeObject:self->_appIconCompatibleArtworkURLString forKey:@"AD"];
  [v7 encodeObject:self->_circularAppIconArtworkURLString forKey:@"AE"];
  [v7 encodeObject:self->_circularAppIconArtworkToken forKey:@"AF"];
  [v7 encodeObject:self->_circularAppIconCompatibleArtworkURLString forKey:@"AG"];
  [v7 encodeObject:self->_longTitle forKey:@"G"];
  [v7 encodeInt32:self->_mediaKind forKey:@"U"];
  [v7 encodeObject:self->_ovalIconURLString forKey:@"H"];
  [v7 encodeObject:self->_preflightPackageURL forKey:@"I"];
  [v7 encodeInt64:self->_purchaserDSID forKey:@"J"];
  [v7 encodeObject:self->_redownloadParams forKey:@"K"];
  [v7 encodeObject:self->_requiredCapabilities forKey:@"L"];
  [v7 encodeInt64:self->_storeItemID forKey:@"M"];
  [v7 encodeInt32:self->_purchaseToken forKey:@"N"];
  [v7 encodeInt64:self->_lockerItemID forKey:@"O"];
  [v7 encodeObject:self->_productURL forKey:@"P"];
  [v7 encodeInt64:self->_genreID forKey:@"Q"];
  [v7 encodeObject:self->_genreName forKey:@"R"];
  [v7 encodeObject:self->_title forKey:@"S"];
  [v7 encodeObject:self->_appCapabilities forKey:@"Z"];
}

- (ASDPurchaseHistoryApp)initWithCoder:(id)a3
{
  v54[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = ASDPurchaseHistoryApp;
  v5 = [(ASDPurchaseHistoryApp *)&v53 init];
  if (v5)
  {
    v6 = [v4 decodeInt32ForKey:@"A"];
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
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"B"];
    v9 = *(v5 + 7);
    *(v5 + 7) = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"T"];
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    *(v5 + 9) = [v4 decodeIntegerForKey:@"C"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"D"];
    v13 = *(v5 + 10);
    *(v5 + 10) = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    v15 = *(v5 + 11);
    *(v5 + 11) = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"F"];
    v17 = *(v5 + 14);
    *(v5 + 14) = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AB"];
    v19 = *(v5 + 15);
    *(v5 + 15) = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AC"];
    v21 = *(v5 + 16);
    *(v5 + 16) = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AD"];
    v23 = *(v5 + 17);
    *(v5 + 17) = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AE"];
    v25 = *(v5 + 18);
    *(v5 + 18) = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AF"];
    v27 = *(v5 + 19);
    *(v5 + 19) = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AG"];
    v29 = *(v5 + 20);
    *(v5 + 20) = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"G"];
    v31 = *(v5 + 21);
    *(v5 + 21) = v30;

    *(v5 + 9) = [v4 decodeInt32ForKey:@"U"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"H"];
    v33 = *(v5 + 23);
    *(v5 + 23) = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"I"];
    v35 = *(v5 + 24);
    *(v5 + 24) = v34;

    *(v5 + 26) = [v4 decodeInt64ForKey:@"J"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"K"];
    v37 = *(v5 + 27);
    *(v5 + 27) = v36;

    v38 = MEMORY[0x1E695DFD8];
    v54[0] = objc_opt_class();
    v54[1] = objc_opt_class();
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
    v40 = [v38 setWithArray:v39];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"L"];
    v42 = *(v5 + 28);
    *(v5 + 28) = v41;

    *(v5 + 29) = [v4 decodeInt64ForKey:@"M"];
    *(v5 + 10) = [v4 decodeInt32ForKey:@"N"];
    *(v5 + 31) = [v4 decodeInt64ForKey:@"O"];
    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"P"];
    v44 = *(v5 + 25);
    *(v5 + 25) = v43;

    *(v5 + 12) = [v4 decodeInt64ForKey:@"Q"];
    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"R"];
    v46 = *(v5 + 13);
    *(v5 + 13) = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"S"];
    v48 = *(v5 + 30);
    *(v5 + 30) = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Z"];
    v50 = *(v5 + 6);
    *(v5 + 6) = v49;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

@end