void WebKit::AutomationSessionClient::acceptCurrentJavaScriptDialogOnPage(id *this, WebKit::WebAutomationSession *a2, WebKit::WebPageProxy *a3)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (WeakRetained)
  {
    if ((this[2] & 0x100) != 0)
    {
      v5 = objc_loadWeakRetained(this + 1);
      v6 = *(a2 + 1);
      if (v6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }
      }

      [v5 _automationSession:v6 acceptCurrentJavaScriptDialogForWebView:WeakRetained];
      if (v5)
      {
      }
    }
  }
}

void WebKit::AutomationSessionClient::messageOfCurrentJavaScriptDialogOnPage(WebKit::AutomationSessionClient *this@<X0>, WebKit::WebAutomationSession *a2@<X1>, WebKit::WebPageProxy *a3@<X2>, _BYTE *a4@<X8>)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  if ((*(this + 8) & 0x200) == 0)
  {

LABEL_4:
    *a4 = 0;
    a4[8] = 0;
    return;
  }

  v7 = objc_loadWeakRetained(this + 1);
  v8 = *(a2 + 1);
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    __break(0xC471u);
  }

  else
  {
    MEMORY[0x19EB02040](a4, [v7 _automationSession:v8 messageOfCurrentJavaScriptDialogForWebView:WeakRetained]);
    a4[8] = 1;
    if (v7)
    {
    }
  }
}

void WebKit::AutomationSessionClient::defaultTextOfCurrentJavaScriptDialogOnPage(WebKit::AutomationSessionClient *this@<X0>, WebKit::WebAutomationSession *a2@<X1>, WebKit::WebPageProxy *a3@<X2>, _BYTE *a4@<X8>)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  if ((*(this + 8) & 0x400) == 0)
  {

LABEL_4:
    *a4 = 0;
    a4[8] = 0;
    return;
  }

  v7 = objc_loadWeakRetained(this + 1);
  v8 = *(a2 + 1);
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    __break(0xC471u);
  }

  else
  {
    MEMORY[0x19EB02040](a4, [v7 _automationSession:v8 defaultTextOfCurrentJavaScriptDialogForWebView:WeakRetained]);
    a4[8] = 1;
    if (v7)
    {
    }
  }
}

void WebKit::AutomationSessionClient::userInputOfCurrentJavaScriptDialogOnPage(WebKit::AutomationSessionClient *this@<X0>, WebKit::WebAutomationSession *a2@<X1>, WebKit::WebPageProxy *a3@<X2>, _BYTE *a4@<X8>)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  if ((*(this + 8) & 0x800) == 0)
  {

LABEL_4:
    *a4 = 0;
    a4[8] = 0;
    return;
  }

  v7 = objc_loadWeakRetained(this + 1);
  v8 = *(a2 + 1);
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    __break(0xC471u);
  }

  else
  {
    MEMORY[0x19EB02040](a4, [v7 _automationSession:v8 userInputOfCurrentJavaScriptDialogForWebView:WeakRetained]);
    a4[8] = 1;
    if (v7)
    {
    }
  }
}

void WebKit::AutomationSessionClient::setUserInputForCurrentJavaScriptPromptOnPage(id *this, WebKit::WebAutomationSession *a2, WebKit::WebPageProxy *a3, atomic_uint **a4)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if ((this[2] & 0x1000) != 0)
    {
      v9 = objc_loadWeakRetained(this + 1);
      v10 = *(a2 + 1);
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }
      }

      v11 = *a4;
      if (v11)
      {
        atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v15, v11);
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v12);
        }
      }

      else
      {
        v15 = &stru_1F1147748;
        v13 = &stru_1F1147748;
      }

      [v9 _automationSession:v10 setUserInput:v15 forCurrentJavaScriptDialogForWebView:v8];
      v14 = v15;
      v15 = 0;
      if (v14)
      {
      }

      if (v9)
      {
      }
    }
  }
}

void sub_19DC01204(_Unwind_Exception *a1)
{
  if (v2)
  {
  }

  _Unwind_Resume(a1);
}

unint64_t WebKit::AutomationSessionClient::typeOfCurrentJavaScriptDialogOnPage(WebKit::AutomationSessionClient *this, WebKit::WebAutomationSession *a2, WebKit::WebPageProxy *a3)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (!WeakRetained)
  {
    return 0x100000002;
  }

  v6 = WeakRetained;
  if ((*(this + 8) & 0x2000) == 0)
  {
    v7 = 0x100000000;
    v8 = 2;
LABEL_12:

    return v7 | v8;
  }

  v10 = objc_loadWeakRetained(this + 1);
  v11 = *(a2 + 1);
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [v10 _automationSession:v11 typeOfCurrentJavaScriptDialogForWebView:v6];
    v7 = ((v12 - 2) < 3) << 32;
    if ((v12 - 2) >= 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v12 - 2;
    }

    if (v10)
    {
    }

    goto LABEL_12;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::AutomationSessionClient::currentPresentationOfPage(WebKit::AutomationSessionClient *this, WebKit::WebAutomationSession *a2, WebKit::WebPageProxy *a3)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (!WeakRetained)
  {
    return 1;
  }

  v6 = WeakRetained;
  if ((*(this + 8) & 0x4000) == 0)
  {
    v7 = 1;
LABEL_9:

    return v7;
  }

  v8 = objc_loadWeakRetained(this + 1);
  v9 = *(a2 + 1);
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v8 _automationSession:v9 currentPresentationForWebView:v6] != 0;
    if (v8)
    {
    }

    goto LABEL_9;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

uint64_t WebKit::BrowsingWarning::BrowsingWarning(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = a4;
  *a1 = 1;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a1 + 8) = v8;
  v9 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 32) = v9;
  v10 = mpark::detail::copy_constructor<mpark::detail::traits<WebKit::BrowsingWarning::SafeBrowsingWarningData,WebKit::BrowsingWarning::HTTPSNavigationFailureData>,(mpark::detail::Trait)1>::copy_constructor(&v221, a4);
  if (v222 != 1)
  {
    if (v222)
    {
      goto LABEL_310;
    }

    v12 = v221;
    if (v221)
    {
      v13 = v221;
    }

    if ([v12 isPhishing])
    {
      WebCore::copyLocalizedString(&v229, @"Deceptive Website Warning", v14);
      v15 = v229;
      v229 = 0;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    else if ([v12 isMalware])
    {
      WebCore::copyLocalizedString(&v229, @"Malware Website Warning", v17);
      v15 = v229;
      v229 = 0;
      if (v15)
      {
LABEL_17:
        CFAutorelease(v15);
        v18 = v229;
        v229 = 0;
        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    else
    {
      WebCore::copyLocalizedString(&v229, @"Website With Harmful Software Warning", v17);
      v15 = v229;
      v229 = 0;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
    }

    goto LABEL_21;
  }

  WebCore::copyLocalizedString(&v229, @"This Connection Is Not Secure", v11);
  v15 = v229;
  v229 = 0;
  if (v15)
  {
    CFAutorelease(v15);
    v16 = v229;
    v229 = 0;
    if (v16)
    {
      CFRelease(v16);
    }
  }

LABEL_21:
  MEMORY[0x19EB02040](a1 + 48, v15);
  if (!v222)
  {
    v19 = v221;
    v221 = 0;
    if (v19)
    {
    }
  }

  v222 = -1;
  v10 = mpark::detail::copy_constructor<mpark::detail::traits<WebKit::BrowsingWarning::SafeBrowsingWarningData,WebKit::BrowsingWarning::HTTPSNavigationFailureData>,(mpark::detail::Trait)1>::copy_constructor(&v219, v4);
  if (v220 != 1)
  {
    if (!v220)
    {
      v21 = v219;
      if (v219)
      {
        v22 = v219;
      }

      if ([v21 isPhishing])
      {
        WebCore::copyLocalizedString(&v229, @"This website may try to trick you into doing something dangerous, like installing software or disclosing personal or financial information, like passwords, phone numbers, or credit cards.", v23);
        v24 = v229;
        v229 = 0;
        if (v24)
        {
          goto LABEL_38;
        }
      }

      else if ([v21 isMalware])
      {
        WebCore::copyLocalizedString(&v229, @"This website may attempt to install dangerous software, which could harm your computer or steal your personal or financial information, like passwords, photos, or credit cards.", v26);
        v24 = v229;
        v229 = 0;
        if (v24)
        {
LABEL_38:
          CFAutorelease(v24);
          v27 = v229;
          v229 = 0;
          if (v27)
          {
            CFRelease(v27);
          }
        }
      }

      else
      {
        WebCore::copyLocalizedString(&v229, @"This website may try to trick you into installing software that harms your browsing experience, like changing your settings without your permission or showing you unwanted ads. Once installed, it may be difficult to remove.", v26);
        v24 = v229;
        v229 = 0;
        if (v24)
        {
          goto LABEL_38;
        }
      }

      if (v21)
      {
      }

      goto LABEL_42;
    }

LABEL_310:
    mpark::throw_bad_variant_access(v10);
  }

  WebCore::copyLocalizedString(&v229, @"This website does not support connecting securely over HTTPS. The information you see and enter on this website, including credit cards, phone numbers, and passwords, can be read and altered by other people.", v20);
  v24 = v229;
  v229 = 0;
  if (v24)
  {
    CFAutorelease(v24);
    v25 = v229;
    v229 = 0;
    if (v25)
    {
      CFRelease(v25);
    }
  }

LABEL_42:
  MEMORY[0x19EB02040](a1 + 56, v24);
  if (!v220)
  {
    v28 = v219;
    v219 = 0;
    if (v28)
    {
    }
  }

  v220 = -1;
  *(a1 + 64) = a3;
  mpark::detail::copy_constructor<mpark::detail::traits<WebKit::BrowsingWarning::SafeBrowsingWarningData,WebKit::BrowsingWarning::HTTPSNavigationFailureData>,(mpark::detail::Trait)1>::copy_constructor(&v217, v4);
  if (v218)
  {
    *(a1 + 72) = 0;
    goto LABEL_293;
  }

  v29 = v217;
  if (![v217 isPhishing])
  {
    v58 = [v29 isMalware];
    if (v58)
    {
      WebCore::copyLocalizedString(&v229, @"Warnings are shown for websites where malicious software has been detected. You can check the %status-link% on the %safeBrowsingProvider% diagnostic page.", v57);
      v59 = v229;
      v229 = 0;
      if (v59)
      {
        CFAutorelease(v59);
        v60 = v229;
        v229 = 0;
        if (v60)
        {
          CFRelease(v60);
        }
      }

      v61 = @"%status-link%";
    }

    else
    {
      WebCore::copyLocalizedString(&v229, @"Warnings are shown for websites where harmful software has been detected. You can check %the-status-of-site% on the %safeBrowsingProvider% diagnostic page.", v57);
      v59 = v229;
      v229 = 0;
      if (v59)
      {
        CFAutorelease(v59);
        v62 = v229;
        v229 = 0;
        if (v62)
        {
          CFRelease(v62);
        }
      }

      v61 = @"%the-status-of-site%";
    }

    v52 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v59];
    MEMORY[0x19EB02040](v228, [v29 localizedProviderDisplayName]);
    v63 = v228[0];
    if (v228[0])
    {
      atomic_fetch_add_explicit(v228[0], 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v229, v63);
      if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v64);
      }
    }

    else
    {
      v229 = &stru_1F1147748;
      v65 = &stru_1F1147748;
    }

    v66 = v229;
    v67 = [objc_msgSend(v52 "string")];
    [v52 replaceCharactersInRange:v67 withString:{v68, v66}];
    v70 = v229;
    v229 = 0;
    if (v70)
    {
    }

    v71 = v228[0];
    v228[0] = 0;
    if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v71, v69);
    }

    v72 = objc_alloc(MEMORY[0x1E696AD40]);
    WebCore::copyLocalizedString(&v229, @"the status of “%site%”", v73);
    v74 = v229;
    v229 = 0;
    if (v74)
    {
      CFAutorelease(v74);
      v75 = v229;
      v229 = 0;
      if (v75)
      {
        CFRelease(v75);
      }
    }

    v76 = [v72 initWithString:v74];
    v216 = v76;
    v229 = WTF::URL::host(a2);
    v230 = v77;
    v231 = v78;
    WTF::StringView::createNSString(v228, &v229);
    v79 = v228[0];
    v80 = [-[__CFString string](v76 "string")];
    [(__CFString *)v76 replaceCharactersInRange:v80 withString:v81, v79];
    v82 = v228[0];
    v228[0] = 0;
    if (v82)
    {
    }

    v83 = [(__CFString *)v76 string];
    WTF::URL::URL(v228);
    MEMORY[0x19EB02040](&v226, [v29 malwareDetailsBaseURLString]);
    LODWORD(v212) = v58;
    p_isa = v4;
    v84 = WTF::URL::host(a2);
    v86 = v85;
    WTF::defaultLanguage();
    v88 = v225;
    v87 = v226;
    if (!v226)
    {
      goto LABEL_300;
    }

    v89 = *(v226 + 1);
    goto LABEL_98;
  }

  WebCore::copyLocalizedString(&v229, @"Warnings are shown for websites that have been reported as deceptive. Deceptive websites try to trick you into believing they are legitimate websites you trust.", v30);
  v32 = v229;
  v229 = 0;
  if (v32)
  {
    CFAutorelease(v32);
    v33 = v229;
    v229 = 0;
    if (v33)
    {
      CFRelease(v33);
    }

    v34 = v32;
  }

  v216 = v32;
  WebCore::copyLocalizedString(&v229, @"Learn more…", v31);
  v36 = v229;
  v229 = 0;
  if (v36)
  {
    CFAutorelease(v36);
    v37 = v229;
    v229 = 0;
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = v36;
  }

  v210 = v36;
  WebCore::copyLocalizedString(&v229, @"This website was reported as deceptive by %provider-display-name%. If you believe this website is safe, you can %report-an-error% to %provider%. Or, if you understand the risks involved, you can %bypass-link%.", v35);
  v40 = v229;
  v229 = 0;
  if (v40)
  {
    CFAutorelease(v40);
    v41 = v229;
    v229 = 0;
    if (v41)
    {
      CFRelease(v41);
    }

    v42 = v40;
  }

  v212 = v40;
  WebCore::copyLocalizedString(&v229, @"report an error", v39);
  v44 = v229;
  v229 = 0;
  p_isa = &v44->isa;
  if (v44)
  {
    CFAutorelease(v44);
    v45 = v229;
    v229 = 0;
    if (v45)
    {
      CFRelease(v45);
    }

    v46 = p_isa;
  }

  WebCore::copyLocalizedString(&v229, @"visit this unsafe website", v43);
  v47 = v229;
  v229 = 0;
  v213 = &v47->isa;
  if (v47)
  {
    CFAutorelease(v47);
    v48 = v229;
    v229 = 0;
    if (v48)
    {
      CFRelease(v48);
    }

    v49 = v213;
  }

  v50 = objc_alloc(MEMORY[0x1E696AD40]);
  v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@\n\n%@", v32, v36, v212];
  v52 = [v50 initWithString:v51];
  if (v51)
  {
  }

  v53 = [v29 learnMoreURL];
  WebKit::addLinkAndReplace(v52, v36, &v36->super.super.isa, v53, v54);
  MEMORY[0x19EB02040](v228, [v29 localizedProviderDisplayName]);
  v55 = v228[0];
  if (v228[0])
  {
    atomic_fetch_add_explicit(v228[0], 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v229, v55);
    if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v55, v56);
    }
  }

  else
  {
    v229 = &stru_1F1147748;
    v106 = &stru_1F1147748;
  }

  v107 = v229;
  v108 = [objc_msgSend(v52 "string")];
  [v52 replaceCharactersInRange:v108 withString:{v109, v107}];
  v111 = v229;
  v229 = 0;
  if (v111)
  {
  }

  v112 = v228[0];
  v228[0] = 0;
  if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v112, v110);
  }

  if (objc_opt_respondsToSelector())
  {
    MEMORY[0x19EB02040](v228, [v29 localizedProviderShortName]);
  }

  else
  {
    if (([objc_msgSend(v29 "provider")] & 1) == 0 && (objc_msgSend(objc_msgSend(v29, "provider"), "isEqual:", @"SSBProviderTencent") & 1) == 0 && !objc_msgSend(objc_msgSend(v29, "provider"), "isEqual:", @"SSBProviderApple"))
    {
      v130 = MEMORY[0x1E696EB88];
      v208 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
      v228[0] = v208;
      goto LABEL_161;
    }

    WTF::StringImpl::createWithoutCopyingNonEmpty();
  }

  v130 = v228[0];
  if (!v228[0])
  {
    v229 = &stru_1F1147748;
    v132 = &stru_1F1147748;
    goto LABEL_164;
  }

LABEL_161:
  atomic_fetch_add_explicit(v130, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v229, v130);
  if (atomic_fetch_add_explicit(v130, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v130, v131);
  }

LABEL_164:
  v133 = v229;
  v134 = [objc_msgSend(v52 "string")];
  [v52 replaceCharactersInRange:v134 withString:{v135, v133}];
  v137 = v229;
  v229 = 0;
  if (v137)
  {
  }

  v138 = v228[0];
  v228[0] = 0;
  if (v138 && atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v138, v136);
  }

  WTF::URL::URL(v228);
  MEMORY[0x19EB02040](&v226, [v29 reportAnErrorBaseURLString]);
  WTF::encodeWithURLEscapeSequences(&v225, a2, v139);
  v83 = v4;
  WTF::defaultLanguage();
  v87 = v225;
  v140 = v226;
  v88 = v224;
  if (v226)
  {
    v141 = *(v226 + 1);
    if (v225)
    {
      goto LABEL_171;
    }
  }

  else
  {
    v141 = 0;
    if (v225)
    {
LABEL_171:
      v142 = *(v225 + 1);
      if (v224)
      {
        goto LABEL_172;
      }

LABEL_304:
      v143 = 0;
      goto LABEL_173;
    }
  }

  v142 = 0;
  if (!v224)
  {
    goto LABEL_304;
  }

LABEL_172:
  v143 = *(v224 + 1);
  if (v143 < 0)
  {
    goto LABEL_311;
  }

