void sub_100020A88(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 setTransitionLoadingToResultWithResultSize:{*(*(a1 + 32) + 336), *(*(a1 + 32) + 344)}];
}

id *sub_100020AEC(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] containerView];
    [v3 setIsInVoiceLatency:0];

    v4 = v2[4];
    v5 = v4[19];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100020BF0;
    v8[3] = &unk_100167010;
    v8[4] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100020C88;
    v6[3] = &unk_100166FC0;
    v6[4] = v4;
    v7 = *(v2 + 40);
    return [UIView _animateUsingSpringBehavior:v5 tracking:0 animations:v8 completion:v6];
  }

  return result;
}

void sub_100020BF0(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 transitionToResult];

  v3 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  [v3 setNeedsLayout];

  v4 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  [v4 layoutIfNeeded];
}

id sub_100020C88(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRSystemAssistantExperienceViewController performSinglePillExpandAnimation]_block_invoke_5";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s #droplet expanding latency pill, no previous smart dialog", &v5, 0xCu);
  }

  [*(*(a1 + 32) + 224) setSmartDialogAnimationInProgress:0];
  v3 = [*(a1 + 32) containerView];
  [v3 applyDestOverFilter:0];

  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _addFeedbackButton];
  }

  [*(a1 + 32) setRevealRecognizedSpeech:0];
  return [*(a1 + 32) _presentContinuerSuggestions];
}

void sub_100020EEC(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 transitionFromResultToCollapseLoading];
}

void sub_100020F30(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 startLatencyLightOnActivePill];

  v3 = [*(a1 + 32) containerView];
  [v3 cleanupResultTransitionIfNeeded];
}

id sub_1000211D0(uint64_t a1)
{
  if (SiriSharedUIReducedMotionEnabled())
  {
    v2 = [*(a1 + 32) containerView];
    v3 = SiriSharedUIMitosisDuration * 1.5;
    *&v3 = SiriSharedUIMitosisDuration * 1.5;
    [v2 reduceMotionCarouselWithDuration:0 isFirstSnippet:v3];
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 160);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000212E4;
  v8[3] = &unk_100167010;
  v8[4] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002134C;
  v7[3] = &unk_100167038;
  v7[4] = v4;
  return [UIView _animateUsingSpringBehavior:v5 tracking:1 animations:v8 completion:v7];
}

void sub_1000212E4(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 transitionMergedResults];

  v3 = [*(a1 + 32) containerView];
  [v3 postPillMergeBounce];
}

id sub_10002134C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 224) userUtterance];
  v3 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  v4 = [v3 userUtteranceViewModel];
  v5 = v4;
  if (v2 == v4)
  {
  }

  else
  {
    v6 = [*(*(a1 + 32) + 224) shouldPreserveResultSpace];

    if (v6)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100021468;
      v8[3] = &unk_100167010;
      v8[4] = *(a1 + 32);
      [UIView animateWithDuration:v8 animations:SiriSharedUIUserUtteranceUpdateDuration];
    }
  }

  return [*(a1 + 32) _executePendingBlocksForTransition];
}

void sub_100021468(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  v2 = [*(*(a1 + 32) + 224) userUtterance];
  [v3 setUserUtteranceViewModel:v2];
}

id sub_1000214E4(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 stopLatencyBreathingLoop];

  v3 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002168C;
  v9[3] = &unk_100167010;
  v9[4] = *(a1 + 32);
  [UIView _animateUsingSpringBehavior:v3 tracking:0 animations:v9 completion:0];

  if ([*(*(a1 + 32) + 224) shouldPreserveResultSpace])
  {
    return [*(*(a1 + 32) + 224) setSmartDialogAnimationInProgress:0];
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  v7[4] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000216E4;
  v8[3] = &unk_100167010;
  v8[4] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002177C;
  v7[3] = &unk_100167038;
  return [UIView _animateUsingSpringBehavior:v6 tracking:0 animations:v8 completion:v7];
}

void sub_10002168C(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  v1 = [*(a1 + 32) containerView];
  [v1 setMergedResultsForTransition];
}

void sub_1000216E4(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 transitionToResult];

  v3 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  [v3 setNeedsLayout];

  v4 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  [v4 layoutIfNeeded];
}

id sub_10002177C(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SRSystemAssistantExperienceViewController performPillMergeAndCrossfadeAnimation]_block_invoke_8";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s #droplet merging latency pill with existing smart dialog", &v7, 0xCu);
  }

  v3 = [*(a1 + 32) containerView];
  [v3 setIsInVoiceLatency:0];

  v4 = [*(a1 + 32) containerView];
  [v4 cleanupResultTransitionIfNeeded];

  [*(*(a1 + 32) + 224) setSmartDialogAnimationInProgress:0];
  v5 = [*(a1 + 32) containerView];
  [v5 applyDestOverFilter:0];

  [*(a1 + 32) setRevealRecognizedSpeech:0];
  return [*(a1 + 32) _presentContinuerSuggestions];
}

id sub_1000219E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 152);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100021A70;
  v4[3] = &unk_100167010;
  v4[4] = v1;
  return [UIView _animateUsingSpringBehavior:v2 tracking:0 animations:v4 completion:0];
}

void sub_100021A70(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 transitionVoiceLoadingToLoading];
}

uint64_t sub_100021C94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100021CAC(uint64_t a1)
{
  v5 = [*(a1 + 32) containerView];
  v2 = [v5 transitionToRemovedResponseElements:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100021D18(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 cleanupResponseElementsByIds:*(*(*(a1 + 40) + 8) + 40)];

  [*(*(a1 + 32) + 224) removeResponseElements:*(a1 + 48)];
  v3 = [*(a1 + 32) delegate];
  v4 = [v3 isPresentingVisualIntelligenceCamera];

  if (v4)
  {
    v5 = [*(a1 + 32) containerView];
    [v5 didDismissResults];
  }
}

void sub_100022010(uint64_t a1)
{
  v1 = [*(a1 + 32) textFieldContainerView];
  [v1 transitionToSuggestionsCollapsed];
}

void sub_100022544(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setCompactViewHasContent:1];
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = [*(a1 + 40) hasContentForState:*(a1 + 32)];
      v5 = *(v3 + 16);

      v5(v3, v4);
    }
  }

  else
  {
    v6 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100022650;
    v7[3] = &unk_1001670B0;
    v8 = *(a1 + 32);
    v10 = *(a1 + 56);
    v9 = *(a1 + 40);
    [v6 hasContentAtPoint:v7 completion:{*(a1 + 64), *(a1 + 72)}];
  }
}

id sub_100022650(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setCompactViewHasContent:a2];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = [*(a1 + 40) hasContentForState:*(a1 + 32)];
    v6 = *(v4 + 16);

    return v6(v4, v5);
  }

  return result;
}

void sub_1000229FC(uint64_t a1)
{
  v2 = [*(a1 + 32) textFieldContainerView];
  [v2 transitionToUpdatedContentInset];

  v3 = [*(a1 + 32) containerView];
  [v3 transitionToUpdatedContentInset];
}

void sub_10002337C(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(SiriSharedUIViewControlling *)v2 siriDidDeactivate];
  }
}

void sub_100023954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained view];
  v4 = [v3 traitCollection];
  v5 = [v4 isAmbientPresented];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _updateAmbientAvailability];
  }
}

void sub_100024380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000243A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100024468;
  v6[3] = &unk_100167168;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v10 = *(a1 + 48);
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v9);
}

void sub_100024468(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([*(a1 + 32) count])
    {
      [*(a1 + 40) processSuggestionViewWrappers:*(a1 + 32)];
      v3 = [WeakRetained _isTextInputAndKeyboardShowing];
      if (v3 && (*(*(a1 + 40) + 41) & 1) == 0)
      {
        [WeakRetained _addSuggestionsToContainer];
        if ((*(a1 + 56) & 1) == 0)
        {
          [WeakRetained[16] setBool:1 forKey:SRUIFPreferencesConversationStartersShownSinceOSInstalled];
        }
      }

      else
      {
        v4 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v5 = v4;
          v6 = [NSNumber numberWithBool:v3];
          v7 = [NSNumber numberWithBool:*(*(a1 + 40) + 41)];
          v16 = 136315650;
          v17 = "[SRSystemAssistantExperienceViewController _setUpConversationStarterSuggestions:isVoiceTrigger:invocationSource:]_block_invoke";
          v18 = 2112;
          v19 = v6;
          v20 = 2112;
          v21 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #suggestions - skipped starter suggestions from rendering shouldRenderStarterSuggestions: %@, _suggestionsDisplayed: %@", &v16, 0x20u);
        }
      }
    }

    else
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CAA70(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

void sub_100024764(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 suggestionText];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 view];

  [v6 addObject:v7];
}

void sub_100024E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100024EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 count];
    if (v5)
    {
      v6 = v5;
      [NSMutableArray arrayWithCapacity:v5];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000250FC;
      v7 = v22[3] = &unk_100167220;
      v23 = v7;
      [v3 enumerateObjectsUsingBlock:v22];
      v8 = [NSMutableArray arrayWithCapacity:v6];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100025154;
      v20[3] = &unk_100167220;
      v9 = v8;
      v21 = v9;
      [v3 enumerateObjectsUsingBlock:v20];
      v10 = *(a1 + 32);
      if (*(v10 + 46) == 1 && *(v10 + 216) == 1)
      {
        v11 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v25 = "[SRSystemAssistantExperienceViewController _setUpConversationContinuerSuggestions:forRequestId:currentMode:]_block_invoke_3";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s #suggestions: setting continuer suggestions for rendering", buf, 0xCu);
        }

        objc_storeStrong(WeakRetained + 9, v8);
      }
    }

    else
    {
      v12 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CAB6C(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }
}

void sub_1000250FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 suggestionText];
  [v2 addObject:v3];
}

void sub_100025154(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 view];
  [v2 addObject:v3];
}

void sub_100025414(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_100025450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[35] suggestionTapAnimationWithIndex:a3 isTouchUp:0];
    WeakRetained = v5;
  }
}

void sub_1000254B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 42) = 1;
    [WeakRetained[35] suggestionTapAnimationWithIndex:a3 isTouchUp:1];
    if (([v7[28] activeSmartDialogIsLatencyPill] & 1) == 0)
    {
      *(v7 + 44) = 1;
      [v7[36] makeTextViewVisible:0];
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v13 = "[SRSystemAssistantExperienceViewController createSuggestionsViewProvider]_block_invoke_2";
        v14 = 2048;
        v15 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #droplet animating suggestion #%ld to middle", buf, 0x16u);
      }

      v9 = v7[35];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10002566C;
      v10[3] = &unk_100167298;
      v10[4] = v7;
      v11 = v5;
      [v9 transitionToSuggestionsCollapsedWithIndex:a3 animated:1 completionBlock:v10];
    }
  }
}

void sub_10002566C(uint64_t a1)
{
  [*(*(a1 + 32) + 280) removeSuggestions];
  [*(*(a1 + 32) + 288) makeTextViewVisible:1];
  v2 = [*(a1 + 40) encodedToolInvocationData];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(*(a1 + 32) + 288);
  v6 = [*(a1 + 40) displayText];
  [v5 setText:v6];

  v7 = *(*(a1 + 32) + 288);
  v8 = [*(a1 + 40) invocationText];
  [v7 promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:v8 suggestionRequestType:{objc_msgSend(*(a1 + 40), "suggestionRequestType")}];
}

void sub_100025754(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 45) & 1) == 0 && [WeakRetained[34] shouldExecuteContinuerAction:a3])
  {
    *(v7 + 45) = 1;
    [v7[34] prepareForPillMergeContinuerWithIndex:a3];
    v8 = dispatch_time(0, (SiriSharedUIMitosisDuration * 0.75 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002588C;
    block[3] = &unk_100167328;
    block[4] = v7;
    v11 = a3;
    v10 = v5;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

void sub_10002588C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 160);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025980;
  v6[3] = &unk_100166EA8;
  v3 = *(a1 + 48);
  v6[4] = v1;
  v6[5] = v3;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100025994;
  v4[3] = &unk_100167300;
  v4[4] = v1;
  v5 = *(a1 + 40);
  [UIView _animateUsingSpringBehavior:v2 tracking:1 animations:v6 completion:v4];
}

void sub_100025994(uint64_t a1)
{
  *(*(a1 + 32) + 45) = 0;
  [*(*(a1 + 32) + 272) removeContinuerPill];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SRSystemAssistantExperienceViewController createSuggestionsViewProvider]_block_invoke_6";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s #suggestions continuer suggestion tapped", &v8, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) invocationText];
  v5 = [*(a1 + 40) encodedToolInvocationData];
  [v3 _siriRequestCommittedFromSuggestion:v4 encodedToolInvocationData:v5 suggestionRequestType:{objc_msgSend(*(a1 + 40), "suggestionRequestType")}];

  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = &__NSArray0__struct;
}

void sub_100025AD0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportConcernButtonTappedForSuggestion:v5];
  }
}

void sub_100025D28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 siriDidStartSpeakingWithIdentifier:*(a1 + 32)];
  }
}

void sub_100025E60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 siriDidStopSpeakingWithIdentifier:*(a1 + 32) speechQueueIsEmpty:*(a1 + 40)];
  }
}

void sub_100025F8C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 siriDidUpdateASRWithRecognition:*(a1 + 32)];
  }
}

void sub_100026058(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(SiriSharedUIViewControlling *)v2 siriDidTapOutsideContent];
  }
}

void sub_100026114(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(SiriSharedUIViewControlling *)v2 siriWillStartRequest];
  }
}

void sub_1000261D0(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[SRSystemAssistantExperienceViewController siriIsIdleAndQuiet]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #compact: Calling Siri Idle", &v4, 0xCu);
    }

    [(SiriSharedUIViewControlling *)v2 siriIsIdleAndQuiet];
  }
}

uint64_t sub_100026514(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100028FA0(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 updateLoadingPillSizeWithCandidateSize:{*(a1 + 40), *(a1 + 48)}];
}

void sub_100028FF4(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return;
  }

  if ([*(a1 + 32) alwaysShowRecognizedSpeech])
  {
    if (![*(*(a1 + 32) + 224) activeSmartDialogIsLatencyPill])
    {
      return;
    }

LABEL_4:
    v2 = *(*(a1 + 32) + 272);

    [v2 startLatencyLightOnActivePill];
    return;
  }

  v4 = [*(*(a1 + 32) + 224) activeSmartDialogView];
  if ([v4 revealRecognizedSpeech])
  {
    v3 = [*(*(a1 + 32) + 224) activeSmartDialogIsLatencyPill];

    if ((v3 & 1) == 0)
    {
      return;
    }

    goto LABEL_4;
  }
}

id sub_1000290D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 152);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000291B0;
  v5[3] = &unk_100167450;
  v5[4] = v1;
  v6 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029204;
  v4[3] = &unk_100167038;
  v4[4] = v1;
  return [UIView _animateUsingSpringBehavior:v2 tracking:0 animations:v5 completion:v4];
}

void sub_1000291B0(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  [v2 updateResultSizeWithResultSize:{*(a1 + 40), *(a1 + 48)}];
}

void sub_100029204(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) containerView];
    [v3 cleanupLoadingTransitionIfNeeded];

    v4 = [*(*(a1 + 32) + 224) activeSmartDialogView];
    [v4 animateAppearanceIfNeeded];
  }
}

uint64_t sub_1000296B0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_10002A5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002A5C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 count];
    if ([WeakRetained[7] count] | v5)
    {
      v14 = [NSMutableArray arrayWithCapacity:v5];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10002A958;
      v34[3] = &unk_100167220;
      v15 = v14;
      v35 = v15;
      [v3 enumerateObjectsUsingBlock:v34];
      if (v5 == [WeakRetained[7] count] && objc_msgSend(WeakRetained[7], "isEqualToArray:", v15))
      {
        v16 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
        {
          sub_1000CACE8(v16, v17, v18, v19, v20, v21, v22, v23);
        }
      }

      else
      {
        objc_storeStrong(WeakRetained + 7, v14);
        v24 = [NSMutableArray arrayWithCapacity:v5];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10002A9B0;
        v32[3] = &unk_100167220;
        v25 = v24;
        v33 = v25;
        [v3 enumerateObjectsUsingBlock:v32];
        v26 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v27 = WeakRetained[7];
          *buf = 136315394;
          v37 = "[SRSystemAssistantExperienceViewController didChangeText:]_block_invoke_2";
          v38 = 2112;
          v39 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s #suggestions: Adding suggestions autocomplete views to container, %@", buf, 0x16u);
        }

        objc_storeStrong(WeakRetained + 8, v24);
        v28 = *(a1 + 32);
        if (*(v28 + 46) == 1)
        {
          v29 = [WeakRetained textFieldContainerView];
          [v29 setSuggestions:WeakRetained[8]];

          *(WeakRetained + 41) = 1;
          v28 = *(a1 + 32);
        }

        if (*(v28 + 216) == 1)
        {
          [WeakRetained _logAutoCompleteSuggestionsWereShownCallback];
          v30 = *(*(a1 + 32) + 176);
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_10002AA08;
          v31[3] = &unk_100167010;
          v31[4] = WeakRetained;
          [UIView _animateUsingSpringBehavior:v30 tracking:0 animations:v31 completion:0];
        }

        else
        {
          [WeakRetained[35] transitionToSuggestionsCollapsedWithIndex:-1 animated:0 completionBlock:&stru_100167498];
        }
      }
    }

    else
    {
      v6 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CAD60(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }
  }
}

void sub_10002A958(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 suggestionText];
  [v2 addObject:v3];
}

void sub_10002A9B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 view];
  [v2 addObject:v3];
}

void sub_10002AC48(uint64_t a1)
{
  v1 = [*(a1 + 32) textFieldContainerView];
  [v1 transitionToSuggestionsCollapsedWithIndex:-1 animated:1 completionBlock:&stru_1001674B8];
}

void sub_10002ACA0(uint64_t a1)
{
  v2 = [*(a1 + 32) textFieldContainerView];
  [v2 removeSuggestions];

  v3 = [*(a1 + 32) textFieldContainerView];
  v4 = [v3 keyboardLayoutGuide];
  [v4 removeLightEffectsView];

  v5 = [*(a1 + 32) textFieldContainerView];
  [v5 setTextFieldHeight:0.0];

  v6 = [*(a1 + 32) textFieldContainerView];
  [v6 setTextFieldWithTextFieldView:0];
}

