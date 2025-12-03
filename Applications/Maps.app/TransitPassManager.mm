@interface TransitPassManager
- (BOOL)_balanceIsLessThanRouteCost:(id)cost forPass:(id)pass;
- (TransitPassManager)initWithIsTourist:(BOOL)tourist;
- (TransitPassManagerDelegate)delegate;
- (id)_defaultPaymentCardExpressStatuses:(id)statuses;
- (id)_defaultPaymentCardsFromLibrary:(id)library;
- (id)_exclamationMarkImage;
- (id)_identifiersForSecurePasses:(id)passes;
- (id)_messageFromBalance:(id)balance passName:(id)name;
- (id)_passForTopUpWithTransitPasses:(id)passes forRouteTNIs:(id)is routeCost:(id)cost;
- (id)_userTransitPassesFromLibrary:(id)library;
- (id)currencyAmountForRoute:(id)route;
- (id)transitSystemsForRoute:(id)route withSupportedPaymentMethods:(id)methods;
- (void)_fetchAllAvailablePassesFromWallet;
- (void)_fetchLibrary:(id)library;
- (void)_passKitLibraryDidChange:(id)change;
- (void)_passKitLibraryMayHaveChanged;
- (void)_transitTopUpMessageForPass:(id)pass paymentMethods:(id)methods completion:(id)completion;
- (void)dealloc;
- (void)fetchTransitMessageForRoute:(id)route paymentMethods:(id)methods suggestions:(id)suggestions completion:(id)completion;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)userHasPaymentCardWithHandler:(id)handler;
@end

@implementation TransitPassManager

- (TransitPassManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  v5 = [(TransitPassManager *)self delegate:identifier];
  [v5 transitPassManagerDidChange:self];
}

- (id)currencyAmountForRoute:(id)route
{
  routeCopy = route;
  baseTransitFares = [routeCopy baseTransitFares];
  v5 = baseTransitFares;
  if (!baseTransitFares || ![baseTransitFares count])
  {
    currencyCode = sub_10003D020();
    if (os_log_type_enabled(currencyCode, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, currencyCode, OS_LOG_TYPE_INFO, "Route rejected because we found no base fares on route.", buf, 2u);
    }

    v22 = 0;
    goto LABEL_35;
  }

  firstObject = [v5 firstObject];
  currencyCode = [firstObject currencyCode];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v9)
  {

    goto LABEL_25;
  }

  v10 = v9;
  v26 = routeCopy;
  v11 = 0;
  v12 = *v28;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v27 + 1) + 8 * i);
      if (([v14 cashOnly] & 1) == 0)
      {
        value = [v14 value];

        if (value)
        {
          currencyCode2 = [v14 currencyCode];
          v17 = [currencyCode isEqualToString:currencyCode2];

          if (v17)
          {
            value2 = [v14 value];
            v19 = value2;
            if (v11)
            {
              v20 = [v11 decimalNumberByAdding:value2];

              v11 = v20;
            }

            else
            {
              v11 = value2;
            }

            continue;
          }

          v23 = sub_10003D020();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v24 = "Mixed currencies are unsupported. Returning.";
            goto LABEL_31;
          }
        }

        else
        {
          v23 = sub_10003D020();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v24 = "fare.value is nil. Returning.";
LABEL_31:
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, v24, buf, 2u);
          }
        }

        routeCopy = v26;

        goto LABEL_33;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  routeCopy = v26;
  if (v11)
  {
    v21 = sub_10003D020();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = v11;
      v33 = 2112;
      v34 = currencyCode;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "totalFareValue = %@, currencyCode = %@", buf, 0x16u);
    }

    v22 = [[PKCurrencyAmount alloc] initWithAmount:v11 currency:currencyCode exponent:0];
    goto LABEL_34;
  }

LABEL_25:
  v11 = sub_10003D020();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "totalFareValue is nil. Are all fares cash only? Returning.", buf, 2u);
  }

