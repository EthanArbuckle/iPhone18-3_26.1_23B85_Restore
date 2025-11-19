void sub_1008D7188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained onTransitionFromState:a2 toState:a3];
  }
}

id sub_1008D791C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    return [UIView transitionWithView:a2 duration:5242880 options:a3 animations:0 completion:0.2];
  }

  else
  {
    return (*(a3 + 16))(a3);
  }
}

void sub_1008D795C(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) == 1)
  {
    v2 = +[UIColor whiteColor];
    v3 = [*(a1 + 32) descriptionLabel];
    [v3 setTextColor:v2];

    v4 = +[UIColor whiteColor];
    v5 = [*(a1 + 32) descriptionLabel];
    [v5 setShowMoreTextColor:v4];

    +[UIColor whiteColor];
  }

  else
  {
    v6 = +[UIColor labelColor];
    v7 = [*(a1 + 32) descriptionLabel];
    [v7 setTextColor:v6];

    v8 = +[UIColor labelColor];
    v9 = [*(a1 + 32) descriptionLabel];
    [v9 setShowMoreTextColor:v8];

    +[UIColor labelColor];
  }
  v11 = ;
  v10 = [*(a1 + 32) descriptionLabel];
  [v10 setShowLessTextColor:v11];
}

void sub_1008D7AB4(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) == 1)
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v3 = ;
  v2 = [*(a1 + 32) authorLabel];
  [v2 setTextColor:v3];
}

void sub_1008D7B44(uint64_t a1)
{
  if (*(*(a1 + 32) + 16) == 1)
  {
    +[UIColor lightTextColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v3 = ;
  v2 = [*(a1 + 32) metadataLabel];
  [v2 setTextColor:v3];
}

void sub_1008D7F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008D7F94(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!a3 && ([WeakRetained model], v7 = objc_claimAutoreleasedReturnValue(), v8 = *(a1 + 32), v7, v7 == v8))
  {
    v9 = [v6 authorImageView];
    [v9 setImage:v10];
  }

  else
  {
    v9 = [v6 authorImageView];
    [v9 setHidden:1];
  }
}

void sub_1008D8D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008D8DA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _descriptionLabelDidExpand];
}

SearchFieldItem *__cdecl sub_1008D9118(id a1, NanoDirectionWaypoint *a2, unint64_t a3)
{
  v3 = [DirectionsWaypoint directionsWaypointWithNanoDirectionWaypoint:a2];
  v4 = [SearchFieldItem searchFieldItemWithObject:v3];

  return v4;
}

void sub_1008D9710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1008D9768(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 rangeOfString:*(a1 + 32) options:129];
  v9 = v8;
  v10 = *(a1 + 72);
  v11 = v10 == 1 && v7 == 0;
  if (v11 || (v10 & 1) == 0 && v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(*(a1 + 48) + 8) + 24) += v8;
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *a4 = 1;
    v12 = [v13 length];
    if (v12)
    {
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + v9 / v12;
    }
  }
}

id sub_1008D9F80()
{
  if (qword_10195DC98 != -1)
  {
    dispatch_once(&qword_10195DC98, &stru_10162DC20);
  }

  v1 = qword_10195DC90;

  return v1;
}

void sub_1008D9FD4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v7 = sub_1008D9F80();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v58 = v5;
    v59 = 2112;
    v60 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetched response %@ with error %@", buf, 0x16u);
  }

  v35 = v6;

  v32 = [RAPBatchSubmissionStatusResult alloc];
  v33 = v5;
  v8 = [v33 feedbackResult];
  v9 = [v8 queryResult];

  v31 = v9;
  v10 = [v9 feedbackInfos];
  v11 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v10;
  v38 = [obj countByEnumeratingWithState:&v49 objects:buf count:16];
  if (v38)
  {
    v37 = *v50;
    do
    {
      v12 = 0;
      do
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v12;
        v13 = *(*(&v49 + 1) + 8 * v12);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v14 = [v13 feedbackComponents];
        v15 = [v14 countByEnumeratingWithState:&v45 objects:v56 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v46;
          v40 = *v46;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v46 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v45 + 1) + 8 * i);
              if ([v19 status])
              {
                v20 = sub_1008D9F80();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v21 = [v19 status];
                  *v54 = 67109120;
                  v55 = v21;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error: GEOFeedbackResponse includes a feedback_component with a GEOStatusCode of %d:", v54, 8u);
                }
              }

              else
              {
                v43 = 0u;
                v44 = 0u;
                v41 = 0u;
                v42 = 0u;
                v20 = [v19 values];
                v22 = [v20 countByEnumeratingWithState:&v41 objects:v53 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v42;
                  do
                  {
                    for (j = 0; j != v23; j = j + 1)
                    {
                      if (*v42 != v24)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v26 = *(*(&v41 + 1) + 8 * j);
                      v27 = [v26 rapInfo];

                      if (v27)
                      {
                        v28 = [v26 rapInfo];
                        [v11 addObject:v28];
                      }
                    }

                    v23 = [v20 countByEnumeratingWithState:&v41 objects:v53 count:16];
                  }

                  while (v23);
                  v17 = v40;
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v45 objects:v56 count:16];
          }

          while (v16);
        }

        v12 = v39 + 1;
      }

      while ((v39 + 1) != v38);
      v38 = [obj countByEnumeratingWithState:&v49 objects:buf count:16];
    }

    while (v38);
  }

  v29 = [v11 copy];
  v30 = [(RAPBatchSubmissionStatusResult *)v32 initWithRAPInfos:v29];

  (*(*(a1 + 32) + 16))();
}

void sub_1008DA3D0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "RAPBatchSubmissionStatusTicket");
  v2 = qword_10195DC90;
  qword_10195DC90 = v1;
}

void sub_1008DB0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008DB108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained blockSenderAction];
}

id sub_1008DC07C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setImage:a2];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 setContentConfiguration:v4];
}

void sub_1008DD714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a23);
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak((v34 - 136));
  _Unwind_Resume(a1);
}

void sub_1008DD7F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained blockTrip];
    WeakRetained = v2;
  }
}

void sub_1008DD83C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained blockSender];
    WeakRetained = v2;
  }
}

void sub_1008DD880(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addContact];
    WeakRetained = v2;
  }
}

void sub_1008DD8C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _addToContact];
    WeakRetained = v2;
  }
}

void sub_1008DD908(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained tapToRadarButtonTapped];
    WeakRetained = v2;
  }
}

void sub_1008DE744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008DE770(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateButtonsForLocationUpdate];

  v6[2]();
}

void sub_1008DF034(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) excludingRuleWithClientOnlyAutocompleteType:{objc_msgSend(a2, "integerValue")}];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

void sub_1008DF18C(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) ruleWithClientOnlyAutocompleteType:{objc_msgSend(a2, "integerValue")}];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

void sub_1008DF894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1008DF8AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1008DF8C4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 shouldInterleaveClientResults])
  {
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

uint64_t sub_1008DFCA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 item];
  v8 = [v7 hidden];

  v9 = [v6 item];
  v10 = [v9 hidden];

  if (!v8 || v10)
  {
    if (v8 & 1 | ((v10 & 1) == 0))
    {
      if (*(a1 + 32) == 1)
      {
        [v5 clientRankingScore];
        v13 = v12;
        [v6 clientRankingScore];
        v15 = v13 < v14;
      }

      else
      {
        v16 = [v5 priority];
        v15 = v16 < [v6 priority];
      }

      v17 = v15;
      if (v15)
      {
        v11 = v17;
      }

      else
      {
        v11 = -1;
      }
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

BOOL sub_1008E1B98(id a1, AutocompleteMutableSection *a2, NSDictionary *a3)
{
  v3 = [(AutocompleteMutableSection *)a2 items];
  v4 = [v3 count] != 0;

  return v4;
}

void sub_1008E1F20(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100067540();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "AutocompleteItemManager - superclass did collect results", buf, 2u);
  }

  *(a1[4] + 98) = 0;
  if (((*(a1[5] + 2))() & 1) != 0 || ([a1[4] autocompleteContext], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v23 = *(a1[6] + 2);
LABEL_18:
    v23();
    goto LABEL_19;
  }

  if (![v5 count])
  {
    v23 = *(a1[6] + 2);
    goto LABEL_18;
  }

  v9 = [a1[4] filterDuplicateContactsFromServerResultUsingItems:v5];
  if (MapsFeature_IsEnabled_PersonalizedAutocompleteRanker())
  {
    v30 = v6;
    v31 = v5;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v9;
    obj = v9;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v34)
    {
      v33 = *v42;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = [NSArray arrayWithObject:v11];
          v13 = [a1[4] autocompleteContext];
          v14 = MapsSuggestionsResourceDepotForMapsProcess();
          v15 = [v14 oneInsights];
          v16 = [a1[4] traits];
          BYTE1(v28) = [a1[4] shouldUseDistanceFeatureServerResults];
          LOBYTE(v28) = 0;
          v17 = [MapsAnalyticsHelper acSuggestionEntriesFromAutoCompleteObjects:v12 personalizedItems:0 context:v13 mapsSuggestionsInsights:v15 skipReportASearchItems:0 traits:v16 usedForLogging:v28 shouldUseDistanceFeatureServerResults:?];
          v18 = [v17 firstObject];

          if (([a1[4] mapsSuggestionsIsTouristHereScoreValid] & 1) == 0)
          {
            [a1[4] setMapsSuggestionsIsTouristHereScoreValid:1];
            v19 = [a1[4] traits];
            [v19 isTourist];
            [a1[4] setMapsSuggestionsIsTouristHereScore:?];
          }

          [a1[4] mapsSuggestionsIsTouristHereScore];
          [v18 setMapsSuggestionsIsTouristScore:?];
          [v11 configureWithClientACSuggestionEntry:v18];
        }

        v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v34);
    }

    v20 = a1[6];
    v21 = [obj copy];
    v6 = v30;
    v22 = [v30 copy];
    v20[2](v20, v21, v22);
    v5 = v31;
    v9 = v29;
  }

  else
  {
    v24 = [a1[4] wrappedItems:v9];
    v25 = sub_100067540();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "AutocompleteItemManager - compute client ranking score", buf, 2u);
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1008E237C;
    v35[3] = &unk_10164D280;
    v26 = a1[4];
    v39 = a1[5];
    v40 = a1[6];
    v27 = a1[4];
    v36 = v24;
    v37 = v27;
    v38 = v5;
    v21 = v24;
    [v26 computeClientRankingScoresForResolvedItemsIfNeeded:v21 completion:v35];

    v22 = v39;
  }

LABEL_19:
}

void sub_1008E237C(uint64_t a1)
{
  v2 = sub_100067540();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AutocompleteItemManager - did compute client ranking score", buf, 2u);
  }

  if ((*(*(a1 + 56) + 16))())
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v3 = [*(a1 + 32) copy];
    [*(a1 + 40) sortWrappedItems:*(a1 + 32)];
    if ([*(a1 + 40) useClientRankingScore] && objc_msgSend(v3, "count"))
    {
      v4 = 0;
      while (1)
      {
        v5 = [v3 objectAtIndexedSubscript:v4];
        v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];

        if (v5 != v6)
        {
          break;
        }

        if (++v4 >= [v3 count])
        {
          goto LABEL_12;
        }
      }

      *(*(a1 + 40) + 98) = 1;
    }

LABEL_12:
    v26 = v3;
    v7 = [*(a1 + 40) sectionsWithWrappedItems:*(a1 + 32)];
    v8 = [v7 mutableCopy];

    [*(a1 + 40) logSortedItemsWithSections:v8];
    v27 = a1;
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 48) count]);
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v15 items];
          v17 = [v16 copy];

          v18 = [v15 title];
          v19 = +[AutocompleteSection sectionWithTitle:items:isQuerySuggestionsSection:](AutocompleteSection, "sectionWithTitle:items:isQuerySuggestionsSection:", v18, v17, [v15 isQuerySuggestionsSection]);
          [v10 addObject:v19];

          [v9 addObjectsFromArray:v17];
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v12);
    }

    v20 = sub_100067540();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [*(v27 + 48) count];
      v22 = [v10 count];
      *buf = 134218240;
      v34 = v21;
      v35 = 2048;
      v36 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "AutocompleteItemManager - collected %lu compoundItems and %lu compoundItemGroups", buf, 0x16u);
    }

    v23 = *(v27 + 64);
    v24 = [v9 copy];
    v25 = [v10 copy];
    (*(v23 + 16))(v23, v24, v25);
  }
}

id sub_1008E2CF8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (*(v2 + 27) == 1)
  {
    v3 = *(v2 + 56);
  }

  v4 = [v2 view];
  [v4 setAlpha:v3];

  v5 = *(a1 + 32);

  return [v5 updateCompassInsets];
}

id sub_1008E379C()
{
  if (qword_10195DCA8 != -1)
  {
    dispatch_once(&qword_10195DCA8, &stru_10162E0A0);
  }

  v1 = qword_10195DCA0;

  return v1;
}

void sub_1008E37F0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "FloatingControlsViewController");
  v2 = qword_10195DCA0;
  qword_10195DCA0 = v1;
}

void sub_1008E3CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008E3CF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionCoordinator];
  [v1 createRadar];
}

void sub_1008E52F8(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v4 = [*(a1 + 32) localSearchViewController];
  v3 = [v4 view];
  [v3 setAlpha:v2];
}

void sub_1008E6090(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) controlsStackViewIfLoaded];
  [v3 setAlpha:v2];

  v4 = *(a1 + 40);
  v6 = [*(a1 + 32) localSearchViewControllerIfLoaded];
  v5 = [v6 view];
  [v5 setAlpha:v4];
}

void sub_1008E6334(uint64_t a1)
{
  v2 = [*(a1 + 32) _alignStackToBottom];
  v3 = [*(a1 + 32) controlsStackView];
  v4 = [*(a1 + 32) venueFloorViewController];
  v5 = [v4 closedPlaceholderView];
  if (v2)
  {
    [v3 insertSubview:v5 atIndex:0];
  }

  else
  {
    [v3 addArrangedSubview:v5];
  }

  v8 = [*(a1 + 32) view];
  v6 = [*(a1 + 32) venueFloorViewController];
  v7 = [v6 view];
  [v8 addSubview:v7];
}

void sub_1008E7CC8(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonsContainerViewControllerIfLoaded];
  [v2 updateVisibilityForControls:*(a1 + 40)];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

void sub_1008E8230(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v4 = [*(a1 + 32) localSearchViewController];
  v3 = [v4 view];
  [v3 setAlpha:v2];
}

id sub_1008EA780()
{
  if (qword_10195DCB8 != -1)
  {
    dispatch_once(&qword_10195DCB8, &stru_10162E0C0);
  }

  v1 = qword_10195DCB0;

  return v1;
}

id sub_1008EA7D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  [*(a1 + 32) cameraPitchThreshold];
  if (v3 <= v2)
  {
    v6 = *(a1 + 32);
    v7 = 5;
  }

  else
  {
    v4 = *(a1 + 40);
    [*(a1 + 32) cameraPitchThreshold];
    v6 = *(a1 + 32);
    if (v4 <= -v5)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }
  }

  return [v6 setCurrentState:v7];
}

void sub_1008EA85C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFScanningStateCameraPitchMonitor");
  v2 = qword_10195DCB0;
  qword_10195DCB0 = v1;
}

void sub_1008EAABC(id a1)
{
  v1 = objc_alloc_init(TrafficIncidentsDateFormatter);
  v2 = qword_10195DCD0;
  qword_10195DCD0 = v1;
}

void sub_1008EABFC(id a1)
{
  v1 = objc_alloc_init(TrafficIncidentsDateFormatter);
  v2 = qword_10195DCC0;
  qword_10195DCC0 = v1;
}

id sub_1008EB5E0()
{
  if (qword_10195DCE8 != -1)
  {
    dispatch_once(&qword_10195DCE8, &stru_10162E120);
  }

  v1 = qword_10195DCE0;

  return v1;
}

void sub_1008EB634(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavTrafficIncidentViewComposer");
  v2 = qword_10195DCE0;
  qword_10195DCE0 = v1;
}

void sub_1008EC528(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:1.0];
}

void sub_1008EC598(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v2 = [*(a1 + 40) view];
  [v2 setAlpha:1.0];
}

void sub_1008ECDF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateIfNeeded];
    WeakRetained = v2;
  }
}

id sub_1008EE4D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isServerProvidedWaypoint])
  {
    v4 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) mapView];
    v4 = [POIShapeFactory composedWaypointPOIShapeWithMapView:v5 composedWaypoint:v3];
  }

  return v4;
}

id sub_1008EE624(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isServerProvidedWaypoint] & 1) != 0 || (v5 = objc_msgSend(v3, "anchorPointType"), (v5 - 1) >= 2) && (v5 != 3 || (objc_msgSend(v3, "isCoordinate")))
  {
    v4 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) mapView];
    v4 = [POIShapeFactory composedWaypointPOIShapeWithMapView:v6 composedWaypoint:v3];
  }

  return v4;
}

id sub_1008EEDF8()
{
  if (qword_10195DCF8 != -1)
  {
    dispatch_once(&qword_10195DCF8, &stru_10162E1F0);
  }

  v1 = qword_10195DCF0;

  return v1;
}

void sub_1008EEE4C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapCameraController");
  v2 = qword_10195DCF0;
  qword_10195DCF0 = v1;
}

void sub_1008EF220(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 setCamera:*(a1 + 40) animated:1];
}

uint64_t sub_1008EFB1C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1008F2AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008F2AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained currentViewController];

  if (v5 == v3)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 updateContentInjection];
  }
}

void sub_1008F3540(uint64_t a1)
{
  v2 = sub_10004B334();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "ControlContainer viewWillTransitionToSize animation end", buf, 2u);
  }

  if ([*(*(a1 + 32) + 480) isRoutePlanningPresented])
  {
    v3 = [*(a1 + 32) chromeViewController];
    [v3 setNeedsUpdateComponent:@"mapInsets" animated:0];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1008F3720;
    block[3] = &unk_101661B18;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1008F3734;
    v4[3] = &unk_1016575B0;
    v6 = *(a1 + 48);
    v5 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_1008F36B8(id a1, UIViewControllerTransitionCoordinatorContext *a2)
{
  v2 = sub_10004B334();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "ControlContainer viewWillTransitionToSize animation block", v3, 2u);
  }
}