void sub_10002AF68(uint64_t a1)
{
  [*(a1 + 32) _teardownTypeToSiriUI];
  v2 = [*(a1 + 32) delegate];
  [v2 siriResultsDidDismissInTamale];
}

void sub_10002B63C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained viewState];
  v3 = [v2 activeSmartDialogView];
  [v3 setServerUtterances:*(a1 + 32)];
}

void sub_10002B9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002BA20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 updateBackgroundIfNeeded];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

uint64_t sub_10002CACC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002CC64(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "+[SRSiriDebugManager _notifySiriDebugAppWithMessage:completionHandler:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s SiriDebug: %@ task delivered.", &v4, 0x16u);
  }
}

void sub_10002CD20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 136315906;
    v11 = "+[SRSiriDebugManager _notifySiriDebugAppWithMessage:completionHandler:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s SiriDebug: %@ completed with response %@ and error %@.", &v10, 0x2Au);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6 == 0);
  }
}

void sub_10002CE2C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    if (qword_10018F168 != -1)
    {
      sub_1000CAEFC();
    }

    v6 = qword_10018F160;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002CF4C;
    v7[3] = &unk_100167578;
    v8 = v3;
    v9 = v5;
    dispatch_async(v6, v7);
  }
}

void sub_10002CF0C(id a1)
{
  qword_10018F160 = dispatch_queue_create("com.apple.siri.SerialUserAttentionSupportQueue", 0);

  _objc_release_x1();
}

void sub_10002CF4C(uint64_t a1)
{
  v2 = +[AWAttentionAwarenessConfiguration supportedEvents];
  v3 = +[CMWakeGestureManager isWakeGestureAvailable];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D004;
  block[3] = &unk_100167550;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  dispatch_async(v4, block);
}

void sub_10002D518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002D540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [SUICAutoDismissalStrategy strategyWithSupportedAttentionAwarenessEvents:a2 deviceSupportsRaiseGestureDetection:a3];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 setDelegate:WeakRetained];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _setAutoDismissalStrategy:v6];
}

void sub_10002D90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002D934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  qword_100190390 = *(a1 + 48);
  *(*(a1 + 32) + 16) = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cancelUserTouchInteractionTimeout];

  v9 = [SUICAutoDismissalStrategy strategyWithMode:*(a1 + 48) supportedAttentionAwarenessEvents:a2 deviceSupportsRaiseGestureDetection:a3 isWiredMicOrBTHeadsetOrWx:*(a1 + 56) isAttending:*(a1 + 57)];
  [v9 setMinimumIdleTimeInterval:*(*(a1 + 32) + 32)];
  v7 = objc_loadWeakRetained((a1 + 40));
  [v9 setDelegate:v7];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 _setAutoDismissalStrategy:v9];
}

void sub_10002E948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained userAttentionController];

  if (!v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 _autoDismissalStrategy];
    [v9 idleTimeInterval];
    v11 = v10;

    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[SRCompactAutoDismissController _startUserAttentionControllerIfNeededForTypes:]_block_invoke";
      v27 = 2048;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Creating user attention controller with attention loss timeout=%.1f", buf, 0x16u);
    }

    v13 = [[SRUserAttentionController alloc] initWithSamplingInterval:a2 attentionLossTimeout:a3 supportedAttentionAwarenessEvents:2.0 deviceSupportsRaiseGestureDetection:v11];
    v14 = objc_loadWeakRetained((a1 + 32));
    [(SRUserAttentionController *)v13 setDelegate:v14];

    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 setUserAttentionController:v13];
  }

  v16 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = SRUIFStringForUserAttentionType();
    *buf = 136315394;
    v26 = "[SRCompactAutoDismissController _startUserAttentionControllerIfNeededForTypes:]_block_invoke";
    v27 = 2112;
    v28 = *&v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s #autodismiss Starting user attention controller if needed for types=%@", buf, 0x16u);
  }

  v19 = objc_loadWeakRetained((a1 + 32));
  v20 = [v19 userAttentionController];
  v21 = *(a1 + 40);
  v22 = &_dispatch_main_q;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10002EC34;
  v23[3] = &unk_1001675F0;
  objc_copyWeak(&v24, (a1 + 32));
  [v20 startIfNeededForTypes:v21 completionQueue:&_dispatch_main_q completion:v23];

  objc_destroyWeak(&v24);
}

void sub_10002EC34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CB47C(a1, v4, v3);
    }
  }
}

void sub_10002FED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002FEFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTaskCompletedWithSuccess:0];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "+[SRAssetsUtilities _runAssetCheckWithTask:]_block_invoke";
    v6 = 2048;
    v7 = 0x409C200000000000;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s Download timer expired. Schedule asset check after %lf seconds", &v4, 0x16u);
  }

  v3 = [NSDate dateWithTimeIntervalSinceNow:1800.0];
  [SRAssetsUtilities _scheduleAssetCheckWithEarliestBeginDate:v3];
}

void sub_10003000C(uint64_t a1, uint64_t a2)
{
  if (a2 == 4)
  {
    +[SRNotificationUtility postStorageLowNotification];
    v6 = objc_alloc_init(SRPreferences);
    [(SRPreferences *)v6 setHasPresentedSiriAssetsNotification:1];
    [*(a1 + 32) setTaskCompletedWithSuccess:1];
  }

  else if (a2 == 3)
  {
    v3 = *(a1 + 32);

    [v3 setTaskCompletedWithSuccess:1];
  }

  else
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v8 = "+[SRAssetsUtilities _runAssetCheckWithTask:]_block_invoke";
      v9 = 2048;
      v10 = 0x409C200000000000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Download not finished. Schedule asset check after %lf seconds", buf, 0x16u);
    }

    [*(a1 + 32) setTaskCompletedWithSuccess:0];
    v5 = [NSDate dateWithTimeIntervalSinceNow:1800.0];
    [SRAssetsUtilities _scheduleAssetCheckWithEarliestBeginDate:v5];
  }
}

void sub_1000305E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100030608(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) operation];
    WeakRetained = v3;
  }
}

void sub_10003065C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 2);
    v3 = [v2 transitionController];
    [v3 setOperation:0];

    WeakRetained = v4;
  }
}

void sub_1000318D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _iconImageForGuideDomainSnippet:*(a1 + 40)];
  v3 = +[NSOperationQueue mainQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000319D8;
  v6[3] = &unk_100167740;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = v4;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v5 = v2;
  [v3 addOperationWithBlock:v6];
}

void sub_1000319D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [*(a1 + 48) aceId];
  [v3 setObject:v2 forKey:v4];

  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) aceId];
  LODWORD(v5) = [v5 isEqualToString:v6];

  if (v5)
  {
    [*(a1 + 64) setIconImage:*(a1 + 40)];
  }

  v7 = *(*(a1 + 32) + 56);
  v8 = [*(a1 + 48) aceId];
  [v7 removeObject:v8];
}

void sub_100032BA8(id a1)
{
  qword_10018F180 = +[NSUserDefaults standardUserDefaults];

  _objc_release_x1();
}

void sub_100034904(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100034928(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = WeakRetained;
    [WeakRetained[6] becomeFirstResponder];
    WeakRetained = v4;
  }
}

void sub_100036578(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setAdditionalSafeAreaInsets:{*(a1 + 40), 0.0, 0.0, 0.0}];
  v2 = [*(*(a1 + 32) + 112) view];
  [v2 setNeedsLayout];

  v3 = [*(*(a1 + 32) + 112) view];
  [v3 layoutIfNeeded];
}

id sub_100036D88()
{
  v2[0] = UIKeyboardWillChangeFrameNotification;
  v2[1] = UIKeyboardDidChangeFrameNotification;
  v0 = [NSArray arrayWithObjects:v2 count:2];

  return v0;
}

void sub_100037B88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100037BB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SRCompactViewController compactViewModelDidChange:withDiff:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #compact Applying updates", &v8, 0xCu);
    }

    if (*(a1 + 88) == 1)
    {
      v4 = [WeakRetained _updateActiveTranscriptItems:*(a1 + 32)];
    }

    else
    {
      v4 = 0;
    }

    [WeakRetained _setInputType:*(a1 + 80)];
    [WeakRetained _setActiveConversationTranscriptItems:*(a1 + 40)];
    [WeakRetained _setActiveAdditionalPlatterTranscriptItems:*(a1 + 48)];
    [WeakRetained _setSpeechRecognitionHypothesis:*(a1 + 56)];
    [WeakRetained _setServerUtterances:*(a1 + 64)];
    if (*(a1 + 89) == 1)
    {
      v5 = *(a1 + 90) & v4;
      v6 = [WeakRetained _compactView];
      [v6 contentDidUpdate:v5 & 1];

      if (*(a1 + 91) == 1)
      {
        v7 = [WeakRetained _compactView];
        [v7 contentDidUpdateForAdditionalContentView:v5 & 1];
      }
    }
  }
}

void sub_100039064(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(SiriSharedUIViewControlling *)v2 siriDidDeactivate];
  }
}

void sub_100039574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000395A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained view];
  v4 = [v3 traitCollection];
  v5 = [v4 isAmbientPresented];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _updateAmbientAvailability];
  }
}

void sub_10003A0C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 siriDidStartSpeakingWithIdentifier:*(a1 + 32)];
  }
}

void sub_10003A1F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 siriDidStopSpeakingWithIdentifier:*(a1 + 32) speechQueueIsEmpty:*(a1 + 40)];
  }
}

void sub_10003A324(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 siriDidUpdateASRWithRecognition:*(a1 + 32)];
  }
}

void sub_10003A3F0(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(SiriSharedUIViewControlling *)v2 siriDidTapOutsideContent];
  }
}

void sub_10003A4AC(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(SiriSharedUIViewControlling *)v2 siriWillStartRequest];
  }
}

void sub_10003A568(id a1, SiriSharedUIViewControlling *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[SRCompactViewController siriIsIdleAndQuiet]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #compact: Calling Siri Idle", &v4, 0xCu);
    }

    [(SiriSharedUIViewControlling *)v2 siriIsIdleAndQuiet];
  }
}

uint64_t sub_10003BEDC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_10003C538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003C554(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _shouldMoveViewStackForTapToEdit];

  if (v3)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v4 = [v6 _viewStackContainerController];
    v5 = [v4 viewStackContainer];
    [v5 willPresentModalContent];
  }
}

void sub_10003C94C(uint64_t a1)
{
  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
  v2 = [*(a1 + 32) contentViewController];
  v3 = [v2 view];
  [v3 layoutIfNeeded];
}

void sub_10003CCA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 160);
  *(v1 + 160) = 0;
}

void sub_10003CE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v24 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10003CEA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _shouldMoveViewStackForTapToEdit];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 _viewStackContainerController];
    v6 = [v5 viewStackContainer];
    [v6 willDismissModalContent];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_10003CF30(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v4 = [a2 isCancelled];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained _viewStackContainerController];
    v6 = [v5 viewStackContainer];
    v7 = v6;
    if (v4)
    {
      [v6 willPresentModalContent];
    }

    else
    {
      [v6 didDismissModalContent];
    }
  }
}

void sub_10003EFF0(uint64_t a1)
{
  v8 = +[BMStreams discoverabilitySignal];
  v2 = [v8 source];
  [*(a1 + 40) _checkAndEmitHSSignalsWithSource:v2 forRequestOptions:*(a1 + 32)];
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  [*(a1 + 40) _checkAndEmitCarPlayInvocationSourcePerVehicle:v2 forRequestOptions:*(a1 + 32) accessoryManager:v3];
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v7 = +[BluetoothManager sharedInstance];
  [v5 _checkAndEmitBluetoothInvocationSourcePerVehicle:v2 forRequestOptions:v4 btManager:v7];
}

void sub_1000423C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000423E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 siriPresentation:v3 didPresentViewController:*(a1 + 32)];
}

void sub_100042648(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!a3)
  {
    [*(a1 + 32) recordDismissalMetricWithContext:*(a1 + 40) inputType:*(a1 + 56) previousLongPressBehavior:-1 longPressBehavior:-1];
    goto LABEL_26;
  }

  v37 = v10;
  v12 = [SRUIFPreferences alloc];
  v13 = [v12 initWithSuiteName:SRUIFPreferencesDefaultDomain];
  v14 = [v13 objectForKey:@"SiriHardwareButtonLongPressBehavior"];
  v15 = v14;
  v16 = &off_10016E560;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [v13 objectForKey:@"SiriHardwareButtonLongPressBehaviorModificationDate"];
  v19 = [v17 integerValue];

  if (v18)
  {
    v20 = +[NSCalendar currentCalendar];
    v21 = +[NSDate date];
    v22 = [v20 components:16 fromDate:v18 toDate:v21 options:0];

    v23 = [v22 day];
  }

  else
  {
    v23 = -1;
  }

  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = a2 == 0;
  }

  if (v24)
  {
    v25 = v19;
    if (v19 != 1)
    {
      goto LABEL_23;
    }

    v25 = 1;
    if (a2)
    {
      goto LABEL_23;
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v26 = [NSNumber numberWithInteger:0];
      [v13 setObject:v26 forKey:@"SiriHardwareButtonLongPressBehavior"];

      v27 = +[NSDate date];
      [v13 setObject:v27 forKey:@"SiriHardwareButtonLongPressBehaviorModificationDate"];

      v28 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v42 = "[SRSystemAssistantExperiencePresentation siriDidDeactivateWithCompletion:]_block_invoke";
        v43 = 2048;
        v44 = v23;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation disabling button press mitigation after %ld days", buf, 0x16u);
      }

      [*(a1 + 32) recordMitigationEndMetricWithContext:*(a1 + 40) activationHistory:v9 numberOfDaysSinceLastChange:{v23, v37}];
      v25 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v29 = [NSNumber numberWithInteger:1];
    [v13 setObject:v29 forKey:@"SiriHardwareButtonLongPressBehavior"];

    v30 = +[NSDate date];
    [v13 setObject:v30 forKey:@"SiriHardwareButtonLongPressBehaviorModificationDate"];

    v31 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[SRSystemAssistantExperiencePresentation siriDidDeactivateWithCompletion:]_block_invoke";
      v43 = 2048;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation enabling button press mitigation after %ld days", buf, 0x16u);
    }

    [*(a1 + 32) recordMitigationStartMetricWithContext:*(a1 + 40) activationHistory:v9 numberOfDaysSinceLastChange:{v23, v37}];
  }

  v25 = 1;
LABEL_23:
  v33 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v42 = "[SRSystemAssistantExperiencePresentation siriDidDeactivateWithCompletion:]_block_invoke";
    v43 = 2048;
    v44 = v25;
    v45 = 2048;
    v46 = v19;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation current behavior: %ld, previous behavior: %ld", buf, 0x20u);
  }

  [*(a1 + 32) recordDismissalMetricWithContext:*(a1 + 40) inputType:*(a1 + 56) previousLongPressBehavior:v19 longPressBehavior:{v25, v37}];

  v11 = v38;
LABEL_26:
  if (*(a1 + 64) == 1 && [*(a1 + 32) canPresentSurveyForContext:*(a1 + 40)])
  {
    v34 = *(a1 + 32);
    v35 = *(a1 + 40);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100042AD4;
    v39[3] = &unk_1001678F8;
    v40 = *(a1 + 48);
    [v34 presentSurveyNotificationWithContext:v35 activationHistory:v9 withCompletion:v39];
  }

  else
  {
    v36 = *(a1 + 48);
    if (v36)
    {
      (*(v36 + 16))();
    }
  }
}

uint64_t sub_100042AD4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100044694(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100044AD4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100047230(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 siriPresentation:*(a1 + 32) setStatusBarHidden:0 animated:1];

  v3 = [*(a1 + 32) delegate];
  [v3 siriPresentation:*(a1 + 32) setStatusViewHidden:0];
}

void sub_100047408(id a1)
{
  v1 = [SRUIFPreferences alloc];
  v3 = [v1 initWithSuiteName:SRUIFPreferencesDefaultDomain];
  [v3 doubleForKey:@"TouchDismissalTimeout"];
  if (v2 <= 0.0)
  {
    v2 = 3.0;
  }

  qword_10018F198 = *&v2;
}

void sub_100047478(id a1)
{
  v1 = [SRUIFPreferences alloc];
  v3 = [v1 initWithSuiteName:SRUIFPreferencesDefaultDomain];
  [v3 doubleForKey:@"AppLaunchDismissalTimeout"];
  if (v2 <= 0.0)
  {
    v2 = 6.0;
  }

  qword_10018F1A8 = *&v2;
}

void sub_1000474E8(id a1)
{
  v1 = [SRUIFPreferences alloc];
  v3 = [v1 initWithSuiteName:SRUIFPreferencesDefaultDomain];
  [v3 doubleForKey:@"SystemUIDismissalTimeout"];
  if (v2 <= 0.0)
  {
    v2 = 6.0;
  }

  qword_10018F1B8 = *&v2;
}

void sub_1000485C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000485E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 40));
  [v2 siriPresentation:v3 didPresentViewController:*(a1 + 32)];
}