LABEL_33:
  v22 = 0;
LABEL_34:

LABEL_35:

  return v22;
}

- (id)transitSystemsForRoute:(id)route withSupportedPaymentMethods:(id)methods
{
  routeCopy = route;
  methodsCopy = methods;
  v7 = objc_alloc_init(NSMutableSet);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = routeCopy;
  obj = [routeCopy baseTransitFares];
  v8 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        if ([v12 cashOnly])
        {
          v13 = sub_10003D020();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            value = [v12 value];
            *buf = 138412290;
            v32 = value;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Checking the next fare because the fare with value %@ is cashOnly", buf, 0xCu);
          }
        }

        else
        {
          v13 = +[NSMutableSet set];
          if ([v12 supportedPaymentMethodIndexsCount])
          {
            v15 = 0;
            do
            {
              v16 = *([v12 supportedPaymentMethodIndexs] + v15);
              if ([methodsCopy count] > v16)
              {
                v17 = [methodsCopy objectAtIndexedSubscript:v16];
                identifier = [v17 identifier];
                [v13 addObject:identifier];
              }

              ++v15;
            }

            while (v15 < [v12 supportedPaymentMethodIndexsCount]);
          }

          v19 = sub_10003D020();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v13;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Supported transit identifiers for fare: %@", buf, 0xCu);
          }

          if (![v13 count])
          {
            v20 = sub_10003D020();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Route rejected because we found no supported cards in a fare", buf, 2u);
            }

            [v7 removeAllObjects];
            goto LABEL_30;
          }

          if ([v7 count])
          {
            [v7 intersectSet:v13];
          }

          else
          {
            [v7 unionSet:v13];
          }

          if (![v7 count])
          {
            v21 = sub_10003D020();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Route rejected because there are no pass identifiers", buf, 2u);
            }

LABEL_30:
            goto LABEL_31;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  v22 = sub_10003D020();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Pass Identifiers: %@", buf, 0xCu);
  }

  v23 = [v7 copy];

  return v23;
}

- (void)_passKitLibraryMayHaveChanged
{
  delegate = [(TransitPassManager *)self delegate];
  [delegate transitPassManagerDidChange:self];
}

- (void)_passKitLibraryDidChange:(id)change
{
  v4 = sub_10003D020();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Received _passKitLibraryDidChange, taking appropriate action.", v5, 2u);
  }

  [(MapsSuggestionsCanKicker *)self->_passKitLibraryDidChangeCanKicker kickCanBySameTime];
}