id sub_1008F3734(uint64_t a1)
{
  result = CLLocationCoordinate2DIsValid(*(a1 + 40));
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 setCenterCoordinate:0 animated:{v4, v5}];
  }

  return result;
}

void sub_1008F4F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1008F4F2C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
    [v4 setBackgroundColorMode:0];
    v5 = +[UIColor clearColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1008F5958(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  v3 = [v2 detailedDescription];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1016631F0;
  }

  v6 = [MapsRadarTextAttachment attachmentWithFileName:@"PedestrianARVKMapViewDiagnostics-debug.txt" text:v5];

  v7 = [MapsRadarKeyword keywordWithName:@"MAPS377" number:1281664];
  v8 = *(a1 + 40);
  v13 = v6;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  [v8 addAttachments:v9];

  v10 = *(a1 + 40);
  v12 = v7;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v10 addKeywords:v11];

  (*(*(a1 + 48) + 16))();
}

id sub_1008F5C9C()
{
  if (qword_10195DD18 != -1)
  {
    dispatch_once(&qword_10195DD18, &stru_10162E2E0);
  }

  v1 = qword_10195DD10;

  return v1;
}

void sub_1008F5CF0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARDebugMapAnnotationsTask");
  v2 = qword_10195DD10;
  qword_10195DD10 = v1;
}

uint64_t sub_1008F68A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 labelMarker];
  v5 = [v4 arWalkingFeature];
  v6 = [*(a1 + 32) arWalkingFeature];
  if ([v5 isEqual:v6])
  {
    v7 = [v3 labelMarker];
    v8 = [v7 featureLabelIdentifier];
    if (v8 == [*(a1 + 32) featureLabelIdentifier] && *(a1 + 40) == objc_msgSend(v3, "isActive"))
    {
      v9 = [v3 isOccluded];
      v10 = v9 ^ [*(a1 + 32) isOccluded] ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_1008F7D70(id a1, UIAction *a2)
{
  v2 = +[PedestrianARFloatingDebugViewController sharedInstance];
  [v2 composeTTR];
}

void sub_1008F9C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008F9CC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _restoreSubscription:*(a1 + 32) completionHandler:0];
    WeakRetained = v3;
  }
}

void sub_1008F9F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008F9FB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (!v5 && v6)
    {
      v8 = sub_10003D9F4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error fetching expired subscriptions: %@", &v11, 0xCu);
      }
    }

    v9 = [v5 _geo_map:&stru_10162E390];
    v10 = WeakRetained[15];
    WeakRetained[15] = v9;

    [WeakRetained _updateContentAnimated:*(a1 + 40)];
  }
}

id sub_1008FA0D0(id a1, GEOMapDataSubscription *a2)
{
  v2 = a2;
  v3 = [[_OfflineMapsExpiredSubscription alloc] initWithSubscription:v2];

  return v3;
}

void sub_1008FA348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008FA374(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = [WeakRetained diffableDataSource];
      v7 = [v6 snapshot];

      v12 = *(a1 + 32);
      v8 = [NSArray arrayWithObjects:&v12 count:1];
      [v7 deleteItemsWithIdentifiers:v8];

      v9 = [v5 diffableDataSource];
      [v9 applySnapshot:v7 animatingDifferences:1];
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, a2);
    }

    v11 = [v5 offlineDelegate];
    [v11 dismissExpiredViewControllerIfNecessary];
  }
}

void sub_1008FA78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008FA7D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained subscriptionManager];
    v13 = [*(a1 + 32) subscription];
    v14 = [v13 identifier];
    v15 = &_dispatch_main_q;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1008FA9E8;
    v16[3] = &unk_10162E350;
    v17 = *(a1 + 32);
    objc_copyWeak(&v19, (a1 + 40));
    v18 = v9;
    [v12 removeSubscriptionWithIdentifier:v14 callbackQueue:&_dispatch_main_q completionHandler:v16];

    [GEOAPPortal captureUserAction:384 target:85 value:0];
    objc_destroyWeak(&v19);
  }
}

void sub_1008FA968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _restoreSubscription:*(a1 + 32) completionHandler:v7];
    [GEOAPPortal captureUserAction:398 target:85 value:0];
  }
}

void sub_1008FA9E8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_10003D9F4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) subscription];
      v8 = [v7 identifier];
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error removing expired subscription: %@, error: %@", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v11 = [WeakRetained diffableDataSource];
      v12 = [v11 snapshot];

      v16 = *(a1 + 32);
      v13 = [NSArray arrayWithObjects:&v16 count:1];
      [v12 deleteItemsWithIdentifiers:v13];

      v14 = [v10 diffableDataSource];
      [v14 applySnapshot:v12 animatingDifferences:1];
    }

    (*(*(a1 + 40) + 16))();
    v15 = [v10 offlineDelegate];
    [v15 dismissExpiredViewControllerIfNecessary];
  }
}

void sub_1008FB304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008FB330(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    if (a2)
    {
      v5 = [WeakRetained diffableDataSource];
      v6 = [v5 snapshot];

      [v6 deleteItemsWithIdentifiers:*(a1 + 32)];
      v7 = [v9 diffableDataSource];
      [v7 applySnapshot:v6 animatingDifferences:1];
    }

    v8 = [v9 offlineDelegate];
    [v8 dismissExpiredViewControllerIfNecessary];

    WeakRetained = v9;
  }
}

void sub_1008FB494(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1008FB4B0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained subscriptionManager];
    v7 = [v3 subscription];
    v8 = [v7 identifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1008FB5AC;
    v9[3] = &unk_10164D910;
    v10 = v3;
    [v6 removeSubscriptionWithIdentifier:v8 callbackQueue:&_dispatch_main_q completionHandler:v9];
  }
}

void sub_1008FB5AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_10003D9F4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) subscription];
      v7 = [v6 identifier];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error removing expired subscription: %@, error: %@", &v8, 0x16u);
    }
  }
}

uint64_t sub_1008FBA88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1008FBC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008FBCD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained finishedSubTest:*(a1 + 32)];
    [v3 finishedTest];
    WeakRetained = v3;
  }
}

void sub_1008FBE44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1008FBE64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained finishedSubTest:@"guidesHomeCollectData"];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1008FBF54;
    v3[3] = &unk_101661B18;
    v3[4] = v2;
    [v2 _dispatchAfterShortDelay:v3];
  }
}

id sub_1008FBF00(uint64_t a1)
{
  v2 = [*(a1 + 32) searchHomeDataSource];
  [v2 _ppt_selectExploreGuides];

  v3 = *(a1 + 32);

  return [v3 startedSubTest:@"guidesHomeCollectData"];
}

void sub_1008FC1C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008FC1E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained startedTest];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1008FC30C;
    v6[3] = &unk_10165FBE8;
    objc_copyWeak(&v7, (a1 + 32));
    [PPTNotificationCenter addOnceObserverForName:@"PPTTest_SearchHome_DidSetActive" object:0 usingBlock:v6];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"didUpdateDataFetcher:" name:@"PPTTest_SearchHome_DidUpdateDataFetcher" object:0];

    v5 = [v3 testCoordinator];
    [v5 pptTestEnterSearchMode];

    objc_destroyWeak(&v7);
  }
}

void sub_1008FC30C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 object];
    [WeakRetained setSearchHomeDataSource:v4];

    v5 = [WeakRetained searchHomeDataSource];
    [WeakRetained setNumberOfDataFetchers:{objc_msgSend(v5, "_ppt_numberOfDataFetchers")}];

    [WeakRetained startedSubTest:@"searchHomeCollectData"];
  }
}

void sub_1008FCBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008FCC1C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = sub_100035E6C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v5 = WeakRetained;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543618;
    v29 = v10;
    v30 = 1024;
    v31 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] User exited VLF Crowdsourcing permission card with answer: %d", buf, 0x12u);

LABEL_9:
    v11 = [WeakRetained iosBasedChromeViewController];
    v12 = [v11 userLocationView];
    v13 = [v12 vlfMode];

    v14 = sub_100035E6C();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (!v15)
      {
LABEL_17:

        [WeakRetained showVLF];
        goto LABEL_26;
      }

      v16 = WeakRetained;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (objc_opt_respondsToSelector())
      {
        v19 = [v16 performSelector:"accessibilityIdentifier"];
        v20 = v19;
        if (v19 && ![v19 isEqualToString:v18])
        {
          v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];

          goto LABEL_16;
        }
      }

      v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
LABEL_16:

      *buf = 138543362;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] VLF is still eligible to be shown; showing now", buf, 0xCu);

      goto LABEL_17;
    }

    if (!v15)
    {
LABEL_25:

      goto LABEL_26;
    }

    v22 = WeakRetained;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    if (objc_opt_respondsToSelector())
    {
      v25 = [v22 performSelector:"accessibilityIdentifier"];
      v26 = v25;
      if (v25 && ![v25 isEqualToString:v24])
      {
        v27 = [NSString stringWithFormat:@"%@<%p, %@>", v24, v22, v26];

        goto LABEL_24;
      }
    }

    v27 = [NSString stringWithFormat:@"%@<%p>", v24, v22];
LABEL_24:

    *buf = 138543362;
    v29 = v27;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[%{public}@] VLF is no longer eligible to be shown", buf, 0xCu);

    goto LABEL_25;
  }

LABEL_26:
}

void sub_1008FD250(uint64_t a1)
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:41 onTarget:46 forAdvisory:*(a1 + 32)];
}

id sub_1008FE0B8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"MapsTestingSteppingSignDidChange";
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 40);
    v1 = @"MapsTestingMapsRegionUpdatedWithGuidanceStep";
  }

  return [PPTNotificationCenter postNotificationIfNeededWithName:v1 object:v2 userInfo:0];
}

void sub_1008FE38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1008FE3AC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  if (*(a1 + 40) != a4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v10 = *(WeakRetained + 10);
      if (v10)
      {
        [v10 updateForClusteredLegSelectedRideIndexChange];
      }
    }
  }
}

void sub_1008FEFBC(uint64_t a1)
{
  [*(*(a1 + 32) + 96) removeDebugViewsFromView:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  if (v3)
  {
    *(v2 + 80) = 0;
  }
}

void sub_1008FF1A0(uint64_t a1)
{
  v3 = +[MKMapService sharedService];
  v2 = [*(*(a1 + 32) + 80) displayedItemIndexForAnalytics];
  [v3 captureUserAction:3065 onTarget:610 eventValue:0 transitStep:v2];
}

void sub_1008FF228(uint64_t a1)
{
  v2 = [*(a1 + 32) iosBasedChromeViewController];
  [v2 updateViewMode:3 animated:*(a1 + 40)];
}

void sub_1008FF4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSString stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

void sub_1008FF730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1008FF748(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24) == 1)
  {
    v13 = v7;
    v9 = *(a1 + 32);
    v10 = a2;
    v11 = [v9 objectAtIndexedSubscript:a4];
    LOBYTE(v9) = [v10 isEqual:v11];

    if (v9)
    {
      v12 = [*(a1 + 40) objectAtIndexedSubscript:a4];
      *(*(*(a1 + 48) + 8) + 24) = [v13 isEqual:v12];
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }

    v7 = v13;
  }

  else
  {
    *(v8 + 24) = 0;
  }
}

void sub_100903914(uint64_t a1, uint64_t a2)
{
  v4 = [ShareItem shareItemForCurrentLocationIncludingPrintActivity:0 withBackingMapItem:a2];
  v3 = [MUPresentationOptions optionsWithSender:*(a1 + 32)];
  [*(a1 + 40) shareItem:v4 presentationOptions:v3 completion:0];
}

void sub_10090399C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v13 = v5;
    v14 = v4;
    v15 = v2;
    v16 = v3;
    v7 = +[MKLocationManager sharedLocationManager];
    v8 = [v7 isAuthorizedForPreciseLocation];

    if (v8)
    {
      v9 = +[MKLocationManager sharedLocationManager];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100903AA0;
      v11[3] = &unk_10165D568;
      v12 = *(a1 + 32);
      v10 = [v9 singleLocationUpdateWithDesiredAccuracy:v11 handler:kCLLocationAccuracyBest];

      [v10 start];
    }
  }
}

void sub_100903AA0(uint64_t a1)
{
  v2 = +[SearchResult currentLocationSearchResult];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100903B50;
  v5[3] = &unk_101655D58;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  [v4 tryUpdatingCurrentLocationSearchResultWithCompletion:v5];
}

void sub_100903B50(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) mapItem];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_1009041B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009041D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained _extractLayoutFormFromResponse:v6];

  if (v8)
  {
    v9 = v11;
  }

  else
  {
    v10 = [NSError errorWithDomain:@"Layout config not included" code:-1 userInfo:0];

    v9 = v10;
  }

  v12 = v9;
  if (!v9 && *(a1 + 48) == 1)
  {
    +[RAPLayoutCache setConfig:forLayoutType:](RAPLayoutCache, "setConfig:forLayoutType:", v8, [WeakRetained[3] layoutType]);
  }

  (*(*(a1 + 32) + 16))();
}

id sub_100904694(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  if (*(a1 + 32) == 1)
  {
    [UIFont _maps_fontWithTextStyle:UIFontTextStyleBody weight:0 compatibleWithTraitCollection:UIFontWeightSemibold];
  }

  else
  {
    [UIFont systemFontOfSize:17.0 weight:UIFontWeightSemibold];
  }
  v4 = ;
  [v3 setObject:v4 forKeyedSubscript:NSFontAttributeName];

  return v3;
}

id sub_10090497C(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 setObject:*(a1 + 32) forKeyedSubscript:NSFontAttributeName];
  v4 = [v3 copy];

  return v4;
}

void sub_100905C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_100905C7C(void *result)
{
  ++*(result[4] + 40);
  if (*(result + 56) == 1)
  {
    v2 = result;
    v3 = result[4];
    v4 = v3[3];
    if (!v4)
    {
      [v3 _loadLookAroundContainerView];
      [v2[4] _updateConstraints];
      [v2[4] _applyViewPropertiesForState:v2[6]];
      v5 = [v2[4] view];
      [v5 layoutIfNeeded];

      v4 = *(v2[4] + 24);
    }

    v6 = v2[5];
    v7 = *(v2 + 57);

    return [v4 setMapItem:v6 isMarkedLocation:v7 wantsCloseUpView:0];
  }

  return result;
}

void sub_100905D38(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 != *(v3 + 48))
  {
    *(v3 + 48) = v2;
    [*(a1 + 32) _invalidateConstraints];
    [*(a1 + 32) _updateConstraints];
    [*(a1 + 32) _applyViewPropertiesForState:*(a1 + 40)];
    v6 = [*(a1 + 32) view];
    v5 = [v6 superview];
    [v5 layoutIfNeeded];
  }
}

void sub_100905DD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = *(WeakRetained + 5);
    v3 = v2 == 1;
    v4 = v2 < 1;
    v5 = v2 - 1;
    if (!v4)
    {
      *(WeakRetained + 5) = v5;
      if (v3)
      {
        v9 = WeakRetained;
        v6 = *(WeakRetained + 8);
        if ([v6 _hasLookAroundStorefront])
        {
          v7 = 3;
        }

        else
        {
          v7 = 0;
        }

        [v9 _applyViewPropertiesForState:v7];
        if ([v6 _hasLookAroundStorefront])
        {
          v8 = [v9[3] lookAroundViewIfPresent];

          [v8 moveToCloseUpView];
          v6 = v8;
        }

        else
        {
          [v9 _unloadLookAroundContainerView];
        }

        WeakRetained = v9;
      }
    }
  }
}

void sub_100907518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_100907548(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [v7 containerViewController];
      v5 = sub_10000FA08(v4);

      if (v5 == 5)
      {
        v6 = [v3 presentingViewController];
        [v6 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        [v3 handleDismissAction:v3];
      }
    }

    WeakRetained = v7;
  }
}

void sub_100907930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100907968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100907980(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 48);
    v9 = WeakRetained;
    v6 = [WeakRetained iosChromeViewController];
    v7 = [v6 mapView];
    v8 = [v7 _mapLayer];
    [v8 setApplicationSubState:v5];

    WeakRetained = v9;
  }
}

void sub_100907AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100907B04(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained presentRouteLibraryWithAvailableRoutes:v8 unavailableRoutes:v5];
  }
}

void sub_100907EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_100907EE8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(a1 + 6);
    if (v8)
    {
      if (!v5)
      {
        v9 = sub_1007989A4();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error getting single location update: %@", buf, 0xCu);
        }

        v10 = +[MKLocationManager sharedLocationManager];
        v5 = [v10 lastLocation];
      }

      v27 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:a1[4]];
      v11 = [v27 buildRoute];
      v12 = [v11 userProvidedName];
      if ([v12 length])
      {
        [v11 userProvidedName];
      }

      else
      {
        [v11 name];
      }
      v26 = ;

      v13 = [v11 suggestedNavigationModeForLocation:v5 context:1];
      if (!v13)
      {
        v14 = sub_1007989A4();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v36 = @"None";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Coercing navigation mode to route planning from %{public}@", buf, 0xCu);
        }

        v13 = 4;
      }

      if ([a1[4] mapItemMuid])
      {
        v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [a1[4] mapItemMuid]);
      }

      else
      {
        v15 = 0;
      }

      v28 = v6;
      if (v13 == 4)
      {
        [GEOAPPortal captureUserAction:6003 target:137 value:v15];
        v16 = objc_opt_new();
        [v16 setRouteData:a1[4]];
        v17 = objc_opt_new();
        v18 = +[SearchResult currentLocationSearchResult];
        [v17 setSearchResult:v18];

        v19 = objc_opt_new();
        [v19 setSearchResult:v16];
        v20 = [DirectionItem alloc];
        v34[0] = v17;
        v34[1] = v19;
        v21 = [NSArray arrayWithObjects:v34 count:2];
        v22 = [(DirectionItem *)v20 initWithItems:v21 transportType:0];

        v32 = @"DirectionsSessionInitiatorKey";
        v33 = &off_1016E77F0;
        v23 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [WeakRetained viewController:v8 doDirectionItem:v22 withUserInfo:v23];

        v24 = v26;
      }

      else
      {
        [GEOAPPortal captureUserAction:3001 target:137 value:v15];
        v25 = [v8 _maps_platformController];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100908310;
        v29[3] = &unk_10162EC90;
        v30 = v11;
        v24 = v26;
        v31 = v26;
        [v25 pushNavigationWithRoute:v30 navigationMode:v13 shouldCheckNavSafetyAlert:1 completion:v29];

        v16 = v30;
      }

      v6 = v28;
    }
  }
}

