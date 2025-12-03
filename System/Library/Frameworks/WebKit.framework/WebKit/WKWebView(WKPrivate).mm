@interface WKWebView(WKPrivate)
- (WTF::StringImpl)_showWarningViewWithURL:()WKPrivate title:warning:detailsWithLinks:completionHandler:;
- (uint64_t)_adjustVisibilityForTargetedElements:()WKPrivate completionHandler:;
- (uint64_t)_archiveWithConfiguration:()WKPrivate completionHandler:;
- (uint64_t)_clearServiceWorkerEntitlementOverride:()WKPrivate;
- (uint64_t)_completeTextManipulation:()WKPrivate completion:;
- (uint64_t)_completeTextManipulationForItems:()WKPrivate completion:;
- (uint64_t)_convertPoint:()WKPrivate fromFrame:toMainFrameCoordinates:;
- (uint64_t)_convertRect:()WKPrivate fromFrame:toMainFrameCoordinates:;
- (uint64_t)_createIconDataFromImageData:()WKPrivate withLengths:completionHandler:;
- (uint64_t)_dataTaskWithRequest:()WKPrivate runAtForegroundPriority:completionHandler:;
- (uint64_t)_decodeImageData:()WKPrivate preferredSize:completionHandler:;
- (uint64_t)_didLoadAppInitiatedRequest:()WKPrivate;
- (uint64_t)_didLoadNonAppInitiatedRequest:()WKPrivate;
- (uint64_t)_executeEditCommand:()WKPrivate argument:completion:;
- (uint64_t)_frameInfoFromHandle:()WKPrivate completionHandler:;
- (uint64_t)_frameTrees:()WKPrivate;
- (uint64_t)_frames:()WKPrivate;
- (uint64_t)_getApplicationManifestWithCompletionHandler:()WKPrivate;
- (uint64_t)_getContentsAsAttributedStringWithCompletionHandler:()WKPrivate;
- (uint64_t)_getContentsAsStringWithCompletionHandler:()WKPrivate;
- (uint64_t)_getContentsAsStringWithCompletionHandlerKeepIPCConnectionAliveForTesting:()WKPrivate;
- (uint64_t)_getContentsOfAllFramesAsStringWithCompletionHandler:()WKPrivate;
- (uint64_t)_getInformationFromImageData:()WKPrivate completionHandler:;
- (uint64_t)_getMainResourceDataWithCompletionHandler:()WKPrivate;
- (uint64_t)_getPDFFirstPageSizeInFrame:()WKPrivate completionHandler:;
- (uint64_t)_getProcessDisplayNameWithCompletionHandler:()WKPrivate;
- (uint64_t)_getTextFragmentMatchWithCompletionHandler:()WKPrivate;
- (uint64_t)_insertAttachmentWithFileWrapper:()WKPrivate contentType:completion:;
- (uint64_t)_isJITEnabled:()WKPrivate;
- (uint64_t)_loadAndDecodeImage:()WKPrivate constrainedToSize:maximumBytesFromNetwork:completionHandler:;
- (uint64_t)_loadServiceWorker:()WKPrivate usingModules:completionHandler:;
- (uint64_t)_numberOfVisibilityAdjustmentRectsWithCompletionHandler:()WKPrivate;
- (uint64_t)_pauseNowPlayingMediaSession:()WKPrivate;
- (uint64_t)_playPredominantOrNowPlayingMediaSession:()WKPrivate;
- (uint64_t)_removeDataDetectedLinks:()WKPrivate;
- (uint64_t)_requestAllTargetableElementsInfo:()WKPrivate completionHandler:;
- (uint64_t)_requestAllTextWithCompletionHandler:()WKPrivate;
- (uint64_t)_requestTargetedElementInfo:()WKPrivate completionHandler:;
- (uint64_t)_resetVisibilityAdjustmentsForTargetedElements:()WKPrivate completionHandler:;
- (uint64_t)_resumePage:()WKPrivate;
- (uint64_t)_saveResources:()WKPrivate suggestedFileName:completionHandler:;
- (uint64_t)_sessionStateWithFilter:()WKPrivate;
- (uint64_t)_setDisplayCaptureState:()WKPrivate completionHandler:;
- (uint64_t)_setInputDelegate:;
- (uint64_t)_setInputDelegate:()WKPrivate;
- (uint64_t)_setShouldSuppressTopColorExtensionView:()WKPrivate;
- (uint64_t)_setSystemAudioCaptureState:()WKPrivate completionHandler:;
- (uint64_t)_showWarningViewWithURL:()WKPrivate title:warning:detailsWithLinks:completionHandler:;
- (uint64_t)_simulateClickOverFirstMatchingTextInViewportWithUserInteraction:()WKPrivate completionHandler:;
- (uint64_t)_startTextManipulationsWithConfiguration:()WKPrivate completion:;
- (uint64_t)_suspendPage:()WKPrivate;
- (uint64_t)_targetedPreviewForElementWithID:()WKPrivate completionHandler:;
- (uint64_t)_textFragmentDirectiveFromSelectionWithCompletionHandler:()WKPrivate;
- (void)_completeTextManipulationForItems:()WKPrivate completion:;
- (void)_convertPoint:()WKPrivate fromFrame:toMainFrameCoordinates:;
- (void)_convertRect:()WKPrivate fromFrame:toMainFrameCoordinates:;
- (void)_createIconDataFromImageData:()WKPrivate withLengths:completionHandler:;
- (void)_dataTaskWithRequest:()WKPrivate runAtForegroundPriority:completionHandler:;
- (void)_decodeImageData:()WKPrivate preferredSize:completionHandler:;
- (void)_frameInfoFromHandle:()WKPrivate completionHandler:;
- (void)_frameTrees:()WKPrivate;
- (void)_frames:()WKPrivate;
- (void)_getApplicationManifestWithCompletionHandler:()WKPrivate;
- (void)_getContentsAsAttributedStringWithCompletionHandler:()WKPrivate;
- (void)_getContentsAsStringWithCompletionHandler:()WKPrivate;
- (void)_getContentsAsStringWithCompletionHandlerKeepIPCConnectionAliveForTesting:()WKPrivate;
- (void)_getContentsOfAllFramesAsStringWithCompletionHandler:()WKPrivate;
- (void)_getProcessDisplayNameWithCompletionHandler:()WKPrivate;
- (void)_loadAndDecodeImage:()WKPrivate constrainedToSize:maximumBytesFromNetwork:completionHandler:;
- (void)_requestAllTargetableElementsInfo:()WKPrivate completionHandler:;
- (void)_requestAllTextWithCompletionHandler:()WKPrivate;
- (void)_requestTargetedElementInfo:()WKPrivate completionHandler:;
- (void)_setInputDelegate:()WKPrivate;
- (void)_setShouldSuppressTopColorExtensionView:()WKPrivate;
- (void)_startTextManipulationsWithConfiguration:()WKPrivate completion:;
- (void)_targetedPreviewForElementWithID:()WKPrivate completionHandler:;
- (void)_textFragmentDirectiveFromSelectionWithCompletionHandler:()WKPrivate;
@end

