int main(int argc, const char **argv, const char **envp)
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  LODWORD(argv) = UIApplicationMain(argc, argv, v7, v9);

  objc_autoreleasePoolPop(v5);
  return argv;
}

void sub_100001874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001894(uint64_t a1)
{
  v2 = dispatch_group_create();
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100001AB0;
  v13[4] = sub_100001AD0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100001AB0;
  v11[4] = sub_100001AD0;
  v12 = 0;
  v3 = objc_alloc_init(SBSBiometricsService);
  if (v3)
  {
    dispatch_group_enter(v2);
    v4 = PKServiceBundleIdentifier;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000C918;
    v7[3] = &unk_10001D188;
    v8 = v3;
    v10 = v13;
    v9 = v2;
    [v8 acquireWalletPreArmSuppressionAssertionForReason:v4 completion:v7];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C990;
  block[3] = &unk_10001D1B0;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v11;
  block[6] = v13;
  block[7] = v5;
  dispatch_group_notify(v2, &_dispatch_main_q, block);

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
}

void sub_100001A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001BAC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error processing Discovery Items after entering foreground: %@", &v4, 0xCu);
    }
  }
}

void sub_1000025F4(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 128) groupStackView];
  if ([v5 presentationState] == 5)
  {
    v2 = *(*(a1 + 32) + 128);
    v3 = [v5 modalGroupFrontmostPass];
    v4 = [v3 uniqueID];
    [v2 presentPassWithUniqueID:v4 animated:0 completionHandler:0];
  }
}

id sub_100002864(uint64_t a1)
{
  v8 = 0;
  v1 = *(a1 + 32);
  if (*(v1 + 37))
  {
    *(v1 + 37) = 0;
    [*(*(a1 + 32) + 128) presentInitialState:&v8];
    v1 = *(a1 + 32);
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v1 + 128);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002928;
  v6[3] = &unk_10001CC60;
  v7 = v3;
  v6[4] = v1;
  return [v4 reloadPassesWithCompletion:v6];
}

id *sub_100002928(id *result)
{
  if ((result[5] & 1) == 0)
  {
    return [result[4] _presentLaunchPromptsIfNeeded];
  }

  return result;
}

uint64_t sub_100002A98(uint64_t a1)
{
  if ([*(a1 + 32) applicationState] == 2)
  {
    [*(*(a1 + 40) + 128) setPassesAreOutdated:1];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100002F34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002FE8;
  v5[3] = &unk_10001CE90;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 updatePassesIfNecessaryWithCompletion:v5];
}

void sub_100002FE8(id *a1)
{
  v1 = a1 + 4;
  v2 = [a1[4] scheme];
  v3 = PKLegacyWalletURLScheme;
  v4 = v2;
  v5 = v4;
  if (v4 != v3)
  {
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
    }

    else
    {
      v7 = [v4 isEqualToString:v3];

      if (v7)
      {
        goto LABEL_15;
      }
    }

    v8 = PKWalletURLScheme;
    v9 = v5;
    if (v9 != v8)
    {
      v10 = v9;
      if (!v5 || !v8)
      {

        goto LABEL_45;
      }

      v11 = [v9 isEqualToString:v8];

      if ((v11 & 1) == 0)
      {
LABEL_45:
        v33 = v10;
        if (v33 == @"file" || (v34 = v33) != 0 && (v35 = [(__CFString *)v33 isEqualToString:@"file"], v34, v35))
        {
          v36 = [*v1 pathExtension];
          if (v36 == @"order" || (v37 = v36) != 0 && (v38 = [(__CFString *)v36 isEqualToString:@"order"], v37, v37, v38))
          {
            v39 = *(a1[5] + 16);
            v372[0] = _NSConcreteStackBlock;
            v372[1] = 3221225472;
            v372[2] = sub_1000069D0;
            v372[3] = &unk_10001CE68;
            v373 = a1[4];
            [v39 presentOrderManagementAnimated:1 completion:v372];
            v29 = v373;
            goto LABEL_194;
          }
        }

        goto LABEL_192;
      }

      goto LABEL_15;
    }
  }