void sub_100908310(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 | a3)
  {
    v5 = a3;
    v6 = a2;
    v8 = +[UIApplication sharedMapsDelegate];
    v7 = [*(a1 + 32) storageID];
    [v8 interruptConvertToNavigableSavedRouteID:v7 routeName:*(a1 + 40) error:v6 directionsError:v5];
  }
}

void sub_100908AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100908BC4;
  block[3] = &unk_10162EC40;
  objc_copyWeak(v12, &location);
  v8 = *(a1 + 40);
  v9 = v3;
  v10 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v11 = v4;
  v12[1] = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void sub_100908BC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _filteredFeaturesFromTransitSystems:*(a1 + 32) allFeatures:*(a1 + 40)];
    v5 = objc_alloc_init(PKPaymentSetupRequest);
    [v5 setConfiguration:*(a1 + 48)];
    [v5 setPaymentSetupFeatures:v4];
    v6 = [[PKPaymentSetupViewController alloc] initWithPaymentSetupRequest:v5];
    [v6 setPresentationStyle:2];
    [v6 setDelegate:*(a1 + 56)];
    v7 = sub_10003D020();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 72);
      v10 = v8;
      v11 = NSStringFromSelector(v9);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@: showing Wallet DCI View Controller", &v13, 0x16u);
    }

    v12 = [v3 containerViewController];
    [v12 _maps_topMostPresentViewController:v6 animated:1 completion:0];
  }
}

void sub_100909C14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100909C48(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = sub_100798A3C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v5 = WeakRetained;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543618;
    v27 = v10;
    v28 = 1024;
    v29 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] User exited VLF Crowdsourcing permission card with answer: %d", buf, 0x12u);

LABEL_9:
    v11 = [WeakRetained canEnterPedestrianAR];
    v12 = sub_100798A3C();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (!v13)
      {
LABEL_17:

        [WeakRetained enterPedestrianAR];
        goto LABEL_26;
      }

      v14 = WeakRetained;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      if (objc_opt_respondsToSelector())
      {
        v17 = [v14 performSelector:"accessibilityIdentifier"];
        v18 = v17;
        if (v17 && ![v17 isEqualToString:v16])
        {
          v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

          goto LABEL_16;
        }
      }

      v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_16:

      *buf = 138543362;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] Still eligible to enter Pedestrian AR; will enter now", buf, 0xCu);

      goto LABEL_17;
    }

    if (!v13)
    {
LABEL_25:

      goto LABEL_26;
    }

    v20 = WeakRetained;
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    if (objc_opt_respondsToSelector())
    {
      v23 = [v20 performSelector:"accessibilityIdentifier"];
      v24 = v23;
      if (v23 && ![v23 isEqualToString:v22])
      {
        v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];

        goto LABEL_24;
      }
    }

    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
LABEL_24:

    *buf = 138543362;
    v27 = v25;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%{public}@] No longer eligible to enter Pedestrian AR", buf, 0xCu);

    goto LABEL_25;
  }

LABEL_26:
}

void sub_10090AEA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) originalPresenterViewController];
  [v2 viewController:v3 removeDroppedPin:*(a1 + 48)];
}

uint64_t sub_10090C010(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10090D0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10090D0D8(uint64_t a1, int a2, void *a3)
{
  v13 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        [v7 updatePlaceNote:v13];
      }

      v8 = v6[47];
      if (v8)
      {
        (*(v8 + 16))(v8, v13);
        v9 = v6[47];
      }

      else
      {
        v9 = 0;
      }

      v6[47] = 0;

      v12 = [v6 containerViewController];
      [v12 popLastViewControllerAnimated:1];

      +[LibraryAnalytics captureAddOrEditNoteActionForPlaceMUID:isNewNote:](_TtC4Maps16LibraryAnalytics, "captureAddOrEditNoteActionForPlaceMUID:isNewNote:", *(a1 + 56), [*(a1 + 40) length] == 0);
    }

    else
    {
      v10 = WeakRetained[47];
      WeakRetained[47] = 0;

      v11 = [v6 containerViewController];
      [v11 popLastViewControllerAnimated:1];
    }
  }
}

void sub_10090D4F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10090D524(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    sub_100F359AC(*(a1 + 32));
    WeakRetained = v3;
  }
}

id sub_10090DCCC(uint64_t a1)
{
  [*(a1 + 32) setPauseSelectionUpdates:0];
  v2 = *(a1 + 32);

  return [v2 makeAFieldFirstResponderIfNeeded];
}

void sub_10090F1B0(uint64_t a1)
{
  v2 = [*(a1 + 32) containerViewController];
  v1 = [v2 topMostPresentedViewController];
  [v1 dismissViewControllerAnimated:0 completion:0];
}

void sub_10090F6D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_initWeak(&location, v1);
  v3 = [v1 currentSearchSession];
  v4 = [v3 searchInfo];
  v5 = [v4 directionIntent];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&location);
    [v6 clearSearch];
  }

  objc_destroyWeak(&location);
}

void sub_100910298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009102D4(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 52);
    v6 = [v9 userInfo];
    v7 = [v6 mapItem];
    [v5 enterFlyoverForMapItem:v7];

    v8 = objc_loadWeakRetained(v4 + 57);
    [v8 updateTopBannerViewWithTopBannerItems:0];
  }
}

void sub_1009113C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009113EC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 48);
    if (v5 > 7)
    {
      goto LABEL_6;
    }

    if (((1 << v5) & 0x67) != 0)
    {
      if (a2 == 3)
      {
LABEL_6:
        v6 = sub_100798408();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          if ((a2 - 1) > 4)
          {
            v7 = @"Undefined";
          }

          else
          {
            v7 = *(&off_10162EEB0 + a2 - 1);
          }

          v12 = 138543362;
          v13 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "default transport type %{public}@ isn't compatible", &v12, 0xCu);
        }

        v8 = *(a1 + 48);
        if (v8 == 3)
        {
          v9 = 3;
        }

        else
        {
          v9 = 1;
        }

        if (v8 == -1)
        {
          a2 = 0;
        }

        else
        {
          a2 = v9;
        }

LABEL_29:
        [WeakRetained[51] setTransportType:a2];
        [*(a1 + 32) updateTransportType:a2];
        goto LABEL_30;
      }
    }

    else if (v5 == 3)
    {
      if (a2 != 3)
      {
        goto LABEL_6;
      }
    }

    else if (v5 != 7 || a2 != 1 && a2 != 4)
    {
      goto LABEL_6;
    }

    v10 = sub_100798408();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if ((a2 - 2) > 3)
      {
        v11 = @"Drive";
      }

      else
      {
        v11 = *(&off_10162EE90 + a2 - 2);
      }

      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "default transport type is %{public}@", &v12, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_30:
}

void sub_100912090(uint64_t a1)
{
  v2 = [*(a1 + 32) mapCameraController];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100912148;
  v4[3] = &unk_101661570;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 frameMapItem:v3 animated:1 completion:v4];
}

void sub_100912988(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [*(a1 + 32) _isBuildingMultipointRoute];
  if (([v11 conformsToProtocol:&OBJC_PROTOCOL___VenueRoutePlanningCardItem] & 1) != 0 || !v16)
  {
    [*(a1 + 32) _cleanupRoutePlanningIfNeededAnimated:1];
    v17 = sub_100798A3C();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "closeVenueViewController, deleting selection state", buf, 2u);
    }

    v18 = *(a1 + 32);
    v19 = *(v18 + 8);
    *(v18 + 8) = 0;
  }

  v35 = v16;
  if (v15)
  {
    v20 = [v15 singleResultMode] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  if (([v11 conformsToProtocol:&OBJC_PROTOCOL___VenueCategoryCardItem] & 1) != 0 || !v20)
  {
    [*(a1 + 32) clearSearch];
  }

  v21 = [*(a1 + 32) containerViewController];
  LOBYTE(v22) = 1;
  [v21 popLastViewControllerFromViewController:*(a1 + 40) animated:1 useDefaultContaineeLayout:0];

  if (!v12)
  {
    v22 = [v11 conformsToProtocol:&OBJC_PROTOCOL___VenuePlaceCardItem] ^ 1 | v20;
  }

  v23 = [VenueCardCoordinator searchResultForPlaceCardItem:v12];
  if ([v15 shouldInjectSearchResults])
  {
    if ((v12 != 0) | v22 & 1)
    {
      [*(a1 + 32) searchPinsManager];
      v24 = v34 = v13;
      [v24 allSearchResults];
      v33 = v11;
      v26 = v25 = v14;
      v27 = [v15 results];
      v28 = [v26 isEqualToArray:v27];

      v14 = v25;
      v11 = v33;

      v13 = v34;
      if ((v28 & 1) == 0)
      {
        [*(a1 + 32) restoreSearchForItem:v14 withResults:v15];
      }
    }
  }

  else if (v12 && v23)
  {
    v29 = [*(a1 + 32) searchPinsManager];
    v37 = v23;
    v30 = [NSArray arrayWithObjects:&v37 count:1];
    [v29 setSearchPins:v30 selectedPin:0 animated:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [*(a1 + 32) searchPinsManager];
    [v31 showLinkedPlacesAndPolygonForPlaceCardItem:v12];
  }

  if (!((v13 == 0) | v20 & 1 | v35 & 1))
  {
    v32 = [*(a1 + 32) mapSelectionManager];
    [v32 restoreSelectionState:v13 animated:1];
  }
}

void sub_100912D74(uint64_t a1)
{
  [*(a1 + 32) viewController:0 selectSearchResult:*(a1 + 40) addToHistory:1 source:6 saveSelectionState:0];
  v2 = [*(a1 + 32) mapSelectionManager];
  [v2 selectSearchResult:*(a1 + 40) animated:1];
}

void sub_100913EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100913EEC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = sub_100798A3C();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v5 = WeakRetained;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

    *buf = 138543618;
    v30 = v10;
    v31 = 1024;
    v32 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] User exited VLF Crowdsourcing permission card with answer: %d", buf, 0x12u);

LABEL_9:
    v11 = [WeakRetained containerViewController];
    v12 = [v11 chromeViewController];
    v13 = [v12 userLocationView];
    v14 = [v13 vlfMode];

    v15 = sub_100798A3C();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v14)
    {
      if (!v16)
      {
LABEL_17:

        [WeakRetained showVLF];
        goto LABEL_26;
      }

      v17 = WeakRetained;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if (objc_opt_respondsToSelector())
      {
        v20 = [v17 performSelector:"accessibilityIdentifier"];
        v21 = v20;
        if (v20 && ![v20 isEqualToString:v19])
        {
          v22 = [NSString stringWithFormat:@"%@<%p, %@>", v19, v17, v21];

          goto LABEL_16;
        }
      }

      v22 = [NSString stringWithFormat:@"%@<%p>", v19, v17];
LABEL_16:

      *buf = 138543362;
      v30 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] VLF is still eligible to be shown; showing now", buf, 0xCu);

      goto LABEL_17;
    }

    if (!v16)
    {
LABEL_25:

      goto LABEL_26;
    }

    v23 = WeakRetained;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    if (objc_opt_respondsToSelector())
    {
      v26 = [v23 performSelector:"accessibilityIdentifier"];
      v27 = v26;
      if (v26 && ![v26 isEqualToString:v25])
      {
        v28 = [NSString stringWithFormat:@"%@<%p, %@>", v25, v23, v27];

        goto LABEL_24;
      }
    }

    v28 = [NSString stringWithFormat:@"%@<%p>", v25, v23];
LABEL_24:

    *buf = 138543362;
    v30 = v28;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[%{public}@] VLF is no longer eligible to be shown", buf, 0xCu);

    goto LABEL_25;
  }

LABEL_26:
}

void sub_100914940(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v3 label];

  v6 = [CNLabeledValue localizedStringForLabel:v5];

  v7 = *(a1 + 32);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"%1$@: %2$@ (Quick action menu value:select URL)" table:{@"localized string not found", 0}];
  v10 = [NSString stringWithFormat:v9, v6, v4];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100914AD4;
  v13[3] = &unk_10165F668;
  v14 = v4;
  v15 = *(a1 + 40);
  v11 = v4;
  v12 = [UIAlertAction actionWithTitle:v10 style:0 handler:v13];
  [v7 addAction:v12];
}

void sub_100914AD4(uint64_t a1)
{
  v2 = [NSURL URLWithString:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_100914DE0(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[UIApplication sharedApplication];
  [v3 callPhoneNumber:v2 completion:0];
}

void sub_100914E48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 stringValue];

  v6 = [v3 label];

  v7 = [CNLabeledValue localizedStringForLabel:v6];

  v8 = *(a1 + 32);
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"%1$@: %2$@ (Quick action menu value:select phone number)" table:{@"localized string not found", 0}];
  v11 = [NSString stringWithFormat:v10, v7, v5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100914FE8;
  v15[3] = &unk_10165F668;
  v12 = *(a1 + 40);
  v16 = v5;
  v17 = v12;
  v13 = v5;
  v14 = [UIAlertAction actionWithTitle:v11 style:0 handler:v15];
  [v8 addAction:v14];
}

void sub_100915380(uint64_t a1)
{
  v2 = [*(a1 + 32) containerViewController];
  [v2 _maps_topMostPresentViewController:*(a1 + 40) animated:1 completion:0];
}

void sub_1009160E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100916108(uint64_t a1)
{
  v1 = *(*(a1 + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v3 = [*(a1 + 32) lastLocation];
    if (v3)
    {
      v4 = +[SearchResult currentLocationSearchResult];
      v5 = *(a1 + 40);
      v18[0] = v4;
      v18[1] = v5;
      v6 = [NSArray arrayWithObjects:v18 count:2];
    }

    else
    {
      v17 = *(a1 + 40);
      v6 = [NSArray arrayWithObjects:&v17 count:1];
    }

    v7 = [*(a1 + 48) mapView];
    [v7 mapRectContainingSearchResults:v6];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [*(a1 + 48) mapView];
    [v16 _setVisibleMapRect:0 duration:v9 completionHandler:{v11, v13, v15, 2.5}];
  }
}

void sub_100916564(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100916588(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 userProvidedName];
  v9 = [v8 length];
  v10 = *(a1 + 32);
  if (v9)
  {
    [v10 userProvidedName];
  }

  else
  {
    [v10 name];
  }
  v13 = ;

  v11 = +[UIApplication sharedMapsDelegate];
  v12 = [*(a1 + 32) storageID];
  [v11 interruptConvertToNavigableSavedRouteID:v12 routeName:v13 error:v7 directionsError:v6];
}

void sub_10091666C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained appCoordinator];
  [v4 enterRouteCreationWithRoute:v3 originMapItem:0 destinationMapItem:0 userInfo:*(a1 + 32) completion:0];
}

void sub_100916B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100916B70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 40) items];
    v5 = [v4 mutableCopy];

    v6 = *(a1 + 64);
    if (v6 <= 1)
    {
      if (!v6)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v6 == 1)
      {
        [v5 insertObject:v3 atIndex:0];
      }
    }

    else if ((v6 - 2) >= 2)
    {
      if (v6 == 4)
      {
        if ([v5 count] && (v8 = *(a1 + 72), v8 < objc_msgSend(v5, "count")))
        {
          [v5 replaceObjectAtIndex:*(a1 + 72) withObject:v3];
        }

        else
        {
          [v5 addObject:v3];
        }
      }
    }

    else
    {
      v7 = [*(a1 + 40) items];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_100916D48;
      v15 = &unk_10162E9E8;
      v16 = v5;
      v17 = v3;
      [v7 enumerateObjectsUsingBlock:&v12];
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) copyWithItems:{v5, v12, v13, v14, v15}];
    [v10 viewController:v9 doDirectionItem:v11 allowToPromptEditing:1 withUserInfo:*(a1 + 48)];

    goto LABEL_15;
  }

  [*(a1 + 32) viewControllerClosed:*(*(*(a1 + 56) + 8) + 40) animated:1];
LABEL_16:
}

void sub_100916D48(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [v7 searchResult];
  if ([v5 isDynamicCurrentLocation])
  {
  }

  else
  {
    v6 = [v7 isEqual:qword_10195DD28];

    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [*(a1 + 32) replaceObjectAtIndex:a3 withObject:*(a1 + 40)];
LABEL_5:
}

void sub_100916DDC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195DD28;
  qword_10195DD28 = v1;
}

void sub_100917174(uint64_t a1)
{
  v6 = [*(a1 + 32) mutableCopy];
  [v6 setObject:&__kCFBooleanTrue forKey:@"DirectionsAllowApproximateCurrentLocation"];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [v6 copy];
  [v2 viewController:v3 doDirectionItem:v4 allowToPromptEditing:1 withUserInfo:v5];
}

void sub_100917208(uint64_t a1)
{
  v6 = [*(a1 + 32) mutableCopy];
  [v6 setObject:&__kCFBooleanFalse forKey:@"DirectionsAllowApproximateCurrentLocation"];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [v6 copy];
  [v2 viewController:v3 doDirectionItem:v4 allowToPromptEditing:1 withUserInfo:v5];
}

void sub_100917AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100917B20(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = a3 - 1;
    v8 = a2;
    v9 = [v6 objectAtIndexedSubscript:v7];
    LOBYTE(v6) = [v8 isEquivalentAsWaypointToSearchFieldItem:?];

    if ((v6 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void sub_100918360(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [DirectionsHistoryRecordingHelper destinationGEOMapItemToRecordWithDirectionItem:v3];
    if (v4)
    {
      [HistoryEntryRecentsItem saveGeoMapItem:v4];
    }

    v6 = @"DirectionsSessionInitiatorKey";
    v7 = &off_1016E77F0;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [*(*(a1 + 32) + 56) setMaintainSearchStateWhenDisappearing:1];
    [*(a1 + 32) viewController:*(a1 + 40) doDirectionItem:v3 allowToPromptEditing:1 withUserInfo:v5];
  }
}

void sub_1009185E8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = @"DirectionsSessionInitiatorKey";
    v6 = &off_1016E77F0;
    v3 = a2;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [*(a1 + 32) viewController:*(a1 + 40) doDirectionItem:v3 allowToPromptEditing:1 withUserInfo:v4];
  }
}

