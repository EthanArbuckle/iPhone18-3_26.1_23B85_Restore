@interface TransitPayModelDataProvider
- (BOOL)_allIdentifiersAreInteroperable:(id)interoperable;
- (BOOL)_userHasNonDCICardInCurrentMarket;
- (TransitPayModelDataProvider)initWithTransitPaymentMethods:(id)methods suggestions:(id)suggestions isTourist:(BOOL)tourist defaultPaymentCardsIdentifiers:(id)identifiers defaultPaymentCardsExpressStatuses:(id)statuses userClosedLoopIdentifiers:(id)loopIdentifiers availablePasses:(id)passes;
- (id)_filteredClosedLoopIdentifiers;
- (id)_modelDataForOpenLoop;
- (id)_modelDataForPaymentMethodIdentifiers:(id)identifiers actionTitle:(id)title;
- (id)_walletImage;
- (id)description;
- (id)modelData;
@end

@implementation TransitPayModelDataProvider

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"TransitPayModelDataProvider:\n"];
  [v3 appendFormat:@"paymentMethods:                        %@\n", self->_paymentMethods];
  [v3 appendFormat:@"suggestions:                           %@\n", self->_suggestions];
  if (self->_isTourist)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"isTourist:                             %@\n", v4];
  [v3 appendFormat:@"routeIdentifiers:                      %@\n", self->_routeTNIs];
  [v3 appendFormat:@"defaultPaymentCardsIdentifiers:        %@\n", self->_defaultPaymentCardsIdentifiers];
  [v3 appendFormat:@"defaultPaymentCardsExpressStatuses:    %@\n", self->_defaultPaymentCardsExpressStatuses];
  [v3 appendFormat:@"userClosedLoopIdentifiers:             %@\n", self->_userClosedLoopIdentifiers];
  [v3 appendFormat:@"paymentMethod-->suggestion:            %@\n", self->_paymentMethodToSuggestionMapping];
  [v3 appendFormat:@"identifier-->paymentMethod:            %@\n", self->_identifierToPaymentMethodMapping];
  [v3 appendFormat:@"allAvailablePasses:                    %@\n", self->_availablePasses];
  [v3 appendFormat:@"numberOfOLMethods:                     %lu\n", self->_numberOfOLMethods];
  [v3 appendFormat:@"numberOfCLDCIMethods:                  %lu\n", self->_numberOfCLDCIMethods];
  [v3 appendFormat:@"numberOfCLNonDCIMethods:               %lu\n", self->_numberOfCLNonDCIMethods];
  [v3 appendFormat:@"numberOfIOMethods:                     %lu\n", self->_numberOfIOMethods];
  v5 = [[NSString alloc] initWithString:v3];

  return v5;
}

- (id)modelData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_paymentMethods)
  {
    v11 = sub_10003D020();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v58 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      v59 = 1024;
      *v60 = 363;
      *&v60[4] = 2082;
      *&v60[6] = "[TransitPayModelDataProvider modelData]";
      v61 = 2082;
      v62 = "_paymentMethods == nil";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method cannot be nil", buf, 0x26u);
    }

    v5 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    *buf = 136446978;
    v58 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
    v59 = 1024;
    *v60 = 363;
    *&v60[4] = 2082;
    *&v60[6] = "[TransitPayModelDataProvider modelData]";
    v61 = 2082;
    v62 = "_paymentMethods == nil";
    v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method cannot be nil";
    goto LABEL_21;
  }

  if (!selfCopy->_suggestions)
  {
    v13 = sub_10003D020();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v58 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      v59 = 1024;
      *v60 = 364;
      *&v60[4] = 2082;
      *&v60[6] = "[TransitPayModelDataProvider modelData]";
      v61 = 2082;
      v62 = "_suggestions == nil";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method Suggestions cannot be nil", buf, 0x26u);
    }

    v5 = GEOFindOrCreateLog();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_22;
    }

    *buf = 136446978;
    v58 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
    v59 = 1024;
    *v60 = 364;
    *&v60[4] = 2082;
    *&v60[6] = "[TransitPayModelDataProvider modelData]";
    v61 = 2082;
    v62 = "_suggestions == nil";
    v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method Suggestions cannot be nil";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, v12, buf, 0x26u);