LABEL_15:
  v345 = [*v1 host];
  v343 = [*v1 pathComponents];
  v12 = [v343 count];
  v333 = v1;
  v344 = [[NSURLComponents alloc] initWithURL:*v1 resolvingAgainstBaseURL:0];
  [v344 queryItems];
  v440 = 0u;
  v441 = 0u;
  v442 = 0u;
  obj = v443 = 0u;
  v13 = [obj countByEnumeratingWithState:&v440 objects:v462 count:16];
  if (!v13)
  {
    goto LABEL_36;
  }

  v14 = v13;
  v15 = *v441;
  v16 = PKUserNotificationQueryItemApplicationMessageContentIdentifier;
  while (2)
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v441 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v440 + 1) + 8 * i);
      v19 = [v18 name];
      v20 = [v18 value];
      v21 = v19;
      v22 = v21;
      if (v21 == v16)
      {

LABEL_29:
        if ([v20 length])
        {
          v25 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *v333;
            *buf = 138412546;
            v459 = v26;
            v460 = 2112;
            v461 = v20;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "URL %@ has associated applicationMessageContentIdentifier: %@", buf, 0x16u);
          }

          v27 = +[PKPaymentService paymentService];
          [v27 userNotificationActionPerformed:2 applicationMessageContentIdentifier:v20 completion:0];

          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v21)
      {
        v23 = v16 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {

        goto LABEL_30;
      }

      v24 = [v21 isEqualToString:v16];

      if (v24)
      {
        goto LABEL_29;
      }

LABEL_30:
    }

    v14 = [obj countByEnumeratingWithState:&v440 objects:v462 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_36:
  v28 = obj;

  v29 = v345;
  v30 = v343;
  v31 = v344;
  if ([a1[5] _handleWalletUniversalLinkableURLWithHost:v345 pathComponents:v343 urlComponents:v344])
  {
    goto LABEL_81;
  }

  if ([v345 isEqual:PKUserNotificationActionRoutePassUpdate])
  {
    if (v12 != 2)
    {
      goto LABEL_191;
    }

    v32 = [v343 lastObject];
    [*(a1[5] + 16) presentPassWithUpdateUserNotificationIdentifier:v32];
    goto LABEL_80;
  }

  if ([v345 isEqual:PKUserNotificationActionRouteViewPass])
  {
    if (v12 != 3)
    {
      if (v12 != 2)
      {
        goto LABEL_191;
      }

      v32 = [v343 lastObject];
      [*(a1[5] + 16) presentPassWithUniqueID:v32 animated:1 completionHandler:0];
      goto LABEL_80;
    }

    v44 = [v343 objectAtIndexedSubscript:1];
    v57 = [v343 objectAtIndexedSubscript:2];
    v58 = PKPaymentPassActionTypeToString();
    v59 = [v57 isEqualToString:v58];

    if (v59)
    {
      LOBYTE(v56) = 1;
      [*(a1[5] + 16) presentActionViewControllerWithUniqueID:v44 actionType:1];
      goto LABEL_103;
    }

    v60 = PKPaymentPassActionTypeToString();
    v61 = [v57 isEqualToString:v60];

    if (v61)
    {
      [*(a1[5] + 16) presentActionViewControllerWithUniqueID:v44 actionType:2];
LABEL_89:
      LOBYTE(v56) = 1;
      goto LABEL_103;
    }

    if ([v57 isEqualToString:PKUserNotificationViewPassPersistentEmulation])
    {
      v43 = objc_alloc_init(PKPassPresentationContext);
      LOBYTE(v56) = 1;
      [v43 setPersistentCardEmulation:1];
      [*(a1[5] + 16) presentPassWithUniqueID:v44 context:v43 animated:1 completionHandler:0];
      goto LABEL_102;
    }

    if ([v57 isEqualToString:PKUserNotificationActionRouteViewPassDetails])
    {
      LOBYTE(v56) = 1;
      [*(a1[5] + 16) presentPassDetailsWithUniqueID:v44 animated:1 completionHandler:0];
      goto LABEL_103;
    }

    if ([v57 isEqualToString:PKUserNotificationActionRouteCardInformation])
    {
      v72 = a1[5];
      v73 = v72[16];
      v439[0] = _NSConcreteStackBlock;
      v439[1] = 3221225472;
      v439[2] = sub_1000062E4;
      v439[3] = &unk_10001CCB0;
      v439[4] = v72;
      LOBYTE(v56) = 1;
      [v73 presentPassWithUniqueID:v44 animated:1 completionHandler:v439];
      goto LABEL_103;
    }

    if ([v57 isEqualToString:PKUserNotificationActionRouteViewPassExpressPromotion])
    {
      v317 = v57;
      v319 = v44;
      v328 = v5;
      v74 = objc_alloc_init(NSMutableDictionary);
      v435 = 0u;
      v436 = 0u;
      v437 = 0u;
      v438 = 0u;
      v56 = obj;
      v75 = [v56 countByEnumeratingWithState:&v435 objects:v457 count:16];
      if (!v75)
      {
        v353 = 0;
        v77 = 0;
        goto LABEL_187;
      }

      v76 = v75;
      v353 = 0;
      v77 = 0;
      v78 = *v436;
      v79 = PKUserNotificationActionQueryItemMarketIdentifier;
      v364 = PKUserNotificationActionQueryItemMarketNotificationAssetIdentifier;
      loga = PKUserNotificationActionQueryItemExpressModeEnabledHideDisableAction;
      v348 = PKUserNotificationActionQueryItemMarketName;
      v340 = PKUserNotificationActionQueryItemMarketRegion;
      v336 = PKUserNotificationActionQueryItemEligibleMarkets;
      v324 = PKUserNotificationActionQueryItemReferralSource;
      v322 = PKAnalyticsReportReferralSourceKey;
      v323 = PKAnalyticsReportEligibleMarketsKey;
      v325 = PKAnalyticsReportMarketRegionKey;
      v80 = PKAnalyticsReportMarketNameKey;
      while (1)
      {
        v81 = 0;
        do
        {
          if (*v436 != v78)
          {
            objc_enumerationMutation(v56);
          }

          v82 = *(*(&v435 + 1) + 8 * v81);
          v83 = [v82 name];
          if (([v83 isEqualToString:v79] & 1) != 0 || objc_msgSend(v83, "isEqualToString:", v364))
          {
            [v82 value];
            v77 = v84 = v77;
            goto LABEL_133;
          }

          if ([v83 isEqualToString:loga])
          {
            v84 = [v82 value];
            if ([v84 isEqualToString:@"true"])
            {
              v85 = 1;
            }

            else
            {
              v89 = [v84 isEqualToString:@"false"];
              v85 = 2;
              if (!v89)
              {
                v85 = 0;
              }
            }

            v353 = v85;
            goto LABEL_133;
          }

          if ([v83 isEqualToString:v348])
          {
            v84 = [v82 value];
            v86 = v74;
            v87 = v84;
            v88 = v80;
            goto LABEL_150;
          }

          if ([v83 isEqualToString:v340])
          {
            v84 = [v82 value];
            v86 = v74;
            v87 = v84;
            v88 = v325;
            goto LABEL_150;
          }

          if ([v83 isEqualToString:v336])
          {
            v84 = [v82 value];
            v86 = v74;
            v87 = v84;
            v88 = v323;
            goto LABEL_150;
          }

          if ([v83 isEqualToString:v324])
          {
            v84 = [v82 value];
            v86 = v74;
            v87 = v84;
            v88 = v322;
LABEL_150:
            [v86 safelySetObject:v87 forKey:v88];
LABEL_133:
          }

          v81 = v81 + 1;
          v28 = obj;
        }

        while (v76 != v81);
        v90 = [v56 countByEnumeratingWithState:&v435 objects:v457 count:16];
        v76 = v90;
        if (!v90)
        {
LABEL_187:

          LOBYTE(v56) = 1;
          v44 = v319;
          [*(a1[5] + 16) presentExpressUpgradeDetailForPassUniqueID:v319 assetIdentifier:v77 hideDisableAction:v353 reportingMetadata:v74 animated:1 completionHandler:0];

          v5 = v328;
          v30 = v343;
          v31 = v344;
          v29 = v345;
          goto LABEL_188;
        }
      }
    }

    if ([v57 isEqualToString:PKUserNotificationActionRouteViewISO18013Details])
    {
      LOBYTE(v56) = 1;
      [*(a1[5] + 16) presentISO18013DetailsForPassUniqueIdentifier:v44 animated:1 completion:0];
      goto LABEL_103;
    }

    if ([v57 isEqualToString:PKUserNotificationActionRouteViewShareDetails])
    {
      v318 = v57;
      v330 = v5;
      v434 = 0u;
      v433 = 0u;
      v432 = 0u;
      v431 = 0u;
      v103 = obj;
      v104 = [v103 countByEnumeratingWithState:&v431 objects:v456 count:16];
      if (v104)
      {
        v105 = v104;
        v106 = 0;
        v107 = *v432;
        v108 = PKUserNotificationActionQueryItemShareIdentifiers;
        do
        {
          for (j = 0; j != v105; j = j + 1)
          {
            if (*v432 != v107)
            {
              objc_enumerationMutation(v103);
            }

            v110 = *(*(&v431 + 1) + 8 * j);
            v111 = [v110 name];
            v112 = [v111 isEqualToString:v108];

            if (v112)
            {
              v113 = [v110 value];
              v114 = [v113 componentsSeparatedByString:{@", "}];

              v106 = v114;
            }

            v31 = v344;
            v29 = v345;
          }

          v105 = [v103 countByEnumeratingWithState:&v431 objects:v456 count:16];
        }

        while (v105);
      }

      else
      {
        v106 = 0;
      }

      if ([v106 count] > 1)
      {
        v130 = 0;
      }

      else
      {
        v130 = [v106 firstObject];
      }

      v5 = v330;
      v30 = v343;
      v28 = obj;
      v57 = v318;
      [*(a1[5] + 16) presentShareDetailsForPassUniqueIdentifier:v44 shareIdentifier:v130];

      goto LABEL_89;
    }

    if ([v57 isEqualToString:PKUserNotificationActionRouteViewEntitlementDetails])
    {
      [*(a1[5] + 16) presentEntitlementDetailsForPassUniqueIdentifier:v44];
      goto LABEL_89;
    }

    v320 = v44;
    v332 = v5;
    if ([v57 isEqualToString:PKUserNotificationActionRouteSetupVirtualCardNumber])
    {
      LOBYTE(v56) = 1;
      [*(a1[5] + 16) presentSetupVirtualCardNumberForPassUniqueIdentifier:v44 animated:1 completion:0];
      v30 = v343;
      v31 = v344;
      v29 = v345;
      v28 = obj;
      goto LABEL_103;
    }

    v131 = PKPaymentPassActionTypeToString();
    v317 = v57;
    v132 = [v57 isEqualToString:v131];

    if (!v132)
    {
      if ([v57 isEqualToString:PKUserNotificationActionRoutePerformPrecursorPassUpdate])
      {
        [*(a1[5] + 16) presentPrecursorPassUpdateForPassUniqueIdentifier:v44];
      }

      else if ([v57 isEqualToString:PKURLActionRouteSharePass])
      {
        [a1[5] sharePassWithUniqueID:v44 completion:&stru_10001CCF0];
      }

      else
      {
        if (![v57 isEqualToString:PKURLActionRouteViewPassShares])
        {
          LOBYTE(v56) = 0;
          goto LABEL_304;
        }

        [a1[5] showSharesListForPassWithUniqueID:v44 completion:&stru_10001CD10];
      }

      LOBYTE(v56) = 1;
      v30 = v343;
      v31 = v344;
      v29 = v345;
      v28 = obj;
LABEL_188:
      v57 = v317;
      goto LABEL_103;
    }

    v430 = 0u;
    v429 = 0u;
    v428 = 0u;
    v427 = 0u;
    v133 = obj;
    v56 = [v133 countByEnumeratingWithState:&v427 objects:v455 count:16];
    if (!v56)
    {

      v149 = 0;
      v134 = 0;
      goto LABEL_303;
    }

    v366 = 0;
    v134 = 0;
    v135 = *v428;
    v136 = PKUserNotificationActionQueryItemAuxiliaryPassInformationIdentifier;
    v137 = PKUserNotificationActionQueryItemAuxiliaryPassInformationItemIdentifier;
    while (2)
    {
      v138 = 0;
LABEL_233:
      if (*v428 != v135)
      {
        objc_enumerationMutation(v133);
      }

      v139 = *(*(&v427 + 1) + 8 * v138);
      v140 = [v139 name];
      v141 = v140;
      if (v140 == v136)
      {

        goto LABEL_244;
      }

      if (v140)
      {
        v142 = v136 == 0;
      }

      else
      {
        v142 = 1;
      }

      if (v142)
      {
      }

      else
      {
        v143 = [v140 isEqualToString:v136];

        if (v143)
        {
LABEL_244:
          [v139 value];
          v134 = v144 = v134;
          goto LABEL_255;
        }
      }

      v145 = [v139 name];
      v144 = v145;
      if (v145 == v137)
      {

        goto LABEL_254;
      }

      if (v145)
      {
        v146 = v137 == 0;
      }

      else
      {
        v146 = 1;
      }

      if (!v146)
      {
        v147 = [v145 isEqualToString:v137];

        if (v147)
        {
LABEL_254:
          [v139 value];
          v366 = v144 = v366;
LABEL_255:
        }

        if (v56 == ++v138)
        {
          v56 = [v133 countByEnumeratingWithState:&v427 objects:v455 count:16];
          if (!v56)
          {

            v148 = v366;
            v149 = v148;
            if (v148)
            {
              v56 = [v148 length];

              if (v56)
              {
                [*(a1[5] + 16) presentAuxiliaryPassInformationItemDetailForItemIdentifier:v149 informationIdentifier:v134 forPassUniqueID:v320 completion:0];
                LOBYTE(v56) = 1;
              }
            }

            else
            {
              LOBYTE(v56) = 0;
            }

LABEL_303:

LABEL_304:
            v5 = v332;
            v30 = v343;
            v31 = v344;
            v29 = v345;
            v28 = obj;
            v44 = v320;
            goto LABEL_188;
          }

          continue;
        }

        goto LABEL_233;
      }

      break;
    }

    goto LABEL_255;
  }

  if (![v345 isEqual:PKUserNotificationActionRouteViewTransaction])
  {
    if ([v345 isEqual:PKUserNotificationActionRouteAddValueAddedServicePass])
    {
      if (v12 != 2)
      {
        goto LABEL_191;
      }

      v32 = [v343 lastObject];
      [*(a1[5] + 16) addVASPassWithIdentifier:v32];
      goto LABEL_80;
    }

    if ([v345 isEqualToString:PKURLActionPaymentSetup])
    {
      [*(a1[5] + 16) presentPaymentSetupInMode:0 referrerIdentifier:0 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:0 productIdentifiers:0 sectionIdentifier:0];
      goto LABEL_81;
    }

    if ([v345 isEqualToString:PKURLActionPaymentSetupIDMSCardOnFile])
    {
      if (v12 == 2)
      {
        v62 = [v343 objectAtIndex:1];
      }

      else
      {
        v62 = 0;
      }

      v65 = *(a1[5] + 16);
      v66 = +[NSSet set];
      [v65 presentPaymentSetupInMode:2 referrerIdentifier:v62 referralSource:0 campaignIdentifier:0 paymentNetwork:0 transitNetworkIdentifier:0 allowedFeatureIdentifiers:v66 productIdentifiers:0 sectionIdentifier:0];

      v30 = v343;
      goto LABEL_81;
    }

    if ([v345 isEqualToString:PKURLActionPaymentOffers])
    {
      v63 = [v343 indexOfObject:PKURLActionPaymentOffersCriteriaIdentifier];
      if (v63 == 0x7FFFFFFFFFFFFFFFLL || (v64 = v63 + 1, v63 + 1 >= [v343 count]))
      {
        v32 = 0;
      }

      else
      {
        v32 = [v343 objectAtIndexedSubscript:v64];
      }

      v69 = [v343 indexOfObject:PKURLActionPaymentOffersProductIdentifier];
      if (v69 == 0x7FFFFFFFFFFFFFFFLL || (v70 = v69 + 1, v69 + 1 >= [v343 count]))
      {
        v71 = 0;
      }

      else
      {
        v71 = [v343 objectAtIndexedSubscript:v70];
      }

      [*(a1[5] + 16) presentPaymentOfferCriteriaIdentifier:v32 productIdentifier:v71];

      goto LABEL_80;
    }

    if ([v345 isEqualToString:PKURLActionPaymentSetupSelectPaymentNetwork])
    {
      if (v12 < 2)
      {
        v67 = 0;
      }

      else
      {
        v67 = [v343 objectAtIndex:1];
        if (v12 != 2)
        {
          v68 = [v343 objectAtIndex:2];
          goto LABEL_155;
        }
      }

      v68 = 0;
LABEL_155:
      v421 = 0u;
      v422 = 0u;
      v419 = 0u;
      v420 = 0u;
      v91 = obj;
      v92 = [v91 countByEnumeratingWithState:&v419 objects:v453 count:16];
      if (!v92)
      {
        v100 = 0;
        goto LABEL_169;
      }

      v93 = v92;
      v329 = v5;
      v94 = *v420;
      v95 = PKUserNotificationActionQueryItemReferralSource;
LABEL_157:
      v96 = 0;
      while (1)
      {
        if (*v420 != v94)
        {
          objc_enumerationMutation(v91);
        }

        v97 = *(*(&v419 + 1) + 8 * v96);
        v98 = [v97 name];
        v99 = [v98 isEqualToString:v95];

        if (v99)
        {
          break;
        }

        if (v93 == ++v96)
        {
          v93 = [v91 countByEnumeratingWithState:&v419 objects:v453 count:16];
          if (!v93)
          {
            v100 = 0;
            goto LABEL_165;
          }

          goto LABEL_157;
        }
      }

      v100 = [v97 value];
LABEL_165:
      v5 = v329;
      v31 = v344;
      v29 = v345;
LABEL_169:

      v101 = *(a1[5] + 16);
      v102 = +[NSSet set];
      [v101 presentPaymentSetupInMode:3 referrerIdentifier:0 referralSource:v100 campaignIdentifier:0 paymentNetwork:v67 transitNetworkIdentifier:v68 allowedFeatureIdentifiers:v102 productIdentifiers:0 sectionIdentifier:0];

      v30 = v343;
      goto LABEL_170;
    }

    if ([v345 isEqualToString:PKUserNotificationActionRoutePeerPaymentTopUp])
    {
      [*(a1[5] + 16) presentPeerPaymentTopUp];
      goto LABEL_191;
    }

    if ([v345 isEqualToString:PKUserNotificationActionRoutePeerPaymentSendOrRequest])
    {
      [*(a1[5] + 16) presentPeerPaymentSendOrRequest];
      goto LABEL_191;
    }

    if ([v345 isEqualToString:PKUserNotificationActionRoutePeerPaymentTermsAcceptance])
    {
      [*(a1[5] + 16) presentPeerPaymentTermsAcceptance];
      goto LABEL_191;
    }

    if ([v345 isEqualToString:PKUserNotificationActionRoutePeerPaymentVerifyIdentity])
    {
      [*(a1[5] + 16) presentPeerPaymentVerifyIdentity];
      goto LABEL_191;
    }

    v331 = v5;
    if ([v345 isEqualToString:PKUserNotificationActionRoutePeerPaymentSetup])
    {
      v417 = 0u;
      v418 = 0u;
      v415 = 0u;
      v416 = 0u;
      v115 = obj;
      v116 = [v115 countByEnumeratingWithState:&v415 objects:v452 count:16];
      if (v116)
      {
        v117 = v116;
        v334 = 0;
        v349 = 0;
        v354 = 0;
        v365 = 0;
        v118 = 0;
        v119 = *v416;
        v120 = PKUserNotificationActionQueryItemPeerPaymentSetupAmount;
        v121 = PKUserNotificationActionQueryItemPeerPaymentSetupCurrency;
        logb = PKUserNotificationActionQueryItemPeerPaymentSetupFlowState;
        v341 = PKUserNotificationActionQueryItemPeerPaymentSetupSenderAddress;
        v337 = PKUserNotificationActionQueryItemPeerPaymentSetupPaymentMode;
        do
        {
          for (k = 0; k != v117; k = k + 1)
          {
            if (*v416 != v119)
            {
              objc_enumerationMutation(v115);
            }

            v123 = *(*(&v415 + 1) + 8 * k);
            v124 = [v123 name];
            v125 = [v123 value];
            if ([v125 length])
            {
              if ([v124 isEqualToString:v120])
              {
                v126 = [NSDecimalNumber decimalNumberWithString:v125];

                v118 = v126;
              }

              else if ([v124 isEqualToString:v121])
              {
                v127 = v125;

                v365 = v127;
              }

              else if ([v124 isEqualToString:logb])
              {
                v349 = PKPeerPaymentRegistrationFlowStateFromString();
              }

              else if ([v124 isEqualToString:v341])
              {
                v128 = v125;

                v354 = v128;
              }

              else if ([v124 isEqualToString:v337])
              {
                v334 = PKPeerPaymentPaymentModeFromString();
              }
            }
          }

          v117 = [v115 countByEnumeratingWithState:&v415 objects:v452 count:16];
        }

        while (v117);

        v129 = 0;
        if (v118 && v365)
        {
          v129 = PKCurrencyAmountCreate(v118, v365, 0);
        }
      }

      else
      {

        v129 = 0;
        v334 = 0;
        v349 = 0;
        v354 = 0;
        v365 = 0;
        v118 = 0;
      }

      v150 = objc_alloc_init(PKPeerPaymentAccountResolutionControllerConfiguration);
      [v150 setCurrencyAmount:v129];
      [v150 setRegistrationFlowState:v349];
      [v150 setSenderAddress:v354];
      [v150 setPaymentMode:v334];
      [*(a1[5] + 16) presentPeerPaymentSetupWithConfiguration:v150];

      goto LABEL_266;
    }

    if ([v345 isEqualToString:PKURLActionShowExpiredPasses])
    {
      [*(a1[5] + 16) presentExpiredPassesAnimated:1 completionHandler:0];
      goto LABEL_266;
    }

    if ([v345 isEqualToString:PKUserNotificationActionRouteAccountServiceSchedulePayment])
    {
      v30 = v343;
      v31 = v344;
      v29 = v345;
      v28 = obj;
      if (v12 != 2)
      {
        goto LABEL_191;
      }

      v32 = [v343 objectAtIndexedSubscript:1];
      [*(a1[5] + 16) presentAccountServiceSchedulePayment:v32 billPayAmountType:0 billPayAmount:0 completion:0];
      goto LABEL_80;
    }

    if ([v345 isEqualToString:PKUserNotificationActionRouteAccountServicePaymentDetails])
    {
      v30 = v343;
      v31 = v344;
      v29 = v345;
      v28 = obj;
      if (v12 != 2)
      {
        goto LABEL_191;
      }

      v367 = [v343 objectAtIndexedSubscript:1];
      v411 = 0u;
      v412 = 0u;
      v413 = 0u;
      v414 = 0u;
      v151 = obj;
      v152 = [v151 countByEnumeratingWithState:&v411 objects:v451 count:16];
      if (!v152)
      {
        v154 = 0;
        goto LABEL_321;
      }

      v153 = v152;
      v154 = 0;
      v155 = *v412;
      v156 = PKUserNotificationActionQueryItemPaymentReferenceIdentifier;
LABEL_274:
      v157 = 0;
      while (1)
      {
        if (*v412 != v155)
        {
          objc_enumerationMutation(v151);
        }

        v158 = *(*(&v411 + 1) + 8 * v157);
        v159 = [v158 name];
        v160 = [v158 value];
        if (![v160 length])
        {
          goto LABEL_288;
        }

        v161 = v159;
        v162 = v161;
        if (v161 == v156)
        {
        }

        else
        {
          if (v161)
          {
            v163 = v156 == 0;
          }

          else
          {
            v163 = 1;
          }

          if (v163)
          {
            goto LABEL_287;
          }

          v164 = [v161 isEqualToString:v156];

          if (!v164)
          {
            goto LABEL_288;
          }
        }

        v162 = v154;
        v154 = v160;
LABEL_287:

LABEL_288:
        if (v153 == ++v157)
        {
          v153 = [v151 countByEnumeratingWithState:&v411 objects:v451 count:16];
          if (!v153)
          {
LABEL_321:

            v179 = v367;
            [*(a1[5] + 16) presentAccountServicePaymentWithReferenceIdentifier:v154 forPassWithUniqueID:v367];
            goto LABEL_322;
          }

          goto LABEL_274;
        }
      }
    }

    v165 = PKVirtualCardRoutePass;
    v166 = v345;
    v167 = v166;
    if (v166 == v165)
    {
    }

    else
    {
      if (!v166 || !v165)
      {

        goto LABEL_315;
      }

      v168 = [v166 isEqualToString:v165];

      if (!v168)
      {
LABEL_315:
        v175 = PKInstallmentRoutePass;
        v176 = v167;
        v177 = v176;
        if (v176 == v175)
        {
        }

        else
        {
          if (!v167 || !v175)
          {

            goto LABEL_330;
          }

          v178 = [v176 isEqualToString:v175];

          if (!v178)
          {
LABEL_330:
            v180 = PKUserNotificationActionRouteViewSpendingSummary;
            v181 = v177;
            v182 = v181;
            if (v181 == v180)
            {
            }

            else
            {
              if (!v167 || !v180)
              {

LABEL_381:
                v207 = PKUserNotificationActionRouteViewBalanceSummary;
                v208 = v182;
                v209 = v208;
                if (v208 == v207)
                {
                }

                else
                {
                  if (!v167 || !v207)
                  {

LABEL_416:
                    if ([v209 isEqual:PKShareableCredentialsNotificationActionRoute])
                    {
                      v401 = 0u;
                      v402 = 0u;
                      v399 = 0u;
                      v400 = 0u;
                      v369 = obj;
                      v224 = [v369 countByEnumeratingWithState:&v399 objects:v448 count:16];
                      if (v224)
                      {
                        v225 = v224;
                        v226 = 0;
                        v56 = 0;
                        v227 = *v400;
                        v228 = PKShareableCredentialsNotificationActionIdentiferParameter;
                        v229 = PKShareableCredentialsPassThumbnailImageParameter;
                        do
                        {
                          for (m = 0; m != v225; m = m + 1)
                          {
                            if (*v400 != v227)
                            {
                              objc_enumerationMutation(v369);
                            }

                            v231 = *(*(&v399 + 1) + 8 * m);
                            v232 = [v231 name];
                            if ([v228 isEqualToString:v232])
                            {
                              v233 = [v231 value];

                              v56 = v233;
                            }

                            if ([v229 isEqualToString:v232])
                            {
                              v234 = [v231 value];
                              v235 = [v234 pk_decodeHexadecimal];

                              v226 = v235;
                            }
                          }

                          v225 = [v369 countByEnumeratingWithState:&v399 objects:v448 count:16];
                        }

                        while (v225);

                        if (v56)
                        {
                          v236 = 1;
                          [*(a1[5] + 16) presentShareableCredentialWithEncryptedProvisioningTargetsHexEncodedString:v56 passThumbnailImageData:v226 animated:1];
LABEL_438:

                          v5 = v331;
                          v30 = v343;
                          v31 = v344;
                          v29 = v345;
                          v28 = obj;
                          v44 = v56;
                          LOBYTE(v56) = v236;
                          goto LABEL_104;
                        }
                      }

                      else
                      {

                        v56 = 0;
                        v226 = 0;
                      }

                      v236 = 0;
                      goto LABEL_438;
                    }

                    if (![v209 isEqual:PKAddShareableConfigurationActionRoute] || (PKStockholmEnvironmentIsLikelyProduction() & 1) != 0)
                    {
                      if ([v209 isEqualToString:PKUserNotificationActionRouteInvitationInbox])
                      {
                        if (v12 < 2)
                        {
                          v237 = 0;
                        }

                        else
                        {
                          v237 = [v343 objectAtIndexedSubscript:1];
                        }

                        v264 = *(a1[5] + 16);
                        v388[0] = _NSConcreteStackBlock;
                        v388[1] = 3221225472;
                        v388[2] = sub_100006348;
                        v388[3] = &unk_10001CD38;
                        v389 = v237;
                        v265 = v237;
                        [v264 presentInvitationsInboxAnimated:1 completion:v388];

                        goto LABEL_266;
                      }

                      if ([v209 isEqualToString:PKUserNotificationActionRouteJointOffer])
                      {
                        if (v12 < 2)
                        {
                          v169 = 0;
                        }

                        else
                        {
                          v169 = [v343 objectAtIndexedSubscript:1];
                          if (v12 != 2)
                          {
                            v238 = [v343 objectAtIndexedSubscript:2];
                            v170 = v238;
                            if (v169 && v238)
                            {
                              [*(a1[5] + 16) presentInvitationWithIdentifier:v238 forAccountWithIdentifier:v169 completion:0];
                            }

                            goto LABEL_389;
                          }
                        }

                        v170 = 0;
                        goto LABEL_389;
                      }

                      v266 = PKURLActionRouteCreditAccountAddUser;
                      v267 = v209;
                      v268 = v267;
                      if (v267 == v266)
                      {
                      }

                      else
                      {
                        if (!v167 || !v266)
                        {

                          goto LABEL_499;
                        }

                        v269 = [v267 isEqualToString:v266];

                        if (!v269)
                        {
LABEL_499:
                          v270 = PKURLActionRouteNotificationSettings;
                          v271 = v268;
                          v29 = v271;
                          if (v271 == v270)
                          {
                          }

                          else
                          {
                            if (!v167 || !v270)
                            {

                              goto LABEL_511;
                            }

                            v272 = [v271 isEqualToString:v270];

                            if (!v272)
                            {
LABEL_511:
                              if ([v29 isEqualToString:PKUserNotificationActionRouteOrders])
                              {
                                v273 = *(a1[5] + 16);
                                v384[0] = _NSConcreteStackBlock;
                                v384[1] = 3221225472;
                                v384[2] = sub_100006360;
                                v384[3] = &unk_10001CD60;
                                v385 = a1[6];
                                v387 = v12;
                                v30 = v343;
                                v386 = v343;
                                [v273 presentOrderManagementAnimated:1 completion:v384];

                                goto LABEL_267;
                              }

                              if ([v29 isEqual:PKUserNotificationActionRouteFPANCardConsent])
                              {
                                v179 = [a1[6] objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
                                v274 = [v179 isEqualToString:PKSpringBoardBundleIdentifier] ^ 1;
                                v154 = +[PKPaymentService paymentService];
                                [v154 clearFPANCardImportNotificationsWithCompletion:0];
                                [*(a1[5] + 16) presentImportFPANCardConsentAnimated:1 referralSource:v274 completion:0];
LABEL_322:

                                goto LABEL_323;
                              }

                              if ([v29 isEqual:PKUserNotificationActionRouteAddPaymentCard])
                              {
                                v179 = [a1[6] objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
                                v275 = [v179 isEqualToString:PKSpringBoardBundleIdentifier] ^ 1;
                                if (v12 == 2)
                                {
                                  v276 = [v343 lastObject];
                                  v277 = objc_alloc_init(PKAutoFillCardManager);
                                  v278 = [[NSSet alloc] initWithObjects:{&off_10001D798, 0}];
                                  v379[0] = _NSConcreteStackBlock;
                                  v379[1] = 3221225472;
                                  v379[2] = sub_10000660C;
                                  v379[3] = &unk_10001CDB0;
                                  v380 = v276;
                                  v381 = v277;
                                  v382 = a1[5];
                                  v383 = v275;
                                  v279 = v277;
                                  v280 = v276;
                                  [v279 activeFPANCardsWithOptions:7 allowedCardTypes:v278 completion:v379];
                                }

                                else
                                {
                                  v278 = objc_alloc_init(PKPaymentService);
                                  [v278 clearFPANCardImportNotificationsWithCompletion:0];
                                  [*(a1[5] + 16) presentAddFPANCardAnimated:1 selectedCredentials:0 referralSource:v275 completion:0];
                                }

LABEL_323:
                                goto LABEL_266;
                              }

                              if ([v29 isEqual:PKURLActionRouteIssuer])
                              {
                                v281 = [a1[5] _bankConnectAuthorizationRedirectURLFromPathComponents:v343 queryItems:obj];
                                if (v281)
                                {
                                  [a1[5] _presentBankConnectAuthorizationViewControllerWithRedirectURL:v281];

                                  goto LABEL_194;
                                }

                                v283 = PKLogFacilityTypeGetObject();
                                if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
                                {
                                  sub_10000F500(v283);
                                }

                                goto LABEL_391;
                              }

                              if ([v29 isEqual:PKURLActionRouteConnectedCards])
                              {
                                v30 = v343;
                                v31 = v344;
                                v29 = v345;
                                v28 = obj;
                                if (v12 >= 2)
                                {
                                  v44 = [v343 objectAtIndexedSubscript:1];
                                  v282 = [v44 isEqual:PKURLSubactionRouteBackgroundRefreshConfirmation];
                                  LOBYTE(v56) = v282;
                                  if (v282)
                                  {
                                    [*(a1[5] + 16) presentBackgroundRefreshConfirmationAnimated:1];
                                  }

                                  v30 = v343;
                                  v31 = v344;
                                  v29 = v345;
                                  v28 = obj;
                                  goto LABEL_104;
                                }

                                goto LABEL_191;
                              }

                              if ([v29 isEqual:PKUserNotificationActionRouteMerchantToken])
                              {
                                v30 = v343;
                                v31 = v344;
                                v29 = v345;
                                v28 = obj;
                                if (v12 < 2 || !_os_feature_enabled_impl())
                                {
                                  goto LABEL_191;
                                }

                                v32 = [v343 objectAtIndexedSubscript:1];
                                [*(a1[5] + 16) presentMerchantTokenWithIdentifier:v32 animated:1 completion:&stru_10001CDF0];
LABEL_80:

                                goto LABEL_81;
                              }

                              v284 = PKURLActionApplePayUserEducationDemo;
                              v285 = v29;
                              v286 = v285;
                              if (v285 == v284)
                              {
                              }

                              else
                              {
                                if (!v167 || !v284)
                                {

                                  goto LABEL_558;
                                }

                                v287 = [v285 isEqualToString:v284];

                                if (!v287)
                                {
LABEL_558:
                                  v300 = PKURLActionHowToUseWallet;
                                  v301 = v286;
                                  v302 = v301;
                                  if (v301 == v300)
                                  {
                                  }

                                  else
                                  {
                                    if (!v167 || !v300)
                                    {

LABEL_570:
                                      v305 = PKURLActionRouteAccount;
                                      v306 = v302;
                                      v169 = v306;
                                      if (v306 == v305)
                                      {

                                        v30 = v343;
                                        v31 = v344;
                                        v29 = v345;
                                        v28 = obj;
LABEL_578:
                                        if ([v30 count])
                                        {
                                          v308 = [v30 objectAtIndexedSubscript:1];
                                          if (v308)
                                          {
                                            v309 = v308;
                                            v310 = [PKCoreSpotlightUtilities accountIdentifierFromSpotlightIdentifier:v308];
                                            v311 = v30;
                                            v312 = v310;
                                            if (v310)
                                            {
                                              v313 = v310;
                                            }

                                            else
                                            {
                                              v313 = v309;
                                            }

                                            v314 = v28;
                                            v315 = v313;

                                            v316 = +[PKAccountService sharedInstance];
                                            v374[0] = _NSConcreteStackBlock;
                                            v374[1] = 3221225472;
                                            v374[2] = sub_1000068D4;
                                            v374[3] = &unk_10001CE40;
                                            v374[4] = a1[5];
                                            [v316 accountWithIdentifier:v315 completion:v374];

                                            v29 = v169;
                                            goto LABEL_194;
                                          }
                                        }

                                        goto LABEL_191;
                                      }

                                      if (v167 && v305)
                                      {
                                        v307 = [v306 isEqualToString:v305];

                                        v30 = v343;
                                        v31 = v344;
                                        v29 = v345;
                                        v28 = obj;
                                        if (!v307)
                                        {
                                          goto LABEL_191;
                                        }

                                        goto LABEL_578;
                                      }

LABEL_390:

                                      goto LABEL_391;
                                    }

                                    v303 = [v301 isEqualToString:v300];

                                    if (!v303)
                                    {
                                      goto LABEL_570;
                                    }
                                  }

                                  if (v12 < 2)
                                  {
                                    v179 = 0;
                                  }

                                  else
                                  {
                                    v179 = [v343 objectAtIndex:1];
                                  }

                                  [*(a1[5] + 16) presentHowToUseWalletWithCardLotIdentifier:v179];
                                  goto LABEL_323;
                                }
                              }

                              v377 = 0u;
                              v378 = 0u;
                              v375 = 0u;
                              v376 = 0u;
                              v288 = obj;
                              v289 = [v288 countByEnumeratingWithState:&v375 objects:v444 count:16];
                              if (!v289)
                              {
                                goto LABEL_556;
                              }

                              v290 = v289;
                              v291 = *v376;
                              v292 = PKURLApplePayUserEducationDemoSourceKey;
                              while (1)
                              {
                                for (n = 0; n != v290; n = n + 1)
                                {
                                  if (*v376 != v291)
                                  {
                                    objc_enumerationMutation(v288);
                                  }

                                  v294 = *(*(&v375 + 1) + 8 * n);
                                  v295 = [v294 name];
                                  v296 = v295;
                                  if (v295 == v292)
                                  {

LABEL_564:
                                    v304 = [v294 value];
                                    v299 = PKApplePayUserEducationDemoSourceFromString();

LABEL_565:
                                    [*(a1[5] + 16) presentApplePayUserEducationDemoFromSource:v299];
LABEL_266:
                                    v5 = v331;
                                    v30 = v343;
LABEL_267:
                                    v31 = v344;
                                    v29 = v345;
LABEL_170:
                                    v28 = obj;
LABEL_81:

LABEL_194:
                                    goto LABEL_195;
                                  }

                                  if (v295)
                                  {
                                    v297 = v292 == 0;
                                  }

                                  else
                                  {
                                    v297 = 1;
                                  }

                                  if (v297)
                                  {
                                  }

                                  else
                                  {
                                    v298 = [v295 isEqualToString:v292];

                                    if (v298)
                                    {
                                      goto LABEL_564;
                                    }
                                  }
                                }

                                v290 = [v288 countByEnumeratingWithState:&v375 objects:v444 count:16];
                                if (!v290)
                                {
LABEL_556:
                                  v299 = 0;
                                  goto LABEL_565;
                                }
                              }
                            }
                          }

                          [*(a1[5] + 16) presentNotificationSettings];
                          goto LABEL_266;
                        }
                      }

                      [*(a1[5] + 16) presentCreateAccountUserInvitationWithCompletion:0];
                      goto LABEL_266;
                    }

                    logd = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(logd, OS_LOG_TYPE_DEFAULT))
                    {
                      v239 = *v333;
                      *buf = 138543362;
                      v459 = v239;
                      _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "Handling addShareable route for url: %{public}@", buf, 0xCu);
                    }

                    v397 = 0u;
                    v398 = 0u;
                    v395 = 0u;
                    v396 = 0u;
                    v356 = obj;
                    v240 = [v356 countByEnumeratingWithState:&v395 objects:v447 count:16];
                    if (!v240)
                    {

                      v370 = 0;
                      goto LABEL_493;
                    }

                    v241 = v240;
                    v370 = 0;
                    v242 = 0;
                    v243 = *v396;
                    v244 = PKAddShareableConfigurationActionConfigurationParameter;
                    v351 = PKAddShareableConfigurationActionTitleParameter;
LABEL_449:
                    v245 = 0;
                    while (1)
                    {
                      if (*v396 != v243)
                      {
                        objc_enumerationMutation(v356);
                      }

                      v246 = *(*(&v395 + 1) + 8 * v245);
                      v247 = [v246 name];
                      if ([v244 isEqualToString:v247])
                      {
                        break;
                      }

                      if ([v351 isEqualToString:v247])
                      {
                        [v246 value];
                        v370 = v249 = v370;
LABEL_464:
                      }

                      if (v241 == ++v245)
                      {
                        v241 = [v356 countByEnumeratingWithState:&v395 objects:v447 count:16];
                        if (!v241)
                        {

                          if (v242)
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v446 = v242;
                              v253 = [NSArray arrayWithObjects:&v446 count:1];

                              v242 = v253;
                            }

                            v254 = objc_alloc_init(NSMutableArray);
                            v390 = 0u;
                            v391 = 0u;
                            v392 = 0u;
                            v393 = 0u;
                            v321 = v242;
                            v255 = [v321 countByEnumeratingWithState:&v390 objects:v445 count:16];
                            if (v255)
                            {
                              v256 = v255;
                              v257 = *v391;
                              do
                              {
                                for (ii = 0; ii != v256; ii = ii + 1)
                                {
                                  if (*v391 != v257)
                                  {
                                    objc_enumerationMutation(v321);
                                  }

                                  v259 = *(*(&v390 + 1) + 8 * ii);
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v260 = [[PKPushProvisioningTarget alloc] initWithProvisioningDict:v259];
                                    v261 = [[PKShareablePassMetadata alloc] initWithPushProvisioningTarget:v260];
                                    v262 = [v261 preview];
                                    [v262 setLocalizedDescription:v370];
                                    [v254 addObject:v261];
                                  }

                                  else
                                  {
                                    v260 = logd;
                                    if (os_log_type_enabled(logd, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *buf = 138543362;
                                      v459 = v259;
                                      v260 = logd;
                                      _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "Failed to parse raw provisioning target due to it not being a dictionary. \n %{public}@", buf, 0xCu);
                                    }
                                  }
                                }

                                v256 = [v321 countByEnumeratingWithState:&v390 objects:v445 count:16];
                              }

                              while (v256);
                            }

                            v263 = [v254 count];
                            LOBYTE(v56) = v263 != 0;
                            if (v263)
                            {
                              loge = [[PKAddShareablePassConfiguration alloc] initWithPrimaryAction:0 credentialsMetadata:v254];
                              [*(a1[5] + 16) presentAddShareablePassConfiguration:? animated:?];
                            }

                            else
                            {
                              if (os_log_type_enabled(logd, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "Failed to addShareable route due to no metadatas", buf, 2u);
                              }
                            }

                            goto LABEL_507;
                          }

LABEL_493:
                          if (os_log_type_enabled(logd, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            v254 = logd;
                            _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "Failed to addShareable route due to missing configuration", buf, 2u);
                            v321 = 0;
                            LOBYTE(v56) = 0;
                          }

                          else
                          {
                            v321 = 0;
                            LOBYTE(v56) = 0;
                            v254 = logd;
                          }

LABEL_507:

                          v5 = v331;
                          v30 = v343;
                          v31 = v344;
                          v29 = v345;
                          v28 = obj;
                          v44 = v321;
                          goto LABEL_104;
                        }

                        goto LABEL_449;
                      }
                    }

                    v248 = [v246 value];
                    v249 = [v248 pk_decodeURLBase64];

                    if (v249)
                    {
                      v394 = 0;
                      v250 = [NSJSONSerialization JSONObjectWithData:v249 options:0 error:&v394];
                      v251 = v394;

                      if (v250)
                      {
                        v252 = v251 == 0;
                      }

                      else
                      {
                        v252 = 0;
                      }

                      if (!v252)
                      {
                        if (os_log_type_enabled(logd, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138543362;
                          v459 = v251;
                          _os_log_impl(&_mh_execute_header, logd, OS_LOG_TYPE_DEFAULT, "Handling failed to deserialization addShareable json with error: %{public}@", buf, 0xCu);
                        }
                      }

                      v242 = v250;
                    }

                    goto LABEL_464;
                  }

                  v210 = [v208 isEqualToString:v207];

                  if (!v210)
                  {
                    goto LABEL_416;
                  }
                }

                v405 = 0u;
                v406 = 0u;
                v403 = 0u;
                v404 = 0u;
                v211 = obj;
                v212 = [v211 countByEnumeratingWithState:&v403 objects:v449 count:16];
                if (!v212)
                {
                  v169 = v211;
                  goto LABEL_390;
                }

                v213 = v212;
                v169 = 0;
                v214 = *v404;
                v215 = PKUserNotificationActionQueryItemPassUniqueIdentifier;
LABEL_397:
                v216 = 0;
                while (1)
                {
                  if (*v404 != v214)
                  {
                    objc_enumerationMutation(v211);
                  }

                  v217 = *(*(&v403 + 1) + 8 * v216);
                  v218 = [v217 name];
                  v219 = [v217 value];
                  if (![v219 length])
                  {
                    goto LABEL_411;
                  }

                  v220 = v218;
                  v221 = v220;
                  if (v220 == v215)
                  {
                  }

                  else
                  {
                    if (v220)
                    {
                      v222 = v215 == 0;
                    }

                    else
                    {
                      v222 = 1;
                    }

                    if (v222)
                    {
                      goto LABEL_410;
                    }

                    v223 = [v220 isEqualToString:v215];

                    if (!v223)
                    {
                      goto LABEL_411;
                    }
                  }

                  v221 = v169;
                  v169 = v219;
LABEL_410:

LABEL_411:
                  if (v213 == ++v216)
                  {
                    v213 = [v211 countByEnumeratingWithState:&v403 objects:v449 count:16];
                    if (!v213)
                    {

                      v5 = v331;
                      v30 = v343;
                      v31 = v344;
                      v29 = v345;
                      v28 = obj;
                      if (v169)
                      {
                        [*(a1[5] + 16) presentBalanceDetailsForPassUniqueIdentifier:v169 animated:1 completion:0];
                        goto LABEL_390;
                      }

LABEL_191:

                      v1 = v333;
LABEL_192:
                      v29 = PKLogFacilityTypeGetObject();
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                      {
                        sub_10000F544(v1, v29);
                      }

                      goto LABEL_194;
                    }

                    goto LABEL_397;
                  }
                }
              }

              v183 = [v181 isEqualToString:v180];

              if (!v183)
              {
                goto LABEL_381;
              }
            }

            v409 = 0u;
            v410 = 0u;
            v407 = 0u;
            v408 = 0u;
            v368 = obj;
            v184 = [v368 countByEnumeratingWithState:&v407 objects:v450 count:16];
            if (!v184)
            {
              v326 = v368;
              goto LABEL_393;
            }

            v185 = v184;
            v338 = 0;
            logc = 0;
            v326 = 0;
            v186 = *v408;
            v187 = PKUserNotificationActionQueryItemSpendingSummaryType;
            v188 = PKUserNotificationActionQueryItemSpendingSummaryUnit;
            v355 = PKUserNotificationActionQueryItemSpendingSummaryCategorization;
            v342 = PKUserNotificationActionQueryItemPassUniqueIdentifier;
            v350 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_338:
            v189 = 0;
            while (1)
            {
              if (*v408 != v186)
              {
                objc_enumerationMutation(v368);
              }

              v190 = *(*(&v407 + 1) + 8 * v189);
              v191 = [v190 name];
              v192 = [v190 value];
              if (![v192 length])
              {
                goto LABEL_376;
              }

              v193 = v191;
              v194 = v193;
              if (v193 == v187)
              {
                break;
              }

              if (v193)
              {
                v195 = v187 == 0;
              }

              else
              {
                v195 = 1;
              }

              if (v195)
              {
              }

              else
              {
                v196 = [v193 isEqualToString:v187];

                if (v196)
                {
                  goto LABEL_351;
                }
              }

              v197 = v194;
              v198 = v197;
              if (v197 == v188)
              {

LABEL_358:
                v350 = [v192 integerValue];
                goto LABEL_376;
              }

              if (v194 && v188)
              {
                v199 = [v197 isEqualToString:v188];

                if (v199)
                {
                  goto LABEL_358;
                }
              }

              else
              {
              }

              v200 = v198;
              v201 = v200;
              if (v200 == v355)
              {

LABEL_366:
                v338 = PKSpendingSummaryCategorizationTypeForURLPathComponent();
                goto LABEL_376;
              }

              if (v194 && v355)
              {
                v202 = [v200 isEqualToString:v355];

                if (v202)
                {
                  goto LABEL_366;
                }
              }

              else
              {
              }

              v203 = v201;
              v204 = v203;
              if (v203 == v342)
              {
              }

              else
              {
                if (!v194 || !v342)
                {

                  goto LABEL_376;
                }

                v205 = [v203 isEqualToString:v342];

                if (!v205)
                {
                  goto LABEL_376;
                }
              }

              v206 = v192;

              v326 = v206;
LABEL_376:

              if (v185 == ++v189)
              {
                v185 = [v368 countByEnumeratingWithState:&v407 objects:v450 count:16];
                if (!v185)
                {

                  v5 = v331;
                  v30 = v343;
                  v31 = v344;
                  v29 = v345;
                  v28 = obj;
                  if (!v326)
                  {
                    goto LABEL_191;
                  }

                  [*(a1[5] + 16) presentSpendingSummaryForPassUniqueIdentifier:v326 type:logc categorization:v338 unit:v350 animated:1 completion:0];
LABEL_393:

LABEL_391:
                  v5 = v331;
                  v30 = v343;
                  v31 = v344;
                  v29 = v345;
                  v28 = obj;
                  goto LABEL_191;
                }

                goto LABEL_338;
              }
            }

LABEL_351:
            logc = [v192 integerValue];
            goto LABEL_376;
          }
        }

        v30 = v343;
        v31 = v344;
        v29 = v345;
        v28 = obj;
        if (v12 < 3)
        {
          goto LABEL_191;
        }

        v169 = [v343 objectAtIndex:1];
        v170 = [v343 objectAtIndex:2];
        if (-[NSObject length](v169, "length") && [v170 length])
        {
          [*(a1[5] + 16) presentInstallmentPlanWithIdentifier:v169 forAccountIdentifier:v170 completion:0];
        }

        goto LABEL_389;
      }
    }

    v30 = v343;
    v31 = v344;
    v29 = v345;
    v28 = obj;
    if (v12 != 3)
    {
      goto LABEL_191;
    }

    v169 = [v343 objectAtIndex:1];
    v170 = [v343 objectAtIndex:2];
    if ([v169 length])
    {
      v171 = PKVirtualCardRoutePassDetails;
      v172 = v170;
      v173 = v172;
      if (v172 == v171)
      {
      }

      else
      {
        if (!v172 || !v171)
        {

          goto LABEL_389;
        }

        v174 = [v172 isEqualToString:v171];

        if (!v174)
        {
          goto LABEL_389;
        }
      }

      [*(a1[5] + 16) presentPassDetailsAssociatedWithVirtualCardID:v169 animated:1 completion:0];
    }