void sub_100919308(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v11)
  {
    v7 = [SearchFieldItem searchFieldItemWithObject:?];
    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    [*(a1 + 32) viewController:0 doSearchItem:v7 withUserInfo:*(a1 + 40)];

    goto LABEL_7;
  }

  if (v5)
  {
    v8 = [SearchResult alloc];
    v9 = [v6 mapItem];
    v10 = [(SearchResult *)v8 initWithMapItem:v9];

    v7 = [SearchFieldItem searchFieldItemWithObject:v10];

    if (v7)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

id *sub_1009193FC(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] viewController:result[5] selectParkedCar:a2 andPerformAction:0 selectPOIOnMap:1];
  }

  return result;
}

void sub_10091A420(uint64_t a1, uint64_t a2, char a3)
{
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "removeEntryBlock", buf, 2u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = MapsSuggestionsEngineForMapsProcess();
  v9 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10091A964;
  v10[3] = &unk_10162E888;
  v14 = a3;
  v11 = v9;
  v12 = *(a1 + 48);
  v13 = a2;
  [v8 removeEntry:v11 behavior:a2 handler:v10];
}

uint64_t sub_10091A55C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 64) & a2) == 0)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = v5;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Warning: MSg Removal String for RemovalBehaviorNone was requested!", buf, 2u);
      }

      v2 = 0;
      goto LABEL_25;
    }

    if (a2 == 1)
    {
      if ([v5 containsKey:@"MapsSuggestionsRemovalBehaviorStringForSnooze"])
      {
        v7 = @"MapsSuggestionsRemovalBehaviorStringForSnooze";
        goto LABEL_16;
      }

      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Snooze Entry [MapsSuggestions Delete Action Sheet]";
LABEL_24:
      v2 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        if ([v5 containsKey:@"MapsSuggestionsRemovalBehaviorStringForHide"])
        {
          v7 = @"MapsSuggestionsRemovalBehaviorStringForHide";
          goto LABEL_16;
        }

        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"Hide Entry [MapsSuggestions Delete Action Sheet]";
        goto LABEL_24;
      case 4:
        if ([v5 containsKey:@"MapsSuggestionsRemovalBehaviorStringForForget"])
        {
          v7 = @"MapsSuggestionsRemovalBehaviorStringForForget";
          goto LABEL_16;
        }

        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"Forget Entry [MapsSuggestions Delete Action Sheet]";
        goto LABEL_24;
      case 8:
        if ([v5 containsKey:@"MapsSuggestionsRemovalBehaviorStringForDelete"])
        {
          v7 = @"MapsSuggestionsRemovalBehaviorStringForDelete";
LABEL_16:
          v2 = [v6 stringForKey:v7];
          break;
        }

        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"Delete Entry [MapsSuggestions Delete Action Sheet]";
        goto LABEL_24;
    }
  }

LABEL_25:

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v2;

  v14 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412290;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Removal Action String: %@", buf, 0xCu);
  }

  v16 = *(*(*(a1 + 56) + 8) + 40);
  if (v16)
  {
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10091A94C;
    v23 = &unk_10162E8D8;
    v17 = *(a1 + 40);
    v24 = *(a1 + 48);
    v25 = a2;
    v18 = [UIAlertAction actionWithTitle:v16 style:2 handler:&v20];
    [v17 addAction:{v18, v20, v21, v22, v23}];
  }

  return 1;
}

uint64_t sub_10091A8B0(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "User pressed Cancel on Delete Action Sheet", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void sub_10091A964(uint64_t a1, char a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10091AA1C;
  v6[3] = &unk_101631598;
  v10 = *(a1 + 56);
  v7 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = a2;
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_10091AA1C(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "removeEntryBlock handler", v5, 2u);
  }

  if (*(a1 + 56) == 1 && [*(a1 + 32) type] == 7)
  {
    v3 = +[ParkedCarManager sharedManager];
    [v3 updateParkedCar];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 57), *(a1 + 48));
  }

  return result;
}

void sub_10091AEE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 mapView];
  v7 = [v5 _labelMarkerForCustomFeatureAnnotation:v4];

  if (v7)
  {
    v6 = [*(a1 + 32) mapSelectionManager];
    [v6 selectLabelMarker:v7 animated:1];
  }
}

uint64_t sub_10091B9BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10091BBCC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10091BBE8(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (!v16)
    {
      v4 = *(a1 + 48);
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = *(v4 + 16);
      goto LABEL_12;
    }

    if (*(a1 + 64) & 1) != 0 || *(a1 + 65) == 1 && ((GEOMapRectForMapRegion(), v7 = v6, v9 = v8, GEOMapRectForMapRegion(), GEOMapRectIntersection(), v11 = v10, v13 = v12, (GEOMapRectIsNull()) || (GEOConfigGetDouble(), v11 * v13 / (v7 * v9) < v14)))
    {
      [WeakRetained viewControllerShowOfflineMaps:*(a1 + 40)];
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      v5 = *(v15 + 16);
LABEL_12:
      v5();
    }
  }

LABEL_13:
}

uint64_t sub_10091BF44(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10091BF70(id a1, OfflineMapsManagementContext *a2)
{
  if (a2)
  {
    [(OfflineMapsManagementContext *)a2 presentExpiredMapsManagement];
  }
}

uint64_t sub_10091C720(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) displayCollections];
    result = *(v2 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

uint64_t sub_10091C8B8(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_10091CE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10091CE3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 24);
    *(WeakRetained + 24) = 0;
    v6 = WeakRetained;

    v3 = v6;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
      v3 = v6;
    }
  }
}

void sub_10091D1F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained mapSelectionManager];
    [v3 selectMapItem:*(a1 + 32) animated:1];

    WeakRetained = v4;
  }
}

void sub_10091D408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10091D42C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewController:*(a1 + 32) presentCollectionPickerContaineeViewController:v5];
  }
}

void sub_10091D494(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 57);
    [v5 _maps_topMostPresentViewController:v6 animated:1 completion:0];
  }
}

void sub_10091E798(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if ([*(*(a1 + 32) + 424) isActive])
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v3 = [*(a1 + 48) lineItem];
      v7 = [v3 muid];
      if (v7 == [*(a1 + 40) muid])
      {

LABEL_11:
        v11 = *(a1 + 48);
        if (v13)
        {
          [*(a1 + 48) setLineItem:v13 labelMarker:*(a1 + 56) loading:0 preferredLayout:*(a1 + 64)];
        }

        else
        {
          v12 = [v11 lineItem];
          [v11 setLineItem:v12 labelMarker:*(a1 + 56) loading:0 preferredLayout:*(a1 + 64)];
        }

        goto LABEL_15;
      }

      if (!a3)
      {

        goto LABEL_15;
      }
    }

    else if (!a3)
    {
      goto LABEL_15;
    }

    v8 = [*(a1 + 48) lineItem];
    v9 = [v8 muid];
    v10 = [*(a1 + 40) muid];

    if (v6)
    {
    }

    if (v9 == v10)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
}

uint64_t sub_10091EFCC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (sub_100C73A6C(v5, v6))
  {
    IsEqualToMapItemForPurpose = 1;
  }

  else
  {
    v8 = [*(a1 + 32) currentViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      IsEqualToMapItemForPurpose = 0;
    }

    else
    {
      v10 = [v5 mapItem];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v13 = [v5 searchResult];
        v12 = [v13 mapItem];
      }

      v14 = [v6 mapItem];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v17 = [v6 searchResult];
        v16 = [v17 mapItem];
      }

      if (([v12 _hasMUID] & 1) != 0 || objc_msgSend(v16, "_hasMUID"))
      {
        v18 = [v12 _muid];
        IsEqualToMapItemForPurpose = v18 == [v16 _muid];
      }

      else
      {
        v19 = [v12 _geoMapItem];
        v20 = [v16 _geoMapItem];
        IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();
      }
    }
  }

  return IsEqualToMapItemForPurpose;
}

void sub_10091F17C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v13 = v3;
  v5 = [v3 placeCardItem];
  LOBYTE(v4) = (*(v4 + 16))(v4, v5, *(a1 + 32));

  if (v4)
  {
    [v13 prepareForPresentationWithExistingPlaceCardItem];
  }

  else
  {
    v6 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
    [v13 resetState];
    [v13 setIsAdditionalStop:{objc_msgSend(*(a1 + 40), "shouldAddStopInRoutePlanning")}];
    [v13 setExcludedContent:{objc_msgSend(*(a1 + 40), "_excludedContentForPlaceCardItem:", *(a1 + 32))}];
    v7 = [v6 mapItem];
    v8 = [v7 _identifier];
    v9 = [*(a1 + 32) mapItem];
    v10 = [v9 _identifier];
    v11 = [v8 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      v12 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v12 resetConfiguration];
    }

    [v13 setPlaceCardItem:*(a1 + 32) withHistory:*(a1 + 56)];
  }
}

void sub_10091F5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10091F5D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 2)
  {
    v3 = WeakRetained;
    [WeakRetained[7] cleanSearch];
    WeakRetained = v3;
  }
}

void sub_10091FB18(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [a1[4] _labelMarkerForCustomFeatureAnnotation:a2];
    if (v3)
    {
      v4 = v3;
      [a1[5] setIgnoreSelectionChanges:1];
      [a1[4] _selectLabelMarker:v4 animated:1];
      [a1[5] setIgnoreSelectionChanges:0];
      [a1[6] ensureMapSelectionVisible];
      v3 = v4;
    }
  }
}

void sub_1009214D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_100921514(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798CE0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v15 = v10;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Launching placecard for shortcut entry: %@", buf, 0x16u);
  }

  v11 = [*(a1 + 32) _searchResultFromMapsSuggestionsEntry:v3];
  v12 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v12 setSearchResult:v11];
  v13 = [(SearchFieldItem *)v12 searchResult];
  [v13 setHasIncompleteMetadata:1];

  [*(a1 + 32) viewController:*(a1 + 40) doSearchItem:v12 withUserInfo:*(a1 + 48)];
}

void sub_100921714(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798CE0();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    v10 = @"<nil>";
    goto LABEL_10;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  if (objc_opt_respondsToSelector())
  {
    v8 = [v5 performSelector:"accessibilityIdentifier"];
    v9 = v8;
    if (v8 && ![v8 isEqualToString:v7])
    {
      v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

      goto LABEL_8;
    }
  }

  v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
  *buf = 138543618;
  v22 = v10;
  v23 = 2112;
  v24 = v3;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Launching route planning for shortcut entry: %@", buf, 0x16u);

LABEL_11:
  v11 = [*(a1 + 32) _searchResultFromMapsSuggestionsEntry:v3];
  v12 = objc_alloc_init(SearchFieldItem);
  v13 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v12 setSearchResult:v13];

  v14 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v14 setSearchResult:v11];
  v15 = [DirectionItem alloc];
  v20[0] = v12;
  v20[1] = v14;
  v16 = [NSArray arrayWithObjects:v20 count:2];
  v17 = [*(a1 + 40) transportType] - 1;
  if (v17 > 5)
  {
    v18 = 1;
  }

  else
  {
    v18 = qword_101216278[v17];
  }

  v19 = [(DirectionItem *)v15 initWithItems:v16 transportType:v18];

  [*(a1 + 32) viewController:*(a1 + 48) doDirectionItem:v19 withUserInfo:*(a1 + 56)];
}

uint64_t sub_10092199C(uint64_t a1)
{
  v2 = [*(a1 + 32) _isMapItemTypeTransit];
  v3 = sub_100798CE0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      v25 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:
    v25 = v9;

LABEL_10:
    if (*(a1 + 72))
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    if (*(a1 + 73))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    if (*(a1 + 74))
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    if (*(a1 + 75))
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v16;
    if (v2)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = v2;
    v20 = v18;
    if (*(a1 + 76))
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = v21;
    *buf = 138544898;
    v27 = v25;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will open entry with checks: routingUnavailable: %@, alreadyThere: %@, isAuthorizedForPreciseLocation: %@, isIpad: %@, isTransit: %@, forceShowPlacecard: %@", buf, 0x48u);

    v2 = v19;
  }

  if (*(a1 + 72) & 1) != 0 || (*(a1 + 73) & 1) != 0 || *(a1 + 74) != 1 || ((*(a1 + 75) | v2))
  {
    v23 = 56;
  }

  else
  {
    v23 = 64;
    if (*(a1 + 76))
    {
      v23 = 56;
    }
  }

  return (*(*(a1 + v23) + 16))();
}

id *sub_100921C74(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] viewController:result[5] selectParkedCar:a2 andPerformAction:0 selectPOIOnMap:1];
  }

  return result;
}

void sub_100921C94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v4 setAutocompletePerson:v3];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100922174;
  block[3] = &unk_101661480;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_100921D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ![v5 count])
  {
    v7 = sub_100022C48();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      v9 = v8;
      if (v8)
      {
        if ([v8 count])
        {
          v26 = v7;
          v27 = v6;
          v28 = v5;
          v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v25 = v9;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v32 objects:buf count:16];
          if (!v12)
          {
            goto LABEL_22;
          }

          v13 = v12;
          v14 = *v33;
          while (1)
          {
            v15 = 0;
            do
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * v15);
              if (v16)
              {
                v17 = objc_opt_class();
                v18 = NSStringFromClass(v17);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_15;
                }

                v19 = [v16 performSelector:"accessibilityIdentifier"];
                v20 = v19;
                if (v19 && ![v19 isEqualToString:v18])
                {
                  v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];
                }

                else
                {

LABEL_15:
                  v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
                }

                goto LABEL_18;
              }

              v21 = @"<nil>";
LABEL_18:

              [v10 addObject:v21];
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v22 = [v11 countByEnumeratingWithState:&v32 objects:buf count:16];
            v13 = v22;
            if (!v22)
            {
LABEL_22:

              v23 = [v11 componentsJoinedByString:{@", "}];
              v24 = [NSString stringWithFormat:@"<%p> [%@]", v11, v23];

              v6 = v27;
              v5 = v28;
              v9 = v25;
              v7 = v26;
              goto LABEL_27;
            }
          }
        }

        v24 = [NSString stringWithFormat:@"<%p> (empty)", v9];
      }

      else
      {
        v24 = @"<nil>";
      }

LABEL_27:

      *buf = 138412546;
      v37 = v6;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get unpairedVehicles to onboard. error: %@. vehicles: %@", buf, 0x16u);
    }

    goto LABEL_29;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100922120;
  block[3] = &unk_101661340;
  objc_copyWeak(&v31, (a1 + 32));
  v30 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v31);
LABEL_29:
}

void sub_100922120(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentVehicleOnboardingWithVehicles:*(a1 + 32) completion:0];
}

void sub_100922174(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained viewController:*(a1 + 32) doSearchItem:*(a1 + 40) withUserInfo:0];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "ActionCoordinator.m";
      v7 = 1026;
      v8 = 1905;
      v9 = 2082;
      v10 = "[ActionCoordinator viewController:openMapsSuggestionEntry:withUserInfo:]_block_invoke_3";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_100922600(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798CE0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v14 = v10;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Launching placecard for shortcut entry: %@", buf, 0x16u);
  }

  v11 = [SearchResult searchResultFromFavoriteItem:v3];
  v12 = [*(a1 + 32) mapSelectionManager];
  [v12 injectAndSelectSearchResult:v11];
}

void sub_1009227D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100798CE0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      v10 = @"<nil>";
      goto LABEL_10;
    }

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (objc_opt_respondsToSelector())
    {
      v8 = [v5 performSelector:"accessibilityIdentifier"];
      v9 = v8;
      if (v8 && ![v8 isEqualToString:v7])
      {
        v10 = [NSString stringWithFormat:@"%@<%p, %@>", v7, v5, v9];

        goto LABEL_8;
      }
    }

    v10 = [NSString stringWithFormat:@"%@<%p>", v7, v5];
LABEL_8:

LABEL_10:
    *buf = 138543618;
    v20 = v10;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}@] Launching route planning for shortcut entry: %@", buf, 0x16u);
  }

  v11 = [SearchResult searchResultFromFavoriteItem:v3];
  v12 = objc_alloc_init(SearchFieldItem);
  v13 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v12 setSearchResult:v13];

  v14 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v14 setSearchResult:v11];
  v15 = [DirectionItem alloc];
  v18[0] = v12;
  v18[1] = v14;
  v16 = [NSArray arrayWithObjects:v18 count:2];
  v17 = [(DirectionItem *)v15 initWithItems:v16 transportType:0];

  [*(a1 + 32) viewController:*(a1 + 40) doDirectionItem:v17 withUserInfo:*(a1 + 48)];
}

uint64_t sub_100922A3C(uint64_t a1)
{
  v2 = [*(a1 + 32) _isMapItemTypeTransit];
  v3 = sub_100798CE0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    if (!v4)
    {
      v25 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:
    v25 = v9;

LABEL_10:
    if (*(a1 + 72))
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    if (*(a1 + 73))
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    if (*(a1 + 74))
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    if (*(a1 + 75))
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v16;
    if (v2)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = v2;
    v20 = v18;
    if (*(a1 + 76))
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = v21;
    *buf = 138544898;
    v27 = v25;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = v22;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] Will open entry with checks: routingAvailable: %@, alreadyThere: %@, isAuthorizedForPreciseLocation: %@, isIpad: %@, isTransit: %@, forceShowPlacecard: %@", buf, 0x48u);

    v2 = v19;
  }

  if (*(a1 + 72) == 1 && (*(a1 + 73) & 1) == 0 && *(a1 + 74) == 1 && ((*(a1 + 75) | v2) & 1) == 0)
  {
    v23 = 64;
    if (*(a1 + 76))
    {
      v23 = 56;
    }
  }

  else
  {
    v23 = 56;
  }

  return (*(*(a1 + v23) + 16))();
}

void sub_100922FD0(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v10 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"ContainerContainee"];

  if (WeakRetained)
  {
    v6 = [v10 object];
    v7 = objc_loadWeakRetained(WeakRetained + 57);

    if (v6 == v7)
    {
      if (v5)
      {
        v8 = objc_loadWeakRetained(WeakRetained + 57);
        v9 = [v8 currentViewController];
        [WeakRetained containerViewControllerDidResignContainee:v5 toContainee:v9];
      }
    }
  }
}

void sub_1009234CC(uint64_t a1)
{
  v2 = [*(a1 + 32) searchModeViewController];
  [v2 showSearchResults:*(a1 + 40)];
}

void sub_100923C0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 containerViewController];
  v2 = [v3 currentViewController];
  [v1 viewControllerShowRecentlyAdded:v2];
}

void sub_100923D60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 containerViewController];
  v2 = [v3 currentViewController];
  [v1 viewControllerShowVisitHistoryHome:v2];
}

