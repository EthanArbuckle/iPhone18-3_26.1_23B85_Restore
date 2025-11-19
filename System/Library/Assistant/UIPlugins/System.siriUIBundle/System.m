id sub_1604(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ACDelayedConfirmationViewController;
  return objc_msgSendSuper2(&v2, "triggerConfirmation");
}

id sub_16AC(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ACDelayedConfirmationViewController;
  return objc_msgSendSuper2(&v2, "triggerDenial");
}

void sub_29F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

void sub_2D20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 112));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_2D70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained showingPlaying];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = v4;
  v6 = *(a1 + 56);
  if (v3)
  {
    v7 = [v4 _itemAtIndexIsPlaying:v6];

    if (v7)
    {
      v8 = objc_loadWeakRetained((a1 + 48));
      v9 = [v8 _privateDelegate];
      v10 = objc_loadWeakRetained((a1 + 48));
      [v9 cancelSpeakingForSiriViewController:v10];
    }

    v11 = objc_loadWeakRetained((a1 + 48));
    [v11 _setItemAtIndex:*(a1 + 56) isPlaying:0];

    v20 = objc_loadWeakRetained((a1 + 40));
    [v20 setShowingPlaying:0];
  }

  else
  {
    [v4 _setItemAtIndex:v6 isPlaying:1];

    v12 = objc_loadWeakRetained((a1 + 40));
    [v12 setShowingPlaying:1];

    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 _privateDelegate];
    v15 = objc_loadWeakRetained((a1 + 48));
    [v14 cancelSpeakingForSiriViewController:v15];

    v16 = objc_loadWeakRetained((a1 + 48));
    v17 = [v16 _privateDelegate];
    v18 = objc_loadWeakRetained((a1 + 48));
    v19 = *(a1 + 32);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2FB4;
    v21[3] = &unk_184E0;
    objc_copyWeak(&v22, (a1 + 48));
    v23[1] = *(a1 + 56);
    objc_copyWeak(v23, (a1 + 40));
    [v17 siriViewController:v18 speakText:v19 completion:v21];

    objc_destroyWeak(v23);
    objc_destroyWeak(&v22);
  }
}

void sub_2F98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2FB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setItemAtIndex:*(a1 + 48) isPlaying:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setShowingPlaying:0];
}

void sub_3020(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) _selectionStatsForSelectedIndex:*(a1 + 56)];
  v12 = v5;
  v6 = [NSArray arrayWithObjects:&v12 count:1];
  [v3 siriViewController:v4 performAceCommands:v6];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 delegate];
  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [*(a1 + 40) commands];
  [v8 siriViewController:v9 performAceCommands:v10];

  v11 = objc_loadWeakRetained((a1 + 48));
  [v11 _resetPlayCounts];
}

void sub_46B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    [v3 setImage:v5 forKey:v4];
    [*(a1 + 48) _configureUsingImage:v5];
  }
}

id sub_6FE4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:@"preferred item" forKey:@"type"];
  v3 = *(a1 + 32);
  if (v3)
  {
    [v2 setObject:v3 forKey:@"aceId"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"title"];
  }

  return v2;
}

id sub_706C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  [v2 setObject:@"failure commands" forKey:@"type"];
  v3 = [NSNumber numberWithInteger:*(a1 + 32)];
  [v2 setObject:v3 forKey:@"failure code"];

  return v2;
}

void sub_B670(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    [v3 setImage:v5 forKey:v4];
    [*(a1 + 48) _configureWithImage:v5 superViewWidth:CGRectGetWidth(*(a1 + 56))];
  }
}

void sub_C344(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SiriAlternativeParaphraseSuggestionResultView initWithAlternativeSuggestionResult:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s SAARParaphrasedSuggestedResult has no command property: %@", &v2, 0x16u);
}

void sub_C3D0(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = +[NSAssertionHandler currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a3 object:a1 file:@"SiriPronunciationDataViewController.m" lineNumber:231 description:{@"%@ asked to provide a cell for an invalid section %zd", v7, objc_msgSend(a2, "section")}];
}

void sub_C478(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [a1 object];
  [v6 handleFailureInMethod:a2 object:a3 file:@"ACAssistantDisambiguationController.m" lineNumber:191 description:{@"Disambiguation item is required to have a title set %@", v7}];
}

void sub_C504(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  v7 = [a1 object];
  [v6 handleFailureInMethod:a2 object:a3 file:@"ACAssistantDisambiguationController.m" lineNumber:160 description:{@"Disambiguation item is required to have a title set %@", v7}];
}

void sub_C590(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315394;
  v4 = "[ACAssistantDisambiguationController collectionView:cellForItemAtIndexPath:]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s _disambiguationItems %@ is empty when loading cells", &v3, 0x16u);
}

void sub_C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = +[NSAssertionHandler currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v10 handleFailureInMethod:a2 object:a1 file:@"ACAssistantDisambiguationController.m" lineNumber:344 description:{@"%@ asked to provide a supplementary element for an unsupported kind %@ at %@", v9, a3, a4}];
}

void sub_C6D0(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2;
  v6 = 136315650;
  v7 = "[ACAssistantDisambiguationController collectionView:layout:sizeForItemAtIndexPath:]";
  v8 = 2112;
  v9 = v4;
  v10 = 2048;
  v11 = [a3 row];
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%s _disambiguationItems : %@ does not contain an item at index : %zd", &v6, 0x20u);
}

void sub_C798(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SiriAlternativeParaphraseAlternativeResultView initWithAlternativeResult:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%s SAARParaphrasedAlternativeResult has no command property: %@", &v2, 0x16u);
}