LABEL_389:

    goto LABEL_390;
  }

  v426 = 0u;
  v425 = 0u;
  v424 = 0u;
  v423 = 0u;
  v40 = obj;
  v41 = [v40 countByEnumeratingWithState:&v423 objects:v454 count:16];
  if (!v41)
  {

    v44 = 0;
    v57 = 0;
    v43 = 0;
    LOBYTE(v56) = 0;
    v30 = v343;
    v29 = v345;
    goto LABEL_102;
  }

  v42 = v41;
  v327 = v5;
  v335 = 0;
  v43 = 0;
  v363 = 0;
  v44 = 0;
  v45 = *v424;
  v46 = PKUserNotificationActionQueryItemTransactionIdentifier;
  log = PKUserNotificationActionQueryItemServiceIdentifier;
  v352 = PKUserNotificationActionQueryItemTransactionSourceIdentifier;
  v347 = PKUserNotificationActionQueryItemConfirmPaymentOfferPlan;
  while (2)
  {
    v47 = 0;
    while (2)
    {
      if (*v424 != v45)
      {
        objc_enumerationMutation(v40);
      }

      v48 = *(*(&v423 + 1) + 8 * v47);
      v49 = [v48 name];
      v50 = [v48 value];
      if (![v50 length])
      {
        goto LABEL_73;
      }

      if ([v49 isEqualToString:v46])
      {
        v51 = v50;

        v44 = v51;
        goto LABEL_73;
      }

      if ([v49 isEqualToString:log])
      {
        v52 = v50;

        v363 = v52;
        goto LABEL_73;
      }

      if ([v49 isEqualToString:v352])
      {
        v53 = v50;

        v43 = v53;
        goto LABEL_73;
      }

      v54 = v49;
      v55 = v54;
      if (v54 == v347)
      {

        goto LABEL_71;
      }

      if (!v54 || !v347)
      {

        goto LABEL_73;
      }

      v339 = [v54 isEqualToString:v347];

      if (v339)
      {
LABEL_71:
        v335 = [v50 BOOLValue];
      }

LABEL_73:

      if (v42 != ++v47)
      {
        continue;
      }

      break;
    }

    v42 = [v40 countByEnumeratingWithState:&v423 objects:v454 count:16];
    if (v42)
    {
      continue;
    }

    break;
  }

  if (v44)
  {
    [*(a1[5] + 16) presentTransactionDetailsForTransactionWithIdentifier:v44 confirmPaymentOfferPlan:v335 & 1];
    LOBYTE(v56) = 1;
    v5 = v327;
    v30 = v343;
    v31 = v344;
    v29 = v345;
    v57 = v363;
    v28 = obj;
  }

  else
  {
    v5 = v327;
    v30 = v343;
    v31 = v344;
    v29 = v345;
    v57 = v363;
    v28 = obj;
    if (v363)
    {
      [*(a1[5] + 16) presentTransactionDetailsForTransactionWithServiceIdentifier:v363 transactionSourceIdentifier:v43 confirmPaymentOfferPlan:v335 & 1];
      v44 = 0;
      LOBYTE(v56) = 1;
    }

    else
    {
      v44 = 0;
      LOBYTE(v56) = 0;
    }
  }