void sub_100923EB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 containerViewController];
  v2 = [v3 currentViewController];
  [v1 viewControllerShowSavedRoutesList:v2];
}

void sub_100924008(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 containerViewController];
  v2 = [v3 currentViewController];
  [v1 viewControllerShowCollections:v2];
}

void sub_10092415C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 containerViewController];
  v2 = [v3 currentViewController];
  [v1 viewControllerShowLibraryPlacesView:v2];
}

void sub_1009242B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 containerViewController];
  v2 = [v3 currentViewController];
  [v1 viewControllerShowMyShortcuts:v2];
}

void sub_100924A10(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if ([*(*(a1 + 32) + 424) isActive])
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v3 = [*(a1 + 48) lineItem];
      v7 = [v3 muid];
      if (v7 == [*(a1 + 40) muid])
      {

LABEL_11:
        v11 = *(a1 + 48);
        if (v12)
        {
          [v11 setLineItem:v12 labelMarker:0 loading:0 preferredLayout:0];
          goto LABEL_15;
        }

        v3 = [v11 lineItem];
        [v11 setLineItem:v3 labelMarker:0 loading:0 preferredLayout:0];
        goto LABEL_14;
      }

      if (!a3)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else if (!a3)
    {
      goto LABEL_15;
    }

    v8 = [*(a1 + 48) lineItem];
    v9 = [v8 muid];
    v10 = [*(a1 + 40) muid];

    if (v6)
    {
    }

    if (v9 == v10)
    {
      goto LABEL_11;
    }
  }

LABEL_15:
}

void sub_100927114(uint64_t a1)
{
  v2 = +[MKMapService sharedService];
  [v2 captureUserAction:4 onTarget:601 eventValue:0];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 456));
  [WeakRetained setUseBackdropFullScreen:0];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 456));
  v5 = [v4 view];
  [v5 setNeedsLayout];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 456));
  v6 = [v7 view];
  [v6 layoutIfNeeded];
}

void sub_100927BB0(id a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v1 = +[_TtC4Maps34UserProfileContaineeViewController userProfileDidOpenProfilePageNotification];
  [v2 postNotificationName:v1 object:0 userInfo:0];
}

void sub_100928538(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  if (v5 || ![v22 count])
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_21;
  }

  v6 = [v22 firstObject];
  v7 = [[MKPlacemark alloc] initWithPlacemark:v6];
  v8 = [[MKMapItem alloc] initWithPlacemark:v7];
  v9 = [v8 _addressFormattedAsTitlesForMapRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v10 = [v9 firstObject];
  v11 = +[UIDevice currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 != 5)
  {
    v17 = *(a1 + 32);
    if (v17 && v10)
    {
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@" — " value:@"localized string not found" table:0];
      v16 = [NSString stringWithFormat:@"%@%@%@", v17, v19, v10];
    }

    else
    {
      if (v17)
      {
        v20 = *(a1 + 32);
      }

      else
      {
        v20 = v10;
      }

      v16 = v20;
    }

    goto LABEL_20;
  }

  if ([v9 count] < 2)
  {
    v14 = 0;
LABEL_18:
    v16 = v10;
    goto LABEL_19;
  }

  v13 = [v9 objectAtIndexedSubscript:1];
  v14 = v13;
  if (!v13 || v10 == v13 || ([v10 isEqual:v13] & 1) != 0)
  {
    goto LABEL_18;
  }

  v21 = +[NSBundle mainBundle];
  v15 = [v21 localizedStringForKey:@" — " value:@"localized string not found" table:0];
  v16 = [NSString stringWithFormat:@"%@%@%@", v10, v15, v14];

LABEL_19:
LABEL_20:
  (*(*(a1 + 40) + 16))();

LABEL_21:
}

void sub_10092978C(uint64_t a1)
{
  v2 = [*(a1 + 32) runningGradientView];
  v3 = [v2 layer];
  [v3 setOpacity:0.0];

  v6 = [*(a1 + 32) localizingGradientView];
  v4 = [v6 layer];
  LODWORD(v5) = 1.0;
  [v4 setOpacity:v5];
}

void sub_100929824(uint64_t a1)
{
  v2 = [*(a1 + 32) runningGradientView];
  v3 = [v2 layer];
  LODWORD(v4) = 1.0;
  [v3 setOpacity:v4];

  v6 = [*(a1 + 32) localizingGradientView];
  v5 = [v6 layer];
  [v5 setOpacity:0.0];
}

void sub_10092A494(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARGradientOverlay");
  v2 = qword_10195DD40;
  qword_10195DD40 = v1;
}

id sub_10092B934()
{
  if (qword_10195DD58 != -1)
  {
    dispatch_once(&qword_10195DD58, &stru_10162EEF8);
  }

  v1 = qword_10195DD50;

  return v1;
}

void sub_10092B988(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateState];
}

void sub_10092B9C8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSessionThermalStateMonitor");
  v2 = qword_10195DD50;
  qword_10195DD50 = v1;
}

void sub_10092E858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10092E884(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v7 firstObject];

    if (v4)
    {
      v5 = [WeakRetained delegate];
      v6 = [v7 firstObject];
      [v5 didTapOnTappableEntry:v6];

      [WeakRetained setMapServiceTicket:0];
    }
  }
}

void sub_10092F54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10092F574(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 didTapOnAddAPlace];
}

void sub_10092F8A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectAtIndexPath:v4];
  v6 = [*(a1 + 32) placeSummaryTemplateForSearchResult:v5 indexPath:v4];

  if (v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10092F994;
    block[3] = &unk_101661A40;
    block[4] = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10092F994(uint64_t a1)
{
  v3 = [*(a1 + 32) currentLocation];
  v2 = [*(a1 + 40) mapItem];
  +[PlaceSummaryViewModelTemplateFactory updateDistanceViewModelWithCurrentLocation:mapItem:template:searchAlongTheRoute:](_TtC4Maps36PlaceSummaryViewModelTemplateFactory, "updateDistanceViewModelWithCurrentLocation:mapItem:template:searchAlongTheRoute:", v3, v2, *(a1 + 48), [*(a1 + 32) isPresentingSearchAlongTheRouteResults]);
}

void sub_10092FC8C(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 didCachePlaceSummaryTemplates];
}

void sub_10092FE00(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) placeSummaryTemplateViewModels];
  v4 = [v3 objectForKey:v12];

  v5 = v12;
  if (!v4)
  {
    v6 = [*(a1 + 32) objectAtIndexPath:v12];
    [v6 setRepresentsIntermediateStop:{objc_msgSend(*(a1 + 32), "isPresentingAddStopResultsFromWaypointEditor")}];
    if ([*(a1 + 32) usePlaceSummaryForSearchResult:v6])
    {
      v7 = [*(a1 + 32) placeSummaryMetadata];
      v8 = [*(a1 + 32) currentLocation];
      if ([*(a1 + 32) isShowingClusterResults])
      {
        v9 = [*(a1 + 32) approxLocation];

        if (v9)
        {
          if (!v8)
          {
            v8 = [*(a1 + 32) approxLocation];
          }
        }
      }

      v10 = +[PlaceSummaryViewModelTemplateFactory viewModelWithSearchResult:metadata:currentLocation:searchAlongRoute:openAt:](_TtC4Maps36PlaceSummaryViewModelTemplateFactory, "viewModelWithSearchResult:metadata:currentLocation:searchAlongRoute:openAt:", v6, v7, v8, [*(a1 + 32) isPresentingSearchAlongTheRouteResults], *(*(a1 + 32) + 120));
      [*(a1 + 32) addMetricsForPlaceSummaryTemplate:v10 indexPath:v12];
      if (v10)
      {
        v11 = [*(a1 + 32) placeSummaryTemplateViewModels];
        [v11 setObject:v10 forKey:v12];
      }
    }

    v5 = v12;
  }
}

void sub_1009309AC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) curatedGuideViewModels];
  v4 = [v3 objectForKey:v13];

  v5 = v13;
  if (!v4)
  {
    v6 = [*(a1 + 32) objectAtIndexPath:v13];
    v7 = [v6 placeCollection];

    if (v7)
    {
      v8 = [_TtC4Maps21CuratedGuideViewModel alloc];
      v9 = [v6 placeCollection];
      if ([*(a1 + 32) guideSummaryUsesRichLayout])
      {
        v10 = 1;
      }

      else
      {
        v10 = [*(a1 + 32) placeSummaryUsesRichLayout];
      }

      v11 = [(CuratedGuideViewModel *)v8 initWithPlaceCollection:v9 useRichLayout:v10 isAutocompleteContext:0];

      [*(a1 + 32) addMetricsForGuideSummaryViewModel:v11 atIndexPath:v13];
      v12 = [*(a1 + 32) curatedGuideViewModels];
      [v12 setObject:v11 forKey:v13];
    }

    v5 = v13;
  }
}

void sub_100932560(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) objectAtIndexPath:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mapItem];
    v6 = [v5 _geoMapItem];
    v7 = [v6 _hasEVCharger];

    if (v7)
    {
      v8 = [*(a1 + 32) placeSummaryTemplateForSearchResult:v4 indexPath:v14];
      if (v8)
      {
        v9 = [v4 mapItem];
        v10 = [v9 _identifier];

        if (v10)
        {
          v11 = *(*(a1 + 32) + 264);
          v12 = [v4 mapItem];
          v13 = [v12 _identifier];
          [v11 setObject:v8 forKeyedSubscript:v13];
        }
      }
    }
  }
}

void sub_100932898(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) objectAtIndexPath:?];
  if ([v3 isEqualToSearchResult:*(a1 + 40) forPurpose:5])
  {
    v4 = [*(a1 + 32) tableView];
    v5 = [v4 cellForRowAtIndexPath:v8];

    v6 = [*(*(a1 + 32) + 264) objectForKeyedSubscript:*(a1 + 48)];
    v7 = [*(a1 + 40) mapItem];
    [v5 updateEVChargerAvailabilityWithTemplate:v6 mapItem:v7];
  }
}

void sub_100932EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100932ED4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2, 1);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained shareRowAtIndexPath:*(a1 + 32) completion:&stru_10162EF98];
}

int64_t sub_100934B98(id a1, GEOLPRRegion *a2, GEOLPRRegion *a3)
{
  v4 = a3;
  v5 = [(GEOLPRRegion *)a2 displayNames];
  v6 = [v5 firstObject];
  v7 = [v6 stringValue];
  v8 = [(GEOLPRRegion *)v4 displayNames];

  v9 = [v8 firstObject];
  v10 = [v9 stringValue];
  v11 = [v7 compare:v10];

  return v11;
}

void sub_100934DE0(id a1, BSProcessHandle *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "openMapsCarPlayApplicationSuspended error %@", &v5, 0xCu);
  }
}

void sub_100934F88(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = dispatch_time(0, 250000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10093503C;
    block[3] = &unk_101661760;
    v4 = *(a1 + 32);
    dispatch_after(v2, &_dispatch_main_q, block);
  }
}

uint64_t sub_10093503C(uint64_t a1)
{
  v2 = sub_100005610();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "openMapsCarPlayApplicationWithCompletion completionBlock", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100935578()
{
  if (qword_10195DD68 != -1)
  {
    dispatch_once(&qword_10195DD68, &stru_10162F060);
  }

  v1 = qword_10195DD60;

  return v1;
}

void sub_1009355CC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VIOSessionThermalStateMonitor");
  v2 = qword_10195DD60;
  qword_10195DD60 = v1;
}

void sub_100935730(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reportStateToStateManager];
}

void sub_1009367A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = (*(a1 + 32) + 16 * a3);
  v4 = a2;
  [v4 lat];
  v6 = v5;
  [v4 lng];
  v8 = v7;

  *v3 = v6;
  v3[1] = v8;
}

void sub_100936B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100936BA0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = dispatch_group_create();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v5;
    obj = v5;
    v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          dispatch_group_enter(v9);
          v15 = v7[1];
          v16 = [v14 identifier];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100936E1C;
          v24[3] = &unk_10163AFB0;
          v25 = v8;
          v26 = v14;
          v27 = v9;
          [v15 fetchStateForSubscriptionWithIdentifier:v16 callbackQueue:&_dispatch_main_q completionHandler:v24];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100936E94;
    block[3] = &unk_101661A40;
    v21 = v8;
    v22 = obj;
    v23 = v7;
    v17 = v8;
    dispatch_group_notify(v9, &_dispatch_main_q, block);

    v5 = v18;
  }
}

void sub_100936E1C(void *a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a2;
    v7 = [v5 identifier];
    [v4 setObject:v6 forKeyedSubscript:v7];

    v8 = a1[6];

    dispatch_group_leave(v8);
  }
}

void sub_100936E94(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2 == [*(a1 + 40) count])
  {
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1009373C8;
    v46[3] = &unk_10162F0B0;
    v3 = *(a1 + 40);
    v47 = *(a1 + 32);
    v4 = [v3 _geo_map:v46];
    v5 = *(a1 + 48);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    v7 = [*(a1 + 40) _geo_map:&stru_10162F0F0];
    v8 = objc_alloc_init(NSDiffableDataSourceSnapshot);
    [v8 appendSectionsWithIdentifiers:&off_1016ED0B8];
    if ([v7 count])
    {
      [v8 appendItemsWithIdentifiers:v7];
    }

    [*(*(a1 + 48) + 32) applySnapshot:v8 animatingDifferences:1];
    v9 = *(a1 + 48);
    v10 = *(v9 + 24);
    v11 = *(v9 + 16);
    if (v10)
    {
      v39 = v8;
      v40 = v7;
      dispatch_assert_queue_V2(&_dispatch_main_q);
      v12 = +[NSMutableSet set];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v38 = v11;
      obj = v11;
      v44 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v44)
      {
        v42 = *v57;
        v43 = v12;
        do
        {
          for (i = 0; i != v44; i = i + 1)
          {
            if (*v57 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v56 + 1) + 8 * i);
            v15 = [v14 state];
            v45 = [v14 subscription];
            v16 = [v45 identifier];
            v17 = v15;
            v18 = v16;
            sub_100937468(v10, v18);
            [*(v10 + 8) setObject:v17 forKey:v18];
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v65[0] = @"loadState";
            v65[1] = @"downloadedDataSize";
            v65[2] = @"progress";
            v19 = [NSArray arrayWithObjects:v65 count:3];
            v20 = [v19 countByEnumeratingWithState:&v60 objects:v65 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v61;
              do
              {
                for (j = 0; j != v21; j = j + 1)
                {
                  if (*v61 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  [v17 addObserver:v10 forKeyPath:*(*(&v60 + 1) + 8 * j) options:0 context:off_10192DE80];
                }

                v21 = [v19 countByEnumeratingWithState:&v60 objects:v65 count:16];
              }

              while (v21);
            }

            v24 = [v14 subscription];
            v25 = [v24 identifier];
            v12 = v43;
            [v43 addObject:v25];
          }

          v44 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v44);
      }

      v26 = +[NSMutableArray array];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v27 = *(v10 + 8);
      v28 = [v27 countByEnumeratingWithState:&v52 objects:v65 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v53;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v53 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v52 + 1) + 8 * k);
            if (([v12 containsObject:v32] & 1) == 0)
            {
              [v26 addObject:v32];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v52 objects:v65 count:16];
        }

        while (v29);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v33 = v26;
      v34 = [v33 countByEnumeratingWithState:&v48 objects:&v60 count:16];
      v8 = v39;
      v7 = v40;
      if (v34)
      {
        v35 = v34;
        v36 = *v49;
        do
        {
          for (m = 0; m != v35; m = m + 1)
          {
            if (*v49 != v36)
            {
              objc_enumerationMutation(v33);
            }

            sub_100937468(v10, *(*(&v48 + 1) + 8 * m));
          }

          v35 = [v33 countByEnumeratingWithState:&v48 objects:&v60 count:16];
        }

        while (v35);
      }

      v11 = v38;
    }
  }
}

MapDataSubscriptionInfo *sub_1009373C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MapDataSubscriptionInfo alloc];
  v5 = *(a1 + 32);
  v6 = [v3 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [(MapDataSubscriptionInfo *)v4 initWithSubscription:v3 state:v7];

  return v8;
}

void sub_100937468(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 8) objectForKeyedSubscript:v3];
    if (v4)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v15[0] = @"loadState";
      v15[1] = @"downloadedDataSize";
      v15[2] = @"progress";
      v5 = [NSArray arrayWithObjects:v15 count:3, 0];
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [v4 removeObserver:a1 forKeyPath:*(*(&v10 + 1) + 8 * v9) context:off_10192DE80];
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      [*(a1 + 8) removeObjectForKey:v3];
    }
  }
}

void sub_100937A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100937AF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v6 = WeakRetained;
    v4 = [*(a1 + 32) subscription];
    v5 = [v4 identifier];
    [v3 cancelDownloadForSubscriptionIdentifier:v5];

    WeakRetained = v6;
  }
}

void sub_100937B84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    v6 = WeakRetained;
    v4 = [*(a1 + 32) subscription];
    v5 = [v4 identifier];
    [v3 startDownloadForSubscriptionIdentifier:v5 mode:1];

    WeakRetained = v6;
  }
}

void sub_100937DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100937DC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reloadSubscriptions];
    WeakRetained = v2;
  }
}

void sub_100937FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100937FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained _configuredCellForSubscriptionIdentifier:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1009381B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100938248;
  v5[3] = &unk_10162F138;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_100938248(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) == a3)
  {
    v4 = *(*(a1 + 40) + 16);
    v5 = a2;
    v6 = [v4 snapshot];
    v7 = [v6 copy];

    v9 = v5;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v7 reconfigureItemsWithIdentifiers:v8];

    [*(*(a1 + 40) + 16) applySnapshot:v7 animatingDifferences:1];
  }
}

void sub_1009386A8(id a1)
{
  v1 = objc_alloc_init(NSByteCountFormatter);
  v2 = qword_10195DD70;
  qword_10195DD70 = v1;
}

void sub_10093891C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100938944(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained actionDelegate];
    v3 = [v4 subscriptionInfo];
    [v2 offlineMapDetailsActionSectionControllerDidSelectResizeMap:v3];

    [GEOAPPortal captureUserAction:407 target:112 value:0];
    WeakRetained = v4;
  }
}

void sub_100939200(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained actionDelegate];
    v3 = [v4 subscriptionInfo];
    [v2 offlineMapDetailsActionSectionControllerDidSelectRenameMap:v3 completionHandler:&stru_10162F158];

    [GEOAPPortal captureUserAction:385 target:112 value:0];
    WeakRetained = v4;
  }
}