LABEL_173:
  v91 = __OFADD__(v143, 4);
  v144 = v143 + 4;
  v145 = v91;
  if (v142 < 0)
  {
    goto LABEL_311;
  }

  if (v145)
  {
    goto LABEL_311;
  }

  v91 = __OFADD__(v142, v144);
  v146 = v142 + v144;
  if (v91)
  {
    goto LABEL_311;
  }

  v91 = __OFADD__(v146, 5);
  v147 = v146 + 5;
  v148 = v91;
  if (v141 < 0)
  {
    goto LABEL_311;
  }

  if (v148)
  {
    goto LABEL_311;
  }

  v149 = v141 + v147;
  if (__OFADD__(v141, v147))
  {
    goto LABEL_311;
  }

  if (!v226 || (*(v226 + 16) & 4) != 0)
  {
    if (v225)
    {
      v150 = *(v225 + 4);
      if (!v224 || (v150 & 4) == 0)
      {
        v86 = v149;
        v151 = v149 == 0;
        if ((v150 & 4) == 0)
        {
LABEL_193:
          if (!v151)
          {
            goto LABEL_195;
          }

LABEL_194:
          v84 = MEMORY[0x1E696EB88];
          atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
          v61 = v210;
          goto LABEL_215;
        }

        goto LABEL_205;
      }
    }

    else if (!v224)
    {
      if (!v149)
      {
        goto LABEL_194;
      }

      v86 = v149;
      if ((v149 & 0x80000000) != 0)
      {
        goto LABEL_311;
      }

LABEL_207:
      WTF::tryFastCompactMalloc((v86 + 20));
      v84 = v232;
      if (v232)
      {
        v232->i32[0] = 2;
        v84->i32[1] = v149;
        v84->i64[1] = v84[1].i64 + 4;
        v84[1].i32[0] = 4;
        v234 = v140;
        v61 = v210;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v234, &v84[1].i8[4]);
        v158 = v234;
        if (v234)
        {
          v158 = *(v234 + 1);
          if (v158 > v149)
          {
            goto LABEL_299;
          }
        }

        v159 = v86 - v158;
        v160 = &v84[1].u8[v158 + 4];
        v160[4] = 61;
        *v160 = 1819440422;
        if (v159 <= 4)
        {
          goto LABEL_299;
        }

        v161 = v159 - 5;
        v86 = (v160 + 5);
        v235[0] = v87;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v235, v160 + 5);
        v162 = v235[0];
        if (v235[0])
        {
          v162 = *(v235[0] + 4);
          if (v161 < v162)
          {
            goto LABEL_299;
          }
        }

        v163 = v161 - v162;
        v164 = v86 + v162;
        *v164 = 1030514726;
        if (v163 <= 3)
        {
          goto LABEL_299;
        }

        v232 = v88;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v232, (v164 + 4));
        goto LABEL_215;
      }

LABEL_311:
      __break(0xC471u);
      JUMPOUT(0x19DC02798);
    }

    v86 = v149;
    v151 = v149 == 0;
    if ((v224[2] & 4) == 0)
    {
      goto LABEL_193;
    }

LABEL_205:
    if (v151)
    {
      goto LABEL_194;
    }

    if ((v149 & 0x80000000) != 0)
    {
      goto LABEL_311;
    }

    goto LABEL_207;
  }

  if (!v149)
  {
    goto LABEL_194;
  }

  v86 = v149;
LABEL_195:
  if (v149 > 0x7FFFFFEF)
  {
    goto LABEL_311;
  }

  WTF::tryFastCompactMalloc((2 * v86 + 20));
  v84 = v232;
  if (!v232)
  {
    goto LABEL_311;
  }

  v232->i32[0] = 2;
  v84->i32[1] = v149;
  v84->i64[1] = v84[1].i64 + 4;
  v84[1].i32[0] = 0;
  v234 = v140;
  v61 = v210;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v234, &v84[1].i8[4]);
  v152 = v234;
  if (!v234 || (v152 = *(v234 + 1), v86 >= v152))
  {
    v153 = v84[1].i64 + 2 * v152 + 4;
    *v153 = 0x6C007200750026;
    *(v153 + 8) = 61;
    v154 = v86 - v152;
    if (v154 > 4)
    {
      v86 = v153 + 10;
      v155 = v154 - 5;
      v235[0] = v87;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v235, (v153 + 10));
      if (v235[0])
      {
        v156 = *(v235[0] + 4);
        if (v155 < v156)
        {
          goto LABEL_299;
        }
      }

      else
      {
        v156 = 0;
      }

      v157 = v86 + 2 * v156;
      *v157 = 0x3D006C00680026;
      if (v155 - v156 > 3)
      {
        v232 = v88;
        WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v232, (v157 + 8));
LABEL_215:
        v227 = v84;
        v165 = v216;
        v166 = MEMORY[0x19EB01E00](&v229, v228, &v227, 0);
        v4 = v83;
        WTF::URL::createCFURL(&v223, v166);
        v169 = v229;
        v229 = 0;
        if (v169 && atomic_fetch_add_explicit(v169, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v169, v167);
        }

        v170 = v227;
        v227 = 0;
        if (v170 && atomic_fetch_add_explicit(v170, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v170, v167);
        }

        v171 = v224;
        v224 = 0;
        if (v171 && atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v171, v167);
        }

        v172 = v225;
        v225 = 0;
        if (v172 && atomic_fetch_add_explicit(v172, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v172, v167);
        }

        v173 = v226;
        v226 = 0;
        if (v173 && atomic_fetch_add_explicit(v173, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v173, v167);
        }

        v174 = v228[0];
        v228[0] = 0;
        if (v174 && atomic_fetch_add_explicit(v174, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v174, v167);
        }

        WebKit::addLinkAndReplace(v52, @"%report-an-error%", p_isa, v223, v168);
        v175 = v223;
        v223 = 0;
        if (v175)
        {
        }

        v176 = [MEMORY[0x1E695DFF8] URLWithString:@"WKVisitUnsafeWebsiteSentinel"];
        WebKit::addLinkAndReplace(v52, @"%bypass-link%", v213, v176, v177);
        if (v52)
        {
          v178 = v52;
        }

        if (v213)
        {
        }

        if (p_isa)
        {
        }

        if (v212)
        {
        }

        if (v61)
        {
        }

        goto LABEL_286;
      }
    }
  }

  while (1)
  {
    while (1)
    {
LABEL_299:
      __break(1u);
LABEL_300:
      v89 = 0;
LABEL_98:
      v214 = v61;
      if (v88)
      {
        v90 = v88->i32[1];
        if (v90 < 0)
        {
          goto LABEL_311;
        }
      }

      else
      {
        v90 = 0;
      }

      v91 = __OFADD__(v90, 4);
      v92 = v90 + 4;
      v93 = v91;
      if ((v86 & 0x80000000) != 0)
      {
        goto LABEL_311;
      }

      if (v93)
      {
        goto LABEL_311;
      }

      v91 = __OFADD__(v86, v92);
      v94 = v86 + v92;
      if (v91)
      {
        goto LABEL_311;
      }

      v91 = __OFADD__(v94, 6);
      v95 = v94 + 6;
      v96 = v91;
      if (v89 < 0)
      {
        goto LABEL_311;
      }

      if (v96)
      {
        goto LABEL_311;
      }

      v97 = v89 + v95;
      if (__OFADD__(v89, v95))
      {
        goto LABEL_311;
      }

      if (v87 && (*(v87 + 16) & 4) == 0)
      {
        if (!v97)
        {
          goto LABEL_140;
        }

        v98 = v97;
        goto LABEL_141;
      }

      if ((v86 & 0x100000000) == 0 || !v88)
      {
        break;
      }

      v98 = v97;
      v99 = v97 == 0;
      if ((v88[1].i8[0] & 4) == 0)
      {
        goto LABEL_139;
      }

LABEL_119:
      v209 = v86 & 0xFFFFFFFFFFLL;
      if (v99)
      {
        goto LABEL_140;
      }

      if ((v97 & 0x80000000) != 0)
      {
        goto LABEL_311;
      }

      WTF::tryFastCompactMalloc((v98 + 20));
      v61 = v232;
      if (!v232)
      {
        goto LABEL_311;
      }

      v211 = v83;
      v86 = v232[1].u64 + 4;
      v232->i32[0] = 2;
      HIDWORD(v61->isa) = v97;
      v61->info = &v61->data + 4;
      LODWORD(v61->data) = 4;
      v234 = v87;
      WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v234, &v61->data + 4);
      v100 = v234;
      if (v234)
      {
        v100 = *(v234 + 1);
        if (v100 > v97)
        {
          continue;
        }
      }

      v101 = v98 - v100;
      v102 = v86 + v100;
      *(v102 + 4) = 15717;
      *v102 = 1953067814;
      if (v101 > 5)
      {
        v103 = v101 - 6;
        v83 = (v102 + 6);
        v232 = v84;
        v233 = v209;
        WTF::StringView::getCharacters<unsigned char>(&v232, (v102 + 6));
        v104 = v103 - v233;
        if (v103 >= v233)
        {
          v105 = v83 + v233;
          *v105 = 1030514726;
          if (v104 > 3)
          {
            v235[0] = v88;
            WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(v235, v105 + 4);
            goto LABEL_253;
          }
        }
      }
    }

    v98 = v97;
    v99 = v97 == 0;
    if ((v86 & 0x100000000) != 0)
    {
      goto LABEL_119;
    }

LABEL_139:
    if (v99)
    {
LABEL_140:
      v61 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
      goto LABEL_254;
    }

LABEL_141:
    if (v97 > 0x7FFFFFEF)
    {
      goto LABEL_311;
    }

    WTF::tryFastCompactMalloc((2 * v98 + 20));
    v61 = v232;
    if (!v232)
    {
      goto LABEL_311;
    }

    v211 = v83;
    v83 = (v232[1].i64 + 4);
    v232->i32[0] = 2;
    HIDWORD(v61->isa) = v97;
    v61->info = &v61->data + 4;
    LODWORD(v61->data) = 0;
    v235[0] = v87;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(v235, &v61->data + 4);
    v113 = v235[0];
    if (v235[0])
    {
      v113 = *(v235[0] + 4);
      if (v113 > v97)
      {
        continue;
      }
    }

    v114 = 0;
    v115 = v83 + 2 * v113;
    v116 = "&site=";
    do
    {
      v117 = *v116++;
      *&v115[v114] = v117;
      v114 += 2;
    }

    while (v114 != 12);
    v118 = v98 - v113;
    if (v118 > 5)
    {
      v119 = v115 + 12;
      v120 = v118 - 6;
      if ((v86 & 0x100000000) != 0)
      {
        if (v86 < 0x40)
        {
          v121 = v115 + 12;
        }

        else
        {
          v121 = &v119[2 * (v86 & 0x7FFFFFC0)];
          v122 = 0uLL;
          v123 = v119;
          do
          {
            v236.val[0] = *v84;
            v124 = v84[1];
            v237.val[0] = v84[2];
            v125 = v84[3];
            v84 += 4;
            v126 = v125;
            v237.val[1] = 0uLL;
            v238.val[0] = v124;
            v236.val[1] = 0uLL;
            v127 = v123;
            vst2q_s8(v127, v236);
            v127 += 32;
            v238.val[1] = 0uLL;
            vst2q_s8(v127, v238);
            v128 = v123 + 64;
            vst2q_s8(v128, v237);
            v129 = v123 + 96;
            vst2q_s8(v129, *(&v122 - 1));
            v123 += 128;
          }

          while (v123 != v121);
        }

        while (v121 != &v119[2 * (v86 & 0x7FFFFFFF)])
        {
          v179 = v84->u8[0];
          v84 = (v84 + 1);
          *v121 = v179;
          v121 += 2;
        }
      }

      else if (v86)
      {
        if (v86 == 1)
        {
          *v119 = v84->i16[0];
        }

        else
        {
          memcpy(v115 + 12, v84, 2 * (v86 & 0x7FFFFFFF));
        }
      }

      if (v120 >= (v86 & 0x7FFFFFFF))
      {
        v180 = &v119[2 * (v86 & 0x7FFFFFFF)];
        *v180 = 0x3D006C00680026;
        if (v120 - (v86 & 0x7FFFFFFF) > 3)
        {
          break;
        }
      }
    }
  }

  v232 = v88;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v232, v180 + 8);
LABEL_253:
  v83 = v211;
LABEL_254:
  v227 = v61;
  v165 = v216;
  v181 = MEMORY[0x19EB01E00](&v229, v228, &v227, 0);
  v4 = p_isa;
  WTF::URL::createCFURL(&v224, v181);
  v184 = v229;
  v229 = 0;
  if (v184 && atomic_fetch_add_explicit(v184, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v184, v182);
  }

  v185 = v227;
  v227 = 0;
  if (v185 && atomic_fetch_add_explicit(v185, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v185, v182);
  }

  v186 = v225;
  v225 = 0;
  if (v186 && atomic_fetch_add_explicit(v186, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v186, v182);
  }

  v187 = v226;
  v226 = 0;
  if (v187 && atomic_fetch_add_explicit(v187, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v187, v182);
  }

  v188 = v228[0];
  v228[0] = 0;
  if (v188 && atomic_fetch_add_explicit(v188, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v188, v182);
  }

  WebKit::addLinkAndReplace(v52, v214, v83, v224, v183);
  v189 = v224;
  v224 = 0;
  if (v189)
  {
  }

  v190 = objc_alloc(MEMORY[0x1E696AD40]);
  WebCore::copyLocalizedString(&v229, @"If you understand the risks involved, you can %visit-this-unsafe-site-link%.", v191);
  v192 = v229;
  v229 = 0;
  if (v192)
  {
    CFAutorelease(v192);
    v193 = v229;
    v229 = 0;
    if (v193)
    {
      CFRelease(v193);
    }
  }

  v194 = [v190 initWithString:v192];
  WebCore::copyLocalizedString(&v229, @"visit this unsafe website", v195);
  v196 = v229;
  v229 = 0;
  if (v196)
  {
    CFAutorelease(v196);
    v197 = v229;
    v229 = 0;
    if (v197)
    {
      CFRelease(v197);
    }
  }

  if (v212)
  {
    v198 = @"WKConfirmMalwareSentinel";
  }

  else
  {
    v198 = @"WKVisitUnsafeWebsiteSentinel";
  }

  v199 = [MEMORY[0x1E695DFF8] URLWithString:v198];
  WebKit::addLinkAndReplace(v194, @"%visit-this-unsafe-site-link%", &v196->isa, v199, v200);
  v201 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:@"\n\n"];
  [v52 appendAttributedString:v201];
  if (v201)
  {
  }

  [v52 appendAttributedString:v194];
  if (v52)
  {
    v202 = v52;
  }

  if (v194)
  {
  }

LABEL_286:
  if (v165)
  {
  }

  *(a1 + 72) = v52;
  if (v52)
  {
    v203 = v52;
  }

  if (!v218)
  {
    v204 = v217;
    v217 = 0;
    if (v204)
    {
    }
  }

LABEL_293:
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  v205 = *(v4 + 8);
  if (v205 != 255)
  {
    if (!*(v4 + 8))
    {
      v206 = *v4;
      *v4 = 0;
      *(a1 + 80) = v206;
    }

    *(a1 + 88) = v205;
  }

  return a1;
}

void sub_19DC027B0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, WTF::StringImpl *a26, WTF::StringImpl *a27, WTF::StringImpl *a28, WTF::StringImpl *a29, WTF::StringImpl *a30)
{
  v33 = *(v31 - 160);
  *(v31 - 160) = 0;
  if (v33)
  {
    CFRelease(v33);
  }

  if (!a20 && a19)
  {
  }

  v34 = *(v30 + 56);
  *(v30 + 56) = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, a2);
  }

  v35 = *(v30 + 48);
  *(v30 + 48) = 0;
  if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v35, a2);
  }

  v36 = *(v30 + 8);
  *(v30 + 8) = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, a2);
  }

  if (*v30 == 1)
  {
    _Unwind_Resume(exception_object);
  }

  __break(0xC471u);
}

uint64_t WebKit::BrowsingWarning::BrowsingWarning(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = 1;
  WTF::URL::URL(a1 + 8, a2);
  v11 = *a3;
  *a3 = 0;
  *(a1 + 48) = v11;
  v12 = *a4;
  *a4 = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = 0;
  v13 = *a5;
  *a5 = 0;
  *(a1 + 72) = v13;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  v14 = *(a6 + 8);
  if (v14 != 255)
  {
    if (!*(a6 + 8))
    {
      v15 = *a6;
      *a6 = 0;
      *(a1 + 80) = v15;
    }

    *(a1 + 88) = v14;
  }

  return a1;
}