@implementation WKWebView(WKPrivate)

- (uint64_t)_setInputDelegate:()WKPrivate
{
  *self = &unk_1F10F8DE0;
  objc_destroyWeak(self + 1);

  return bmalloc::api::tzoneFree(self, v2);
}

- (void)_setInputDelegate:()WKPrivate
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v12 = objc_loadWeakRetained(WeakRetained + 58);
    if (objc_opt_respondsToSelector())
    {
      v31 = a6;
      v32 = v11;
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a5[3]];
      v14 = a5[3];
      if (v14)
      {
        v15 = 16 * v14;
        v16 = (*a5 + 8);
        do
        {
          v17 = *v16;
          if (*v16)
          {
            atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v34, v17);
            if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v17, v18);
            }
          }

          else
          {
            v34 = &stru_1F1147748;
            v19 = &stru_1F1147748;
          }

          v20 = v34;
          v21 = *(v16 - 1);
          if (v21)
          {
            atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
            MEMORY[0x19EB00B70](&v33, v21);
            if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v21, v22);
            }
          }

          else
          {
            v33 = &stru_1F1147748;
            v23 = &stru_1F1147748;
          }

          [v13 setObject:v20 forKey:v33];
          v24 = v33;
          v33 = 0;
          if (v24)
          {
          }

          v25 = v34;
          v34 = 0;
          if (v25)
          {
          }

          v16 += 2;
          v15 -= 16;
        }

        while (v15);
      }

      if (v31)
      {
        API::Object::toNSObject(v31, &v34);
      }

      else
      {
        v34 = 0;
      }

      WebKit::CompletionHandlerCallChecker::create(v12, sel__webView_willSubmitFormValues_userObject_submissionHandler_, &v33);
      v26 = v33;
      v27 = v34;
      v28 = *a7;
      *a7 = 0;
      v29 = malloc_type_malloc(0x30uLL, 0x10E0040FAC56454uLL);
      *v29 = MEMORY[0x1E69E9818];
      v29[1] = 50331650;
      v29[2] = WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKPrivate) _setInputDelegate:]::FormClient::willSubmitForm(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::WebFrameProxy &,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,API::Object *,WTF::CompletionHandler<void ()(void)> &&)::{lambda(void)#1}>([WKWebView(WKPrivate) _setInputDelegate:]::FormClient::willSubmitForm(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::WebFrameProxy &,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,API::Object *,WTF::CompletionHandler<void ()(void)> &&)::{lambda(void)#1})::{lambda(void *)#1}::__invoke;
      v29[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<[WKWebView(WKPrivate) _setInputDelegate:]::FormClient::willSubmitForm(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::WebFrameProxy &,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,API::Object *,WTF::CompletionHandler<void ()(void)> &&)::{lambda(void)#1}>([WKWebView(WKPrivate) _setInputDelegate:]::FormClient::willSubmitForm(WebKit::WebPageProxy &,WebKit::WebFrameProxy &,WebKit::WebFrameProxy &,WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,API::Object *,WTF::CompletionHandler<void ()(void)> &&)::{lambda(void)#1})::descriptor;
      v29[4] = v28;
      v29[5] = v26;
      v11 = v32;
      [(WebKit::CompletionHandlerCallChecker *)v12 _webView:v32 willSubmitFormValues:v13 userObject:v27 submissionHandler:v29];
      _Block_release(v29);
      v30 = v34;
      v34 = 0;
      if (v30)
      {
      }

      if (v13)
      {
      }
    }

    else
    {
      WTF::CompletionHandler<void ()(void)>::operator()(a7);
    }

    if (v12)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(void)>::operator()(a7);
  }
}