LABEL_102:

LABEL_103:
LABEL_104:

  v1 = v333;
  if ((v56 & 1) == 0)
  {
    goto LABEL_192;
  }

LABEL_195:
}

void sub_1000062E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 128) dashboardPassGroupViewController];
    if (v3)
    {
      v4 = v3;
      [v3 presentCardNumbers];
      v3 = v4;
    }
  }
}

void *sub_100006348(void *result, void *a2)
{
  if (a2)
  {
    if (result[4])
    {
      return [a2 presentInboxMessageWithIdentifier:?];
    }
  }

  return result;
}

void sub_100006360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:UIApplicationOpenURLOptionsSourceApplicationKey];
  if ([v4 isEqualToString:@"com.apple.springboard"])
  {
    v18[0] = PKAnalyticsReportEventKey;
    v18[1] = PKAnalyticsReportReferralSourceKey;
    v19[0] = PKAnalyticsReportEventTypeButtonTap;
    v19[1] = PKAnalyticsReportReferralSourceNotification;
    v5 = v19;
    v6 = v18;
    v7 = 2;
  }

  else
  {
    if (![v4 isEqualToString:@"com.apple.Passbook"])
    {
      goto LABEL_7;
    }

    v16[0] = PKAnalyticsReportEventKey;
    v16[1] = PKAnalyticsReportReferralSourceKey;
    v17[0] = PKAnalyticsReportEventTypeButtonTap;
    v17[1] = PKAnalyticsReportReferralSourceWallet;
    v16[2] = PKAnalyticsReportLaunchTypeKey;
    v17[2] = PKAnalyticsReportLaunchTypeSummaryTile;
    v5 = v17;
    v6 = v16;
    v7 = 3;
  }

  v8 = [NSDictionary dictionaryWithObjects:v5 forKeys:v6 count:v7];
  if (v8)
  {
    [PKAnalyticsReporter subject:PKAnalyticsSubjectOrderManagementWallet sendEvent:v8];
  }