uint64_t WebKit::shouldAllowAutoFillForCellularIdentifiers(WebKit *this, const WTF::URL *a2)
{
  v2 = this;
  v46 = *MEMORY[0x1E69E9840];
  if (WebKit::isFullWebBrowserOrRunningTest(this))
  {
    v3 = _MergedGlobals_47;
    _MergedGlobals_47 = 1;
    if (v3)
    {
      goto LABEL_64;
    }

    v4 = qword_1ED6413C8;
    if (!os_log_type_enabled(qword_1ED6413C8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    *buf = 0;
    v5 = "Skipped cellular AutoFill status check (app is a web browser)";
LABEL_63:
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
LABEL_64:
    LOBYTE(v12) = 0;
    return v12 & 1;
  }

  if (HIBYTE(word_1EB01D401) == 1)
  {
    if (word_1EB01D401)
    {
      goto LABEL_7;
    }

LABEL_60:
    v35 = _MergedGlobals_47;
    _MergedGlobals_47 = 1;
    if (v35)
    {
      goto LABEL_64;
    }

    v4 = qword_1ED6413C8;
    if (!os_log_type_enabled(qword_1ED6413C8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    *buf = 0;
    v5 = "Skipped cellular AutoFill status check (app does not have cellular plan entitlement)";
    goto LABEL_63;
  }

  v39 = v2;
  v27 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (!v27)
  {
    word_1EB01D401 = 256;
    goto LABEL_60;
  }

  v28 = v27;
  v29 = SecTaskCopyValueForEntitlement(v27, @"com.apple.CommCenter.fine-grained", 0);
  v30 = WTF::dynamic_cf_cast<__CFArray const*>(v29);
  v43 = 0u;
  v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  v31 = [v30 countByEnumeratingWithState:v41 objects:buf count:16];
  if (v31)
  {
    v32 = *v42;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v30);
        }

        if ([WTF::dynamic_objc_cast<NSString>(*(v41[1] + i)) isEqualToString:@"public-cellular-plan"])
        {
          v34 = 1;
          goto LABEL_55;
        }
      }

      v31 = [v30 countByEnumeratingWithState:v41 objects:buf count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0;
LABEL_55:
  if (v29)
  {
    CFRelease(v29);
  }

  CFRelease(v28);
  LOBYTE(word_1EB01D401) = v34;
  HIBYTE(word_1EB01D401) = 1;
  v2 = v39;
  if ((v34 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_7:
  WTF::URL::host(v2);
  if ((v6 & 0x100000000) != 0)
  {
    WTF::String::String();
  }

  else
  {
    WTF::String::String();
  }

  if (!v41[0] || !*(v41[0] + 1))
  {
    v13 = _MergedGlobals_47;
    _MergedGlobals_47 = 1;
    if ((v13 & 1) == 0)
    {
      v14 = qword_1ED6413C8;
      if (os_log_type_enabled(qword_1ED6413C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19D52D000, v14, OS_LOG_TYPE_DEFAULT, "Skipped cellular AutoFill status check (no registrable domain)", buf, 2u);
      }
    }

    goto LABEL_30;
  }

  if (byte_1EB01D403 == 1)
  {
    v10 = qword_1EB01D408;
  }

  else
  {
    gotLoadHelper_x8__OBJC_CLASS___CoreTelephonyClient(v9);
    v38 = objc_alloc(*(v37 + 160));
    v10 = [v38 initWithQueue:MEMORY[0x1E69E96A0]];
    qword_1EB01D408 = v10;
    byte_1EB01D403 = 1;
  }

  if (byte_1EB01D404 == 1)
  {
    v11 = qword_1EB01D410;
  }

  else
  {
    v11 = 0;
    qword_1EB01D410 = 0;
    byte_1EB01D404 = 1;
  }

  if (!WTF::equal(v11, v41[0], v8))
  {
    v40 = 0;
    v15 = v41[0];
    if (v41[0])
    {
      atomic_fetch_add_explicit(v41[0], 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](buf, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      *buf = &stru_1F1147748;
      v17 = &stru_1F1147748;
    }

    v12 = [v10 isAutofilleSIMIdAllowedForDomain:*buf error:{&v40, v39}];
    v18 = *buf;
    *buf = 0;
    if (v18)
    {
    }

    v19 = v40;
    v20 = _MergedGlobals_47;
    _MergedGlobals_47 = 1;
    if (v40)
    {
      if ((v20 & 1) == 0)
      {
        v21 = qword_1ED6413C8;
        if (os_log_type_enabled(qword_1ED6413C8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v19;
          _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "Failed to query cellular AutoFill status: %{public}@", buf, 0xCu);
        }

LABEL_30:
        LOBYTE(v12) = 0;
        goto LABEL_40;
      }
    }

    else if ((v20 & 1) == 0)
    {
      v22 = qword_1ED6413C8;
      if (os_log_type_enabled(qword_1ED6413C8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = @"NO";
        if (v12)
        {
          v23 = @"YES";
        }

        *buf = 138543362;
        *&buf[4] = v23;
        _os_log_impl(&dword_19D52D000, v22, OS_LOG_TYPE_DEFAULT, "Is cellular AutoFill allowed for current host? %{public}@", buf, 0xCu);
      }
    }

    v24 = v41[0];
    v41[0] = 0;
    v25 = qword_1EB01D410;
    qword_1EB01D410 = v24;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v7);
    }

    byte_1EB01D405 = v12;
    goto LABEL_40;
  }

  LOBYTE(v12) = byte_1EB01D405;
LABEL_40:
  v26 = v41[0];
  v41[0] = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v7);
  }

  return v12 & 1;
}

void sub_19DC03430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v20)
  {
    CFRelease(v20);
  }

  CFRelease(v19);
  _Unwind_Resume(a1);
}

void WebKit::DiagnosticLoggingClient::logDiagnosticMessage(id *this, WebKit::WebPageProxy *a2, atomic_uint **a3, atomic_uint **a4)
{
  if (this[3])
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    v8 = objc_loadWeakRetained(this + 1);
    v9 = *a3;
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_1F1147748;
      v11 = &stru_1F1147748;
    }

    v12 = v19;
    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v18, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v18 = &stru_1F1147748;
      v15 = &stru_1F1147748;
    }

    [WeakRetained _webView:v8 logDiagnosticMessage:v12 description:{v18, v18}];
    v16 = v18;
    v18 = 0;
    if (v16)
    {
    }

    v17 = v19;
    v19 = 0;
    if (v17)
    {
    }

    if (v8)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC03608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::DiagnosticLoggingClient::logDiagnosticMessageWithResult(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, int a5)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v10 = objc_loadWeakRetained((a1 + 8));
    v11 = *a3;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v22, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v22 = &stru_1F1147748;
      v13 = &stru_1F1147748;
    }

    v14 = v22;
    v15 = *a4;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v21, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v21 = &stru_1F1147748;
      v17 = &stru_1F1147748;
    }

    if (a5 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = a5 == 1;
    }

    [WeakRetained _webView:v10 logDiagnosticMessageWithResult:v14 description:v21 result:{v18, v21}];
    v19 = v21;
    v21 = 0;
    if (v19)
    {
    }

    v20 = v22;
    v22 = 0;
    if (v20)
    {
    }

    if (v10)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC037F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::DiagnosticLoggingClient::logDiagnosticMessageWithValue(id *this, WebKit::WebPageProxy *a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
{
  if ((this[3] & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    v10 = objc_loadWeakRetained(this + 1);
    v11 = *a3;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v27, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v27 = &stru_1F1147748;
      v13 = &stru_1F1147748;
    }

    v14 = v27;
    v15 = *a4;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v26, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v26 = &stru_1F1147748;
      v17 = &stru_1F1147748;
    }

    v18 = v26;
    v19 = *a5;
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v25, v19);
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v20);
      }
    }

    else
    {
      v25 = &stru_1F1147748;
      v21 = &stru_1F1147748;
    }

    [WeakRetained _webView:v10 logDiagnosticMessageWithValue:v14 description:v18 value:v25];
    v22 = v25;
    v25 = 0;
    if (v22)
    {
    }

    v23 = v26;
    v26 = 0;
    if (v23)
    {
    }

    v24 = v27;
    v27 = 0;
    if (v24)
    {
    }

    if (v10)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC03A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  if (a11)
  {
  }

  if (a12)
  {
  }

  if (v13)
  {
  }

  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::DiagnosticLoggingClient::logDiagnosticMessageWithEnhancedPrivacy(id *this, WebKit::WebPageProxy *a2, atomic_uint **a3, atomic_uint **a4)
{
  if ((this[3] & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    v8 = objc_loadWeakRetained(this + 1);
    v9 = *a3;
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v19, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v19 = &stru_1F1147748;
      v11 = &stru_1F1147748;
    }

    v12 = v19;
    v13 = *a4;
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v18, v13);
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v14);
      }
    }

    else
    {
      v18 = &stru_1F1147748;
      v15 = &stru_1F1147748;
    }

    [WeakRetained _webView:v8 logDiagnosticMessageWithEnhancedPrivacy:v12 description:{v18, v18}];
    v16 = v18;
    v18 = 0;
    if (v16)
    {
    }

    v17 = v19;
    v19 = 0;
    if (v17)
    {
    }

    if (v8)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC03C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::DiagnosticLoggingClient::logDiagnosticMessageWithValueDictionary(uint64_t a1, uint64_t a2, atomic_uint **a3, atomic_uint **a4, uint64_t a5)
{
  if ((*(a1 + 24) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v10 = objc_loadWeakRetained((a1 + 8));
    v11 = *a3;
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v21, v11);
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v12);
      }
    }

    else
    {
      v21 = &stru_1F1147748;
      v13 = &stru_1F1147748;
    }

    v14 = v21;
    v15 = *a4;
    if (v15)
    {
      atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v20, v15);
      if (atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v16);
      }
    }

    else
    {
      v20 = &stru_1F1147748;
      v17 = &stru_1F1147748;
    }

    [WeakRetained _webView:v10 logDiagnosticMessage:v14 description:v20 valueDictionary:{*(*a5 + 8), v20}];
    v18 = v20;
    v20 = 0;
    if (v18)
    {
    }

    v19 = v21;
    v21 = 0;
    if (v19)
    {
    }

    if (v10)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC03DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::DiagnosticLoggingClient::logDiagnosticMessageWithDomain(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  if ((*(a1 + 24) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v6 = objc_loadWeakRetained((a1 + 8));
    v7 = *a3;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v11, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v11 = &stru_1F1147748;
      v9 = &stru_1F1147748;
    }

    [WeakRetained _webView:v6 logDiagnosticMessageWithDomain:v11 domain:0];
    v10 = v11;
    v11 = 0;
    if (v10)
    {
    }

    if (v6)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC03F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::ExtensionCapabilityGranter::create@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WebKit::ExtensionCapabilityGranter::operator new(0x18, a2);
  result = WebKit::ExtensionCapabilityGranter::ExtensionCapabilityGranter(v5, a1);
  *a3 = v5;
  return result;
}

uint64_t WebKit::ExtensionCapabilityGranter::operator new(WebKit::ExtensionCapabilityGranter *this, void *a2)
{
  if (this == 24 && WebKit::ExtensionCapabilityGranter::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ExtensionCapabilityGranter::s_heapRef, a2);
  }

  else
  {
    return WebKit::ExtensionCapabilityGranter::operatorNewSlow(this);
  }
}

uint64_t WebKit::ExtensionCapabilityGranter::ExtensionCapabilityGranter(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  if (!*(a2 + 8))
  {
    v5 = WTF::fastCompactMalloc(0x10);
    *v5 = 1;
    *(v5 + 8) = a2;
    v6 = *(a2 + 8);
    *(a2 + 8) = v5;
    if (v6)
    {
      if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v6);
        WTF::fastFree(v6, v4);
      }
    }
  }

  v7 = *(a2 + 8);
  atomic_fetch_add(v7, 1u);
  *(a1 + 16) = v7;
  return a1;
}

WTF::StringImpl *WebKit::ExtensionCapabilityGranter::grant(WebKit::ExtensionCapabilityGranter *this, const WebKit::ExtensionCapability *a2)
{
  v130[2] = *MEMORY[0x1E69E9840];
  (*(*a2 + 16))(&v99, a2);
  if (v99 && *(v99 + 1))
  {
    v4 = *(*(this + 2) + 8);
    if (!v4)
    {
      __break(0xC471u);
      goto LABEL_195;
    }

    (*(*v4 + 32))(&v98);
    if (v98)
    {
      v6 = WebKit::prepareGrant(&v99, v98, v5);
    }

    else
    {
      v6 = 0;
    }

    v11 = *(*(this + 2) + 8);
    if (!v11)
    {
      __break(0xC471u);
      JUMPOUT(0x19DC04FB0);
    }

    v12 = (*(*v11 + 40))(&v97);
    v8 = v97;
    if (v97)
    {
      v12 = WebKit::prepareGrant(&v99, v97, v13);
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (((v6 | v14) & 1) == 0)
    {
      goto LABEL_165;
    }

    if (v14)
    {
      v15 = v97;
    }

    else
    {
      v15 = 0;
    }

    if (v98)
    {
      v16 = v6;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1 && (v17 = *(v98 + 10)) != 0)
    {
      v12 = std::__optional_copy_base<WebKit::ExtensionProcess,false>::__optional_copy_base[abi:sn200100](&v105, v17 + 40);
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    else
    {
      LOBYTE(v105) = 0;
      v106 = 0;
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    v18 = *(v15 + 10);
    if (v18)
    {
      v12 = std::__optional_copy_base<WebKit::ExtensionProcess,false>::__optional_copy_base[abi:sn200100](&v102, v18 + 40);
      goto LABEL_33;
    }

LABEL_32:
    LOBYTE(v102) = 0;
    v104 = 0;
LABEL_33:
    v19 = WebKit::granterQueue(v12);
    v20 = *(a2 + 1);
    if (v20)
    {
      v21 = v20;
    }

    v22 = v106;
    if (v106 == 1)
    {
      v23 = BYTE8(v105);
      if (BYTE8(v105) != 255)
      {
        v93 = v105;
        *&v105 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v23 = 0;
    }

    v93 = 0;
LABEL_40:
    v24 = v104;
    if (v104 == 1)
    {
      v25 = v103;
      if (v103 == 255)
      {
        v92 = 0;
      }

      else
      {
        v92 = v102;
        v102 = 0;
      }
    }

    else
    {
      v92 = 0;
      v25 = 0;
    }

    v100[0] = 0;
    v100[1] = 0;
    *&v101 = "grantCapabilityInternal";
    *(&v101 + 1) = 0;
    v26 = WTF::fastMalloc(0x88);
    WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::NativePromise(v26, v100);
    v107 = v26;
    v108 = *v100;
    v109 = v101;
    atomic_fetch_add(v26 + 2, 1u);
    WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::setDispatchMode(v26, 0, v100);
    if (atomic_fetch_add(v26 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v26 + 2);
      (*(*v26 + 16))(v26);
    }

    v27 = v107;
    if (v107)
    {
      atomic_fetch_add(v107 + 2, 1u);
      v28 = v107;
    }

    else
    {
      v28 = 0;
    }

    v107 = 0;
    *&buf[8] = v108;
    v120 = v109;
    *buf = v28;
    v121 = v20;
    LOBYTE(v122) = 0;
    LOBYTE(v124) = 0;
    if (v22)
    {
      v123[0] = -1;
      if (v23 != 255)
      {
        v122 = v93;
        v123[0] = v23;
        v93 = 0;
      }

      LOBYTE(v124) = 1;
    }

    LOBYTE(v125) = 0;
    v127[0] = 0;
    if (v24)
    {
      LOBYTE(v126) = -1;
      if (v25 != 255)
      {
        v125 = v92;
        LOBYTE(v126) = v25;
        v92 = 0;
      }

      v127[0] = 1;
    }

    v29 = WTF::fastMalloc(0x68);
    *v29 = &unk_1F10FEE18;
    *(v29 + 8) = *buf;
    v30 = v120;
    *(v29 + 16) = *&buf[8];
    *(v29 + 32) = v30;
    v31 = v121;
    *buf = 0;
    v121 = 0;
    *(v29 + 48) = v31;
    *(v29 + 56) = 0;
    *(v29 + 72) = 0;
    if (v124 == 1)
    {
      *(v29 + 64) = -1;
      if (v123[0] != 255)
      {
        v32 = v122;
        v122 = 0;
        *(v29 + 56) = v32;
        *(v29 + 64) = v123[0];
      }

      *(v29 + 72) = 1;
    }

    *(v29 + 80) = 0;
    *(v29 + 96) = 0;
    if (v127[0] == 1)
    {
      *(v29 + 88) = -1;
      if (v126 != 255)
      {
        v33 = v125;
        v125 = 0;
        *(v29 + 80) = v33;
        *(v29 + 88) = v126;
      }

      *(v29 + 96) = 1;
    }

    v118 = v29;
    (*(*(v19 + 24) + 16))(v19 + 24, &v118);
    v34 = v118;
    v118 = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    if (v127[0] == 1)
    {
      if (v126 != 255)
      {
        v88 = v125;
        v125 = 0;
        if (v88)
        {
        }
      }

      LOBYTE(v126) = -1;
    }

    if (v124 == 1)
    {
      if (v123[0] != 255)
      {
        v89 = v122;
        v122 = 0;
        if (v89)
        {
        }
      }

      v123[0] = -1;
    }

    v35 = v121;
    v121 = 0;
    if (v35)
    {
    }

    WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(buf);
    v36 = WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(&v107);
    if (v25 != 255 && v24 && v92)
    {
    }

    if (v23 != 255 && v22 && v93)
    {
    }

    if (v104 == 1 && v103 != 255)
    {
      v90 = v102;
      v102 = 0;
      if (v90)
      {
      }
    }

    if (v106 == 1 && BYTE8(v105) != 255)
    {
      v91 = v105;
      *&v105 = 0;
      if (v91)
      {
      }
    }

    v37 = WTF::RunLoop::mainSingleton(v36);
    v38 = *this;
    if (!*this)
    {
      v38 = WTF::fastCompactMalloc(0x10);
      *v38 = 1;
      *(v38 + 8) = this;
      v40 = *this;
      *this = v38;
      if (v40)
      {
        if (atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v40);
          WTF::fastFree(v40, v39);
        }

        v38 = *this;
      }
    }

    atomic_fetch_add(v38, 1u);
    v41 = v99;
    if (v99)
    {
      atomic_fetch_add_explicit(v99, 2u, memory_order_relaxed);
    }

    if (v14)
    {
      v42 = 256;
    }

    else
    {
      v42 = 0;
    }

    v105 = 0uLL;
    v43 = WTF::fastMalloc(0x50);
    v44 = v42 | v6;
    v45 = (v37 + 8);
    while (1)
    {
      v46 = *v45;
      if ((*v45 & 1) == 0)
      {
        break;
      }

      v47 = *v45;
      atomic_compare_exchange_strong_explicit(v45, &v47, v46 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v47 == v46)
      {
        goto LABEL_94;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v45);
LABEL_94:
    v48 = WTF::fastMalloc(0x28);
    v49 = 0;
    *v48 = &unk_1F10FEE88;
    *(v48 + 8) = this;
    *(v48 + 16) = v38;
    *(v48 + 24) = v41;
    *(v48 + 32) = v44;
    *(v43 + 8) = 1;
    *(v43 + 16) = v37;
    *(v43 + 24) = v105;
    *(v43 + 40) = "grant";
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *v43 = &unk_1F10FEEB0;
    *(v43 + 64) = 0;
    *(v43 + 72) = v48;
    atomic_fetch_add(v27 + 2, 1u);
    v94 = v105;
    v95 = "grant";
    v96 = 0;
    v110 = v43;
    v50 = (v27 + 48);
    v100[0] = (v27 + 48);
    LOBYTE(v100[1]) = 1;
    atomic_compare_exchange_strong_explicit(v27 + 48, &v49, 1u, memory_order_acquire, memory_order_acquire);
    if (v49)
    {
      v50 = MEMORY[0x19EB01E30]();
    }

    *(v27 + 128) = 1;
    v51 = WTF::NativePromiseBase::logChannel(v50);
    v52 = v51;
    if (!*v51 || v51[16] < 4u)
    {
      goto LABEL_148;
    }

    WTF::Logger::LogSiteIdentifier::toString(&v118, &v94);
    WTF::String::String(&v117, " invoking maybeSettle() [");
    WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v116, v27);
    WTF::String::String(&v115, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v113, " isNothing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v111, "]");
    WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v118, &v117, &v116, &v115, &v114, &v113, &v112, &v111, &v102);
    if (v102)
    {
      v54 = v111;
      v111 = 0;
      if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v54, v53);
      }

      v55 = v112;
      v112 = 0;
      if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, v53);
      }

      v56 = v113;
      v113 = 0;
      if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, v53);
      }

      v57 = v114;
      v114 = 0;
      if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v57, v53);
      }

      v58 = v115;
      v115 = 0;
      if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v58, v53);
      }

      v59 = v116;
      v116 = 0;
      if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v59, v53);
      }

      v60 = v117;
      v117 = 0;
      if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, v53);
      }

      v61 = v118;
      v118 = 0;
      if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v61, v53);
      }

      v62 = *(v52 + 4);
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      if (v63)
      {
        WTF::String::utf8();
        v64 = v107 ? v107 + 16 : 0;
        *buf = 136446210;
        *&buf[4] = v64;
        _os_log_impl(&dword_19D52D000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        v63 = v107;
        v107 = 0;
        if (v63)
        {
          if (*v63 == 1)
          {
            v63 = WTF::fastFree(v63, v8);
          }

          else
          {
            --*v63;
          }
        }
      }

      if (*v52 && v52[16] >= 4u)
      {
        v65 = MEMORY[0x1E696EBC0];
        while (1)
        {
          v66 = *v65;
          if (v66)
          {
            break;
          }

          v67 = *v65;
          atomic_compare_exchange_strong_explicit(v65, &v67, v66 | 1, memory_order_acquire, memory_order_acquire);
          if (v67 == v66)
          {
            v68 = WTF::Logger::observers(v63);
            v69 = *(v68 + 12);
            if (v69)
            {
              v70 = *v68;
              v71 = *v68 + 8 * v69;
              do
              {
                v72 = *v70;
                *buf = 0;
                WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v94);
                *&buf[16] = 0;
                WTF::String::String(&v120, " invoking maybeSettle() [");
                DWORD2(v120) = 0;
                WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v121, v27);
                LODWORD(v122) = 0;
                WTF::String::String(v123, " callback:");
                v124 = 0;
                WTF::LogArgument<void const*>::toString();
                v126 = 0;
                WTF::String::String(v127, " isNothing:");
                v128 = 0;
                WTF::StringImpl::createWithoutCopyingNonEmpty();
                v129 = 0;
                WTF::String::String(v130, "]");
                WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v107, buf, 8uLL);
                (*(*v72 + 16))(v72, v52, 4, &v107);
                WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v107, v73);
                for (i = 120; i != -8; i -= 16)
                {
                  v75 = *&buf[i];
                  *&buf[i] = 0;
                  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v75, v8);
                  }
                }

                ++v70;
              }

              while (v70 != v71);
            }

            v76 = 1;
            atomic_compare_exchange_strong_explicit(v65, &v76, 0, memory_order_release, memory_order_relaxed);
            if (v76 != 1)
            {
              WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
            }

            break;
          }
        }
      }

      v77 = v102;
      v102 = 0;
      if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v8);
      }

