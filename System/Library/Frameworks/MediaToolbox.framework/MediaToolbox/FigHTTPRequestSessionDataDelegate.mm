@interface FigHTTPRequestSessionDataDelegate
- (FigHTTPRequestSessionDataDelegate)initWithResponseDispositionOption:(BOOL)option;
- (FigRetainProxy)_copyAndLockRequestForTask:(id)task;
- (id)adoptVoucherFromRetainProxy:(FigRetainProxy *)proxy;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_deregisterFigHTTPRequestForDataTask:(id)task;
- (void)_registerFigHTTPRequest:(OpaqueFigHTTPRequest *)request forDataTask:(id)task;
- (void)dealloc;
- (void)restoreVoucher:(id)voucher;
@end

@implementation FigHTTPRequestSessionDataDelegate

- (FigHTTPRequestSessionDataDelegate)initWithResponseDispositionOption:(BOOL)option
{
  v7.receiver = self;
  v7.super_class = FigHTTPRequestSessionDataDelegate;
  v4 = [(FigHTTPRequestSessionDataDelegate *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_taskToFigHTTPRequest = v5;
    if (v5 && (v4->_taskToFigHTTPRequestMutex = FigReentrantMutexCreate(), v4->_taskToFigHTTPRequest))
    {
      v4->_doesIgnoreDidReceiveResponseDisposition = option;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  if (self->_taskToFigHTTPRequestMutex)
  {
    FigSimpleMutexDestroy();
  }

  v3.receiver = self;
  v3.super_class = FigHTTPRequestSessionDataDelegate;
  [(FigHTTPRequestSessionDataDelegate *)&v3 dealloc];
}

- (void)_registerFigHTTPRequest:(OpaqueFigHTTPRequest *)request forDataTask:(id)task
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  [(NSMutableDictionary *)self->_taskToFigHTTPRequest setObject:*DerivedStorage forKey:task];

  FigSimpleMutexUnlock();
}

- (void)_deregisterFigHTTPRequestForDataTask:(id)task
{
  FigSimpleMutexLock();
  [(NSMutableDictionary *)self->_taskToFigHTTPRequest removeObjectForKey:task];

  FigSimpleMutexUnlock();
}

- (id)adoptVoucherFromRetainProxy:(FigRetainProxy *)proxy
{
  FigRetainProxyGetOwner();
  v3 = *(CMBaseObjectGetDerivedStorage() + 560);

  return voucher_adopt();
}

- (void)restoreVoucher:(id)voucher
{
  if (voucher)
  {
    v3 = voucher_adopt();
  }
}

- (FigRetainProxy)_copyAndLockRequestForTask:(id)task
{
  FigSimpleMutexLock();
  v5 = [(NSMutableDictionary *)self->_taskToFigHTTPRequest objectForKey:task];
  if (v5)
  {
    FigRetainProxyRetain();
    FigSimpleMutexUnlock();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      FigRetainProxyUnlockMutex();
      FigRetainProxyRelease();
      return 0;
    }
  }

  else
  {
    FigSimpleMutexUnlock();
  }

  return v5;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  if (![challenge previousFailureCount])
  {
    (*(handler + 2))(handler, 1, 0);
    goto LABEL_6;
  }

  if ([challenge previousFailureCount] != 1 || (objc_msgSend(objc_msgSend(objc_msgSend(challenge, "protectionSpace"), "authenticationMethod"), "isEqual:", *MEMORY[0x1E695AB40]) & 1) != 0)
  {
    goto LABEL_4;
  }

  theArray = 0;
  if (FigCFHTTPCopyClientCertChain(&theArray))
  {
    goto LABEL_16;
  }

  if (!theArray)
  {
LABEL_4:
    (*(handler + 2))(handler, 2, 0);
    goto LABEL_6;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (!ValueAtIndex || (v9 = ValueAtIndex, v10 = CFGetTypeID(ValueAtIndex), v10 != SecIdentityGetTypeID()) || (v11 = *MEMORY[0x1E695E480], Count = CFArrayGetCount(theArray), (MutableCopy = CFArrayCreateMutableCopy(v11, Count, theArray)) == 0))
  {
LABEL_16:
    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_4;
  }

  v14 = MutableCopy;
  CFArrayRemoveValueAtIndex(MutableCopy, 0);
  v15 = [objc_alloc(MEMORY[0x1E695AC48]) initWithIdentity:v9 certificates:v14 persistence:1];
  if (!v15)
  {
    CFRelease(v14);
    goto LABEL_16;
  }

  (*(handler + 2))(handler, 0, v15);
  CFRelease(v14);
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_6:
  objc_autoreleasePoolPop(v7);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v10 = objc_autoreleasePoolPush();
  v11 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (!v11)
  {
    [FigHTTPRequestSessionDataDelegate URLSession:handler task:? didReceiveChallenge:? completionHandler:?];
    goto LABEL_18;
  }

  v12 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v11];
  FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated() || *(DerivedStorage + 172))
  {
LABEL_16:
    [FigHTTPRequestSessionDataDelegate URLSession:task:didReceiveChallenge:completionHandler:];
    goto LABEL_17;
  }

  if ([challenge previousFailureCount] || !objc_msgSend(challenge, "proposedCredential"))
  {
    if (challenge)
    {
      if (*(DerivedStorage + 464))
      {
        if (!FigCustomURLRequestInfoCreateMutable() && !FigCustomURLRequestInfoSetNSURLAuthenticationChallenge())
        {
          v14 = *(DerivedStorage + 464);
          v15 = *DerivedStorage;
          v16 = *(DerivedStorage + 64);
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v17)
          {
            if (!v17(v14, 0, v15, v16, figHTTPCustomURLLoaderCredentialCallback, DerivedStorage + 480))
            {
              v18 = *(DerivedStorage + 472);
              if (v18)
              {
                _Block_release(v18);
                *(DerivedStorage + 472) = 0;
              }

              *(DerivedStorage + 472) = _Block_copy(handler);
              goto LABEL_17;
            }
          }
        }
      }
    }

    goto LABEL_16;
  }

  (*(handler + 2))(handler, 1, 0);