LABEL_7:
  if (*(a1 + 48) >= 3uLL)
  {
    v9 = [*(a1 + 40) objectAtIndexedSubscript:1];
    v10 = [*(a1 + 40) objectAtIndexedSubscript:2];
    if (*(a1 + 48) < 5uLL)
    {
      [v3 showDetailsForOrderTypeIdentifier:v9 orderIdentifier:v10 fulfillmentIdentifier:0 sourceApplication:v4];
LABEL_17:

      goto LABEL_18;
    }

    v11 = [*(a1 + 40) objectAtIndexedSubscript:3];
    if ([v11 isEqualToString:@"fulfillments"])
    {
      v12 = *(a1 + 40);
      v13 = 4;
    }

    else
    {
      v14 = [v11 isEqualToString:@"returns"];
      v12 = *(a1 + 40);
      if (v14)
      {
        v15 = [v12 objectAtIndexedSubscript:4];
        [v3 showReturnDetailsForOrderTypeIdentifier:v9 orderIdentifier:v10 returnIdentifier:v15 sourceApplication:v4];
LABEL_16:

        goto LABEL_17;
      }

      v13 = 3;
    }

    v15 = [v12 objectAtIndexedSubscript:v13];
    [v3 showDetailsForOrderTypeIdentifier:v9 orderIdentifier:v10 fulfillmentIdentifier:v15 sourceApplication:v4];
    goto LABEL_16;
  }