- (id)_passForTopUpWithTransitPasses:(id)passes forRouteTNIs:(id)is routeCost:(id)cost
{
  passesCopy = passes;
  isCopy = is;
  costCopy = cost;
  v52 = passesCopy;
  v11 = [[NSSet alloc] initWithArray:passesCopy];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_100B3BAB8;
  v82[3] = &unk_101638DB0;
  v53 = isCopy;
  v83 = v53;
  v56 = [v11 objectsPassingTest:v82];

  if ([v56 count])
  {
    *v78 = 0;
    v79 = v78;
    v80 = 0x2020000000;
    v81 = 0;
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100B3BAC4;
    v75[3] = &unk_101638DD8;
    v50 = objc_alloc_init(PKPaymentService);
    v76 = v50;
    v77 = v78;
    v12 = [v56 objectsPassingTest:v75];
    v51 = v12;
    if (v79[24] == 1)
    {
      v13 = sub_10003D020();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "User has an express card which does not support top up, suppressing tip", buf, 2u);
      }

      anyObject = 0;
      goto LABEL_65;
    }

    if ([v12 count])
    {
      v15 = sub_10003D020();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "User has more than one express transit card, only considering those for top up", buf, 2u);
      }

      v16 = v51;
    }

    else
    {
      v16 = v56;
    }

    *buf = 0;
    v72 = buf;
    v73 = 0x2020000000;
    v74 = 0;
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100B3BC8C;
    v68[3] = &unk_101638E00;
    v68[4] = self;
    v69 = costCopy;
    v70 = buf;
    v56 = [v16 objectsPassingTest:v68];

    if (v72[24])
    {
      anyObject = 0;
LABEL_64:

      _Block_object_dispose(buf, 8);
LABEL_65:

      _Block_object_dispose(v78, 8);
      goto LABEL_66;
    }

    if ([v56 count])
    {
      if ([v56 count] == 1)
      {
        v17 = sub_10003D020();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "User only has one remaining pass compatible with this route, using that.", v84, 2u);
        }

        anyObject = [v56 anyObject];
        goto LABEL_64;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v18 = v56;
      v19 = [v18 countByEnumeratingWithState:&v64 objects:v87 count:16];
      if (v19)
      {
        obj = v18;
        anyObject = 0;
        v57 = *v65;
        v20 = -1.79769313e308;
        while (1)
        {
          v58 = v19;
          for (i = 0; i != v58; i = i + 1)
          {
            if (*v65 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v64 + 1) + 8 * i);
            v23 = [[NSDecimalNumber alloc] initWithDouble:0.0];
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            transitProperties = [v22 transitProperties];
            balances = [transitProperties balances];

            v26 = [balances countByEnumeratingWithState:&v60 objects:v86 count:16];
            if (v26)
            {
              v27 = *v61;
              do
              {
                v28 = 0;
                v29 = v23;
                do
                {
                  if (*v61 != v27)
                  {
                    objc_enumerationMutation(balances);
                  }

                  amount = [*(*(&v60 + 1) + 8 * v28) amount];
                  v23 = [v29 decimalNumberByAdding:amount];

                  v28 = v28 + 1;
                  v29 = v23;
                }

                while (v26 != v28);
                v26 = [balances countByEnumeratingWithState:&v60 objects:v86 count:16];
              }

              while (v26);
            }

            [v23 doubleValue];
            if (v31 == v20)
            {
              if ([v22 isRemotePass])
              {
                goto LABEL_59;
              }

              v32 = sub_10003D020();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *v84 = 0;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Two passes have the same balance. Using the local pass", v84, 2u);
              }
            }

            else
            {
              [v23 doubleValue];
              if (v33 <= v20)
              {
                goto LABEL_59;
              }

              v34 = sub_10003D020();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                v35 = v22;
                v36 = [NSString alloc];
                localizedDescription = [v35 localizedDescription];
                v38 = localizedDescription;
                if (localizedDescription)
                {
                  v39 = 0;
                  v40 = localizedDescription;
                }

                else
                {
                  organizationName = [v35 organizationName];
                  v5 = organizationName;
                  if (organizationName)
                  {
                    v39 = 0;
                    v40 = organizationName;
                  }

                  else
                  {
                    localizedName = [v35 localizedName];
                    v49 = localizedName;
                    v5 = 0;
                    if (localizedName)
                    {
                      v40 = localizedName;
                    }

                    else
                    {
                      v40 = @"{pass has no description}";
                    }

                    v39 = 1;
                  }
                }

                isRemotePass = [v35 isRemotePass];
                v44 = @"NO";
                if (isRemotePass)
                {
                  v44 = @"YES";
                }

                v45 = [v36 initWithFormat:@"%@: %@, isRemote: %@", v35, v40, v44];
                if (v39)
                {
                }

                if (!v38)
                {
                }

                *v84 = 138412290;
                v85 = v45;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Current pass with the highest value is %@", v84, 0xCu);
              }

              [v23 doubleValue];
              v20 = v46;
            }

            v47 = v22;

            anyObject = v47;
LABEL_59:
          }

          v19 = [obj countByEnumeratingWithState:&v64 objects:v87 count:16];
          if (!v19)
          {
            v18 = obj;
            goto LABEL_63;
          }
        }
      }
    }

    else
    {
      v18 = sub_10003D020();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "User has no remaining passes that support top up with a balance less than the route cost", v84, 2u);
      }
    }

    anyObject = 0;