LABEL_17:
  [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v12];
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
LABEL_18:
  objc_autoreleasePoolPop(v10);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  cf[16] = *MEMORY[0x1E69E9840];
  v94 = 0;
  v93 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (!v11)
  {
    v94 = -12420;
    goto LABEL_77;
  }

  selfCopy = self;
  v12 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v11];
  Owner = FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v89 = v12;
  if (*(DerivedStorage + 172))
  {
    v94 = -12420;
    self = selfCopy;
    goto LABEL_76;
  }

  v15 = DerivedStorage;
  handlerCopy = handler;
  *(DerivedStorage + 216) = FigGetUpTimeNanoseconds();
  v16 = [objc_msgSend(objc_msgSend(task "_incompleteTaskMetrics")];
  if (objc_opt_respondsToSelector())
  {
    _usesMultipath = [v16 _usesMultipath];
  }

  else
  {
    _usesMultipath = 0;
  }

  *(v15 + 536) = _usesMultipath;
  *(v15 + 537) = [v16 isExpensive];
  [objc_msgSend(v16 "domainLookupEndDate")];
  *(v15 + 264) = (v18 * 1000000000.0);
  [objc_msgSend(v16 "secureConnectionEndDate")];
  *(v15 + 272) = (v19 * 1000000000.0);
  [objc_msgSend(v16 "connectEndDate")];
  *(v15 + 280) = (v20 * 1000000000.0);
  [objc_msgSend(v16 "connectEndDate")];
  *(v15 + 288) = (v21 * 1000000000.0);
  [objc_msgSend(v16 "requestEndDate")];
  *(v15 + 296) = (v22 * 1000000000.0);
  [objc_msgSend(v16 "requestStartDate")];
  *(v15 + 312) = -((*(v15 + 264) + *(v15 + 280)) - v23 * 1000000000.0);
  *(v15 + 320) = [v16 isReusedConnection];
  cf[0] = 0;
  v24 = *MEMORY[0x1E695E480];
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v25 && !v25(Owner, @"FHRP_CFNetworkTimingData", v24, cf))
  {
    v95 = 0.0;
    v92 = 0.0;
    if (!FigCFDictionaryGetDoubleIfPresent() && !FigCFDictionaryGetDoubleIfPresent() && !FigCFDictionaryGetDoubleIfPresent())
    {
      FigCFDictionaryGetDoubleIfPresent();
    }

    if (v95 > 0.0)
    {
      *(v15 + 208) = *(v15 + 192) + ((v95 - *(v15 + 184)) * 1000000000.0);
    }

    FigCFDictionaryGetDoubleIfPresent();
    if (v92 > 0.0)
    {
      *(v15 + 216) = *(v15 + 192) + ((v92 - *(v15 + 184)) * 1000000000.0);
    }

    CFRelease(cf[0]);
  }

  if (!*(v15 + 208))
  {
    *(v15 + 208) = *(v15 + 200);
  }

  [response _CFURLResponse];
  IsCellular = CFURLResponseConnectionIsCellular();
  *(v15 + 376) = IsCellular;
  if (IsCellular)
  {
    [response _CFURLResponse];
    *(v15 + 377) = CFURLResponseConnectionDidFallback();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allHeaderFields = [response allHeaderFields];
    *(v15 + 144) = allHeaderFields;
    if (!allHeaderFields)
    {
      _figHTTPRequestCreateErrorComment(v15, v28, @"NULL HTTP response headers", v29, v30, v31, v32, v33, v84);
      v94 = FigSignalErrorAtGM();
    }

    statusCode = [response statusCode];
    v35 = statusCode;
    *(v15 + 416) = 0;
    *(v15 + 424) = 0;
  }

  else if ([objc_msgSend(objc_msgSend(response "URL")] && objc_msgSend(objc_msgSend(objc_msgSend(response, "URL"), "scheme"), "caseInsensitiveCompare:", @"file"))
  {
    v36 = objc_opt_class();
    v85 = [objc_msgSend(response "URL")];
    _figHTTPRequestCreateErrorComment(v15, v37, @"Received response of type %@ for scheme %@", v38, v39, v40, v41, v42, v36);
    statusCode = FigSignalErrorAtGM();
    v35 = 0;
    v94 = statusCode;
  }

  else
  {
    *(v15 + 144) = objc_alloc_init(MEMORY[0x1E695DF20]);
    statusCode = [response expectedContentLength];
    *(v15 + 416) = statusCode;
    v35 = 200;
  }

  *(v15 + 457) = 1;
  FigBytePumpGetFigBaseObject(statusCode);
  if (figHTTPShouldReportNetworkHistory(v15))
  {
    if (*(v15 + 176))
    {
      figHTTPSetIsDormant(Owner, 0);
    }

    else if (!*(v15 + 177))
    {
      *(v15 + 177) = 1;
      if (!*(v15 + 496))
      {
        FigNetworkHistoryRequestBecameActive();
      }

      FigNetworkHistorySetRequestSentTimestamp();
      figHTTPRequestProjectedResponseSize(v15);
      FigNetworkHistorySetRequestLatency();
    }
  }

  Callback = v94;
  if (v94)
  {
    goto LABEL_72;
  }

  v44 = [MEMORY[0x1E695AC08] localizedStringForStatusCode:v35];
  Response = CFHTTPMessageCreateResponse(v24, v35, v44, *MEMORY[0x1E695ADB8]);
  *(v15 + 152) = Response;
  if (Response)
  {
    v46 = Response;
    v47 = *(v15 + 144);
    if (v47)
    {
      CFDictionaryApplyFunction(v47, figApplyHeaderToCFHTTPMessaage, v46);
    }
  }

  if (!*(v15 + 80))
  {
    *(v15 + 80) = CFRetain([response URL]);
  }

  v48 = *(v15 + 368);
  if (v48)
  {
    CFRelease(v48);
  }

  [response _CFURLResponse];
  *(v15 + 368) = CFURLResponseCopyPeerAddress();
  FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(v35, &v94, &v93);
  if (v94)
  {
    v49 = *(v15 + 520);
    v50 = v93;
    *(v15 + 520) = v93;
    if (v50)
    {
      CFRetain(v50);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    LODWORD(v92) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [*(v15 + 144) valueForKey:@"X-Error-Description"];
    goto LABEL_63;
  }

  if (*(v15 + 170))
  {
    v52 = [*(v15 + 144) valueForKey:@"Content-Encoding"];
    if (v52)
    {
      if (![v52 caseInsensitiveCompare:@"gzip"])
      {
        *(v15 + 171) = 1;
      }
    }
  }

  if (*(v15 + 168))
  {
    cf[0] = 0;
    v95 = 0.0;
    v92 = 0.0;
    type = OS_LOG_TYPE_DEFAULT;
    if (FigCFHTTPGetContentRangeFromHeaderString([*(v15 + 144) valueForKey:@"Content-Range"], cf, &v95, &v92, &type))
    {
      v60 = *(v15 + 120);
      v59 = *(v15 + 128);
      if (cf[0] == v60)
      {
        v61 = v95;
        if (!v59 || *&v95 == cf[0] + v59 - 1 || type && *&v95 + 1 == *&v92)
        {
          v62 = *&v95 - cf[0] + 1;
          *(v15 + 416) = v62;
          if (v59 > v62)
          {
            *(v15 + 128) = v62;
          }

          goto LABEL_66;
        }
      }

      else
      {
        v61 = v95;
      }

      v86 = cf[0];
      v87 = v61;
      v85 = *(v15 + 128);
      _figHTTPRequestCreateErrorComment(v15, v53, @"content range mismatch - should be start %lld length %lld is start %lld length %lld", v54, v55, v56, v57, v58, v60);
LABEL_85:
      v94 = FigSignalErrorAtGM();
      goto LABEL_63;
    }

    if (v35 == 206 && !*(v15 + 128))
    {
      v94 = FigSignalErrorAtGM();
      _figHTTPRequestCreateErrorComment(v15, v71, @"have 206 with no Content-Range, and no end length", v72, v73, v74, v75, v76, v84);
      goto LABEL_63;
    }
  }

LABEL_66:
  if (*(v15 + 416) || *(v15 + 171))
  {
    goto LABEL_68;
  }

  cf[0] = 0;
  if (FigCFHTTPGetContentLengthFromHeaderString([*(v15 + 144) valueForKey:@"Content-Length"], cf))
  {
    v70 = cf[0];
    *(v15 + 416) = cf[0];
    if (!*(v15 + 168))
    {
      goto LABEL_68;
    }

    if (v35 == 304)
    {
      *(v15 + 416) = 0;
      goto LABEL_68;
    }

    v83 = *(v15 + 128);
    if (v83)
    {
      if (v83 == v70)
      {
LABEL_68:
        if (*(v15 + 365))
        {
          v63 = 17;
        }

        else
        {
          v63 = 1;
        }

        Callback = figHTTPRequestPerformReadCallback(Owner, 0, 0, 0, v63, 0);
        v94 = Callback;
LABEL_72:
        handler = handlerCopy;
        goto LABEL_73;
      }
    }

    if (*(v15 + 364))
    {
LABEL_98:
      *(v15 + 365) = 1;
      goto LABEL_68;
    }

    v85 = v70;
    _figHTTPRequestCreateErrorComment(v15, v64, @"byte range length mismatch - should be length %lld is length %lld", v65, v66, v67, v68, v69, *(v15 + 128));
    goto LABEL_85;
  }

  if (v35 == 304 || !*(v15 + 168))
  {
    goto LABEL_68;
  }

  if (*(v15 + 364))
  {
    goto LABEL_98;
  }

  v94 = FigSignalErrorAtGM();
  _figHTTPRequestCreateErrorComment(v15, v77, @"byte range and no content length - error code is %d", v78, v79, v80, v81, v82, v35);
LABEL_63:
  handler = handlerCopy;
  Callback = v94;
LABEL_73:
  self = selfCopy;
  if (Callback != -12785 && Callback)
  {
    figHTTPRequestPerformReadCallback(Owner, 0, 0, 0, 2u, Callback);
  }

LABEL_76:
  [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v89, v84, v85, v86, *&v87];
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  if (!v94)
  {
    (*(handler + 2))(handler, 1);
    goto LABEL_80;
  }

LABEL_77:
  (*(handler + 2))(handler, 0);
  if (self->_doesIgnoreDidReceiveResponseDisposition)
  {
    [task cancel];
  }

LABEL_80:
  objc_autoreleasePoolPop(v10);
  if (v93)
  {
    CFRelease(v93);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  if (data)
  {
    v8 = CFRetain(data);
  }

  else
  {
    v8 = 0;
  }

  v9 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (!v9)
  {
    goto LABEL_59;
  }

  v10 = v9;
  v11 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v9];
  Owner = FigRetainProxyGetOwner();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  _incompleteTaskMetrics = *(DerivedStorage + 256);
  if (!_incompleteTaskMetrics)
  {
    _incompleteTaskMetrics = [*(DerivedStorage + 504) _incompleteTaskMetrics];
  }

  v15 = [objc_msgSend(_incompleteTaskMetrics "transactionMetrics")];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  if (v15)
  {
    v16 = v15;
    if (nw_data_transfer_report_get_state([v15 _dataTransferReport]) == nw_data_transfer_report_state_collected)
    {
      transport_smoothed_rtt_milliseconds = nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds([v16 _dataTransferReport], 0);
      *(v48 + 6) = transport_smoothed_rtt_milliseconds;
      if (transport_smoothed_rtt_milliseconds)
      {
        goto LABEL_14;
      }
    }

    else if (*(v48 + 6))
    {
      goto LABEL_14;
    }

    if ([v16 _establishmentReport])
    {
      _establishmentReport = [v16 _establishmentReport];
      enumerate_block = MEMORY[0x1E69E9820];
      *v45 = 3221225472;
      *&v45[8] = __figHTTPGetConnectionRTT_block_invoke;
      *&v45[16] = &unk_1E748EF08;
      v46 = &v47;
      nw_establishment_report_enumerate_protocols(_establishmentReport, &enumerate_block);
    }
  }

LABEL_14:
  _Block_object_dispose(&v47, 8);
  if (!*(DerivedStorage + 172))
  {
    v43 = v11;
    figHTTPSetIsDormant(Owner, 0);
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    *(DerivedStorage + 232) = figHTTPCapUptimeToResponseEndTime(DerivedStorage, UpTimeNanoseconds);
    if (figHTTPShouldReportNetworkHistory(DerivedStorage))
    {
      [data length];
      FigNetworkHistoryRequestReceivedBytes();
    }

    v20 = objc_autoreleasePoolPush();
    Length = CFDataGetLength(v8);
    OutputBuffer = figHttpRequestEnsureNotTooManyBytes(Owner, Length);
    v23 = *(DerivedStorage + 365);
    if (OutputBuffer)
    {
      v25 = 0;
    }

    else
    {
      if (*(DerivedStorage + 365))
      {
        v24 = *(DerivedStorage + 424);
        v25 = *(DerivedStorage + 120) - v24;
        if (v25 < Length)
        {
          *(DerivedStorage + 365) = 0;
          goto LABEL_25;
        }
      }

      else
      {
        v25 = 0;
        if (Length)
        {
          goto LABEL_25;
        }

        v24 = *(DerivedStorage + 424);
      }

      *(DerivedStorage + 424) = v24 + Length;
    }

    if (v23)
    {
LABEL_54:
      if (!FigRetainProxyIsInvalidated())
      {
        if (OutputBuffer)
        {
          [FigHTTPRequestSessionDataDelegate URLSession:? dataTask:? didReceiveData:?];
        }

        else
        {
          *(DerivedStorage + 240) = FigGetUpTimeNanoseconds();
        }
      }

      objc_autoreleasePoolPop(v20);
      v11 = v43;
      goto LABEL_58;
    }

LABEL_25:
    v42 = v20;
    if (*(DerivedStorage + 16))
    {
      selfCopy = self;
      v26 = FigRetainProxyGetOwner();
      v27 = CMBaseObjectGetDerivedStorage();
      v28 = CFDataGetLength(v8) - v25;
      *(v27 + 424) += v25;
      if (v28 < 1)
      {
LABEL_40:
        OutputBuffer = 0;
      }

      else
      {
        while (1)
        {
          v47 = 0;
          enumerate_block = 0;
          OutputBuffer = figHTTPRequestGetOutputBuffer(v26, &enumerate_block, &v47);
          if (FigRetainProxyIsInvalidated() || OutputBuffer)
          {
            break;
          }

          if (!*(v27 + 384))
          {
            goto LABEL_40;
          }

          if (v47 >= v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = v47;
          }

          v51.location = v25;
          v51.length = v29;
          CFDataGetBytes(v8, v51, enumerate_block);
          v30 = *(v27 + 408) - v29;
          *(v27 + 400) += v29;
          *(v27 + 408) = v30;
          if (*(v27 + 362) || !v30)
          {
            v32 = figHttpRequestSendOutputBlockBuffer(v10, 0);
            if (v32)
            {
              OutputBuffer = v32;
              break;
            }
          }

          v25 += v29;
          v31 = v28 <= v29;
          v28 -= v29;
          if (v31)
          {
            goto LABEL_40;
          }
        }
      }

      self = selfCopy;
      goto LABEL_42;
    }

    v33 = FigRetainProxyGetOwner();
    v34 = CMBaseObjectGetDerivedStorage();
    v35 = v34;
    if (*(v34 + 365))
    {
      v36 = *(v34 + 120) - *(v34 + 424);
    }

    else
    {
      v36 = 0;
    }

    if (CMBlockBufferCreateEmpty(*(v34 + 160), 0, 0, (v34 + 384)))
    {
      [FigHTTPRequestSessionDataDelegate URLSession:? dataTask:? didReceiveData:?];
    }

    else
    {
      if (*(v35 + 384))
      {
        v37 = CFDataGetLength(v8);
        appended = figHttpRequestEnsureNotTooManyBytes(v33, v37);
        if (!appended)
        {
          v39 = v37 - v36;
          if (v37 <= v36)
          {
            *(v35 + 424) += v37;
            if (v37 != v36)
            {
              v39 = 0;
              goto LABEL_53;
            }

            v39 = 0;
LABEL_52:
            *(v35 + 365) = 0;
LABEL_53:
            v20 = v42;
            *(v35 + 400) = v39;
            *(v35 + 408) = 0;
            *(v35 + 392) = 0;
            OutputBuffer = figHttpRequestSendOutputBlockBuffer(v10, 0);
            goto LABEL_54;
          }

          *v45 = 0;
          enumerate_block = 0;
          *&v45[4] = figHttpRequestFreeCFData;
          *&v45[12] = CFRetain(v8);
          BytePtr = CFDataGetBytePtr(v8);
          appended = CMBlockBufferAppendMemoryBlock(*(v35 + 384), BytePtr, v37, 0, &enumerate_block, v36, v37 - v36, 0);
          if (!appended)
          {
            *(v35 + 424) += v36;
            goto LABEL_52;
          }
        }

        OutputBuffer = appended;
LABEL_42:
        v20 = v42;
        goto LABEL_54;
      }

      [FigHTTPRequestSessionDataDelegate URLSession:? dataTask:? didReceiveData:?];
    }

    OutputBuffer = enumerate_block;
    goto LABEL_42;
  }

LABEL_58:
  [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v11];
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
LABEL_59:
  if (v8)
  {
    CFRelease(v8);
  }
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  v7 = objc_autoreleasePoolPush();
  (*(handler + 2))(handler, 0);

  objc_autoreleasePoolPop(v7);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v7 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
  if (v7)
  {
    v8 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v7];
    Owner = FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!*(DerivedStorage + 552))
    {
      if (error)
      {
        domain = [error domain];
        if ([domain compare:*MEMORY[0x1E696A978]] || objc_msgSend(error, "code") != -999)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }
      }

      else
      {
        v12 = 2;
      }

      *(DerivedStorage + 552) = v12;
    }

    if (*(DerivedStorage + 172))
    {
      goto LABEL_31;
    }

    *(DerivedStorage + 224) = FigGetUpTimeNanoseconds();
    v13 = objc_autoreleasePoolPush();
    *(DerivedStorage + 512) = error;
    v14 = *DerivedStorage;
    v15 = CMBaseObjectGetDerivedStorage();
    if (*(v15 + 172))
    {
LABEL_28:
      if (!FigRetainProxyIsInvalidated())
      {
        figHttpRequestCloseNSURLSessionTask();
      }

      objc_autoreleasePoolPop(v13);
LABEL_31:
      [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v8];
      FigRetainProxyUnlockMutex();
      FigRetainProxyRelease();
      return;
    }

    v16 = v15;
    v17 = *(v15 + 512);
    if (v17)
    {
      domain2 = [v17 domain];
      [*(v16 + 512) code];
      _figHTTPRequestCreateErrorComment(v16, v21, @"Network error: domain=%@, code=%d, %@ for %@", v22, v23, v24, v25, v26, domain2);
      [*(v16 + 512) code];
      OutputBuffer = FigSignalErrorAtGM();
      goto LABEL_21;
    }

    if (!*(v16 + 169))
    {
      goto LABEL_23;
    }

    v19 = *(v16 + 384);
    if (v19)
    {
      if (*(v16 + 408))
      {
        dataPointerOut = 0;
        lengthAtOffsetOut = 0;
        if (!CMBlockBufferGetDataPointer(v19, *(v16 + 400), &lengthAtOffsetOut, 0, &dataPointerOut) && lengthAtOffsetOut)
        {
          OutputBuffer = 0;
          v20 = dataPointerOut;
LABEL_20:
          *v20 = 0;
          *(v16 + 400) = vaddq_s64(*(v16 + 400), xmmword_196E78030);
LABEL_38:
          *(v16 + 169) = 0;
          goto LABEL_21;
        }

        goto LABEL_42;
      }

      lengthAtOffsetOut = 0;
      figHttpRequestSendOutputBlockBuffer(v14, 0);
      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_28;
      }
    }

    else
    {
      lengthAtOffsetOut = 0;
    }

    if (*(v16 + 16))
    {
      OutputBuffer = figHTTPRequestGetOutputBuffer(Owner, &lengthAtOffsetOut, &dataPointerOut);
      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_28;
      }

      if (!OutputBuffer)
      {
        v20 = lengthAtOffsetOut;
        goto LABEL_20;
      }