LABEL_18:
}

void sub_10000660C(void *a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v5 = v3;
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v21 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v20 + 1) + 8 * v8);
      v10 = [v9 identifier];
      v11 = [v10 isEqualToString:a1[4]];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        v5 = v3;
        goto LABEL_12;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_13;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000067CC;
    v16[3] = &unk_10001CD88;
    v14 = a1[5];
    v13 = a1[6];
    v15 = a1[7];
    v17 = v12;
    v18 = v13;
    v19 = v15;
    v5 = v12;
    [v14 credentialForFPANCard:v5 authorization:0 options:7 merchantHost:0 completion:v16];
  }

LABEL_12:

LABEL_13:
}

void sub_1000067CC(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (!a3)
    {
      v4 = a2;
      v5 = [[PKFPANCredential alloc] initWithFPANCardDescriptor:a1[4] credential:v4];

      v6 = objc_alloc_init(PKPaymentService);
      [v6 clearFPANCardImportNotificationsWithCompletion:0];
      v7 = *(a1[5] + 128);
      v9 = v5;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [v7 presentAddFPANCardAnimated:1 selectedCredentials:v8 referralSource:a1[6] completion:0];
    }
  }
}

void sub_1000068D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100006978;
    v5[3] = &unk_10001CE18;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

id sub_100006978(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v2 = [*(a1 + 40) feature];

  return [v1 presentAccountFeature:v2 animated:1 destination:0 fundingSourceIdentifier:0 completion:0];
}