- (uint64_t)_setInputDelegate:
{
  result = WebKit::CompletionHandlerCallChecker::completionHandlerHasBeenCalled(*(self + 40));
  if ((result & 1) == 0)
  {
    *(*(self + 40) + 24) = 1;

    return WTF::CompletionHandler<void ()(void)>::operator()((self + 32));
  }

  return result;
}

- (uint64_t)_frames:()WKPrivate
{
  *self = &unk_1F10F94D0;
  v2 = *(self + 16);
  *(self + 16) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  _Block_release(*(self + 8));
  return self;
}

- (void)_frames:()WKPrivate
{
  if (*(a2 + 368))
  {
    API::FrameTreeNode::create(a2, *(self + 16), &v7);
    v3 = *(v7 + 8);
    if (v3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }

      v4 = v3;
    }

    (*(*(self + 8) + 16))();
    if (v3)
    {
    }

    v5 = v7;
    v7 = 0;
    if (v5)
    {
      CFRelease(*(v5 + 8));
    }
  }

  else
  {
    v6 = *(*(self + 8) + 16);

    v6();
  }
}

- (uint64_t)_frameTrees:()WKPrivate
{
  *self = &unk_1F10F94F8;
  v2 = *(self + 16);
  *(self + 16) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  _Block_release(*(self + 8));
  return self;
}

- (void)_frameTrees:()WKPrivate
{
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:*(a2 + 12)];
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *a2;
    for (i = 368 * v5; i; i -= 368)
    {
      API::FrameTreeNode::create(v6, *(self + 16), &v11);
      v8 = *(v11 + 8);
      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }

        v9 = v8;
      }

      [v4 addObject:v8];
      if (v8)
      {
      }

      v10 = v11;
      v11 = 0;
      if (v10)
      {
        CFRelease(*(v10 + 8));
      }

      v6 += 368;
    }
  }

  (*(*(self + 8) + 16))();
  if (v4)
  {
  }
}

- (uint64_t)_frameInfoFromHandle:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9520;
  v2 = *(self + 16);
  *(self + 16) = 0;
  if (v2)
  {
    CFRelease(*(v2 + 8));
  }

  _Block_release(*(self + 8));
  return self;
}

- (void)_frameInfoFromHandle:()WKPrivate completionHandler:
{
  if (*(a2 + 352))
  {
    v4 = API::Object::newObject(0x180uLL, 59);
    v5 = *(API::FrameInfo::FrameInfo(v4, a2, (self + 16)) + 8);
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }

      v6 = v5;
    }

    (*(*(self + 8) + 16))();
    if (v5)
    {
    }

    v7 = *(v4 + 8);

    CFRelease(v7);
  }

  else
  {
    v8 = *(*(self + 8) + 16);

    v8();
  }
}