void sub_100048850(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!a3)
  {
    [*(a1 + 32) recordDismissalMetricWithContext:*(a1 + 40) inputType:*(a1 + 56) previousLongPressBehavior:-1 longPressBehavior:-1];
    goto LABEL_26;
  }

  v37 = v10;
  v12 = [SRUIFPreferences alloc];
  v13 = [v12 initWithSuiteName:SRUIFPreferencesDefaultDomain];
  v14 = [v13 objectForKey:@"SiriHardwareButtonLongPressBehavior"];
  v15 = v14;
  v16 = &off_10016E578;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = [v13 objectForKey:@"SiriHardwareButtonLongPressBehaviorModificationDate"];
  v19 = [v17 integerValue];

  if (v18)
  {
    v20 = +[NSCalendar currentCalendar];
    v21 = +[NSDate date];
    v22 = [v20 components:16 fromDate:v18 toDate:v21 options:0];

    v23 = [v22 day];
  }

  else
  {
    v23 = -1;
  }

  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = a2 == 0;
  }

  if (v24)
  {
    v25 = v19;
    if (v19 != 1)
    {
      goto LABEL_23;
    }

    v25 = 1;
    if (a2)
    {
      goto LABEL_23;
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v26 = [NSNumber numberWithInteger:0];
      [v13 setObject:v26 forKey:@"SiriHardwareButtonLongPressBehavior"];

      v27 = +[NSDate date];
      [v13 setObject:v27 forKey:@"SiriHardwareButtonLongPressBehaviorModificationDate"];

      v28 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v42 = "[SRCompactPresentation siriDidDeactivateWithCompletion:]_block_invoke";
        v43 = 2048;
        v44 = v23;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation disabling button press mitigation after %ld days", buf, 0x16u);
      }

      [*(a1 + 32) recordMitigationEndMetricWithContext:*(a1 + 40) activationHistory:v9 numberOfDaysSinceLastChange:{v23, v37}];
      v25 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v29 = [NSNumber numberWithInteger:1];
    [v13 setObject:v29 forKey:@"SiriHardwareButtonLongPressBehavior"];

    v30 = +[NSDate date];
    [v13 setObject:v30 forKey:@"SiriHardwareButtonLongPressBehaviorModificationDate"];

    v31 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[SRCompactPresentation siriDidDeactivateWithCompletion:]_block_invoke";
      v43 = 2048;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation enabling button press mitigation after %ld days", buf, 0x16u);
    }

    [*(a1 + 32) recordMitigationStartMetricWithContext:*(a1 + 40) activationHistory:v9 numberOfDaysSinceLastChange:{v23, v37}];
  }

  v25 = 1;
LABEL_23:
  v33 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v42 = "[SRCompactPresentation siriDidDeactivateWithCompletion:]_block_invoke";
    v43 = 2048;
    v44 = v25;
    v45 = 2048;
    v46 = v19;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation current behavior: %ld, previous behavior: %ld", buf, 0x20u);
  }

  [*(a1 + 32) recordDismissalMetricWithContext:*(a1 + 40) inputType:*(a1 + 56) previousLongPressBehavior:v19 longPressBehavior:{v25, v37}];

  v11 = v38;
LABEL_26:
  if (*(a1 + 64) == 1 && [*(a1 + 32) canPresentSurveyForContext:*(a1 + 40)])
  {
    v34 = *(a1 + 32);
    v35 = *(a1 + 40);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100048CDC;
    v39[3] = &unk_1001678F8;
    v40 = *(a1 + 48);
    [v34 presentSurveyNotificationWithContext:v35 activationHistory:v9 withCompletion:v39];
  }

  else
  {
    v36 = *(a1 + 48);
    if (v36)
    {
      (*(v36 + 16))();
    }
  }
}

uint64_t sub_100048CDC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100049C5C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10004B844(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 siriPresentation:*(a1 + 32) setStatusBarHidden:0 animated:1];

  v3 = [*(a1 + 32) delegate];
  [v3 siriPresentation:*(a1 + 32) setStatusViewHidden:0];
}

void *sub_10004BED8(uint64_t a1)
{
  v2 = sub_10004BF28();
  result = dlsym(v2, "AVSystemController_PickableRoutesAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10018F1C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10004BF28()
{
  v3[0] = 0;
  if (!qword_10018F1C8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10004C028;
    v3[4] = &unk_100167A30;
    v3[5] = v3;
    v4 = off_100167A18;
    v5 = 0;
    qword_10018F1C8 = _sl_dlopen();
  }

  v0 = qword_10018F1C8;
  v1 = v3[0];
  if (!qword_10018F1C8)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10004C028()
{
  result = _sl_dlopen();
  qword_10018F1C8 = result;
  return result;
}

void *sub_10004C09C(uint64_t a1)
{
  v2 = sub_10004BF28();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_RouteName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10018F1D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10004C0EC(uint64_t a1)
{
  v2 = sub_10004BF28();
  result = dlsym(v2, "AVSystemController_RouteDescriptionKey_RouteUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_10018F1D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10004C2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C324(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 isFirstResponder])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_10004C4F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setAlpha:0.0];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 24));
  [v3 setAlpha:1.0];
}

uint64_t sub_10004C570(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained removeFromSuperview];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10004C728(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setAlpha:1.0];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 24));
  [v3 setAlpha:0.0];
}

uint64_t sub_10004C7A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained removeFromSuperview];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10004CE74(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 siriViewControllerHeightDidChange:*(a1 + 32)];
}

void sub_10004DF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004DF60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isDescendantOfView:*(a1 + 32)] & 1) != 0 || objc_msgSend(*(a1 + 32), "isDescendantOfView:", v7))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }
}

void sub_10004E1B8(uint64_t a1)
{
  *(*(a1 + 32) + 184) = 0;
  v2 = [*(a1 + 32) delegate];
  [v2 siriViewControllerHeightDidChange:*(a1 + 32)];
}

void sub_10004E2E4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 siriViewControllerHeightDidChange:*(a1 + 32)];

  v3 = [*(a1 + 32) _privateDelegate];
  [v3 siriViewControllerRequestToPin:*(a1 + 32)];
}

int64_t sub_10004F640(id a1, id a2, id a3)
{
  v4 = AFUserUtteranceConfidenceIndexKey;
  v5 = a3;
  v6 = [a2 objectForKey:v4];
  v7 = [v6 integerValue];

  v8 = [v5 objectForKey:v4];

  v9 = [v8 integerValue];
  if (v7 < v9)
  {
    return -1;
  }

  else
  {
    return v7 > v9;
  }
}

void sub_10004F6D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSCharacterSet whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 40) objectForKey:v3];
    v8 = [v7 objectForKey:AFUserUtteranceConfidenceAverageKey];
    v9 = [v7 objectForKey:AFUserUtteranceConfidenceIndexKey];
    v38 = [v7 objectForKey:AFUserUtteranceSourceKey];
    v37 = [v38 integerValue];
    v10 = v37 == 2;
    *(*(a1 + 48) + 120) |= v10;
    [*(*(a1 + 48) + 40) addObject:v3];
    v11 = objc_alloc_init(SRUIFAlternativeInfo);
    [v11 setOriginalRank:v9];
    [v11 setOriginalScore:v8];
    v12 = [NSNumber numberWithBool:v10];
    [v11 setIsFromDevice:v12];

    [*(*(a1 + 48) + 112) setObject:v11 forKey:v3];
    v13 = [NSMutableAttributedString alloc];
    v14 = v13;
    if (v9)
    {
      v15 = +[NSCharacterSet whitespaceCharacterSet];
      v16 = [v3 stringByTrimmingCharactersInSet:v15];
      v17 = [v14 initWithString:v16 attributes:*(a1 + 56)];

      v36 = v8;
      if (*(a1 + 88) == 1)
      {
        v18 = [*(a1 + 48) _userUtterance];
        v19 = [v18 speechTokensForUtteranceAtIndex:0];

        v20 = [*(a1 + 64) speechTokensForUtteranceAtIndex:{objc_msgSend(v9, "integerValue")}];
        v21 = [*(a1 + 64) rangeListOfDifferingTextFromTargetTokenList:v20 comparedToBaseTokenList:v19];
      }

      else
      {
        v21 = [*(a1 + 64) rangeListOfDifferingTextFromUtteranceAtIndex:objc_msgSend(v9 comparedToBaseUtteranceAtIndex:{"integerValue"), 0}];
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v40;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v40 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(*(&v39 + 1) + 8 * i) rangeValue];
            [v17 setAttributes:*(a1 + 72) range:{v27, v28}];
          }

          v24 = [v22 countByEnumeratingWithState:&v39 objects:v53 count:16];
        }

        while (v24);
      }

      v8 = v36;
    }

    else
    {
      v17 = [v13 initWithString:v3 attributes:*(a1 + 72)];
    }

    if (*(a1 + 89) == 1)
    {
      v29 = @"FIDES ";
      if (v37 != 2)
      {
        v29 = &stru_10016AE90;
      }

      v30 = [NSString stringWithFormat:@" (%@%@)", v29, v8];
    }

    else
    {
      v30 = 0;
    }

    v31 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v32 = @"Server";
      *buf = 136316162;
      v44 = "[SRUserUtteranceViewController _processUserUtterance:isCombined:displayedText:withScore:]_block_invoke_2";
      if (v37 == 2)
      {
        v32 = @"Client";
      }

      v45 = 2112;
      v46 = v3;
      v47 = 2112;
      v48 = v32;
      if (v17)
      {
        v33 = &stru_10016AE90;
      }

      else
      {
        v33 = @"(removing dupe)";
      }

      v49 = 2112;
      v50 = v8;
      v51 = 2112;
      v52 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s Speech alternative utterance: %@ (%@ %@%@)", buf, 0x34u);
    }

    v34 = v17;
    if (v30)
    {
      v35 = [[NSAttributedString alloc] initWithString:v30 attributes:*(a1 + 72)];
      [v34 appendAttributedString:v35];
    }

    if (v34)
    {
      [*(a1 + 80) addObject:v34];
    }
  }
}

void sub_100051370(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 200));
  _Unwind_Resume(a1);
}

void sub_1000513C8(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  v2 = [*(a1 + 32) layer];
  [v2 setCornerRadius:*(a1 + 104)];

  [*(a1 + 40) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  v3 = [*(a1 + 40) layer];
  [v3 setCornerRadius:*(a1 + 104)];

  [*(a1 + 48) setAlpha:0.0];
  [*(a1 + 40) setAlpha:1.0];
  v4 = [*(a1 + 56) resultViewContainer];
  [v4 setAlpha:0.0];
  [v4 setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100051520;
  v5[3] = &unk_100167328;
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 144);
  [UIView animateWithDuration:v5 animations:1.0];
}

id sub_100051520(uint64_t a1)
{
  [*(a1 + 32) setEffect:0];
  v2 = *(a1 + 40);
  CGAffineTransformMakeTranslation(&v4, 0.0, -*(a1 + 48));
  [v2 setTransform:&v4];
  return [*(a1 + 40) setAlpha:1.0];
}

uint64_t sub_100051584(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [*(a1 + 32) setHidden:1];
    [*(a1 + 40) removeFromSuperview];
    [*(a1 + 48) completeTransition:{objc_msgSend(*(a1 + 48), "transitionWasCancelled") ^ 1}];
    if ([v8 _isDrillIn] && SiriUIDeviceIsPad())
    {
      v3 = objc_loadWeakRetained((*(a1 + 56) + 24));
      v4 = [v3 view];
      [v8 _moveCloseButtonToView:v4];
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(v8 + 3);
      v6 = [v5 transitionController];
      [v6 setOperation:0];
    }
  }

  return _objc_release_x1();
}

void sub_1000521F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak((v39 - 232));
  _Unwind_Resume(a1);
}

void sub_10005222C(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 == 1)
  {
    v5 = [*(a1 + 40) layer];
    [v5 setCornerRadius:SiriSharedUISmartDialogPlatterCornerRadius];

    [*(a1 + 40) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
    [*(a1 + 48) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
    [*(a1 + 48) setHidden:0];
    [*(a1 + 56) setAlpha:1.0];
    v6 = *(a1 + 64);
    v7 = [UIBlurEffect effectWithStyle:4];
    [v6 setEffect:v7];

    [*(a1 + 72) setAlpha:1.0];
    [*(a1 + 80) setAlpha:1.0];
    [*(a1 + 32) setAlpha:0.0];
    [*(a1 + 88) finalizePopAnimationOfType:*(a1 + 104)];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100052438;
    v8[3] = &unk_100167BB0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 96);
    v11 = *(a1 + 48);
    [UIView animateWithDuration:v8 animations:0.7];
  }

  else if (!v2)
  {
    [*(a1 + 32) setAlpha:0.0];
    [*(a1 + 40) setAlpha:0.0];
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, 0.9, 0.9);
    v3 = *(a1 + 32);
    v12 = v13;
    [v3 setTransform:&v12];
    v4 = *(a1 + 40);
    v12 = v13;
    [v4 setTransform:&v12];
  }
}

id sub_100052438(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) setAlpha:0.0];
  v2 = *(a1 + 48);

  return [v2 setEffect:0];
}

void sub_100052488(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  if (WeakRetained)
  {
    [a1[4] removeFromSuperview];
    [a1[5] removeFromSuperview];
    [a1[6] removeFromSuperview];
    [a1[7] removeFromSuperview];
    [WeakRetained _removeCloseButton];
    [a1[8] removeFromSuperview];
    v2 = [WeakRetained _navigationController];
    [v2 setAnimatingBackgroundView:0];

    v3 = [WeakRetained _navigationController];
    [v3 setBlurrableView:0];

    [a1[9] completeTransition:{objc_msgSend(a1[9], "transitionWasCancelled") ^ 1}];
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_loadWeakRetained(WeakRetained + 3);
      v5 = [v4 transitionController];
      [v5 setOperation:0];
    }
  }
}

void sub_1000533D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1000533FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained operation];
    if (v2 == 2)
    {
      [v4 _performPopAnimations];
    }

    else
    {
      v3 = v2 == 1;
      WeakRetained = v4;
      if (!v3)
      {
        goto LABEL_8;
      }

      [v4 _performPushAnimations];
    }

    WeakRetained = v4;
  }

LABEL_8:
}

void sub_100053468(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(a1) = [v3 isCancelled];

  if (a1)
  {
    v4 = [WeakRetained _navigationController];
    v5 = [v4 viewControllers];
    v6 = [v5 count];

    if (v6 == 2)
    {
      v7 = [WeakRetained delegate];
      [v7 blurFromRootNavigationTransitionController:WeakRetained requestBackgroundBlurViewVisible:1];
    }
  }

  [WeakRetained _updateBlurVisibility];
}

id sub_100053A1C(uint64_t a1)
{
  v1 = @"Voice";
  if (a1 == 1)
  {
    v1 = @"Mixed";
  }

  if (a1 == 2)
  {
    v2 = @"Silent";
  }

  else
  {
    v2 = v1;
  }

  return [@"SRMode" stringByAppendingString:v2];
}

__CFString *sub_100053F70(uint64_t a1)
{
  v1 = @"Voice";
  if (a1 == 1)
  {
    v1 = @"Mixed";
  }

  if (a1 == 2)
  {
    return @"Silent";
  }

  else
  {
    return v1;
  }
}

id sub_10005423C(void *a1)
{
  v1 = a1;
  v2 = sub_10005461C();
  v3 = sub_1000546E8();
  v4 = [v2 setByAddingObjectsFromSet:v3];

  v5 = [v1 name];

  v6 = [v4 containsObject:v5];
  return v6;
}

id sub_10005461C()
{
  v3[0] = UIKeyboardWillShowNotification;
  v3[1] = UIKeyboardWillHideNotification;
  v3[2] = UIKeyboardWillChangeFrameNotification;
  v0 = [NSArray arrayWithObjects:v3 count:3];
  v1 = [NSSet setWithArray:v0];

  return v1;
}

id sub_1000546E8()
{
  v3[0] = UIKeyboardDidShowNotification;
  v3[1] = UIKeyboardDidHideNotification;
  v3[2] = UIKeyboardDidChangeFrameNotification;
  v0 = [NSArray arrayWithObjects:v3 count:3];
  v1 = [NSSet setWithArray:v0];

  return v1;
}

BOOL sub_100055924(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC4D0(v4, v5, v6);
  }

  return 1;
}

id sub_100056184(void *a1)
{
  v1 = a1;
  v2 = +[_TtC4Siri17SRBundleUtilities getSiriAppBundle];
  v3 = [v2 siriUILocalizedStringForKey:v1 table:0];

  return v3;
}

void sub_100056898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000568D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056960;
  block[3] = &unk_1001676A0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_100056960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionWasInvalidated];
}

void sub_1000569A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100056A30;
  block[3] = &unk_1001676A0;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_100056A30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionWasInterrupted];
}

void sub_100057040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005707C(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = [WeakRetained _host];
    v6 = v5;
    if (a3)
    {
      [v5 serviceDidEnterUITrackingMode];
    }

    else
    {
      [v5 serviceDidExitUITrackingMode];
    }

    WeakRetained = v7;
  }
}

void sub_100057B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100057B18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100057B30(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000580F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005811C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = AFSiriLogContextConnection;
  if (a2)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = 136315650;
      v15 = "[SRSiriViewController _saveConversationWithCompletion:]_block_invoke";
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s #conversation Conversation successfully saved to store { identifier: %@, conversation: %@ }", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC710();
  }

  v10 = [WeakRetained _presentation];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [WeakRetained _presentation];
    [v12 attemptedToSaveConversation:*(a1 + 40) withResult:a2];
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))();
  }
}

id sub_1000583BC(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_100058400(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC838();
  }
}

void sub_100059030(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v6 = 136315394;
    v7 = "[SRSiriViewController siriDidDeactivateWithCompletion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s Releasing %@", &v6, 0x16u);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

uint64_t sub_100059108(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005955C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100059580(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[SRSiriViewController showAppUnlockForAppId:completion:]_block_invoke";
    v11 = 1026;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s APGuard complete for App Unlock, success=%{public, BOOL}d, error=%@", &v9, 0x1Cu);
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = a2 ^ 1u;
  }

  [WeakRetained siriWillHidePasscodeUnlockForResult:v8];
  (*(*(a1 + 32) + 16))();
  [WeakRetained siriDidHidePasscodeUnlock];
}

void sub_10005A0C4(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CCBCC();
  }
}