LABEL_43:
      _figHTTPRequestCreateErrorComment(v16, v37, @"Memory error", v38, v39, v40, v41, v42, blockBufferOut);
LABEL_21:
      if (OutputBuffer)
      {
        OUTLINED_FUNCTION_0_134();
        v33 = OutputBuffer;
        goto LABEL_26;
      }

LABEL_23:
      if (*(v16 + 384) && *(v16 + 392) < *(v16 + 400))
      {
        figHttpRequestSendOutputBlockBuffer(v14, 2u);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_0_134();
      v33 = 0;
LABEL_26:
      figHTTPRequestPerformReadCallback(v28, v29, v30, v31, v32, v33);
LABEL_27:
      FigRetainProxyIsInvalidated();
      goto LABEL_28;
    }

    v34 = MEMORY[0x19A8CC720](*(v16 + 160), 1, 1296807808, 0);
    if (v34)
    {
      v35 = v34;
      v36 = CMBlockBufferCreateWithMemoryBlock(*(v16 + 160), v34, 1uLL, *(v16 + 160), 0, 0, 1uLL, 0, (v16 + 384));
      if (*(v16 + 384))
      {
        OutputBuffer = v36;
        *v35 = 0;
        *(v16 + 400) = xmmword_196E78040;
        *(v16 + 392) = 0;
        goto LABEL_38;
      }

      CFAllocatorDeallocate(*(v16 + 160), v35);
    }