- (uint64_t)_executeEditCommand:()WKPrivate argument:completion:
{
  result = *(self + 8);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (uint64_t)_startTextManipulationsWithConfiguration:()WKPrivate completion:
{
  *self = &unk_1F10F9598;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_startTextManipulationsWithConfiguration:()WKPrivate completion:
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 36)];
  v38 = a2;
  v4 = *(a2 + 36);
  v39 = v3;
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 24);
    v7 = 96 * v4;
    v8 = 0x1E762D000uLL;
    do
    {
      v9 = objc_alloc_init(*(v8 + 3280));
      WTF::String::number(*(v6 + v5));
      if (v40)
      {
        atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v41, v40);
        if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v40, v10);
        }
      }

      else
      {
        v41 = &stru_1F1147748;
        v11 = &stru_1F1147748;
      }

      [v9 setIdentifier:v41];
      v13 = v41;
      v41 = 0;
      if (v13)
      {
      }

      v14 = v40;
      v40 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = *(v6 + v5 + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v41, v15);
        if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v16);
        }
      }

      else
      {
        v41 = &stru_1F1147748;
        v17 = &stru_1F1147748;
      }

      [v9 setContent:v41];
      v18 = v41;
      v41 = 0;
      if (v18)
      {
      }

      v19 = v6 + v5;
      [v9 setExcluded:*(v6 + v5 + 88)];
      if (*(v6 + v5 + 80) == 1)
      {
        v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
        if ((*(v19 + 80) & 1) == 0)
        {
          goto LABEL_56;
        }

        v21 = v20;
        if (*(v6 + v5 + 32))
        {
          WTF::URL::createCFURL(&v41, (v6 + v5 + 32));
          [v21 setObject:v41 forKey:@"_WKTextManipulationTokenUserInfoDocumentURLKey"];
          v22 = v41;
          v41 = 0;
          if (v22)
          {
          }

          if ((*(v19 + 80) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        v23 = v8;
        v24 = *(v19 + 16);
        if (v24)
        {
          atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v41, v24);
          if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v25);
          }

          [v21 setObject:v41 forKey:@"_WKTextManipulationTokenUserInfoTagNameKey"];
          v26 = v41;
          v41 = 0;
          if (v26)
          {
          }

          if ((*(v19 + 80) & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        v27 = *(v6 + v5 + 24);
        if (v27)
        {
          atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          MEMORY[0x19EB00B70](&v41, v27);
          if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v28);
          }

          [v21 setObject:v41 forKey:@"_WKTextManipulationTokenUserInfoRoleAttributeKey"];
          v29 = v41;
          v41 = 0;
          if (v29)
          {
          }

          if ((*(v19 + 80) & 1) == 0)
          {
LABEL_56:
            __break(1u);
            return;
          }
        }

        [v21 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(v6 + v5 + 72)), @"_WKTextManipulationTokenUserInfoVisibilityKey"}];
        v3 = v39;
        v8 = v23;
      }

      else
      {
        v21 = 0;
      }

      [v9 setUserInfo:v21];
      if (v21)
      {
      }

      if (v9)
      {
        [v3 addObject:v9];
      }

      v5 += 96;
    }

    while (v7 != v5);
  }

  WTF::makeString<unsigned long long,char,unsigned long long>(*v38, 45, *(v38 + 16), &v41);
  v30 = [_WKTextManipulationItem alloc];
  v31 = v41;
  if (v41)
  {
    atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v40, v31);
    if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v32);
    }
  }

  else
  {
    v40 = &stru_1F1147748;
    v33 = &stru_1F1147748;
  }

  *self = [(_WKTextManipulationItem *)v30 initWithIdentifier:v40 tokens:v3 isSubframe:*(v38 + 8) isCrossSiteSubframe:*(v38 + 9)];
  v35 = v40;
  v40 = 0;
  if (v35)
  {
  }

  v36 = v41;
  v41 = 0;
  if (!v36 || atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_52;
  }

  WTF::StringImpl::destroy(v36, v34);
  if (v3)
  {
LABEL_52:
  }
}

- (uint64_t)_completeTextManipulation:()WKPrivate completion:
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = (*(*(self + 8) + 16))();
  if (v2)
  {

    return WTF::fastFree(v2, v4);
  }

  return result;
}

- (uint64_t)_completeTextManipulationForItems:()WKPrivate completion:
{
  *self = &unk_1F10F95E8;
  _Block_release(*(self + 16));
  v2 = *(self + 8);
  *(self + 8) = 0;
  if (v2)
  {
  }

  return self;
}

- (void)_completeTextManipulationForItems:()WKPrivate completion:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = *(a2 + 12);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v3)
  {
    selfCopy = self;
    v15 = v2;
    v4 = *(self + 8);
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
    v6 = 32 * v3;
    v7 = (v2 + 16);
    do
    {
      v8 = *v7;
      if (v8 < [v4 count])
      {
        v9 = ((*(v7 + 8) - 1) & 0xFC) != 0 ? 0 : (*(v7 + 8) - 1) + 1;
        v10 = [v4 objectAtIndexedSubscript:*v7];
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = @"item";
        v17[0] = v10;
        v12 = [v11 initWithDomain:@"WKTextManipulationItemErrorDomain" code:v9 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, &v16, 1)}];
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
    self = selfCopy;
    v2 = v15;
  }

  else
  {
    v5 = 0;
  }

  (*(*(self + 16) + 16))();
  if (v5)
  {
  }

  if (v2)
  {
    WTF::fastFree(v2, v13);
  }
}