LABEL_22:
    _modelDataForOpenLoop = 0;
    goto LABEL_89;
  }

  v3 = [NSMutableSet alloc];
  allKeys = [(NSMutableDictionary *)selfCopy->_defaultPaymentCardsIdentifiers allKeys];
  v5 = [v3 initWithArray:allKeys];

  v6 = [NSMutableSet alloc];
  allKeys2 = [(NSMutableDictionary *)selfCopy->_userClosedLoopIdentifiers allKeys];
  v8 = [v6 initWithArray:allKeys2];

  if (!selfCopy->_numberOfCLNonDCIMethods)
  {
    goto LABEL_112;
  }

  if (!selfCopy->_numberOfOLMethods)
  {
    if ([(TransitPayModelDataProvider *)selfCopy _userHasNonDCICardInCurrentMarket])
    {
      _filteredClosedLoopIdentifiers = sub_10003D020();
      if (os_log_type_enabled(_filteredClosedLoopIdentifiers, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "No suggestion for a non-DCI card in a market without OL support";
        goto LABEL_84;
      }

LABEL_86:
      _modelDataForOpenLoop = 0;
      goto LABEL_87;
    }

    if (!selfCopy->_numberOfOLMethods)
    {
      goto LABEL_112;
    }
  }

  if (![(TransitPayModelDataProvider *)selfCopy _userHasNonDCICardInCurrentMarket])
  {
    v20 = sub_10003D020();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Showing an open loop suggestion. The user does NOT have a DCI card in Wallet", buf, 2u);
    }
  }

  else
  {
LABEL_112:
    if (selfCopy->_numberOfCLDCIMethods && selfCopy->_numberOfOLMethods)
    {
      if (!selfCopy->_isTourist)
      {
        if (([(NSMutableSet *)selfCopy->_routeTNIs intersectsSet:v8]& 1) == 0)
        {
          _filteredClosedLoopIdentifiers = [(TransitPayModelDataProvider *)selfCopy _filteredClosedLoopIdentifiers];
          v21 = sub_10003D020();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v58 = _filteredClosedLoopIdentifiers;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "isTourist = NO. Showing Closed Loop Suggestions for: %@", buf, 0xCu);
          }

          if ([_filteredClosedLoopIdentifiers count]== 1)
          {
            availablePasses = selfCopy->_availablePasses;
            v23 = [_filteredClosedLoopIdentifiers objectAtIndexedSubscript:0];
            v24 = [(NSDictionary *)availablePasses objectForKeyedSubscript:v23];
            +[NSBundle mainBundle];
            if (v24)
              v25 = {;
              v26 = [v25 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_SINGLE_CLOSED_LOOP_CARD_WITH_NAME" value:@"localized string not found" table:0];

              v27 = [[NSString alloc] initWithFormat:v26, v24];
            }

            else
              v26 = {;
              v27 = [v26 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_MULTIPLE_CLOSED_LOOP_CARDS" value:@"localized string not found" table:0];
            }

            v55 = v27;
          }

          else
          {
            v23 = +[NSBundle mainBundle];
            v55 = [v23 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_MULTIPLE_CLOSED_LOOP_CARDS" value:@"localized string not found" table:0];
          }

          _modelDataForOpenLoop = [(TransitPayModelDataProvider *)selfCopy _modelDataForPaymentMethodIdentifiers:_filteredClosedLoopIdentifiers actionTitle:v55];

          goto LABEL_87;
        }

        _filteredClosedLoopIdentifiers = sub_10003D020();
        if (!os_log_type_enabled(_filteredClosedLoopIdentifiers, OS_LOG_TYPE_INFO))
        {
          goto LABEL_86;
        }

        *buf = 0;
        v10 = "No Suggestion. Route has a combination of OL and CL methods and the user is not a Tourist. Looks like the user already has a compatible CL card.";
        goto LABEL_84;
      }

      if (![v5 count]|| ([v5 intersectsSet:selfCopy->_routeTNIs]& 1) == 0)
      {
        _filteredClosedLoopIdentifiers = sub_10003D020();
        if (os_log_type_enabled(_filteredClosedLoopIdentifiers, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v10 = "Tourist. No Suggestion. No payment card in the wallet has an identifier that the route needs.";
LABEL_84:
          v32 = _filteredClosedLoopIdentifiers;
          v33 = 2;
LABEL_85:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, v10, buf, v33);
          goto LABEL_86;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (selfCopy->_numberOfIOMethods && [(NSMutableSet *)selfCopy->_routeTNIs intersectsSet:v8])
      {
        v15 = sub_10003D020();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Checking _numberOfIOMethods >= 1 && [_routeIdentifiers intersectsSet:userClosedLoopIdentifiers]", buf, 2u);
        }

        _filteredClosedLoopIdentifiers = [(NSMutableSet *)selfCopy->_routeTNIs mutableCopy];
        [_filteredClosedLoopIdentifiers intersectSet:v8];
        v16 = sub_10003D020();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v58 = _filteredClosedLoopIdentifiers;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Showing Interoperable Suggestion for: %@", buf, 0xCu);
        }

        if ([(TransitPayModelDataProvider *)selfCopy _allIdentifiersAreInteroperable:_filteredClosedLoopIdentifiers])
        {
          allObjects = [_filteredClosedLoopIdentifiers allObjects];
          v18 = +[NSBundle mainBundle];
          v19 = [v18 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_SEE_HOW_IT_WORKS" value:@"localized string not found" table:0];

          _modelDataForOpenLoop = [(TransitPayModelDataProvider *)selfCopy _modelDataForPaymentMethodIdentifiers:allObjects actionTitle:v19];

LABEL_87:
          goto LABEL_88;
        }

        v28 = sub_10003D020();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Falling through. _allIdentifiersAreInteroperable check didn't pass.", buf, 2u);
        }
      }

      numberOfCLDCIMethods = selfCopy->_numberOfCLDCIMethods;
      if (numberOfCLDCIMethods >= 2)
      {
        if (([(NSMutableSet *)selfCopy->_routeTNIs intersectsSet:v8]& 1) == 0)
        {
          v35 = sub_10003D020();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Checking _numberOfCLMethods >= 1 && ![_routeIdentifiers intersectsSet:userClosedLoopIdentifiers]", buf, 2u);
          }

          _filteredClosedLoopIdentifiers = [(TransitPayModelDataProvider *)selfCopy _filteredClosedLoopIdentifiers];
          v36 = [_filteredClosedLoopIdentifiers count];
          v37 = sub_10003D020();
          v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
          if (v36)
          {
            if (v38)
            {
              *buf = 138412290;
              v58 = _filteredClosedLoopIdentifiers;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Showing Closed Loop Suggestions from multiple options for: %@", buf, 0xCu);
            }

            if ([_filteredClosedLoopIdentifiers count]== 1)
            {
              v39 = selfCopy->_availablePasses;
              v40 = [_filteredClosedLoopIdentifiers objectAtIndexedSubscript:0];
              v41 = [(NSDictionary *)v39 objectForKeyedSubscript:v40];
              +[NSBundle mainBundle];
              if (v41)
                v42 = {;
                v43 = [v42 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_SINGLE_CLOSED_LOOP_CARD_WITH_NAME" value:@"localized string not found" table:0];

                v44 = [[NSString alloc] initWithFormat:v43, v41];
              }

              else
                v43 = {;
                v44 = [v43 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_MULTIPLE_CLOSED_LOOP_CARDS" value:@"localized string not found" table:0];
              }

              v37 = v44;
            }

            else
            {
              v40 = +[NSBundle mainBundle];
              v37 = [v40 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_MULTIPLE_CLOSED_LOOP_CARDS" value:@"localized string not found" table:0];
            }

            _modelDataForOpenLoop = [(TransitPayModelDataProvider *)selfCopy _modelDataForPaymentMethodIdentifiers:_filteredClosedLoopIdentifiers actionTitle:v37];
          }

          else
          {
            if (v38)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "No Suggestion. Could not parse an identifier that has a valid paymentMethodSuggestion.", buf, 2u);
            }

            _modelDataForOpenLoop = 0;
          }

          goto LABEL_87;
        }

        numberOfCLDCIMethods = selfCopy->_numberOfCLDCIMethods;
      }

      if (numberOfCLDCIMethods == 1)
      {
        v30 = sub_10003D020();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Checking _numberOfCLMethods == 1", buf, 2u);
        }

        if (![(NSMutableSet *)selfCopy->_routeTNIs intersectsSet:v8])
        {
          _filteredClosedLoopIdentifiers2 = [(TransitPayModelDataProvider *)selfCopy _filteredClosedLoopIdentifiers];
          _filteredClosedLoopIdentifiers = _filteredClosedLoopIdentifiers2;
          if (_filteredClosedLoopIdentifiers2 && [_filteredClosedLoopIdentifiers2 count])
          {
            v46 = sub_10003D020();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = [_filteredClosedLoopIdentifiers objectAtIndexedSubscript:0];
              *buf = 138412290;
              v58 = v47;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Showing Closed Loop Suggestion for: %@", buf, 0xCu);
            }

            v48 = selfCopy->_availablePasses;
            v49 = [_filteredClosedLoopIdentifiers objectAtIndexedSubscript:0];
            v50 = [(NSDictionary *)v48 objectForKeyedSubscript:v49];
            +[NSBundle mainBundle];
            if (v50)
              v51 = {;
              v52 = [v51 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_SINGLE_CLOSED_LOOP_CARD_WITH_NAME" value:@"localized string not found" table:0];

              v53 = [[NSString alloc] initWithFormat:v52, v50];
            }

            else
              v52 = {;
              v53 = [v52 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_MULTIPLE_CLOSED_LOOP_CARDS" value:@"localized string not found" table:0];
            }

            v56 = v53;

            _modelDataForOpenLoop = [(TransitPayModelDataProvider *)selfCopy _modelDataForPaymentMethodIdentifiers:_filteredClosedLoopIdentifiers actionTitle:v56];
          }

          else
          {
            v49 = sub_10003D020();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "No Suggestion. Could not parse an identifier that has a valid paymentMethodSuggestion.", buf, 2u);
            }

            _modelDataForOpenLoop = 0;
          }

          goto LABEL_87;
        }

        _filteredClosedLoopIdentifiers = sub_10003D020();
        if (!os_log_type_enabled(_filteredClosedLoopIdentifiers, OS_LOG_TYPE_INFO))
        {
          goto LABEL_86;
        }

        routeTNIs = selfCopy->_routeTNIs;
        *buf = 138412546;
        v58 = routeTNIs;
        v59 = 2112;
        *v60 = v8;
        v10 = "No Suggestion. User already has CL pass in their Wallet: Suggested: \n%@\nExisting passes:\n%@";
        v32 = _filteredClosedLoopIdentifiers;
        v33 = 22;
        goto LABEL_85;
      }

      if (!selfCopy->_numberOfOLMethods)
      {
        _modelDataForOpenLoop = 0;
        goto LABEL_88;
      }

      v34 = sub_10003D020();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Checking _numberOfOLMethods >= 1", buf, 2u);
      }

      if (([v5 intersectsSet:selfCopy->_routeTNIs]& 1) == 0)
      {
        _filteredClosedLoopIdentifiers = sub_10003D020();
        if (os_log_type_enabled(_filteredClosedLoopIdentifiers, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v10 = "No Suggestion. The default payment card in Wallet does not has an identifier that the route needs.";
          goto LABEL_84;
        }

        goto LABEL_86;
      }

      if (![v5 count])
      {
        _filteredClosedLoopIdentifiers = sub_10003D020();
        if (os_log_type_enabled(_filteredClosedLoopIdentifiers, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v10 = "User does not have even a single payment card. Not showing any Suggestion";
          goto LABEL_84;
        }

        goto LABEL_86;
      }
    }
  }

  _modelDataForOpenLoop = [(TransitPayModelDataProvider *)selfCopy _modelDataForOpenLoop];