LABEL_42:
    OutputBuffer = FigSignalErrorAtGM();
    goto LABEL_43;
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  if ([objc_msgSend(metrics transactionMetrics] == 1)
  {
    v8 = [objc_msgSend(metrics "transactionMetrics")];
    v9 = [(FigHTTPRequestSessionDataDelegate *)self _copyAndLockRequestForTask:task];
    if (v9)
    {
      v10 = [(FigHTTPRequestSessionDataDelegate *)self adoptVoucherFromRetainProxy:v9];
      FigRetainProxyGetOwner();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 256) = metrics;
      [objc_msgSend(v8 "responseEndDate")];
      *(DerivedStorage + 304) = (v12 * 1000000000.0);
      *(DerivedStorage + 328) = [metrics redirectCount];
      if (objc_opt_respondsToSelector())
      {
        *(DerivedStorage + 336) = [v8 _privacyStance];
      }

      if (objc_opt_respondsToSelector())
      {
        v13 = *(DerivedStorage + 344);
        if (v13)
        {
          nw_release(v13);
        }

        *(DerivedStorage + 344) = 0;
        _establishmentReport = [v8 _establishmentReport];
        *(DerivedStorage + 344) = _establishmentReport;
        if (_establishmentReport)
        {
          nw_retain(_establishmentReport);
        }
      }

      v15 = *(DerivedStorage + 352);
      if (v15)
      {
        nw_release(v15);
      }

      *(DerivedStorage + 352) = 0;
      _dataTransferReport = [v8 _dataTransferReport];
      *(DerivedStorage + 352) = _dataTransferReport;
      if (_dataTransferReport)
      {
        nw_retain(_dataTransferReport);
      }

      [(FigHTTPRequestSessionDataDelegate *)self restoreVoucher:v10];
      FigRetainProxyUnlockMutex();

      FigRetainProxyRelease();
    }
  }
}

- (uint64_t)URLSession:(_DWORD *)a1 dataTask:didReceiveData:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)URLSession:(_DWORD *)a1 dataTask:didReceiveData:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (_BYTE)URLSession:(_BYTE *)result dataTask:didReceiveData:.cold.3(_BYTE *result)
{
  if (!*result)
  {
    OUTLINED_FUNCTION_0_134();
    return figHTTPRequestPerformReadCallback(v1, v2, v3, v4, v5, v6);
  }

  return result;
}

@end