- (uint64_t)_dataTaskWithRequest:()WKPrivate runAtForegroundPriority:completionHandler:
{
  *self = &unk_1F10F9610;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_dataTaskWithRequest:()WKPrivate runAtForegroundPriority:completionHandler:
{
  CFRetain(*(a2 + 8));
  if (*(a2 + 8) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    __break(0xC471u);
  }

  else
  {
    (*(*(self + 8) + 16))();
    v4 = *(a2 + 8);

    CFRelease(v4);
  }
}

- (uint64_t)_convertPoint:()WKPrivate fromFrame:toMainFrameCoordinates:
{
  *self = &unk_1F10F9638;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_convertPoint:()WKPrivate fromFrame:toMainFrameCoordinates:
{
  if (a3)
  {
    WebCore::FloatPoint::operator CGPoint();
    (*(*(self + 8) + 16))();
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
    (*(*(self + 8) + 16))(0.0, 0.0);
    if (v4)
    {
    }
  }
}

- (uint64_t)_convertRect:()WKPrivate fromFrame:toMainFrameCoordinates:
{
  *self = &unk_1F10F9660;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_convertRect:()WKPrivate fromFrame:toMainFrameCoordinates:
{
  if (*(a2 + 16))
  {
    WebCore::FloatRect::operator CGRect();
    (*(*(self + 8) + 16))();
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"WKErrorDomain" code:1 userInfo:0];
    (*(*(self + 8) + 16))(0.0, 0.0, 0.0, 0.0);
    if (v3)
    {
    }
  }
}

- (uint64_t)_textFragmentDirectiveFromSelectionWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F96D8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_textFragmentDirectiveFromSelectionWithCompletionHandler:()WKPrivate
{
  WTF::URL::createCFURL(&v4, this);
  (*(*(self + 8) + 16))();
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}

- (uint64_t)_requestAllTextWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F9700;
  _Block_release(*(self + 16));
  objc_destroyWeak((self + 8));
  return self;
}

- (void)_requestAllTextWithCompletionHandler:()WKPrivate
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 3)];
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *a2;
      for (i = 8 * v6; i; i -= 8)
      {
        v9 = *(*v7 + 8);
        if (v9)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(0xC471u);
            return;
          }

          [v5 addObject:v9];
        }

        v7 += 8;
      }
    }

    (*(*(self + 16) + 16))();
    if (v5)
    {
    }
  }

  else
  {
    v10 = *(*(self + 16) + 16);

    v10();
  }
}

- (uint64_t)_requestTargetedElementInfo:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9728;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_requestTargetedElementInfo:()WKPrivate completionHandler:
{
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 3)];
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *a2;
    for (i = 8 * v4; i; i -= 8)
    {
      v7 = *(*v5 + 8);
      if (v7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }

        [v8 addObject:v7];
      }

      v5 += 8;
    }
  }

  (*(*(self + 8) + 16))();
  if (v8)
  {
  }
}

- (uint64_t)_requestAllTargetableElementsInfo:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9750;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_requestAllTargetableElementsInfo:()WKPrivate completionHandler:
{
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(a2 + 3)];
  v4 = *(a2 + 3);
  if (v4)
  {
    v5 = *a2;
    v6 = &(*a2)[2 * v4];
    do
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v5 + 3)];
      v8 = *(v5 + 3);
      if (v8)
      {
        v9 = *v5;
        for (i = 8 * v8; i; i -= 8)
        {
          v11 = *(*v9 + 8);
          if (v11)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __break(0xC471u);
              return;
            }

            [v7 addObject:v11];
          }

          v9 += 8;
        }
      }

      if (v7)
      {
        [v12 addObject:v7];
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  (*(*(self + 8) + 16))();
  if (v12)
  {
  }
}

- (uint64_t)_loadAndDecodeImage:()WKPrivate constrainedToSize:maximumBytesFromNetwork:completionHandler:
{
  *self = &unk_1F10F9778;
  v3 = *(self + 16);
  *(self + 16) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  _Block_release(*(self + 8));
  return self;
}

- (void)_loadAndDecodeImage:()WKPrivate constrainedToSize:maximumBytesFromNetwork:completionHandler:
{
  if (!*(this + 80))
  {
    v4 = *this;
    atomic_fetch_add(*this, 1u);
    v5 = objc_alloc(MEMORY[0x1E69DCAB8]);
    WebCore::ShareableBitmap::makeCGImageCopy(&cf, v4);
    v6 = [v5 initWithCGImage:cf];
    (*(*(self + 1) + 16))();
    if (v6)
    {
    }

    v8 = cf;
    cf = 0;
    if (v8)
    {
      CFRelease(v8);
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v4, v7);
    return;
  }

  if (*(this + 80) != 1)
  {
    mpark::throw_bad_variant_access(self);
  }

  if (*(this + 60))
  {
    WebCore::ResourceError::nsError(this);
    v3 = *(*(self + 1) + 16);

    v3();
  }

  else
  {
    WebCore::internalError();
    WebCore::ResourceError::nsError(&cf);
    (*(*(self + 1) + 16))();
    v10 = v17;
    v17 = 0;
    if (v10)
    {
    }

    v11 = v16;
    v16 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = v15;
    v15 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }

    v13 = cf;
    cf = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }
  }
}