LABEL_63:

    goto LABEL_64;
  }

  v14 = sub_10003D020();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "User has no passes supported on the route", v78, 2u);
  }

  anyObject = 0;
LABEL_66:

  return anyObject;
}

- (void)fetchTransitMessageForRoute:(id)route paymentMethods:(id)methods suggestions:(id)suggestions completion:(id)completion
{
  routeCopy = route;
  methodsCopy = methods;
  suggestionsCopy = suggestions;
  completionCopy = completion;
  v14 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v14 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
LABEL_7:
    completionCopy[2](completionCopy, routeCopy, 0);
    goto LABEL_8;
  }

  if ((+[PKWalletVisibility isWalletVisible]& 1) == 0)
  {
    v16 = sub_10003D020();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Wallet is not visible. Returning.", location, 2u);
    }

    goto LABEL_7;
  }

  objc_initWeak(location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B3C144;
  v17[3] = &unk_101638D88;
  objc_copyWeak(&v22, location);
  v21 = completionCopy;
  v18 = routeCopy;
  v19 = methodsCopy;
  v20 = suggestionsCopy;
  [(TransitPassManager *)self _fetchLibrary:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(location);
LABEL_8:
}

- (void)_fetchAllAvailablePassesFromWallet
{
  if ([(NSMutableDictionary *)self->_allAvailablePasses count])
  {
    v3 = sub_10003D020();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_allAvailablePasses already exists. Not querying PKPaymentSetupViewController again.", buf, 2u);
    }
  }

  else
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    allAvailablePasses = self->_allAvailablePasses;
    self->_allAvailablePasses = v4;

    v6 = sub_10003D020();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "About to call +[PKPaymentSetupViewController paymentSetupFeaturesForConfiguration:completion:]", buf, 2u);
    }

    v3 = objc_alloc_init(PKPaymentSetupConfiguration);
    v7 = dispatch_group_create();
    [v3 setReferrerIdentifier:@"maps"];
    dispatch_group_enter(v7);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100B3C850;
    v11[3] = &unk_101638D38;
    v11[4] = self;
    v8 = v7;
    v12 = v8;
    [PKPaymentSetupViewController paymentSetupFeaturesForConfiguration:v3 completion:v11];
    dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = sub_10003D020();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = self->_allAvailablePasses;
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received response. Populated _allAvailablePasses: %@", buf, 0xCu);
    }
  }
}