LABEL_88:

LABEL_89:
  objc_sync_exit(selfCopy);

  return _modelDataForOpenLoop;
}

- (BOOL)_allIdentifiersAreInteroperable:(id)interoperable
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  interoperableCopy = interoperable;
  v5 = [interoperableCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(interoperableCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        paymentMethodToSuggestionMapping = self->_paymentMethodToSuggestionMapping;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100A6623C;
        v14[3] = &unk_101632BA8;
        v14[4] = v8;
        v14[5] = &v19;
        [(NSMutableDictionary *)paymentMethodToSuggestionMapping enumerateKeysAndObjectsUsingBlock:v14];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [interoperableCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v10 = sub_10003D020();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (*(v20 + 24))
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "areAllInteroperable? %@", buf, 0xCu);
  }

  v12 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return v12 & 1;
}

- (BOOL)_userHasNonDCICardInCurrentMarket
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_paymentMethods;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        allKeys = [(NSMutableDictionary *)self->_userClosedLoopIdentifiers allKeys];
        identifier = [v8 identifier];
        v11 = [allKeys containsObject:identifier];

        if (v11)
        {
          v12 = [(NSMutableDictionary *)self->_paymentMethodToSuggestionMapping objectForKeyedSubscript:v8];
          type = [v12 type];

          if (type == 4)
          {
            v15 = sub_10003D020();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              identifier2 = [v8 identifier];
              *buf = 138412290;
              v23 = identifier2;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "User owns card %@ which is non-DCI", buf, 0xCu);
            }

            v14 = 1;
            goto LABEL_14;
          }
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)_filteredClosedLoopIdentifiers
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableDictionary count](self->_paymentMethodToSuggestionMapping, "count")}];
  paymentMethodToSuggestionMapping = self->_paymentMethodToSuggestionMapping;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100A6658C;
  v8[3] = &unk_101632B80;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)paymentMethodToSuggestionMapping enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (id)_modelDataForOpenLoop
{
  v3 = [NSMutableSet alloc];
  allKeys = [(NSMutableDictionary *)self->_defaultPaymentCardsIdentifiers allKeys];
  v5 = [v3 initWithArray:allKeys];

  [v5 intersectSet:self->_routeTNIs];
  if ([v5 count])
  {
    identifierToPaymentMethodMapping = self->_identifierToPaymentMethodMapping;
    anyObject = [v5 anyObject];
    v8 = [(NSMutableDictionary *)identifierToPaymentMethodMapping objectForKeyedSubscript:anyObject];

    v9 = [(NSMutableDictionary *)self->_paymentMethodToSuggestionMapping objectForKeyedSubscript:v8];
    if ([v9 type] == 1)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      allObjects2 = v5;
      v11 = [allObjects2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v27;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(allObjects2);
            }

            v15 = [(NSDictionary *)self->_defaultPaymentCardsExpressStatuses objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i), v26];
            bOOLValue = [v15 BOOLValue];

            if (bOOLValue)
            {
              v21 = sub_10003D020();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Showing Open Loop Express Suggestion", buf, 2u);
              }

              allObjects = [allObjects2 allObjects];
              v23 = +[NSBundle mainBundle];
              v24 = [v23 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_SEE_HOW_IT_WORKS" value:@"localized string not found" table:0];

              v17 = [(TransitPayModelDataProvider *)self _modelDataForPaymentMethodIdentifiers:allObjects actionTitle:v24];

              goto LABEL_23;
            }
          }

          v12 = [allObjects2 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      allObjects2 = sub_10003D020();
      if (os_log_type_enabled(allObjects2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, allObjects2, OS_LOG_TYPE_INFO, "User had no express-enabled default cards", buf, 2u);
      }

      v17 = 0;
    }

    else
    {
      v18 = sub_10003D020();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Showing Open Loop Non-Express Suggestion", buf, 2u);
      }

      allObjects2 = [v5 allObjects];
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"MAPS_TRANSIT_PAY_ACTION_BUTTON_SEE_HOW_IT_WORKS" value:@"localized string not found" table:0];

      v17 = [(TransitPayModelDataProvider *)self _modelDataForPaymentMethodIdentifiers:allObjects2 actionTitle:v20];
    }