void sub_100939298(id a1, BOOL a2)
{
  if (a2)
  {
    [GEOAPPortal captureUserAction:378 target:112 value:0];
  }
}

void sub_10093A018(id a1)
{
  v1 = objc_alloc_init(NSMutableParagraphStyle);
  LODWORD(v2) = 1036831949;
  [v1 setHyphenationFactor:v2];
  [v1 setLineBreakMode:4];
  v5 = NSParagraphStyleAttributeName;
  v6 = v1;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = qword_10195DD88;
  qword_10195DD88 = v3;
}

void sub_10093BE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10093BED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10093BEE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v6 = [*(a1 + 32) isCanceled];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = [v13 count];
    if (!a4 && v8 == 1)
    {
      v9 = [v13 firstObject];
      v10 = *(a1 + 32);
      v11 = *(v10 + 72);
      *(v10 + 72) = v9;
    }

    v12 = 0;
    atomic_compare_exchange_strong_explicit((*(*(a1 + 48) + 8) + 24), &v12, 1u, memory_order_relaxed, memory_order_relaxed);
    v7 = v13;
    if (!v12)
    {
      dispatch_group_leave(*(a1 + 40));
      v7 = v13;
    }
  }
}

void sub_10093BF9C(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_10093C038(void *a1)
{
  [*(*(a1[5] + 8) + 40) cancel];
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(a1[6] + 8) + 24), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    v3 = a1[4];

    dispatch_group_leave(v3);
  }
}

void sub_10093C144(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResolvedMapItem:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 32) + 8);

  dispatch_group_leave(v7);
}

void sub_10093C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10093C3D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_10093BED0;
    v29[4] = sub_10093BEE0;
    v30 = 0;
    dispatch_group_enter(*(a1 + 40));
    v7 = +[MKMapService sharedService];
    v8 = *(a1 + 48);
    [v5 coordinate];
    v10 = v9;
    v12 = v11;
    v13 = [*(a1 + 32) traits];
    v14 = [v7 ticketForNearestTransitStation:v8 coordinate:v13 traits:{v10, v12}];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10093C6D8;
    v26[3] = &unk_1016562C8;
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    v28 = v15;
    v27 = v16;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10093C7B4;
    v25[3] = &unk_10165F5C8;
    v25[4] = v29;
    [v14 submitWithHandler:v26 networkActivity:v25];
    v17 = *(a1 + 32);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10093C850;
    v21[3] = &unk_101660778;
    v18 = v14;
    v19 = *(a1 + 56);
    v22 = v18;
    v24 = v19;
    v23 = *(a1 + 40);
    [v17 _addCancelationHandler:v21];
    v20 = 0;
    atomic_compare_exchange_strong_explicit((*(*(a1 + 64) + 8) + 24), &v20, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v20)
    {
      dispatch_group_leave(*(a1 + 40));
    }

    _Block_object_dispose(v29, 8);
  }
}

void sub_10093C670(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(*(a1 + 48) + 8) + 24), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    v3 = *(a1 + 40);

    dispatch_group_leave(v3);
  }
}

void sub_10093C6D8(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    if (v5 || ![v8 count])
    {
      [*(a1 + 32) setError:v5];
    }

    v6 = [v8 firstObject];
    [*(a1 + 32) setResolvedMapItem:v6];

    [*(a1 + 32) setHasNearestStation:1];
    v7 = 0;
    atomic_compare_exchange_strong_explicit((*(*(a1 + 48) + 8) + 24), &v7, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v7)
    {
      dispatch_group_leave(*(a1 + 40));
    }
  }
}

void sub_10093C7B4(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_10093C850(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(*(a1 + 48) + 8) + 24), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    v3 = *(a1 + 40);

    dispatch_group_leave(v3);
  }
}

void sub_10093CC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10093CC98(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    if (v5 && ([*(a1 + 40) _geoMapItemStorageForPersistence], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      [*(a1 + 32) setError:0];
      v7 = *(a1 + 40);
    }

    else
    {
      [*(a1 + 32) setError:v5];
      v7 = [v10 firstObject];
    }

    v8 = v7;
    if (*(a1 + 48))
    {
      [v7 setName:?];
    }

    if (*(a1 + 56))
    {
      [v8 setUrl:?];
    }

    if (*(a1 + 64))
    {
      [v8 setPhoneNumber:?];
    }

    [*(a1 + 32) setResolvedMapItem:v8];
    v9 = 0;
    atomic_compare_exchange_strong_explicit((*(*(a1 + 80) + 8) + 24), &v9, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v9)
    {
      dispatch_group_leave(*(a1 + 72));
    }
  }
}

void sub_10093CDB8(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_10093CE54(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [v2 cancel];
    v3 = 0;
    atomic_compare_exchange_strong_explicit((*(a1[6] + 8) + 24), &v3, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v3)
    {
      v4 = a1[5];

      dispatch_group_leave(v4);
    }
  }
}

void sub_10093D1A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = [a3 mapItem];
  [*(a1 + 32) setResolvedMapItem:v7];
  [*(a1 + 32) setError:v6];

  dispatch_group_leave(*(a1 + 40));
}

id sub_10093E1E0(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "RGEntry suggestion called, running block from queue", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 24);

  return v3;
}

uint64_t sub_10093E278(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10093E290(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10093E4DC(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10093E62C;
  v4[3] = &unk_101661A90;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_10093E58C(id a1, MapsSuggestionsRouteGeniusObserver *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10093E620;
  block[3] = &unk_101661B18;
  v4 = a2;
  v2 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10093E704(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didUpdateRouteGeniusEntry:*(a1 + 32)];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "CarRouteGeniusService.mm";
      v7 = 1026;
      v8 = 166;
      v9 = 2082;
      v10 = "[CarRouteGeniusService didUpdateRouteGeniusEntry:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10093EBFC(NSObject **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v8 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10093EDA4;
    v10[3] = &unk_101661090;
    v11 = v7;
    v12 = v6;
    dispatch_async(v8, v10);

    v9 = v11;
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsQueue.hpp";
      v15 = 1024;
      v16 = 177;
      v17 = 2082;
      v18 = "void MSg::Queue::async(S *, void (^__strong)(S *)) const [S = CarRouteGeniusService]";
      v19 = 2082;
      v20 = "nil == (callerSelf)";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires self", buf, 0x26u);
    }
  }
}

void sub_10093EDA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "self went away in MSg::Queue::async()", v4, 2u);
    }
  }
}

void sub_10093EE64(id a1, CarRouteGeniusService *a2)
{
  v2 = a2;
  if ([(CarRouteGeniusService *)v2 isActive])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping RouteGeniusService", v5, 2u);
    }

    [(CarRouteGeniusService *)v2 _isActive:0];
    [(MNRouteGeniusRemoteService *)v2->_config.remote stop];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "RouteGeniusService was not active", buf, 2u);
    }
  }
}

void sub_10093F008(id a1, CarRouteGeniusService *a2)
{
  v2 = a2;
  if ([(CarRouteGeniusService *)v2 isActive])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Force RouteGenius reroute", v5, 2u);
    }

    [(MNRouteGeniusRemoteService *)v2->_config.remote forceReroute];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "RouteGenius is not active", buf, 2u);
    }
  }
}

void sub_10093F1A0(id a1, CarRouteGeniusService *a2)
{
  v2 = a2;
  if ([(CarRouteGeniusService *)v2 isActive])
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "RouteGeniusService was already active", buf, 2u);
    }
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting RouteGeniusService", v5, 2u);
    }

    [(CarRouteGeniusService *)v2 _isActive:1];
    [(MNRouteGeniusRemoteService *)v2->_config.remote start];
  }
}

void sub_10093F470(id a1)
{
  v1 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "building RouteGenius Service", v4, 2u);
  }

  v2 = objc_alloc_init(CarRouteGeniusService);
  v3 = qword_10195DD90;
  qword_10195DD90 = v2;
}

void sub_100940518(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [(TrafficIncidentLayout *)v6 feedbackResult];
  v10 = [v9 layoutConfigResult];
  v11 = [v10 forms];

  v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v30 = v8;
    v31 = v7;
    v32 = v6;
    v14 = 0;
    v15 = *v35;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 formType];
        v19 = [*(a1 + 32) feedbackRequestParameters];
        v20 = [v19 layoutConfigParameters];
        v21 = [v20 formType];

        if (v18 == v21)
        {
          v22 = v17;

          v14 = v22;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v13);

    v7 = v31;
    v6 = v32;
    v8 = v30;
    if (v14)
    {
      v23 = [[TrafficIncidentLayout alloc] initWithLayoutFormConfig:v14 location:*(a1 + 40)];
      v24 = *(a1 + 56);
      if (v24 == 7)
      {
        v25 = +[TrafficIncidentLayoutStorage sharedInstance];
        [v25 saveIncidentLayout:v23];
      }

      else
      {
        if (v24 != 9)
        {
LABEL_21:
          v28 = sub_10002171C();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v23;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "LayoutItem %@", buf, 0xCu);
          }

          v29 = *(a1 + 48);
          if (v29)
          {
            (*(v29 + 16))(v29, v23);
          }

          goto LABEL_26;
        }

        v25 = +[TrafficIncidentLayoutStorage sharedInstance];
        [v25 saveIncidentVotingLayout:v23];
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v26 = sub_10002171C();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v39 = v6;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error: Layout config not included in response: %@ error: %@", buf, 0x16u);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, 0);
  }

LABEL_26:
}

void sub_10094090C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(*(a1 + 32) + 16);
LABEL_6:
    v4();
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 16);
    goto LABEL_6;
  }

  v5 = v3;
  v6 = MapsSuggestionsResourceDepotForMapsProcess();
  v7 = [v6 oneNetworkRequester];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100940A64;
  v8[3] = &unk_10164C8C8;
  v9 = v5;
  v10 = v9;
  v11 = *(a1 + 32);
  [v9 hydrateMapItemWithNetworkRequester:v7 completion:v8];

LABEL_7:
}

void sub_100940A64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) identifierUUID];
      *buf = 138412547;
      v16 = v5;
      v17 = 2113;
      v18 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed hydrating the geoMapItem for LOI w/ identifier %@. Error: %{private}@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) mapItemHandle];

    if (v6)
    {
      v7 = [MapsLocationOfInterest alloc];
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) mapItem];
      v6 = [(MapsLocationOfInterest *)v7 initWithLocationOfInterest:v8 geoMapItem:v9];
    }
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100940C30;
  v12[3] = &unk_101661090;
  v10 = *(a1 + 48);
  v13 = v6;
  v14 = v10;
  v11 = v6;
  dispatch_async(&_dispatch_main_q, v12);
}

void sub_100940FBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100940FE0(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = *(a1 + 48);
  switch(v2)
  {
    case 6:
      v6 = objc_loadWeakRetained(&to);
      v4 = [v6 cachedObjectWithType:*(a1 + 48)];

      if (v4)
      {
LABEL_9:
        (*(*(a1 + 32) + 16))();
LABEL_14:

        break;
      }

      objc_copyWeak(&from, &to);
      v11 = objc_loadWeakRetained(&to);
      v12 = [v11 locationOfInterestManager];
      v13 = [NSSet setWithArray:&off_1016ED130];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1009414D8;
      v17[3] = &unk_101660648;
      v18 = *(a1 + 32);
      objc_copyWeak(&v19, &from);
      [v12 afterInitialRetrievalOfLOIsOfTypes:v13 perform:v17];

      objc_destroyWeak(&v19);
      v10 = v18;
LABEL_13:

      objc_destroyWeak(&from);
      v4 = 0;
      goto LABEL_14;
    case 2:
      v5 = objc_loadWeakRetained(&to);
      v4 = [v5 cachedObjectWithType:*(a1 + 48)];

      if (v4)
      {
        goto LABEL_9;
      }

      objc_copyWeak(&from, &to);
      v7 = objc_loadWeakRetained(&to);
      v8 = [v7 locationOfInterestManager];
      v9 = [NSSet setWithArray:&off_1016ED118];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100941444;
      v20[3] = &unk_101660648;
      v21 = *(a1 + 32);
      objc_copyWeak(&v22, &from);
      [v8 afterInitialRetrievalOfLOIsOfTypes:v9 perform:v20];

      objc_destroyWeak(&v22);
      v10 = v21;
      goto LABEL_13;
    case 1:
      v3 = objc_loadWeakRetained(&to);
      v4 = [v3 cachedObjectWithType:*(a1 + 48)];

      if (v4)
      {
        goto LABEL_9;
      }

      objc_copyWeak(&from, &to);
      v14 = objc_loadWeakRetained(&to);
      v15 = [v14 locationOfInterestManager];
      v16 = [NSSet setWithArray:&off_1016ED100];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1009413B0;
      v23[3] = &unk_101660648;
      v24 = *(a1 + 32);
      objc_copyWeak(&v25, &from);
      [v15 afterInitialRetrievalOfLOIsOfTypes:v16 perform:v23];

      objc_destroyWeak(&v25);
      v10 = v24;
      goto LABEL_13;
  }

  objc_destroyWeak(&to);
}

void sub_100941364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1009413B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained locationOfInterestManager];
  v3 = [v2 homeLOIs];
  v4 = [v3 firstObject];
  (*(v1 + 16))(v1, v4);
}

void sub_100941444(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained locationOfInterestManager];
  v3 = [v2 workLOIs];
  v4 = [v3 firstObject];
  (*(v1 + 16))(v1, v4);
}

void sub_1009414D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained locationOfInterestManager];
  v3 = [v2 schoolLOIs];
  v4 = [v3 firstObject];
  (*(v1 + 16))(v1, v4);
}

void sub_10094349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1009434B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1009434CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_100943A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100943A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  *(*(*(a1 + 40) + 8) + 24) = WeakRetained != 0;
}

void sub_100944038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100944058(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setComment:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained commentHeaderView];
    [v4 updateRemainingCharacters];

    WeakRetained = v5;
  }
}

void sub_1009440C4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setComment:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained commentHeaderView];
    [v4 updateRemainingCharacters];

    WeakRetained = v5;
  }
}

void sub_10094516C(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = *(*(a1 + 32) + 24);
    if (v7)
    {
      v8 = v6;
      (*(v7 + 16))();
      v6 = v8;
    }
  }
}

void sub_10094529C(id a1, RAPReport *a2, RAPLookAroundDetailsEditorViewController *a3)
{
  v4 = a3;
  v5 = [(RAPReport *)a2 canCreateSubmittableProblem];
  sendButtonItem = v4->_sendButtonItem;

  [(UIBarButtonItem *)sendButtonItem setEnabled:v5];
}

void sub_100947384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1009473A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100947470;
    v8[3] = &unk_10162F520;
    v8[4] = *(a1 + 32);
    [v6 enumerateObjectsUsingBlock:v8];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100947470(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 image];
  v4 = [v3 identifier];

  [v2 saveImageData:v5 withIdentifier:v4];
}

void sub_100947BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100947BF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a3 || ![v5 count])
    {
      v7 = sub_100038318();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v12 = 138412290;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "No POI to show for id: %@", &v12, 0xCu);
      }
    }

    else
    {
      v9 = [v5 firstObject];
      v10 = [[MKMapItem alloc] initWithGeoMapItem:v9 isPlaceHolderPlace:0];
      v11 = [[RAPPlaceViewController alloc] initWithMapItem:v10];
      [WeakRetained presentAccessoryViewController:v11];
    }
  }
}

void sub_100947F58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_100947F7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [*(a1 + 32) startAnimating];
    v3 = [v9 webView];
    [v3 resignFirstResponder];

    v4 = [v9 navigationController];
    v5 = [v4 navigationBar];
    [v5 setUserInteractionEnabled:0];

    v6 = *(a1 + 32);
    v7 = [v9 navigationItem];
    v8 = [v7 rightBarButtonItem];
    [v8 setCustomView:v6];

    WeakRetained = v9;
  }
}

void sub_10094804C(id *a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [a1[4] stopAnimating];
    v6 = [WeakRetained navigationController];
    v7 = [v6 navigationBar];
    [v7 setUserInteractionEnabled:1];

    v8 = [WeakRetained navigationItem];
    v9 = [v8 rightBarButtonItem];
    [v9 setCustomView:0];

    if (a3)
    {
      v10 = sub_100BD99D0();
      [WeakRetained presentViewController:v10 animated:1 completion:0];
    }

    else
    {
      if (MapsFeature_IsEnabled_RAPSydney())
      {
        v11 = [UGCCommunityAcknowledgementViewController alloc];
        v12 = +[RAPAcknowledgementOptions defaultOptions];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100948470;
        v33[3] = &unk_101661B18;
        v33[4] = WeakRetained;
        v13 = [(UGCCommunityAcknowledgementViewController *)v11 initWithOptions:v12 completion:v33];

        v14 = [(UGCCommunityAcknowledgementViewController *)v13 navigationItem];
        [v14 setHidesBackButton:1];

        if (sub_10000FA08(WeakRetained) == 5 && ([WeakRetained webBundleQuestion], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "questionType") - 13, v15, v16 <= 7))
        {
          v17 = [(UGCCommunityAcknowledgementViewController *)v13 view];
          [v17 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
          v19 = v18;

          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_100948478;
          v32[3] = &unk_101661650;
          v32[4] = WeakRetained;
          v32[5] = v19;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_1009484CC;
          v30[3] = &unk_101661570;
          v30[4] = WeakRetained;
          v31 = v13;
          [UIView animateWithDuration:v32 animations:v30 completion:UINavigationControllerHideShowBarDuration];
        }

        else
        {
          v24 = [WeakRetained navigationController];
          [v24 pushViewController:v13 animated:1];
        }

        v25 = [(UGCCommunityAcknowledgementViewController *)v13 transitionCoordinator];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100948524;
        v29[3] = &unk_101661710;
        v29[4] = WeakRetained;
        [v25 animateAlongsideTransition:0 completion:v29];
      }

      else
      {
        v20 = [WeakRetained view];
        v21 = [v20 window];

        v22 = +[NSBundle mainBundle];
        v23 = [v22 localizedStringForKey:@"[RAP Web UI] Thanks for your report" value:@"localized string not found" table:0];

        [ActionValidationController presentDefaultValidationActionWithTitle:v23 inWindow:v21];
        [WeakRetained _reportSent];
      }

      v26 = WeakRetained[17];
      v10 = [a1[5] webBundleQuestion];
      v27 = [v10 reportedPlace];
      v28 = [v27 mapItem];
      +[RAPAnalyticsManager captureRAPSendActionFromReport:forMuid:](RAPAnalyticsManager, "captureRAPSendActionFromReport:forMuid:", v26, [v28 _muid]);
    }
  }
}