- (id)_identifiersForSecurePasses:(id)passes
{
  passesCopy = passes;
  v5 = objc_alloc_init(NSMutableDictionary);
  if (passesCopy)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = passesCopy;
    v6 = passesCopy;
    v32 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (!v32)
    {
      goto LABEL_23;
    }

    v30 = v6;
    v31 = *v42;
    while (1)
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        devicePrimaryPaymentApplication = [v8 devicePrimaryPaymentApplication];
        supportedTransitNetworkIdentifiers = [devicePrimaryPaymentApplication supportedTransitNetworkIdentifiers];

        if ([supportedTransitNetworkIdentifiers count])
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v33 = supportedTransitNetworkIdentifiers;
          v11 = supportedTransitNetworkIdentifiers;
          v12 = [v11 countByEnumeratingWithState:&v37 objects:v49 count:16];
          if (!v12)
          {
            goto LABEL_20;
          }

          v13 = v12;
          v14 = *v38;
          while (1)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v38 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v37 + 1) + 8 * j);
              localizedDescription = [v8 localizedDescription];

              if (localizedDescription)
              {
                localizedDescription2 = [v8 localizedDescription];
              }

              else
              {
                v19 = [(NSMutableDictionary *)self->_allAvailablePasses objectForKeyedSubscript:v16];

                if (!v19)
                {
                  continue;
                }

                localizedDescription2 = [(NSMutableDictionary *)self->_allAvailablePasses objectForKeyedSubscript:v16];
              }

              v20 = localizedDescription2;
              [v5 setObject:localizedDescription2 forKeyedSubscript:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v37 objects:v49 count:16];
            if (!v13)
            {
LABEL_20:

              v6 = v30;
              supportedTransitNetworkIdentifiers = v33;
              break;
            }
          }
        }
      }

      v32 = [v6 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (!v32)
      {
LABEL_23:

        if ([v5 count])
        {
          v21 = sub_10003D020();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = sub_100021DB0(v6, &stru_101638E40);
            *buf = 138412546;
            v46 = v5;
            v47 = 2112;
            v48 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found transit network identifiers %@ for passes: %@", buf, 0x16u);
          }

          v23 = [v5 copy];
        }

        else
        {
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100B3CE6C;
          v34[3] = &unk_101638D10;
          v25 = v5;
          v35 = v25;
          selfCopy = self;
          [v6 enumerateObjectsUsingBlock:v34];
          v26 = sub_10003D020();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = sub_100021DB0(v6, &stru_101638E40);
            *buf = 138412546;
            v46 = v25;
            v47 = 2112;
            v48 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Using legacy transit network identifiers %@ for passes: %@", buf, 0x16u);
          }

          v23 = [v25 copy];
        }

        passesCopy = v29;
        goto LABEL_34;
      }
    }
  }

  v24 = sub_10003D020();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "securePasses is nil, returning an empty dictionary", buf, 2u);
  }

  v23 = v5;
LABEL_34:

  return v23;
}

- (id)_userTransitPassesFromLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    v4 = objc_alloc_init(NSArray);
    v5 = [libraryCopy passesOfType:1];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    remoteSecureElementPasses = [libraryCopy remoteSecureElementPasses];
    v8 = [v6 arrayByAddingObjectsFromArray:remoteSecureElementPasses];

    v9 = sub_10003D020();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = sub_100021DB0(v8, &stru_101638E40);
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_userTransitPasses: %@", &v17, 0xCu);
    }

    v11 = sub_1000282CC(v8, &stru_101638CE8);
    v12 = [v11 count];
    if (v12 != [v8 count])
    {
      v13 = sub_10003D020();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = sub_100021DB0(v11, &stru_101638E40);
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Filtered non-transit passes. Returning: %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    v15 = sub_10003D020();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPassManager.m";
      v19 = 1024;
      v20 = 385;
      v21 = 2082;
      v22 = "[TransitPassManager _userTransitPassesFromLibrary:]";
      v23 = 2082;
      v24 = "library == nil";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. library CANNOT be nil", &v17, 0x26u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPassManager.m";
      v19 = 1024;
      v20 = 385;
      v21 = 2082;
      v22 = "[TransitPassManager _userTransitPassesFromLibrary:]";
      v23 = 2082;
      v24 = "library == nil";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. library CANNOT be nil", &v17, 0x26u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_defaultPaymentCardExpressStatuses:(id)statuses
{
  statusesCopy = statuses;
  v30 = objc_alloc_init(PKPaymentService);
  v4 = objc_alloc_init(NSMutableDictionary);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = statusesCopy;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v32;
    *&v7 = 138412290;
    v29 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        devicePrimaryPaymentApplication = [v11 devicePrimaryPaymentApplication];
        [devicePrimaryPaymentApplication paymentNetworkIdentifier];
        v13 = PKLegacyTransitNetworkIdentifierForCredentialType();

        if (!v13)
        {
          uniqueID = sub_10003D020();
          if (!os_log_type_enabled(uniqueID, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          *buf = 0;
          v19 = uniqueID;
          v20 = "Default payment card has no TNI";
          v21 = 2;
          goto LABEL_15;
        }

        v14 = [v4 objectForKey:v13];
        if (v14)
        {
          v15 = v14;
          v16 = [v4 objectForKeyedSubscript:v13];
          bOOLValue = [v16 BOOLValue];

          if (bOOLValue)
          {
            uniqueID = sub_10003D020();
            if (!os_log_type_enabled(uniqueID, OS_LOG_TYPE_INFO))
            {
              goto LABEL_18;
            }

            *buf = v29;
            v36 = v13;
            v19 = uniqueID;
            v20 = "We've already found this default payment card (%@) and it has express enabled";
            v21 = 12;
LABEL_15:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v20, buf, v21);
            goto LABEL_18;
          }
        }

        isRemotePass = [v11 isRemotePass];
        v23 = [NSNumber alloc];
        uniqueID = [v11 uniqueID];
        if (isRemotePass)
        {
          v24 = [v30 isExpressModeEnabledForRemotePassUniqueIdentifier:uniqueID];
        }

        else
        {
          v24 = [v30 isExpressModeEnabledForPassUniqueIdentifier:uniqueID];
        }

        v25 = [v23 initWithBool:v24];
        [v4 setObject:v25 forKeyedSubscript:v13];

LABEL_18:
      }

      v8 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v8);
  }

  v26 = sub_10003D020();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = v4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "_defaultPaymentCardExpressStatuses dictionary: %@", buf, 0xCu);
  }

  v27 = [v4 copy];

  return v27;
}

