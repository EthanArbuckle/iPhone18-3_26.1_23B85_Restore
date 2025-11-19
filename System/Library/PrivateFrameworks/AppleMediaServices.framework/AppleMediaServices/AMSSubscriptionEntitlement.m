@interface AMSSubscriptionEntitlement
- (BOOL)isEqual:(id)a3;
- (id)exportObject;
@end

@implementation AMSSubscriptionEntitlement

- (id)exportObject
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement autoRenewEnabled](self, "autoRenewEnabled")}];
  [v3 setObject:v4 forKeyedSubscript:@"autoRenewEnabled"];

  v5 = [(AMSSubscriptionEntitlement *)self chargeStoreFrontID];
  [v3 setObject:v5 forKeyedSubscript:@"chargeStoreFrontID"];

  v6 = MEMORY[0x1E696AD98];
  v7 = [(AMSSubscriptionEntitlement *)self expiration];
  [v7 timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"expiration"];

  v9 = [(AMSSubscriptionEntitlement *)self entitlementOriginType];
  [v3 setObject:v9 forKeyedSubscript:@"entitlementOriginType"];

  v10 = [(AMSSubscriptionEntitlement *)self entitlementSourceAdamId];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &unk_1F07799E8;
  }

  [v3 setObject:v12 forKeyedSubscript:@"entitlementSourceAdamId"];

  v13 = [(AMSSubscriptionEntitlement *)self externalSubscriptionID];
  [v3 setObject:v13 forKeyedSubscript:@"externalSubscriptionID"];

  v14 = [(AMSSubscriptionEntitlement *)self familyRank];
  [v3 setObject:v14 forKeyedSubscript:@"familyRank"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement familySubscription](self, "familySubscription")}];
  [v3 setObject:v15 forKeyedSubscript:@"familySubscription"];

  v16 = [(AMSSubscriptionEntitlement *)self featureAccessTypeId];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &unk_1F07799E8;
  }

  [v3 setObject:v18 forKeyedSubscript:@"featureAccessTypeId"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement freeTrialEligible](self, "freeTrialEligible")}];
  [v3 setObject:v19 forKeyedSubscript:@"freeTrialEligible"];

  v20 = [(AMSSubscriptionEntitlement *)self freeTrialPeriodId];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &unk_1F07799E8;
  }

  [v3 setObject:v22 forKeyedSubscript:@"freeTrialPeriodId"];

  v23 = [(AMSSubscriptionEntitlement *)self inAppAdamId];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &unk_1F07799E8;
  }

  [v3 setObject:v25 forKeyedSubscript:@"inAppAdamId"];

  v26 = [(AMSSubscriptionEntitlement *)self inAppVersion];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
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

  v31 = [(AMSSubscriptionEntitlement *)self offerId];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = &stru_1F071BA78;
  }

  [v3 setObject:v33 forKeyedSubscript:@"offerId"];

  v34 = [(AMSSubscriptionEntitlement *)self poolType];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = &stru_1F071BA78;
  }

  [v3 setObject:v36 forKeyedSubscript:@"poolType"];

  v37 = [(AMSSubscriptionEntitlement *)self promoScenarioId];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = &unk_1F07799E8;
  }

  [v3 setObject:v39 forKeyedSubscript:@"promoScenarioId"];

  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSSubscriptionEntitlement inFreePeriod](self, "inFreePeriod")}];
  [v3 setObject:v40 forKeyedSubscript:@"inFreePeriod"];

  v41 = [(AMSSubscriptionEntitlement *)self period];
  v42 = MEMORY[0x1E695E118];
  v43 = MEMORY[0x1E695E110];
  if (v41)
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
  v49 = [(AMSSubscriptionEntitlement *)self renewDate];
  [v49 timeIntervalSince1970];
  v50 = [v48 numberWithDouble:?];
  [v3 setObject:v50 forKeyedSubscript:@"renewDate"];

  v51 = MEMORY[0x1E696AD98];
  [(AMSSubscriptionEntitlement *)self serviceBeginsTimestamp];
  v52 = [v51 numberWithDouble:?];
  [v3 setObject:v52 forKeyedSubscript:@"serviceBeginsTimestamp"];

  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AMSSubscriptionEntitlement source](self, "source")}];
  [v3 setObject:v53 forKeyedSubscript:@"source"];

  v54 = [(AMSSubscriptionEntitlement *)self startDate];
  [v3 setObject:v54 forKeyedSubscript:@"startDate"];

  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[AMSSubscriptionEntitlement status](self, "status")}];
  [v3 setObject:v55 forKeyedSubscript:@"status"];

  v56 = MEMORY[0x1E696AD98];
  v57 = [(AMSSubscriptionEntitlement *)self studentExpirationDate];
  [v57 timeIntervalSince1970];
  v58 = [v56 numberWithDouble:?];
  [v3 setObject:v58 forKeyedSubscript:@"studentExpirationDate"];

  v59 = [(AMSSubscriptionEntitlement *)self subscriptionBundleId];
  v60 = v59;
  if (v59)
  {
    v61 = v59;
  }

  else
  {
    v61 = &unk_1F07799E8;
  }

  [v3 setObject:v61 forKeyedSubscript:@"subscriptionBundleId"];

  v62 = [(AMSSubscriptionEntitlement *)self vendorAdHocOfferId];
  v63 = v62;
  if (v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = &stru_1F071BA78;
  }

  [v3 setObject:v64 forKeyedSubscript:@"vendorAdHocOfferId"];

  v65 = [(AMSSubscriptionEntitlement *)self vendorId];
  v66 = v65;
  if (v65)
  {
    v67 = v65;
  }

  else
  {
    v67 = &stru_1F071BA78;
  }

  [v3 setObject:v67 forKeyedSubscript:@"vendorId"];

  v68 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AMSSubscriptionEntitlement carrierErrorCode](self, "carrierErrorCode")}];
  [v3 setObject:v68 forKeyedSubscript:@"carrierErrorCode"];

  v69 = [(AMSSubscriptionEntitlement *)self carrierOperatorName];
  v70 = v69;
  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = &stru_1F071BA78;
  }

  [v3 setObject:v71 forKeyedSubscript:@"carrierOperatorName"];

  v72 = [(AMSSubscriptionEntitlement *)self carrierPhoneNumber];
  v73 = v72;
  if (v72)
  {
    v74 = v72;
  }

  else
  {
    v74 = &stru_1F071BA78;
  }

  [v3 setObject:v74 forKeyedSubscript:@"carrierPhoneNumber"];

  v75 = [(AMSSubscriptionEntitlement *)self carrierSessionId];
  v76 = v75;
  if (v75)
  {
    v77 = v75;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
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

    v10 = [(AMSSubscriptionEntitlement *)self autoRenewEnabled];
    if (v10 != [(AMSSubscriptionEntitlement *)v9 autoRenewEnabled]|| (v12 = [(AMSSubscriptionEntitlement *)self carrierErrorCode], v12 != [(AMSSubscriptionEntitlement *)v9 carrierErrorCode]) || (v13 = [(AMSSubscriptionEntitlement *)self carrierStatus], v13 != [(AMSSubscriptionEntitlement *)v9 carrierStatus]) || (v14 = [(AMSSubscriptionEntitlement *)self familySubscription], v14 != [(AMSSubscriptionEntitlement *)v9 familySubscription]) || (v15 = [(AMSSubscriptionEntitlement *)self freeTrialEligible], v15 != [(AMSSubscriptionEntitlement *)v9 freeTrialEligible]) || (v16 = [(AMSSubscriptionEntitlement *)self inFreePeriod], v16 != [(AMSSubscriptionEntitlement *)v9 inFreePeriod]) || ([(AMSSubscriptionEntitlement *)self initialPurchaseTimestamp], v18 = v17, [(AMSSubscriptionEntitlement *)v9 initialPurchaseTimestamp], v18 != v19) || (v20 = [(AMSSubscriptionEntitlement *)self period], v20 != [(AMSSubscriptionEntitlement *)v9 period]) || (v21 = [(AMSSubscriptionEntitlement *)self purchaser], v21 != [(AMSSubscriptionEntitlement *)v9 purchaser]) || ([(AMSSubscriptionEntitlement *)self serviceBeginsTimestamp], v23 = v22, [(AMSSubscriptionEntitlement *)v9 serviceBeginsTimestamp], v23 != v24) || (v25 = [(AMSSubscriptionEntitlement *)self source], v25 != [(AMSSubscriptionEntitlement *)v9 source]) || (v26 = [(AMSSubscriptionEntitlement *)self status], v26 != [(AMSSubscriptionEntitlement *)v9 status]))
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

    v27 = [(AMSSubscriptionEntitlement *)self carrierOperatorName];
    LODWORD(v201) = v27 == 0;
    v159 = v27;
    if (v27 || ([(AMSSubscriptionEntitlement *)v9 carrierOperatorName], (v155 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v28 = [(AMSSubscriptionEntitlement *)self carrierOperatorName];
      [(AMSSubscriptionEntitlement *)v9 carrierOperatorName];
      v157 = v158 = v28;
      HIDWORD(v201) = 1;
      if (![v28 isEqual:?])
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

    v47 = [(AMSSubscriptionEntitlement *)self carrierPhoneNumber];
    HIDWORD(v200) = v47 == 0;
    v156 = v47;
    if (v47 || ([(AMSSubscriptionEntitlement *)v9 carrierPhoneNumber], (v151 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v48 = [(AMSSubscriptionEntitlement *)self carrierPhoneNumber];
      [(AMSSubscriptionEntitlement *)v9 carrierPhoneNumber];
      v153 = v154 = v48;
      HIDWORD(v201) = 1;
      if (![v48 isEqual:?])
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

    v49 = [(AMSSubscriptionEntitlement *)self carrierSessionId];
    HIDWORD(v199) = v49 == 0;
    v152 = v49;
    if (v49 || ([(AMSSubscriptionEntitlement *)v9 carrierSessionId], (v147 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v50 = [(AMSSubscriptionEntitlement *)self carrierSessionId];
      [(AMSSubscriptionEntitlement *)v9 carrierSessionId];
      v149 = v150 = v50;
      HIDWORD(v201) = 1;
      if (![v50 isEqual:?])
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

    v51 = [(AMSSubscriptionEntitlement *)self chargeStoreFrontID];
    HIDWORD(v198) = v51 == 0;
    v148 = v51;
    if (v51 || ([(AMSSubscriptionEntitlement *)v9 chargeStoreFrontID], (v143 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v52 = [(AMSSubscriptionEntitlement *)self chargeStoreFrontID];
      v145 = [(AMSSubscriptionEntitlement *)v9 chargeStoreFrontID];
      v146 = v52;
      HIDWORD(v201) = 1;
      if (![v52 isEqual:v145])
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

    v53 = [(AMSSubscriptionEntitlement *)self expiration];
    HIDWORD(v197) = v53 == 0;
    v144 = v53;
    if (v53 || ([(AMSSubscriptionEntitlement *)v9 expiration], (v139 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v54 = [(AMSSubscriptionEntitlement *)self expiration];
      v141 = [(AMSSubscriptionEntitlement *)v9 expiration];
      v142 = v54;
      HIDWORD(v201) = 1;
      if (![v54 isEqual:v141])
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

    v55 = [(AMSSubscriptionEntitlement *)self entitlementOriginType];
    HIDWORD(v196) = v55 == 0;
    v140 = v55;
    if (v55 || ([(AMSSubscriptionEntitlement *)v9 entitlementOriginType], (v135 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v56 = [(AMSSubscriptionEntitlement *)self entitlementOriginType];
      v137 = [(AMSSubscriptionEntitlement *)v9 entitlementOriginType];
      v138 = v56;
      HIDWORD(v201) = 1;
      if (![v56 isEqual:v137])
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

    v57 = [(AMSSubscriptionEntitlement *)self entitlementSourceAdamId];
    v195 = v57 == 0;
    v136 = v57;
    if (v57 || ([(AMSSubscriptionEntitlement *)v9 entitlementSourceAdamId], (v131 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v58 = [(AMSSubscriptionEntitlement *)self entitlementSourceAdamId];
      v133 = [(AMSSubscriptionEntitlement *)v9 entitlementSourceAdamId];
      v134 = v58;
      HIDWORD(v201) = 1;
      if (![v58 isEqual:v133])
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

    v59 = [(AMSSubscriptionEntitlement *)self featureAccessTypeId];
    v193 = v59 == 0;
    v132 = v59;
    if (v59 || ([(AMSSubscriptionEntitlement *)v9 featureAccessTypeId], (v127 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v60 = [(AMSSubscriptionEntitlement *)self featureAccessTypeId];
      v129 = [(AMSSubscriptionEntitlement *)v9 featureAccessTypeId];
      v130 = v60;
      HIDWORD(v201) = 1;
      if (![v60 isEqual:v129])
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

    v61 = [(AMSSubscriptionEntitlement *)self freeTrialPeriodId];
    v191 = v61 == 0;
    v128 = v61;
    if (v61 || ([(AMSSubscriptionEntitlement *)v9 freeTrialPeriodId], (v123 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v62 = [(AMSSubscriptionEntitlement *)self freeTrialPeriodId];
      v125 = [(AMSSubscriptionEntitlement *)v9 freeTrialPeriodId];
      v126 = v62;
      HIDWORD(v201) = 1;
      if (![v62 isEqual:v125])
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

    v63 = [(AMSSubscriptionEntitlement *)self inAppAdamId];
    v189 = v63 == 0;
    v124 = v63;
    if (v63 || ([(AMSSubscriptionEntitlement *)v9 inAppAdamId], (v119 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v64 = [(AMSSubscriptionEntitlement *)self inAppAdamId];
      v121 = [(AMSSubscriptionEntitlement *)v9 inAppAdamId];
      v122 = v64;
      HIDWORD(v201) = 1;
      if (![v64 isEqual:v121])
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

    v65 = [(AMSSubscriptionEntitlement *)self inAppVersion];
    v187 = v65 == 0;
    v120 = v65;
    if (v65 || ([(AMSSubscriptionEntitlement *)v9 inAppVersion], (v115 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v66 = [(AMSSubscriptionEntitlement *)self inAppVersion];
      v117 = [(AMSSubscriptionEntitlement *)v9 inAppVersion];
      v118 = v66;
      HIDWORD(v201) = 1;
      if (![v66 isEqual:v117])
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

    v67 = [(AMSSubscriptionEntitlement *)self offerId];
    v185 = v67 == 0;
    v116 = v67;
    if (v67 || ([(AMSSubscriptionEntitlement *)v9 offerId], (v111 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v68 = [(AMSSubscriptionEntitlement *)self offerId];
      v113 = [(AMSSubscriptionEntitlement *)v9 offerId];
      v114 = v68;
      HIDWORD(v201) = 1;
      if (![v68 isEqual:v113])
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

    v69 = [(AMSSubscriptionEntitlement *)self poolType];
    v183 = v69 == 0;
    v112 = v69;
    if (v69 || ([(AMSSubscriptionEntitlement *)v9 poolType], (v107 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v70 = [(AMSSubscriptionEntitlement *)self poolType];
      v109 = [(AMSSubscriptionEntitlement *)v9 poolType];
      v110 = v70;
      HIDWORD(v201) = 1;
      if (![v70 isEqual:v109])
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

    v71 = [(AMSSubscriptionEntitlement *)self promoScenarioId];
    v181 = v71 == 0;
    v108 = v71;
    if (v71 || ([(AMSSubscriptionEntitlement *)v9 promoScenarioId], (v103 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v72 = [(AMSSubscriptionEntitlement *)self promoScenarioId];
      v105 = [(AMSSubscriptionEntitlement *)v9 promoScenarioId];
      v106 = v72;
      HIDWORD(v201) = 1;
      if (![v72 isEqual:v105])
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

    v73 = [(AMSSubscriptionEntitlement *)self renewDate];
    HIDWORD(v177) = v73 == 0;
    v104 = v73;
    if (v73 || ([(AMSSubscriptionEntitlement *)v9 renewDate], (v100 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v74 = [(AMSSubscriptionEntitlement *)self renewDate];
      v101 = [(AMSSubscriptionEntitlement *)v9 renewDate];
      v102 = v74;
      HIDWORD(v201) = 1;
      if (![v74 isEqual:v101])
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

    v75 = [(AMSSubscriptionEntitlement *)self startDate];
    v175 = v75 == 0;
    v99 = v75;
    if (v75 || ([(AMSSubscriptionEntitlement *)v9 startDate], (v96 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v76 = [(AMSSubscriptionEntitlement *)self startDate];
      v97 = [(AMSSubscriptionEntitlement *)v9 startDate];
      v98 = v76;
      HIDWORD(v201) = 1;
      if (![v76 isEqual:v97])
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

    v77 = [(AMSSubscriptionEntitlement *)self subscriptionBundleId];
    v171 = v77 == 0;
    v95 = v77;
    if (v77 || ([(AMSSubscriptionEntitlement *)v9 subscriptionBundleId], (v94 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v78 = [(AMSSubscriptionEntitlement *)self subscriptionBundleId];
      v92 = [(AMSSubscriptionEntitlement *)v9 subscriptionBundleId];
      v93 = v78;
      HIDWORD(v201) = 1;
      if (![v78 isEqual:v92])
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

    v79 = [(AMSSubscriptionEntitlement *)self vendorAdHocOfferId];
    v167 = v79 == 0;
    v91 = v79;
    if (v79 || ([(AMSSubscriptionEntitlement *)v9 vendorAdHocOfferId], (v88 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v80 = [(AMSSubscriptionEntitlement *)self vendorAdHocOfferId];
      v89 = [(AMSSubscriptionEntitlement *)v9 vendorAdHocOfferId];
      v90 = v80;
      HIDWORD(v201) = 1;
      if (![v80 isEqual:v89])
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

    v81 = [(AMSSubscriptionEntitlement *)self vendorId];
    v84 = v81 == 0;
    v87 = v81;
    if (v81 || ([(AMSSubscriptionEntitlement *)v9 vendorId], (v86 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v82 = [(AMSSubscriptionEntitlement *)self vendorId];
      v83 = [(AMSSubscriptionEntitlement *)v9 vendorId];
      v85 = v82;
      v8 = [v82 isEqual:v83];
      v11 = v83;
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