- (uint64_t)_getInformationFromImageData:()WKPrivate completionHandler:
{
  v35[1] = *MEMORY[0x1E69E9840];
  result = mpark::detail::move_constructor<mpark::detail::traits<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>,(mpark::detail::Trait)1>::move_constructor(v29, a2);
  if (v31)
  {
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34 = *MEMORY[0x1E696A578];
    if (v31 != 1)
    {
      mpark::throw_bad_variant_access(v4);
    }

    v5 = v4;
    WebCore::descriptionString();
    v6 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(v32, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v33, v6);
      if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, v7);
      }
    }

    else
    {
      v33 = &stru_1F1147748;
      v15 = &stru_1F1147748;
    }

    v35[0] = v33;
    v17 = -[mpark initWithDomain:code:userInfo:](v5, "initWithDomain:code:userInfo:", @"WKErrorDomain", 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1]);
    v18 = v33;
    v33 = 0;
    if (v18)
    {
    }

    v19 = v32;
    v32 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    (*(*(self + 8) + 16))();
    if (v17)
    {
    }

    return std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v29, v20);
  }

  v8 = v29[0];
  if (v29[0])
  {
    atomic_fetch_add_explicit(v29[0], 2u, memory_order_relaxed);
  }

  v9 = v30;
  if (!v30)
  {
    v11 = 0;
LABEL_23:
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    if (v9)
    {
      v22 = 8 * v9;
      v23 = v11;
      do
      {
        v35[0] = *v23;
        WebCore::IntSize::operator CGSize();
        v24 = [MEMORY[0x1E696B098] valueWithCGSize:?];
        if (v24)
        {
          [v21 addObject:v24];
        }

        v23 = (v23 + 8);
        v22 -= 8;
      }

      while (v22);
    }

    if (v8)
    {
      atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](v35, v8);
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v25);
      }
    }

    else
    {
      v35[0] = &stru_1F1147748;
      v26 = &stru_1F1147748;
    }

    if (v21)
    {
      v27 = v21;
    }

    (*(*(self + 8) + 16))();
    v28 = v35[0];
    v35[0] = 0;
    if (v28)
    {
    }

    if (v11)
    {
      WTF::fastFree(v11, v20);
    }

    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v20);
    }

    return std::experimental::fundamentals_v3::expected<std::pair<WTF::String,WTF::Vector<WebCore::IntSize,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WebCore::ImageDecodingError>::~expected(v29, v20);
  }

  if (!(v30 >> 29))
  {
    v10 = WTF::fastMalloc((8 * v30));
    v11 = v10;
    if (v30)
    {
      v12 = 0;
      v13 = v29[1];
      v14 = 8 * v30;
      do
      {
        *(v10 + v12) = *&v13[v12 / 4];
        v12 += 8;
      }

      while (v14 != v12);
    }

    goto LABEL_23;
  }

  __break(0xC471u);
  return result;
}

- (uint64_t)_createIconDataFromImageData:()WKPrivate withLengths:completionHandler:
{
  *self = &unk_1F10F97C8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_createIconDataFromImageData:()WKPrivate withLengths:completionHandler:
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *a2 = 0;
  if (v3)
  {
    WebCore::SharedBuffer::createNSData(&v9, v3);
    v4 = v9;
    v9 = 0;
    if (v4)
    {
      v5 = v4;
    }

    (*(*(self + 8) + 16))();
    v6 = v9;
    v9 = 0;
    if (v6)
    {
    }

    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 8))(v3);
    }
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"Failed to decode data";
    v8 = [v7 initWithDomain:@"WKErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}];
    (*(*(self + 8) + 16))();
    if (v8)
    {
    }
  }
}

- (uint64_t)_decodeImageData:()WKPrivate preferredSize:completionHandler:
{
  *self = &unk_1F10F97F0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_decodeImageData:()WKPrivate preferredSize:completionHandler:
{
  cf[1] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    WebCore::ShareableBitmap::makeCGImageCopy(cf, *a2);
    v5 = [v4 initWithCGImage:cf[0]];
    v6 = cf[0];
    cf[0] = 0;
    if (v6)
    {
      CFRelease(v6);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    else if (!v5)
    {
LABEL_5:
      (*(*(self + 8) + 16))();
      return;
    }

    v7 = v5;
    goto LABEL_5;
  }

  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10 = *MEMORY[0x1E696A578];
  cf[0] = @"Failed to decode data";
  v9 = [v8 initWithDomain:@"WKErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", cf, &v10, 1)}];
  (*(*(self + 8) + 16))();
  if (v9)
  {
  }
}