LABEL_148:
      if (*(v27 + 80))
      {
        WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(v110, v27, v100);
      }

      else
      {
        v78 = *(v27 + 25);
        if (v78 == *(v27 + 24))
        {
          v79 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v27 + 88, v78 + 1, &v110);
          v78 = *(v27 + 25);
          v80 = (*(v27 + 11) + 8 * v78);
        }

        else
        {
          v80 = (*(v27 + 11) + 8 * v78);
          v79 = &v110;
        }

        v81 = *v79;
        *v79 = 0;
        *v80 = v81;
        *(v27 + 25) = v78 + 1;
      }

      v82 = LOBYTE(v100[1]);
      if (LOBYTE(v100[1]) == 1)
      {
        v83 = v100[0];
        atomic_compare_exchange_strong_explicit(v100[0], &v82, 0, memory_order_release, memory_order_relaxed);
        if (v82 != 1)
        {
          WTF::Lock::unlockSlow(v83);
        }
      }

      v84 = v110;
      v110 = 0;
      if (v84 && atomic_fetch_add(v84 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v84 + 2);
        (*(*v84 + 8))(v84);
      }

      if (v27 && atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27 + 2);
        (*(*v27 + 16))(v27);
      }

      if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v27 + 2);
        (*(*v27 + 16))(v27);
      }

LABEL_165:
      v85 = v97;
      v97 = 0;
      if (v85)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v85 + 4);
      }

      v86 = v98;
      v98 = 0;
      if (v86)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v86 + 4);
      }

      goto LABEL_169;
    }

    __break(0xC471u);
LABEL_195:
    JUMPOUT(0x19DC04F90);
  }

  v7 = qword_1ED641008;
  if (os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR))
  {
    WTF::String::utf8();
    v9 = v107 ? v107 + 16 : 0;
    *buf = 136446466;
    *&buf[4] = "grant";
    *&buf[12] = 2082;
    *&buf[14] = v9;
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "%{public}s[envID=%{public}s] environmentIdentifier must not be empty", buf, 0x16u);
    v10 = v107;
    v107 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::fastFree(v10, v8);
      }

      else
      {
        --*v10;
      }
    }
  }

LABEL_169:
  result = v99;
  v99 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

void sub_19DC04FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int *a20, unsigned int *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF::StringImpl *a28, WTF::Lock *a29, char a30, uint64_t a31, uint64_t a32, WTF::StringImpl *a33, char a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, unsigned int *a50, WTF::StringImpl *a51, WTF::StringImpl *a52, WTF::StringImpl *a53, WTF::StringImpl *a54, WTF::StringImpl *a55, WTF::StringImpl *a56)
{
  if (a50 && atomic_fetch_add(a50 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a50 + 2);
    (*(*a50 + 8))(a50);
  }

  if (a21 && atomic_fetch_add(a21 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a21 + 2);
    (*(*a21 + 8))(a21);
  }

  if (a20)
  {
    if (atomic_fetch_add(a20 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a20 + 2);
      (*(*a20 + 16))(a20);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::prepareGrant(WTF::StringImpl **this, const WTF::String *a2, WebKit::AuxiliaryProcessProxy *a3)
{
  v3 = *this;
  if (!*this)
  {
    v37 = 0;
    v38 = 0;
    goto LABEL_63;
  }

  atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
  v5 = *this;
  v37 = v3;
  v38 = 0;
  v39 = &v37;
  if (v5 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC059E8);
  }

  if (!v5)
  {
LABEL_63:
    __break(0xC471u);
    JUMPOUT(0x19DC059C8);
  }

  v7 = *(a2 + 49);
  if (v7 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2 + 49), (v7 = *(a2 + 49)) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*this + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*this);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = (v7 + 24 * (v10 & v8));
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = (v7 + 24 * v13);
      goto LABEL_15;
    }

    if (!v15)
    {
      if (v11)
      {
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        --*(*(a2 + 49) - 16);
        v14 = v11;
      }

      WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WebKit::ExtensionCapabilityGrant>(WTF::String const&,WebKit::ExtensionCapabilityGrant &&)::{lambda(void)#1}>(v14, this, &v39);
      v16 = *(a2 + 49);
      if (v16)
      {
        v17 = *(v16 - 12) + 1;
      }

      else
      {
        v17 = 1;
      }

      *(v16 - 12) = v17;
      v21 = (*(v16 - 16) + v17);
      v22 = *(v16 - 4);
      if (v22 > 0x400)
      {
        if (v22 > 2 * v21)
        {
          goto LABEL_53;
        }
      }

      else if (3 * v22 > 4 * v21)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (WTF::equal(v15, *this, a3))
    {
      break;
    }

LABEL_15:
    v10 = i + v13;
  }

  v18 = v14[2];
  if (!v18 || ([v18 isValid] & 1) != 0)
  {
    v20 = 0;
    goto LABEL_54;
  }

  v39 = &v37;
  if (*this == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC05A08);
  }

  if (!*this)
  {
    goto LABEL_63;
  }

  v23 = *(a2 + 49);
  if (v23 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2 + 49), (v23 = *(a2 + 49)) != 0))
  {
    v24 = *(v23 - 8);
  }

  else
  {
    v24 = 0;
  }

  v25 = *(*this + 4);
  if (v25 < 0x100)
  {
    v26 = WTF::StringImpl::hashSlowCase(*this);
  }

  else
  {
    v26 = v25 >> 8;
  }

  v27 = 0;
  v28 = 1;
  while (2)
  {
    v29 = v26 & v24;
    v30 = (v23 + 24 * (v26 & v24));
    v31 = *v30;
    if (*v30 == -1)
    {
      v27 = (v23 + 24 * v29);
LABEL_40:
      v26 = v28 + v29;
      ++v28;
      continue;
    }

    break;
  }

  if (v31)
  {
    if (WTF::equal(v31, *this, v19))
    {
      WebKit::ExtensionCapabilityGrant::operator=((v30 + 1), &v37);
      goto LABEL_53;
    }

    goto LABEL_40;
  }

  if (v27)
  {
    *v27 = 0;
    v27[1] = 0;
    v27[2] = 0;
    --*(*(a2 + 49) - 16);
    v30 = v27;
  }

  WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WebKit::ExtensionCapabilityGrant>(WTF::String const&,WebKit::ExtensionCapabilityGrant &&)::{lambda(void)#1}>(v30, this, &v39);
  v32 = *(a2 + 49);
  if (v32)
  {
    v33 = *(v32 - 12) + 1;
  }

  else
  {
    v33 = 1;
  }

  *(v32 - 12) = v33;
  v34 = (*(v32 - 16) + v33);
  v35 = *(v32 - 4);
  if (v35 > 0x400)
  {
    if (v35 > 2 * v34)
    {
      goto LABEL_53;
    }

LABEL_52:
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2 + 49);
    goto LABEL_53;
  }

  if (3 * v35 <= 4 * v34)
  {
    goto LABEL_52;
  }

LABEL_53:
  v20 = 1;
LABEL_54:
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(&v37);
  return v20;
}

void sub_19DC05A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(va);
  _Unwind_Resume(a1);
}

uint64_t WebKit::ExtensionCapabilityGranter::revoke(WebKit::ExtensionCapabilityGranter *this, const WebKit::ExtensionCapability *a2)
{
  v40 = 2;
  v39 = WTF::fastMalloc(0x20);
  (*(*a2 + 16))(&v38, a2);
  v4 = *(*(this + 2) + 8);
  if (!v4)
  {
    __break(0xC471u);
    goto LABEL_23;
  }

  (**v4)(v4);
  v5 = *(*(this + 2) + 8);
  if (!v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC05D6CLL);
  }

  (*(*v5 + 32))(&v37);
  v7 = v37;
  if (v37)
  {
    v8 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v37 + 392), &v38, v6);
    WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v35, (v7 + 392), v8);
    v9 = HIDWORD(v40);
    if (HIDWORD(v40) == v40)
    {
      v10 = WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v39, HIDWORD(v40) + 1, &v35);
      v11 = (v39 + 16 * HIDWORD(v40));
      v12 = *v10;
      *v10 = 0;
      *v11 = v12;
      v13 = v10[1];
      v10[1] = 0;
      v11[1] = v13;
      v9 = HIDWORD(v40);
    }

    else
    {
      v14 = (v39 + 16 * HIDWORD(v40));
      v15 = v35;
      v35 = 0;
      *v14 = v15;
      v16 = v36;
      v36 = 0;
      v14[1] = v16;
    }

    HIDWORD(v40) = v9 + 1;
    WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(&v35);
    v17 = v37;
    v37 = 0;
    if (v17)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v17 + 16));
    }
  }

  v18 = *(*(this + 2) + 8);
  if (!v18)
  {
    __break(0xC471u);
LABEL_23:
    JUMPOUT(0x19DC05D4CLL);
  }

  (*(*v18 + 40))(&v37);
  v20 = v37;
  if (v37)
  {
    v21 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((v37 + 392), &v38, v19);
    WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v35, (v20 + 392), v21);
    v22 = HIDWORD(v40);
    if (HIDWORD(v40) == v40)
    {
      v23 = WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v39, HIDWORD(v40) + 1, &v35);
      v24 = (v39 + 16 * HIDWORD(v40));
      v25 = *v23;
      *v23 = 0;
      *v24 = v25;
      v26 = v23[1];
      v23[1] = 0;
      v24[1] = v26;
      v22 = HIDWORD(v40);
    }

    else
    {
      v27 = (v39 + 16 * HIDWORD(v40));
      v28 = v35;
      v35 = 0;
      *v27 = v28;
      v29 = v36;
      v36 = 0;
      v27[1] = v29;
    }

    HIDWORD(v40) = v22 + 1;
    WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(&v35);
    v30 = v37;
    v37 = 0;
    if (v30)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v30 + 16));
    }
  }

  v31 = (*(*v4 + 8))(v4);
  WebKit::ExtensionCapabilityGranter::invalidateGrants(v31, &v39);
  v33 = v38;
  v38 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v32);
  }

  return WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v32);
}

void sub_19DC05D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13)
{
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(&a9);
  v15 = a11;
  a11 = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16));
  }

  (*(*v13 + 8))(v13);
  v17 = a12;
  a12 = 0;
  if (v17)
  {
    if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }
  }

  WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a13, v16);
  _Unwind_Resume(a1);
}

uint64_t WebKit::ExtensionCapabilityGranter::invalidateGrants(WebKit *a1, _DWORD *a2)
{
  v3 = WebKit::granterQueue(a1);
  WTF::CrossThreadCopierBase<false,false,WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::copy(a2, &v10);
  v4 = WTF::fastMalloc(0x18);
  v5 = v10;
  v10 = 0;
  *v4 = &unk_1F10FF030;
  v4[1] = v5;
  v6 = v11;
  v11 = 0;
  v12 = v4;
  v4[2] = v6;
  (*(*v3 + 48))(v3, &v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v7);
}

void sub_19DC05F18(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  _Unwind_Resume(a1);
}

void WebKit::ExtensionCapabilityGranter::setMediaCapabilityActive(WebKit::ExtensionCapabilityGranter *this, WebKit::MediaCapability *a2, int a3)
{
  v107[2] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 28);
  if ((v5 - 1) < 2)
  {
    if (a3)
    {
      return;
    }

    v7 = 3;
    goto LABEL_11;
  }

  if (v5 == 3 || v5 == 0)
  {
    if ((a3 & 1) == 0)
    {
      return;
    }

    v7 = 1;
LABEL_11:
    *(a2 + 28) = v7;
  }

  v8 = qword_1ED641008;
  v9 = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    WebKit::MediaCapability::environmentIdentifier(a2, v77);
    WTF::String::utf8();
    if (v84)
    {
      v10 = v84 + 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = "deactivating";
    *buf = 136446722;
    *&buf[4] = "setMediaCapabilityActive";
    if (a3)
    {
      v11 = "activating";
    }

    *&buf[12] = 2082;
    *&buf[14] = v10;
    *&buf[22] = 2082;
    *&v100 = v11;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s[envID=%{public}s] %{public}s", buf, 0x20u);
    v13 = v84;
    v84 = 0;
    if (v13)
    {
      if (*v13 == 1)
      {
        WTF::fastFree(v13, v12);
      }

      else
      {
        --*v13;
      }
    }

    v9 = v77[0];
    v77[0] = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v9 = WTF::StringImpl::destroy(v9, v12);
    }
  }

  v14 = WebKit::granterQueue(v9);
  v15 = *(a2 + 1);
  if (v15)
  {
    v16 = v15;
  }

  v17 = *(a2 + 9);
  if (v17)
  {
    v18 = v17;
  }

  v77[0] = 0;
  v77[1] = 0;
  v78 = "setMediaCapabilityActive";
  v19 = WTF::fastMalloc(0x78);
  WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::NativePromise(v19, v77);
  v84 = v19;
  v85 = *v77;
  v86 = v78;
  atomic_fetch_add(v19 + 2, 1u);
  WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::setDispatchMode(v19, 0, v77);
  if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19 + 2);
    (*(*v19 + 16))(v19);
  }

  v20 = v84;
  if (v84)
  {
    atomic_fetch_add(v84 + 2, 1u);
    v21 = v84;
  }

  else
  {
    v21 = 0;
  }

  v84 = 0;
  *&buf[8] = v85;
  v100 = v86;
  *buf = v21;
  v101 = v15;
  v102 = v17;
  v103[0] = a3;
  v22 = WTF::fastMalloc(0x48);
  *v22 = &unk_1F10FEF38;
  *(v22 + 8) = v21;
  v23 = v100;
  *(v22 + 16) = *&buf[8];
  *(v22 + 32) = v23;
  *(v22 + 48) = v101;
  v24 = v102;
  *buf = 0;
  v101 = 0;
  v102 = 0;
  *(v22 + 56) = v24;
  *(v22 + 64) = v103[0];
  v88 = v22;
  (*(*(v14 + 24) + 16))(v14 + 24, &v88);
  v25 = v88;
  v88 = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = v102;
  v102 = 0;
  if (v26)
  {
  }

  v27 = v101;
  v101 = 0;
  if (v27)
  {
  }

  WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(buf);
  v28 = WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(&v84);
  v29 = WTF::RunLoop::mainSingleton(v28);
  v30 = *(a2 + 2);
  if (!v30)
  {
    v30 = WTF::fastCompactMalloc(0x10);
    *v30 = 1;
    *(v30 + 8) = a2;
    v32 = *(a2 + 2);
    *(a2 + 2) = v30;
    if (v32)
    {
      if (atomic_fetch_add(v32, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v32);
        WTF::fastFree(v32, v31);
      }

      v30 = *(a2 + 2);
    }
  }

  atomic_fetch_add(v30, 1u);
  v33 = WTF::fastMalloc(0x50);
  v34 = (v29 + 8);
  while (1)
  {
    v35 = *v34;
    if ((*v34 & 1) == 0)
    {
      break;
    }

    v36 = *v34;
    atomic_compare_exchange_strong_explicit(v34, &v36, v35 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v36 == v35)
    {
      goto LABEL_48;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v34);
LABEL_48:
  v37 = WTF::fastMalloc(0x18);
  v38 = 0;
  *v37 = &unk_1F10FEF88;
  *(v37 + 8) = v30;
  *(v37 + 16) = a3;
  *(v33 + 8) = 1;
  *(v33 + 16) = v29;
  *(v33 + 24) = 0uLL;
  *(v33 + 40) = "setMediaCapabilityActive";
  *(v33 + 48) = 0;
  *(v33 + 56) = 0;
  *v33 = &unk_1F10FEFB0;
  *(v33 + 64) = 0;
  *(v33 + 72) = v37;
  atomic_fetch_add(v20 + 2, 1u);
  v81 = 0uLL;
  v82 = "setMediaCapabilityActive";
  v83 = 0;
  v79 = v20;
  v80 = 0;
  v39 = (v20 + 48);
  v87 = v33;
  v88 = (v20 + 48);
  v89 = 1;
  atomic_compare_exchange_strong_explicit(v20 + 48, &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    v39 = MEMORY[0x19EB01E30]();
  }

  *(v20 + 112) = 1;
  v40 = WTF::NativePromiseBase::logChannel(v39);
  v41 = v40;
  if (*v40 && v40[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v97, &v81);
    WTF::String::String(&v96, " invoking maybeSettle() [");
    WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v95, v20);
    WTF::String::String(&v94, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v92, " isNothing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v90, "]");
    WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v97, &v96, &v95, &v94, &v93, &v92, &v91, &v90, &v98);
    if (!v98)
    {
      __break(0xC471u);
      return;
    }

    v43 = v90;
    v90 = 0;
    if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v43, v42);
    }

    v44 = v91;
    v91 = 0;
    if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v44, v42);
    }

    v45 = v92;
    v92 = 0;
    if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v45, v42);
    }

    v46 = v93;
    v93 = 0;
    if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v42);
    }

    v47 = v94;
    v94 = 0;
    if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v47, v42);
    }

    v48 = v95;
    v95 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v42);
    }

    v49 = v96;
    v96 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v42);
    }

    v50 = v97;
    v97 = 0;
    if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v50, v42);
    }

    v51 = *(v41 + 4);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v52)
    {
      WTF::String::utf8();
      v54 = v84 ? v84 + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v54;
      _os_log_impl(&dword_19D52D000, v51, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v52 = v84;
      v84 = 0;
      if (v52)
      {
        if (*v52 == 1)
        {
          v52 = WTF::fastFree(v52, v53);
        }

        else
        {
          --*v52;
        }
      }
    }

    if (*v41 && v41[16] >= 4u)
    {
      v55 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v56 = *v55;
        if (v56)
        {
          break;
        }

        v57 = *v55;
        atomic_compare_exchange_strong_explicit(v55, &v57, v56 | 1, memory_order_acquire, memory_order_acquire);
        if (v57 == v56)
        {
          v58 = WTF::Logger::observers(v52);
          v59 = *(v58 + 12);
          if (v59)
          {
            v60 = *v58;
            v61 = *v58 + 8 * v59;
            do
            {
              v62 = *v60;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v81);
              *&buf[16] = 0;
              WTF::String::String(&v100, " invoking maybeSettle() [");
              DWORD2(v100) = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v101, v20);
              LODWORD(v102) = 0;
              WTF::String::String(v103, " callback:");
              v104 = 0;
              WTF::LogArgument<void const*>::toString();
              v105 = 0;
              WTF::String::String(v106, " isNothing:");
              v106[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v106[6] = 0;
              WTF::String::String(v107, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v84, buf, 8uLL);
              (*(*v62 + 16))(v62, v41, 4, &v84);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v63);
              for (i = 120; i != -8; i -= 16)
              {
                v65 = *&buf[i];
                *&buf[i] = 0;
                if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v65, v53);
                }
              }

              ++v60;
            }

            while (v60 != v61);
          }

          v66 = 1;
          atomic_compare_exchange_strong_explicit(v55, &v66, 0, memory_order_release, memory_order_relaxed);
          if (v66 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v67 = v98;
    v98 = 0;
    if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v67, v53);
    }
  }

  if (*(v20 + 64))
  {
    WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(v87, v20, &v88);
  }

  else
  {
    v68 = *(v20 + 21);
    if (v68 == *(v20 + 20))
    {
      v69 = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v20 + 72, v68 + 1, &v87);
      v68 = *(v20 + 21);
      v70 = (*(v20 + 9) + 8 * v68);
    }

    else
    {
      v70 = (*(v20 + 9) + 8 * v68);
      v69 = &v87;
    }

    v71 = *v69;
    *v69 = 0;
    *v70 = v71;
    *(v20 + 21) = v68 + 1;
  }

  v72 = v89;
  if (v89 == 1)
  {
    v73 = v88;
    atomic_compare_exchange_strong_explicit(v88, &v72, 0, memory_order_release, memory_order_relaxed);
    if (v72 != 1)
    {
      WTF::Lock::unlockSlow(v73);
    }
  }

  v74 = v87;
  v87 = 0;
  if (v74 && atomic_fetch_add(v74 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v74 + 2);
    (*(*v74 + 8))(v74);
  }

  v75 = v80;
  v80 = 0;
  if (v75 && atomic_fetch_add(v75 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v75 + 2);
    (*(*v75 + 8))(v75);
  }

  v76 = v79;
  v79 = 0;
  if (v76 && atomic_fetch_add(v76 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v76 + 2);
    (*(*v76 + 16))(v76);
  }

  if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v20 + 2);
    (*(*v20 + 16))(v20);
  }
}