LABEL_23:
  }

  else
  {
    v8 = sub_10003D020();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Market does not support any of the user's default cards", buf, 2u);
    }

    v17 = 0;
  }

  return v17;
}

- (id)_modelDataForPaymentMethodIdentifiers:(id)identifiers actionTitle:(id)title
{
  identifiersCopy = identifiers;
  titleCopy = title;
  if (!identifiersCopy)
  {
    v57 = sub_10003D020();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      *&buf[12] = 1024;
      *&buf[14] = 181;
      *&buf[18] = 2082;
      *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
      *&buf[28] = 2082;
      *&buf[30] = "identifiers == nil";
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. identifiers CANNOT be nil", buf, 0x26u);
    }

    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      *&buf[12] = 1024;
      *&buf[14] = 181;
      *&buf[18] = 2082;
      *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
      *&buf[28] = 2082;
      *&buf[30] = "identifiers == nil";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. identifiers CANNOT be nil", buf, 0x26u);
    }

    goto LABEL_39;
  }

  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v9 = identifiersCopy;
  v10 = [v9 countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v87;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v87 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NSMutableDictionary *)self->_identifierToPaymentMethodMapping objectForKeyedSubscript:*(*(&v86 + 1) + 8 * i)];
        if (!v14)
        {
          v55 = sub_10003D020();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446978;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
            *&buf[12] = 1024;
            *&buf[14] = 187;
            *&buf[18] = 2082;
            *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
            *&buf[28] = 2082;
            *&buf[30] = "paymentMethod == nil";
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. paymentMethod SHOULD NOT be nil", buf, 0x26u);
          }

          v56 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446978;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
            *&buf[12] = 1024;
            *&buf[14] = 187;
            *&buf[18] = 2082;
            *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
            *&buf[28] = 2082;
            *&buf[30] = "paymentMethod == nil";
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. paymentMethod SHOULD NOT be nil", buf, 0x26u);
          }

          goto LABEL_39;
        }

        v15 = v14;
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v86 objects:v93 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (![v8 count])
  {
    v58 = sub_10003D020();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      v59 = [(TransitPayModelDataProvider *)self description];
      *buf = 136447234;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      *&buf[12] = 1024;
      *&buf[14] = 191;
      *&buf[18] = 2082;
      *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
      *&buf[28] = 2082;
      *&buf[30] = "paymentMethods.count == 0u";
      v91 = 2112;
      v92 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. paymentMethods cannot be nil. %@", buf, 0x30u);
    }

    v60 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      v61 = [(TransitPayModelDataProvider *)self description];
      *buf = 136447234;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      *&buf[12] = 1024;
      *&buf[14] = 191;
      *&buf[18] = 2082;
      *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
      *&buf[28] = 2082;
      *&buf[30] = "paymentMethods.count == 0u";
      v91 = 2112;
      v92 = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. paymentMethods cannot be nil. %@", buf, 0x30u);
    }