- (uint64_t)_loadServiceWorker:()WKPrivate usingModules:completionHandler:
{
  *self = &unk_1F10F9818;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_didLoadAppInitiatedRequest:()WKPrivate
{
  *self = &unk_1F10F9840;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_didLoadNonAppInitiatedRequest:()WKPrivate
{
  *self = &unk_1F10F9868;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_suspendPage:()WKPrivate
{
  *self = &unk_1F10F9890;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_resumePage:()WKPrivate
{
  *self = &unk_1F10F98B8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_getPDFFirstPageSizeInFrame:()WKPrivate completionHandler:
{
  *self = &unk_1F10F98E0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_sessionStateWithFilter:()WKPrivate
{
  v2 = *(self + 8);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 8);
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    result = 117;
    __break(0xC471u);
  }

  else
  {
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (uint64_t)_insertAttachmentWithFileWrapper:()WKPrivate contentType:completion:
{
  result = *(self + 8);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (uint64_t)_showWarningViewWithURL:()WKPrivate title:warning:detailsWithLinks:completionHandler:
{
  *self = &unk_1F10F9958;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (WTF::StringImpl)_showWarningViewWithURL:()WKPrivate title:warning:detailsWithLinks:completionHandler:
{
  if (*(a2 + 40) == 1)
  {
    v5 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v8 = v5;
    v9 = *(a2 + 8);
    v10 = *(a2 + 24);
    WTF::URL::createCFURL(&v11, &v8);
    (*(*(self + 1) + 16))();
    v7 = v11;
    v11 = 0;
    if (v7)
    {
    }

    result = v8;
    v8 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v6);
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      mpark::throw_bad_variant_access(self);
    }

    v3 = *(*(self + 1) + 16);

    return v3();
  }

  return result;
}

- (uint64_t)_isJITEnabled:()WKPrivate
{
  *self = &unk_1F10F9980;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_saveResources:()WKPrivate suggestedFileName:completionHandler:
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ((*a2 & 0x100) != 0)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = *MEMORY[0x1E696A578];
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v12);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v6);
      }
    }

    else
    {
      v12 = &stru_1F1147748;
      v7 = &stru_1F1147748;
    }

    v14[0] = v12;
    v8 = [v5 initWithDomain:@"WKErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
    (*(*(self + 8) + 16))();
    if (v8)
    {
    }

    v10 = v12;
    v12 = 0;
    if (v10)
    {
    }

    result = v11;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v11, v9);
    }
  }

  else
  {
    v3 = *(*(self + 8) + 16);

    return v3();
  }

  return result;
}

- (uint64_t)_archiveWithConfiguration:()WKPrivate completionHandler:
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ((*a2 & 0x100) != 0)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = *MEMORY[0x1E696A578];
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v12);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v6);
      }
    }

    else
    {
      v12 = &stru_1F1147748;
      v7 = &stru_1F1147748;
    }

    v14[0] = v12;
    v8 = [v5 initWithDomain:@"WKErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1)}];
    (*(*(self + 8) + 16))();
    if (v8)
    {
    }

    v10 = v12;
    v12 = 0;
    if (v10)
    {
    }

    result = v11;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v11, v9);
    }
  }

  else
  {
    v3 = *(*(self + 8) + 16);

    return v3();
  }

  return result;
}

- (uint64_t)_getMainResourceDataWithCompletionHandler:()WKPrivate
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DB354B0);
      }
    }
  }

  v3 = *(*(self + 8) + 16);

  return v3();
}

- (uint64_t)_getContentsAsStringWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F9A20;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getContentsAsStringWithCompletionHandler:()WKPrivate
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v8, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v8 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))();
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v6);
    }
  }
}

- (uint64_t)_getContentsAsStringWithCompletionHandlerKeepIPCConnectionAliveForTesting:()WKPrivate
{
  *self = &unk_1F10F9A48;
  v2 = *(self + 16);
  *(self + 16) = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  _Block_release(*(self + 8));
  return self;
}

- (void)_getContentsAsStringWithCompletionHandlerKeepIPCConnectionAliveForTesting:()WKPrivate
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v8, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v8 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))();
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v6);
    }
  }
}

- (uint64_t)_getContentsOfAllFramesAsStringWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F9A70;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getContentsOfAllFramesAsStringWithCompletionHandler:()WKPrivate
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v8, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v8 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))();
  v7 = v8;
  v8 = 0;
  if (v7)
  {
  }

  if (v3)
  {
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v6);
    }
  }
}

- (uint64_t)_getContentsAsAttributedStringWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F9A98;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getContentsAsAttributedStringWithCompletionHandler:()WKPrivate
{
  WebCore::AttributedString::nsAttributedString(&v7, this);
  if (v7)
  {
    WebCore::AttributedString::documentAttributesAsNSDictionary(&v6, this);
  }

  else
  {
    createNSError(WKErrorUnknown, 0, &v6);
  }

  (*(*(self + 8) + 16))();
  v4 = v6;
  v6 = 0;
  if (v4)
  {
  }

  v5 = v7;
  v7 = 0;
  if (v5)
  {
  }
}

- (uint64_t)_getApplicationManifestWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F9AC0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getApplicationManifestWithCompletionHandler:()WKPrivate
{
  v3 = *(self + 8);
  if (v3)
  {
    if (*(a2 + 272) == 1)
    {
      API::ApplicationManifest::create(a2, &v6);
      if (*(v6 + 1) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        __break(0xC471u);
      }

      else
      {
        (*(*(self + 8) + 16))();
        v4 = v6;
        v6 = 0;
        if (v4)
        {
          CFRelease(*(v4 + 1));
        }
      }
    }

    else
    {
      v5 = *(v3 + 16);

      v5();
    }
  }
}