void sub_19DC06A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned int *a24, unsigned int *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int *a35, WTF::Lock *a36, char a37, WTF::StringImpl *a38, WTF::StringImpl *a39, WTF::StringImpl *a40, WTF::StringImpl *a41, WTF::StringImpl *a42, WTF::StringImpl *a43, WTF::StringImpl *a44)
{
  if (a35 && atomic_fetch_add(a35 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a35 + 2);
    (*(*a35 + 8))(a35);
  }

  if (a25 && atomic_fetch_add(a25 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a25 + 2);
    (*(*a25 + 8))(a25);
  }

  if (a24)
  {
    if (atomic_fetch_add(a24 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a24 + 2);
      (*(*a24 + 16))(a24);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::granterQueue(WebKit *this)
{
  {
    return WebKit::granterQueue(void)::queue;
  }

  WTF::WorkQueue::create();
  result = v2;
  WebKit::granterQueue(void)::queue = v2;
  return result;
}

uint64_t WebKit::FindClient::setDelegate(uint64_t a1, void *a2)
{
  objc_storeWeak((a1 + 16), a2);
  *(a1 + 24) = *(a1 + 24) & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xF7 | v5;
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xEF | v7;
  return result;
}

void WebKit::FindClient::didCountStringMatches(id *this, WebKit::WebPageProxy *a2, atomic_uint **a3, unsigned int a4)
{
  if (this[3])
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    v8 = objc_loadWeakRetained(this + 1);
    v9 = *a3;
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v13, v9);
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v10);
      }
    }

    else
    {
      v13 = &stru_1F1147748;
      v11 = &stru_1F1147748;
    }

    [WeakRetained _webView:v8 didCountMatches:a4 forString:v13];
    v12 = v13;
    v13 = 0;
    if (v12)
    {
    }

    if (v8)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC07218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FindClient::didFindString(uint64_t a1, uint64_t a2, atomic_uint **a3, uint64_t a4, unsigned int a5, int a6)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v11 = objc_loadWeakRetained((a1 + 8));
    v12 = *a3;
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v16, v12);
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v13);
      }
    }

    else
    {
      v16 = &stru_1F1147748;
      v14 = &stru_1F1147748;
    }

    [WeakRetained _webView:v11 didFindMatches:a5 forString:v16 withMatchIndex:a6];
    v15 = v16;
    v16 = 0;
    if (v15)
    {
    }

    if (v11)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC07358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FindClient::didFailToFindString(id *this, WebKit::WebPageProxy *a2, atomic_uint **a3)
{
  if ((this[3] & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    v6 = objc_loadWeakRetained(this + 1);
    v7 = *a3;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
      MEMORY[0x19EB00B70](&v11, v7);
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v8);
      }
    }

    else
    {
      v11 = &stru_1F1147748;
      v9 = &stru_1F1147748;
    }

    [WeakRetained _webView:v6 didFailToFindString:v11];
    v10 = v11;
    v11 = 0;
    if (v10)
    {
    }

    if (v6)
    {
    }

    if (WeakRetained)
    {
    }
  }
}

void sub_19DC07480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
  }

  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FindClient::didAddLayerForFindOverlay(id *this, WebKit::WebPageProxy *a2, CALayer *a3)
{
  if ((this[3] & 8) != 0)
  {
    Weak = objc_loadWeak(this + 2);
    WeakRetained = objc_loadWeakRetained(this + 1);
    [Weak _webView:? didAddLayerForFindOverlay:?];
    if (WeakRetained)
    {
    }
  }
}

void sub_19DC07570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FindClient::didRemoveLayerForFindOverlay(id *this, WebKit::WebPageProxy *a2)
{
  if ((this[3] & 0x10) != 0)
  {
    Weak = objc_loadWeak(this + 2);
    WeakRetained = objc_loadWeakRetained(this + 1);
    [Weak _webViewDidRemoveLayerForFindOverlay:?];
    if (WeakRetained)
    {
    }
  }
}

void sub_19DC07608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

id WebKit::FullscreenClient::delegate@<X0>(id *this@<X0>, void *a2@<X8>)
{
  result = objc_loadWeakRetained(this + 2);
  *a2 = result;
  return result;
}

void WebKit::FullscreenClient::willEnterFullscreen(id *this, WebKit::WebPageProxy *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  [WeakRetained willChangeValueForKey:@"fullscreenState"];
  [WeakRetained didChangeValueForKey:@"fullscreenState"];
  if (this[3])
  {
    v3 = objc_loadWeakRetained(this + 2);
    [v3 _webViewWillEnterElementFullscreen:WeakRetained];
    if (v3)
    {
    }
  }

  [WeakRetained _addReasonToHideTopScrollPocket:1];
  if (WeakRetained)
  {
  }
}

void sub_19DC076FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FullscreenClient::didEnterFullscreen(id *this, WebKit::WebPageProxy *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  [WeakRetained willChangeValueForKey:@"fullscreenState"];
  [WeakRetained didChangeValueForKey:@"fullscreenState"];
  if ((this[3] & 2) != 0)
  {
    v3 = objc_loadWeakRetained(this + 2);
    [v3 _webViewDidEnterElementFullscreen:WeakRetained];
    if (v3)
    {
    }
  }

  if (WeakRetained)
  {
  }
}

void sub_19DC077D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FullscreenClient::willExitFullscreen(id *this, WebKit::WebPageProxy *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  [WeakRetained willChangeValueForKey:@"fullscreenState"];
  [WeakRetained didChangeValueForKey:@"fullscreenState"];
  if ((this[3] & 4) != 0)
  {
    v3 = objc_loadWeakRetained(this + 2);
    [v3 _webViewWillExitElementFullscreen:WeakRetained];
    if (v3)
    {
    }
  }

  [WeakRetained _removeReasonToHideTopScrollPocket:1];
  if (WeakRetained)
  {
  }
}

void sub_19DC078B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FullscreenClient::didExitFullscreen(id *this, WebKit::WebPageProxy *a2)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  [WeakRetained willChangeValueForKey:@"fullscreenState"];
  [WeakRetained didChangeValueForKey:@"fullscreenState"];
  if ((this[3] & 8) != 0)
  {
    v3 = objc_loadWeakRetained(this + 2);
    [v3 _webViewDidExitElementFullscreen:WeakRetained];
    if (v3)
    {
    }
  }

  if (WeakRetained)
  {
  }
}

void sub_19DC07988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;
  if (v11)
  {
  }

  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::FullscreenClient::requestPresentingViewController(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 24) & 0x10) != 0)
  {
    Weak = objc_loadWeak((a1 + 16));
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = *a2;
    *a2 = 0;
    v6 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v6 = MEMORY[0x1E69E9818];
    v6[1] = 50331650;
    v6[2] = WTF::BlockPtr<void ()(UIViewController *,NSError *)>::fromCallable<WTF::CompletionHandler<void ()(UIViewController *,NSError *)>>(WTF::CompletionHandler<void ()(UIViewController *,NSError *)>)::{lambda(void *,UIViewController *,NSError *)#1}::__invoke;
    v6[3] = &WTF::BlockPtr<void ()(UIViewController *,NSError *)>::fromCallable<WTF::CompletionHandler<void ()(UIViewController *,NSError *)>>(WTF::CompletionHandler<void ()(UIViewController *,NSError *)>)::descriptor;
    v6[4] = v5;
    [Weak _webView:WeakRetained requestPresentingViewControllerWithCompletionHandler:v6];
    _Block_release(v6);
    if (WeakRetained)
    {
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(UIViewController *,NSError *)>::operator()(a2);
  }
}

void sub_19DC07AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::CompletionHandler<void ()(UIViewController *,NSError *)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void WebKit::AutomationSessionClient::~AutomationSessionClient(id *this)
{
  objc_destroyWeak(this + 1);
}

{
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree(this, v2);
}

void WebKit::DiagnosticLoggingClient::~DiagnosticLoggingClient(id *this)
{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);
}

{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree(this, v2);
}

void WebKit::FindClient::~FindClient(id *this)
{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);
}

{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree(this, v2);
}

void WebKit::FullscreenClient::~FullscreenClient(id *this)
{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);
}

{
  objc_destroyWeak(this + 2);
  objc_destroyWeak(this + 1);

  bmalloc::api::tzoneFree(this, v2);
}

uint64_t WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebKit::AutomationSessionClient::requestNewPageWithOptions(WebKit::WebAutomationSession &,API::AutomationSessionBrowsingContextOptions,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::$_0>(WebKit::AutomationSessionClient::requestNewPageWithOptions(WebKit::WebAutomationSession &,API::AutomationSessionBrowsingContextOptions,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1)
{
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_BYTE *mpark::detail::copy_constructor<mpark::detail::traits<WebKit::BrowsingWarning::SafeBrowsingWarningData,WebKit::BrowsingWarning::HTTPSNavigationFailureData>,(mpark::detail::Trait)1>::copy_constructor(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = -1;
  LODWORD(v3) = *(a2 + 8);
  if (v3 != 255)
  {
    if (!*(a2 + 8))
    {
      v3 = *a2;
      *a1 = *a2;
      if (v3)
      {
        v5 = v3;
        LOBYTE(v3) = *(a2 + 8);
      }
    }

    a1[8] = v3;
  }

  return a1;
}

void sub_19DC07E84(_Unwind_Exception *exception_object)
{
  if (!*(v1 + 8))
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
    }
  }

  *(v1 + 8) = -1;
  _Unwind_Resume(exception_object);
}

void WebKit::addLinkAndReplace(WebKit *this, NSMutableAttributedString *a2, NSString *a3, NSString *a4, NSURL *a5)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:a3];
  v12[0] = _MergedGlobals_33();
  v13[0] = a4;
  v12[1] = off_1ED63B628();
  v13[1] = &unk_1F11848A8;
  [v9 addAttributes:objc_msgSend(MEMORY[0x1E695DF20] range:{"dictionaryWithObjects:forKeys:count:", v13, v12, 2), 0, -[NSString length](a3, "length")}];
  v10 = [-[WebKit string](this "string")];
  [(WebKit *)this replaceCharactersInRange:v10 withAttributedString:v11, v9];
  if (v9)
  {
  }
}

void sub_19DC07FCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t initNSLinkAttributeName(void)
{
  if (byte_1EB01D406 == 1)
  {
    v0 = qword_1EB01D420;
  }

  else
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIFoundation.framework/UIFoundation", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1EB01D420 = v0;
    byte_1EB01D406 = 1;
  }

  v1 = dlsym(v0, "NSLinkAttributeName");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19DC08084);
  }

  result = *v1;
  qword_1EB01D418 = result;
  _MergedGlobals_33 = NSLinkAttributeNameFunction;
  return result;
}

uint64_t initNSUnderlineStyleAttributeName(void)
{
  if (byte_1EB01D406 == 1)
  {
    v0 = qword_1EB01D420;
  }

  else
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIFoundation.framework/UIFoundation", 2);
    if (!v0)
    {
      goto LABEL_7;
    }

    qword_1EB01D420 = v0;
    byte_1EB01D406 = 1;
  }

  v1 = dlsym(v0, "NSUnderlineStyleAttributeName");
  if (!v1)
  {
LABEL_7:
    __break(0xC471u);
    JUMPOUT(0x19DC08158);
  }

  result = *v1;
  qword_1EB01D428 = result;
  off_1ED63B628 = NSUnderlineStyleAttributeNameFunction;
  return result;
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(char *__dst, unint64_t a2, uint64_t a3, int8x16_t *a4, unint64_t a5, uint64_t a6, int8x16_t *a7, unint64_t a8, uint64_t a9)
{
  v44 = a3;
  WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v44, __dst);
  if (!v44)
  {
    goto LABEL_25;
  }

  v16 = *(v44 + 4);
  if (a2 < v16)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v17 = &__dst[2 * v16];
    if (a5 < 0x40)
    {
      v18 = &__dst[2 * v16];
    }

    else
    {
      v18 = &v17[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
      v19 = 0uLL;
      v20 = &__dst[2 * v16];
      do
      {
        v47.val[0] = *a4;
        v21 = a4[1];
        v49.val[0] = a4[2];
        v22 = a4[3];
        a4 += 4;
        v23 = v22;
        v49.val[1] = 0uLL;
        v51.val[0] = v21;
        v47.val[1] = 0uLL;
        v24 = v20;
        vst2q_s8(v24, v47);
        v24 += 32;
        v51.val[1] = 0uLL;
        vst2q_s8(v24, v51);
        v25 = v20 + 64;
        vst2q_s8(v25, v49);
        v26 = v20 + 96;
        vst2q_s8(v26, *(&v19 - 1));
        v20 += 128;
      }

      while (v20 != v18);
    }

    v27 = a2 - v16;
    while (v18 != &v17[2 * a5])
    {
      v28 = a4->u8[0];
      a4 = (a4 + 1);
      *v18 = v28;
      v18 += 2;
    }

    if (v27 < a5)
    {
      goto LABEL_24;
    }

    v29 = a5;
    a5 = v27 - a5;
    a4 = &v17[2 * v29];
    v45 = a6;
    WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v45, a4->i8);
    if (!v45)
    {
      break;
    }

    v30 = *(v45 + 4);
    if (a5 >= v30)
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    v16 = 0;
  }

  v30 = 0;
LABEL_14:
  v31 = a4 + 2 * v30;
  if (a8 < 0x40)
  {
    v32 = a4 + 2 * v30;
  }

  else
  {
    v32 = &v31[2 * (a8 & 0x7FFFFFFFFFFFFFC0)];
    v33 = 0uLL;
    v34 = &a4->i8[2 * v30];
    do
    {
      v48.val[0] = *a7;
      v35 = a7[1];
      v50.val[0] = a7[2];
      v36 = a7[3];
      a7 += 4;
      v37 = v36;
      v50.val[1] = 0uLL;
      v52.val[0] = v35;
      v48.val[1] = 0uLL;
      v38 = v34;
      vst2q_s8(v38, v48);
      v38 += 32;
      v52.val[1] = 0uLL;
      vst2q_s8(v38, v52);
      v39 = v34 + 64;
      vst2q_s8(v39, v50);
      v40 = v34 + 96;
      vst2q_s8(v40, *(&v33 - 1));
      v34 += 128;
    }

    while (v34 != v32);
  }

  v41 = a5 - v30;
  while (v32 != &v31[2 * a8])
  {
    v42 = a7->u8[0];
    a7 = (a7 + 1);
    *v32 = v42;
    v32 += 2;
  }

  if (v41 < a8)
  {
    goto LABEL_24;
  }

  v46 = a9;
  return WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v46, &v31[2 * a8]);
}

uint64_t *WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<WTF::String,void>>(_BYTE *__dst, unint64_t a2, _BYTE *__src, size_t __n, uint64_t a5)
{
  v6 = __n;
  if (__n)
  {
    if (__n == 1)
    {
      goto LABEL_7;
    }

    memcpy(__dst, __src, __n);
  }

  while (a2 < v6)
  {
    __break(1u);
LABEL_7:
    *__dst = *__src;
  }

  v10 = a5;
  return WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v10, &__dst[v6]);
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v3);
}

void WTF::HashMapTranslator<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>::translate<WTF::String const&,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>,WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>>> WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::String const&,WebKit::ExtensionCapabilityGrant>(WTF::String const&,WebKit::ExtensionCapabilityGrant &&)::{lambda(void)#1}>(uint64_t *a1, atomic_uint **a2, __int128 **a3)
{
  WTF::String::operator=(a1, a2);
  v5 = *a3;
  v6 = **a3;
  *v5 = 0;
  *(v5 + 1) = 0;
  v7 = v6;
  WebKit::ExtensionCapabilityGrant::operator=((a1 + 1), &v7);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(&v7);
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = WTF::fastMalloc((24 * a2 + 16));
  v9 = v7;
  v10 = v7 + 16;
  if (a2)
  {
    bzero((v7 + 16), 24 * a2);
  }

  *a1 = v10;
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v6;
  if (v5)
  {
    v11 = 0;
    while (1)
    {
      v12 = v4 + 24 * v11;
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v15 = *a1;
          if (*a1)
          {
            v16 = *(v15 - 8);
          }

          else
          {
            v16 = 0;
          }

          v17 = v13[4];
          if (v17 < 0x100)
          {
            v18 = WTF::StringImpl::hashSlowCase(v13);
          }

          else
          {
            v18 = v17 >> 8;
          }

          v19 = 0;
          do
          {
            v20 = (v15 + 24 * (v18 & v16));
            v18 = ++v19 + (v18 & v16);
          }

          while (*v20);
          WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant((v20 + 1));
          v22 = *v20;
          *v20 = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v21);
          }

          v23 = *v12;
          *v12 = 0;
          *v20 = v23;
          v24 = *(v12 + 8);
          *(v12 + 8) = 0;
          v20[1] = v24;
          v25 = *(v12 + 16);
          *(v12 + 16) = 0;
          v20[2] = v25;
          WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant((v12 + 8));
          v14 = *v12;
          *v12 = 0;
          if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_26;
          }
        }

        else
        {
          WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant((v12 + 8));
          v14 = *v12;
          *v12 = 0;
          if (!v14 || atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_26;
          }
        }

        WTF::StringImpl::destroy(v14, v8);
      }

LABEL_26:
      if (++v11 == v5)
      {
        goto LABEL_30;
      }
    }
  }

  if (v4)
  {
LABEL_30:

    WTF::fastFree((v4 - 16), v8);
  }
}

uint64_t WebKit::ExtensionCapabilityGrant::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a2 + 1);
  *(a2 + 1) = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v9 = *(result + 16) >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>(result, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, (v5 + 129));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