LABEL_39:
    v62 = 0;
    goto LABEL_40;
  }

  v16 = [v8 objectAtIndexedSubscript:0];
  v17 = [(NSMutableDictionary *)self->_paymentMethodToSuggestionMapping objectForKeyedSubscript:v16];
  v18 = sub_10003D020();
  v19 = v18;
  v84 = v17;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Suggesting: %@, %@", buf, 0x16u);
    }

    v20 = [[NSMutableDictionary alloc] initWithDictionary:self->_defaultPaymentCardsIdentifiers];
    [v20 addEntriesFromDictionary:self->_userClosedLoopIdentifiers];
    [v20 addEntriesFromDictionary:self->_availablePasses];
    identifier = [v16 identifier];
    v22 = [v20 objectForKey:identifier];

    if (v22)
    {
      v78 = v8;
      v79 = identifiersCopy;
      v82 = titleCopy;
      tipSubtitle = [v84 tipSubtitle];
      identifier2 = [v16 identifier];
      v25 = [v20 objectForKeyedSubscript:identifier2];
      v26 = tipSubtitle;
      IsRightToLeft = MKApplicationLayoutDirectionIsRightToLeft();
      v94 = @"{CardName}";
      v95 = v25;
      v28 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
      buf[0] = 1;
      memset(&buf[1], 0, 17);
      buf[18] = IsRightToLeft;
      v29 = v84;
      *&buf[19] = 0;
      *&buf[24] = 0;
      v81 = [NSString _navigation_stringForServerFormattedString:v26 options:buf overrideVariables:v28];

      v85 = objc_alloc_init(NSMutableString);
      educationalScreenPaymentBody = [v84 educationalScreenPaymentBody];
      v31 = [educationalScreenPaymentBody count];

      if (v31)
      {
        v32 = 0;
        do
        {
          educationalScreenPaymentBody2 = [v29 educationalScreenPaymentBody];
          v34 = [educationalScreenPaymentBody2 objectAtIndexedSubscript:v32];

          v35 = v16;
          identifier3 = [v16 identifier];
          v37 = [v20 objectForKeyedSubscript:identifier3];
          v38 = v34;
          LOBYTE(v34) = MKApplicationLayoutDirectionIsRightToLeft();
          v94 = @"{CardName}";
          v95 = v37;
          v39 = [NSDictionary dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          buf[0] = 1;
          memset(&buf[1], 0, 17);
          buf[18] = v34;
          *&buf[19] = 0;
          *&buf[24] = 0;
          v40 = [NSString _navigation_stringForServerFormattedString:v38 options:buf overrideVariables:v39];

          v41 = +[NSCharacterSet whitespaceCharacterSet];
          v42 = [v40 stringByTrimmingCharactersInSet:v41];

          v43 = [v42 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1016631F0];

          v29 = v84;
          [v85 appendString:v43];
          educationalScreenPaymentBody3 = [v84 educationalScreenPaymentBody];
          v45 = [educationalScreenPaymentBody3 count] - 1;

          if (v32 < v45)
          {
            [v85 appendString:@"\n\n"];
          }

          ++v32;
          educationalScreenPaymentBody4 = [v84 educationalScreenPaymentBody];
          v47 = [educationalScreenPaymentBody4 count];

          v16 = v35;
        }

        while (v32 < v47);
      }

      v80 = [[NSString alloc] initWithString:v85];
      v73 = [TransitPayModelData alloc];
      tipTitle = [v29 tipTitle];
      formatStrings = [tipTitle formatStrings];
      firstObject = [formatStrings firstObject];
      _walletImage = [(TransitPayModelDataProvider *)self _walletImage];
      v51 = v16;
      v52 = v29;
      v76 = formatStrings;
      v77 = tipTitle;
      v74 = _walletImage;
      if ([v51 paymentMethodType] == 1)
      {
        if ([v52 type] == 1)
        {
          v53 = 1;
        }

        else
        {
          v53 = 2;
        }

        v54 = v82;
        v8 = v78;
      }

      else
      {
        v54 = v82;
        v8 = v78;
        if ([v51 paymentMethodType] == 2)
        {
          if ([v52 purpose] == 2)
          {
            v53 = 4;
          }

          else
          {
            v53 = 3;
          }
        }

        else
        {
          v53 = 0;
        }
      }

      v65 = [v8 copy];
      educationalScreenTitle = [v52 educationalScreenTitle];
      formatStrings2 = [educationalScreenTitle formatStrings];
      firstObject2 = [formatStrings2 firstObject];
      educationalScreenAssets = [v52 educationalScreenAssets];
      LOBYTE(v72) = 0;
      v69 = v53;
      v70 = v65;
      v62 = [(TransitPayModelData *)v73 initWithTitle:firstObject subtitle:v81 actionTitle:v54 image:v74 suggestionType:v69 paymentMethods:v65 educationScreenTitle:firstObject2 educationScreenAssetURLs:educationalScreenAssets educationScreenText:v80 topUpPassUniqueID:0 isForRemoteDevice:v72];

      v71 = sub_10003D020();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v62;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "Returning Model: %@", buf, 0xCu);
      }

      identifiersCopy = v79;
      v64 = v81;
      titleCopy = v82;
    }

    else
    {
      v64 = sub_10003D020();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Unable to create a modelData object because combinedPasses[paymentMethod.identifier] is nil", buf, 2u);
      }

      v62 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      *&buf[12] = 1024;
      *&buf[14] = 199;
      *&buf[18] = 2082;
      *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
      *&buf[28] = 2082;
      *&buf[30] = "suggestion == nil";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. paymentMethodSuggestion SHOULD NOT be nil", buf, 0x26u);
    }

    v20 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      *&buf[12] = 1024;
      *&buf[14] = 199;
      *&buf[18] = 2082;
      *&buf[20] = "[TransitPayModelDataProvider _modelDataForPaymentMethodIdentifiers:actionTitle:]";
      *&buf[28] = 2082;
      *&buf[30] = "suggestion == nil";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. paymentMethodSuggestion SHOULD NOT be nil", buf, 0x26u);
    }

    v62 = 0;
  }