- (uint64_t)_getTextFragmentMatchWithCompletionHandler:()WKPrivate
{
  if (*a2)
  {
    WTF::StringImpl::operator NSString *();
  }

  v3 = *(*(self + 8) + 16);

  return v3();
}

- (uint64_t)_clearServiceWorkerEntitlementOverride:()WKPrivate
{
  *self = &unk_1F10F9B10;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_getProcessDisplayNameWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F9B38;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (void)_getProcessDisplayNameWithCompletionHandler:()WKPrivate
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v7, v3);
    if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  else
  {
    v7 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  (*(*(self + 8) + 16))();
  v6 = v7;
  v7 = 0;
  if (v6)
  {
  }
}

- (uint64_t)_removeDataDetectedLinks:()WKPrivate
{
  v3 = *(self + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *a2;
      *a2 = 0;
      v6 = *(v4 + 568);
      *(v4 + 568) = v5;
      if (v6)
      {
      }
    }
  }

  result = *(self + 8);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (uint64_t)_setDisplayCaptureState:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9BB0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_setSystemAudioCaptureState:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9C00;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_resetVisibilityAdjustmentsForTargetedElements:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9C50;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_adjustVisibilityForTargetedElements:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9C78;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_numberOfVisibilityAdjustmentRectsWithCompletionHandler:()WKPrivate
{
  *self = &unk_1F10F9CA0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_playPredominantOrNowPlayingMediaSession:()WKPrivate
{
  *self = &unk_1F10F9CC8;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_pauseNowPlayingMediaSession:()WKPrivate
{
  *self = &unk_1F10F9CF0;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_simulateClickOverFirstMatchingTextInViewportWithUserInteraction:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9D18;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

- (uint64_t)_targetedPreviewForElementWithID:()WKPrivate completionHandler:
{
  *self = &unk_1F10F9D40;
  objc_destroyWeak((self + 16));
  _Block_release(*(self + 8));
  return self;
}

- (void)_targetedPreviewForElementWithID:()WKPrivate completionHandler:
{
  WeakRetained = objc_loadWeakRetained((self + 16));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (*(a2 + 136))
    {
      v6 = *(WeakRetained + 82);
      v7 = *(a2 + 16);
      v26[0] = *a2;
      v26[1] = v7;
      v26[2] = *(a2 + 32);
      WTF::Vector<WebCore::LinearTimingFunction::Point,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v27, a2 + 48);
      v29 = *(a2 + 64);
      v8 = *(a2 + 72);
      if (v8)
      {
        ++v8[4];
      }

      v30 = v8;
      v9 = *(a2 + 80);
      if (v9)
      {
        ++v9[4];
      }

      v31 = v9;
      v10 = *(a2 + 88);
      if (v10)
      {
        ++v10[4];
      }

      v11 = *(a2 + 96);
      v32 = v10;
      v33 = v11;
      if ((v11 & 0x8000000000000) != 0)
      {
        atomic_fetch_add((v11 & 0xFFFFFFFFFFFFLL), 1u);
      }

      v34[0] = *(a2 + 104);
      *(v34 + 9) = *(a2 + 113);
      v12 = [v6 _createTargetedPreviewFromTextIndicator:v26 previewContainer:v5];
      v18 = v12;
      if (v12)
      {
        v19 = v12;
      }

      if ((v33 & 0x8000000000000) != 0)
      {
        v25 = (v33 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v33 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v25);
          WTF::fastFree(v25, v13);
        }
      }

      v20 = v32;
      v32 = 0;
      if (v20)
      {
        if (v20[4] == 1)
        {
          (*(*v20 + 8))(v20);
        }

        else
        {
          --v20[4];
        }
      }

      v21 = v31;
      v31 = 0;
      if (v21)
      {
        if (v21[4] == 1)
        {
          (*(*v21 + 8))(v21);
        }

        else
        {
          --v21[4];
        }
      }

      v22 = v30;
      v30 = 0;
      if (v22)
      {
        if (v22[4] == 1)
        {
          (*(*v22 + 8))(v22);
        }

        else
        {
          --v22[4];
        }
      }

      v23 = v27;
      if (v27)
      {
        v27 = 0;
        v28 = 0;
        WTF::fastFree(v23, v13);
      }

      (*(*(self + 8) + 16))(*(self + 8), v18, v14, v15, v16, v17);
      if (v18)
      {
      }
    }

    else
    {
      (*(*(self + 8) + 16))();
    }
  }

  else
  {
    v24 = *(*(self + 8) + 16);

    v24();
  }
}

- (void)_setShouldSuppressTopColorExtensionView:()WKPrivate
{
  v2 = self[1];
  *self = &unk_1F10F9D68;
  self[1] = 0;
  if (v2)
  {
  }

  return self;
}

- (uint64_t)_setShouldSuppressTopColorExtensionView:()WKPrivate
{
  [*(self + 8) _updateFixedColorExtensionViews];
  v2 = *(self + 8);

  return [v2 _updateTopScrollPocketCaptureColor];
}

@end