void sub_19DC087D8(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::NativePromise(uint64_t a1, __int128 *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FEDF0;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 88) = a1 + 104;
  *(a1 + 32) = v4;
  *(a1 + 16) = v3;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v5 = WTF::NativePromiseBase::logChannel(a1);
  v6 = v5;
  if (!*v5 || v5[16] < 4u)
  {
    return a1;
  }

  WTF::String::String(&v30, "creating ");
  WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v29, a1);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v9 = v29;
    v29 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v30;
    v30 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = *(v6 + 4);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      WTF::String::utf8();
      v14 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v14;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v12 = v28[0];
      v28[0] = 0;
      if (v12)
      {
        if (*v12 == 1)
        {
          v12 = WTF::fastFree(v12, v13);
        }

        else
        {
          --*v12;
        }
      }
    }

    if (*v6 && v6[16] >= 4u)
    {
      v15 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v16 = *v15;
        if (v16)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
        if (v17 == v16)
        {
          v18 = WTF::Logger::observers(v12);
          v19 = *(v18 + 12);
          if (v19)
          {
            v20 = *v18;
            v21 = *v18 + 8 * v19;
            do
            {
              v22 = *v20;
              *buf = 0;
              WTF::String::String(&buf[8], "creating ");
              v33 = 0;
              WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(v34, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v22 + 16))(v22, v6, 4, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v23);
              for (i = 24; i != -8; i -= 16)
              {
                v25 = *&buf[i];
                *&buf[i] = 0;
                if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v25, v13);
                }
              }

              ++v20;
            }

            while (v20 != v21);
          }

          v26 = 1;
          atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
          if (v26 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v13);
      }
    }

    return a1;
  }

  __break(0xC471u);
  return result;
}

void sub_19DC08B50(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  v21 = (v17 - 32);
  WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v22);
  if (*(v16 + 80) > 1u)
  {
    if (*(v16 + 80) == 2)
    {
      v23 = *v21;
      *v21 = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }
    }
  }

  else if (*(v16 + 80))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v17 - 32);
  }

  *(v16 + 80) = -1;
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 124);
  if (v4)
  {
    v5 = *(v1 + 112);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

void sub_19DC08D88(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v34[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v30, "destroying ");
    WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v29, a1);
    *buf = v30;
    v28[0] = v29;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
    if (!v31)
    {
      __break(0xC471u);
      return result;
    }

    v6 = v29;
    v29 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = v30;
    v30 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = *(v2 + 32);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      WTF::String::utf8();
      v11 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v9 = v28[0];
      v28[0] = 0;
      if (v9)
      {
        if (*v9 == 1)
        {
          v9 = WTF::fastFree(v9, v10);
        }

        else
        {
          --*v9;
        }
      }
    }

    if (*v2 && *(v2 + 16) >= 4u)
    {
      v12 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v13 = *v12;
        if (v13)
        {
          break;
        }

        v14 = *v12;
        atomic_compare_exchange_strong_explicit(v12, &v14, v13 | 1, memory_order_acquire, memory_order_acquire);
        if (v14 == v13)
        {
          v15 = WTF::Logger::observers(v9);
          v16 = *(v15 + 12);
          if (v16)
          {
            v17 = *v15;
            v18 = *v15 + 8 * v16;
            do
            {
              v19 = *v17;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v33 = 0;
              WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(v34, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v19 + 16))(v19, v2, 4, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v20);
              for (i = 24; i != -8; i -= 16)
              {
                v22 = *&buf[i];
                *&buf[i] = 0;
                if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v10);
                }
              }

              ++v17;
            }

            while (v17 != v18);
          }

          v23 = 1;
          atomic_compare_exchange_strong_explicit(v12, &v23, 0, memory_order_release, memory_order_relaxed);
          if (v23 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v24 = v31;
    v31 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v10);
    }
  }

  WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 112, v25);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 88, v26);
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) == 2)
    {
      v27 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }
  }

  else if (*(a1 + 80))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(a1 + 56);
  }

  *(a1 + 80) = -1;
  return a1;
}

WTF::StringImpl *WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  WTF::Logger::LogSiteIdentifier::toString(&v7, (a2 + 16));
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>("NativePromise", 14, &v8, 60, &v7, 0x3Eu, a1);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19DC08E84(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v2)
    {
    }

    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
    }
  }

  *(a1 + 16) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

void sub_19DC09024(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC093DC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16 + 112, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16 + 88, v20);
  if (*(v16 + 80) > 1u)
  {
    if (*(v16 + 80) == 2)
    {
      v21 = *(v16 + 56);
      *(v16 + 56) = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }
    }
  }

  else if (*(v16 + 80))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v16 + 56);
  }

  *(v16 + 80) = -1;
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, const char *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v32, this);
  WTF::String::String(&v31, a3);
  WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v30, a4);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v32, &v31, &v30, &v33);
  v8 = v30;
  v30 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v31;
  v31 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v32;
  v32 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(a1 + 32);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    WTF::String::utf8();
    v14 = v29[0] ? v29[0] + 16 : 0;
    *buf = 136446210;
    v35 = v14;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v12 = v29[0];
    v29[0] = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        v12 = WTF::fastFree(v12, v13);
      }

      else
      {
        --*v12;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v15 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v16 = *v15;
      if (v16)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
      if (v17 == v16)
      {
        v18 = WTF::Logger::observers(v12);
        v19 = *(v18 + 12);
        if (v19)
        {
          v20 = *v18;
          v21 = *v18 + 8 * v19;
          do
          {
            v22 = *v20;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v35 + 4), this);
            v36 = 0;
            WTF::String::String(v37, a3);
            v37[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(v38, a4);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 3uLL);
            (*(*v22 + 16))(v22, a1, 4, v29);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v23);
            for (i = 40; i != -8; i -= 16)
            {
              v25 = *&buf[i];
              *&buf[i] = 0;
              if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v13);
              }
            }

            ++v20;
          }

          while (v20 != v21);
        }

        v26 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
        if (v26 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_19DC09854(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, char a17)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_19DC09A1C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 16))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKitL23grantCapabilityInternalERKNS3_19ExtensionCapabilityEPKNS3_15GPUProcessProxyEPKNS3_15WebProcessProxyEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10FEE18;
  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](a1 + 80);
  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](a1 + 56);
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
  }

  WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKitL23grantCapabilityInternalERKNS3_19ExtensionCapabilityEPKNS3_15GPUProcessProxyEPKNS3_15WebProcessProxyEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10FEE18;
  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](a1 + 80);
  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](a1 + 56);
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
  }

  WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer((a1 + 8));

  return WTF::fastFree(a1, v3);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKitL23grantCapabilityInternalERKNS3_19ExtensionCapabilityEPKNS3_15GPUProcessProxyEPKNS3_15WebProcessProxyEE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEE4callEv(uint64_t a1)
{
  v105[2] = *MEMORY[0x1E69E9840];
  WebKit::grantCapability(&v82, (a1 + 48), (a1 + 56));
  WebKit::grantCapability(&v83, (a1 + 48), (a1 + 80));
  v79 = 0uLL;
  v80 = "operator()";
  v81 = 0;
  v2 = WTF::fastMalloc(0x88);
  v3 = WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::NativePromise(v2, &v79);
  v4 = 0;
  v5 = (v2 + 48);
  v84 = (v2 + 48);
  v85 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    v3 = MEMORY[0x19EB01E30](v2 + 48);
  }

  v6 = WTF::NativePromiseBase::logChannel(v3);
  v7 = v6;
  if (*v6 && v6[16] >= 4u)
  {
    WTF::Logger::LogSiteIdentifier::toString(&v92, &v79);
    WTF::String::String(&v91, " resolving ");
    WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v90, v2);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v92, &v91, &v90, &v93);
    v9 = v90;
    v90 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v91;
    v91 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v92;
    v92 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v12 = *(v7 + 4);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v86[0] ? v86[0] + 16 : 0;
      *buf = 136446210;
      v95 = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v86[0];
      v86[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*v7 && v7[16] >= 4u)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v78 = a1;
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v95 + 4), &v79);
              v96 = 0;
              WTF::String::String(&v97, " resolving ");
              v98 = 0;
              WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v99, v2);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v86, buf, 3uLL);
              (*(*v23 + 16))(v23, v7, 4, v86);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v86, v24);
              for (i = 40; i != -8; i -= 16)
              {
                v26 = *&buf[i];
                *&buf[i] = 0;
                if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v26, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v27 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
          v5 = (v2 + 48);
          a1 = v78;
          if (v27 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v28 = v93;
    v93 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v28, v14);
    }
  }

  v29 = v82;
  if (v82)
  {
    v30 = v82;
  }

  v31 = v83;
  if (v83)
  {
    v32 = v83;
  }

  if (*(v2 + 80) > 1u)
  {
    if (*(v2 + 80) == 2)
    {
      v33 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }
    }
  }

  else if (*(v2 + 80))
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v2 + 56);
  }

  *(v2 + 56) = v29;
  *(v2 + 64) = v31;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  v34 = WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::dispatchAll(v2, &v84);
  v35 = v85;
  if (v85 == 1)
  {
    v34 = v84;
    atomic_compare_exchange_strong_explicit(v84, &v35, 0, memory_order_release, memory_order_relaxed);
    if (v35 != 1)
    {
      v34 = WTF::Lock::unlockSlow(v34);
    }
  }

  v36 = v83;
  v83 = 0;
  if (v36)
  {
  }

  v37 = v82;
  v82 = 0;
  if (v37)
  {
  }

  v38 = 0;
  v79 = 0uLL;
  v80 = "invokeAsync proxy";
  v81 = 0;
  atomic_compare_exchange_strong_explicit(v5, &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    v34 = MEMORY[0x19EB01E30](v5);
  }

  v39 = a1 + 8;
  *(v2 + 128) = 1;
  v40 = *(a1 + 8);
  if (v40)
  {
    atomic_fetch_add(v40 + 2, 1u);
  }

  v41 = WTF::NativePromiseBase::logChannel(v34);
  v42 = v41;
  if (!*v41 || v41[16] < 4u)
  {
    goto LABEL_111;
  }

  WTF::Logger::LogSiteIdentifier::toString(&v82, &v79);
  WTF::String::String(&v93, " invoking chainTo() [");
  WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v92, v2);
  WTF::String::String(&v91, " chainedPromise:");
  WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v90, v40);
  WTF::String::String(&v89, " isNothing:");
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v87, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v82, &v93, &v92, &v91, &v90, &v89, &v88, &v87, &v84);
  if (!v84)
  {
    __break(0xC471u);
    return result;
  }

  v45 = v87;
  v87 = 0;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v44);
  }

  v46 = v88;
  v88 = 0;
  if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v46, v44);
  }

  v47 = v89;
  v89 = 0;
  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v47, v44);
  }

  v48 = v90;
  v90 = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v44);
  }

  v49 = v91;
  v91 = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v44);
  }

  v50 = v92;
  v92 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v44);
  }

  v51 = v93;
  v93 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v44);
  }

  v52 = v82;
  v82 = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v44);
  }

  v53 = *(v42 + 4);
  v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
  if (v54)
  {
    WTF::String::utf8();
    v56 = v86[0] ? v86[0] + 16 : 0;
    *buf = 136446210;
    v95 = v56;
    _os_log_impl(&dword_19D52D000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v54 = v86[0];
    v86[0] = 0;
    if (v54)
    {
      if (*v54 == 1)
      {
        v54 = WTF::fastFree(v54, v55);
      }

      else
      {
        --*v54;
      }
    }
  }

  if (*v42 && v42[16] >= 4u)
  {
    v57 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v58 = *v57;
      if (v58)
      {
        break;
      }

      v59 = *v57;
      atomic_compare_exchange_strong_explicit(v57, &v59, v58 | 1, memory_order_acquire, memory_order_acquire);
      if (v59 == v58)
      {
        v77 = v5;
        v60 = WTF::Logger::observers(v54);
        v61 = *(v60 + 12);
        if (v61)
        {
          v62 = *v60;
          v63 = *v60 + 8 * v61;
          do
          {
            v64 = *v62;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v95 + 4), &v79);
            v96 = 0;
            WTF::String::String(&v97, " invoking chainTo() [");
            v98 = 0;
            WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v99, v2);
            v100 = 0;
            WTF::String::String(v101, " chainedPromise:");
            v101[2] = 0;
            WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v102, v40);
            v103 = 0;
            WTF::String::String(v104, " isNothing:");
            v104[2] = 0;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v104[6] = 0;
            WTF::String::String(v105, "]");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v86, buf, 8uLL);
            (*(*v64 + 16))(v64, v42, 4, v86);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v86, v65);
            for (j = 120; j != -8; j -= 16)
            {
              v67 = *&buf[j];
              *&buf[j] = 0;
              if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v67, v55);
              }
            }

            ++v62;
          }

          while (v62 != v63);
        }

        v68 = 1;
        atomic_compare_exchange_strong_explicit(v57, &v68, 0, memory_order_release, memory_order_relaxed);
        v5 = v77;
        if (v68 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  v69 = v84;
  v84 = 0;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v55);
    if (v40)
    {
LABEL_112:
      if (atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v40 + 2);
        (*(*v40 + 16))(v40);
      }
    }
  }

  else
  {
LABEL_111:
    if (v40)
    {
      goto LABEL_112;
    }
  }

  v70 = atomic_load((v2 + 129));
  v71 = *v39;
  if (*v39)
  {
    atomic_fetch_add((v71 + 8), 1u);
  }

  result = WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::setDispatchMode(v71, v70, &v79);
  if (v71 && atomic_fetch_add((v71 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v71 + 8));
    result = (*(*v71 + 16))(v71);
  }

  if (*(v2 + 80))
  {
    result = WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::settleChainedPromise(v2, v39);
  }

  else
  {
    v72 = *(v2 + 124);
    if (v72 == *(v2 + 120))
    {
      result = WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v2 + 112, v72 + 1, v39);
      v39 = result;
      LODWORD(v72) = *(v2 + 124);
    }

    v73 = *(v2 + 112) + 40 * v72;
    v74 = *v39;
    *v39 = 0;
    *v73 = v74;
    v75 = *(v39 + 8);
    *(v73 + 24) = *(v39 + 24);
    *(v73 + 8) = v75;
    ++*(v2 + 124);
  }

  v76 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v76, 0, memory_order_release, memory_order_relaxed);
  if (v76 != 1)
  {
    result = WTF::Lock::unlockSlow(v5);
  }

  if (atomic_fetch_add((v2 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v2 + 8));
    return (*(*v2 + 16))(v2);
  }

  return result;
}

void sub_19DC0A5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::Lock *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, WTF::StringImpl *a33, WTF::StringImpl *a34, WTF::StringImpl *a35, WTF::StringImpl *a36, WTF::StringImpl *a37, WTF::StringImpl *a38, WTF::StringImpl *a39, char a40)
{
  if (atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v40 + 2);
    (*(*v40 + 16))(v40);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::grantCapability(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  if (*a2 && (a3[16] & 1) != 0)
  {
    aBlock = _Block_copy(&__block_literal_global_216);
    WebKit::ExtensionProcess::grantCapability(a3, a2, &aBlock, a1);
    _Block_release(aBlock);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v17 = &v19;
  v18 = 1;
  __dst = &v22;
  v21 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 88));
  v4 = *(a1 + 100);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 88), (*(a1 + 88) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 88), &v17);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v5);
  *&v6 = 0;
  v7 = *(a1 + 112);
  v17 = v7;
  v8 = *(a1 + 124);
  LODWORD(v18) = *(a1 + 120);
  HIDWORD(v18) = v8;
  v16 = v6;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v9);
  if (HIDWORD(v21))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v21);
    do
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(*v11++, a1, a2);
      v12 -= 8;
    }

    while (v12);
    v7 = v17;
    v8 = HIDWORD(v18);
  }

  if (v8)
  {
    v13 = 40 * v8;
    do
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v13 -= 40;
    }

    while (v13);
  }

  WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v14);
}

void sub_19DC0AD68(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, WTF *a14, int a15)
{
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a11, v16);
  _Unwind_Resume(a1);
}

unsigned __int8 *WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 129)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v16[0] = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, a2, v16, (v5 + 24));
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v15, a2);
        v13 = v15;
        (*(*v15 + 16))(v16, v15);
        (*(*v5 + 24))(v5, a2, v16);
        mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v16);
        (*(*v13 + 8))(v13);
      }

      else
      {
        WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(v16, a2);
        (*(*v5 + 24))(v5, a2, v16);
        mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v16);
      }

      v14 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v14, 1u, memory_order_acquire, memory_order_acquire);
      if (v14)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10FEE60;
    v8[1] = v5;
    v8[2] = a2;
    v16[0] = v8;
    (*(*v7 + 16))(v7, v16);
    result = v16[0];
    v16[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19DC0B054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(va);
  (*(*v3 + 8))(v3);
  v5 = 0;
  atomic_compare_exchange_strong_explicit(*v2, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30]();
  }

  _Unwind_Resume(a1);
}

atomic_uint **WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a2 = 0;
  v26 = v3;
  v4 = *(a2 + 24);
  v27 = *(a2 + 8);
  v28 = v4;
  if (v3)
  {
    atomic_fetch_add((v3 + 8), 1u);
  }

  v5 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v25[2] = "<chained promise>";
  v25[3] = 0;
  v6 = (v3 + 48);
  v29 = (v3 + 48);
  v30 = 1;
  atomic_compare_exchange_strong_explicit((v3 + 48), &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v6 = MEMORY[0x19EB01E30]();
  }

  v7 = WTF::NativePromiseBase::logChannel(v6);
  if (*v7 && v7[16] >= 4u)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>(v7, v25, " settling chained promise ", v3);
  }

  v8 = *(v3 + 80);
  v9 = *(a1 + 80);
  if (v8 != 255 || v9 != 255)
  {
    if (v9 == 255)
    {
      if (*(v3 + 80) > 1u)
      {
        if (v8 == 2)
        {
          v11 = *(v3 + 56);
          *(v3 + 56) = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }
        }
      }

      else if (*(v3 + 80))
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v3 + 56);
      }

      v12 = -1;
      goto LABEL_25;
    }

    if (v9 != 2)
    {
      if (v9 != 1)
      {
        if (*(v3 + 80) > 1u)
        {
          if (v8 == 2)
          {
            v21 = *(v3 + 56);
            *(v3 + 56) = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }
          }
        }

        else
        {
          if (!*(v3 + 80))
          {
            goto LABEL_26;
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v3 + 56);
        }

        *(v3 + 80) = 0;
        goto LABEL_26;
      }

      if (*(v3 + 80) > 1u)
      {
        if (v8 == 2)
        {
          v16 = *(v3 + 56);
          *(v3 + 56) = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }
      }

      else if (*(v3 + 80))
      {
        LOBYTE(v31) = 0;
        v32 = -1;
        v10 = *(a1 + 72);
        if (*(a1 + 72))
        {
          if (v10 == 255)
          {
            LOBYTE(v33) = 0;
          }

          else
          {
            LOBYTE(v31) = *(a1 + 56);
            v32 = v10;
            LOBYTE(v33) = v31;
          }
        }

        else
        {
          v32 = 0;
          v31 = 0u;
          v24 = *(a1 + 56);
          *(a1 + 56) = 0u;
          v33 = v24;
        }

        v34 = v10;
        mpark::variant<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>::operator=(&v31, (v3 + 56));
        mpark::variant<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>::operator=(v3 + 56, &v33);
        mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(&v33);
        mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(&v31);
        goto LABEL_26;
      }

      *(v3 + 80) = -1;
      *(v3 + 56) = 0;
      *(v3 + 72) = -1;
      v17 = *(a1 + 72);
      if (v17 != 255)
      {
        if (*(a1 + 72))
        {
          *(v3 + 56) = *(a1 + 56);
        }

        else
        {
          v18 = *(a1 + 56);
          *(a1 + 56) = 0;
          *(v3 + 56) = v18;
          v19 = *(a1 + 64);
          *(a1 + 64) = 0;
          *(v3 + 64) = v19;
        }

        *(v3 + 72) = v17;
      }

      v12 = 1;
      goto LABEL_25;
    }

    if (*(v3 + 80) <= 1u)
    {
      if (*(v3 + 80))
      {
        mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v3 + 56);
      }

      goto LABEL_45;
    }

    if (v8 == 255)
    {
LABEL_45:
      v20 = *(a1 + 56);
      *(a1 + 56) = 0;
      *(v3 + 56) = v20;
      v12 = 2;
LABEL_25:
      *(v3 + 80) = v12;
      goto LABEL_26;
    }

    v22 = *(a1 + 56);
    *(a1 + 56) = 0;
    v23 = *(v3 + 56);
    *(v3 + 56) = v22;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