- (id)_defaultPaymentCardsFromLibrary:(id)library
{
  v3 = [library defaultPaymentPassesWithRemotePasses:1];
  v4 = sub_1000282CC(v3, &stru_101638CC8);

  return v4;
}

- (void)_transitTopUpMessageForPass:(id)pass paymentMethods:(id)methods completion:(id)completion
{
  passCopy = pass;
  methodsCopy = methods;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B3DA90;
  v14[3] = &unk_101638C88;
  objc_copyWeak(&v18, &location);
  v11 = passCopy;
  v15 = v11;
  v12 = completionCopy;
  v17 = v12;
  v13 = methodsCopy;
  v16 = v13;
  [(TransitPassManager *)self _fetchLibrary:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (BOOL)_balanceIsLessThanRouteCost:(id)cost forPass:(id)pass
{
  costCopy = cost;
  passCopy = pass;
  transitProperties = [passCopy transitProperties];
  balances = [transitProperties balances];
  firstObject = [balances firstObject];
  currencyCode = [firstObject currencyCode];

  if (currencyCode)
  {
    currency = [costCopy currency];
    v12 = [currencyCode isEqualToString:currency];

    if (v12)
    {
      v13 = [[NSDecimalNumber alloc] initWithDouble:0.0];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      transitProperties2 = [passCopy transitProperties];
      balances2 = [transitProperties2 balances];

      v16 = [balances2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          v19 = 0;
          v20 = v13;
          do
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(balances2);
            }

            amount = [*(*(&v30 + 1) + 8 * v19) amount];
            v13 = [v20 decimalNumberByAdding:amount];

            v19 = v19 + 1;
            v20 = v13;
          }

          while (v17 != v19);
          v17 = [balances2 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v17);
      }

      amount2 = [costCopy amount];
      v23 = [v13 compare:amount2];

      if (v23 == -1)
      {
        v28 = 1;
        goto LABEL_17;
      }

      currency2 = sub_10003D020();
      if (os_log_type_enabled(currency2, OS_LOG_TYPE_INFO))
      {
        transitProperties3 = [passCopy transitProperties];
        balance = [transitProperties3 balance];
        amount3 = [costCopy amount];
        *buf = 138412546;
        v36 = balance;
        v37 = 2112;
        v38 = amount3;
        _os_log_impl(&_mh_execute_header, currency2, OS_LOG_TYPE_INFO, "Comparison result of passProperties.balance:%@ and routeCost.amount:%@ is not as expected", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  v13 = sub_10003D020();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    currency2 = [costCopy currency];
    *buf = 138412546;
    v36 = currencyCode;
    v37 = 2112;
    v38 = currency2;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "passBalanceCurrency!=routeCost.currency passBalanceCurrency: %@, routeCost.currency: %@", buf, 0x16u);
LABEL_15:
  }

  v28 = 0;
LABEL_17:

  return v28;
}

- (id)_exclamationMarkImage
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:UIFontWeightRegular weight:30.0];
  v3 = [UIImage _systemImageNamed:@"exclamationmark.circle" withConfiguration:v2];
  v4 = +[UIColor systemRedColor];
  v5 = [v3 _flatImageWithColor:v4];

  v6 = [v5 imageWithRenderingMode:1];

  return v6;
}