LABEL_40:

  return v62;
}

- (id)_walletImage
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v3 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.Passbook" format:2 scale:?];

  return v3;
}

- (TransitPayModelDataProvider)initWithTransitPaymentMethods:(id)methods suggestions:(id)suggestions isTourist:(BOOL)tourist defaultPaymentCardsIdentifiers:(id)identifiers defaultPaymentCardsExpressStatuses:(id)statuses userClosedLoopIdentifiers:(id)loopIdentifiers availablePasses:(id)passes
{
  methodsCopy = methods;
  suggestionsCopy = suggestions;
  identifiersCopy = identifiers;
  statusesCopy = statuses;
  loopIdentifiersCopy = loopIdentifiers;
  passesCopy = passes;
  v85.receiver = self;
  v85.super_class = TransitPayModelDataProvider;
  v18 = [(TransitPayModelDataProvider *)&v85 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestions, suggestions);
    v19->_isTourist = tourist;
    v20 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(methodsCopy, "count")}];
    routeTNIs = v19->_routeTNIs;
    v19->_routeTNIs = v20;

    v22 = [[NSMutableDictionary alloc] initWithDictionary:identifiersCopy];
    defaultPaymentCardsIdentifiers = v19->_defaultPaymentCardsIdentifiers;
    v19->_defaultPaymentCardsIdentifiers = v22;

    objc_storeStrong(&v19->_defaultPaymentCardsExpressStatuses, statuses);
    v24 = [[NSMutableDictionary alloc] initWithDictionary:loopIdentifiersCopy];
    userClosedLoopIdentifiers = v19->_userClosedLoopIdentifiers;
    v19->_userClosedLoopIdentifiers = v24;

    objc_storeStrong(&v19->_availablePasses, passes);
  }

  v26 = identifiersCopy;
  v68 = loopIdentifiersCopy;
  if (![methodsCopy count])
  {
    v60 = statusesCopy;
    v62 = sub_10003D020();
    v27 = suggestionsCopy;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v90 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      v91 = 1024;
      v92 = 68;
      v93 = 2082;
      v94 = "[TransitPayModelDataProvider initWithTransitPaymentMethods:suggestions:isTourist:defaultPaymentCardsIdentifiers:defaultPaymentCardsExpressStatuses:userClosedLoopIdentifiers:availablePasses:]";
      v95 = 2082;
      v96 = "paymentMethods.count == 0u";
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method cannot be nil", buf, 0x26u);
    }

    v28 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v90 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      v91 = 1024;
      v92 = 68;
      v93 = 2082;
      v94 = "[TransitPayModelDataProvider initWithTransitPaymentMethods:suggestions:isTourist:defaultPaymentCardsIdentifiers:defaultPaymentCardsExpressStatuses:userClosedLoopIdentifiers:availablePasses:]";
      v95 = 2082;
      v96 = "paymentMethods.count == 0u";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method cannot be nil", buf, 0x26u);
    }

    v59 = 0;
    goto LABEL_45;
  }

  v66 = identifiersCopy;
  v27 = suggestionsCopy;
  if (![suggestionsCopy count])
  {
    v63 = sub_10003D020();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v90 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      v91 = 1024;
      v92 = 69;
      v93 = 2082;
      v94 = "[TransitPayModelDataProvider initWithTransitPaymentMethods:suggestions:isTourist:defaultPaymentCardsIdentifiers:defaultPaymentCardsExpressStatuses:userClosedLoopIdentifiers:availablePasses:]";
      v95 = 2082;
      v96 = "suggestions.count == 0u";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method Suggestions cannot be nil", buf, 0x26u);
    }

    v28 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v90 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/TransitPayModelDataProvider.m";
      v91 = 1024;
      v92 = 69;
      v93 = 2082;
      v94 = "[TransitPayModelDataProvider initWithTransitPaymentMethods:suggestions:isTourist:defaultPaymentCardsIdentifiers:defaultPaymentCardsExpressStatuses:userClosedLoopIdentifiers:availablePasses:]";
      v95 = 2082;
      v96 = "suggestions.count == 0u";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Payment Method Suggestions cannot be nil", buf, 0x26u);
    }

    v59 = 0;
    v26 = identifiersCopy;
    v60 = statusesCopy;