void sub_1000069D0(uint64_t a1, void *a2)
{
  v3 = PKAnalyticsSubjectOrderManagementWallet;
  v6[0] = PKAnalyticsReportEventKey;
  v6[1] = PKAnalyticsReportReferralSourceKey;
  v7[0] = PKAnalyticsReportEventTypeButtonTap;
  v7[1] = PKAnalyticsReportReferralSourceShareLink;
  v4 = a2;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [PKAnalyticsReporter subject:v3 sendEvent:v5];

  [v4 addOrderAtURL:*(a1 + 32)];
}

void *sub_10000AC98(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentPassDetailsWithUniqueID:? animated:? completionHandler:?];
    }
  }

  return result;
}

void *sub_10000ACC0(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentSearchWithCompletion:0];
    }
  }

  return result;
}

void *sub_10000ACE4(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentPassDetailsWithUniqueID:? animated:? action:? completionHandler:?];
    }
  }

  return result;
}

void sub_10000AD10(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 && (a2 & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 128) dashboardPassGroupViewController];
    if (v3)
    {
      v4 = v3;
      [v3 presentCardNumbers];
      v3 = v4;
    }
  }
}

void *sub_10000AD70(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentPeerPaymentTransferToBank];
    }
  }

  return result;
}

void *sub_10000AD90(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentPeerPaymentTopUp];
    }
  }

  return result;
}

BOOL sub_10000ADB0(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = v4;
  if (v4 == @"/")
  {
    LOBYTE(v6) = 0;
  }

  else if (v4)
  {
    v6 = [(__CFString *)v4 isEqualToString:@"/"]^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

void *sub_10000AE1C(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      v3 = result[5];
      return [*(result[4] + 128) presentPassDetailsWithUniqueID:? animated:? action:? completionHandler:?];
    }
  }

  return result;
}

void *sub_10000AE44(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentAccountServiceSchedulePayment:? billPayAmountType:? billPayAmount:? completion:?];
    }
  }

  return result;
}

void *sub_10000AE70(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentBalanceDetailsForPassUniqueIdentifier:? animated:? completion:?];
    }
  }

  return result;
}

void *sub_10000AE98(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) showStatementForIdentifier:result[5] passUniqueIdentifier:a3 animated:0 completion:0];
    }
  }

  return result;
}

void *sub_10000AEC4(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentInstallmentPlansForFeature:2 completion:0];
    }
  }

  return result;
}

void *sub_10000AEEC(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentSearchWithCompletion:0];
    }
  }

  return result;
}

void sub_10000AF10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AFC4;
    block[3] = &unk_10001CF98;
    block[4] = *(a1 + 32);
    v6 = v3;
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10000AFC4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v3 = [*(a1 + 40) associatedPassUniqueID];
  [v2 presentSpendingSummaryForPassUniqueIdentifier:v3 type:*(a1 + 48) categorization:*(a1 + 56) unit:*(a1 + 64) animated:1 completion:0];
}

void sub_10000B038(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 128) dashboardPassGroupViewController];
  if (v1)
  {
    v2 = v1;
    [v1 presentCardNumbers];
    v1 = v2;
  }
}

void *sub_10000B08C(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      return [*(result[4] + 128) presentRewardsHubForPassUniqueIdentifier:? animated:? completion:?];
    }
  }

  return result;
}

void *sub_10000B0B4(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      v3 = result[5];
      return [*(result[4] + 128) presentAccountPromotionForPassUniqueIdentifier:? programIdentifier:? animated:? completion:?];
    }
  }

  return result;
}

void *sub_10000B0DC(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      v3 = result[5];
      return [*(result[4] + 128) presentRewardsHubMerchantsForPassUniqueIdentifier:? privateIdentifier:? animated:? completion:?];
    }
  }

  return result;
}

BOOL sub_10000B104(id a1, NSURLQueryItem *a2)
{
  v2 = [(NSURLQueryItem *)a2 name];
  v3 = PKVerificationDeviceAccountIdentifierKey;
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

BOOL sub_10000B18C(id a1, NSURLQueryItem *a2)
{
  v2 = [(NSURLQueryItem *)a2 name];
  v3 = PKVerificationSuccessKey;
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

void *sub_10000B214(void *result, void *a2)
{
  if (a2)
  {
    if (result[4])
    {
      return [a2 presentInboxMessageWithIdentifier:?];
    }
  }

  return result;
}

BOOL sub_10000B22C(id a1, NSURLQueryItem *a2)
{
  v2 = [(NSURLQueryItem *)a2 name];
  v3 = PKURLShareReferralSourceQueryItemKey;
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

BOOL sub_10000B2B4(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = v4;
  if (v4 == @"/")
  {
    LOBYTE(v6) = 0;
  }

  else if (v4)
  {
    v6 = [(__CFString *)v4 isEqualToString:@"/"]^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

BOOL sub_10000B320(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = v4;
  if (v4 == @"/")
  {
    LOBYTE(v6) = 0;
  }

  else if (v4)
  {
    v6 = [(__CFString *)v4 isEqualToString:@"/"]^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

id sub_10000B528(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000B5A4;
  v4[3] = &unk_10001CC10;
  v4[4] = v1;
  return [v2 updatePassesIfNecessaryWithCompletion:v4];
}

void sub_10000B948(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to re-direct url: %@ to Safari with error: %@", &v9, 0x16u);
    }
  }
}

void sub_10000BE14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 transaction];
    v6 = [v4 primaryAccountIdentifier];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BF78;
    block[3] = &unk_10001CE90;
    block[4] = *(a1 + 40);
    v11 = v5;
    v12 = v6;
    v7 = v6;
    v8 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to retrieve a response with transaction for url %@", buf, 0xCu);
    }
  }
}

void sub_10000BF94(uint64_t a1, void *a2)
{
  v3 = PKAnalyticsSubjectOrderManagementWallet;
  v6[0] = PKAnalyticsReportEventKey;
  v6[1] = PKAnalyticsReportReferralSourceKey;
  v7[0] = PKAnalyticsReportEventTypeButtonTap;
  v7[1] = PKAnalyticsReportReferralSourceSiriSpotlight;
  v4 = a2;
  v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
  [PKAnalyticsReporter subject:v3 sendEvent:v5];

  [v4 showDetailsForOrder:*(a1 + 32)];
}

void sub_10000C094(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 128) dashboardPassGroupViewController];
  if (v1)
  {
    v2 = v1;
    [v1 presentCardNumbers];
    v1 = v2;
  }
}

void sub_10000C0E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000C18C;
    v5[3] = &unk_10001CE18;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

id sub_10000C18C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  v2 = [*(a1 + 40) feature];

  return [v1 presentAccountFeature:v2 animated:1 destination:0 fundingSourceIdentifier:0 completion:0];
}