LABEL_26:
  WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::dispatchAll(v3, &v29);
  v13 = v30;
  if (v30 == 1)
  {
    v14 = v29;
    atomic_compare_exchange_strong_explicit(v29, &v13, 0, memory_order_release, memory_order_relaxed);
    if (v13 != 1)
    {
      WTF::Lock::unlockSlow(v14);
    }
  }

  if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v3 + 8));
    (*(*v3 + 16))(v3);
  }

  return WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(&v26);
}

void sub_19DC0B534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::Lock *a19, char a20)
{
  if (v20)
  {
    if (atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v20 + 2);
      (*(*v20 + 16))(v20);
    }
  }

  WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(&a14);
  _Unwind_Resume(a1);
}

mpark *WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 80) != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(a2 + 56);
  *(a2 + 56) = 0;
  *v3 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

mpark *WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 80) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *v3 = 0;
  *(v3 + 16) = -1;
  v6 = *(a2 + 72);
  if (v6 != 255)
  {
    if (*(a2 + 72))
    {
      *v3 = *(a2 + 56);
    }

    else
    {
      v7 = *(a2 + 56);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *v3 = v7;
    }

    *(v3 + 16) = v6;
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v54[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v39, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v38, a2);
  WTF::String::String(&v37, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v35, " callSite:");
  WTF::Logger::LogSiteIdentifier::toString(&v34, a4);
  WTF::String::String(&v33, "]");
  v32[0] = v38;
  v45 = v37;
  *buf = v39;
  v43 = v35;
  v44 = v36;
  v41 = v33;
  v42 = v34;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v32, &v45, &v44, &v43, &v42, &v41, &v40);
  if (v40)
  {
    v8 = v33;
    v33 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v34;
    v34 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = v35;
    v35 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v7);
    }

    v11 = v36;
    v36 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v7);
    }

    v12 = v37;
    v37 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v7);
    }

    v13 = v38;
    v38 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v7);
    }

    v14 = v39;
    v39 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v7);
    }

    v15 = *(a1 + 32);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      WTF::String::utf8();
      v18 = v32[0] ? v32[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v16 = v32[0];
      v32[0] = 0;
      if (v16)
      {
        if (*v16 == 1)
        {
          v16 = WTF::fastFree(v16, v17);
        }

        else
        {
          --*v16;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::String::String(&buf[8], "ThenCallback disconnected from ");
              v47 = 0;
              WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v48, a2);
              v49 = 0;
              WTF::String::String(v50, " aborting [callback:");
              v50[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v50[6] = 0;
              WTF::String::String(v51, " callSite:");
              v51[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v52, a4);
              v53 = 0;
              WTF::String::String(v54, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v32, buf, 7uLL);
              (*(*v26 + 16))(v26, a1, 4, v32);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v32, v27);
              for (i = 104; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v17);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v40;
    v40 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void sub_19DC0BBA0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, WTF::StringImpl *a18, WTF::StringImpl *a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, uint64_t a24, WTF::StringImpl *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v33 = 1;
  atomic_compare_exchange_strong_explicit(v31, &v33, 0, memory_order_release, memory_order_relaxed);
  if (v33 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a25)
  {
    if (atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a25, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FEE60;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEE60;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
{
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  if (*(v2 + 56) == 1)
  {
    v11[0] = *(a1 + 1);
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = *(result + 16) >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, v1, v11, (v2 + 24));
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResultRunnable(&v10, v8);
      v9 = v10;
      (*(*v10 + 16))(v11, v10);
      (*(*v7 + 24))(v7, v8, v11);
      mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v11);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::takeResult(v11, v8);
      (*(*v7 + 24))(v7, v8, v11);
      return mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(v11);
    }
  }

  return result;
}

void sub_19DC0C0E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mpark::detail::move_constructor<mpark::detail::traits<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>,(mpark::detail::Trait)1>::~move_constructor(va);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

uint64_t mpark::variant<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError>::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      if (!*(a2 + 16))
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (v5 == 255)
    {
      if (!*(a1 + 16))
      {
        v6 = *(a1 + 8);
        *(a1 + 8) = 0;
        if (v6)
        {
        }

        v7 = *a1;
        *a1 = 0;
        if (v7)
        {
        }
      }

      v8 = -1;
      goto LABEL_23;
    }

    if (*(a2 + 16))
    {
      if (*(a1 + 16))
      {
        if (v4 == 1)
        {
          *a1 = *a2;
          return a1;
        }
      }

      else
      {
        v11 = *(a1 + 8);
        *(a1 + 8) = 0;
        if (v11)
        {
        }

        v12 = *a1;
        *a1 = 0;
        if (v12)
        {
        }
      }

LABEL_22:
      *a1 = *a2;
      v8 = 1;
LABEL_23:
      *(a1 + 16) = v8;
      return a1;
    }

    if (*(a1 + 16))
    {
LABEL_17:
      *(a1 + 16) = -1;
      v9 = *a2;
      *a2 = 0;
      *a1 = v9;
      v10 = a2[1];
      a2[1] = 0;
      *(a1 + 8) = v10;
      *(a1 + 16) = 0;
      return a1;
    }

    v14 = *a2;
    *a2 = 0;
    v15 = *a1;
    *a1 = v14;
    if (v15)
    {
    }

    v16 = a2[1];
    a2[1] = 0;
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
    if (v17)
    {
    }
  }

  return a1;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || &v5[10 * *(a1 + 12)] <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

atomic_uint **WTF::Vector<WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(atomic_uint **result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x6666667)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = *(result + 3);
      v5 = 40 * a2;
      result = WTF::fastMalloc((40 * a2));
      *(v2 + 2) = v5 / 0x28;
      *v2 = result;
      if (v4)
      {
        v7 = result;
        result = v3;
        do
        {
          v8 = *result;
          *result = 0;
          *v7 = v8;
          v9 = *(result + 1);
          *(v7 + 3) = *(result + 3);
          *(v7 + 1) = v9;
          v7 += 5;
          result = WTF::NativePromiseProducer<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(result) + 5;
        }

        while (result != &v3[10 * v4]);
      }

      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v6);
      }
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN6WebKit33PlatformExtensionCapabilityGrantsENS3_29ExtensionCapabilityGrantErrorELj0EE11whenSettledIZNS3_26ExtensionCapabilityGranter5grantERKNS3_19ExtensionCapabilityEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS4_S5_EEE_vJSQ_EED1Ev(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10FEE88;
  v3 = a1[3];
  a1[3] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN6WebKit33PlatformExtensionCapabilityGrantsENS3_29ExtensionCapabilityGrantErrorELj0EE11whenSettledIZNS3_26ExtensionCapabilityGranter5grantERKNS3_19ExtensionCapabilityEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS4_S5_EEE_vJSQ_EED0Ev(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10FEE88;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN6WebKit33PlatformExtensionCapabilityGrantsENS3_29ExtensionCapabilityGrantErrorELj0EE11whenSettledIZNS3_26ExtensionCapabilityGranter5grantERKNS3_19ExtensionCapabilityEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIS4_S5_EEE_vJSQ_EE4callESQ_(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v6 = (a1 + 24);
  v5 = *(a1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    v7 = *v6;
    v56 = v5;
    v57 = 0;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v56 = 0;
    v57 = 0;
  }

  v55 = v7;
  if (!*(a2 + 16))
  {
    WebKit::ExtensionCapabilityGrant::setPlatformGrant(&v56, a2);
    if (*(a2 + 16))
    {
      mpark::throw_bad_variant_access(v8);
    }

    WebKit::ExtensionCapabilityGrant::setPlatformGrant(&v55, (a2 + 8));
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v9 + 8);
    if (v10)
    {
      v12 = *(v10 + 8);
      v11 = (v10 + 8);
      *v11 = v12 + 1;
      v13 = *(*(v4 + 16) + 8);
      if (v13)
      {
        (**v13)(v13);
        v14 = WTF::fastMalloc(0x20);
        v54 = 2;
        v53 = v14;
        if (*(a1 + 32) == 1)
        {
          v15 = *(*(v4 + 16) + 8);
          if (!v15)
          {
            __break(0xC471u);
            JUMPOUT(0x19DC0CBD0);
          }

          (*(*v15 + 32))(buf);
          v16 = WebKit::finalizeGrant(v6, *buf, &v56);
          v17 = *buf;
          *buf = 0;
          if (v17)
          {
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v17 + 16));
          }

          v18 = qword_1ED641008;
          if (v16)
          {
            v14 = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              WTF::String::utf8();
              v19 = v52 ? v52 + 16 : 0;
              *buf = 136446466;
              *&buf[4] = "operator()";
              *&buf[12] = 2082;
              *&buf[14] = v19;
              _os_log_impl(&dword_19D52D000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s[envID=%{public}s] granted for GPU process", buf, 0x16u);
              v14 = v52;
              v52 = 0;
              if (v14)
              {
                if (*v14 == 1)
                {
                  v14 = WTF::fastFree(v14, v20);
                }

                else
                {
                  --*v14;
                }
              }
            }
          }

          else
          {
            v14 = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR);
            if (v14)
            {
              WTF::String::utf8();
              v48 = v52 ? v52 + 16 : 0;
              *buf = 136446466;
              *&buf[4] = "operator()";
              *&buf[12] = 2082;
              *&buf[14] = v48;
              _os_log_error_impl(&dword_19D52D000, v18, OS_LOG_TYPE_ERROR, "%{public}s[envID=%{public}s] failed to grant for GPU process", buf, 0x16u);
              v14 = v52;
              v52 = 0;
              if (v14)
              {
                if (*v14 == 1)
                {
                  v14 = WTF::fastFree(v14, v49);
                }

                else
                {
                  --*v14;
                }
              }
            }

            if (HIDWORD(v54) == v54)
            {
              v14 = WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v53, HIDWORD(v54) + 1, &v56);
              v26 = (v53 + 16 * HIDWORD(v54));
              v27 = *v14;
              *v14 = 0;
              *v26 = v27;
              v28 = *(v14 + 8);
              *(v14 + 8) = 0;
              v26[1] = v28;
              ++HIDWORD(v54);
            }

            else
            {
              v29 = HIDWORD(v54) + 1;
              v30 = (v53 + 16 * HIDWORD(v54));
              v31 = v56;
              v56 = 0;
              *v30 = v31;
              v32 = v57;
              v57 = 0;
              v30[1] = v32;
              HIDWORD(v54) = v29;
            }
          }
        }

        if (*(a1 + 33) != 1)
        {
          goto LABEL_44;
        }

        v33 = *(*(v4 + 16) + 8);
        if (v33)
        {
          (*(*v33 + 40))(buf);
          v34 = WebKit::finalizeGrant(v6, *buf, &v55);
          v35 = *buf;
          *buf = 0;
          if (v35)
          {
            WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v35 + 16));
          }

          v36 = qword_1ED641008;
          if (v34)
          {
            v14 = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_DEFAULT);
            if (v14)
            {
              WTF::String::utf8();
              if (v52)
              {
                v37 = v52 + 16;
              }

              else
              {
                v37 = 0;
              }

              *buf = 136446466;
              *&buf[4] = "operator()";
              *&buf[12] = 2082;
              *&buf[14] = v37;
              _os_log_impl(&dword_19D52D000, v36, OS_LOG_TYPE_DEFAULT, "%{public}s[envID=%{public}s] granted for WebContent process", buf, 0x16u);
              v14 = v52;
              if (v52)
              {
                if (*v52 == 1)
                {
                  v14 = WTF::fastFree(v52, v38);
                }

                else
                {
                  --*v52;
                }
              }
            }
          }

          else
          {
            v14 = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR);
            if (v14)
            {
              WTF::String::utf8();
              v50 = v52 ? v52 + 16 : 0;
              *buf = 136446466;
              *&buf[4] = "operator()";
              *&buf[12] = 2082;
              *&buf[14] = v50;
              _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "%{public}s[envID=%{public}s] failed to grant for WebContent process", buf, 0x16u);
              v14 = v52;
              if (v52)
              {
                if (*v52 == 1)
                {
                  v14 = WTF::fastFree(v52, v51);
                }

                else
                {
                  --*v52;
                }
              }
            }

            if (HIDWORD(v54) == v54)
            {
              v14 = WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v53, HIDWORD(v54) + 1, &v55);
              v39 = (v53 + 16 * HIDWORD(v54));
              v40 = *v14;
              *v14 = 0;
              *v39 = v40;
              v41 = *(v14 + 8);
              *(v14 + 8) = 0;
              v39[1] = v41;
              ++HIDWORD(v54);
            }

            else
            {
              v42 = HIDWORD(v54) + 1;
              v43 = (v53 + 16 * HIDWORD(v54));
              v44 = v55;
              *&v55 = 0;
              *v43 = v44;
              v45 = *(&v55 + 1);
              *(&v55 + 1) = 0;
              v43[1] = v45;
              HIDWORD(v54) = v42;
            }
          }

LABEL_44:
          WebKit::ExtensionCapabilityGranter::invalidateGrants(v14, &v53);
          WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v53, v46);
          (*(*v13 + 8))(v13);
          WTF::RefCounted<WebKit::ExtensionCapabilityGranter>::deref(v11, v47);
          goto LABEL_45;
        }

        __break(0xC471u);
      }

      else
      {
        __break(0xC471u);
      }

      JUMPOUT(0x19DC0CBB0);
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  v21 = WTF::fastMalloc(0x20);
  *buf = v21;
  *&buf[8] = 0x200000002;
  v22 = v56;
  v56 = 0;
  *v21 = v22;
  v23 = v57;
  v57 = 0;
  *(v21 + 8) = v23;
  v24 = v55;
  v55 = 0uLL;
  *(v21 + 16) = v24;
  WebKit::ExtensionCapabilityGranter::invalidateGrants(v21, buf);
  WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v25);
LABEL_45:
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(&v55);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(&v56);
}

void sub_19DC0CBF4(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  (*(*v5 + 8))(v5);
  WTF::RefCounted<WebKit::ExtensionCapabilityGranter>::deref(v4, v7);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(va1);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(va2);
  _Unwind_Resume(a1);
}

BOOL WebKit::finalizeGrant(const WTF::StringImpl **a1, uint64_t a2, id *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v14 = qword_1ED641008;
    result = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    WTF::String::utf8();
    if (v26)
    {
      v15 = v26 + 16;
    }

    else
    {
      v15 = 0;
    }

    *buf = 136446466;
    *&buf[4] = "finalizeGrant";
    *&buf[12] = 2082;
    *&buf[14] = v15;
    v16 = "%{public}s[envID=%{public}s] auxiliaryProcess is null";
LABEL_20:
    _os_log_error_impl(&dword_19D52D000, v14, OS_LOG_TYPE_ERROR, v16, buf, 0x16u);
    if (v26)
    {
      if (*v26 == 1)
      {
        WTF::fastFree(v26, v18);
      }

      else
      {
        --*v26;
      }
    }

    return 0;
  }

  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a2 + 392), a1, a3);
  v6 = v5;
  v7 = *(a2 + 392);
  if (v7)
  {
    v7 += 24 * *(v7 - 4);
  }

  if (v7 == v5)
  {
    v14 = qword_1ED641008;
    result = os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    WTF::String::utf8();
    if (v26)
    {
      v17 = v26 + 16;
    }

    else
    {
      v17 = 0;
    }

    *buf = 136446466;
    *&buf[4] = "finalizeGrant";
    *&buf[12] = 2082;
    *&buf[14] = v17;
    v16 = "%{public}s[envID=%{public}s] grant previously revoked";
    goto LABEL_20;
  }

  if (![a3[1] isValid])
  {
    v19 = qword_1ED641008;
    if (os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      v22 = v26 ? v26 + 16 : 0;
      *buf = 136446466;
      *&buf[4] = "finalizeGrant";
      *&buf[12] = 2082;
      *&buf[14] = v22;
      _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "%{public}s[envID=%{public}s] grant invalid", buf, 0x16u);
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v23);
        }

        else
        {
          --*v26;
        }
      }
    }

    v20 = *(a2 + 392);
    if (v20)
    {
      v21 = v20 + 24 * *(v20 - 4);
      if (v21 == v6)
      {
        return 0;
      }
    }

    else
    {
      if (!v6)
      {
        return 0;
      }

      v21 = 0;
    }

    if (v21 != v6)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((a2 + 392), v6);
    }

    return 0;
  }

  if ([*(v6 + 16) isValid])
  {
    v8 = qword_1ED641008;
    if (os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR))
    {
      WTF::String::utf8();
      if (v26)
      {
        v24 = v26 + 16;
      }

      else
      {
        v24 = 0;
      }

      *buf = 136446466;
      *&buf[4] = "finalizeGrant";
      *&buf[12] = 2082;
      *&buf[14] = v24;
      _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%{public}s[envID=%{public}s] grant not expected to be valid", buf, 0x16u);
      if (v26)
      {
        if (*v26 == 1)
        {
          WTF::fastFree(v26, v25);
        }

        else
        {
          --*v26;
        }
      }
    }

    *buf = 0;
    *&buf[8] = 0;
    v9 = WTF::fastMalloc(0x10);
    *buf = v9;
    *&buf[8] = 0x100000001;
    v10 = *(v6 + 8);
    *(v6 + 8) = 0;
    *v9 = v10;
    v11 = *(v6 + 16);
    *(v6 + 16) = 0;
    *(v9 + 1) = v11;
    WebKit::ExtensionCapabilityGranter::invalidateGrants(v9, buf);
    WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v12);
  }

  WebKit::ExtensionCapabilityGrant::operator=(v6 + 8, a3);
  return 1;
}

void sub_19DC0D04C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  WTF::Vector<WebKit::ExtensionCapabilityGrant,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>(uint64_t *a1, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *a2;
  if (*a2 == -1 || !v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19DC0D178);
  }

  v7 = *(v3 - 8);
  v8 = *(v6 + 4);
  if (v8 < 0x100)
  {
    v9 = WTF::StringImpl::hashSlowCase(v6);
  }

  else
  {
    v9 = v8 >> 8;
  }

  for (i = 0; ; v9 = i + v11)
  {
    v11 = v9 & v7;
    v12 = (v3 + 24 * (v9 & v7));
    v13 = *v12;
    if (*v12 == -1)
    {
      goto LABEL_10;
    }

    if (!v13)
    {
      break;
    }

    if (WTF::equal(v13, *a2, a3))
    {
      return v12;
    }

LABEL_10:
    ++i;
  }

  if (*a1)
  {
    return *a1 + 24 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

void WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove(uint64_t *a1, WTF::StringImpl **a2)
{
  v4 = *a2;
  *a2 = -1;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant((a2 + 1));
  v5 = *a1;
  v6 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v5 - 16) = v6;
  v7 = *(v5 - 4);
  if (6 * v6.i32[1] < v7 && v7 >= 9)
  {

    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::ExtensionCapabilityGrant>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::ExtensionCapabilityGrant,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::ExtensionCapabilityGrant>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v7 >> 1);
  }
}