LABEL_45:
    v61 = passesCopy;
    goto LABEL_46;
  }

  v65 = methodsCopy;
  v28 = objc_alloc_init(NSMutableIndexSet);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v29 = suggestionsCopy;
  v30 = [v29 countByEnumeratingWithState:&v81 objects:v88 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v82;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v82 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v81 + 1) + 8 * i);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        paymentMethodIndices = [v34 paymentMethodIndices];
        v36 = [paymentMethodIndices countByEnumeratingWithState:&v77 objects:v87 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v78;
          do
          {
            for (j = 0; j != v37; j = j + 1)
            {
              if (*v78 != v38)
              {
                objc_enumerationMutation(paymentMethodIndices);
              }

              -[NSObject addIndex:](v28, "addIndex:", [*(*(&v77 + 1) + 8 * j) unsignedIntegerValue]);
            }

            v37 = [paymentMethodIndices countByEnumeratingWithState:&v77 objects:v87 count:16];
          }

          while (v37);
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v81 objects:v88 count:16];
    }

    while (v31);
  }

  v40 = [v65 objectsAtIndexes:v28];
  paymentMethods = v19->_paymentMethods;
  v19->_paymentMethods = v40;

  v42 = [v65 count];
  if (v42 != [(NSArray *)v19->_paymentMethods count])
  {
    v43 = sub_10003D020();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Trimmed some unused paymentMethods", buf, 2u);
    }
  }

  v44 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v19->_paymentMethods, "count")}];
  paymentMethodToSuggestionMapping = v19->_paymentMethodToSuggestionMapping;
  v19->_paymentMethodToSuggestionMapping = v44;

  v46 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v19->_paymentMethods, "count")}];
  identifierToPaymentMethodMapping = v19->_identifierToPaymentMethodMapping;
  v19->_identifierToPaymentMethodMapping = v46;

  v48 = v19->_paymentMethods;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100A67FC8;
  v75[3] = &unk_101632B58;
  v49 = v19;
  v76 = v49;
  [(NSArray *)v48 enumerateObjectsUsingBlock:v75];
  v50 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v29, "count")}];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v51 = v29;
  v52 = [v51 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v72;
    do
    {
      for (k = 0; k != v53; k = k + 1)
      {
        if (*v72 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v71 + 1) + 8 * k);
        if ([v56 purpose] == 2)
        {
          paymentMethodIndices2 = [v56 paymentMethodIndices];
          [v50 addObjectsFromArray:paymentMethodIndices2];
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v71 objects:v86 count:16];
    }

    while (v53);
  }

  v49->_numberOfIOMethods = [v50 count];
  v58 = sub_10003D020();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v90 = v49;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "TransitPayModelDataProvider has been setup. State:\n%@", buf, 0xCu);
  }

  v59 = v49;
  v60 = statusesCopy;
  v27 = suggestionsCopy;
  v26 = v66;
  v61 = passesCopy;
  loopIdentifiersCopy = v68;
  methodsCopy = v65;
LABEL_46:

  return v59;
}

@end