void sub_100948478(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 updateCardHeight:*(a1 + 40)];
}

void sub_1009484CC(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

void sub_100948524(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 enableDismissByGesture:1];
}

void sub_1009489A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1009489CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained webView];
    v4 = +[WKContentWorld pageWorld];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100948B04;
    v5[3] = &unk_10162F488;
    v5[4] = v2;
    [v3 callAsyncJavaScript:@"return rapGetData()" arguments:0 inFrame:0 inContentWorld:v4 completionHandler:v5];
  }
}

void sub_100948AA0(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    v5 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

void sub_100948B04(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v6;
    v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];

    v5 = [[GEORPFeedbackDynamicForm alloc] initWithData:v4];
    [*(a1 + 32) _uploadForm:v5];
  }
}

void sub_100949904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10094994C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained finishedSubTest:*(a1 + 32)];
    v3 = v5;
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, v5);
      v3 = v5;
    }
  }
}

uint64_t sub_100949A74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100949B1C(uint64_t a1)
{
  v2 = [*(a1 + 32) testCoordinator];
  v3 = [v2 pptTestScrollView];

  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100949BC8;
  v5[3] = &unk_101661B18;
  v5[4] = v4;
  [v4 _performScrollTestOfScrollView:v3 completion:v5];
}

void sub_100949F74(id a1)
{
  v1 = [NSOrderedSet orderedSetWithObjects:&OBJC_PROTOCOL___ACDataSourceDelegate, &OBJC_PROTOCOL___GEOLogContextDelegate, 0];
  v2 = qword_10195DDB0;
  qword_10195DDB0 = v1;
}

id sub_10094B210()
{
  if (qword_10195DDC8 != -1)
  {
    dispatch_once(&qword_10195DDC8, &stru_10162F608);
  }

  v1 = qword_10195DDC0;

  return v1;
}

void sub_10094B264(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsCircularProgressView");
  v2 = qword_10195DDC0;
  qword_10195DDC0 = v1;
}

void sub_10094B5F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a4;
  v8 = a3;
  [v11 removeAnimationForKey:v7];
  +[CATransaction begin];
  v9 = [CABasicAnimation animationWithKeyPath:v8];

  [v9 setDuration:*(*(a1 + 32) + 24)];
  [v9 setFromValue:&off_1016E78C8];
  v10 = [NSNumber numberWithDouble:*(*(a1 + 32) + 16)];
  [v9 setToValue:v10];

  [v9 setRemovedOnCompletion:0];
  [v9 setFillMode:kCAFillModeForwards];
  [v9 setBeginTime:CACurrentMediaTime()];
  if (*(a1 + 40))
  {
    [CATransaction setCompletionBlock:?];
  }

  [v11 addAnimation:v9 forKey:v7];
  +[CATransaction commit];
}

void sub_10094BEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10094BF08(uint64_t a1)
{
  v2 = sub_10094B210();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 134349056;
    v6 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}p] User interface style changed; updating stroke colors", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 updateStrokeColors];
}

uint64_t sub_10094D148(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) __graphDescription];
    if (![v2 length])
    {

      v2 = @"<empty>";
    }

    v3 = [*(a1 + 32) name];
    v4 = [NSString stringWithFormat:@"NSOperationQueue.%@.%p.__graphDescription.txt", v3, *(a1 + 32)];
    v5 = [MapsRadarTextAttachment attachmentWithFileName:v4 text:v2];

    [*(a1 + 40) addAttachment:v5];
    goto LABEL_5;
  }

  v6 = sub_10006D178();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v9 = "[NSOperationQueue(MapsExtras) generateAttachmentsForRadarDraft:withCompletion:]_block_invoke";
    v10 = 2080;
    v11 = "NSOperationQueue+MapsExtras.m";
    v12 = 1024;
    v13 = 44;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v2 = sub_10006D178();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v5 = +[NSThread callStackSymbols];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
LABEL_5:

LABEL_6:
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10094D354(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NSOperationQueueMapsExtras");
  v2 = qword_10195DDD0;
  qword_10195DDD0 = v1;
}

void sub_10094DE8C(id a1, UIWindow *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v3;
  if (v3)
  {
    [(UIWindow *)v3 restoreStashedOverrideUserInterfaceStyle];
  }

  else
  {
    [(UIWindow *)v5 setOverrideUserInterfaceStyle:0];
  }
}

id sub_10094E01C(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v2 = 2;
  }

  else if (*(a1 + 33))
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return [a2 setOverrideUserInterfaceStyle:v2];
}

uint64_t sub_10094EF1C(uint64_t a1)
{
  [*(a1 + 32) _dismissTrafficIncidentMapDisplay];
  v2 = [*(a1 + 32) containerViewController];
  [v2 updateLayoutAnimated:1];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100951138(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100951154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resignTopContextInChromeViewController:*(a1 + 32)];
}

void sub_100951948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10095196C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _becomeTopContextInChromeViewController:*(a1 + 32) animated:*(a1 + 48)];
}

void sub_100951D40(id a1, UIWindow *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v5;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = v3;
  if (v3)
  {
    [(UIWindow *)v3 stashCurrentOverrideUserInterfaceStyle];
  }
}

BOOL sub_100952528(id a1)
{
  +[SARAnalytics captureResumePreviousNavigation];
  v1 = +[MNNavigationService sharedService];
  [v1 resumeOriginalDestination];

  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NavModeControllerResumeOriginalDestinationNotification" object:0];

  return 1;
}

id sub_10095510C(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  v6 = [v5 artwork];
  v7 = [v6 icon];

  v8 = [v7 styleAttributes];
  if (!v8 || (v9 = [[GEOFeatureStyleAttributes alloc] initWithGEOStyleAttributes:v8], +[MKIconManager imageForStyle:size:forScale:format:](MKIconManager, "imageForStyle:size:forScale:format:", v9, a2, 0, a3), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    v10 = sub_100955208([v5 type], a2);
  }

  return v10;
}

id sub_100955208(unint64_t a1, uint64_t a2)
{
  v3 = [MKIconManager imageForTrafficIncidentType:a1 size:a2 forScale:?];
  if (!v3)
  {
    if (a1 > 0xE)
    {
      v3 = 0;
    }

    else
    {
      v3 = [UIImage imageNamed:off_10162F6E8[a1]];
    }
  }

  return v3;
}

id sub_100955280(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 artwork];
  v5 = [v4 icon];

  v6 = [v5 styleAttributes];
  if (!v6 || (v7 = [[GEOFeatureStyleAttributes alloc] initWithGEOStyleAttributes:v6], +[MKIconManager imageForStyle:size:forScale:format:](MKIconManager, "imageForStyle:size:forScale:format:", v7, 4, 0, a2), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    v8 = sub_100955208([VKTrafficIncidentFeature incidentTypeForGeoRouteIncident:v3], 4);
  }

  return v8;
}

uint64_t sub_1009557F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100955808(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100955A64;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1009558B4(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100955970;
  block[3] = &unk_1016562F0;
  v7 = a2;
  v5 = *(a1 + 32);
  v3 = v5;
  v8 = v5;
  v4 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100955970(uint64_t a1)
{
  if (([*(*(*(a1 + 48) + 8) + 40) isCancelled] & 1) == 0)
  {
    if (*(a1 + 32))
    {
      v4 = [[GEOComposedWaypointToRoute alloc] initWithRoute:*(a1 + 32)];
      if ([*(a1 + 32) source] == 2)
      {
        +[GEOFeatureStyleAttributes curatedRouteStyleAttributes];
      }

      else
      {
        +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
      }
      v2 = ;
      [v4 setStyleAttributes:v2];
    }

    else
    {
      v4 = 0;
    }

    v3 = sub_100C2093C(*(a1 + 40));
    (v3)[2](v3, v4, 0);
  }
}

void sub_100955A64(uint64_t a1)
{
  v2 = sub_100C2093C(*(a1 + 40));
  (*(v2 + 2))(v2, 0, *(a1 + 32));
}

id sub_100956464()
{
  if (qword_10195DDF8 != -1)
  {
    dispatch_once(&qword_10195DDF8, &stru_10162F7C8);
  }

  v1 = qword_10195DDF0;

  return v1;
}

void sub_1009564B8(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PedestrianARSafetyView");
  v2 = qword_10195DDF0;
  qword_10195DDF0 = v1;
}

id sub_100956740(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);

  return [v3 setAlpha:v2];
}

void sub_100956A90(id a1)
{
  v3[0] = UIContentSizeCategoryAccessibilityMedium;
  v3[1] = UIContentSizeCategoryAccessibilityLarge;
  v3[2] = UIContentSizeCategoryAccessibilityExtraLarge;
  v3[3] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[4] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v1 = [NSArray arrayWithObjects:v3 count:5];
  v2 = qword_10195DDE0;
  qword_10195DDE0 = v1;
}

void sub_100958284(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195DE30;
  qword_10195DE30 = v1;

  v3 = qword_10195DE30;

  [v3 setUnitStyle:3];
}

void sub_1009582D4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195DE20;
  qword_10195DE20 = v1;
}

void sub_1009585EC(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195DE00;
  qword_10195DE00 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DE00 setLocale:v3];

  v4 = qword_10195DE00;

  [v4 setLocalizedDateFormatFromTemplate:@"J:mm"];
}

void sub_100958E58(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10195DE10;
  qword_10195DE10 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195DE10 setLocale:v3];

  v4 = qword_10195DE10;

  [v4 setTimeStyle:1];
}

void sub_10095A8A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained coordinator];
    v4 = [v3 containerViewController];
    v5 = [v4 chromeViewController];
    v6 = [v5 _maps_mapsSceneDelegate];
    v7 = [v6 topMostPresentedViewController];

    v8 = [v9 coordinator];
    [v8 viewController:v7 presentErrorAlertIfNeeded:*(a1 + 32)];

    WeakRetained = v9;
  }
}

void sub_10095A96C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = *(a1 + 32);
  if (!*(v8 + 272))
  {
    objc_storeStrong((v8 + 272), a2);
    v9 = 24;
    [ExtensionsViewComposer composeBannerView:*(*(a1 + 32) + 192) forRidesharingCurrentRideViewController:*(a1 + 32) rideBookingRideStatus:*(a1 + 40)];
    v10 = *(a1 + 32);
    if (!v10[34])
    {
      v9 = 25;
    }

    [v10 _setBannerViewContainerContentView:v10[v9]];
    v11 = [*(a1 + 32) cardPresentationController];
    [v11 updateHeightForCurrentLayout];
  }

  objc_sync_exit(v7);
}

void sub_10095AA78(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  if (a2)
  {
    objc_storeStrong((*(a1 + 32) + 256), a3);
    [*(*(a1 + 32) + 304) setEnabled:1];
  }

  objc_sync_exit(v6);
}

void sub_10095BA8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10095BAB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if (v9)
    {
      [WeakRetained _cleanupWithRideStatus:*(a1 + 32)];
    }

    else
    {
      v13 = [*(a1 + 32) application];
      v14 = [v13 name];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10095BCFC;
      v16[3] = &unk_10165F3F0;
      objc_copyWeak(&v19, (a1 + 40));
      v17 = *(a1 + 32);
      v18 = 0;
      v15 = [v11 _cancelConfirmationAlertControllerForApp:v14 withFee:v7 threshold:v8 continueBlock:v16];

      [v11 presentViewController:v15 animated:1 completion:0];
      objc_destroyWeak(&v19);
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "RidesharingConfirmedRideViewController.m";
      v22 = 1026;
      v23 = 299;
      v24 = 2082;
      v25 = "[RidesharingConfirmedRideViewController _cancelTapped:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10095BCFC(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = [WeakRetained rideStatusObserverProxy];
      v7 = a1[4];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10095BF00;
      v10[3] = &unk_10165D238;
      objc_copyWeak(&v13, a1 + 6);
      v11 = a1[5];
      v12 = a1[4];
      [v6 cancelRideWithRideStatus:v7 completion:v10];

      objc_destroyWeak(&v13);
    }

    else
    {
      v9 = [WeakRetained cancelButton];
      [v9 setSpinnerHidden:1];
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v15 = "RidesharingConfirmedRideViewController.m";
      v16 = 1026;
      v17 = 307;
      v18 = 2082;
      v19 = "[RidesharingConfirmedRideViewController _cancelTapped:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf2 went away in %{public}s", buf, 0x1Cu);
    }
  }
}

void sub_10095BF00(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446722;
      v8 = "RidesharingConfirmedRideViewController.m";
      v9 = 1026;
      v10 = 315;
      v11 = 2082;
      v12 = "[RidesharingConfirmedRideViewController _cancelTapped:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf3 went away in %{public}s", &v7, 0x1Cu);
    }

    goto LABEL_8;
  }

  if (!*(a1 + 32))
  {
    v6 = [WeakRetained coordinator];
    [v6 viewController:v5 minimizeConfirmation:0];
LABEL_8:

    goto LABEL_9;
  }

  [WeakRetained _cleanupWithRideStatus:*(a1 + 40)];
LABEL_9:
}

void sub_10095C278(uint64_t a1)
{
  [*(*(a1 + 32) + 224) updateLayout];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_10095C4B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10095C590;
  block[3] = &unk_1016605F8;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10095C678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) firstObject];
    v4 = WeakRetained[44];
    WeakRetained[44] = v3;

    *(*(a1 + 40) + 265) = 0;
    [WeakRetained _updateFromRideStatus:WeakRetained[36]];
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446722;
      v7 = "RidesharingConfirmedRideViewController.m";
      v8 = 1026;
      v9 = 235;
      v10 = 2082;
      v11 = "[RidesharingConfirmedRideViewController extensionManager:didUpdateAvailableExtensions:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v6, 0x1Cu);
    }
  }
}

void sub_10095CDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10095CDEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingConfirmedRideViewController.m");
      v10 = [[NSString alloc] initWithFormat:@"Submit handler was tapped in feedback view. Rating: %@, tip: %@", v5, v6];
      *buf = 136315394;
      v25 = v9;
      v26 = 2112;
      v27[0] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
    }

    v11 = [WeakRetained[36] identifier];
    if ([v11 length])
    {
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", 2 * [v5 integerValue]);
      v13 = +[MKMapService sharedService];
      [v13 captureUserAction:14009 onTarget:1406 eventValue:0];

      [WeakRetained[41] sendFeedbackForRideStatus:WeakRetained[36] feedbackRating:v12 feedbackTip:v6 completion:&stru_10162F8B0];
      v14 = objc_loadWeakRetained(WeakRetained + 35);
      [v14 viewControllerSendFeedbackAction];
    }

    else
    {
      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingConfirmedRideViewController.m");
        v17 = [[NSString alloc] initWithFormat:@"Trying to submit feedback, but the rideIdentifier is invalid. rideIdentifier: %@", v11];
        *buf = 136315394;
        v25 = v16;
        v26 = 2112;
        v27[0] = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "{RBError}{%s}: %@", buf, 0x16u);
      }

      v18 = +[NSBundle mainBundle];
      v12 = [v18 localizedStringForKey:@"ridesharing submit feedback error title" value:@"localized string not found" table:0];

      v19 = +[NSBundle mainBundle];
      v14 = [v19 localizedStringForKey:@"ridesharing submit feedback error message" value:@"localized string not found" table:0];

      v20 = [UIAlertController alertControllerWithTitle:v12 message:v14 preferredStyle:1];
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"ridesharing submit feedback error button ok" value:@"localized string not found" table:0];
      v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:0];
      [v20 addAction:v23];

      [WeakRetained presentViewController:v20 animated:1 completion:0];
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "RidesharingConfirmedRideViewController.m";
      v26 = 1026;
      LODWORD(v27[0]) = 189;
      WORD2(v27[0]) = 2082;
      *(v27 + 6) = "[RidesharingConfirmedRideViewController viewDidLoad]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", buf, 0x1Cu);
    }

    v11 = v12;
  }
}

void sub_10095D230(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _openAppTapped];
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136446722;
      v5 = "RidesharingConfirmedRideViewController.m";
      v6 = 1026;
      v7 = 220;
      v8 = 2082;
      v9 = "[RidesharingConfirmedRideViewController viewDidLoad]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v4, 0x1Cu);
    }
  }
}

uint64_t sub_10095D4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _containingAppIdentifer];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    v5 = [v3 extensionPointIdentifier];
    v6 = [v5 isEqual:INIntentsUIServiceExtensionPointName];

    if (v6)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v7 = +[_MXExtensionManager _maps_ridesharingIntentClassesForUIInteraction];
      v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v7);
            }

            if ([v3 canSupportIntentClass:*(*(&v11 + 1) + 8 * i)])
            {
              v6 = 1;
              goto LABEL_14;
            }
          }

          v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10095E23C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) getRequestCountForType:a2 andApp:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;
    v6 = GEODataRequestKindAsString();
    v7 = [*(a1 + 48) objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = objc_opt_new();
      [v7 setObject:&off_1016E78E0 forKeyedSubscript:@"xmitB"];
      [v7 setObject:&off_1016E78E0 forKeyedSubscript:@"recvB"];
      v8 = objc_opt_new();
      [v7 setObject:v8 forKeyedSubscript:@"apps"];

      [*(a1 + 48) setObject:v7 forKeyedSubscript:v6];
      [*(a1 + 56) addObject:v6];
    }

    v9 = [*(a1 + 64) xmitBytesForType:a2];
    v10 = [*(a1 + 64) recvBytesForType:a2];
    v11 = [v7 objectForKeyedSubscript:@"xmitB"];
    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v9[[v11 unsignedIntegerValue]]);
    [v7 setObject:v12 forKeyedSubscript:@"xmitB"];

    v13 = [v7 objectForKeyedSubscript:@"recvB"];
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v10[[v13 unsignedIntegerValue]]);
    [v7 setObject:v14 forKeyedSubscript:@"recvB"];

    v15 = [NSByteCountFormatter stringFromByteCount:v9 countStyle:3];
    v16 = [NSByteCountFormatter stringFromByteCount:v10 countStyle:3];
    v17 = [v7 objectForKeyedSubscript:@"apps"];
    v22[0] = *(a1 + 40);
    v21[0] = @"name";
    v21[1] = @"count";
    v18 = [NSNumber numberWithUnsignedInteger:v5];
    v19 = [v18 stringValue];
    v22[1] = v19;
    v22[2] = v15;
    v21[2] = @"xmitB";
    v21[3] = @"recvB";
    v22[3] = v16;
    v20 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
    [v17 addObject:v20];
  }
}