void sub_10005A758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005A77C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained parentViewController];
    v5 = [v4 presentedViewController];

    if (v5)
    {
      v6 = [v5 view];
      [v6 frame];
      v7 = CGRectContainsPoint(v50, *(a1 + 56));

      if (v7)
      {
        v8 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 136315138;
        v49 = "[SRSiriViewController hasContentAtPoint:completion:]_block_invoke";
        v9 = "%s #dismissal - found content at point in presented alert view controller";
        goto LABEL_18;
      }
    }

    v10 = *(*(a1 + 32) + 576);
    if (v10 != 0.0)
    {
      v11 = *(*(a1 + 32) + 552);
      v12 = *(*(a1 + 32) + 560);
      v13 = *(*(a1 + 32) + 568);
      if ([UIApp activeInterfaceOrientation] == 3)
      {
        v14 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v49 = "[SRSiriViewController hasContentAtPoint:completion:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s #dismissal - converting system content frame to landscape right", buf, 0xCu);
        }

        v15 = [v3 view];
        [v15 frame];
        v17 = v16;

        v10 = *(*(a1 + 32) + 568);
        v13 = *(*(a1 + 32) + 576);
        v18 = v17 - v10;
        v11 = *(*(a1 + 32) + 560);
        v12 = v18 - *(*(a1 + 32) + 552);
      }

      else if ([UIApp activeInterfaceOrientation] == 4)
      {
        v19 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v49 = "[SRSiriViewController hasContentAtPoint:completion:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s #dismissal - converting system content frame to landscape left", buf, 0xCu);
        }

        v20 = [v3 view];
        [v20 frame];
        v22 = v21;

        v10 = *(*(a1 + 32) + 568);
        v13 = *(*(a1 + 32) + 576);
        v12 = *(*(a1 + 32) + 552);
        v11 = v22 - v13 - *(*(a1 + 32) + 560);
      }

      v51.origin.x = v11;
      v51.origin.y = v12;
      v51.size.width = v13;
      v51.size.height = v10;
      if (CGRectContainsPoint(v51, *(a1 + 56)))
      {
        v8 = AFSiriLogContextConnection;
        if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        *buf = 136315138;
        v49 = "[SRSiriViewController hasContentAtPoint:completion:]_block_invoke";
        v9 = "%s #dismissal - found content at point in system aperture";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
LABEL_19:
        v23 = *(a1 + 40);
        if (v23)
        {
          (*(v23 + 16))(v23, 1);
        }

        goto LABEL_44;
      }
    }

    v24 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
    v25 = [v3 view];
    v26 = [v25 window];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v27 = v24;
    v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v44;
      while (2)
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v44 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v43 + 1) + 8 * i);
          if (v32 != v26)
          {
            v33 = [v32 hitTest:0 withEvent:{*(a1 + 56), *(a1 + 64), v43}];
            if (v33)
            {
              v39 = v33;
              v40 = AFSiriLogContextConnection;
              if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v49 = "[SRSiriViewController hasContentAtPoint:completion:]_block_invoke";
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%s #dismissal - found content at point in additional windows used by Siri, but not owned by Siri.", buf, 0xCu);
              }

              v41 = *(a1 + 40);
              if (v41)
              {
                (*(v41 + 16))(v41, 1);
              }

              goto LABEL_43;
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }
    }

    v34 = +[SiriSharedUIReplayUtilityWrapper sharedInstance];
    v35 = [v34 hasContentAtPoint:{*(a1 + 56), *(a1 + 64)}];

    if (v35)
    {
      v36 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v49 = "[SRSiriViewController hasContentAtPoint:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%s #dismissal - found content at point in replay utility", buf, 0xCu);
      }

      v37 = *(a1 + 40);
      if (!v37)
      {
        goto LABEL_43;
      }

      v38 = *(v37 + 16);
    }

    else
    {
      v42 = *(a1 + 40);
      if (!v42)
      {
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v38 = *(v42 + 16);
    }

    v38();
    goto LABEL_43;
  }

LABEL_45:
}

uint64_t sub_10005ACBC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[SRSiriViewController hasContentAtPoint:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #dismissal - found content at point in Presentation", &v6, 0xCu);
    }

    result = *(a1 + 32);
    if (result)
    {
      return (*(result + 16))(result, 1);
    }
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }

  return result;
}

uint64_t sub_10005B990(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 willMoveToParentViewController:0];
    [*(a1 + 32) removeFromParentViewController];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10005BECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10005BEE8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10005BF08(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = [WeakRetained _presentation];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 64));
      v9 = [v8 _presentation];
      [v9 siriDidOpenURL:*(a1 + 32) bundleId:*(a1 + 40) inPlace:*(a1 + 72)];
    }
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v13);
  }

  v11 = objc_loadWeakRetained((a1 + 64));
  if (v11 && a2)
  {
    v12 = [SAUIAppPunchOutEvent sruif_appPunchOutEventWithRefId:*(a1 + 48) URL:*(a1 + 32) appDisplayName:0 bundleId:*(a1 + 40)];
    [v11 _performGenericAceCommand:v12 turnIdentifier:0 completion:0];
    if ((*(a1 + 72) & 1) == 0)
    {
      [v11 _setRequestActive:0];
      [v11 _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
    }
  }
}

void sub_10005C210(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 aceId];
    v8 = 136315650;
    v9 = "[SRSiriViewController _delayAceCommandSuccess:forDuration:]_block_invoke";
    v10 = 2048;
    v11 = v3;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #aceCommandRecord completing scheduled delayed action after %f seconds for command %@", &v8, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didCompleteActionForAceCommand:*(a1 + 32) success:1];
}

void sub_10005CDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10005CE04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005CE1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #tts 12", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005D044;
  v12[3] = &unk_100168040;
  objc_copyWeak(&v14, (a1 + 48));
  v5 = v3;
  v13 = v5;
  v6 = objc_retainBlock(v12);
  v7 = *(a1 + 40);
  v8 = AFSiriLogContextConnection;
  v9 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 136315138;
      v16 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #tts 13 Only if there is a bulletinIdentifier", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v10, v11);
  }

  else
  {
    if (v9)
    {
      *buf = 136315138;
      v16 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #tts 13", buf, 0xCu);
    }

    (v6[2])(v6, *(a1 + 32), *(a1 + 56));
  }

  objc_destroyWeak(&v14);
}

void sub_10005D044(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #tts 14", &v8, 0xCu);
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained _repeatablePhrases];
    [v6 addObject:v3];
  }

  if (*(a1 + 32))
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SRSiriViewController _speakText:audioData:ignoreMuteSwitch:identifier:sessionId:preferredVoice:language:gender:promptStyle:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:speakableUtteranceParser:analyticsContext:speakableContextInfo:preparation:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #tts 15", &v8, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10005DF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10005DF88(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10005DFA0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CCFF8();
      }

      (*(*(a1 + 32) + 16))();
    }

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[SRSiriViewController speechSynthesisRequestsForceAudioSessionActiveWithCompletion:]_block_invoke";
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s #tts successfully forced audio session active (audioSessionID = %u)", &v9, 0x12u);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

void sub_10005ECC4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[SRSiriViewController siriSessionWillStartRequest]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Emitting trigger for AIMLExperimentationManager failed with: %@", &v4, 0x16u);
  }
}

uint64_t sub_10005EF6C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_10005F05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005F078(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rescheduleIdleTimerIfNeeded];
}

void sub_10005F53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005F560(uint64_t a1, int a2)
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v13 = 136315650;
    v14 = "[SRSiriViewController siriSessionDidFinishRequestWithError:]_block_invoke";
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = a2 ^ 1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Should start listen after speaking %d %d", &v13, 0x18u);
  }

  if (*(a1 + 40) == 1 && (a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _startListenAfterSpeaking];
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 _setListenAfterSpeakingForRepeatable:*(a1 + 40)];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 _isWaitingForStartRequest];

  if ((v9 & 1) == 0)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 _setRequestActive:0];
  }

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 _setWaitingForStartRequest:*(a1 + 40)];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 _checkAndUpdateSiriIdleAndQuietStatusOrRescheduleIdleTimerIfNeeded];
}

void sub_10005FA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005FA38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v3 = [WeakRetained _instrumentationPresentationForPresentationOptions:{objc_msgSend(WeakRetained, "_presentationOptions")}];
    v4 = +[SRUIFInstrumentationManager sharedManager];
    [v4 emitUIStateTransitionEventWithFromState:objc_msgSend(v11 toState:"_mapSiriTransitionState:" withPresentationType:*(a1 + 40)) machAbsoluteTransitionTime:{objc_msgSend(v11, "_mapSiriTransitionState:", *(a1 + 48)), v3, *(a1 + 56)}];

    v5 = [v11 _mapSiriTransitionState:*(a1 + 48)] == 5;
    WeakRetained = v11;
    if (v5)
    {
      v6 = [v11 _requestOptions];
      v7 = [v6 requestSource];

      WeakRetained = v11;
      if (v7 == 13)
      {
        v8 = objc_alloc_init(SISchemaUEILaunchEnded);
        [v8 setExists:1];
        v9 = objc_alloc_init(SISchemaUEILaunchContext);
        [v9 setEnded:v8];
        v10 = +[SRUIFInstrumentationManager sharedManager];
        [v10 emitInstrumentation:v9 atTime:*(a1 + 56)];

        WeakRetained = v11;
      }
    }
  }
}

uint64_t sub_10005FB90(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0x10)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

void sub_10006061C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v8 = v5;
    [*(a1 + 32) aceId];
    if (a2)
      v6 = {;
      [SACommandSucceeded sruif_commandSucceededWithRefId:v6];
    }

    else
      v6 = {;
      [SACommandFailed sruif_commandFailedWithRefId:v6];
    }
    v7 = ;

    (*(*(a1 + 40) + 16))();
    v5 = v8;
  }
}

void sub_100060938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10006095C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100060974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 136315394;
      v6 = "[SRSiriViewController siriSessionOpenURL:completionHandler:]_block_invoke_2";
      v7 = 2112;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #punchout 8 Performing InPlace punchout %@", &v5, 0x16u);
    }

    WeakRetained[23] = 0;
    if ([WeakRetained _usesEventDrivenIdleAndQuietUpdates])
    {
      [WeakRetained _checkAndUpdateSiriIdleAndQuietStatusIfNeeded];
    }
  }
}

void sub_100061790(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000617B4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if ([v5 length])
    {
      v4 = 0;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    [WeakRetained _setShowKeyboardIfTextInputEnabled:*(a1 + 41) minimized:v4];
    [WeakRetained _setKeyboardLoweredAfterResponse:*(a1 + 40)];
  }
}

void sub_100062C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id location)
{
  objc_destroyWeak((v47 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100062C60(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _presentation];
  v5 = [*(a1 + 32) requestEndBehavior];
  [v4 handleRequestEndBehavior:v5 isAttending:a2];
}

void sub_100062CE8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _presentation];
  [v4 siriResponseModeDidChange:*(a1 + 40) isAttending:a2];
}

void sub_100063264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100063280(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v9 = WeakRetained;
    if (a2)
    {
      [WeakRetained _didCompleteActionForAceCommand:v5 success:1];
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) aceId];
      [SACommandSucceeded sruif_commandSucceededWithRefId:v7];
    }

    else
    {
      [WeakRetained _didCompleteActionForAceCommand:v5 success:0];
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) aceId];
      [SACommandFailed sruif_commandFailedWithRefId:v7];
    }
    v8 = ;
    (*(v6 + 16))(v6, v8);

    WeakRetained = v9;
  }
}

uint64_t sub_100063C58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006409C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000640B8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 playables];
  v8 = [v7 firstObject];
  v9 = [v8 movieClips];
  v10 = [v9 firstObject];
  v11 = [v10 preferredAsset];
  v12 = [v11 url];
  v13 = [NSURL URLWithString:v12];

  [a1[4] setHiresTrailerUri:v13];
  [a1[4] setLowresTrailerUri:v13];
  objc_copyWeak(&v16, a1 + 6);
  v14 = a1[4];
  v15 = a1[5];
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v16);
}

void sub_100064254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained siriSessionDidReceivePlayContentCommand:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_100064A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v65 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100064A48(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _presentation];
  v5 = [*(a1 + 32) requestEndBehavior];
  [v4 handleRequestEndBehavior:v5 isAttending:a2];
}

void sub_100064AD0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _presentation];
  [v4 siriResponseModeDidChange:*(a1 + 40) isAttending:a2];
}

void sub_100064B40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    v8 = [v6 _MDModeToSRModeConverter:*(a1 + 56)];
    if (v7 == a3)
    {
      v9 = *(a1 + 40);
      v10 = v6;
      v11 = v5;
    }

    else
    {
      v10 = v6;
      v11 = v5;
      v9 = 0;
    }

    [v10 _processAddViewsCommand:v11 forMode:v8 completion:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (*(a1 + 48) == a3)
      {
        v12 = *(a1 + 40);
        v13 = v5;
      }

      else
      {
        v13 = v5;
        v12 = 0;
      }

      [*(a1 + 32) siriSessionDidReceiveSayItCommand:v13 completion:v12];
    }

    else
    {
      v14 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CD444(v14);
      }
    }
  }
}

void sub_1000652E4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000654D0;
  v19[3] = &unk_1001682D0;
  objc_copyWeak(&v21, a1 + 8);
  v20 = a1[4];
  v5 = [WeakRetained _hostWithErrorHandler:v19];
  v6 = a1[4];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100065534;
  v14[3] = &unk_1001682F8;
  objc_copyWeak(&v18, a1 + 8);
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v15 = v12;
  v16 = v11;
  v13 = v3;
  v17 = v13;
  [v5 serviceBulletinWithIdentifier:v6 replyHandler:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
}

void sub_1000654AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 72));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1000654D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CD56C(a1, v4);
  }
}

void sub_100065534(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CD638(a1, v4);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    [*(a1 + 40) setAssistantBulletin:v3];
  }

LABEL_4:
  v11 = 0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10 = 0;
  v7 = [v5 parseStringWithFormat:v6 error:&v10 containsPrivacySensitiveContents:&v11];
  v8 = v10;
  if (!v7 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CD6F8();
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v11);
  }
}

void sub_10006562C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = *(*(*(a1 + 56) + 8) + 24);
    v6 = AFSiriLogContextConnection;
    v7 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1)
    {
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = v6;
        v10 = SRUIFSpeechSynthesisResultGetName();
        v11 = *(a1 + 40);
        *v20 = 136315907;
        *&v20[4] = "[SRSiriViewController _configuredSpeakableUtteranceParserForCommand:context:speakableText:subCompletion:speakPreparation:speakCompletion:]_block_invoke";
        *&v20[12] = 2117;
        *&v20[14] = v8;
        *&v20[22] = 2112;
        v21 = v10;
        LOWORD(v22) = 2112;
        *(&v22 + 2) = v11;
        v12 = "%s #tts 32 SRUIFSpeechSynthesisCompletion text=%{sensitive}@ result=%@ command=%@";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, v20, 0x2Au);
      }
    }

    else if (v7)
    {
      v17 = *(a1 + 32);
      v9 = v6;
      v10 = SRUIFSpeechSynthesisResultGetName();
      v18 = *(a1 + 40);
      *v20 = 136315906;
      *&v20[4] = "[SRSiriViewController _configuredSpeakableUtteranceParserForCommand:context:speakableText:subCompletion:speakPreparation:speakCompletion:]_block_invoke";
      *&v20[12] = 2112;
      *&v20[14] = v17;
      *&v20[22] = 2112;
      v21 = v10;
      LOWORD(v22) = 2112;
      *(&v22 + 2) = v18;
      v12 = "%s #tts 32 SRUIFSpeechSynthesisCompletion text=%@ result=%@ command=%@";
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      [WeakRetained _setListenAfterSpeakingForRequestFinished:0];
    }

    [WeakRetained _didCompleteActionForAceCommand:*(a1 + 40) success:{a2 != 3, *v20, *&v20[16], v21, v22}];
    v19 = *(a1 + 48);
    if (v19)
    {
      (*(v19 + 16))();
    }

    goto LABEL_19;
  }

  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 136315138;
    *&v20[4] = "[SRSiriViewController _configuredSpeakableUtteranceParserForCommand:context:speakableText:subCompletion:speakPreparation:speakCompletion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s #tts 32 FAIL strongSelf", v20, 0xCu);
  }

  v14 = *(*(*(a1 + 56) + 8) + 24);
  v15 = AFSiriLogContextConnection;
  v16 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR);
  if (v14 == 1)
  {
    if (v16)
    {
      sub_1000CD848(a1, v15);
    }
  }

  else if (v16)
  {
    sub_1000CD77C(a1, v15);
  }

LABEL_19:
}

void sub_100065AD4(id a1, int64_t a2, NSError *a3)
{
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (v4)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CD918();
    }
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SRSiriViewController siriSessionDidReceivePlayNotificationSound:completion:]_block_invoke";
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s Completed notification sound playback with PlaybackCompletionType: %zd", &v6, 0x16u);
  }
}

void sub_100065D2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didCompleteActionForAceCommand:*(*(a1 + 32) + 96) success:1];
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v3[12];
      v6 = 136315394;
      v7 = "[SRSiriViewController alertDidBeginPlaying:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s Marking notification sound 'complete' for command %@ ", &v6, 0x16u);
    }
  }
}

uint64_t sub_100066254(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006665C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location, char a36)
{
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000666C4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000666DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didCompleteActionForAceCommand:*(a1 + 32) success:1];
}

void sub_100066730(uint64_t a1)
{
  if (!--*(*(*(a1 + 40) + 8) + 24))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _didCompleteActionForAceCommand:*(a1 + 32) success:1];
  }
}

void sub_100066AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  if (v16)
  {
    objc_destroyWeak(v17);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100066AD0(uint64_t a1, char a2, void *a3)
{
  v11 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained _instrumentationManager];
    v7 = [*(a1 + 32) punchOutUri];
    v8 = [*(a1 + 32) appId];
    [v6 emitPunchOutEventWithURL:v7 appID:v8];

    v9 = [*(a1 + 32) aceId];
    [SACommandSucceeded sruif_commandSucceededWithRefId:v9];
  }

  else
  {
    v9 = [*(a1 + 32) aceId];
    [SACommandFailed sruif_commandFailedWithRefId:v9 error:v11];
  }
  v10 = ;

  (*(*(a1 + 40) + 16))();
}

