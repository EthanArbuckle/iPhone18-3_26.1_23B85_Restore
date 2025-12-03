@interface AMSSubscriptionEntitlement
- (BOOL)isEqual:(id)equal;
- (id)exportObject;
@end

@implementation AMSSubscriptionEntitlement

- (id)exportObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement autoRenewEnabled](self, "autoRenewEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"autoRenewEnabled"];

  chargeStoreFrontID = [(AMSSubscriptionEntitlement *)self chargeStoreFrontID];
  [v3 setObject:chargeStoreFrontID forKeyedSubscript:@"chargeStoreFrontID"];

  v6 = MEMORY[0x1E696AD98];
  expiration = [(AMSSubscriptionEntitlement *)self expiration];
  [expiration timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"expiration"];

  entitlementOriginType = [(AMSSubscriptionEntitlement *)self entitlementOriginType];
  [v3 setObject:entitlementOriginType forKeyedSubscript:@"entitlementOriginType"];

  entitlementSourceAdamId = [(AMSSubscriptionEntitlement *)self entitlementSourceAdamId];
  v11 = entitlementSourceAdamId;
  if (entitlementSourceAdamId)
  {
    v12 = entitlementSourceAdamId;
  }

  else
  {
    v12 = &unk_1F07799E8;
  }

  [v3 setObject:v12 forKeyedSubscript:@"entitlementSourceAdamId"];

  externalSubscriptionID = [(AMSSubscriptionEntitlement *)self externalSubscriptionID];
  [v3 setObject:externalSubscriptionID forKeyedSubscript:@"externalSubscriptionID"];

  familyRank = [(AMSSubscriptionEntitlement *)self familyRank];
  [v3 setObject:familyRank forKeyedSubscript:@"familyRank"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement familySubscription](self, "familySubscription")}];
  [v3 setObject:v15 forKeyedSubscript:@"familySubscription"];

  featureAccessTypeId = [(AMSSubscriptionEntitlement *)self featureAccessTypeId];
  v17 = featureAccessTypeId;
  if (featureAccessTypeId)
  {
    v18 = featureAccessTypeId;
  }

  else
  {
    v18 = &unk_1F07799E8;
  }

  [v3 setObject:v18 forKeyedSubscript:@"featureAccessTypeId"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement freeTrialEligible](self, "freeTrialEligible")}];
  [v3 setObject:v19 forKeyedSubscript:@"freeTrialEligible"];

  freeTrialPeriodId = [(AMSSubscriptionEntitlement *)self freeTrialPeriodId];
  v21 = freeTrialPeriodId;
  if (freeTrialPeriodId)
  {
    v22 = freeTrialPeriodId;
  }

  else
  {
    v22 = &unk_1F07799E8;
  }

  [v3 setObject:v22 forKeyedSubscript:@"freeTrialPeriodId"];

  inAppAdamId = [(AMSSubscriptionEntitlement *)self inAppAdamId];
  v24 = inAppAdamId;
  if (inAppAdamId)
  {
    v25 = inAppAdamId;
  }

  else
  {
    v25 = &unk_1F07799E8;
  }

  [v3 setObject:v25 forKeyedSubscript:@"inAppAdamId"];

  inAppVersion = [(AMSSubscriptionEntitlement *)self inAppVersion];
  v27 = inAppVersion;
  if (inAppVersion)
  {
    v28 = inAppVersion;
  }

  else
  {
    v28 = &unk_1F07799E8;
  }

  [v3 setObject:v28 forKeyedSubscript:@"inAppVersion"];

  v29 = MEMORY[0x1E696AD98];
  [(AMSSubscriptionEntitlement *)self initialPurchaseTimestamp];
  v30 = [v29 numberWithDouble:?];
  [v3 setObject:v30 forKeyedSubscript:@"initialPurchaseTimestamp"];

  offerId = [(AMSSubscriptionEntitlement *)self offerId];
  v32 = offerId;
  if (offerId)
  {
    v33 = offerId;
  }

  else
  {
    v33 = &stru_1F071BA78;
  }

  [v3 setObject:v33 forKeyedSubscript:@"offerId"];

  poolType = [(AMSSubscriptionEntitlement *)self poolType];
  v35 = poolType;
  if (poolType)
  {
    v36 = poolType;
  }

  else
  {
    v36 = &stru_1F071BA78;
  }

  [v3 setObject:v36 forKeyedSubscript:@"poolType"];

  promoScenarioId = [(AMSSubscriptionEntitlement *)self promoScenarioId];
  v38 = promoScenarioId;
  if (promoScenarioId)
  {
    v39 = promoScenarioId;
  }

  else
  {
    v39 = &unk_1F07799E8;
  }

  [v3 setObject:v39 forKeyedSubscript:@"promoScenarioId"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement inFreePeriod](self, "inFreePeriod")}];
  [v3 setObject:v40 forKeyedSubscript:@"inFreePeriod"];

  period = [(AMSSubscriptionEntitlement *)self period];
  v42 = MEMORY[0x1E695E118];
  v43 = MEMORY[0x1E695E110];
  if (period)
  {
    v44 = MEMORY[0x1E695E118];
  }

  else
  {
    v44 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v44 forKeyedSubscript:@"inTrialPeriod"];
  if (([(AMSSubscriptionEntitlement *)self period]& 2) != 0)
  {
    v45 = v42;
  }

  else
  {
    v45 = v43;
  }

  [v3 setObject:v45 forKeyedSubscript:@"inOfferPeriod"];
  if (([(AMSSubscriptionEntitlement *)self period]& 4) != 0)
  {
    v46 = v42;
  }

  else
  {
    v46 = v43;
  }

  [v3 setObject:v46 forKeyedSubscript:@"inGracePeriod"];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement purchaser](self, "purchaser")}];
  [v3 setObject:v47 forKeyedSubscript:@"purchaser"];

  v48 = MEMORY[0x1E696AD98];
  renewDate = [(AMSSubscriptionEntitlement *)self renewDate];
  [renewDate timeIntervalSince1970];
  v50 = [v48 numberWithDouble:?];
  [v3 setObject:v50 forKeyedSubscript:@"renewDate"];

  v51 = MEMORY[0x1E696AD98];
  [(AMSSubscriptionEntitlement *)self serviceBeginsTimestamp];
  v52 = [v51 numberWithDouble:?];
  [v3 setObject:v52 forKeyedSubscript:@"serviceBeginsTimestamp"];

  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AMSSubscriptionEntitlement source](self, "source")}];
  [v3 setObject:v53 forKeyedSubscript:@"source"];

  startDate = [(AMSSubscriptionEntitlement *)self startDate];
  [v3 setObject:startDate forKeyedSubscript:@"startDate"];

  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AMSSubscriptionEntitlement status](self, "status")}];
  [v3 setObject:v55 forKeyedSubscript:@"status"];

  v56 = MEMORY[0x1E696AD98];
  studentExpirationDate = [(AMSSubscriptionEntitlement *)self studentExpirationDate];
  [studentExpirationDate timeIntervalSince1970];
  v58 = [v56 numberWithDouble:?];
  [v3 setObject:v58 forKeyedSubscript:@"studentExpirationDate"];

  subscriptionBundleId = [(AMSSubscriptionEntitlement *)self subscriptionBundleId];
  v60 = subscriptionBundleId;
  if (subscriptionBundleId)
  {
    v61 = subscriptionBundleId;
  }

  else
  {
    v61 = &unk_1F07799E8;
  }

  [v3 setObject:v61 forKeyedSubscript:@"subscriptionBundleId"];

  vendorAdHocOfferId = [(AMSSubscriptionEntitlement *)self vendorAdHocOfferId];
  v63 = vendorAdHocOfferId;
  if (vendorAdHocOfferId)
  {
    v64 = vendorAdHocOfferId;
  }

  else
  {
    v64 = &stru_1F071BA78;
  }

  [v3 setObject:v64 forKeyedSubscript:@"vendorAdHocOfferId"];

  vendorId = [(AMSSubscriptionEntitlement *)self vendorId];
  v66 = vendorId;
  if (vendorId)
  {
    v67 = vendorId;
  }

  else
  {
    v67 = &stru_1F071BA78;
  }

  [v3 setObject:v67 forKeyedSubscript:@"vendorId"];

  v68 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSSubscriptionEntitlement carrierErrorCode](self, "carrierErrorCode")}];
  [v3 setObject:v68 forKeyedSubscript:@"carrierErrorCode"];

  carrierOperatorName = [(AMSSubscriptionEntitlement *)self carrierOperatorName];
  v70 = carrierOperatorName;
  if (carrierOperatorName)
  {
    v71 = carrierOperatorName;
  }

  else
  {
    v71 = &stru_1F071BA78;
  }

  [v3 setObject:v71 forKeyedSubscript:@"carrierOperatorName"];

  carrierPhoneNumber = [(AMSSubscriptionEntitlement *)self carrierPhoneNumber];
  v73 = carrierPhoneNumber;
  if (carrierPhoneNumber)
  {
    v74 = carrierPhoneNumber;
  }

  else
  {
    v74 = &stru_1F071BA78;
  }

  [v3 setObject:v74 forKeyedSubscript:@"carrierPhoneNumber"];

  carrierSessionId = [(AMSSubscriptionEntitlement *)self carrierSessionId];
  v76 = carrierSessionId;
  if (carrierSessionId)
  {
    v77 = carrierSessionId;
  }

  else
  {
    v77 = &stru_1F071BA78;
  }

  [v3 setObject:v77 forKeyedSubscript:@"carrierSessionId"];

  v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AMSSubscriptionEntitlement carrierStatus](self, "carrierStatus")}];
  [v3 setObject:v78 forKeyedSubscript:@"carrierStatus"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (!v9)
    {
      v8 = 0;
LABEL_140:

      goto LABEL_141;
    }

    autoRenewEnabled = [(AMSSubscriptionEntitlement *)self autoRenewEnabled];
    if (autoRenewEnabled != [(AMSSubscriptionEntitlement *)v9 autoRenewEnabled]|| (v12 = [(AMSSubscriptionEntitlement *)self carrierErrorCode], v12 != [(AMSSubscriptionEntitlement *)v9 carrierErrorCode]) || (v13 = [(AMSSubscriptionEntitlement *)self carrierStatus], v13 != [(AMSSubscriptionEntitlement *)v9 carrierStatus]) || (v14 = [(AMSSubscriptionEntitlement *)self familySubscription], v14 != [(AMSSubscriptionEntitlement *)v9 familySubscription]) || (v15 = [(AMSSubscriptionEntitlement *)self freeTrialEligible], v15 != [(AMSSubscriptionEntitlement *)v9 freeTrialEligible]) || (v16 = [(AMSSubscriptionEntitlement *)self inFreePeriod], v16 != [(AMSSubscriptionEntitlement *)v9 inFreePeriod]) || ([(AMSSubscriptionEntitlement *)self initialPurchaseTimestamp], v18 = v17, [(AMSSubscriptionEntitlement *)v9 initialPurchaseTimestamp], v18 != v19) || (v20 = [(AMSSubscriptionEntitlement *)self period], v20 != [(AMSSubscriptionEntitlement *)v9 period]) || (v21 = [(AMSSubscriptionEntitlement *)self purchaser], v21 != [(AMSSubscriptionEntitlement *)v9 purchaser]) || ([(AMSSubscriptionEntitlement *)self serviceBeginsTimestamp], v23 = v22, [(AMSSubscriptionEntitlement *)v9 serviceBeginsTimestamp], v23 != v24) || (v25 = [(AMSSubscriptionEntitlement *)self source], v25 != [(AMSSubscriptionEntitlement *)v9 source]) || (v26 = [(AMSSubscriptionEntitlement *)self status], v26 != [(AMSSubscriptionEntitlement *)v9 status]))
    {
      v200 = 0;
      v201 = 0;
      v180 = 0;
      v198 = 0;
      v199 = 0;
      v178 = 0;
      v176 = 0;
      v196 = 0;
      v197 = 0;
      v174 = 0;
      v172 = 0;
      v194 = 0;
      v169 = 0;
      v195 = 0;
      v192 = 0;
      v168 = 0;
      v193 = 0;
      v190 = 0;
      v165 = 0;
      v191 = 0;
      v188 = 0;
      v164 = 0;
      v189 = 0;
      v186 = 0;
      v163 = 0;
      v187 = 0;
      v184 = 0;
      v161 = 0;
      v185 = 0;
      v182 = 0;
      v160 = 0;
      v183 = 0;
      v179 = 0;
      v29 = 0;
      v181 = 0;
      v177 = 0;
      v30 = 0;
      v173 = 0;
      v31 = 0;
      v175 = 0;
      v170 = 0;
      v32 = 0;
      v171 = 0;
      v166 = 0;
      v33 = 0;
      v167 = 0;
      v162 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v8 = 0;
      goto LABEL_24;
    }

    carrierOperatorName = [(AMSSubscriptionEntitlement *)self carrierOperatorName];
    LODWORD(v201) = carrierOperatorName == 0;
    v159 = carrierOperatorName;
    if (carrierOperatorName || ([(AMSSubscriptionEntitlement *)v9 carrierOperatorName], (v155 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      carrierOperatorName2 = [(AMSSubscriptionEntitlement *)self carrierOperatorName];
      [(AMSSubscriptionEntitlement *)v9 carrierOperatorName];
      v157 = v158 = carrierOperatorName2;
      HIDWORD(v201) = 1;
      if (![carrierOperatorName2 isEqual:?])
      {
        v180 = 0;
        v198 = 0;
        v199 = 0;
        v178 = 0;
        v176 = 0;
        v196 = 0;
        v197 = 0;
        v174 = 0;
        v172 = 0;
        v194 = 0;
        v169 = 0;
        v195 = 0;
        v192 = 0;
        v168 = 0;
        v193 = 0;
        v190 = 0;
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v200 = 1;
        goto LABEL_24;
      }

      LODWORD(v200) = 1;
    }

    else
    {
      v155 = 0;
      LODWORD(v200) = 0;
    }

    carrierPhoneNumber = [(AMSSubscriptionEntitlement *)self carrierPhoneNumber];
    HIDWORD(v200) = carrierPhoneNumber == 0;
    v156 = carrierPhoneNumber;
    if (carrierPhoneNumber || ([(AMSSubscriptionEntitlement *)v9 carrierPhoneNumber], (v151 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      carrierPhoneNumber2 = [(AMSSubscriptionEntitlement *)self carrierPhoneNumber];
      [(AMSSubscriptionEntitlement *)v9 carrierPhoneNumber];
      v153 = v154 = carrierPhoneNumber2;
      HIDWORD(v201) = 1;
      if (![carrierPhoneNumber2 isEqual:?])
      {
        v178 = 0;
        v197 = 0;
        v198 = 0;
        v176 = 0;
        v174 = 0;
        v196 = 0;
        v172 = 0;
        v194 = 0;
        v169 = 0;
        v195 = 0;
        v192 = 0;
        v168 = 0;
        v193 = 0;
        v190 = 0;
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v199 = 1;
        goto LABEL_24;
      }

      LODWORD(v199) = 1;
    }

    else
    {
      v151 = 0;
      LODWORD(v199) = 0;
    }

    carrierSessionId = [(AMSSubscriptionEntitlement *)self carrierSessionId];
    HIDWORD(v199) = carrierSessionId == 0;
    v152 = carrierSessionId;
    if (carrierSessionId || ([(AMSSubscriptionEntitlement *)v9 carrierSessionId], (v147 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      carrierSessionId2 = [(AMSSubscriptionEntitlement *)self carrierSessionId];
      [(AMSSubscriptionEntitlement *)v9 carrierSessionId];
      v149 = v150 = carrierSessionId2;
      HIDWORD(v201) = 1;
      if (![carrierSessionId2 isEqual:?])
      {
        v176 = 0;
        v196 = 0;
        v197 = 0;
        v174 = 0;
        v172 = 0;
        v194 = 0;
        v169 = 0;
        v195 = 0;
        v192 = 0;
        v168 = 0;
        v193 = 0;
        v190 = 0;
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v198 = 1;
        goto LABEL_24;
      }

      LODWORD(v198) = 1;
    }

    else
    {
      v147 = 0;
      LODWORD(v198) = 0;
    }

    chargeStoreFrontID = [(AMSSubscriptionEntitlement *)self chargeStoreFrontID];
    HIDWORD(v198) = chargeStoreFrontID == 0;
    v148 = chargeStoreFrontID;
    if (chargeStoreFrontID || ([(AMSSubscriptionEntitlement *)v9 chargeStoreFrontID], (v143 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      chargeStoreFrontID2 = [(AMSSubscriptionEntitlement *)self chargeStoreFrontID];
      chargeStoreFrontID3 = [(AMSSubscriptionEntitlement *)v9 chargeStoreFrontID];
      v146 = chargeStoreFrontID2;
      HIDWORD(v201) = 1;
      if (![chargeStoreFrontID2 isEqual:chargeStoreFrontID3])
      {
        v174 = 0;
        v196 = 0;
        v172 = 0;
        v194 = 0;
        v169 = 0;
        v195 = 0;
        v192 = 0;
        v168 = 0;
        v193 = 0;
        v190 = 0;
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v197 = 1;
        goto LABEL_24;
      }

      LODWORD(v197) = 1;
    }

    else
    {
      v143 = 0;
      LODWORD(v197) = 0;
    }

    expiration = [(AMSSubscriptionEntitlement *)self expiration];
    HIDWORD(v197) = expiration == 0;
    v144 = expiration;
    if (expiration || ([(AMSSubscriptionEntitlement *)v9 expiration], (v139 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      expiration2 = [(AMSSubscriptionEntitlement *)self expiration];
      expiration3 = [(AMSSubscriptionEntitlement *)v9 expiration];
      v142 = expiration2;
      HIDWORD(v201) = 1;
      if (![expiration2 isEqual:expiration3])
      {
        v172 = 0;
        v194 = 0;
        v169 = 0;
        v195 = 0;
        v192 = 0;
        v168 = 0;
        v193 = 0;
        v190 = 0;
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v196 = 1;
        goto LABEL_24;
      }

      LODWORD(v196) = 1;
    }

    else
    {
      v139 = 0;
      LODWORD(v196) = 0;
    }

    entitlementOriginType = [(AMSSubscriptionEntitlement *)self entitlementOriginType];
    HIDWORD(v196) = entitlementOriginType == 0;
    v140 = entitlementOriginType;
    if (entitlementOriginType || ([(AMSSubscriptionEntitlement *)v9 entitlementOriginType], (v135 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      entitlementOriginType2 = [(AMSSubscriptionEntitlement *)self entitlementOriginType];
      entitlementOriginType3 = [(AMSSubscriptionEntitlement *)v9 entitlementOriginType];
      v138 = entitlementOriginType2;
      HIDWORD(v201) = 1;
      if (![entitlementOriginType2 isEqual:entitlementOriginType3])
      {
        v169 = 0;
        v195 = 0;
        v192 = 0;
        v168 = 0;
        v193 = 0;
        v190 = 0;
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v194 = 1;
        goto LABEL_24;
      }

      v194 = 1;
    }

    else
    {
      v135 = 0;
      v194 = 0;
    }

    entitlementSourceAdamId = [(AMSSubscriptionEntitlement *)self entitlementSourceAdamId];
    v195 = entitlementSourceAdamId == 0;
    v136 = entitlementSourceAdamId;
    if (entitlementSourceAdamId || ([(AMSSubscriptionEntitlement *)v9 entitlementSourceAdamId], (v131 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      entitlementSourceAdamId2 = [(AMSSubscriptionEntitlement *)self entitlementSourceAdamId];
      entitlementSourceAdamId3 = [(AMSSubscriptionEntitlement *)v9 entitlementSourceAdamId];
      v134 = entitlementSourceAdamId2;
      HIDWORD(v201) = 1;
      if (![entitlementSourceAdamId2 isEqual:entitlementSourceAdamId3])
      {
        v168 = 0;
        v193 = 0;
        v190 = 0;
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v192 = 1;
        goto LABEL_24;
      }

      v192 = 1;
    }

    else
    {
      v131 = 0;
      v192 = 0;
    }

    featureAccessTypeId = [(AMSSubscriptionEntitlement *)self featureAccessTypeId];
    v193 = featureAccessTypeId == 0;
    v132 = featureAccessTypeId;
    if (featureAccessTypeId || ([(AMSSubscriptionEntitlement *)v9 featureAccessTypeId], (v127 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      featureAccessTypeId2 = [(AMSSubscriptionEntitlement *)self featureAccessTypeId];
      featureAccessTypeId3 = [(AMSSubscriptionEntitlement *)v9 featureAccessTypeId];
      v130 = featureAccessTypeId2;
      HIDWORD(v201) = 1;
      if (![featureAccessTypeId2 isEqual:featureAccessTypeId3])
      {
        v165 = 0;
        v191 = 0;
        v188 = 0;
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v190 = 1;
        goto LABEL_24;
      }

      v190 = 1;
    }

    else
    {
      v127 = 0;
      v190 = 0;
    }

    freeTrialPeriodId = [(AMSSubscriptionEntitlement *)self freeTrialPeriodId];
    v191 = freeTrialPeriodId == 0;
    v128 = freeTrialPeriodId;
    if (freeTrialPeriodId || ([(AMSSubscriptionEntitlement *)v9 freeTrialPeriodId], (v123 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      freeTrialPeriodId2 = [(AMSSubscriptionEntitlement *)self freeTrialPeriodId];
      freeTrialPeriodId3 = [(AMSSubscriptionEntitlement *)v9 freeTrialPeriodId];
      v126 = freeTrialPeriodId2;
      HIDWORD(v201) = 1;
      if (![freeTrialPeriodId2 isEqual:freeTrialPeriodId3])
      {
        v164 = 0;
        v189 = 0;
        v186 = 0;
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v188 = 1;
        goto LABEL_24;
      }

      v188 = 1;
    }

    else
    {
      v123 = 0;
      v188 = 0;
    }

    inAppAdamId = [(AMSSubscriptionEntitlement *)self inAppAdamId];
    v189 = inAppAdamId == 0;
    v124 = inAppAdamId;
    if (inAppAdamId || ([(AMSSubscriptionEntitlement *)v9 inAppAdamId], (v119 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      inAppAdamId2 = [(AMSSubscriptionEntitlement *)self inAppAdamId];
      inAppAdamId3 = [(AMSSubscriptionEntitlement *)v9 inAppAdamId];
      v122 = inAppAdamId2;
      HIDWORD(v201) = 1;
      if (![inAppAdamId2 isEqual:inAppAdamId3])
      {
        v163 = 0;
        v187 = 0;
        v184 = 0;
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v186 = 1;
        goto LABEL_24;
      }

      v186 = 1;
    }

    else
    {
      v119 = 0;
      v186 = 0;
    }

    inAppVersion = [(AMSSubscriptionEntitlement *)self inAppVersion];
    v187 = inAppVersion == 0;
    v120 = inAppVersion;
    if (inAppVersion || ([(AMSSubscriptionEntitlement *)v9 inAppVersion], (v115 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      inAppVersion2 = [(AMSSubscriptionEntitlement *)self inAppVersion];
      inAppVersion3 = [(AMSSubscriptionEntitlement *)v9 inAppVersion];
      v118 = inAppVersion2;
      HIDWORD(v201) = 1;
      if (![inAppVersion2 isEqual:inAppVersion3])
      {
        v161 = 0;
        v185 = 0;
        v182 = 0;
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v184 = 1;
        goto LABEL_24;
      }

      v184 = 1;
    }

    else
    {
      v115 = 0;
      v184 = 0;
    }

    offerId = [(AMSSubscriptionEntitlement *)self offerId];
    v185 = offerId == 0;
    v116 = offerId;
    if (offerId || ([(AMSSubscriptionEntitlement *)v9 offerId], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      offerId2 = [(AMSSubscriptionEntitlement *)self offerId];
      offerId3 = [(AMSSubscriptionEntitlement *)v9 offerId];
      v114 = offerId2;
      HIDWORD(v201) = 1;
      if (![offerId2 isEqual:offerId3])
      {
        v160 = 0;
        v183 = 0;
        v179 = 0;
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v161 = 1;
        v182 = 1;
        goto LABEL_24;
      }

      v182 = 1;
    }

    else
    {
      v111 = 0;
      v182 = 0;
    }

    poolType = [(AMSSubscriptionEntitlement *)self poolType];
    v183 = poolType == 0;
    v112 = poolType;
    if (poolType || ([(AMSSubscriptionEntitlement *)v9 poolType], (v107 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      poolType2 = [(AMSSubscriptionEntitlement *)self poolType];
      poolType3 = [(AMSSubscriptionEntitlement *)v9 poolType];
      v110 = poolType2;
      HIDWORD(v201) = 1;
      if (![poolType2 isEqual:poolType3])
      {
        v29 = 0;
        v181 = 0;
        v177 = 0;
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v161 = 1;
        v160 = 1;
        v179 = 1;
        goto LABEL_24;
      }

      v179 = 1;
    }

    else
    {
      v107 = 0;
      v179 = 0;
    }

    promoScenarioId = [(AMSSubscriptionEntitlement *)self promoScenarioId];
    v181 = promoScenarioId == 0;
    v108 = promoScenarioId;
    if (promoScenarioId || ([(AMSSubscriptionEntitlement *)v9 promoScenarioId], (v103 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      promoScenarioId2 = [(AMSSubscriptionEntitlement *)self promoScenarioId];
      promoScenarioId3 = [(AMSSubscriptionEntitlement *)v9 promoScenarioId];
      v106 = promoScenarioId2;
      HIDWORD(v201) = 1;
      if (![promoScenarioId2 isEqual:promoScenarioId3])
      {
        v30 = 0;
        v173 = 0;
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v161 = 1;
        v160 = 1;
        v29 = 1;
        v177 = 1;
        goto LABEL_24;
      }

      LODWORD(v177) = 1;
    }

    else
    {
      v103 = 0;
      LODWORD(v177) = 0;
    }

    renewDate = [(AMSSubscriptionEntitlement *)self renewDate];
    HIDWORD(v177) = renewDate == 0;
    v104 = renewDate;
    if (renewDate || ([(AMSSubscriptionEntitlement *)v9 renewDate], (v100 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      renewDate2 = [(AMSSubscriptionEntitlement *)self renewDate];
      renewDate3 = [(AMSSubscriptionEntitlement *)v9 renewDate];
      v102 = renewDate2;
      HIDWORD(v201) = 1;
      if (![renewDate2 isEqual:renewDate3])
      {
        v31 = 0;
        v175 = 0;
        v170 = 0;
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v161 = 1;
        v160 = 1;
        v29 = 1;
        v30 = 1;
        v173 = 1;
        goto LABEL_24;
      }

      v173 = 1;
    }

    else
    {
      v100 = 0;
      v173 = 0;
    }

    startDate = [(AMSSubscriptionEntitlement *)self startDate];
    v175 = startDate == 0;
    v99 = startDate;
    if (startDate || ([(AMSSubscriptionEntitlement *)v9 startDate], (v96 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      startDate2 = [(AMSSubscriptionEntitlement *)self startDate];
      startDate3 = [(AMSSubscriptionEntitlement *)v9 startDate];
      v98 = startDate2;
      HIDWORD(v201) = 1;
      if (![startDate2 isEqual:startDate3])
      {
        v32 = 0;
        v171 = 0;
        v166 = 0;
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v161 = 1;
        v160 = 1;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        v170 = 1;
        goto LABEL_24;
      }

      v170 = 1;
    }

    else
    {
      v96 = 0;
      v170 = 0;
    }

    subscriptionBundleId = [(AMSSubscriptionEntitlement *)self subscriptionBundleId];
    v171 = subscriptionBundleId == 0;
    v95 = subscriptionBundleId;
    if (subscriptionBundleId || ([(AMSSubscriptionEntitlement *)v9 subscriptionBundleId], (v94 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      subscriptionBundleId2 = [(AMSSubscriptionEntitlement *)self subscriptionBundleId];
      subscriptionBundleId3 = [(AMSSubscriptionEntitlement *)v9 subscriptionBundleId];
      v93 = subscriptionBundleId2;
      HIDWORD(v201) = 1;
      if (![subscriptionBundleId2 isEqual:subscriptionBundleId3])
      {
        v33 = 0;
        v167 = 0;
        v162 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v161 = 1;
        v160 = 1;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        v32 = 1;
        v166 = 1;
        goto LABEL_24;
      }

      v166 = 1;
    }

    else
    {
      v94 = 0;
      v166 = 0;
    }

    vendorAdHocOfferId = [(AMSSubscriptionEntitlement *)self vendorAdHocOfferId];
    v167 = vendorAdHocOfferId == 0;
    v91 = vendorAdHocOfferId;
    if (vendorAdHocOfferId || ([(AMSSubscriptionEntitlement *)v9 vendorAdHocOfferId], (v88 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      vendorAdHocOfferId2 = [(AMSSubscriptionEntitlement *)self vendorAdHocOfferId];
      vendorAdHocOfferId3 = [(AMSSubscriptionEntitlement *)v9 vendorAdHocOfferId];
      v90 = vendorAdHocOfferId2;
      HIDWORD(v201) = 1;
      if (![vendorAdHocOfferId2 isEqual:vendorAdHocOfferId3])
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v8 = 0;
        v180 = 1;
        v178 = 1;
        v176 = 1;
        v174 = 1;
        v172 = 1;
        v169 = 1;
        v168 = 1;
        v165 = 1;
        v164 = 1;
        v163 = 1;
        v161 = 1;
        v160 = 1;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        v32 = 1;
        v33 = 1;
        v162 = 1;
        goto LABEL_24;
      }

      v162 = 1;
    }

    else
    {
      v88 = 0;
      v162 = 0;
    }

    vendorId = [(AMSSubscriptionEntitlement *)self vendorId];
    v84 = vendorId == 0;
    v87 = vendorId;
    if (vendorId || ([(AMSSubscriptionEntitlement *)v9 vendorId], (v86 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      vendorId2 = [(AMSSubscriptionEntitlement *)self vendorId];
      vendorId3 = [(AMSSubscriptionEntitlement *)v9 vendorId];
      v85 = vendorId2;
      v8 = [vendorId2 isEqual:vendorId3];
      v11 = vendorId3;
      v36 = 1;
      HIDWORD(v201) = 1;
      v180 = 1;
      v178 = 1;
      v176 = 1;
      v174 = 1;
      v172 = 1;
      v169 = 1;
      v168 = 1;
      v165 = 1;
      v164 = 1;
      v163 = 1;
      v161 = 1;
      v160 = 1;
      v29 = 1;
      v30 = 1;
      v31 = 1;
      v32 = 1;
      v33 = 1;
      v34 = 1;
      v35 = v84;
    }

    else
    {
      v86 = 0;
      v87 = 0;
      v36 = 0;
      HIDWORD(v201) = 1;
      v180 = 1;
      v178 = 1;
      v176 = 1;
      v174 = 1;
      v172 = 1;
      v169 = 1;
      v168 = 1;
      v165 = 1;
      v164 = 1;
      v163 = 1;
      v161 = 1;
      v160 = 1;
      v29 = 1;
      v30 = 1;
      v31 = 1;
      v32 = 1;
      v33 = 1;
      v34 = 1;
      v35 = 1;
      v8 = 1;
    }

LABEL_24:
    if (v36)
    {
      v37 = v8;
      v38 = v34;
      v39 = v33;
      v40 = v32;
      v41 = v31;
      v42 = v30;
      v43 = v29;
      v44 = v35;

      v45 = v44;
      v29 = v43;
      v30 = v42;
      v31 = v41;
      v32 = v40;
      v33 = v39;
      v34 = v38;
      v8 = v37;
      if (!v45)
      {
        goto LABEL_26;
      }
    }

    else if (!v35)
    {
LABEL_26:
      if (!v34)
      {
LABEL_28:
        if (v162)
        {
        }

        if (v167)
        {
        }

        if (v33)
        {
        }

        if (v166)
        {
        }

        if (v171)
        {
        }

        if (v32)
        {
        }

        if (v170)
        {
        }

        if (v175)
        {
        }

        if (v31)
        {
        }

        if (v173)
        {
        }

        if (HIDWORD(v177))
        {
        }

        if (v30)
        {
        }

        if (v177)
        {
        }

        if (v181)
        {
        }

        if (v29)
        {
        }

        if (v179)
        {
        }

        if (v183)
        {
        }

        if (v160)
        {
        }

        if (v182)
        {
        }

        if (v185)
        {
        }

        if (v161)
        {
        }

        if (v184)
        {
        }

        if (v187)
        {
        }

        if (v163)
        {
        }

        if (v186)
        {
        }

        if (v189)
        {
        }

        if (v164)
        {
        }

        if (v188)
        {
        }

        if (v191)
        {
        }

        if (v165)
        {
        }

        if (v190)
        {
        }

        if (v193)
        {
        }

        if (v168)
        {
        }

        if (v192)
        {
        }

        if (v195)
        {
        }

        if (v169)
        {
        }

        if (v194)
        {
        }

        if (HIDWORD(v196))
        {
        }

        if (v172)
        {
        }

        if (v196)
        {
        }

        if (HIDWORD(v197))
        {
        }

        if (v174)
        {
        }

        if (v197)
        {
        }

        if (HIDWORD(v198))
        {
        }

        if (v176)
        {
        }

        if (v198)
        {
        }

        if (HIDWORD(v199))
        {
        }

        if (v178)
        {
        }

        if (v199)
        {
        }

        if (HIDWORD(v200))
        {
        }

        if (v180)
        {
        }

        if (v200)
        {
        }

        if (v201)
        {
        }

        if (HIDWORD(v201))
        {
        }

        goto LABEL_140;
      }

LABEL_27:

      goto LABEL_28;
    }

    if (!v34)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v8 = 1;
LABEL_141:

  return v8;
}

@end