uint64_t sub_10095E6C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10095FB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10095FB3C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10095FBD4;
  v2[3] = &unk_101661340;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v2);
  objc_destroyWeak(&v3);
}

void sub_10095FBD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 508) = 1;
    [*(a1 + 32) _updateETACalloutFromDetailsPickingProviderAndMapMoving];
  }

  else
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136446722;
      v6 = "RidesharingContainerViewController.m";
      v7 = 1026;
      v8 = 209;
      v9 = 2082;
      v10 = "[RidesharingContainerViewController requestRideStatusDidChange:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v5, 0x1Cu);
    }
  }
}

void sub_10095FF6C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

id sub_100960380(uint64_t a1)
{
  [*(a1 + 32) _updateETACalloutFromDetailsPickingProviderAndMapMoving];
  v2 = *(a1 + 32);

  return [v2 _moveMapToNewStartWaypointIfNeededAnimated:0];
}

BOOL sub_100960CE4()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1 == 320.0;

  return v2;
}

NSArray *__cdecl sub_100960EAC(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = +[CarDisplayController sharedInstance];
  v6 = [v5 isCurrentlyConnectedToAnyCarScene];

  if (v6)
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      v8 = "Currently connected, will not purge contexts.";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, &v15, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = [(NSArray *)v4 indexOfObjectPassingTest:&stru_10162FF40];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      v8 = "No contexts invalid after disconnect.";
      goto LABEL_7;
    }

LABEL_8:

    v10 = v4;
    goto LABEL_15;
  }

  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_100006E1C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218240;
    v16 = v11;
    v17 = 2048;
    v18 = [(NSArray *)v4 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%lu/%lu contexts valid after disconnect.", &v15, 0x16u);
  }

  v10 = [(NSArray *)v4 subarrayWithRange:0, v11];
LABEL_15:
  v13 = v10;

  return v13;
}

BOOL sub_100961064(id a1, CarChromeContext *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(CarChromeContext *)v5 invalidAfterDisconnect])
  {
    v6 = 1;
    *a4 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10096127C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10096129C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained keyboardMode];
  [v1 popFromContext:v2];
}

id sub_100961514(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[CarSharedTripsContext alloc] initWithInitialSelectedSharedTrip:*(a1 + 32)];
  v6 = [v4 arrayByAddingObject:v5];

  return v6;
}

NSArray *__cdecl sub_100961760(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = objc_alloc_init(CarSharedTripsContext);
  v6 = [(NSArray *)v4 arrayByAddingObject:v5];

  return v6;
}

void sub_1009618A4(id a1, ChromeViewController *a2)
{
  v6 = a2;
  v2 = [(ChromeViewController *)v6 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = [(ChromeViewController *)v6 topContext];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass();

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = [(ChromeViewController *)v6 topContext];
  }

  [v4 setCameraStyle:2 animated:1];

LABEL_5:
}

void sub_10096196C(id a1, ChromeViewController *a2)
{
  v5 = a2;
  v2 = [(ChromeViewController *)v5 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [(ChromeViewController *)v5 topContext];
    [v4 setCameraStyle:2 animated:1];
  }
}

void sub_100961AD0(id a1, ChromeViewController *a2)
{
  v6 = a2;
  v2 = [(ChromeViewController *)v6 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = [(ChromeViewController *)v6 topContext];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass();

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = [(ChromeViewController *)v6 topContext];
  }

  [v4 setCameraStyle:1 animated:1];

LABEL_5:
}

void sub_100961B98(id a1, ChromeViewController *a2)
{
  v5 = a2;
  v2 = [(ChromeViewController *)v5 topContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [(ChromeViewController *)v5 topContext];
    [v4 setCameraStyle:1 animated:1];
  }
}

NSArray *__cdecl sub_100961C44(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = sub_100799D40();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will end navigation by moving to CarSmallWidgetBrowsingModeController.", &v13, 2u);
  }

  v6 = [(NSArray *)v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(NSArray *)v4 firstObject];
    v15 = v8;
    v9 = &v15;
  }

  else
  {
    v10 = sub_100799D40();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Didn't find CarSmallWidgetBrowsingModeController in the mode stack, creating a fresh one.", &v13, 2u);
    }

    v8 = objc_alloc_init(CarSmallWidgetBrowsingModeController);
    v14 = v8;
    v9 = &v14;
  }

  v11 = [NSArray arrayWithObjects:v9 count:1];

  return v11;
}

NSArray *__cdecl sub_100961DC4(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = sub_100799BCC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Will end navigation by moving to CarMapWidgetMapBrowsingModeController.", &v13, 2u);
  }

  v6 = [(NSArray *)v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(NSArray *)v4 firstObject];
    v15 = v8;
    v9 = &v15;
  }

  else
  {
    v10 = sub_100799BCC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Didn't find CarMapWidgetMapBrowsingModeController in the mode stack, creating a fresh one.", &v13, 2u);
    }

    v8 = objc_alloc_init(CarMapWidgetMapBrowsingModeController);
    v14 = v8;
    v9 = &v14;
  }

  v11 = [NSArray arrayWithObjects:v9 count:1];

  return v11;
}

NSArray *__cdecl sub_100961F44(id a1, ChromeViewController *a2, NSArray *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(NSArray *)v4 count];
  v6 = [NSPredicate predicateWithBlock:&stru_10162FDC0];
  v7 = [(NSArray *)v4 filteredArrayUsingPredicate:v6];

  v8 = [v7 count];
  if (![v7 count])
  {
    v9 = sub_100006E1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Didn't find CarMapBrowsingModeController in the mode stack, creating a fresh one.", &v15, 2u);
    }

    v10 = +[CarChromeModeCoordinator createHomeContext];
    v17 = v10;
    v11 = [NSArray arrayWithObjects:&v17 count:1];

    v7 = v11;
  }

  v12 = sub_100006E1C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [NSNumber numberWithUnsignedInteger:v5 - v8];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Will end navigation by removing %@ navigation-related contexts", &v15, 0xCu);
  }

  return v7;
}

BOOL sub_100962108(id a1, ChromeContext *a2, NSDictionary *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

id sub_1009622F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[CarDisplayController sharedInstance];
  v6 = [v5 platformController];
  v7 = [v6 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v9 navigationType];
    v11 = [v9 currentTransportType];
    if ([v9 isCarNavigationCompatible])
    {
      +[CarSearchCategoriesModeController prepareNearbySAR];
      v12 = off_1015F6138;
    }

    else
    {
      v12 = off_1015F6120;
    }

    v23 = [v4 _maps_lastContextOfClass:objc_opt_class()];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = objc_alloc_init(*v12);
      if (!v24)
      {
        v25 = 1;
LABEL_31:
        v34 = sub_100006E1C();
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
LABEL_50:

          v22 = [v4 _maps_subarrayToIndex:{objc_msgSend(v4, "indexOfObject:", v24)}];
LABEL_63:

          goto LABEL_64;
        }

        v35 = v24;
        if (v25)
        {
          v36 = @"<nil>";
LABEL_40:

          if ((v10 - 1) > 3)
          {
            v41 = @"None";
          }

          else
          {
            v41 = *(&off_10162FF60 + (v10 - 1));
          }

          if ((v11 - 1) > 4)
          {
            v42 = @"Undefined";
          }

          else
          {
            v42 = *(&off_10162FF80 + (v11 - 1));
          }

          if (*(a1 + 32))
          {
            v43 = @"YES";
          }

          else
          {
            v43 = @"NO";
          }

          v44 = v43;
          *buf = 138413058;
          v56 = v36;
          v57 = 2112;
          v58 = v41;
          v59 = 2112;
          v60 = v42;
          v61 = 2112;
          v62 = v44;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Will pop to existing %@ (navigationType:%@, transportType:%@, animated:%@)", buf, 0x2Au);

          goto LABEL_50;
        }

        v54 = v11;
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        if (objc_opt_respondsToSelector())
        {
          v39 = [v35 performSelector:"accessibilityIdentifier"];
          v40 = v39;
          if (v39 && ![v39 isEqualToString:v38])
          {
            v36 = [NSString stringWithFormat:@"%@<%p, %@>", v38, v35, v40];

            goto LABEL_39;
          }
        }

        v36 = [NSString stringWithFormat:@"%@<%p>", v38, v35];
LABEL_39:

        v11 = v54;
        goto LABEL_40;
      }
    }

    if ([v4 containsObject:v24])
    {
      v25 = 0;
      goto LABEL_31;
    }

    v26 = sub_100006E1C();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
LABEL_59:

      v48 = [NSMutableArray arrayWithCapacity:2];
      v49 = [v4 firstObject];
      +[CarChromeModeCoordinator getHomeContextClass];
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v4 firstObject];
      }

      else
      {
        +[CarChromeModeCoordinator createHomeContext];
      }
      v51 = ;
      [v48 addObject:v51];

      [v48 addObject:v24];
      v22 = [v48 copy];

      goto LABEL_63;
    }

    v53 = v11;
    v27 = v24;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    if (objc_opt_respondsToSelector())
    {
      v30 = [v27 performSelector:"accessibilityIdentifier"];
      v31 = v30;
      if (v30 && ![v30 isEqualToString:v29])
      {
        v32 = [NSString stringWithFormat:@"%@<%p, %@>", v29, v27, v31];

        goto LABEL_28;
      }
    }

    v32 = [NSString stringWithFormat:@"%@<%p>", v29, v27];
LABEL_28:

    if ((v10 - 1) > 3)
    {
      v33 = @"None";
    }

    else
    {
      v33 = *(&off_10162FF60 + (v10 - 1));
    }

    if ((v53 - 1) > 4)
    {
      v45 = @"Undefined";
    }

    else
    {
      v45 = *(&off_10162FF80 + (v53 - 1));
    }

    if (*(a1 + 32))
    {
      v46 = @"YES";
    }

    else
    {
      v46 = @"NO";
    }

    v47 = v46;
    *buf = 138413058;
    v56 = v32;
    v57 = 2112;
    v58 = v33;
    v59 = 2112;
    v60 = v45;
    v61 = 2112;
    v62 = v47;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Will push %@ onto CarMapBrowsingModeController (navigationType:%@, transportType:%@, animated:%@)", buf, 0x2Au);

    goto LABEL_59;
  }

  v13 = sub_100006E1C();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = +[CarDisplayController sharedInstance];
    v15 = [v14 platformController];
    v16 = [v15 currentSession];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138412290;
    v56 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Coordinator tried to display navigation, but current session was of class: %@", buf, 0xCu);
  }

  v19 = sub_10006D178();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v56 = "[CarChromeModeCoordinator _displayNavigationAnimated:]_block_invoke";
    v57 = 2080;
    v58 = "CarChromeModeCoordinator.m";
    v59 = 1024;
    LODWORD(v60) = 1264;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v20 = sub_10006D178();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v56 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v22 = v4;
LABEL_64:

  return v22;
}

id sub_100962A1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[CarDisplayController sharedInstance];
  v8 = [v7 platformController];
  v9 = [v8 currentSession];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [v11 navigationType];
    v13 = [v11 currentTransportType];
    if (![v11 isCarNavigationCompatible])
    {
      v32 = sub_100799BCC();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Mode coordinator will not create navigation incompatible mode for the map widget, because we don't support that yet.", buf, 2u);
      }

      v26 = 0;
      goto LABEL_26;
    }

    v14 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v74 = sub_10006D178();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v83 = "[CarChromeModeCoordinator _displayNavigationAnimated:]_block_invoke";
        v84 = 2080;
        v85 = "CarChromeModeCoordinator.m";
        v86 = 1024;
        *v87 = 1318;
        *&v87[4] = 2080;
        *&v87[6] = "carChromeViewController != nil";
        _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v75 = sub_10006D178();
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          v76 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v83 = v76;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if ([v16 sceneType] == 6)
    {
      v17 = [v16 view];
      v18 = [v17 window];
      v19 = [v18 _car_hybridInstrumentClusterLayout];

      if (v19)
      {
        v20 = [v6 _maps_lastContextOfClass:objc_opt_class()];
        if (!v20)
        {
          v21 = [CarHybridInstrumentClusterNavigationModeController alloc];
          v22 = [v16 view];
          [v22 window];
          v23 = v6;
          v25 = v24 = v12;
          v26 = -[CarHybridInstrumentClusterNavigationModeController initWithPresentationType:](v21, "initWithPresentationType:", [v25 _car_hybridInstrumentClusterPresentationType]);

          v12 = v24;
          v6 = v23;
LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {
        v20 = [v6 _maps_lastContextOfClass:objc_opt_class()];
        if (!v20)
        {
          v26 = objc_alloc_init(CarSmallWidgetNavigationModeController);
LABEL_30:

          if (!v26)
          {
LABEL_26:
            v33 = 1;
            goto LABEL_36;
          }

LABEL_34:
          if ([v6 containsObject:v26])
          {
            v33 = 0;
LABEL_36:
            v41 = sub_100799BCC();
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
LABEL_63:

              v31 = [v6 _maps_subarrayToIndex:{objc_msgSend(v6, "indexOfObject:", v26)}];
LABEL_76:

              goto LABEL_77;
            }

            v80 = v5;
            v42 = a1;
            v43 = v13;
            v44 = v26;
            v79 = v6;
            if (v33)
            {
              v45 = @"<nil>";
LABEL_53:

              if ((v12 - 1) > 3)
              {
                v61 = @"None";
              }

              else
              {
                v61 = *(&off_10162FF60 + (v12 - 1));
              }

              if ((v43 - 1) > 4)
              {
                v62 = @"Undefined";
              }

              else
              {
                v62 = *(&off_10162FF80 + (v43 - 1));
              }

              if (*(v42 + 40))
              {
                v63 = @"YES";
              }

              else
              {
                v63 = @"NO";
              }

              v64 = v63;
              *buf = 138413058;
              v83 = v45;
              v84 = 2112;
              v85 = v61;
              v86 = 2112;
              *v87 = v62;
              *&v87[8] = 2112;
              *&v87[10] = v64;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Will pop to existing %@ (navigationType:%@, transportType:%@, animated:%@)", buf, 0x2Au);

              v6 = v79;
              v5 = v80;
              goto LABEL_63;
            }

            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            if (objc_opt_respondsToSelector())
            {
              v59 = [(CarSmallWidgetNavigationModeController *)v44 performSelector:"accessibilityIdentifier"];
              v60 = v59;
              if (v59 && ![v59 isEqualToString:v58])
              {
                v45 = [NSString stringWithFormat:@"%@<%p, %@>", v58, v44, v60];

                goto LABEL_52;
              }
            }

            v45 = [NSString stringWithFormat:@"%@<%p>", v58, v44];
LABEL_52:

            goto LABEL_53;
          }

          v46 = sub_100799BCC();
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
LABEL_72:

            v68 = [NSMutableArray arrayWithCapacity:2];
            v69 = [v6 firstObject];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v71 = [v6 firstObject];
            }

            else
            {
              v71 = objc_opt_new();
            }

            v72 = v71;
            [v68 addObject:v71];

            [v68 addObject:v26];
            v31 = [v68 copy];

            goto LABEL_76;
          }

          v81 = v5;
          v77 = a1;
          v47 = v13;
          v48 = v26;
          v49 = objc_opt_class();
          v50 = NSStringFromClass(v49);
          if (objc_opt_respondsToSelector())
          {
            v51 = [(CarSmallWidgetNavigationModeController *)v48 performSelector:"accessibilityIdentifier"];
            v52 = v51;
            if (v51 && ![v51 isEqualToString:v50])
            {
              v53 = v6;
              v54 = v12;
              v55 = [NSString stringWithFormat:@"%@<%p, %@>", v50, v48, v52];

              goto LABEL_45;
            }
          }

          v53 = v6;
          v54 = v12;
          v55 = [NSString stringWithFormat:@"%@<%p>", v50, v48];
LABEL_45:

          if ((v54 - 1) > 3)
          {
            v56 = @"None";
          }

          else
          {
            v56 = *(&off_10162FF60 + (v54 - 1));
          }

          v6 = v53;
          if ((v47 - 1) > 4)
          {
            v65 = @"Undefined";
          }

          else
          {
            v65 = *(&off_10162FF80 + (v47 - 1));
          }

          if (*(v77 + 40))
          {
            v66 = @"YES";
          }

          else
          {
            v66 = @"NO";
          }

          v67 = v66;
          *buf = 138413058;
          v83 = v55;
          v84 = 2112;
          v85 = v56;
          v86 = 2112;
          *v87 = v65;
          *&v87[8] = 2112;
          *&v87[10] = v67;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Will push %@ onto CarMapWidgetMapBrowsingModeController (navigationType:%@, transportType:%@, animated:%@)", buf, 0x2Au);

          v5 = v81;
          goto LABEL_72;
        }
      }
    }

    else
    {
      v20 = [v6 _maps_lastContextOfClass:objc_opt_class()];
      if (!v20)
      {
        v34 = [CarMapWidgetNavigationModeController alloc];
        v22 = [*(a1 + 32) carChromeViewController];
        [v22 view];
        v78 = v6;
        v36 = v35 = v12;
        [v36 window];
        v37 = v5;
        v38 = a1;
        v40 = v39 = v13;
        v26 = -[CarMapWidgetNavigationModeController initWithPresentationType:](v34, "initWithPresentationType:", [v40 _car_hybridInstrumentClusterPresentationType]);

        v13 = v39;
        a1 = v38;
        v5 = v37;

        v12 = v35;
        v6 = v78;
        goto LABEL_29;
      }
    }

    v26 = v20;

    goto LABEL_34;
  }

  v27 = sub_100799BCC();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Tried to display navigation mode, but currentSession was not a navigation session.", buf, 2u);
  }

  v28 = sub_10006D178();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v83 = "[CarChromeModeCoordinator _displayNavigationAnimated:]_block_invoke";
    v84 = 2080;
    v85 = "CarChromeModeCoordinator.m";
    v86 = 1024;
    *v87 = 1308;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = +[NSThread callStackSymbols];
      *buf = 138412290;
      v83 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v31 = v6;
LABEL_77:

  return v31;
}