void sub_100066D54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100066D70(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_6:
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [*(a1 + 32) aceId];
      v12 = [SACommandSucceeded sruif_commandSucceededWithRefId:v11];
      (*(v10 + 16))(v10, v12);
    }

    goto LABEL_13;
  }

  if (a2)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 aceId];
      *buf = 136315650;
      v30 = "[SRSiriViewController siriSessionDidReceiveCloseAssistantCommand:completion:]_block_invoke";
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s #tts speech queue is empty, performing dismissal command %@, aceId: %@", buf, 0x20u);
    }

    [v5 _dismissWithReason:*(a1 + 56)];
    goto LABEL_6;
  }

  if (!WeakRetained[1])
  {
    v13 = objc_alloc_init(AFQueue);
    v14 = v5[1];
    v5[1] = v13;
  }

  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = v15;
    v18 = [v16 aceId];
    *buf = 136315650;
    v30 = "[SRSiriViewController siriSessionDidReceiveCloseAssistantCommand:completion:]_block_invoke";
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s #tts delay enqueue dismissal command %@, aceId: %@", buf, 0x20u);
  }

  v19 = v5[1];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10006702C;
  v24 = &unk_100168408;
  v25 = *(a1 + 32);
  v26 = v5;
  v28 = *(a1 + 56);
  v27 = *(a1 + 40);
  v20 = objc_retainBlock(&v21);
  [v19 enqueueObject:{v20, v21, v22, v23, v24}];

LABEL_13:
}

void sub_10006702C(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 aceId];
    v9 = 136315650;
    v10 = "[SRSiriViewController siriSessionDidReceiveCloseAssistantCommand:completion:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #tts performing delayed dismissal command to %@, aceId: %@", &v9, 0x20u);
  }

  [*(a1 + 40) _dismissWithReason:*(a1 + 56)];
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = [*(a1 + 32) aceId];
    v8 = [SACommandSucceeded sruif_commandSucceededWithRefId:v7];
    (*(v6 + 16))(v6, v8);
  }
}

void sub_1000672C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000672EC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    [WeakRetained _didReceiveAceCommand:*(a1 + 32) completion:*(a1 + 40)];
    [v13 _didStartActionForAceCommand:*(a1 + 32)];
    [v13 _didCompleteActionForAceCommand:*(a1 + 32) success:1];
    WeakRetained = v13;
    if (a2 != 3)
    {
      v5 = [SASRequestOptions alloc];
      v6 = [v13 _uiPresentationIdentifier];
      v7 = [v5 initWithRequestSource:9 uiPresentationIdentifier:v6];

      v8 = [v13 _requestOptions];
      v9 = [v8 originalRequestOptions];
      if (v9)
      {
        [v7 setOriginalRequestOptions:v9];
      }

      else
      {
        v10 = [v13 _requestOptions];
        [v7 setOriginalRequestOptions:v10];
      }

      v11 = [*(a1 + 32) aceId];
      [v7 setServerCommandId:v11];

      [v7 setPronunciationRequest:1];
      v12 = [*(a1 + 32) context];
      [v7 setPronunciationContext:v12];

      [v13 _startRequestWithOptions:v7];
      WeakRetained = v13;
    }
  }
}

void sub_100067DEC(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CD9A8();
  }
}

void sub_100068140(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 40))
  {
    v10 = v5;
    if (a2)
    {
      v6 = objc_alloc_init(SACommandSucceeded);
    }

    else
    {
      v6 = objc_alloc_init(SACommandFailed);
      [v6 setErrorCode:{objc_msgSend(v10, "code")}];
      v7 = [v10 localizedDescription];
      v8 = [NSString stringWithFormat:@"Could not update the guide cache. %@", v7];
      [v6 setReason:v8];
    }

    v9 = [*(a1 + 32) aceId];
    [v6 setRefId:v9];

    (*(*(a1 + 40) + 16))();
    v5 = v10;
  }
}

void sub_1000687C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000687E0(uint64_t a1)
{
  v2 = objc_alloc_init(SRPreSynthesisTask);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained _pendingPreSynthesisTasks];
  [v4 addObject:v2];

  [(SRPreSynthesisTask *)v2 setPreSynthesizeTTSCommand:*(a1 + 32)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006895C;
  v9[3] = &unk_1001684A0;
  objc_copyWeak(&v11, (a1 + 48));
  v10 = *(a1 + 40);
  v5 = objc_retainBlock(v9);
  [(SRPreSynthesisTask *)v2 setCompletion:v5];
  v8 = 0;
  v6 = [(SRPreSynthesisTask *)v2 handlePreSynthesisCommandWithError:&v8];
  v7 = v8;
  if ((v6 & 1) == 0 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CDAA4();
  }

  objc_destroyWeak(&v11);
}

void sub_10006895C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v7 replyAceCommand];
      (*(v4 + 16))(v4, v5);
    }

    v6 = [WeakRetained _pendingPreSynthesisTasks];
    [v6 removeObject:v7];
  }
}

uint64_t sub_1000692A0(uint64_t a1, uint64_t a2)
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = SRUIFSpeechSynthesisResultGetName();
    v8 = 136315394;
    v9 = "[SRSiriViewController siriSessionRequestsPlayPhaticWithCompletion:]_block_invoke";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s #phatic 8 %@", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2 != 2);
}

void sub_10006966C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[NSString alloc] initWithData:v5 encoding:4];
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v15 = "[SRSiriViewController siriSessionDidReceiveLaunchTVRemoteCommand:completion:]_block_invoke";
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s %@ => %@", buf, 0x20u);
    }

    if (v7)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000698B0;
      block[3] = &unk_100167010;
      v13 = v7;
      dispatch_async(&_dispatch_main_q, block);
      v10 = objc_alloc_init(SACommandSucceeded);
    }

    else
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CDB28();
      }

      v10 = objc_alloc_init(SACommandFailed);
    }
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDBA4();
    }

    v10 = objc_alloc_init(SACommandFailed);
  }

  if (*(a1 + 56))
  {
    v11 = [*(a1 + 48) aceId];
    [v10 setRefId:v11];

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000698B0(uint64_t a1)
{
  v2 = [[TVRViewServiceConfigContext alloc] initWithDeviceIdentifier:*(a1 + 32) identifierType:3 deviceType:0 launchContext:9];
  v1 = +[TVRViewServiceManager sharedInstance];
  [v1 presentWithContext:v2];
}

void sub_10006B244(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CDC20();
  }
}

void sub_10006BBD4(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    if ([*(a1 + 40) containsItemWithIdentifier:*(a1 + 48)])
    {
      v2 = *(a1 + 32);
      v3 = [*(a1 + 56) identifier];
      [v2 siriDidFinishActionsForConversationItemWithIdentifier:v3 inConversation:*(a1 + 40)];
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CDC9C();
    }
  }
}

uint64_t sub_10006C734(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10006C7F8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10006CDA8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10006CE78(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10006D5A8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006D8B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    a2 = [UIImage imageWithData:a2];
  }

  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_10006DE68(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v14 = @"metricsContext";
    v15 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  }

  else
  {
    v3 = &__NSDictionary0__struct;
  }

  v4 = (a1 + 56);
  if ([*(a1 + 56) isSubclassOfClass:objc_opt_class()])
  {
    v5 = 7;
LABEL_12:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006E0A8;
    v10[3] = &unk_100168538;
    v11 = *(a1 + 40);
    v13[1] = v5;
    v3 = v3;
    v12 = v3;
    v13[2] = *(a1 + 64);
    objc_copyWeak(v13, (a1 + 48));
    dispatch_async(&_dispatch_main_q, v10);
    objc_destroyWeak(v13);

    goto LABEL_13;
  }

  if ([*v4 isSubclassOfClass:objc_opt_class()])
  {
    v6 = [*(a1 + 40) aceObject];
    v7 = [v6 siriui_eventInfo];

    if (v7)
    {
      v8 = [v7 mutableCopy];
      [v8 addEntriesFromDictionary:v3];
      v9 = [v8 copy];

      v3 = v9;
    }

    v5 = 2;
    goto LABEL_12;
  }

  if ([*v4 isSubclassOfClass:objc_opt_class()])
  {
    v5 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CDD18();
  }

LABEL_13:
}

void sub_10006E0A8(uint64_t a1)
{
  v2 = [AFMetrics alloc];
  v3 = [*(a1 + 32) aceCommandIdentifier];
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = [NSNumber numberWithDouble:*(a1 + 64)];
  v9 = [v2 initWithOriginalCommandId:v3 category:v4 eventInfo:v5 duration:v6];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained _session];
  [v8 recordUIMetrics:v9];
}

void sub_10006E2C4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CDD94();
  }
}

void sub_10006E3EC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CDE10();
  }
}

void sub_10006FF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location, char a35)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v36 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_10006FFE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained _readoutResultFromTTSResult:a2 error:v5];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  v8 = *(a1 + 32);

  dispatch_group_leave(v8);
}

void sub_10007005C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained _readoutResultFromTTSResult:a2 error:v5];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  v8 = *(a1 + 32);

  dispatch_group_leave(v8);
}

void sub_1000700D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _readoutResultFromTitleResult:*(*(*(a1 + 48) + 8) + 24) messageResult:*(*(*(a1 + 56) + 8) + 24)];
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = AFUIBulletinReadoutResultGetName();
      v11 = 136315394;
      v12 = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s #cmas #carPlay Synthesis is complete. %@", &v11, 0x16u);
    }

    [v3 _setReadingBulletinContentInCarPlayOutsideOfSiriSession:0];
    v7 = *(*(a1 + 32) + 8);
    if (!v7)
    {
      v8 = objc_alloc_init(AFQueue);
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      *(v9 + 8) = v8;

      v7 = *(*(a1 + 32) + 8);
    }

    [v7 enqueueObject:&stru_1001685C0];
  }

  else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CDF0C();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100070284(id a1)
{
  v1 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v5 = "[SRSiriViewController siriSessionRequestsReadoutOfBulletin:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "%s #tts TTS completed after AFUIBulletinReadout. Deactivating AVAudioSession sharedInstance and notifying others on deactivation.", buf, 0xCu);
  }

  v2 = +[AVAudioSession sharedInstance];
  v3 = 0;
  [v2 setActive:0 withOptions:1 error:&v3];
}

void sub_100070840(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CE0D4();
  }
}

void sub_1000719C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak((v43 + 48));
  objc_destroyWeak(&a43);
  objc_destroyWeak((v44 - 112));
  _Unwind_Resume(a1);
}

void sub_1000719FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v8 = [WeakRetained _presentation];
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [v7 _presentation];
        [v10 siriDidPunchOutWithOptions:*(a1 + 32)];
      }

      v11 = [v7 _completedCommandAppPunchOutIds];
      [v11 removeAllObjects];

      v12 = *(a1 + 40);
      v13 = [*(a1 + 48) punchOutUri];
      v14 = [*(a1 + 48) appDisplayName];
      v15 = [*(a1 + 48) bundleId];
      v16 = [SAUIAppPunchOutEvent sruif_appPunchOutEventWithRefId:v12 URL:v13 appDisplayName:v14 bundleId:v15];

      [v7 _performGenericAceCommand:v16 turnIdentifier:0 completion:0];
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        sub_1000CE458();
      }

      if (*(a1 + 80) == 1)
      {
        v17 = [*(a1 + 56) _session];
        [v17 clearContext];
      }
    }

    v18 = *(a1 + 64);
    if (v18)
    {
      (*(v18 + 16))(v18, a2, v5);
    }
  }
}

uint64_t sub_100071BA8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_100071BC4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CE4E4();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100071C40(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(a1[5] + 2))();
  }

  else
  {
    v6 = [a1[4] appAvailableInStorefront];
    v7 = a1[4];
    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100071DB0;
      v10[3] = &unk_1001686D0;
      v11 = v7;
      v13 = a1[5];
      v12 = v5;
      objc_copyWeak(&v14, a1 + 6);
      [v11 afui_populateStoreServicesData:v10];
      objc_destroyWeak(&v14);
    }

    else
    {
      v8 = [v7 afui_punchOutAppNotAvailableViews];
      WeakRetained = objc_loadWeakRetained(a1 + 6);
      [WeakRetained _performGenericAceCommand:v8 turnIdentifier:0 completion:0];

      (*(a1[5] + 2))();
    }
  }
}

void sub_100071DB0(uint64_t a1)
{
  v2 = [*(a1 + 32) afui_punchOutFailureViews];
  v3 = [v2 views];
  v4 = [v3 count];

  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _performGenericAceCommand:v2 turnIdentifier:0 completion:0];

    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100071EDC;
    v7[3] = &unk_1001686A8;
    objc_copyWeak(&v8, (a1 + 56));
    [v6 afui_getInstallAppPunchoutWithCompletion:v7];
    (*(*(a1 + 48) + 16))();
    objc_destroyWeak(&v8);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_100071EDC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_alloc_init(SAUIAddViews);
    [v4 setDialogPhase:SAUIDialogPhaseCompletionValue];
    v7 = v3;
    v5 = [NSArray arrayWithObjects:&v7 count:1];

    [v4 setViews:v5];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _performGenericAceCommand:v4 turnIdentifier:0 completion:0];
  }
}

void sub_100072070(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE56C(v4);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3 == 0);
  }
}

void sub_10007255C(id a1, NSError *a2)
{
  v2 = a2;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CE610();
  }
}

void sub_100072710(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[22] & 1) == 0 && [WeakRetained _isSiriIdleAndQuiet])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[SRSiriViewController _scheduleAudioResumptionAfterDelayInSec:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Resuming interrupted audio", &v5, 0xCu);
    }

    v4 = [v2 _session];
    [v4 resumeInterruptedAudioPlaybackIfNeeded];
  }
}

uint64_t sub_100072B80(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t sub_100072D04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100073050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100073074(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = AFSiriLogContextConnection;
    v7 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        v8 = 136315138;
        v9 = "[SRSiriViewController _enqueueSpokenSuggestionsFromAddViews:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #suggestions SiriSuggestions returned a spoken hint. Enqueuing it to be spoken after TTS.", &v8, 0xCu);
      }

      objc_storeStrong(WeakRetained + 34, a2);
    }

    else
    {
      if (v7)
      {
        v8 = 136315138;
        v9 = "[SRSiriViewController _enqueueSpokenSuggestionsFromAddViews:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s #suggestions No spoken hints returned from SiriSuggestions.", &v8, 0xCu);
      }

      [WeakRetained[52] recordActionCompletedForAceCommand:*(a1 + 32) success:1];
    }
  }
}

void sub_100073354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100073380(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SRSiriViewController _speakEnqueuedSpokenSuggestion]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s #suggestions Hint TTS finished..", buf, 0xCu);
    }

    v4 = [*(a1 + 32) addViews];
    v5 = [WeakRetained _searchAddViewsForSpokenHintsView:v4];

    v6 = +[AFDialogPhase completionDialogPhase];
    v7 = [*(a1 + 32) spokenText];
    v8 = [*(a1 + 32) suggestionId];
    v9 = [NSString stringWithFormat:@"SiriHintSpoken#%@", v8];
    [WeakRetained _logAceObjectSpoken:v5 dialogPhase:v6 speakableText:v7 dialogIdentifierOverride:v9];

    v10 = WeakRetained[52];
    v11 = [*(a1 + 32) addViews];
    [v10 recordActionCompletedForAceCommand:v11 success:1];
  }
}

void sub_1000739C4(uint64_t a1)
{
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SRSiriViewController _startListenAfterSpeakingRequest]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s #tts TTS completed. Start listening.", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _startRequestWithOptions:*(a1 + 32)];
}

void sub_100074B38(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _ensurePresentationForReplay];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [WeakRetained siriSessionDidReceiveAddViewsCommand:v3 completion:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [WeakRetained siriSessionDidReceiveSpeechRecognizedCommand:v3];
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE804();
    }
  }
}

Class sub_100075304(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10018F1F0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100075448;
    v4[4] = &unk_100167A30;
    v4[5] = v4;
    v5 = off_1001687D8;
    v6 = 0;
    qword_10018F1F0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10018F1F0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("VTStateManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000CE884();
  }

  qword_10018F1E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100075448()
{
  result = _sl_dlopen();
  qword_10018F1F0 = result;
  return result;
}

void sub_100075858(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startScrollingWithOptions:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_1000768AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000768F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100076908(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = objc_alloc_init(NSMutableString);
  *(*(*(a1 + 40) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) length] != 0;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    [v12 appendString:?];
  }

  v13 = a3 - a5;
  if (a3 != a5)
  {
    v14 = [*(a1 + 32) substringWithRange:{a5, a3 - a5}];
    [v12 appendString:v14];
  }

  [v12 appendString:v11];
  [*(*(*(a1 + 56) + 8) + 40) addObject:v12];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = a6 - (v13 + a4);
  if (v17)
  {
    v18 = objc_alloc_init(NSMutableString);
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = *(a1 + 32);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100076AAC;
    v22[3] = &unk_100168838;
    v22[4] = *(a1 + 48);
    [v21 enumerateSubstringsInRange:a3 + a4 options:v17 usingBlock:{1026, v22}];
  }
}

void sub_100076DE8(uint64_t a1)
{
  [*(*(a1 + 32) + 40) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1000773A4(uint64_t a1)
{
  v2 = objc_alloc(*(a1 + 32));
  v5 = [*(a1 + 32) _defaultURL];
  v3 = [v2 initWithURL:v5];
  v4 = qword_10018F1F8;
  qword_10018F1F8 = v3;
}

void sub_100077558(id a1)
{
  v1 = qword_10018F208;
  qword_10018F208 = &off_10016E760;
}

uint64_t sub_1000778AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = 136315906;
    v11 = "[SRSiriPresentationPluginHost _rescanBundles]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error encountered enumerating %{public}@ in plugin directory at %{public}@: %{public}@", &v10, 0x2Au);
  }

  return 0;
}

void sub_100077D98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 path];
  [v4 setObject:v6 forKey:v5];
}

void sub_100077EE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = *(a1 + 32);
      v8 = [NSURL fileURLWithPath:v6 isDirectory:1];
      [v7 setObject:v8 forKey:v5];
    }

    else
    {
      v10 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CE9E8(v10);
      }
    }
  }

  else
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CE944(v9);
    }
  }
}

void sub_1000783E8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

id sub_100078408(void *a1)
{
  v1 = a1;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 assistantUILocalizedStringForKey:v1 table:0];

  return v3;
}

uint64_t sub_10007847C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 count];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000785B0;
  v9[3] = &unk_100168948;
  v6 = v4;
  v10 = v6;
  v11 = v18;
  v12 = &v14;
  v13 = v5;
  [v3 enumerateObjectsUsingBlock:v9];
  v7 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);

  return v7;
}