uint64_t WTF::RefCounted<WebKit::ExtensionCapabilityGranter>::deref(uint64_t result, void *a2)
{
  if (*result == 1)
  {
    v2 = *(result + 8);
    *(result + 8) = 0;
    if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2);
      v5 = result;
      WTF::fastFree(v2, a2);
      result = v5;
    }

    if (*result == 1)
    {
      v3 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((result - 8), a2);

      return bmalloc::api::tzoneFree(v3, v4);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FEEB0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FEEE0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FEEB0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FEEE0;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6;
    if (v5)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    v42 = v9;
    WTF::String::String(&v52, v9);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v48, a2);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v12 = v45;
    v45 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v46;
    v46 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v47;
    v47 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = v48;
    v48 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v11);
    }

    v16 = v49;
    v49 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v11);
    }

    v17 = v50;
    v50 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v11);
    }

    v18 = v51;
    v51 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v11);
    }

    v19 = v52;
    v52 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v11);
    }

    v20 = *(v8 + 4);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      WTF::String::utf8();
      v23 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v23;
      _os_log_impl(&dword_19D52D000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v21 = v44[0];
      v44[0] = 0;
      if (v21)
      {
        if (*v21 == 1)
        {
          v21 = WTF::fastFree(v21, v22);
        }

        else
        {
          --*v21;
        }
      }
    }

    if (*v8 && v8[16] >= 4u)
    {
      v24 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v25 = *v24;
        if (v25)
        {
          break;
        }

        v26 = *v24;
        atomic_compare_exchange_strong_explicit(v24, &v26, v25 | 1, memory_order_acquire, memory_order_acquire);
        if (v26 == v25)
        {
          v27 = WTF::Logger::observers(v21);
          v28 = *(v27 + 12);
          if (v28)
          {
            v29 = *v27;
            v30 = *v27 + 8 * v28;
            do
            {
              v31 = *v29;
              *buf = 0;
              WTF::String::String(&buf[8], v42);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<WebKit::PlatformExtensionCapabilityGrants,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v61, a2);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v31 + 16))(v31, v8, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v32);
              for (i = 120; i != -8; i -= 16)
              {
                v34 = *&buf[i];
                *&buf[i] = 0;
                if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v34, v22);
                }
              }

              ++v29;
            }

            while (v29 != v30);
          }

          v35 = 1;
          atomic_compare_exchange_strong_explicit(v24, &v35, 0, memory_order_release, memory_order_relaxed);
          if (v35 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v36 = v53;
    v53 = 0;
    if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v22);
    }
  }

  v37 = 0;
  v38 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v37, 1u, memory_order_acquire, memory_order_acquire);
  if (v37)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v39 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 0, memory_order_release, memory_order_relaxed);
  if (v38 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v39)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v39, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
    v40 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v39);
    return WTF::fastFree(v40, v41);
  }

  return result;
}

void sub_19DC0DA4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, WTF::StringImpl *a22, WTF::StringImpl *a23, WTF::StringImpl *a24, WTF::StringImpl *a25, WTF::StringImpl *a26, uint64_t a27, WTF::StringImpl *a28, char a29)
{
  v31 = 1;
  atomic_compare_exchange_strong_explicit(v29, &v31, 0, memory_order_release, memory_order_relaxed);
  if (v31 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a28)
  {
    if (atomic_fetch_add_explicit(a28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a28, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v9 = *(result + 16) >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>(result, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, (v5 + 113));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

void sub_19DC0DD98(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::NativePromise(uint64_t a1, __int128 *a2)
{
  v34[2] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FEF10;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 72) = a1 + 88;
  *(a1 + 32) = v4;
  *(a1 + 16) = v3;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = WTF::NativePromiseBase::logChannel(a1);
  v6 = v5;
  if (!*v5 || v5[16] < 4u)
  {
    return a1;
  }

  WTF::String::String(&v30, "creating ");
  WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v29, a1);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v9 = v29;
    v29 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v30;
    v30 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = *(v6 + 4);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      WTF::String::utf8();
      v14 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v14;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v12 = v28[0];
      v28[0] = 0;
      if (v12)
      {
        if (*v12 == 1)
        {
          v12 = WTF::fastFree(v12, v13);
        }

        else
        {
          --*v12;
        }
      }
    }

    if (*v6 && v6[16] >= 4u)
    {
      v15 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v16 = *v15;
        if (v16)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
        if (v17 == v16)
        {
          v18 = WTF::Logger::observers(v12);
          v19 = *(v18 + 12);
          if (v19)
          {
            v20 = *v18;
            v21 = *v18 + 8 * v19;
            do
            {
              v22 = *v20;
              *buf = 0;
              WTF::String::String(&buf[8], "creating ");
              v33 = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(v34, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v22 + 16))(v22, v6, 4, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v23);
              for (i = 24; i != -8; i -= 16)
              {
                v25 = *&buf[i];
                *&buf[i] = 0;
                if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v25, v13);
                }
              }

              ++v20;
            }

            while (v20 != v21);
          }

          v26 = 1;
          atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
          if (v26 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v27 = v31;
    v31 = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v13);
      }
    }

    return a1;
  }

  __break(0xC471u);
  return result;
}

void sub_19DC0E110(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v18, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a9, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v21);
  v22 = *(v16 + 64);
  if (v22 >= 2 && v22 != 255)
  {
    v23 = *(v16 + 56);
    *(v16 + 56) = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }
  }

  *(v16 + 64) = -1;
  _Unwind_Resume(a1);
}

uint64_t WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    v5 = *(v1 + 96);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

void sub_19DC0E334(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v35[2] = *MEMORY[0x1E69E9840];
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = *(v2 + 16) >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::String::String(&v31, "destroying ");
    WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v30, a1);
    *buf = v31;
    v29[0] = v30;
    result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v29, &v32);
    if (!v32)
    {
      __break(0xC471u);
      return result;
    }

    v6 = v30;
    v30 = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v5);
    }

    v7 = v31;
    v31 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v5);
    }

    v8 = *(v2 + 32);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      WTF::String::utf8();
      v11 = v29[0] ? v29[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v9 = v29[0];
      v29[0] = 0;
      if (v9)
      {
        if (*v9 == 1)
        {
          v9 = WTF::fastFree(v9, v10);
        }

        else
        {
          --*v9;
        }
      }
    }

    if (*v2 && *(v2 + 16) >= 4u)
    {
      v12 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v13 = *v12;
        if (v13)
        {
          break;
        }

        v14 = *v12;
        atomic_compare_exchange_strong_explicit(v12, &v14, v13 | 1, memory_order_acquire, memory_order_acquire);
        if (v14 == v13)
        {
          v15 = WTF::Logger::observers(v9);
          v16 = *(v15 + 12);
          if (v16)
          {
            v17 = *v15;
            v18 = *v15 + 8 * v16;
            do
            {
              v19 = *v17;
              *buf = 0;
              WTF::String::String(&buf[8], "destroying ");
              v34 = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(v35, a1);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 2uLL);
              (*(*v19 + 16))(v19, v2, 4, v29);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v20);
              for (i = 24; i != -8; i -= 16)
              {
                v22 = *&buf[i];
                *&buf[i] = 0;
                if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v22, v10);
                }
              }

              ++v17;
            }

            while (v17 != v18);
          }

          v23 = 1;
          atomic_compare_exchange_strong_explicit(v12, &v23, 0, memory_order_release, memory_order_relaxed);
          if (v23 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v24 = v32;
    v32 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v10);
    }
  }

  WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v25);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, v26);
  v27 = *(a1 + 64);
  if (v27 >= 2 && v27 != 255)
  {
    v28 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

WTF::StringImpl *WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(void *a1, uint64_t a2)
{
  WTF::LogArgument<void const*>::toString();
  WTF::Logger::LogSiteIdentifier::toString(&v7, (a2 + 16));
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>("NativePromise", 14, &v8, 60, &v7, 0x3Eu, a1);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

void sub_19DC0E430(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10)
{
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

atomic_uint **WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

void sub_19DC0E574(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DC0E91C(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, WTF::StringImpl *a14, char a15, WTF::StringImpl *a16)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16 + 96, a2);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16 + 72, v20);
  v21 = *(v16 + 64);
  if (v21 >= 2 && v21 != 255)
  {
    v22 = *(v16 + 56);
    *(v16 + 56) = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }
  }

  *(v16 + 64) = -1;
  _Unwind_Resume(a1);
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [27],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>(uint64_t a1, WTF::Logger::LogSiteIdentifier *this, const char *a3, uint64_t a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v32, this);
  WTF::String::String(&v31, a3);
  WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v30, a4);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v32, &v31, &v30, &v33);
  v8 = v30;
  v30 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  v9 = v31;
  v31 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = v32;
  v32 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = *(a1 + 32);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    WTF::String::utf8();
    v14 = v29[0] ? v29[0] + 16 : 0;
    *buf = 136446210;
    v35 = v14;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v12 = v29[0];
    v29[0] = 0;
    if (v12)
    {
      if (*v12 == 1)
      {
        v12 = WTF::fastFree(v12, v13);
      }

      else
      {
        --*v12;
      }
    }
  }

  if (*a1 && *(a1 + 16) >= 4u)
  {
    v15 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v16 = *v15;
      if (v16)
      {
        break;
      }

      v17 = *v15;
      atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
      if (v17 == v16)
      {
        v18 = WTF::Logger::observers(v12);
        v19 = *(v18 + 12);
        if (v19)
        {
          v20 = *v18;
          v21 = *v18 + 8 * v19;
          do
          {
            v22 = *v20;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString((&v35 + 4), this);
            v36 = 0;
            WTF::String::String(v37, a3);
            v37[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(v38, a4);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v29, buf, 3uLL);
            (*(*v22 + 16))(v22, a1, 4, v29);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v29, v23);
            for (i = 40; i != -8; i -= 16)
            {
              v25 = *&buf[i];
              *&buf[i] = 0;
              if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v25, v13);
              }
            }

            ++v20;
          }

          while (v20 != v21);
        }

        v26 = 1;
        atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
        if (v26 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  result = v33;
  v33 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void sub_19DC0ED84(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, WTF::StringImpl *a13, WTF::StringImpl *a14, uint64_t a15, WTF::StringImpl *a16, char a17)
{
  v19 = 1;
  atomic_compare_exchange_strong_explicit(v17, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_19DC0EF4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3 + 2);
      (*(*v3 + 16))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit26ExtensionCapabilityGranter24setMediaCapabilityActiveERNS3_15MediaCapabilityEbE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10FEF38;
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
  }

  WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit26ExtensionCapabilityGranter24setMediaCapabilityActiveERNS3_15MediaCapabilityEbE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEED0Ev(uint64_t a1)
{
  *a1 = &unk_1F10FEF38;
  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
  }

  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
  }

  WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>::~NativePromiseProducer((a1 + 8));

  return WTF::fastFree(a1, v4);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_L11invokeAsyncIZN6WebKit26ExtensionCapabilityGranter24setMediaCapabilityActiveERNS3_15MediaCapabilityEbE3__0EEDaRNS_24SerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlvE_vJEE4callEv(uint64_t a1)
{
  v82[1] = *MEMORY[0x1E69E9840];
  v63[0] = 0;
  v2 = *(a1 + 64);
  v3 = *(a1 + 56);
  if (v2 == 1)
  {
    [v3 activateWithError:v63];
  }

  else
  {
    [v3 suspendWithError:v63];
  }

  v4 = v63[0];
  if (v63[0])
  {
    v5 = qword_1ED641008;
    if (os_log_type_enabled(qword_1ED641008, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "operator()";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "%{public}s failed with error: %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = "operator()";
    v74 = 0;
    v6 = WTF::fastMalloc(0x78);
    WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::NativePromise(v6, buf);
    v7 = 0;
    v8 = (v6 + 48);
    v59 = (v6 + 48);
    LOBYTE(v60) = 1;
    atomic_compare_exchange_strong_explicit((v6 + 48), &v7, 1u, memory_order_acquire, memory_order_acquire);
    if (v7)
    {
      v8 = MEMORY[0x19EB01E30]();
    }

    v9 = WTF::NativePromiseBase::logChannel(v8);
    if (*v9 && v9[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>(v9, buf, " rejecting ", v6);
    }

    v10 = *(v6 + 64);
    if (v10 >= 2 && v10 != 255)
    {
      v11 = *(v6 + 56);
      *(v6 + 56) = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    *(v6 + 56) = 256;
    *(v6 + 64) = 1;
    v12 = WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::dispatchAll(v6, &v59);
  }

  else
  {
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = "operator()";
    v74 = 0;
    v6 = WTF::fastMalloc(0x78);
    WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::NativePromise(v6, buf);
    v13 = 0;
    v14 = (v6 + 48);
    v59 = (v6 + 48);
    LOBYTE(v60) = 1;
    atomic_compare_exchange_strong_explicit((v6 + 48), &v13, 1u, memory_order_acquire, memory_order_acquire);
    if (v13)
    {
      v14 = MEMORY[0x19EB01E30]();
    }

    v15 = WTF::NativePromiseBase::logChannel(v14);
    if (*v15 && v15[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>(v15, buf, " resolving ", v6);
    }

    v16 = *(v6 + 64);
    if (v16 >= 2 && v16 != 255)
    {
      v17 = *(v6 + 56);
      *(v6 + 56) = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    *(v6 + 56) = 0;
    *(v6 + 64) = 1;
    v12 = WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::dispatchAll(v6, &v59);
  }

  v18 = v60;
  if (v60 == 1)
  {
    v12 = v59;
    atomic_compare_exchange_strong_explicit(v59, &v18, 0, memory_order_release, memory_order_relaxed);
    if (v18 != 1)
    {
      v12 = WTF::Lock::unlockSlow(v12);
    }
  }

  v19 = 0;
  v59 = 0;
  v60 = 0;
  v61 = "invokeAsync proxy";
  v62 = 0;
  v20 = (v6 + 48);
  atomic_compare_exchange_strong_explicit((v6 + 48), &v19, 1u, memory_order_acquire, memory_order_acquire);
  if (v19)
  {
    v12 = MEMORY[0x19EB01E30](v6 + 48);
  }

  v21 = a1 + 8;
  *(v6 + 112) = 1;
  v22 = *(a1 + 8);
  if (v22)
  {
    atomic_fetch_add(v22 + 2, 1u);
  }

  v23 = WTF::NativePromiseBase::logChannel(v12);
  v24 = v23;
  if (!*v23 || v23[16] < 4u)
  {
    goto LABEL_85;
  }

  WTF::Logger::LogSiteIdentifier::toString(&v71, &v59);
  WTF::String::String(&v70, " invoking chainTo() [");
  WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v69, v6);
  WTF::String::String(&v68, " chainedPromise:");
  WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v67, v22);
  WTF::String::String(&v66, " isNothing:");
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v64, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v71, &v70, &v69, &v68, &v67, &v66, &v65, &v64, &v72);
  if (!v72)
  {
    __break(0xC471u);
    return result;
  }

  v27 = v64;
  v64 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v26);
  }

  v28 = v65;
  v65 = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v26);
  }

  v29 = v66;
  v66 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v26);
  }

  v30 = v67;
  v67 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v26);
  }

  v31 = v68;
  v68 = 0;
  if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v31, v26);
  }

  v32 = v69;
  v69 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v26);
  }

  v33 = v70;
  v70 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v26);
  }

  v34 = v71;
  v71 = 0;
  if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v34, v26);
  }

  v35 = *(v24 + 4);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v36)
  {
    WTF::String::utf8();
    v38 = v63[0] ? v63[0] + 16 : 0;
    *buf = 136446210;
    *&buf[4] = v38;
    _os_log_impl(&dword_19D52D000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v36 = v63[0];
    v63[0] = 0;
    if (v36)
    {
      if (*v36 == 1)
      {
        v36 = WTF::fastFree(v36, v37);
      }

      else
      {
        --*v36;
      }
    }
  }

  if (*v24 && v24[16] >= 4u)
  {
    v39 = MEMORY[0x1E696EBC0];
    while (1)
    {
      v40 = *v39;
      if (v40)
      {
        break;
      }

      v41 = *v39;
      atomic_compare_exchange_strong_explicit(v39, &v41, v40 | 1, memory_order_acquire, memory_order_acquire);
      if (v41 == v40)
      {
        v42 = WTF::Logger::observers(v36);
        v43 = *(v42 + 12);
        if (v43)
        {
          v44 = *v42;
          v45 = *v42 + 8 * v43;
          do
          {
            v46 = *v44;
            *buf = 0;
            WTF::Logger::LogSiteIdentifier::toString(&buf[8], &v59);
            *&buf[16] = 0;
            WTF::String::String(&v74, " invoking chainTo() [");
            v75 = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v76, v6);
            v77 = 0;
            WTF::String::String(v78, " chainedPromise:");
            v78[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>>::toString(&v79, v22);
            v80 = 0;
            WTF::String::String(v81, " isNothing:");
            v81[2] = 0;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v81[6] = 0;
            WTF::String::String(v82, "]");
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v63, buf, 8uLL);
            (*(*v46 + 16))(v46, v24, 4, v63);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v63, v47);
            for (i = 120; i != -8; i -= 16)
            {
              v49 = *&buf[i];
              *&buf[i] = 0;
              if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v49, v37);
              }
            }

            ++v44;
          }

          while (v44 != v45);
        }

        v50 = 1;
        atomic_compare_exchange_strong_explicit(v39, &v50, 0, memory_order_release, memory_order_relaxed);
        v20 = (v6 + 48);
        if (v50 != 1)
        {
          WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
        }

        break;
      }
    }
  }

  v51 = v72;
  v72 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v37);
    if (v22)
    {
LABEL_86:
      if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22 + 2);
        (*(*v22 + 16))(v22);
      }
    }
  }

  else
  {
LABEL_85:
    if (v22)
    {
      goto LABEL_86;
    }
  }

  v52 = atomic_load((v6 + 113));
  v53 = *v21;
  if (*v21)
  {
    atomic_fetch_add((v53 + 8), 1u);
  }

  result = WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::setDispatchMode(v53, v52, &v59);
  if (v53 && atomic_fetch_add((v53 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v53 + 8));
    result = (*(*v53 + 16))(v53);
  }

  if (*(v6 + 64))
  {
    result = WTF::NativePromise<void,WebKit::ExtensionCapabilityGrantError,0u>::settleChainedPromise(v6, v21);
  }

  else
  {
    v54 = *(v6 + 108);
    if (v54 == *(v6 + 104))
    {
      result = WTF::Vector<WTF::NativePromiseProducer<void,WebKit::ExtensionCapabilityGrantError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v6 + 96, v54 + 1, v21);
      v21 = result;
      LODWORD(v54) = *(v6 + 108);
    }

    v55 = *(v6 + 96) + 40 * v54;
    v56 = *v21;
    *v21 = 0;
    *v55 = v56;
    v57 = *(v21 + 8);
    *(v55 + 24) = *(v21 + 24);
    *(v55 + 8) = v57;
    ++*(v6 + 108);
  }

  v58 = 1;
  atomic_compare_exchange_strong_explicit(v20, &v58, 0, memory_order_release, memory_order_relaxed);
  if (v58 != 1)
  {
    result = WTF::Lock::unlockSlow(v20);
  }

  if (atomic_fetch_add((v6 + 8), 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, (v6 + 8));
    return (*(*v6 + 16))(v6);
  }

  return result;
}