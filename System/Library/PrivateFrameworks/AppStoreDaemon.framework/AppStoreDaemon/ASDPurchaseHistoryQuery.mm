@interface ASDPurchaseHistoryQuery
- (ASDPurchaseHistoryQuery)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurchaseHistoryQuery

- (void)encodeWithCoder:(id)a3
{
  accountID = self->_accountID;
  v5 = a3;
  [v5 encodeInt64:accountID forKey:@"A"];
  [v5 encodeInteger:self->_isFirstParty forKey:@"B"];
  [v5 encodeInteger:self->_isHidden forKey:@"C"];
  [v5 encodeInteger:self->_optedInForMacOSEligibility forKey:@"H"];
  [v5 encodeInteger:self->_optedInForXROSEligibility forKey:@"I"];
  [v5 encodeInteger:self->_isEligibleForGamesApp forKey:@"O"];
  [v5 encodeInteger:self->_isPreorder forKey:@"D"];
  [v5 encodeObject:self->_searchTerm forKey:@"E"];
  [v5 encodeObject:self->_sortOptions forKey:@"F"];
  [v5 encodeInteger:self->_supportsRealityDevice forKey:@"L"];
  [v5 encodeObject:self->_storeIDs forKey:@"G"];
  [v5 encodeInteger:self->_currentlyOptedInForMacOSEligibility forKey:@"J"];
  [v5 encodeInteger:self->_currentlyOptedInForXROSEligibility forKey:@"K"];
  [v5 encodeObject:self->_bundleIDs forKey:@"M"];
  [v5 encodeInteger:self->_includeArcade forKey:@"N"];
  [v5 encodeInteger:self->_supportsCurrentDevice forKey:@"P"];
  [v5 encodeInteger:-[NSNumber integerValue](self->_genreID forKey:{"integerValue"), @"Q"}];
  [v5 encodeInteger:self->_properties forKey:@"R"];
}

- (ASDPurchaseHistoryQuery)initWithCoder:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ASDPurchaseHistoryQuery;
  v5 = [(ASDPurchaseHistoryQuery *)&v28 init];
  if (v5)
  {
    v5->_accountID = [v4 decodeInt64ForKey:@"A"];
    v5->_isFirstParty = [v4 decodeIntegerForKey:@"B"];
    v5->_isHidden = [v4 decodeIntegerForKey:@"C"];
    v5->_optedInForMacOSEligibility = [v4 decodeIntegerForKey:@"H"];
    v5->_optedInForXROSEligibility = [v4 decodeIntegerForKey:@"I"];
    v5->_isEligibleForGamesApp = [v4 decodeIntegerForKey:@"O"];
    v5->_isPreorder = [v4 decodeIntegerForKey:@"D"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"E"];
    searchTerm = v5->_searchTerm;
    v5->_searchTerm = v6;

    v8 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"F"];
    sortOptions = v5->_sortOptions;
    v5->_sortOptions = v11;

    v5->_supportsRealityDevice = [v4 decodeIntegerForKey:@"L"];
    v13 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"G"];
    storeIDs = v5->_storeIDs;
    v5->_storeIDs = v16;

    v5->_currentlyOptedInForMacOSEligibility = [v4 decodeIntegerForKey:@"J"];
    v5->_currentlyOptedInForXROSEligibility = [v4 decodeIntegerForKey:@"K"];
    v18 = MEMORY[0x1E695DFD8];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v20 = [v18 setWithArray:v19];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"M"];
    bundleIDs = v5->_bundleIDs;
    v5->_bundleIDs = v21;

    v5->_includeArcade = [v4 decodeIntegerForKey:@"N"];
    v5->_supportsCurrentDevice = [v4 decodeIntegerForKey:@"P"];
    v23 = [v4 decodeIntegerForKey:@"Q"];
    if (v23 >= 1)
    {
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
      genreID = v5->_genreID;
      v5->_genreID = v24;
    }

    v5->_properties = [v4 decodeIntegerForKey:@"R"];
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
  v9 = [(ASDPurchaseHistoryQuery *)self searchTerm];
  v10 = [v8 stringWithFormat:@"searchTerm = %@", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(ASDPurchaseHistoryQuery *)self storeIDs];
  v13 = [v11 stringWithFormat:@"storeIDs = %@", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(ASDPurchaseHistoryQuery *)self bundleIDs];
  v16 = [v14 stringWithFormat:@"bundleIDs = %@", v15];
  [v3 addObject:v16];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"includeArcade = %ld", -[ASDPurchaseHistoryQuery includeArcade](self, "includeArcade")];
  [v3 addObject:v17];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"supportsCurrentDevice = %ld", -[ASDPurchaseHistoryQuery supportsCurrentDevice](self, "supportsCurrentDevice")];
  [v3 addObject:v18];

  v19 = [(ASDPurchaseHistoryQuery *)self genreID];
  v20 = v19;
  if (v19)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"genreID = %ld", objc_msgSend(v19, "longValue")];
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