void sub_10007858C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000785B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [*(a1 + 32) objectAtIndex:*(*(*(a1 + 40) + 8) + 24)];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    while (1)
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = *(a1 + 56) - 1;
      [*(a1 + 32) objectAtIndex:v6];
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) != 0 || v6 >= v7)
      {
        break;
      }

      ++*(*(*(a1 + 40) + 8) + 24);
    }

    if ((isKindOfClass & 1) == 0 && v6 >= v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

id sub_1000787C4(void *a1)
{
  v1 = a1;
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v19;
    *&v5 = 136315650;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 sr_sirilandShim];
        if (v11)
        {
          v12 = v11;
          if (v11 != v10)
          {
            v13 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = "_SRSirilandShimAceViews";
              v24 = 2112;
              v25 = v10;
              v26 = 2112;
              v27 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s Successfully shimmed AceView for the Siriland presentation:\n    AceView: %@\n    Shimmed AceView: %@", buf, 0x20u);
            }

            v7 = 1;
          }
        }

        else
        {
          v12 = v10;
        }

        [v2 addObject:v12];
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);

    if (v7)
    {
      v14 = [v2 copy];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = v3;
LABEL_18:
  v15 = v14;

  return v15;
}

void sub_10007A1D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_56;
  }

  v91 = a1;
  v93 = v5;
  v7 = v5;
  v8 = [v7 faceTime];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = objc_alloc_init(SFLocalImage);
    v11 = v10;
    v12 = 0;
  }

  else
  {
    v13 = [v7 outgoing];
    v14 = [v13 BOOLValue];

    if (!v14)
    {
      v11 = objc_alloc_init(SFImage);
      goto LABEL_8;
    }

    v10 = objc_alloc_init(SFLocalImage);
    v11 = v10;
    v12 = 1;
  }

  [v10 setLocalImageType:v12];
  [v11 setIsTemplate:1];
LABEL_8:
  [v11 setSize:{14.0, 14.0}];
  [v11 setSource:2];
  v95 = v6;
  v92 = v11;
  [v6 setImage:v11];
  v94 = v7;
  v15 = [v7 contact];
  v96 = [v15 _applicablePhone];
  v16 = [v15 _applicableEmail];
  v17 = [v15 displayText];
  v18 = v17;
  if (!v17)
  {
    v17 = +[NSNull null];
  }

  v85 = v17;
  v105[0] = v17;
  v90 = v15;
  v87 = [v15 object];
  v19 = [v87 fullName];
  v20 = v19;
  if (!v19)
  {
    v20 = +[NSNull null];
  }

  v105[1] = v20;
  v21 = [v96 number];
  v22 = UIFormattedPhoneNumberFromString();
  v23 = v22;
  if (!v22)
  {
    v23 = +[NSNull null];
  }

  v105[2] = v23;
  v89 = v16;
  v24 = [v16 emailAddress];
  v25 = v24;
  if (!v24)
  {
    v25 = +[NSNull null];
  }

  v105[3] = v25;
  v26 = [NSArray arrayWithObjects:v105 count:4];
  if (!v24)
  {
  }

  if (!v22)
  {
  }

  if (!v19)
  {
  }

  if (!v18)
  {
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v98;
    while (2)
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v98 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v97 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && [v32 length])
        {
          v33 = v32;
          goto LABEL_35;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v97 objects:v104 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0;
LABEL_35:

  v34 = [v94 callCount];
  v35 = [v34 integerValue];

  if (v35 >= 2)
  {
    v36 = [NSString stringWithFormat:@"%@ (%ld)", v33, v35];

    v33 = v36;
  }

  v37 = objc_alloc_init(SFRichText);
  v38 = objc_alloc_init(SFFormattedText);
  [v38 setText:v33];
  [v38 setIsBold:1];
  v39 = [v94 missed];
  v40 = [v39 BOOLValue];

  if (v40)
  {
    [v38 setTextColor:1];
  }

  v88 = v33;
  v103 = v38;
  v41 = [NSArray arrayWithObjects:&v103 count:1];
  [v37 setFormattedTextPieces:v41];

  [v6 setLeadingText:v37];
  v42 = [v96 label];
  v43 = v42;
  if (v42 && [v42 length])
  {
    v44 = [CNLabeledValue localizedStringForLabel:v43];
  }

  else
  {
    v45 = [v94 faceTime];
    v46 = [v45 BOOLValue];

    if (v46)
    {
      v47 = @"FACETIME_VIDEO_LABEL";
    }

    else
    {
      v48 = [v94 faceTimeAudio];
      v49 = [v48 BOOLValue];

      if (v49)
      {
        v47 = @"FACETIME_AUDIO_LABEL";
      }

      else
      {
        v47 = @"UNKNOWN_PHONE_LABEL";
      }
    }

    v44 = sub_100078408(v47);
  }

  v50 = v44;
  v84 = v38;
  v86 = v37;

  v51 = objc_alloc_init(SFRichText);
  v52 = objc_alloc_init(SFFormattedText);
  v83 = v50;
  [v52 setText:v50];
  [v52 setTextColor:0];
  v81 = v52;
  v102 = v52;
  v53 = 1;
  v54 = [NSArray arrayWithObjects:&v102 count:1];
  [v51 setFormattedTextPieces:v54];

  v82 = v51;
  [v6 setLeadingSubtitle:v51];
  [v6 setSeparatorStyle:3];
  v55 = [v94 outgoing];
  LOBYTE(v52) = [v55 BOOLValue];

  if ((v52 & 1) == 0)
  {
    v56 = [v94 missed];
    v57 = [v56 BOOLValue];

    if (v57)
    {
      v53 = 2;
    }

    else
    {
      v53 = 3;
    }
  }

  v58 = [v94 faceTime];
  v59 = [v58 BOOLValue];

  if (v59)
  {
    v60 = 2;
  }

  else
  {
    v60 = 1;
  }

  v61 = [INCallRecord alloc];
  v62 = +[NSUUID UUID];
  v63 = [v62 UUIDString];
  v64 = [v94 callTime];
  v65 = [v94 contact];
  v66 = [v65 sr_inPerson];
  v67 = [v94 isNew];
  v68 = [v61 initWithIdentifier:v63 dateCreated:v64 caller:v66 callRecordType:v53 callCapability:v60 callDuration:0 unseen:v67];

  v69 = v68;
  [*(v91 + 32) addObject:v68];
  v70 = objc_alloc_init(SAPhoneCall);
  v71 = +[NSUUID UUID];
  v72 = [v71 UUIDString];
  [v70 setAceId:v72];

  v73 = [v94 contact];
  [v70 setCallRecipient:v73];

  v74 = [v94 faceTime];
  [v70 setFaceTime:{objc_msgSend(v74, "BOOLValue")}];

  v75 = [v94 faceTimeAudio];
  [v70 setFaceTimeAudio:{objc_msgSend(v75, "BOOLValue")}];

  [*(v91 + 40) addObject:v70];
  v76 = objc_alloc_init(SFAbstractCommand);
  [v76 setType:1];
  v77 = objc_alloc_init(SFCommandValue);
  v78 = objc_alloc_init(SFReferentialCommand);
  v79 = [v70 aceId];
  [v78 setReferenceIdentifier:v79];

  [v77 setReferentialCommand:v78];
  [v76 setValue:v77];
  v101 = v76;
  v80 = [NSArray arrayWithObjects:&v101 count:1];
  v6 = v95;
  [v95 setCommands:v80];

  v5 = v93;
LABEL_56:
}

void sub_10007B058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v73 = a1;
    v75 = v5;
    v7 = v5;
    v8 = [v7 contact];
    v77 = [v8 _applicablePhone];
    v9 = [v8 displayText];
    v10 = v9;
    if (!v9)
    {
      v10 = +[NSNull null];
    }

    v76 = v7;
    v88[0] = v10;
    v74 = v8;
    v11 = [v8 object];
    v12 = [v11 fullName];
    v13 = v12;
    if (!v12)
    {
      v13 = +[NSNull null];
    }

    v78 = v6;
    v88[1] = v13;
    v14 = [v77 number];
    v15 = UIFormattedPhoneNumberFromString();
    v16 = v15;
    if (!v15)
    {
      v16 = +[NSNull null];
    }

    v88[2] = v16;
    v17 = [NSArray arrayWithObjects:v88 count:3];
    if (!v15)
    {
    }

    if (!v12)
    {
    }

    if (!v9)
    {
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v19)
    {
      v20 = *v80;
      v21 = v78;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v80 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v79 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && [v23 length])
          {
            v19 = v23;
            goto LABEL_26;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v79 objects:v87 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v21 = v78;
    }

LABEL_26:

    v24 = objc_alloc_init(SFRichText);
    v25 = objc_alloc_init(SFFormattedText);
    v72 = v19;
    [v25 setText:v19];
    [v25 setIsBold:1];
    v70 = v25;
    v86 = v25;
    v26 = [NSArray arrayWithObjects:&v86 count:1];
    [v24 setFormattedTextPieces:v26];

    v71 = v24;
    [v21 setLeadingText:v24];
    v27 = [v77 label];
    v28 = v27;
    if (v27 && [v27 length])
    {
      v29 = [CNLabeledValue localizedStringForLabel:v28];
    }

    else
    {
      v29 = sub_100078408(@"UNKNOWN_PHONE_LABEL");
    }

    v30 = v29;

    v31 = objc_alloc_init(SFRichText);
    v32 = objc_alloc_init(SFFormattedText);
    v69 = v30;
    [v32 setText:v30];
    [v32 setTextColor:0];
    v67 = v32;
    v85 = v32;
    v33 = [NSArray arrayWithObjects:&v85 count:1];
    [v31 setFormattedTextPieces:v33];

    v68 = v31;
    [v21 setLeadingSubtitle:v31];
    v34 = [v76 length];
    v66 = v34;
    if (v34)
    {
      v35 = v34;
      v36 = objc_alloc_init(NSDateFormatter);
      [v36 setDateFormat:@"m:ss"];
      v37 = objc_alloc_init(SFRichText);
      v38 = objc_alloc_init(SFFormattedText);
      v39 = +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", [v35 integerValue]);
      v40 = [v36 stringFromDate:v39];
      [v38 setText:v40];

      [v38 setTextColor:0];
      v84 = v38;
      v41 = [NSArray arrayWithObjects:&v84 count:1];
      [v37 setFormattedTextPieces:v41];

      [v21 setTrailingSubtitle:v37];
    }

    v42 = [v76 isNew];
    v43 = [v42 BOOLValue];

    if (v43)
    {
      v44 = objc_alloc_init(SFLocalImage);
      [v44 setLocalImageType:2];
    }

    else
    {
      v44 = objc_alloc_init(SFImage);
    }

    [v44 setSize:{14.0, 14.0}];
    [v44 setSource:2];
    [v21 setImage:v44];
    [v21 setSeparatorStyle:3];
    v45 = [INCallRecord alloc];
    v46 = +[NSUUID UUID];
    v47 = [v46 UUIDString];
    v48 = [v76 callTime];
    v49 = [v76 contact];
    v50 = [v49 sr_inPerson];
    v51 = [v76 isNew];
    v65 = [v45 initWithIdentifier:v47 dateCreated:v48 caller:v50 callRecordType:5 callCapability:1 callDuration:0 unseen:v51];

    [*(v73 + 32) addObject:v65];
    v52 = [v76 identifier];
    v53 = [v52 URLByDeletingPathExtension];

    v54 = [v53 lastPathComponent];
    v55 = objc_alloc_init(SAUIAppPunchOut);
    v56 = +[NSUUID UUID];
    v57 = [v56 UUIDString];
    [v55 setAceId:v57];

    v58 = [NSString stringWithFormat:@"vmshow:%@", v54];
    v59 = [NSURL URLWithString:v58];

    [v55 setAppAvailableInStorefront:1];
    [v55 setPunchOutUri:v59];
    [v55 setBundleId:@"com.apple.mobilephone"];
    [*(v73 + 40) addObject:v55];
    v60 = objc_alloc_init(SFAbstractCommand);
    [v60 setType:1];
    v61 = objc_alloc_init(SFCommandValue);
    v62 = objc_alloc_init(SFReferentialCommand);
    v63 = [v55 aceId];
    [v62 setReferenceIdentifier:v63];

    [v61 setReferentialCommand:v62];
    [v60 setValue:v61];
    v83 = v60;
    v64 = [NSArray arrayWithObjects:&v83 count:1];
    [v78 setCommands:v64];

    v6 = v78;
    v5 = v75;
  }
}

void sub_10007CCD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v11 = [v3 topObject];
  v5 = [v11 view];
  v6 = [v4 view];
  v7 = [v6 superview];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) allObjects];
  LOBYTE(v10) = 0;
  [v8 _performPushTransitionFromViewController:v11 andView:v5 toViewController:v4 andView:v6 inContainerView:v7 recentViewControllers:v9 transitionDuration:0.0 animated:v10 transitionCompletion:&stru_1001689B8 completion:&stru_1001689D8];

  [*(a1 + 32) pushObject:v4];
}

void sub_10007D1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007D1E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _transitionWithContext:*(a1 + 32) animated:*(a1 + 56) completion:*(a1 + 40)];
}

void sub_10007D4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007D510(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v5 = [WeakRetained _panGestureRecognizer];

    v6 = [v5 view];
    [v6 removeGestureRecognizer:v5];

    [*(a1 + 32) addGestureRecognizer:v5];
  }

  [*(a1 + 40) completeTransition:a2];
  [*(a1 + 48) insertSubview:*(a1 + 56) belowSubview:*(a1 + 64)];
  v7 = objc_loadWeakRetained((a1 + 72));
  v8 = [v7 _navigationController];
  v9 = [v8 viewControllers];
  v10 = [v9 mutableCopy];
  [v7 _setRecentViewControllers:v10];

  v11 = objc_loadWeakRetained((a1 + 72));
  [v11 setOperation:0];
}

void sub_10007D714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10007D730(uint64_t a1)
{
  v1 = *(a1 + 48) + 1;
  if (v1 < *(a1 + 56))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _recursivelyAnimateNextMultiPopKeyframe:v1 outOfTotalKeyframes:*(a1 + 56) transitionContext:*(a1 + 32)];
  }
}

void sub_10007D934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10007D950(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained _recentViewControllers];
    [v3 removeLastObject];
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setOperation:0];

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_10007DD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10007DDB0(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) fromPlatteredCardView];
  v5 = v4;
  if (a2)
  {
    [v4 setDarkenIntensity:0.0];

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v5 = [WeakRetained _panGestureRecognizer];

    v7 = [v5 view];
    [v7 removeGestureRecognizer:v5];

    v8 = objc_loadWeakRetained((a1 + 56));
    v9 = [v8 _navigationController];
    v10 = [v9 viewControllers];
    v11 = [v10 count];

    if (v11 >= 2)
    {
      v12 = [*(a1 + 32) fromPlatteredCardView];
      [v12 addGestureRecognizer:v5];
    }
  }

  else
  {
    [v4 setDarkenIntensity:1.0];
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) completeTransition:a2];
    v13 = [*(a1 + 40) viewForKey:UITransitionContextToViewKey];
    v14 = [*(a1 + 40) viewForKey:UITransitionContextFromViewKey];
    v15 = [*(a1 + 40) containerView];
    [v15 insertSubview:v13 belowSubview:v14];

    v16 = objc_loadWeakRetained((a1 + 56));
    v17 = [v16 _navigationController];
    v18 = [v17 viewControllers];
    v19 = [v18 mutableCopy];
    [v16 _setRecentViewControllers:v19];
  }

  result = *(a1 + 48);
  if (result)
  {
    v21 = *(result + 16);

    return v21();
  }

  return result;
}

void sub_10007E300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10007E31C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v6[0] = *(a1 + 64);
  v6[1] = v3;
  v6[2] = *(a1 + 96);
  [v2 setTransform:v6];
  [*(a1 + 40) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
  v4 = *(a1 + 32);
  [*(a1 + 48) percentComplete];
  [v4 setDarkenIntensity:?];
  return [*(a1 + 56) setFrame:{*(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168)}];
}

void sub_10007E394(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    (*(v3 + 16))(v3, a2 & ~[WeakRetained _isCancelling]);
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 _isCancelling];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 _setCancelling:0];
  }
}

void sub_10008033C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100080378(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000803A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained didFinishSynthesisRequest:*(a1 + 32) withInstrumentMetrics:*(*(*(a1 + 40) + 8) + 40) error:v3];
}

void sub_100080524(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  v3 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 48))
    {
      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_1000CF298(v2, (a1 + 48), v5);
      }

      [*(*(a1 + 40) + 40) replaceObjectAtIndex:objc_msgSend(v4 withObject:{"unsignedIntegerValue"), &off_10016E5C0}];
    }

    else
    {
      v14 = [v3 unsignedIntegerValue];
      v15 = *(*(a1 + 40) + 40);
      [*(a1 + 56) audioDuration];
      v17 = [NSNumber numberWithDouble:v16 * 1000.0];
      [v15 replaceObjectAtIndex:v14 withObject:v17];
    }

    [*(*(a1 + 40) + 48) removeObjectForKey:v2];
    if (![*(*(a1 + 40) + 48) count])
    {
      v18 = *(*(a1 + 40) + 64);
      if (v18)
      {
        (*(v18 + 16))();
      }
    }
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF334(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

void sub_100080A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 textRequestViewRequestsVoiceActivation:*(a1 + 32)];
}

void sub_100080BB4(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 _textField];
    [v4 becomeFirstResponder];
  }

  else
  {

    [v3 resignFirstResponder];
  }
}

id sub_100080E08(uint64_t a1)
{
  v2 = [*(a1 + 32) _cancelButton];
  LOBYTE(v3) = *(*(a1 + 32) + 9);
  [v2 setAlpha:v3];

  [*(a1 + 32) setNeedsLayout];
  v4 = *(a1 + 32);

  return [v4 layoutIfNeeded];
}

void sub_1000817DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000817F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 textRequestViewDidEndTextEditMenuInteraction:v3];

    WeakRetained = v3;
  }
}

void sub_100081FEC(id a1)
{
  v1 = [[SASBoardServicesConfiguration alloc] _init];
  v2 = qword_10018F218;
  qword_10018F218 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000825F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v9 = *(a1 + 40);
  v7 = v8;
  SiriUIInvokeOnMainQueue();
}