- (id)_messageFromBalance:(id)balance passName:(id)name
{
  balanceCopy = balance;
  nameCopy = name;
  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (balanceCopy)
  {
    if (!nameCopy)
    {
      v9 = [v7 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_AMOUNT_ONLY" value:@"localized string not found" table:0];

      v11 = [[NSString alloc] initWithFormat:v9, balanceCopy, v14];
      goto LABEL_8;
    }

    v9 = [v7 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_FULL" value:@"localized string not found" table:0];

    v10 = [NSString alloc];
    v14 = balanceCopy;
LABEL_6:
    v11 = [v10 initWithFormat:v9, nameCopy, v14];
LABEL_8:
    v12 = v11;
    v8 = v9;
    goto LABEL_9;
  }

  if (nameCopy)
  {
    v9 = [v7 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_NAME_ONLY" value:@"localized string not found" table:0];

    v10 = [NSString alloc];
    goto LABEL_6;
  }

  v12 = [v7 localizedStringForKey:@"MAPS_TRANSIT_PAY_LOW_BALANCE_GENERIC" value:@"localized string not found" table:0];
LABEL_9:

  return v12;
}

- (void)_fetchLibrary:(id)library
{
  libraryCopy = library;
  objc_initWeak(&location, self);
  libraryQueue = self->_libraryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B3EA14;
  block[3] = &unk_101660648;
  objc_copyWeak(&v9, &location);
  v8 = libraryCopy;
  v6 = libraryCopy;
  dispatch_async(libraryQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)userHasPaymentCardWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_10003D020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Looking through the user's wallet for a payment card", buf, 2u);
  }

  objc_initWeak(buf, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100B3EBF4;
  v7[3] = &unk_101638C60;
  objc_copyWeak(&v9, buf);
  v6 = handlerCopy;
  v8 = v6;
  [(TransitPassManager *)self _fetchLibrary:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

- (void)dealloc
{
  [(MapsSuggestionsCanKicker *)self->_passKitLibraryDidChangeCanKicker cancel];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TransitPassManager;
  [(TransitPassManager *)&v4 dealloc];
}

- (TransitPassManager)initWithIsTourist:(BOOL)tourist
{
  v24.receiver = self;
  v24.super_class = TransitPassManager;
  v4 = [(TransitPassManager *)&v24 init];
  v5 = v4;
  if (v4)
  {
    v4->_isTourist = tourist;
    objc_initWeak(&location, v4);
    GEOConfigGetDouble();
    v7 = v6;
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.Maps.TransitPassManager", v8);
    libraryQueue = v5->_libraryQueue;
    v5->_libraryQueue = v9;

    v11 = [MapsSuggestionsCanKicker alloc];
    v12 = v5->_libraryQueue;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100B3EF80;
    v21 = &unk_101661B98;
    objc_copyWeak(&v22, &location);
    v13 = [v11 initWithName:@"TransitPassManagerCanKicker" time:v12 queue:&v18 block:v7];
    passKitLibraryDidChangeCanKicker = v5->_passKitLibraryDidChangeCanKicker;
    v5->_passKitLibraryDidChangeCanKicker = v13;

    v15 = [NSNotificationCenter defaultCenter:v18];
    [v15 addObserver:v5 selector:"_passKitLibraryDidChange:" name:PKPassLibraryDidChangeNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v5 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

@end