void sub_10000C2BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000C370;
  v5[3] = &unk_10001CE90;
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  [v2 updatePassesIfNecessaryWithCompletion:v5];
}

void sub_10000C370(id *a1)
{
  v2 = [a1[4] activityType];
  if ([v2 isEqualToString:PKViewPassUserActivityType])
  {
    v3 = [a1[5] objectForKey:PKViewPassUserActivityPassKey];
    if (v3)
    {
      [*(a1[6] + 16) presentPassWithUniqueID:v3 animated:1 completionHandler:0];
    }
  }

  else if ([v2 isEqualToString:PKPassListUserActivityType])
  {
    [*(a1[6] + 16) presentInitialState:0];
  }

  else if ([v2 isEqualToString:PKViewOrderUserActivityType])
  {
    v4 = [a1[5] objectForKeyedSubscript:PKViewOrderUserActivityOrderIdentifierKey];
    v5 = [a1[5] objectForKeyedSubscript:PKViewOrderUserActivityOrderTypeIdentifierKey];
    v6 = [a1[5] objectForKeyedSubscript:PKViewOrderUserActivityOrderFulfillmentIdentifierKey];
    v7 = *(a1[6] + 16);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000C5C0;
    v13[3] = &unk_10001D0F8;
    v14 = v5;
    v15 = v4;
    v16 = v6;
    v8 = v6;
    v9 = v4;
    v10 = v5;
    [v7 presentOrderManagementAnimated:1 completion:v13];
  }

  else if ([v2 isEqualToString:CSSearchableItemActionType])
  {
    [a1[6] _handleSpotlightWithUserActivity:a1[4]];
  }

  else
  {
    v11 = [a1[4] activityType];
    v12 = [v11 isEqual:NSUserActivityTypeBrowsingWeb];

    if (v12)
    {
      [a1[6] _handleUniversalLinkWithUserActivity:a1[4]];
    }
  }
}

void sub_10000C5C0(void *a1, void *a2)
{
  v3 = a2;
  if (a1[4] && a1[5])
  {
    v4 = PKAnalyticsSubjectOrderManagementWallet;
    v6[0] = PKAnalyticsReportEventKey;
    v6[1] = PKAnalyticsReportReferralSourceKey;
    v7[0] = PKAnalyticsReportEventTypeButtonTap;
    v7[1] = PKAnalyticsReportReferralSourceSiriSpotlight;
    v5 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];
    [PKAnalyticsReporter subject:v4 sendEvent:v5];

    [v3 showDetailsForOrderTypeIdentifier:a1[4] orderIdentifier:a1[5] fulfillmentIdentifier:a1[6] sourceApplication:0];
  }
}

void sub_10000C89C(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v2 = +[UIApplication sharedApplication];
    [v2 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_10000C918(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_10000C990(void *a1)
{
  *(a1[4] + 35) = 0;
  v2 = a1[4];
  if (*(v2 + 33) == 1)
  {
    objc_storeStrong((v2 + 48), *(*(a1[5] + 8) + 40));
    v3 = a1[4];
    v4 = *(v3 + 72);
    if (v4)
    {
      [v4 invalidate];
      v3 = a1[4];
    }

    objc_storeStrong((v3 + 72), *(*(a1[6] + 8) + 40));
  }

  else
  {
    [*(*(a1[6] + 8) + 40) invalidate];
  }

  if (*(*(a1[7] + 8) + 24) != UIBackgroundTaskInvalid)
  {
    v5 = +[UIApplication sharedApplication];
    [v5 endBackgroundTask:*(*(a1[7] + 8) + 24)];

    *(*(a1[7] + 8) + 24) = UIBackgroundTaskInvalid;
  }
}

void sub_10000D194(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D244;
  v5[3] = &unk_10001CC88;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  [v4 updatePassesIfNecessaryWithCompletion:v5];
}

void sub_10000D244(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 128);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000D2E8;
  v3[3] = &unk_10001D200;
  v4 = *(a1 + 48);
  [v2 presentPassDetailsWithUniqueID:v1 animated:1 action:11 completionHandler:v3];
}

uint64_t sub_10000D390(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) pkui_frontMostViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v2;
    v3 = [v6 topViewController];
    if ([v3 conformsToProtocol:&OBJC_PROTOCOL___PKPassDeleteHandler])
    {
      v4 = v3;

      v6 = v4;
    }
  }

  else
  {
    v6 = [*(*(a1 + 32) + 128) dashboardPassGroupViewController];
  }

  if (v6 && [v6 conformsToProtocol:&OBJC_PROTOCOL___PKPassDeleteHandler])
  {
    [v6 handleDeletePassRequestWithPass:*(a1 + 40) forViewController:v6];
  }

  return _objc_release_x1();
}

void sub_10000D57C(uint64_t a1)
{
  v7 = *(a1 + 32);
  v2 = *(v7 + 128);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D660;
  v8[3] = &unk_10001D250;
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 updatePassesIfNecessaryWithCompletion:v8];
}

void sub_10000D660(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D724;
  v5[3] = &unk_10001D228;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 56);
  [v3 presentPassWithUniqueID:v2 animated:1 completionHandler:v5];
}

void sub_10000D724(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[5];
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }

    return;
  }

  v8 = [*(a1[4] + 128) visibleDashboardPassGroupViewController];
  if (v8)
  {
    (*(a1[6] + 16))();
    v5 = a1[5];
    if (v5)
    {
      v6 = *(v5 + 16);
LABEL_12:
      v6();
    }
  }

  else
  {
    v7 = a1[5];
    if (v7)
    {
      v6 = *(v7 + 16);
      goto LABEL_12;
    }
  }
}

void sub_10000D8FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000D9AC;
  v5[3] = &unk_10001D2D8;
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 presentPassWithUniqueID:v2 animated:1 completionHandler:v5];
}

void sub_10000D9AC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }

    return;
  }

  v5 = [*(*(a1 + 32) + 128) visibleDashboardPassGroupViewController];
  v9 = v5;
  if (v5)
  {
    [v5 presentAddMoney];
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_12:
      v7();
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_12;
    }
  }
}

void sub_10000DB68(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 128);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DC30;
  v6[3] = &unk_10001D300;
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v6[4] = v5;
  v7 = *(a1 + 48);
  [v3 presentPassWithUniqueID:v2 animated:1 completionHandler:v6];
}

id sub_10000DC30(void *a1, int a2)
{
  v2 = a1[6];
  if (a2 && v2)
  {
    return (*(v2 + 16))(a1[6], 0);
  }

  else
  {
    return [*(a1[4] + 128) presentSearchWithQuery:a1[5] completion:v2];
  }
}

void sub_10000DD54(uint64_t a1)
{
  v7 = *(a1 + 32);
  v2 = *(v7 + 128);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DE44;
  v8[3] = &unk_10001D350;
  v3 = *(&v7 + 1);
  v11 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 updatePassesIfNecessaryWithCompletion:v8];
}

Class sub_10000DFA4()
{
  if (qword_100021A90 != -1)
  {
    sub_10000F6C0();
  }

  result = objc_getClass("FKBankConnectSpotlightTransactionsProvider");
  qword_100021A80 = result;
  off_100021778 = sub_10000DFF8;
  return result;
}

id sub_10000E544(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finishing %@", &v5, 0xCu);
  }

  return [*(a1 + 40) finishedTest:*(a1 + 32)];
}

void sub_10000EB20(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = &v14;
  v4 = -1;
  while (1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000ED0C;
    block[3] = &unk_10001CE18;
    block[4] = *(a1 + 32);
    v5 = v2;
    v14 = v5;
    dispatch_async(&_dispatch_main_q, block);
    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      break;
    }

    if (++v4 >= 9)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10000EE40;
      v9[3] = &unk_10001CE18;
      v7 = *(a1 + 40);
      v9[4] = *(a1 + 32);
      v3 = &v10;
      v10 = v7;
      dispatch_async(&_dispatch_main_q, v9);
      goto LABEL_6;
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000EE2C;
  v11[3] = &unk_10001CE18;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v8;
  dispatch_async(&_dispatch_main_q, v11);

LABEL_6:
}

void sub_10000ED0C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000ED94;
  v2[3] = &unk_10001D3E0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _presentEditPassesWithCompletion:v2];
}

void sub_10000ED94(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000EE24;
  v3[3] = &unk_10001CC10;
  v4 = *(a1 + 32);
  [a2 dismissViewControllerAnimated:1 completion:v3];
}

void sub_10000EF74(uint64_t a1, void *a2)
{
  v3 = [a2 topViewController];
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting %@", buf, 0xCu);
  }

  v15 = [RPTScrollViewTestParameters alloc];
  v16 = *(a1 + 32);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10000F154;
  v23 = &unk_10001CE18;
  v17 = v16;
  v18 = *(a1 + 40);
  v24 = v17;
  v25 = v18;
  v19 = [v15 initWithTestName:v17 scrollBounds:0 amplitude:&v20 direction:v6 + 100.0 completionHandler:{v8 + 100.0, v10 + -200.0, v12 + -200.0, 200.0}];
  [v19 setPreventSheetDismissal:{1, v20, v21, v22, v23}];
  [v19 setShouldFlick:1];
  [RPTTestRunner runTestWithParameters:v19];
}

id sub_10000F154(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finishing %@", &v5, 0xCu);
  }

  return [*(a1 + 40) finishedTest:*(a1 + 32)];
}

void sub_10000F330(uint64_t a1, void *a2)
{
  v3 = [a2 topViewController];
  [v3 beginPassSelectionTestWithTestName:*(a1 + 32)];
}

void sub_10000F4AC(uint64_t a1, void *a2)
{
  v3 = [a2 topViewController];
  [v3 beginPassDeletionTestWithTestName:*(a1 + 32)];
}

void sub_10000F544(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "didn't understand URL %{public}@", &v3, 0xCu);
}

void sub_10000F5C0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to handle core data splotlight activity with identifier: %@", &v2, 0xCu);
}

void sub_10000F638(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "PBKAppDelegate (%p): acquired foreground nearfield informative assertion %p.", &v3, 0x16u);
}