void sub_1000826C8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v9 = "[SRDismissalClassificationController requestMitigationStatusBasedOnRequestClassification:withRequestSource:withCompletion:]_block_invoke_2";
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation Error fetching activationHistory: %@", buf, 0x16u);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, *(a1 + 88), 0, *(a1 + 32));
    }
  }

  else
  {
    v7 = [[SRUIDSurveyActivationHistory alloc] initWithCountOfIntended:*(a1 + 56) - *(a1 + 64) countOfUnintended:*(a1 + 64) countOfUnintendedActivationSinceLastIntended:*(a1 + 72) days:*(a1 + 80)];
    v5 = [*(a1 + 40) shouldMitigateBasedOnActivationHistory:?];
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v5, *(a1 + 88), v7, 0);
    }
  }
}

void sub_100082B38(id a1)
{
  v1 = dispatch_queue_create("Core duet logging queue", 0);
  v2 = qword_10018F228;
  qword_10018F228 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100083028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100083048(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v6;
    v26 = v5;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          v12 = [v11 metadata];
          v13 = [v12 objectForKey:@"requestSource"];

          if (([v13 isEqualToNumber:&off_10016E5D8] & 1) != 0 || objc_msgSend(v13, "isEqualToNumber:", &off_10016E5F0))
          {
            [*(a1 + 32) addObject:v11];
            v14 = [v11 metadata];
            v15 = [v14 objectForKey:@"unintended"];

            if ([v15 isEqualToNumber:&off_10016E608])
            {
              [*(a1 + 40) addObject:v11];
              ++*(*(*(a1 + 56) + 8) + 24);
            }

            else
            {
              *(*(*(a1 + 56) + 8) + 24) = 0;
            }
          }

          else
          {
            v16 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v33 = "[SRDismissalClassificationController queryStreamForCountOfEventsWithCompletion:]_block_invoke";
              v34 = 2112;
              v35 = v13;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s #mitigation skipping activation due to requestSource: %@", buf, 0x16u);
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v17 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
        v8 = v17;
      }

      while (v17);
    }

    v6 = v25;
    v5 = v26;
  }

  if (v6)
  {
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[SRDismissalClassificationController queryStreamForCountOfEventsWithCompletion:]_block_invoke";
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s #survey executeQuery failed with error: %@", buf, 0x16u);
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      v20 = *(v19 + 16);
LABEL_28:
      v20();
    }
  }

  else
  {
    v21 = [*(a1 + 32) count];
    v22 = [*(a1 + 40) count];
    v23 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v33 = "[SRDismissalClassificationController queryStreamForCountOfEventsWithCompletion:]_block_invoke";
      v34 = 2048;
      v35 = v22;
      v36 = 2048;
      v37 = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s #HWButtonMitigation #survey executeQuery returned %ld unintended events (out of %ld total)", buf, 0x20u);
    }

    v24 = *(a1 + 48);
    if (v24)
    {
      v20 = *(v24 + 16);
      goto LABEL_28;
    }
  }
}

id sub_1000834C0(uint64_t a1)
{
  v12[0] = @"cancellationReason";
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) cancellationReason]);
  v13[0] = v2;
  v12[1] = @"dismissalReason";
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) dismissalReason]);
  v13[1] = v3;
  v12[2] = @"inputType";
  v4 = [NSNumber numberWithInteger:*(a1 + 40)];
  v13[2] = v4;
  v12[3] = @"isDeviceUnlocked";
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isDeviceUnlocked]);
  v13[3] = v5;
  v12[4] = @"longPressBehavior";
  v6 = [NSNumber numberWithInteger:*(a1 + 48)];
  v13[4] = v6;
  v12[5] = @"previousBehavior";
  v7 = [NSNumber numberWithInteger:*(a1 + 56)];
  v13[5] = v7;
  v12[6] = @"requestSource";
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) requestSource]);
  v13[6] = v8;
  v12[7] = @"unintended";
  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) classifiedAsUnintended]);
  v13[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

id sub_1000837B0(uint64_t a1)
{
  v8[0] = @"countOfUnintended";
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) countOfUnintendedActivations]);
  v9[0] = v2;
  v8[1] = @"daysInActivationHistory";
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) days]);
  v9[1] = v3;
  v8[2] = @"daysSinceMitigationChange";
  v4 = [NSNumber numberWithInteger:*(a1 + 48)];
  v9[2] = v4;
  v8[3] = @"dismissalReason";
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) dismissalReason]);
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

id sub_1000839D8(uint64_t a1)
{
  v7[0] = @"daysInActivationHistory";
  v2 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) days]);
  v8[0] = v2;
  v7[1] = @"daysSinceMitigationChange";
  v3 = [NSNumber numberWithInteger:*(a1 + 48)];
  v8[1] = v3;
  v7[2] = @"dismissalReason";
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) dismissalReason]);
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_1000845AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000845D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _editableUtteranceViewControllerDidDismiss:WeakRetained[2]];
    v3 = v5;
    WeakRetained = *(a1 + 32);
    if (WeakRetained)
    {
      WeakRetained = (WeakRetained[2])(WeakRetained, v5);
      v3 = v5;
    }
  }

  return _objc_release_x1(WeakRetained, v3);
}

void sub_100086170(id a1)
{
  v1 = objc_alloc_init(VRXVisualResponseProvider);
  v2 = qword_10018F238;
  qword_10018F238 = v1;

  _objc_release_x1(v1, v2);
}

NSString *sub_100088A08(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = v5;
    v9 = UIContentSizeCategoryCompareToCategory(v8, v7);
    v10 = v7;
    if (v9 == NSOrderedDescending || (v11 = UIContentSizeCategoryCompareToCategory(v8, v6), v10 = v6, v11 == NSOrderedAscending))
    {
      v12 = v10;

      v8 = v12;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

void sub_10008941C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089520;
  block[3] = &unk_100167010;
  v5 = *(a1 + 32);
  if (qword_10018F250 != -1)
  {
    dispatch_once(&qword_10018F250, block);
  }

  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000895B8;
  v2[3] = &unk_100167010;
  v3 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_100089520(uint64_t a1)
{
  v5 = [UIImageSymbolConfiguration configurationWithWeight:4];
  v2 = [UIImage _systemImageNamed:@"xmark.circle.fill" withConfiguration:v5];
  v3 = [v2 imageWithTintColor:*(a1 + 32) renderingMode:1];
  v4 = qword_10018F248;
  qword_10018F248 = v3;
}

id sub_100089AD0(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  [*(a1 + 32) setTextAlignment:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void sub_10008BAF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008BB2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _endBackgroundTask];
}

void sub_10008C278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008C29C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[2];
  }
}

void sub_10008D324(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  v5 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v11 = 136315650;
      v12 = "+[SRNotificationUtility _postNotificationRequest:notificationCenter:destinations:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v3;
      v7 = "%s Failed to post notification %@ with error %@";
      v8 = v4;
      v9 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v5)
  {
    v10 = *(a1 + 32);
    v11 = 136315394;
    v12 = "+[SRNotificationUtility _postNotificationRequest:notificationCenter:destinations:]_block_invoke";
    v13 = 2112;
    v14 = v10;
    v7 = "%s Posted notification %@";
    v8 = v4;
    v9 = 22;
    goto LABEL_6;
  }
}

void sub_10008E438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10008E45C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [*(a1 + 32) objectAtIndex:*(*(*(a1 + 40) + 8) + 24)];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    while (1)
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = *(a1 + 56) - 1;
      [*(a1 + 32) objectAtIndex:v6];
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) != 0 || v6 >= v7)
      {
        break;
      }

      ++*(*(*(a1 + 40) + 8) + 24);
    }

    if ((isKindOfClass & 1) == 0 && v6 >= v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void sub_10008EAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10008EB30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _convertedCardSections];
  if ([v4 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v13 + 1) + 8 * v9) setSeparatorStyle:{4, v13}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = *(a1 + 32);
    if (isKindOfClass)
    {
      v12 = [NSIndexSet indexSetWithIndex:*(*(*(a1 + 40) + 8) + 24)];
      [v11 insertObjects:v5 atIndexes:v12];

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      [*(a1 + 32) addObjectsFromArray:v5];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) count];
    }
  }
}

void sub_10008EE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void sub_10008EE28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[4];
      v4 = v2;
      v5 = [NSNumber numberWithInt:v3];
      v6 = [NSNumber numberWithInt:WeakRetained[4] - 1];
      v10 = 136315650;
      v11 = "[SRViewController tearDownViews]_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s About to decrement _expectedTeardownCounter from %@ to %@", &v10, 0x20u);
    }

    v7 = WeakRetained[4];
    WeakRetained[4] = v7 - 1;
    if (v7 == 1)
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[SRViewController tearDownViews]_block_invoke";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Expected teardown counter hit 0, calling _cleanupAllViews", &v10, 0xCu);
      }

      [WeakRetained _cleanupAllViews];
    }

    else if (v7 <= 0)
    {
      v8 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[SRViewController tearDownViews]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s We received more calls to tearDownViews than setupViews - resetting counter to 0.", &v10, 0xCu);
      }

      WeakRetained[4] = 0;
    }
  }
}

void sub_10008FABC()
{
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 pathForResource:@"ModesConfiguration" ofType:@"plist"];

  v2 = [NSDictionary dictionaryWithContentsOfFile:v1];
  v3 = qword_10018F260;
  qword_10018F260 = v2;

  if (!qword_10018F260)
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF6E8();
    }

    v4 = qword_10018F260;
    qword_10018F260 = &__NSDictionary0__struct;
  }
}

void sub_10008FC34(uint64_t a1)
{
  v1 = [*(a1 + 32) _configurationDictionary];
  v2 = [v1 objectForKeyedSubscript:@"redundantDUCs"];

  v3 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v2 count]);
  v4 = qword_10018F270;
  qword_10018F270 = v3;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = qword_10018F270;
        v11 = [*(*(&v12 + 1) + 8 * v9) lowercaseString];
        [v10 addObject:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100092838()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for SRCarPlayCardViewController();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (!v3)
    {
LABEL_16:

      return;
    }

    v4 = v3;
    type metadata accessor for SRCarPlayScrollView();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {
      v7 = v4;
LABEL_15:

      v2 = v7;
      goto LABEL_16;
    }

    v6 = v5;
    v7 = v2;
    [v7 willMoveToParentViewController:v0];
    [v0 addChildViewController:v7];
    v8 = [v7 view];
    v9 = v0;
    sub_100017F74(v8, 0);

    [v7 didMoveToParentViewController:v0];
    [v7 formSheetSize];
    v11 = v10;
    v13 = v12;

    v14 = &v6[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetSize];
    *v14 = v11;
    v14[1] = v13;
    [*&v6[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint] setConstant:v13];
    [*&v6[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint] setConstant:*v14];
    [*&v6[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint] setConstant:v14[1]];
    [v6 setNeedsUpdateConstraints];
    v15 = *&v9[OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardSnippet];
    v16 = v4;
    v17 = [v15 referencedCommands];
    if (v17)
    {
      v18 = v17;
      sub_100093B6C(&qword_10018DB60);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v19 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v6 setUserInteractionEnabled:v20 != 0];

      v21 = [v7 view];
      if (v21)
      {
        v22 = [v21 layer];

        v23 = [objc_opt_self() isEnhancedMaterialEnabled];
        v24 = 20.0;
        if (v23)
        {
          v24 = 28.0;
        }

        [v22 setCornerRadius:v24];

        v25 = [v7 view];
        if (v25)
        {
          v2 = [v25 layer];

          if (qword_10018D758 != -1)
          {
            swift_once();
          }

          [v2 setCornerCurve:qword_100190338];

          goto LABEL_15;
        }

LABEL_21:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_100092D24()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_heightConstraint);
}

id sub_100092D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRCarPlayCardViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100092EBC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = a1;
  v93 = v2;
  v4 = *(v2 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!result)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  result = [result cardSection];
  if (!result)
  {
LABEL_81:
    __break(1u);
    return result;
  }

  v8 = [result commands];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_10000A238(0, &qword_10018DB58);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_76;
    }

    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      while (1)
      {
        v12 = 0;
        v82 = OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_cardSnippet;
        v91 = v95 + OBJC_IVAR____TtC4Siri27SRCarPlayCardViewController_delegate;
        v85 = v9 & 0xC000000000000001;
        v81 = v9 & 0xFFFFFFFFFFFFFF8;
        v80 = v9 + 32;
        v94 = 0x80000001001163B0;
        v89 = (v4 + 8);
        v90 = "found on card. Doing nothing.";
        v78 = "ute. Doing nothing.";
        v79 = "ute. Doing nothing." & 0x2F00000000000000;
        *&v10 = 136315138;
        v86 = v10;
        v13 = &selRef__numberOfHelpDomains;
        v14 = &off_10016E000;
        v83 = v9;
        v84 = v11;
        v92 = v7;
        while (1)
        {
          if (v85)
          {
            v15 = v12;
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v17 = __OFADD__(v15, 1);
            v4 = v15 + 1;
            if (v17)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v12 >= *(v81 + 16))
            {
              goto LABEL_75;
            }

            v18 = v12;
            v16 = *(v80 + 8 * v12);
            v17 = __OFADD__(v18, 1);
            v4 = v18 + 1;
            if (v17)
            {
LABEL_73:
              __break(1u);
              goto LABEL_74;
            }
          }

          v87 = v4;
          v88 = v16;
          v19 = [v16 referenceIdentifier];
          if (!v19)
          {
            if (qword_10018D798 != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            sub_100006160(v57, qword_10018EE28);
            v4 = static os_log_type_t.info.getter();
            v103 = 0xD000000000000025;
            v104 = v94;
            v58 = sub_100006198(0x10uLL);
            if (v59)
            {
              v102._countAndFlagsBits = 32;
              v102._object = 0xE100000000000000;
              String.append(_:)(*&v58);

              String.append(_:)(v102);
            }

            if (v79 != 0x2000000000000000)
            {
              v102._countAndFlagsBits = 32;
              v102._object = 0xE100000000000000;
              v60._countAndFlagsBits = 0xD00000000000004DLL;
              v60._object = (v78 | 0x8000000000000000);
              String.append(_:)(v60);
              String.append(_:)(v102);
            }

            v62 = v103;
            v61 = v104;
            v63 = Logger.logObject.getter();
            if (os_log_type_enabled(v63, v4))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v102._countAndFlagsBits = v65;
              *v64 = v86;
              v66 = sub_1000075D4(v62, v61, &v102._countAndFlagsBits);

              *(v64 + 4) = v66;
              _os_log_impl(&_mh_execute_header, v63, v4, "%s", v64, 0xCu);
              sub_100006114(v65);
              v14 = &off_10016E000;
            }

            else
            {
            }

LABEL_8:
            v9 = v83;
            goto LABEL_9;
          }

          v20 = v19;
          v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          result = [*(v95 + v82) referencedCommands];
          if (!result)
          {
            __break(1u);
            goto LABEL_80;
          }

          v4 = result;
          sub_100093B6C(&qword_10018DB60);
          v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v23 >> 62))
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v24)
            {
              break;
            }

            goto LABEL_62;
          }

          v24 = _CocoaArrayWrapper.endIndex.getter();
          if (v24)
          {
            break;
          }

LABEL_62:

LABEL_9:
          v12 = v87;
          if (v87 == v84)
          {
            goto LABEL_77;
          }
        }

        if (v24 >= 1)
        {
          break;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
          goto LABEL_77;
        }
      }

      v25 = 0;
      v99 = v23 & 0xC000000000000001;
      v100 = v22;
      v96 = v24;
      v97 = v23;
      while (1)
      {
        if (v99)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(v23 + 8 * v25 + 32);
          swift_unknownObjectRetain();
        }

        v26 = [v4 v13[334]];
        if (v26)
        {
          break;
        }

        swift_unknownObjectRelease();
LABEL_23:
        if (v24 == ++v25)
        {

          goto LABEL_8;
        }
      }

      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (v28 == v98 && v30 == v100)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v101 = v14[65];
      v33 = swift_dynamicCastObjCProtocolConditional();
      if (v33)
      {
        v34 = v33;
        swift_getObjectType();
        sub_10000A238(0, &qword_10018DB68);
        if (swift_dynamicCastMetatype())
        {
          v35 = [objc_opt_self() sharedManager];
          v36 = [v35 currentInstrumentationTurnContext];

          v37 = [v36 turnIdentifier];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v103 = 0;
          v104 = 0xE000000000000000;
          _StringGuts.grow(_:)(85);
          v38._countAndFlagsBits = 0xD000000000000053;
          v38._object = (v90 | 0x8000000000000000);
          String.append(_:)(v38);
          swift_getObjectType();
          v102._countAndFlagsBits = v34;
          swift_getWitnessTable();
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v40 = v103;
          v39 = v104;
          if (qword_10018D798 != -1)
          {
            swift_once();
          }

          v41 = type metadata accessor for Logger();
          sub_100006160(v41, qword_10018EE28);
          v42 = static os_log_type_t.info.getter();
          v103 = 0xD000000000000025;
          v104 = v94;
          v43 = sub_100006198(0x10uLL);
          if (v44)
          {
            v102._countAndFlagsBits = 32;
            v102._object = 0xE100000000000000;
            String.append(_:)(*&v43);

            String.append(_:)(v102);
          }

          v45 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v45 = v40 & 0xFFFFFFFFFFFFLL;
          }

          if (v45)
          {
            v102._countAndFlagsBits = 32;
            v102._object = 0xE100000000000000;
            v46._countAndFlagsBits = v40;
            v46._object = v39;
            String.append(_:)(v46);
            String.append(_:)(v102);
          }

          v48 = v103;
          v47 = v104;
          v49 = Logger.logObject.getter();
          if (os_log_type_enabled(v49, v42))
          {
            v50 = v42;
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v102._countAndFlagsBits = v52;
            *v51 = v86;
            v53 = sub_1000075D4(v48, v47, &v102._countAndFlagsBits);

            *(v51 + 4) = v53;
            _os_log_impl(&_mh_execute_header, v49, v50, "%s", v51, 0xCu);
            sub_100006114(v52);
          }

          else
          {
          }

          v54 = *(v91 + 8);
          ObjectType = swift_getObjectType();
          v56 = *(v54 + 40);
          swift_unknownObjectRetain();
          v7 = v92;
          v56(v95, v34, v92, ObjectType, v54);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          (*v89)(v7, v93);
          v13 = &selRef__numberOfHelpDomains;
          v14 = &off_10016E000;
          goto LABEL_50;
        }
      }

