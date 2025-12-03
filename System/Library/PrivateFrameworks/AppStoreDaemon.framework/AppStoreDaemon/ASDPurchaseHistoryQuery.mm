@interface ASDPurchaseHistoryQuery
- (ASDPurchaseHistoryQuery)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurchaseHistoryQuery

- (void)encodeWithCoder:(id)coder
{
  accountID = self->_accountID;
  coderCopy = coder;
  [coderCopy encodeInt64:accountID forKey:@"A"];
  [coderCopy encodeInteger:self->_isFirstParty forKey:@"B"];
  [coderCopy encodeInteger:self->_isHidden forKey:@"C"];
  [coderCopy encodeInteger:self->_optedInForMacOSEligibility forKey:@"H"];
  [coderCopy encodeInteger:self->_optedInForXROSEligibility forKey:@"I"];
  [coderCopy encodeInteger:self->_isEligibleForGamesApp forKey:@"O"];
  [coderCopy encodeInteger:self->_isPreorder forKey:@"D"];
  [coderCopy encodeObject:self->_searchTerm forKey:@"E"];
  [coderCopy encodeObject:self->_sortOptions forKey:@"F"];
  [coderCopy encodeInteger:self->_supportsRealityDevice forKey:@"L"];
  [coderCopy encodeObject:self->_storeIDs forKey:@"G"];
  [coderCopy encodeInteger:self->_currentlyOptedInForMacOSEligibility forKey:@"J"];
  [coderCopy encodeInteger:self->_currentlyOptedInForXROSEligibility forKey:@"K"];
  [coderCopy encodeObject:self->_bundleIDs forKey:@"M"];
  [coderCopy encodeInteger:self->_includeArcade forKey:@"N"];
  [coderCopy encodeInteger:self->_supportsCurrentDevice forKey:@"P"];
  [coderCopy encodeInteger:-[NSNumber integerValue](self->_genreID forKey:{"integerValue"), @"Q"}];
  [coderCopy encodeInteger:self->_properties forKey:@"R"];
}

- (ASDPurchaseHistoryQuery)initWithCoder:(id)coder
{
  v31[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = ASDPurchaseHistoryQuery;
  v5 = [(ASDPurchaseHistoryQuery *)&v28 init];
  if (v5)
  {
    v5->_accountID = [coderCopy decodeInt64ForKey:@"A"];
    v5->_isFirstParty = [coderCopy decodeIntegerForKey:@"B"];
    v5->_isHidden = [coderCopy decodeIntegerForKey:@"C"];
    v5->_optedInForMacOSEligibility = [coderCopy decodeIntegerForKey:@"H"];
    v5->_optedInForXROSEligibility = [coderCopy decodeIntegerForKey:@"I"];
    v5->_isEligibleForGamesApp = [coderCopy decodeIntegerForKey:@"O"];
    v5->_isPreorder = [coderCopy decodeIntegerForKey:@"D"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    searchTerm = v5->_searchTerm;
    v5->_searchTerm = v6;

    v8 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"F"];
    sortOptions = v5->_sortOptions;
    v5->_sortOptions = v11;

    v5->_supportsRealityDevice = [coderCopy decodeIntegerForKey:@"L"];
    v13 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"G"];
    storeIDs = v5->_storeIDs;
    v5->_storeIDs = v16;

    v5->_currentlyOptedInForMacOSEligibility = [coderCopy decodeIntegerForKey:@"J"];
    v5->_currentlyOptedInForXROSEligibility = [coderCopy decodeIntegerForKey:@"K"];
    v18 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"M"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v21;

    v5->_includeArcade = [coderCopy decodeIntegerForKey:@"N"];
    v5->_supportsCurrentDevice = [coderCopy decodeIntegerForKey:@"P"];
    v23 = [coderCopy decodeIntegerForKey:@"Q"];
    if (v23 >= 1)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
      genreID = v5->_genreID;
      v5->_genreID = v24;
    }

    v5->_properties = [coderCopy decodeIntegerForKey:@"R"];
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"accountID = %lld", -[ASDPurchaseHistoryQuery accountID](self, "accountID")];
  [v3 addObject:v4];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isFirstParty = %ld", -[ASDPurchaseHistoryQuery isFirstParty](self, "isFirstParty")];
  [v3 addObject:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isHidden = %ld", -[ASDPurchaseHistoryQuery isHidden](self, "isHidden")];
  [v3 addObject:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isPreorder = %ld", -[ASDPurchaseHistoryQuery isPreorder](self, "isPreorder")];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  searchTerm = [(ASDPurchaseHistoryQuery *)self searchTerm];
  v10 = [v8 stringWithFormat:@"searchTerm = %@", searchTerm];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  storeIDs = [(ASDPurchaseHistoryQuery *)self storeIDs];
  v13 = [v11 stringWithFormat:@"storeIDs = %@", storeIDs];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  bundleIDs = [(ASDPurchaseHistoryQuery *)self bundleIDs];
  v16 = [v14 stringWithFormat:@"bundleIDs = %@", bundleIDs];
  [v3 addObject:v16];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"includeArcade = %ld", -[ASDPurchaseHistoryQuery includeArcade](self, "includeArcade")];
  [v3 addObject:v17];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"supportsCurrentDevice = %ld", -[ASDPurchaseHistoryQuery supportsCurrentDevice](self, "supportsCurrentDevice")];
  [v3 addObject:v18];

  genreID = [(ASDPurchaseHistoryQuery *)self genreID];
  v20 = genreID;
  if (genreID)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"genreID = %ld", objc_msgSend(genreID, "longValue")];
    [v3 addObject:v21];
  }

  v22 = MEMORY[0x1E696AEC0];
  v27.receiver = self;
  v27.super_class = ASDPurchaseHistoryQuery;
  v23 = [(ASDPurchaseHistoryQuery *)&v27 description];
  v24 = [v3 componentsJoinedByString:@" "];;
  v25 = [v22 stringWithFormat:@"%@: {%@}", v23, v24];

  return v25;
}

@end