LABEL_33:
      swift_unknownObjectRelease();
LABEL_50:
      v24 = v96;
      v23 = v97;
      goto LABEL_23;
    }

LABEL_77:
  }

  else
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100006160(v67, qword_10018EE28);
    v68 = static os_log_type_t.info.getter();
    v103 = 0xD000000000000025;
    v104 = 0x80000001001163B0;
    v69 = sub_100006198(0x10uLL);
    if (v70)
    {
      v102._countAndFlagsBits = 32;
      v102._object = 0xE100000000000000;
      String.append(_:)(*&v69);

      String.append(_:)(v102);
    }

    if (("SectionEngagement(_:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v102._countAndFlagsBits = 32;
      v102._object = 0xE100000000000000;
      v71._countAndFlagsBits = 0xD000000000000053;
      v71._object = 0x80000001001163E0;
      String.append(_:)(v71);
      String.append(_:)(v102);
    }

    v73 = v103;
    v72 = v104;
    v74 = Logger.logObject.getter();
    if (os_log_type_enabled(v74, v68))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v102._countAndFlagsBits = v76;
      *v75 = 136315138;
      v77 = sub_1000075D4(v73, v72, &v102._countAndFlagsBits);

      *(v75 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v74, v68, "%s", v75, 0xCu);
      sub_100006114(v76);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t variable initialization expression of SiriQuickTypeGestureActivationManager.latestFaceDetectionResultFuture@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100093B6C(&qword_10018D7A8);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100093B6C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id variable initialization expression of SiriQuickTypeGestureActivationManager.attentionAwarenessClient()
{
  v0 = [objc_allocWithZone(AWAttentionAwarenessClient) init];
  v1 = [objc_allocWithZone(AWAttentionAwarenessConfiguration) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setIdentifier:v2];

  [v1 setEventMask:128];
  [v0 setConfiguration:v1];

  return v0;
}

__n128 initializeBufferWithCopyOfBuffer for FaceDetectionObservation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *sub_100093D50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100093D7C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100093E2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10009446C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100093ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SASLockState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100093F80(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedManager];
  v7 = [v6 currentInstrumentationTurnContext];

  v8 = [v7 turnIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [objc_allocWithZone(VRXSnippetRenderingContext) initWithRenderingEvent:a1];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v9 emitWithTurnIdentifier:isa];

  return (*(v3 + 8))(v5, v2);
}

void sub_1000940F8(double a1, double a2)
{
  v5 = [v2 view];
  if (v5)
  {
    v21 = v5;
    type metadata accessor for SRCarPlayScrollView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      _StringGuts.grow(_:)(29);
      v8._object = 0x8000000100116530;
      v8._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v8);
      v22 = *&a1;
      v23 = a2;
      type metadata accessor for CGSize(0);
      _print_unlocked<A, B>(_:_:)();
      if (qword_10018D798 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100006160(v9, qword_10018EE28);
      v10 = static os_log_type_t.info.getter();
      v24 = 0xD00000000000003DLL;
      v25 = 0x80000001001164F0;
      v11 = sub_100006198(0x10uLL);
      if (v12)
      {
        v22 = 32;
        v23 = -1.7573882e159;
        String.append(_:)(*&v11);

        v13._countAndFlagsBits = 32;
        v13._object = 0xE100000000000000;
        String.append(_:)(v13);
      }

      v15 = v24;
      v14 = v25;
      v16 = Logger.logObject.getter();
      if (os_log_type_enabled(v16, v10))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        v19 = sub_1000075D4(v15, v14, &v22);

        *(v17 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v16, v10, "%s", v17, 0xCu);
        sub_100006114(v18);
      }

      else
      {
      }

      v20 = &v7[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetSize];
      *v20 = a1;
      v20[1] = a2;
      [*&v7[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_heightConstraint] setConstant:a2];
      [*&v7[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_widthConstraint] setConstant:*v20];
      [*&v7[OBJC_IVAR____TtC4Siri19SRCarPlayScrollView_snippetHeightConstraint] setConstant:v20[1]];
      [v7 setNeedsUpdateConstraints];
    }

    else
    {
    }
  }
}

uint64_t sub_10009446C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1000944CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

NSString sub_100094548()
{
  result = String._bridgeToObjectiveC()();
  qword_10018DEF0 = result;
  return result;
}

id sub_100094650()
{
  v1 = v0;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  v19 = 0x2928706F7473;
  v20 = 0xE600000000000000;
  v4 = sub_100006198(0);
  if (v5)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("forming delegate" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    v7._object = 0x80000001001168B0;
    v7._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v19;
  v9 = v20;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v17);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  [*&v1[OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCenter] removeObserver:v1];
  v1[OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_isListening] = 0;
  *&v1[OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCount] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for TypeToSiriKeyboardReadinessObserver();
  return objc_msgSendSuper2(&v16, "dealloc");
}

id sub_100094918()
{
  v1 = v0;
  v2 = OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_isListening;
  if (*(v0 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_isListening) == 1)
  {
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006160(v3, qword_10018EE28);
    v4 = static os_log_type_t.error.getter();
    v41 = 0x29287472617473;
    v42 = 0xE700000000000000;
    v5 = sub_100006198(0);
    if (v6)
    {
      v40._countAndFlagsBits = 32;
      v40._object = 0xE100000000000000;
      String.append(_:)(*&v5);

      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
    }

    if (("en for keyboard readiness" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v40._countAndFlagsBits = 32;
      v40._object = 0xE100000000000000;
      v8._countAndFlagsBits = 0xD000000000000041;
      v8._object = 0x8000000100116910;
      String.append(_:)(v8);
      v9._countAndFlagsBits = 32;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
    }

    v11 = v41;
    v10 = v42;
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v4))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v40._countAndFlagsBits = v14;
      *v13 = 136315138;
      v15 = sub_1000075D4(v11, v10, &v40._countAndFlagsBits);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v12, v4, "%s", v13, 0xCu);
      sub_100006114(v14);
    }

    else
    {
    }

    v16 = static os_log_type_t.info.getter();
    v41 = 0x2928706F7473;
    v42 = 0xE600000000000000;
    v17 = sub_100006198(0);
    if (v18)
    {
      v40._countAndFlagsBits = 32;
      v40._object = 0xE100000000000000;
      String.append(_:)(*&v17);

      String.append(_:)(v40);
    }

    if (("forming delegate" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v40._countAndFlagsBits = 32;
      v40._object = 0xE100000000000000;
      v19._object = 0x80000001001168B0;
      v19._countAndFlagsBits = 0xD000000000000029;
      String.append(_:)(v19);
      String.append(_:)(v40);
    }

    v21 = v41;
    v20 = v42;
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v16))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40._countAndFlagsBits = v24;
      *v23 = 136315138;
      v25 = sub_1000075D4(v21, v20, &v40._countAndFlagsBits);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v22, v16, "%s", v23, 0xCu);
      sub_100006114(v24);
    }

    else
    {
    }

    [*(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCenter) removeObserver:v1];
    *(v1 + v2) = 0;
    *(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCount) = 0;
  }

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006160(v26, qword_10018EE28);
  v27 = static os_log_type_t.info.getter();
  v41 = 0x29287472617473;
  v42 = 0xE700000000000000;
  v28 = sub_100006198(0);
  if (v29)
  {
    v40._countAndFlagsBits = 32;
    v40._object = 0xE100000000000000;
    String.append(_:)(*&v28);

    String.append(_:)(v40);
  }

  if (("ng for keyboard readiness" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v40._countAndFlagsBits = 32;
    v40._object = 0xE100000000000000;
    v30._object = 0x80000001001168E0;
    v30._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v30);
    String.append(_:)(v40);
  }

  v32 = v41;
  v31 = v42;
  v33 = Logger.logObject.getter();
  if (os_log_type_enabled(v33, v27))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40._countAndFlagsBits = v35;
    *v34 = 136315138;
    v36 = sub_1000075D4(v32, v31, &v40._countAndFlagsBits);

    *(v34 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v33, v27, "%s", v34, 0xCu);
    sub_100006114(v35);
  }

  else
  {
  }

  *(v1 + v2) = 1;
  v37 = *(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCenter);
  if (qword_10018D740 != -1)
  {
    v39 = *(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCenter);
    swift_once();
    v37 = v39;
  }

  return [v37 addObserver:v1 selector:? name:? object:?];
}

id sub_100094F90()
{
  v1 = v0;
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006160(v2, qword_10018EE28);
  v3 = static os_log_type_t.info.getter();
  v18 = 0x2928706F7473;
  v19 = 0xE600000000000000;
  v4 = sub_100006198(0);
  if (v5)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    String.append(_:)(*&v4);

    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
  }

  if (("forming delegate" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    v7._object = 0x80000001001168B0;
    v7._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
  }

  v10 = v18;
  v9 = v19;
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v3))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    v14 = sub_1000075D4(v10, v9, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v3, "%s", v12, 0xCu);
    sub_100006114(v13);
  }

  else
  {
  }

  result = [*(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCenter) removeObserver:v1];
  *(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_isListening) = 0;
  *(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCount) = 0;
  return result;
}

void sub_100095214()
{
  v2 = OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCount;
  v3 = *(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCount);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v0 = v1;
  *(v1 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCount) = v5;
  if (v5 != 2)
  {
    return;
  }

  v1 = 0x8000000100116840;
  if (qword_10018D798 != -1)
  {
    goto LABEL_23;
  }

LABEL_4:
  v6 = type metadata accessor for Logger();
  sub_100006160(v6, qword_10018EE28);
  v7 = static os_log_type_t.info.getter();
  v31 = 0xD00000000000002CLL;
  v32 = v1;
  v8 = sub_100006198(0);
  if (v9)
  {
    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    String.append(_:)(*&v8);

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
  }

  if (("ndToUserInput(notification:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    v11._countAndFlagsBits = 0xD000000000000030;
    v11._object = 0x8000000100116870;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
  }

  v14 = v31;
  v13 = v32;
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v7))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30._countAndFlagsBits = v17;
    *v16 = 136315138;
    v18 = sub_1000075D4(v14, v13, &v30._countAndFlagsBits);

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v15, v7, "%s", v16, 0xCu);
    sub_100006114(v17);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong keyboardIsReadyToReceiveInput];
    swift_unknownObjectRelease();
  }

  v20 = static os_log_type_t.info.getter();
  v31 = 0x2928706F7473;
  v32 = 0xE600000000000000;
  v21 = sub_100006198(0);
  if (v22)
  {
    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    String.append(_:)(*&v21);

    String.append(_:)(v30);
  }

  if (("forming delegate" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    v23._object = 0x80000001001168B0;
    v23._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v23);
    String.append(_:)(v30);
  }

  v25 = v31;
  v24 = v32;
  v26 = Logger.logObject.getter();
  if (os_log_type_enabled(v26, v20))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30._countAndFlagsBits = v28;
    *v27 = 136315138;
    v29 = sub_1000075D4(v25, v24, &v30._countAndFlagsBits);

    *(v27 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v26, v20, "%s", v27, 0xCu);
    sub_100006114(v28);
  }

  else
  {
  }

  [*(v0 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_notificationCenter) removeObserver:v0];
  *(v0 + OBJC_IVAR___SRTypeToSiriKeyboardReadinessObserver_isListening) = 0;
  *(v0 + v2) = 0;
}

void sub_10009575C()
{
  sub_100095A04();
  v0 = static OS_dispatch_queue.main.getter();
  v1 = [objc_allocWithZone(PDCPreflightManager) initWithTargetQueue:v0];

  qword_10018DF40 = v1;
}

id sub_1000958CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyDisclosureManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100095928(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_100095A04()
{
  result = qword_10018EAE0;
  if (!qword_10018EAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018EAE0);
  }

  return result;
}

id AutoBugCaptureManagerBridge.__allocating_init(sessionDuration:)()
{
  v1 = objc_allocWithZone(v0);
  type metadata accessor for AutoBugCaptureManager();
  *&v1[OBJC_IVAR___SRAutoBugCaptureManagerBridge_autoBugCaptureManager] = AutoBugCaptureManager.__allocating_init(domain:sessionDuration:process:)();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

id AutoBugCaptureManagerBridge.init(sessionDuration:)()
{
  type metadata accessor for AutoBugCaptureManager();
  *&v0[OBJC_IVAR___SRAutoBugCaptureManagerBridge_autoBugCaptureManager] = AutoBugCaptureManager.__allocating_init(domain:sessionDuration:process:)();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCaptureManagerBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id GenerativeModelsCompatabilityWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutoBugCaptureManagerBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCaptureManagerBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t ContinueOnCommandHandler.handle(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100095E58, 0, 0);
}

uint64_t sub_100095E58()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 16);
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_10009600C;
    v5 = v2;
LABEL_5:

    return ContinueOnCommandHandler.handle(_:)(v5);
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 16);
    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    *v9 = v0;
    v9[1] = sub_100096184;
    v5 = v7;
    goto LABEL_5;
  }

  sub_100096360();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10009600C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100096298;
  }

  else
  {
    v2 = sub_100096120;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100096120()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100096184()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000962FC;
  }

  else
  {
    v2 = sub_100096F40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100096298()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000962FC()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100096360()
{
  result = qword_10018DFA0;
  if (!qword_10018DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DFA0);
  }

  return result;
}

uint64_t sub_10009653C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100096600;

  return ContinueOnCommandHandler.handle(_:)(v6);
}

uint64_t sub_100096600()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

Swift::Void __swiftcall ContinueOnCommandHandler.cancelActiveRequests()()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Siri24ContinueOnCommandHandler_activeTask);
  if (v1)
  {
    sub_10009682C(v1);
    v2 = v1;
    sub_10009686C(v1);
    [v2 cancel];
  }
}

void *sub_10009682C(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_10009686C(void *result)
{
  if (result)
  {
  }

  return result;
}

Swift::Int sub_10009696C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000969E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id ContinueOnCommandHandler.init()()
{
  v1 = &v0[OBJC_IVAR____TtC4Siri24ContinueOnCommandHandler_activeTask];
  v2 = type metadata accessor for ContinueOnCommandHandler();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "init");
}

id ContinueOnCommandHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContinueOnCommandHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ContinueOnCommandHandler.ContinueOnCommandHandlerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinueOnCommandHandler.ContinueOnCommandHandlerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100096C40()
{
  result = qword_10018DFD8;
  if (!qword_10018DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018DFD8);
  }

  return result;
}

uint64_t sub_100096C94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100096D48;

  return sub_10009653C(v2, v3, v4);
}

uint64_t sub_100096D48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100096E3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100096F3C;

  return sub_1000A7EDC(v2, v3, v4);
}

uint64_t sub_100096EFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

id sub_100096F44()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.4];
  qword_100190330 = result;
  return result;
}

void sub_100096F9C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  qword_100190340 = v1;
}

id sub_100097000()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  [v2 setStiffness:1000.0];
  [v2 setMass:3.0];
  [v2 setDamping:500.0];
  v5 = v2;
  [v5 setDuration:0.5];
  [v5 setFillMode:kCAFillModeBoth];

  return v5;
}

id sub_100097140()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  [v2 setStiffness:300.0];
  [v2 setMass:2.0];
  [v2 setDamping:50.0];
  v5 = v2;
  [v5 setDuration:0.8];
  [v5 setFillMode:kCAFillModeBoth];

  return v5;
}

id sub_100097280()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  [v2 setStiffness:1000.0];
  [v2 setMass:3.0];
  [v2 setDamping:500.0];
  v5 = v2;
  [v5 setDuration:0.5];
  [v5 setFillMode:kCAFillModeBoth];

  return v5;
}

id sub_1000973CC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  [v2 setStiffness:300.0];
  [v2 setMass:2.0];
  [v2 setDamping:50.0];
  v5 = v2;
  [v5 setDuration:0.8];
  [v5 setFillMode:kCAFillModeBoth];

  return v5;
}

uint64_t sub_100097514()
{
  result = [v0 siriui_card];
  if (!result)
  {
    __break(1u);
    goto LABEL_40;
  }

  v2 = result;
  result = [result respondsToSelector:"backingCard"];
  if ((result & 1) == 0)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v3 = [v2 backingCard];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 0;
  }

  v4 = &selRef_button;
  v5 = [v3 cardSections];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1000977E4();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
LABEL_37:

    return 0;
  }

LABEL_7:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v27 = v7 + 32;
  v28 = v7 & 0xFFFFFFFFFFFFFF8;
  v25 = v6;
  v26 = v7;
  v23 = v7 & 0xC000000000000001;
  v24 = v8;
  while (1)
  {
    if (v10)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v28 + 16))
      {
        goto LABEL_35;
      }

      v11 = *(v27 + 8 * v9);
    }

    v12 = v11;
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_34;
    }

    type metadata accessor for VisualResponseProvider();
    v14 = v12;
    v15 = static VisualResponseProvider.isCardSectionSupported(cardSection:)();

    if (v15)
    {
      break;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = [v16 v4[31]];
      if (v17)
      {
        v18 = v17;
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v19 >> 62)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v6 = 0;
        v4 = (v19 & 0xC000000000000001);
        while (1)
        {
          if (v20 == v6)
          {

            return 1;
          }

          if (v4)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v21 = *(v19 + 8 * v6 + 32);
          }

          v22 = v21;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          v7 = static VisualResponseProvider.isCardSectionSupported(cardSection:)();

          ++v6;
          if ((v7 & 1) == 0)
          {

            v4 = &selRef_button;
            v6 = v25;
            v7 = v26;
            v10 = v23;
            v8 = v24;
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_8:

    if (v9 == v8)
    {
      goto LABEL_37;
    }
  }

  return 1;
}

unint64_t sub_1000977E4()
{
  result = qword_10018E480;
  if (!qword_10018E480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10018E480);
  }

  return result;
}

uint64_t sub_100097830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100097878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}