void sub_10036FC18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036FC5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10036FCA0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100370234(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100370278(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003713D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371418(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371B70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371BB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371BF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371C3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371C80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371CC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371F98(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100371FDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100372020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100372064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100372684(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003726C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

int64_t sub_100373F24(id a1, CRLCollaboratorCursorHUDPosition *a2, CRLCollaboratorCursorHUDPosition *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CRLCollaboratorCursorHUDPosition *)v4 direction];
  if (v6 == [(CRLCollaboratorCursorHUDPosition *)v5 direction])
  {
    v7 = 0;
    goto LABEL_17;
  }

  v8 = [(CRLCollaboratorCursorHUDPosition *)v4 direction];
  v7 = -1;
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        goto LABEL_17;
      }

      v9 = [(CRLCollaboratorCursorHUDPosition *)v5 direction]== 0;
      v10 = -1;
      goto LABEL_10;
    }

    if ([(CRLCollaboratorCursorHUDPosition *)v5 direction]!= 4 && [(CRLCollaboratorCursorHUDPosition *)v5 direction])
    {
      v7 = 1;
    }
  }

  else
  {
    if (!v8)
    {
      v7 = 1;
      goto LABEL_17;
    }

    if (v8 == 1)
    {
      v9 = [(CRLCollaboratorCursorHUDPosition *)v5 direction]== 2;
      v10 = 1;
LABEL_10:
      if (v9)
      {
        v7 = v10;
      }

      else
      {
        v7 = -v10;
      }
    }
  }

LABEL_17:

  return v7;
}

int64_t sub_100374010(id a1, CRLCollaboratorCursorHUDPosition *a2, CRLCollaboratorCursorHUDPosition *a3)
{
  v4 = a3;
  [(CRLCollaboratorCursorHUDPosition *)a2 position];
  v6 = v5;
  v8 = v7;
  [(CRLCollaboratorCursorHUDPosition *)v4 position];
  v10 = v9;
  v12 = v11;

  v13 = vabdd_f64(v8, v12);
  v14 = -1;
  if (v6 >= v10)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  if (v8 > v12)
  {
    v14 = 1;
  }

  if (v13 >= 0.01)
  {
    return v14;
  }

  else
  {
    return v15;
  }
}

void sub_1003743F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100374434(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100374478(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_class();
  v4 = sub_100013F00(v3, *(a1 + 32));
  v5 = v4;
  if (v4)
  {
    [v4 setGeometry:v6];
  }
}

uint64_t sub_100374600(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100374618(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) info];
  v6 = sub_100014370(v4, v5);

  if (v6)
  {
    v7 = [v6 geometry];
    v8 = [v3 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [[_TtC8Freeform25CRLCommandSetInfoGeometry alloc] initWithBoardItem:v6 geometry:v3];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10135D564();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10135D578();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10135D60C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLCanvasLayout commandToClampModelToLayoutSizeWithAdditionalTransform:]_block_invoke"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayout.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1147 isFatal:0 description:"invalid nil value for '%{public}s'", "boardItem"];
  }
}

void sub_1003747F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037483C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100375670(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

void sub_100379380(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003793C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003795B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003795F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003798F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100379938(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037A4F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037A534(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037A578(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037A5BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037A990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037A9D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037AA18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037AA5C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037AE28(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037AE6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037AEB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037AEF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037B87C(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(CRLOnce);
  v3 = v1[27];
  v1[27] = v2;
}

void sub_10037BC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037BCB8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_willEnterForeground:v3];
}

void sub_10037BE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10037BE88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_didEnterBackground:v3];
}

void sub_10037C25C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037C2A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037CC20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037CC64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037CCA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037CCEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037DC2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037DC70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037DEC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037DF04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037FB20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10037FB64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003804D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100380514(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100381574(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003815B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003815FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100381640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003818A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003818EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100381BF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100381C3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100381C80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100381CC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100381EAC(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  v3 = [v2 editorController];
  v4 = [v3 textInputEditor];
  v5 = [v4 resignFirstResponderWhenKeyboardHides];

  if (v5)
  {
    v6 = [*(a1 + 32) interactiveCanvasController];
    v7 = [v6 editorController];
    v8 = [v7 textInputEditor];
    [v8 setResignFirstResponderWhenKeyboardHides:0];

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  [*(a1 + 32) forceStopScrolling];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [*(a1 + 32) commonGestureRecognizers];
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ((objc_opt_respondsToSelector() & 1) != 0 && (![v14 state] || objc_msgSend(v14, "state") == 1 || objc_msgSend(v14, "state") == 2))
        {
          [v14 performSelector:"cancelBecauseOfRotation"];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

void sub_100382088(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v4 = [*(a1 + 32) interactiveCanvasController];
    v2 = [v4 editorController];
    v3 = [v2 textInputEditor];
    [v3 setResignFirstResponderWhenKeyboardHides:1];
  }
}

void sub_10038326C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003832B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_10038355C(id a1, id a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 locked] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

void sub_1003845BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100384600(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100384804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100384848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003850B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003850F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100385674(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003856B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100385AD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100385B14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100385D00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100385D44(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100385E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100385E58(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 shouldPreventQuickSelect])
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_100386540(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100386584(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100386878(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003868BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100386900(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100386944(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003872AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003872F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100387B84(id a1)
{
  v1 = sub_1004BD804("CRLAlertCat");
  v2 = off_1019EDA80;
  off_1019EDA80 = v1;
}

uint64_t sub_100387E0C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_100387E24(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100388108(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038814C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100388190(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003881D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003884D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100388514(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100388558(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038859C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038884C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100388890(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003888D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100388918(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100389048(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038908C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100389250(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100389294(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038950C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100389550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038A59C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038A5E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038A708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10038A724(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained preventInsertScribbleElementTimer];
  [v3 invalidate];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setPreventInsertScribbleElementTimer:0];
}

void sub_10038ADD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038AE1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038B104(uint64_t a1)
{
  v2 = objc_alloc_init(CRLiOSImageHUDViewController);
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = v2;
}

uint64_t sub_10038CA74(uint64_t a1)
{
  [*(a1 + 32) crlaxSelect];
  CRLAccessibilityPostLayoutChangedNotification(*(a1 + 40));
  return 1;
}

void sub_10038D834(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10038D850(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained crlaxCustomRotorResultForRotorName:*(a1 + 32) predicate:v3];

  return v5;
}

void sub_10038D9F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10038DA10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained crlaxCustomRotorResultForRotorName:*(a1 + 32) predicate:v3];

  return v5;
}

void sub_10038DBB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10038DBD0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained crlaxCustomRotorResultForRotorName:*(a1 + 32) predicate:v3];

  return v5;
}

void sub_10038DDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10038DDF0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained crlaxCustomRotorResultForRotorName:*(a1 + 32) predicate:v3];

  return v5;
}

void sub_10038F8D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038F918(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038FBB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10038FBF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100390828(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039086C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003916B8(id a1)
{
  v1 = objc_alloc_init(CRLCurvedShadowRenderHelper);
  v2 = qword_101A34D28;
  qword_101A34D28 = v1;
}

void sub_1003916F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100391738(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039177C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003917C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100391804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100391848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100391AD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100391B1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

BOOL sub_100392040(id a1, CRLStreamCompression *a2, BOOL a3, OS_dispatch_data *a4, NSError *a5)
{
  if (!a4)
  {
    return 1;
  }

  v5 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = sub_100014370(v9, v8);

  LOBYTE(v5) = [v10 handleData:v7 isDone:v5];
  return v5;
}

uint64_t sub_1003921BC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = 1;
  if (v10 && v11)
  {
    v14 = objc_opt_class();
    v15 = sub_100014370(v14, v9);
    v13 = [v15 handleData:v10 isDone:a3];
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v13 = (*(v16 + 16))(v16, v9, a3, v10, v12) & v13;
  }

  return v13;
}

void sub_1003923EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100392404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) processBytes:a2 size:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

void sub_1003928C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100392908(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_10039294C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_1003929AC(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u64[0];
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 16))(result, a2);
  }

  *(a1 + 24) = v2;
  return result;
}

uint64_t sub_100392A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v7 = [WeakRetained isSnappedToRuler];

  if (v7)
  {

    return sub_100392ADC(a1, a2, a3);
  }

  else
  {
    v9 = *(**(a1 + 8) + 40);

    return v9();
  }
}

uint64_t sub_100392ADC(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 56))(a1);
  v6 = (*(*a1 + 64))(a1);
  sub_100229E64(a3, *(a3 + 8), (*v6 + 80 * a2), *(v6 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(v6 + 8) - (*v6 + 80 * a2)) >> 4));
  return a1[9];
}

void sub_100392B88(void *a1)
{
  v1 = a1[5];
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[7] - a1[6]) >> 4) > v1)
  {
    if (v1 && a1[4] < v1)
    {
      sub_1002246C8(a1 + 10, 0);
      v3 = 0;
      a1[5] = 0;
      a1[9] = 0;
    }

    else
    {
      sub_1002246C8(a1 + 10, a1[9]);
      v3 = a1[5];
    }

    v4 = a1[6];
    if (v3 < 0xCCCCCCCCCCCCCCCDLL * ((a1[7] - v4) >> 4))
    {
      v5 = 80 * v3;
      while (1)
      {
        sub_100392CE8((a1 + 10), (v4 + v5));
        if (sub_100392E00(a1))
        {
          v6 = a1[11];
          a1[11] = v6 - 80;
          sub_100392CE8((a1 + 10), (v6 - 160));
          sub_100392CE8((a1 + 10), (a1[11] - 80));
          sub_100392CE8((a1 + 10), (a1[6] + v5));
          v7 = a1[4];
          if (v3 < v7)
          {
            v8 = 3;
LABEL_13:
            a1[9] += v8;
          }
        }

        else
        {
          v7 = a1[4];
          if (v3 < v7)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        ++v3;
        v4 = a1[6];
        v5 += 80;
        if (v3 >= 0xCCCCCCCCCCCCCCCDLL * ((a1[7] - v4) >> 4))
        {
          goto LABEL_17;
        }
      }
    }

    v7 = a1[4];
LABEL_17:
    a1[5] = v7;
  }
}

void sub_100392CE8(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v11 = v10 + 1;
    if (v10 + 1 > 0x333333333333333)
    {
      sub_1000C1D48();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x199999999999999)
    {
      v13 = 0x333333333333333;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_10022A114(a1, v13);
    }

    v14 = 80 * v10;
    *v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[4];
    *(v14 + 48) = a2[3];
    *(v14 + 64) = v17;
    *(v14 + 16) = v15;
    *(v14 + 32) = v16;
    v9 = 80 * v10 + 80;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[4];
    v4[3] = a2[3];
    v4[4] = v8;
    v4[1] = v6;
    v4[2] = v7;
    v9 = (v4 + 5);
  }

  *(a1 + 8) = v9;
}

BOOL sub_100392E00(uint64_t a1)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 88) - *(a1 + 80)) >> 4) < 3)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  v3 = *(v2 - 152);
  v4 = sub_10011F31C(*(v2 - 232), *(v2 - 224), v3);
  v6 = v5;
  v7 = sub_10011F31C(*(v2 - 72), *(v2 - 64), v3);
  v9 = v8;
  v10 = sub_100120074(v4, v6);
  v11 = sub_100120074(v7, v9);
  result = 0;
  if (v10 >= 0.00001 && v11 >= 0.00001)
  {
    v12 = sub_10011F2FC(v4, v6);
    v14 = v13;
    v15 = sub_10011F2FC(v7, v9);
    return sub_10011F328(v12, v14, v15, v16) >= 0.9;
  }

  return result;
}

uint64_t sub_100392F14(uint64_t a1)
{
  objc_destroyWeak((a1 + 104));
  *a1 = off_10185ACC8;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *a1 = off_10185AD30;
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100392F98(uint64_t a1)
{
  objc_destroyWeak((a1 + 104));
  *a1 = off_10185ACC8;
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  *a1 = off_10185AD30;
  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  operator delete();
}

void *sub_10039303C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = (*(*a1 + 64))(a1);
  result[1] = *result;
  return result;
}

uint64_t sub_1003930CC(uint64_t a1)
{
  sub_1002246C8((a1 + 48), *(a1 + 32));
  *(a1 + 32) = (*(**(a1 + 8) + 40))(*(a1 + 8), *(a1 + 32), a1 + 48);
  v2 = *(*a1 + 72);

  return v2(a1);
}

void *sub_100393170(void *a1)
{
  *a1 = off_10185ACC8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10185AD30;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1003931EC(void *a1)
{
  *a1 = off_10185ACC8;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  *a1 = off_10185AD30;
  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  operator delete();
}

uint64_t sub_10039328C(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 48))(result);
  }

  *(a1 + 16) = 0;
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 72) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_10039364C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100393690(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003936D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100393718(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003939B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003939FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void *sub_100393E1C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_100394EAC(result, a2);
    }

    sub_1000C1D48();
  }

  return result;
}

void sub_100393EBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100393F00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100393F44(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_1000C1D48();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_100394EAC(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_10039423C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100394280(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100394620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100394664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003946A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003946EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100394B9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100394BE0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_100394DF4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100394E70(result, a4);
  }

  return result;
}

void sub_100394E54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100394E70(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100394EAC(a1, a2);
  }

  sub_1000C1D48();
}

void sub_100394EAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void *sub_100394EF4(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100394E70(v6, v10);
    }

    sub_1000C1D48();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_100395894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003958AC(uint64_t a1, void *a2)
{
  result = [a2 frameForCulling];
  v4 = *(*(a1 + 32) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

void sub_100395BE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100395C2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100396190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003961B4(uint64_t a1, void *a2)
{
  v23 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v23)
  {
    if (WeakRetained)
    {
      v4 = [WeakRetained editorController];
      v5 = [v4 selectionPath];
      v6 = [v5 isEqual:*(a1 + 32)];

      if (v6)
      {
        v7 = [WeakRetained interactiveCanvasController];
        v8 = objc_alloc_init(LTUITranslationViewController);
        v9 = [[NSAttributedString alloc] initWithString:v23];
        [v8 setText:v9];

        [v8 setIsSourceEditable:0];
        [v8 setModalPresentationStyle:7];
        v10 = [v7 canvasView];
        v11 = [v8 popoverPresentationController];
        [v11 setSourceView:v10];

        v12 = [v7 layerHost];
        v13 = [v12 asiOSCVC];

        [v13 targetRectForEditMenu:*(a1 + 32)];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [v8 popoverPresentationController];
        [v22 setSourceRect:{v15, v17, v19, v21}];

        [v13 presentViewController:v8 animated:1 completion:0];
      }
    }
  }
}

void sub_1003964E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100396500(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003965D0;
    v6[3] = &unk_10183D168;
    v7 = v3;
    [v5 p_canRefineHandwritingWithCompletionHandler:v6];
  }

  else
  {
    (*(v3 + 2))(v3, &__NSArray0__struct);
  }
}

void sub_1003965D0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Refine" value:0 table:0];
    v5 = [UIImage systemImageNamed:@"wrench.adjustable"];
    v6 = [UICommand commandWithTitle:v4 image:v5 action:"refineHandwriting:" propertyList:0];

    v7 = *(a1 + 32);
    v10 = v6;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v9 = *(*(a1 + 32) + 16);

    v9();
  }
}

void sub_10039741C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100397460(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100397728(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039776C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100397A74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100397AB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100397D48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100397D8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100397DD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_100397EDC;
  v13 = &unk_10185B1B8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v5;
  v15 = v7;
  v18 = *(a1 + 48);
  v16 = v6;
  v17 = v8;
  v9 = v6;
  v10 = v5;
  if ([NSThread isMainThread:_NSConcreteStackBlock])
  {
    v12(v11);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v11);
  }
}

void sub_100397EDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) p_insertFreehandDrawingsFromProviders:v2 atUnscaledPoint:0 isCrossDocument:*(a1 + 56) completionHandler:{*(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101360B58();
    }

    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_10131725C();
    }

    if ([*(a1 + 48) count])
    {
      v3 = [*(a1 + 40) interactiveCanvasController];
      v4 = [v3 layerHost];
      [v4 presentErrors:*(a1 + 48) withLocalizedDescription:0 completionHandler:0];
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))(v5, &__NSArray0__struct);
    }
  }

  v6 = [*(a1 + 40) interactiveCanvasController];
  v7 = [v6 editingCoordinator];
  [v7 resumeCollaborationWithReason:@"CRLFreehandEditorInsertingAsyncDrawables"];
}

void sub_100397FF4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_100398994(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003989D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100398A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  [v3 boundsForStandardKnobs];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v14.origin.x = v6;
  v14.origin.y = v8;
  v14.size.width = v10;
  v14.size.height = v12;
  v15 = CGRectApplyAffineTransform(v14, &v13);
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(v4[1], v15);
}

void sub_100399110(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100399154(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_100399198(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003991DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039AD2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039AD70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039ADB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039ADF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039AE3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039AE80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039AFFC(id *a1)
{
  v4 = [a1[5] canvasEditor];
  v2 = [a1[6] boardItems];
  v3 = [v4 selectionPathWithInfos:v2];
  [a1[4] setSelectionPath:v3];
}

_TtC8Freeform12CRLBoardItem *__cdecl sub_10039B260(id a1, CRLCanvasElementInfo *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, v2);

  return v4;
}

_TtC8Freeform27CRLFreehandDrawingShapeItem *__cdecl sub_10039B2BC(id a1, _TtC8Freeform12CRLBoardItem *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = sub_100014370(v3, v2);

  return v4;
}

void sub_10039B630(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_101A34D48;
  qword_101A34D48 = v1;

  v3 = qword_101A34D48;

  [v3 setNumberStyle:3];
}

void sub_10039BC3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039BC80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039BE20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039BE64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C0A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C220(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C264(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C3F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C438(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C5AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039C5F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039E440(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039E484(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039E4C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039E50C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039E550(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039E594(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039F0FC(void *a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = a1;
  v4 = dispatch_queue_create("com.apple.freeform.CRLMovieItemImporter", v2);
  v5 = v3[6];
  v3[6] = v4;

  v6 = objc_alloc_init(CRLScaledProgress);
  v7 = v3[8];
  v3[8] = v6;
}

void sub_10039F674(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039F6B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039F6FC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (qword_101AD5A08 != -1)
    {
      sub_1013617E4();
    }

    v8 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_1013617F8(v8, v7);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 72), a2);
    v9 = [v6 AVAssetAndReturnError:0];
    v10 = *(a1 + 32);
    v11 = *(v10 + 96);
    *(v10 + 96) = v9;
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039F87C;
  block[3] = &unk_10183AB38;
  block[4] = v12;
  dispatch_async(v13, block);
}

void sub_10039F838(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_10039FB94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039FBD8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_10039FC1C(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039FCBC;
  block[3] = &unk_10183C780;
  block[4] = v3;
  v5 = v2;
  v6 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void sub_10039FCBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 128) & 1) == 0)
  {
    v5 = [*(v2 + 104) error];
    v3 = *(a1 + 32);
    if (v5)
    {
      v4 = v5;
      goto LABEL_6;
    }

    v7 = [*(v3 + 104) compatibilityLevel];
    v8 = [*(*(a1 + 32) + 104) wasAssetHEVC];
    v9 = *(a1 + 40);
    if (v9)
    {
      LODWORD(v9) = (*(*(a1 + 32) + 129) & 1) == 0 && *(a1 + 48) > 3;
    }

    if (v7 < 5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v7 == 4)
    {
      [CRLMovieCompatibilityChecker assetContainsVideoTracksWithAlpha:*(*(a1 + 32) + 96)];
    }

    v11 = [*(*(a1 + 32) + 96) crl_containsHDRContent];
    if (*(a1 + 40) && ((v11 | v10) & 1) != 0)
    {
      *(*(a1 + 32) + 129) = 1;
      LOBYTE(v12) = v8;
      [*(a1 + 40) boardItemImporter:_NSConcreteStackBlock needsMediaCompatibilityFeedbackWithReasons:3221225472 forMediaType:sub_10039FECC usingBlock:{&unk_10185B780, *(a1 + 32), *(a1 + 48), v7, v12}];
    }

    else
    {
      [*(a1 + 32) p_importBoardItemFromAssetConvertingIfNeededToRequiredCompatibilityLevel:*(a1 + 48) allowHEVCContent:1 fromCompatibilityLevel:v7];
    }
  }

  v3 = *(a1 + 32);
  if (*(v3 + 128) == 1)
  {
    v4 = 0;
LABEL_6:
    [v3 p_finishImportingWithBoardItem:0 error:v4];
    v3 = *(a1 + 32);
  }

  v6 = *(v3 + 104);
  *(v3 + 104) = 0;
}

void sub_10039FECC(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039FF64;
  v7[3] = &unk_10185B758;
  v8 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[4] = v3;
  v7[5] = v5;
  v9 = a3;
  v10 = *(a1 + 56);
  v7[6] = v6;
  dispatch_async(v4, v7);
}

id sub_10039FF64(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[128])
  {
    return [v2 p_finishImportingWithBoardItem:0 error:0];
  }

  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 3;
  }

  if ((*(a1 + 57) & 1) == 0)
  {
    if (*(a1 + 58))
    {
      v4 = 5;
    }
  }

  return [v2 p_importBoardItemFromAssetConvertingIfNeededToRequiredCompatibilityLevel:v4 allowHEVCContent:? fromCompatibilityLevel:?];
}

void sub_1003A02F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A0338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A037C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003A03F8;
  block[3] = &unk_10183AB38;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1003A03F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 128))
  {
    v3 = 0;
  }

  else
  {
    obj = [*(v2 + 112) convertedMediaData];
    v3 = [*(*(a1 + 32) + 112) error];
    v2 = *(a1 + 32);
    if (obj)
    {
      objc_storeStrong((v2 + 72), obj);
      v4 = [*(*(a1 + 32) + 72) AVAssetAndReturnError:0];
      v5 = *(a1 + 32);
      v6 = *(v5 + 96);
      *(v5 + 96) = v4;

      [*(a1 + 32) p_importBoardItemFromAsset];
      goto LABEL_6;
    }
  }

  [v2 p_finishImportingWithBoardItem:0 error:v3];
  obj = 0;
LABEL_6:
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  *(v7 + 112) = 0;
}

void sub_1003A0870(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A08B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A0CBC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A0D00(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A0E44(uint64_t a1, CGImage *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  CGImageRetain(a2);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A0F14;
  v11[3] = &unk_10185B8F8;
  v14 = a2;
  v11[4] = v8;
  v12 = v6;
  v13 = v7;
  v10 = v6;
  dispatch_async(v9, v11);
}

void sub_1003A0F14(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[128])
  {
    v3 = 0;
    v4 = 0;
LABEL_20:
    [v2 p_finishImportingWithBoardItem:v3 error:v4];
    goto LABEL_21;
  }

  if (*(a1 + 56))
  {
    v5 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    v6 = sub_1005357BC(*(a1 + 56));
    v7 = [*(a1 + 32) boardItemFactory];
    v8 = [v7 assetOwner];
    v17 = 0;
    v9 = [(CRLPreinsertionAssetWrapper *)v5 initWithData:v6 filename:@"posterImage.png" owner:v8 error:&v17];
    v10 = v17;

    if (v9)
    {

      goto LABEL_6;
    }

    if (qword_101AD5A08 != -1)
    {
      sub_101361C0C();
    }

    v11 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101361C34(v11, v10);
    }
  }

  if (!*(a1 + 40) || ([*(a1 + 48) isAudioOnly] & 1) != 0 || objc_msgSend(*(a1 + 40), "code") != -11832 || (objc_msgSend(*(a1 + 40), "domain"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", AVFoundationErrorDomain), v12, !v13) || (objc_msgSend(*(a1 + 48), "generateEmptyPosterImage"), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = [*(a1 + 48) isAudioOnly];
    v2 = *(a1 + 32);
    if (v14)
    {
      v4 = *(a1 + 40);
      v3 = *(a1 + 48);
    }

    else
    {
      v4 = *(a1 + 40);
      v3 = 0;
    }

    goto LABEL_20;
  }

LABEL_6:
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1003A1190;
  v15[3] = &unk_10185B8D0;
  v15[4] = *(a1 + 32);
  v16 = *(a1 + 48);
  [(CRLPreinsertionAssetWrapper *)v9 createAssetWithCompletionHandler:v15];

LABEL_21:
  CGImageRelease(*(a1 + 56));
}

void sub_1003A114C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003A1190(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A1278;
  v11[3] = &unk_10185B8A8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

id sub_1003A1278(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101361CEC();
    }

    v3 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101361D00(v2, v3);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 80), *(a1 + 48));
  }

  return [*(a1 + 40) p_finishImportingWithBoardItem:*(a1 + 56) error:*(a1 + 32)];
}

void sub_1003A1314(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003A142C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003A14C4;
  v4[3] = &unk_10183AE28;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_1003A14C4(uint64_t a1)
{
  if (*(*(a1 + 32) + 128))
  {
    v2 = 0;
    goto LABEL_3;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = *(*(a1 + 32) + 96);
        v18 = 0;
        v11 = [v10 statusOfValueForKey:v9 error:&v18];
        v12 = v18;
        v13 = v12;
        if (v11 != 2)
        {
          v3 = [v12 copy];

          goto LABEL_16;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = [*(a1 + 32) p_isURLRemote];
  v15 = [*(*(a1 + 32) + 96) crl_containsVideoTracks];
  v16 = [*(*(a1 + 32) + 96) crl_containsAudioTracks];
  v17 = *(a1 + 32);
  if ((v15 & 1) == 0 && (v16 & 1) == 0)
  {
    v3 = [v17 p_importErrorForLackOfAVTracks];
LABEL_16:
    v2 = 0;
    goto LABEL_17;
  }

  v2 = [v17 p_makeMovieItemWithContainsVisibleTrack:v15 andIsURLRemote:v14];
  if (!v2 || ([*(a1 + 32) p_setPropertiesFromLoadedAssetToMovie:v2 containsVideoTrack:v15], objc_msgSend(*(a1 + 32), "p_asynchronouslyGeneratePosterImagesAndFinishImportingMovieItem:", v2), *(*(a1 + 32) + 128) == 1))
  {
LABEL_3:
    v3 = 0;
LABEL_17:
    [*(a1 + 32) p_finishImportingWithBoardItem:0 error:v3];
  }
}

void sub_1003A1D1C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A1D60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A1DA4(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003A1DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003A1ED0;
  v11[3] = &unk_10185B8A8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

id sub_1003A1ED0(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (qword_101AD5A08 != -1)
    {
      sub_101361EC4();
    }

    v3 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
    {
      sub_101361D00(v2, v3);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 80), *(a1 + 48));
  }

  return [*(a1 + 40) p_finishImportingWithBoardItem:*(a1 + 56) error:*(a1 + 32)];
}

void sub_1003A1F6C(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

id sub_1003A2614(uint64_t a1)
{
  *(*(a1 + 32) + 128) = 1;
  [*(*(a1 + 32) + 104) cancel];
  [*(*(a1 + 32) + 96) cancelLoading];
  [*(*(a1 + 32) + 112) cancel];
  v2 = *(*(a1 + 32) + 120);

  return [v2 cancelAllCGImageGeneration];
}

void sub_1003A2950(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void sub_1003A2D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1003A2DB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    [WeakRetained maxValue];
    if (v3 > 0.0)
    {
      v4 = v3;
      [WeakRetained value];
      [v2 setCompletedUnitCount:(v5 / v4 * *(a1 + 48))];
    }
  }
}

void sub_1003A2E50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A2E94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

int64_t sub_1003A50E0(id a1, CRLCanvasKnobAccessibilityElement *a2, CRLCanvasKnobAccessibilityElement *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [CRLCanvasKnobAccessibilityElement _crlaxCategoryRankForKnobElement:v4];
  v7 = [CRLCanvasKnobAccessibilityElement _crlaxCategoryRankForKnobElement:v5];
  v8 = v6 == v7;
  if (v6 < v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (v8)
  {
    v10 = sub_1003A518C(v4);
    v12 = v11;
    v13 = sub_1003A518C(v5);
    if (v10 < v13)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    if (v10 == v13)
    {
      v15 = 0;
    }

    if (v12 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (v12 == v14)
    {
      v9 = v15;
    }

    else
    {
      v9 = v16;
    }
  }

  return v9;
}

uint64_t sub_1003A518C(void *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003A6F30;
  v5[3] = &unk_101839FF8;
  v7 = &v8;
  v1 = a1;
  v6 = v1;
  if (__CRLAccessibilityPerformSafeBlock(v5))
  {
    abort();
  }

  v2 = v9[3];
  _Block_object_dispose(&v8, 8);
  if ((v2 - 1) > 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1014652C0[v2 - 1];
  }

  return v3;
}

void sub_1003A529C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A6C04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v8 = v5;
    v9 = objc_opt_class();
    v10 = __CRLAccessibilityCastAsSafeCategory(v9, v8, 1, &v13);
    if (v13 == 1)
    {
      abort();
    }

    v11 = v10;

    v7 = [v11 crlaxCanOccludeConnectionKnobDragging];
  }

  return v7;
}

id sub_1003A6F30(uint64_t a1)
{
  result = [*(a1 + 32) knobTag];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1003A74C4(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A7508(id a1, CRLKeyboardObserver *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(CRLKeyboardObserver *)v2 keyboardHideCanceled];
  }
}

void sub_1003A7558(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 keyboardWillShowOrDock:*(a1 + 32)];
  }
}

void sub_1003A7754(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A7798(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 keyboardDidShowOrDock:*(a1 + 32)];
  }
}

void sub_1003A7988(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A79CC(id a1, CRLKeyboardObserver *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(CRLKeyboardObserver *)v2 keyboardShowCanceled];
  }
}

void sub_1003A7A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 keyboardWillHideOrUndock:*(a1 + 32)];
  }
}

void sub_1003A7BE4(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A7C28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 keyboardDidHideOrUndock:*(a1 + 32)];
  }
}

void sub_1003A7DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003A7DD4(uint64_t a1)
{
  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101362034();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101362048();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_1013620D8();
  }

  v2 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v2);
  }

  v3 = [NSString stringWithUTF8String:"[CRLiOSKeyboardMonitor p_scheduleKeyboardIsAnimatingInTimer]_block_invoke"];
  v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLiOSKeyboardMonitor.m"];
  [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:278 isFatal:0 description:"Had to force keyboard animating to NO, OS never finished telling us the keyboard came in or cancelled."];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setKeyboardIsAnimatingInOrDocking:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 p_clearKeyboardIsAnimatingInTimer];
}

void sub_1003A7F20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A7F64(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A8258(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A829C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A8448(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A8974(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A89B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A89FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A8A40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A8DF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A8E34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A8FF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A9034(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003A91BC(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A9494(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A96BC(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A9C78(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003A9EBC(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003AA078(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003AA0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 keyboardWillChangeFrame:*(a1 + 32)];
  }
}

void sub_1003AA2A0(id a1)
{
  v1 = sub_1004BD804("CRLKeyboardCat");
  v2 = off_1019EDB98;
  off_1019EDB98 = v1;
}

void sub_1003AA2E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 keyboardDidChangeFrame:*(a1 + 32)];
  }
}

void sub_1003AA620(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AA664(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AA800(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AA844(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AB2A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AB2E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ABCDC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ABD20(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ABFC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AC008(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AC5A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AC5E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ACBB8(CGContext *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (!CGRectIsNull(*&a2))
  {
    CGContextSaveGState(a1);
    v10 = +[CRLColor whiteColor];
    CGContextSetFillColorWithColor(a1, [v10 CGColor]);

    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGContextFillRect(a1, v19);
    CGContextSetLineWidth(a1, 1.0);
    v11 = +[CRLColor redColor];
    v12 = [v11 colorWithAlphaComponent:0.38];
    CGContextSetStrokeColorWithColor(a1, [v12 CGColor]);

    Mutable = CGPathCreateMutable();
    v20.origin.x = a2;
    v20.origin.y = a3;
    v20.size.width = a4;
    v20.size.height = a5;
    MinX = CGRectGetMinX(v20);
    v21.origin.x = a2;
    v21.origin.y = a3;
    v21.size.width = a4;
    v21.size.height = a5;
    MaxY = CGRectGetMaxY(v21);
    CGPathMoveToPoint(Mutable, 0, MinX, MaxY);
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    MaxX = CGRectGetMaxX(v22);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    MinY = CGRectGetMinY(v23);
    CGPathAddLineToPoint(Mutable, 0, MaxX, MinY);
    CGContextAddPath(a1, Mutable);
    CGContextStrokePath(a1);
    CGPathRelease(Mutable);

    CGContextRestoreGState(a1);
  }
}

void sub_1003AD068(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AD0AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AD0F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AD134(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AD46C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AD4B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AD650(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initDefaultCursor];
  v2 = qword_101A34D60;
  qword_101A34D60 = v1;
}

void sub_1003ADA50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003ADA94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AE1F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AE234(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AED24(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AED68(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AEDF0(id a1)
{
  v1 = [[CRLCursor alloc] initRepContentPlatformViewPlaceholder];
  v2 = qword_101A34D98;
  qword_101A34D98 = v1;
}

void sub_1003AF1D4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AF218(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AF3DC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_101A34DA8;
  qword_101A34DA8 = v1;
}

void sub_1003AF85C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AF8A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AFB34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003AFB78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B04E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B052C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B0570(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B05B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B0844(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B0888(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B1D88(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B1DCC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B2304(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B2348(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B2668(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B26AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B26F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B2734(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

int64_t sub_1003B38D4(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v27 = 0;
  v6 = v4;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v27);
  if (v27 == 1)
  {
    goto LABEL_14;
  }

  v9 = v8;

  v26 = 0;
  v10 = v5;
  v11 = objc_opt_class();
  v12 = __CRLAccessibilityCastAsSafeCategory(v11, v10, 1, &v26);
  if (v26 == 1)
  {
    goto LABEL_14;
  }

  v13 = v12;

  if (!v9 || !v13)
  {
    if (!CRLAccessibilityShouldPerformValidationChecks() || (ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(), v19 = objc_opt_class(), objc_opt_class(), !__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Expected content siblings to be text reps, got %@ and %@", v20, v21, v22, v23, v24, v19)))
    {
      v17 = 0;
      goto LABEL_13;
    }

LABEL_14:
    abort();
  }

  v14 = [v9 crlaxStorageRangeOfRep];
  v15 = [v13 crlaxStorageRangeOfRep];
  v16 = -1;
  if (v14 >= v15)
  {
    v16 = 1;
  }

  if (v14 == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

LABEL_13:

  return v17;
}

void sub_1003B3BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003B3C0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003B3C24(uint64_t a1)
{
  v2 = [*(a1 + 32) columnForCharIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

int64_t sub_1003B40D8(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v20 = 0;
  v6 = v4;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v20);
  if (v20 == 1 || (v9 = v8, v6, v19 = 0, v10 = v5, v11 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v11, v10, 1, &v19), v12 = objc_claimAutoreleasedReturnValue(), v19 == 1))
  {
    abort();
  }

  v13 = v12;

  [v9 crlaxFrameInScreenSpace];
  v15 = v14;
  [v13 crlaxFrameInScreenSpace];
  if (v15 >= v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  return v17;
}

void sub_1003B41DC(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = a2;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  v7 = [v6 crlaxSummaryDescription];
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void sub_1003B449C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B44E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B4E58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B4E9C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B5120(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B5164(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B51A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B51EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B5470(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B54B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B54F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B553C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B6040(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B6084(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B6244(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B6288(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B6744(uint64_t a1)
{
  v4 = [CRLPair pairWithFirst:*(a1 + 32) second:*(a1 + 40)];
  [*(*(a1 + 48) + 48) addObject:v4];
  v2 = [*(a1 + 56) copy];
  v3 = objc_retainBlock(v2);
  [*(*(a1 + 48) + 56) setObject:v3 forKeyedSubscript:v4];

  *(*(a1 + 48) + 72) = 0;
}

void sub_1003B68DC(void *a1)
{
  v2 = a1[4];
  if (!v2[8])
  {
    objc_initWeak(&location, v2);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_1003B6A3C;
    v8 = &unk_10185C6C8;
    objc_copyWeak(&v9, &location);
    *(a1[4] + 64) = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, &v5);
    Main = CFRunLoopGetMain();
    CFRunLoopAddObserver(Main, *(a1[4] + 64), kCFRunLoopCommonModes);
    *(a1[4] + 72) = 1;
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  v4 = [CRLPair pairWithFirst:a1[5] second:a1[6], v5, v6, v7, v8];
  *(*(a1[7] + 8) + 24) = [*(a1[4] + 48) containsObject:v4];
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    [*(a1[4] + 48) removeObject:v4];
  }
}

void sub_1003B6A1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1003B6A3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained p_tearDownRunloopObserver];
}

id sub_1003B6BB4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1003B6BE8(void *a1)
{
  v5 = [CRLPair pairWithFirst:a1[4] second:a1[5]];
  v2 = [*(a1[6] + 56) objectForKeyedSubscript:v5];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[6] + 56) removeObjectForKey:v5];
}

void sub_1003B6FF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    if (*(v2 + 72) == 1)
    {
      [*(v2 + 48) removeAllObjects];
      v3 = *(*(a1 + 32) + 64);
    }

    CFRunLoopObserverInvalidate(v3);
    v4 = *(*(a1 + 32) + 64);
    if (v4)
    {
      CFRelease(v4);
      *(*(a1 + 32) + 64) = 0;
    }
  }
}

uint64_t sub_1003B729C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 rootIndex] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v4, "rootIndex") == 0x7FFFFFFFFFFFFFFFLL;
  v6 = [v3 rootIndex];
  v7 = [v4 rootIndex];
  if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = v6 > v7;
  }

  if (v5 || !v8)
  {
    v8 = [v3 compare:v4];
    if (!v8)
    {
      [v3 searchReferencePoint];
      v10 = v9;
      v12 = v11;
      [v4 searchReferencePoint];
      v15 = v12 > v14;
      if (v12 < v14)
      {
        v15 = -1;
      }

      v16 = v10 > v13;
      if (v10 < v13)
      {
        v16 = -1;
      }

      if (v15)
      {
        v8 = v15;
      }

      else
      {
        v8 = v16;
      }
    }
  }

  return v8;
}

void sub_1003B7640(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B7684(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B7B84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B7BC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B7EC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B7F04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B81FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8240(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8618(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B865C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B87FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8840(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8AEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8B30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8D14(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8D58(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8F3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B8F80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B942C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B9470(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B977C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B97C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B9F08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003B9F4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BA220(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BA264(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BA2A8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003BA3AC;
  v11[3] = &unk_10185CA78;
  v15 = *(a1 + 72);
  v6 = *(a1 + 48);
  v14 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  [v5 asyncPerformSearchWithSearchTarget:a2 resultsArray:v4 completionBlock:v11];
}

void sub_1003BA3AC(uint64_t a1)
{
  if (*(a1 + 72) == [*(a1 + 32) currentRootSearchTargetRange] && *(a1 + 80) == v2)
  {
    v5 = [*(a1 + 48) count];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = *(a1 + 56);
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          [v11 setRootIndex:{0, v16}];
          [*(a1 + 48) addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 48) count] - v5);
    v13 = [*(a1 + 32) layoutSearchCountForRootIndexMap];
    [v13 setObject:v12 forKey:&off_1018E2CE8];

    [*(a1 + 40) removeAllObjects];
    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) allObjects];
    [v14 addObjectsFromArray:v15];

    [*(a1 + 32) sortLayoutSearchResultsArray:*(a1 + 40)];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 p_asyncBuildLayoutSearchResultsForRootSearchTargetsInRange:? resultsArray:? completionBlock:?];
  }
}

void sub_1003BA7D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BA81C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BAF6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BAFB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BAFF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BB038(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BB580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BB598(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003BB5B0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 searchReferencePoint];
  v11.x = v7;
  v11.y = v8;
  if (CGRectContainsPoint(*(a1 + 40), v11))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1003BB8C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BB908(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BB94C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BB990(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BBD30(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BBD74(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BC1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003BC1FC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([objc_opt_class() searchReference:v7 isAfterSearchReference:a1[5] inDirection:a1[7]])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1003BC34C(uint64_t a1)
{
  v2 = [*(a1 + 32) p_searchReferenceAfterReference:*(a1 + 40) inDirection:*(a1 + 56)];
  (*(*(a1 + 48) + 16))();
}

void sub_1003BD1A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD1E4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD228(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD26C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD2B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD2F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD338(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD37C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BD460(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_101A34DC0;
  qword_101A34DC0 = v1;
}

void sub_1003BE2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003BE2BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003BE2D4(uint64_t a1)
{
  v5 = +[UIColor secondaryLabelColor];
  v2 = [CRLColor colorWithUIColor:v5];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1003BF258(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BF29C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BF2E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BF324(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BF368(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BF3AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BF9FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BFA40(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BFA84(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003BFAC8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C0570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  sub_10024068C(va);
  _Unwind_Resume(a1);
}

void sub_1003C05E8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C062C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C0944(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C0988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C172C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v50 - 240), 8);

  _Block_object_dispose((v50 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003C18DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003C18F4(void *a1, uint64_t a2, void *a3)
{
  v12 = a3;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  *(*(a1[5] + 8) + 24) = a2;
  v6 = [v12 range];
  v8 = a1[8];
  if (v8 - v6 < v7 && v8 >= v6 || v8 == v6 + v7)
  {
    v11 = [v12 lineIndexForCharIndex:? eol:?];
    if (v11 <= 0x7FFFFFFFFFFFFFFELL)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a3);
      *(*(a1[7] + 8) + 24) = [v12 lineFragmentAtIndex:v11];
    }
  }
}

void sub_1003C19EC(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void sub_1003C1A50(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C1A94(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C1AD8(uint64_t a1)
{
  v4 = [*(a1 + 32) editorController];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) editor];
  [v4 setSelection:v2 forEditor:v3 withFlags:1024];
}

char *sub_1003C2B98(uint64_t a1)
{
  v2 = [*(a1 + 32) range];
  if (v2 >= [*(a1 + 40) range] || (v3 = objc_msgSend(*(a1 + 40), "range"), v5 = &v3[v4], v6 = objc_msgSend(*(a1 + 32), "range"), v5 >= &v6[v7]))
  {
    v13 = [*(a1 + 32) range];
    v15 = v14;
    v17.location = [*(a1 + 40) range];
    v17.length = v16;
    v18.location = v13;
    v18.length = v15;

    return NSUnionRange(v18, v17).location;
  }

  else
  {
    v8 = [*(a1 + 40) range];
    v9 = [*(a1 + 32) range];
    if (v8 <= &v9[v10 >> 1])
    {
      v19 = [*(a1 + 40) range];
      v20 = [*(a1 + 32) range];
      if (v19 >= &v20[v21])
      {
        return &v20[v21];
      }

      else
      {
        return v19;
      }
    }

    else
    {
      v11 = [*(a1 + 32) range];
      result = [*(a1 + 40) range];
      if (v11 < result)
      {
        return v11;
      }
    }
  }

  return result;
}

void sub_1003C31C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3204(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3248(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C328C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C32D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C340C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1003C39F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3A3C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3A80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3AC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3B08(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3B4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C3C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003C3C58(uint64_t a1, uint64_t a2, id a3)
{
  result = a3;
  **(a1 + 40) = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  return result;
}

void sub_1003C3D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003C3DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v5 = [v4 lineFragmentAtIndex:a2];
  v6 = 0;
  v7 = v5[6];
  v8 = *(v5 + 3);
  v9 = a2 + 1;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  while (v6 < [v4 lineCount])
  {
    v11 = [v4 lineFragmentAtIndex:v6];
    v24 = v11;
    v12 = v11[6];
    if (v7 == v12 || vabdd_f64(v7, v12) < 0.00999999978)
    {
      if (v6 == v10 + 1)
      {
        v13 = [v4 lineFragmentAtIndex:v10];
        v14 = v26;
        if (v26 >= v27)
        {
          v16 = (v26 - __p) >> 3;
          if ((v16 + 1) >> 61)
          {
            sub_1000C1D48();
          }

          v17 = (v27 - __p) >> 2;
          if (v17 <= v16 + 1)
          {
            v17 = v16 + 1;
          }

          if (v27 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_1003D53A8(&__p, v18);
          }

          v19 = (8 * v16);
          *v19 = v13;
          v15 = 8 * v16 + 8;
          v20 = v19 - (v26 - __p);
          memcpy(v20, __p, v26 - __p);
          v21 = __p;
          __p = v20;
          v26 = v15;
          v27 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v26 = v13;
          v15 = (v14 + 8);
        }

        v26 = v15;
      }

      sub_1003C3FF8(&__p, &v24);
    }

    else if ((v8 & 0x100000000) != 0 && v9 == v6)
    {
      sub_1003C3FF8(&__p, &v24);
      v7 = v12;
    }

    else if ((v11[3] & &_mh_execute_header) != 0)
    {
      v10 = v6;
    }

    ++v6;
  }

  v22 = __p;
  if (v26 != __p)
  {
    (*(*(a1 + 32) + 16))();
    v22 = __p;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (v22)
  {
    v26 = v22;
    operator delete(v22);
  }
}

void sub_1003C3FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003C3FF8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000C1D48();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1003D53A8(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1003C4308(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C434C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C4624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

__n128 sub_1003C4680(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1003C4690(uint64_t a1, void *a2)
{
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v54 = a2;
  v3 = [v54 columns];
  v4 = [v3 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v4)
  {
    v55 = *v59;
    v5 = v3;
    do
    {
      v56 = v4;
      for (i = 0; i != v56; i = i + 1)
      {
        if (*v59 != v55)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v58 + 1) + 8 * i);
        v8 = [v7 range];
        v10 = *(a1 + 64);
        if (v10 - v8 < v9 && v10 >= v8 || v10 == v8 + v9)
        {
          v13 = [v7 lineIndexForCharIndex:? eol:?];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = [v7 lineFragmentAtIndex:v13];
            v15 = v14;
            if (*(v14 + 3) < 0)
            {
              v16 = &xmmword_101464828;
            }

            else
            {
              v16 = v14;
            }

            v17 = *(v16 + 1);
            v18 = *(*(a1 + 40) + 8);
            *(v18 + 48) = *v16;
            *(v18 + 56) = v17;
            *(*(*(a1 + 48) + 8) + 24) = *(v14 + 3);
            v19 = *(v14 + 6);
            v20 = [*(a1 + 32) textSource];
            v21 = [*(a1 + 32) textSource];
            sub_1002407EC(v57, v20, 0, 0, 0, [v21 paragraphCount] != 1);

            v22 = sub_100240930(v57);
            if (*(a1 + 88) == 1)
            {
              if (v13)
              {
                v23 = v22;
                v24 = v13 - 1;
                while (1)
                {
                  v25 = [v7 lineFragmentAtIndex:v24];
                  v26 = v25;
                  if (*(v25 + 3) < 0)
                  {
                    v27 = &xmmword_101464828;
                  }

                  else
                  {
                    v27 = v25;
                  }

                  v28 = *(v27 + 1);
                  v29 = *(*(a1 + 40) + 8);
                  *(v29 + 48) = *v27;
                  *(v29 + 56) = v28;
                  *(*(*(a1 + 48) + 8) + 24) = *(v15 + 3);
                  v30 = *(v25 + 3);
                  if ((v30 & 0x100000000) != 0 && *v25 == v23 && (v30 < 0 ? (v31 = &xmmword_101464828) : (v31 = v25), *v31 + *(v31 + 1) == *v15))
                  {
                    if (!v23)
                    {
                      *(*(*(a1 + 56) + 8) + 24) = v24;
                      v53 = v7;
                      goto LABEL_63;
                    }
                  }

                  else if (!v24 || (*(a1 + 89) & 1) == 0 || (v32 = [v7 lineFragmentAtIndex:v24 - 1], (*(v32 + 28) & 1) == 0) || *v32 != v23)
                  {
                    v33 = *(v26 + 6);
                    v34 = v33 >= v19 || v33 == v19;
                    if (!v34 && vabdd_f64(v33, v19) >= 0.00999999978)
                    {
                      v50 = *(v26 + 3);
                      if ((v50 & 0x100) != 0 && (v50 & 0x200800) != 0)
                      {
                        **(a1 + 72) = 0;
                        goto LABEL_70;
                      }

                      if ((*(v26 + 3) & 0x201) != 1)
                      {
LABEL_70:
                        v51 = (v50 & 0x200) == 0;
                        *(*(*(a1 + 56) + 8) + 24) = v24;
                        v52 = v7;
                        **(a1 + 80) = v7;
                        if (!v51)
                        {
LABEL_71:
                          **(a1 + 72) = 0;
                        }
                      }

                      goto LABEL_72;
                    }
                  }

                  if (--v24 == -1)
                  {
                    goto LABEL_72;
                  }
                }
              }

              if (!*v15)
              {
                *(*(*(a1 + 56) + 8) + 24) = 0;
                v49 = v7;
                **(a1 + 80) = v7;
                goto LABEL_71;
              }
            }

            else
            {
              if (v13 + 1 == [v7 lineCount])
              {
                v35 = *(v15 + 3) < 0 ? &xmmword_101464828 : v15;
                v36 = *v35;
                v37 = *(v35 + 1);
                v38 = [*(a1 + 32) textSource];
                LODWORD(v36) = v36 + v37 == [v38 length];

                if (v36)
                {
                  *(*(*(a1 + 56) + 8) + 24) = v13;
                  v39 = v7;
                  **(a1 + 80) = v7;
                }
              }

              while (1)
              {
                v40 = v13++;
                if (v40 + 1 >= [v7 lineCount])
                {
                  goto LABEL_72;
                }

                v41 = [v7 lineFragmentAtIndex:v40 + 1];
                v42 = v41;
                if (*(v41 + 3) < 0)
                {
                  v43 = &xmmword_101464828;
                }

                else
                {
                  v43 = v41;
                }

                v44 = *(v43 + 1);
                v45 = *(*(a1 + 40) + 8);
                *(v45 + 48) = *v43;
                *(v45 + 56) = v44;
                *(*(*(a1 + 48) + 8) + 24) = *(v15 + 3);
                if ((*(a1 + 89) & 1) != 0 || (*(v41 + 28) & 1) == 0)
                {
                  v46 = [v7 lineFragmentAtIndex:v40];
                  if ((*(a1 + 89) != 1 || (v46[28] & 1) == 0) && v19 != 0.0 && *(v42 + 6) != 0.0)
                  {
                    break;
                  }
                }
              }

              v47 = *(v42 + 3);
              if ((v47 & 1) == 0 || (v47 & 0x100) != 0 && (v47 & 0x200800) != 0)
              {
                *(*(*(a1 + 56) + 8) + 24) = v40 + 1;
                v48 = v7;
LABEL_63:
                **(a1 + 80) = v7;
              }
            }

LABEL_72:
            sub_10024068C(v57);
            v3 = v5;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v58 objects:v62 count:16];
    }

    while (v4);
  }
}

void sub_1003C4C08(uint64_t a1, void *a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a2 columns];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 range];
        v10 = *(a1 + 40);
        if (v10 - v8 < v9 && v10 >= v8 || v10 == v8 + v9)
        {
          v13 = [v7 lineIndexForCharIndex:? eol:?];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            *(*(*(a1 + 32) + 8) + 24) = v13;
            v14 = v7;
            **(a1 + 48) = v7;
            goto LABEL_19;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

void sub_1003C4E4C(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 columns];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 range];
        v10 = *(a1 + 40);
        v12 = v10 - v8 < v9 && v10 >= v8 || v10 == v8 + v9;
        if (v12 && [v7 lineIndexForCharIndex:? eol:?] <= 0x7FFFFFFFFFFFFFFELL)
        {
          (*(*(a1 + 32) + 16))();
          goto LABEL_19;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

void sub_1003C5278(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 lineCount];
  if (a2 != 0x7FFFFFFFFFFFFFFFLL && !v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101365520();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101365534();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013655BC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLWPEditorHelper withLineFragmentForCharIndex:eol:performBlock:]_block_invoke"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditorHelper.mm"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:1670 isFatal:0 description:"Empty column in p_withLineIndexForCharIndex"];
  }

  if ([v5 lineCount] > a2)
  {
    [v5 lineFragmentAtIndex:a2];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1003C5488(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C54CC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C5784(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C57C8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C5A80(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C5AC4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C6BCC(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003C6C10(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003C6C54(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = a3;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (v6 == *a2)
  {
    v17 = *(a1 + 56);
  }

  else
  {
    v7 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    MaxX = -INFINITY;
    MinX = INFINITY;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v12 = v5[v7];
      v13 = v12[5];
      v14 = v12[6];
      v15 = v12[7];
      v16 = v12[8];
      v42.origin.x = v13;
      v42.origin.y = v14;
      v42.size.width = v15;
      v42.size.height = v16;
      if (CGRectGetMinX(v42) < MinX)
      {
        v43.origin.x = v13;
        v43.origin.y = v14;
        v43.size.width = v15;
        v43.size.height = v16;
        MinX = CGRectGetMinX(v43);
        v8 = v7;
      }

      v44.origin.x = v13;
      v44.origin.y = v14;
      v44.size.width = v15;
      v44.size.height = v16;
      if (CGRectGetMaxX(v44) > MaxX)
      {
        v45.origin.x = v13;
        v45.origin.y = v14;
        v45.size.width = v15;
        v45.size.height = v16;
        MaxX = CGRectGetMaxX(v45);
        v11 = v7;
      }

      ++v7;
      v5 = *a2;
      v6 = *(a2 + 8);
    }

    while (v7 < (v6 - *a2) >> 3);
    v17 = *(a1 + 56);
    if (v17 == 3 && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = v5[v8];
      *(*(*(a1 + 48) + 8) + 24) = sub_100211708(v18);
      if (*(a1 + 64) && sub_1002117DC(v18, *(*(*(a1 + 48) + 8) + 24)) == 1)
      {
        v19 = *(*(*(a1 + 48) + 8) + 24);
        v20 = [*(a1 + 32) textSource];
        if (v19 >= [v20 length])
        {
        }

        else
        {
          v21 = [*(a1 + 40) characterAtIndex:*(*(*(a1 + 48) + 8) + 24)];
          v22 = v21;
          v23 = sub_10027E2F0(v21);
          if (v22 == 8232)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          if ((v24 & 1) == 0)
          {
            **(a1 + 64) = 0;
          }
        }
      }

      v38 = *(a1 + 72);
      v39 = (*(v18 + 24) >> 12) & 1;
LABEL_44:
      *v38 = v39;
      goto LABEL_45;
    }

    if (v17 == 2 && v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = v5[v11];
      *(*(*(a1 + 48) + 8) + 24) = sub_10021173C(v25);
      if (*(a1 + 64) && !sub_1002117DC(v25, *(*(*(a1 + 48) + 8) + 24)))
      {
        v26 = *(*(*(a1 + 48) + 8) + 24);
        v27 = [*(a1 + 32) textSource];
        if (v26 >= [v27 length])
        {
        }

        else
        {
          v28 = [*(a1 + 40) characterAtIndex:*(*(*(a1 + 48) + 8) + 24)];
          v29 = v28;
          v30 = sub_10027E2F0(v28);
          if (v29 == 8232)
          {
            v31 = 1;
          }

          else
          {
            v31 = v30;
          }

          if ((v31 & 1) == 0)
          {
            **(a1 + 64) = 0;
          }
        }
      }

      LOBYTE(v39) = (*(v25 + 24) & 0x1000) == 0;
      v38 = *(a1 + 72);
      goto LABEL_44;
    }
  }

  if (v17)
  {
    if (v17 == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = **v5;
    }
  }

  else
  {
    v32 = *(v6 - 8);
    if (*(v32 + 3) < 0)
    {
      v32 = &xmmword_101464828;
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) charIndexRemappedFromStorage:*v32 + *(v32 + 1)];
    v33 = *(*(*(a1 + 48) + 8) + 24);
    if (v33 > *(a1 + 80) && v33 > *(a1 + 88))
    {
      v34 = [*(a1 + 40) characterAtIndex:v33 - 1];
      v35 = v34;
      v36 = sub_10027E2F0(v34) ^ 1;
      if (v35 == 8232)
      {
        LOBYTE(v36) = 0;
      }

      if ((v36 & 1) == 0)
      {
        v37 = [*(a1 + 32) textSource];
        *(*(*(a1 + 48) + 8) + 24) = [v37 previousCharacterIndex:*(*(*(a1 + 48) + 8) + 24)];
      }
    }
  }

LABEL_45:
}

void sub_1003C7020(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C7064(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C70A8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C70EC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C7130(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C7174(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C7A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, ...)
{
  va_start(va, a6);

  sub_10024068C(va);
  _Unwind_Resume(a1);
}

void sub_1003C7BAC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C7BF0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C7C34(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C7C78(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C85BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C8600(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C893C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  sub_10024068C(&a9);

  _Unwind_Resume(a1);
}

void sub_1003C89B4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C89F8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C93D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  v31 = *(v29 - 248);
  if (v31)
  {
    *(v29 - 240) = v31;
    operator delete(v31);
  }

  _Block_object_dispose((v29 - 224), 8);
  _Block_object_dispose((v29 - 192), 8);

  _Unwind_Resume(a1);
}

double sub_1003C951C(void *a1, uint64_t *a2)
{
  if (a2)
  {
    if (a2[3] < 0)
    {
      v4 = &xmmword_101464828;
    }

    else
    {
      v4 = a2;
    }

    v5 = *(v4 + 1);
    v6 = *(a1[4] + 8);
    *(v6 + 48) = *v4;
    *(v6 + 56) = v5;
    sub_100213820(a2, &v10);
    v7 = a1[6];
    v8 = *v7;
    if (*v7)
    {
      *(v7 + 8) = v8;
      operator delete(v8);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    result = *&v10;
    *v7 = v10;
    *(v7 + 16) = v11;
    *(*(a1[5] + 8) + 24) = (a2[3] & 0x1000) != 0;
  }

  return result;
}

double sub_1003C95C8(void *a1, uint64_t *a2)
{
  if (a2)
  {
    if (a2[3] < 0)
    {
      v4 = &xmmword_101464828;
    }

    else
    {
      v4 = a2;
    }

    v5 = *(v4 + 1);
    v6 = *(a1[4] + 8);
    *(v6 + 48) = *v4;
    *(v6 + 56) = v5;
    sub_100213820(a2, &v10);
    v7 = a1[6];
    v8 = *v7;
    if (*v7)
    {
      *(v7 + 8) = v8;
      operator delete(v8);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    result = *&v10;
    *v7 = v10;
    *(v7 + 16) = v11;
    *(*(a1[5] + 8) + 24) = (a2[3] & 0x1000) != 0;
  }

  return result;
}

void sub_1003C9674(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003C96B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CA8F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CA938(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CAE4C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CAE90(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CB0C0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CB104(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CD914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1003CE75C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CE7A0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CED04(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CED48(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CED8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CEDD0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CF4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, id a11)
{
  sub_10024068C(&a11);

  _Unwind_Resume(a1);
}

void sub_1003CF694(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CF6D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CF71C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003CF760(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D00C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1003D148C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D14D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D1514(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D1558(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D159C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D15E0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D17C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1003D1FA8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D1FEC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D2030(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D2074(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D20B8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D20FC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D260C(_Unwind_Exception *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, ...)
{
  va_start(va, a15);

  sub_10024068C(va);
  _Unwind_Resume(a1);
}

NSString *__cdecl sub_1003D27F0(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[NSLocale currentLocale];
  v4 = [(NSString *)v2 uppercaseStringWithLocale:v3];

  return v4;
}

NSString *__cdecl sub_1003D2924(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[NSLocale currentLocale];
  v4 = [(NSString *)v2 lowercaseStringWithLocale:v3];

  return v4;
}

NSString *__cdecl sub_1003D2A58(id a1, NSString *a2)
{
  v2 = a2;
  v3 = +[NSLocale currentLocale];
  v4 = [(NSString *)v2 capitalizedStringWithLocale:v3];

  return v4;
}

void sub_1003D3190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1003D32D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D3314(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D39B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v36 - 168), 8);

  _Unwind_Resume(a1);
}

void sub_1003D3A2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 24) < 0)
    {
      v3 = &xmmword_101464828;
    }

    else
    {
      v3 = a2;
    }

    v4 = *(v3 + 1);
    v5 = *(*(a1 + 32) + 8);
    *(v5 + 48) = *v3;
    *(v5 + 56) = v4;
    sub_1002127A8(a2, *(a1 + 48), *(a1 + 56), 1, 1);
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

void sub_1003D3AA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 24) < 0)
    {
      v3 = &xmmword_101464828;
    }

    else
    {
      v3 = a2;
    }

    v4 = *(v3 + 1);
    v5 = *(*(a1 + 32) + 8);
    *(v5 + 48) = *v3;
    *(v5 + 56) = v4;
    sub_1002127A8(a2, *(a1 + 48), *(a1 + 56), 1, 1);
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

void sub_1003D4348(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D438C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D43D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4414(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4458(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D449C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4E6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4EB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4EF4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4F38(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4F7C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D4FC0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5004(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5048(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D508C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D50D0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D53A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000C1E4C();
}

void sub_1003D5804(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5848(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5AD4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5B18(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5CB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5CFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5E8C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D5ED0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

double sub_1003D605C(int a1, double a2)
{
  v2 = 0.0;
  if ((a1 & 0x80000000) == 0)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v5 = a2 * a2 * a2;
        return v5 / 6.0;
      }

      return v2;
    }

    v3 = (a2 * -3.0 + 3.0) * a2 + 3.0;
LABEL_10:
    v4 = 1.0;
    goto LABEL_11;
  }

  if (a1 == -2)
  {
    v3 = (3.0 - a2) * a2 + -3.0;
    goto LABEL_10;
  }

  if (a1 == -1)
  {
    v3 = (a2 * 3.0 + -6.0) * a2;
    v4 = 4.0;
LABEL_11:
    v5 = v4 + v3 * a2;
    return v5 / 6.0;
  }

  return v2;
}

double sub_1003D60E0(int a1, double a2)
{
  v2 = 0.0;
  if (a1 < 0)
  {
    if (a1 != -2)
    {
      if (a1 == -1)
      {
        return a2 * a2 * 0.5 + (a2 * 3.0 + -6.0) * a2 / 3.0;
      }

      return v2;
    }

    v3 = (a2 * -2.0 + 3.0) * a2 / 6.0 + (3.0 - a2) * a2 / 6.0;
    v4 = -0.5;
    return v3 + v4;
  }

  if (!a1)
  {
    __asm
    {
      FMOV            V2.2D, #3.0
      FMOV            V1.2D, #6.0
    }

    v3 = vaddvq_f64(vdivq_f64(vmulq_n_f64(vmlaq_n_f64(_Q2, xmmword_1014656A0, a2), a2), _Q1));
    v4 = 0.5;
    return v3 + v4;
  }

  if (a1 == 1)
  {
    return a2 * a2 * 3.0 / 6.0;
  }

  return v2;
}

double sub_1003D61A4(int a1, double result)
{
  if ((a1 & 0x80000000) == 0)
  {
    if (!a1)
    {
      v2 = 1.0;
      v3 = -3.0;
      return v2 + result * v3;
    }

    if (a1 == 1)
    {
      return result;
    }

    return 0.0;
  }

  if (a1 == -2)
  {
    return 1.0 - result;
  }

  if (a1 != -1)
  {
    return 0.0;
  }

  v2 = -2.0;
  v3 = 3.0;
  return v2 + result * v3;
}

double sub_1003D61F8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = (a5 + a3 * 2.0) * 0.333333333;
  v9 = (a6 + a4 * 2.0) * 0.333333333;
  v10 = (a3 + a5 * 2.0) * 0.333333333;
  v11 = (a4 + a6 * 2.0) * 0.333333333;
  v19 = ((a1 + a3 * 2.0) * 0.333333333 + v8) * 0.5;
  v12 = ((a2 + a4 * 2.0) * 0.333333333 + v9) * 0.5;
  v13 = (v10 + (a7 + a5 * 2.0) * 0.333333333) * 0.5;
  v14 = (v11 + (a8 + a6 * 2.0) * 0.333333333) * 0.5;
  v18 = sub_100120090(v19, v12, v8, v9);
  v15 = sub_100120090(v8, v9, v10, v11);
  v16 = v18 + v15 + sub_100120090(v10, v11, v13, v14);
  return v16 * 0.5 + sub_100120090(v19, v12, v13, v14) * 0.5;
}

double sub_1003D6310(void *a1, uint64_t a2, double (*a3)(void, double), double a4)
{
  v8 = 80 * a2 - 72;
  v9 = -4;
  x = CGPointZero.x;
  y = CGPointZero.y;
  do
  {
    if (a2 + v9 + 2 > -2)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
      if (v14 >> 31)
      {
        v24 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101367240();
        }

        log = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109890;
          v31 = v24;
          v32 = 2082;
          v33 = "CGPoint splinePoint(const std::vector<_CRLPKStrokePoint> &, NSInteger, CGFloat, CGFloat (*)(int, CGFloat))";
          v34 = 2082;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKBSplineUtility.mm";
          v36 = 1024;
          v37 = 113;
          _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out-of-bounds type assignment was clamped to max", buf, 0x22u);
        }

        if (qword_101AD5A10 != -1)
        {
          dispatch_once(&qword_101AD5A10, &stru_10185DE08);
        }

        loga = off_1019EDA68;
        v20 = os_log_type_enabled(loga, OS_LOG_TYPE_ERROR);
        v21 = loga;
        if (v20)
        {
          v22 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v31 = v24;
          v32 = 2114;
          v33 = v22;
          v26 = v22;
          _os_log_error_impl(&_mh_execute_header, loga, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);

          v21 = loga;
        }

        logb = [NSString stringWithUTF8String:"CGPoint splinePoint(const std::vector<_CRLPKStrokePoint> &, NSInteger, CGFloat, CGFloat (*)(int, CGFloat))"];
        v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/PencilKit/CRLPKBSplineUtility.mm"];
        [CRLAssertionHandler handleFailureInFunction:logb file:v25 lineNumber:113 isFatal:0 description:"Out-of-bounds type assignment was clamped to max"];

        v14 = 0x7FFFFFFFLL;
      }

      if (a2 + v9 + 3 >= v14)
      {
        v15 = a1[1];
        v12 = (v15 - 72);
        v13 = (v15 - 64);
      }

      else
      {
        v12 = (*a1 + v8);
        v13 = v12 + 1;
      }
    }

    else
    {
      v12 = (*a1 + 8);
      v13 = (*a1 + 16);
    }

    v16 = *v13;
    v17 = *v12;
    v18 = a3((v9 + 2), a4);
    x = x + v18 * v17;
    y = y + v18 * v16;
    v8 += 80;
  }

  while (!__CFADD__(v9++, 1));
  return x;
}

void sub_1003D6694(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D66D8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

float64x2_t sub_1003D671C(float64x2_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = &qword_1014656F0;
  do
  {
    result = a1[2];
    *(a2 + v2) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[1], *(v3 - 4)), *a1, *(v3 - 8)), result, *v3), a1[3], v3[4]);
    v2 += 16;
    ++v3;
  }

  while (v2 != 64);
  return result;
}

CGPath *sub_1003D6768(void *a1, int a2)
{
  v3 = a1;
  Mutable = CGPathCreateMutable();
  if ([v3 count] >= 2)
  {
    for (i = 0; i < [v3 count] - 1 && (!a2 || i != objc_msgSend(v3, "count") - 2); ++i)
    {
      v7 = 0;
      v8 = &v31.f64[1];
      do
      {
        if (!&i[v7])
        {
          v20 = [v3 objectAtIndexedSubscript:0];
          [v20 location];
          v11 = v21;
          v22 = [v3 objectAtIndexedSubscript:1];
          [v22 location];
          v14 = v23;

          v15 = [v3 objectAtIndexedSubscript:0];
          [v15 location];
          v17 = v24;
          v18 = [v3 objectAtIndexedSubscript:1];
          [v18 location];
          goto LABEL_12;
        }

        if (&i[v7] == [v3 count] + 1)
        {
          v9 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
          [v9 location];
          v11 = v10;
          v12 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 2}];
          [v12 location];
          v14 = v13;

          v15 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
          [v15 location];
          v17 = v16;
          v18 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 2}];
          [v18 location];
LABEL_12:
          v25 = -(v14 - v11 * 2.0);
          v26 = -(v19 - v17 * 2.0);

          *(v8 - 1) = v25;
          *v8 = v26;
          goto LABEL_14;
        }

        v27 = [v3 objectAtIndexedSubscript:&i[v7 - 1]];
        [v27 location];
        *(v8 - 1) = v28;
        *v8 = v29;

LABEL_14:
        ++v7;
        v8 += 2;
      }

      while (v7 != 4);
      sub_1003D671C(&v31, v30);
      if (!i)
      {
        CGPathMoveToPoint(Mutable, 0, v30[0], v30[1]);
      }

      CGPathAddCurveToPoint(Mutable, 0, v30[2], v30[3], v30[4], v30[5], v30[6], v30[7]);
    }
  }

  return Mutable;
}

CGPath *sub_1003D6A80(void *a1, char a2)
{
  Mutable = CGPathCreateMutable();
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v6 = v5 - 2;
  if (v5 < 2)
  {
    return Mutable;
  }

  v7 = v5 - 1;
  v8 = 0;
  v9 = v5 + 1;
  v10 = -72;
  __asm { FMOV            V2.2D, #2.0 }

  v23 = _Q2;
  do
  {
    if (v8 == v6 && (a2 & 1) != 0)
    {
      return Mutable;
    }

    v16 = 0;
    v17 = v8;
    v18 = v10;
    do
    {
      if (!v17)
      {
        v20 = *(*a1 + 8);
        v21 = *(*a1 + 88);
        goto LABEL_11;
      }

      v19 = *a1;
      if (v9 == v17)
      {
        v20 = *(v19 + 80 * v7 + 8);
        v21 = *(v19 + 80 * v6 + 8);
LABEL_11:
        v25[v16] = vmlaq_f64(vnegq_f64(v21), _Q2, v20);
        goto LABEL_13;
      }

      v25[v16] = *(v19 + v18);
LABEL_13:
      ++v16;
      v18 += 80;
      ++v17;
    }

    while (v16 != 4);
    sub_1003D671C(v25, v24);
    if (!v8)
    {
      CGPathMoveToPoint(Mutable, 0, v24[0], v24[1]);
    }

    CGPathAddCurveToPoint(Mutable, 0, v24[2], v24[3], v24[4], v24[5], v24[6], v24[7]);
    ++v8;
    v10 += 80;
    _Q2 = v23;
  }

  while (v8 != v7);
  return Mutable;
}

void sub_1003D72E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  if (v5)
  {
    v6 = [v5 fileType];
    v7 = +[CRLIngestionTypes supportedImageTypes];
    if ([v6 crl_conformsToAnyUTI:v7])
    {

LABEL_5:
      v11 = [v5 fileWrapper];
      v12 = v11;
      if (!v11 || ![v11 isRegularFile])
      {
        goto LABEL_36;
      }

      v27 = 0;
      v13 = [[CRLTemporaryDirectory alloc] initWithError:&v27];
      v14 = v27;
      if (v14)
      {
        v15 = v14;
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101367268();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101367290();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_101367324();
        }

        v16 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v16);
        }

        v17 = [NSString stringWithUTF8String:"[CRLBoardItemProviderFactory extractPasteboardBoardItemsFrom:]_block_invoke"];
        v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItemProviderFactory.m"];
        [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:145 isFatal:0 description:"Error extracting attachment: %@", v15];
      }

      else
      {
        v19 = [v12 filename];
        if (v19)
        {
          [v12 filename];
        }

        else
        {
          [v12 preferredFilename];
        }
        v17 = ;

        if (!v17)
        {
          v15 = 0;
LABEL_35:

LABEL_36:
          goto LABEL_37;
        }

        v20 = [(CRLTemporaryDirectory *)v13 URL];
        v18 = [v20 URLByAppendingPathComponent:v17];

        v26 = 0;
        [v12 writeToURL:v18 options:0 originalContentsURL:0 error:&v26];
        v15 = v26;
        if (v15)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_10136734C();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101367374();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101367408();
          }

          v21 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130EFC0(v21);
          }

          v22 = [NSString stringWithUTF8String:"[CRLBoardItemProviderFactory extractPasteboardBoardItemsFrom:]_block_invoke"];
          v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItemProviderFactory.m"];
          [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:141 isFatal:0 description:"Error extracting attachment: %@", v15];
        }

        else
        {
          v24 = [CRLURLBoardItemProvider alloc];
          v25 = [v12 preferredFilename];
          v22 = [(CRLURLBoardItemProvider *)v24 initWithURL:v18 fallbackBoardItemProvider:0 isDetectedURL:0 suggestedName:v25];

          [(CRLTemporaryDirectory *)v13 setAssociatedLifetimeObject:v22];
          [*(a1 + 32) addObject:v22];
        }
      }

      goto LABEL_35;
    }

    v8 = [v5 fileType];
    v9 = +[CRLIngestionTypes supportedMovieTypes];
    v10 = [v8 crl_conformsToAnyUTI:v9];

    if (v10)
    {
      goto LABEL_5;
    }
  }

LABEL_37:
}

void sub_1003D7724(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D7768(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D77AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D77F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

CRLURLBoardItemProvider *__cdecl sub_1003D7898(id a1, NSURL *a2)
{
  v2 = a2;
  if ([CRLURLBoardItemProvider canInitWithURL:v2])
  {
    v3 = [[CRLURLBoardItemProvider alloc] initWithURL:v2 fallbackBoardItemProvider:0 isDetectedURL:0 suggestedName:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1003D7EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D7ED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003D7EE8(uint64_t a1)
{
  v2 = [*(a1 + 32) editorForEditAction:*(a1 + 56) withSender:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1003D8180(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D81C4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003D8318(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D8ED4(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D8F14(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D8F54(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D8F94(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D8FD4(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9014(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9054(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9094(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D90D4(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9114(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_101AD5C98 != -1)
  {
    sub_101367984();
  }

  v4 = off_1019EFD50;
  if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
  {
    sub_101367998(a1, v4);
  }

  if ([*(a1 + 32) state] == 1 || objc_msgSend(*(a1 + 32), "state") == 2)
  {
    v5 = *(a1 + 32);
    if ((v5[64] & 1) == 0)
    {
      [v5 p_beginDynamicDrawing];
    }
  }
}

void sub_1003D91C0(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9200(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9240(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_101AD5C98 != -1)
  {
    sub_101367A34();
  }

  v4 = off_1019EFD50;
  if (os_log_type_enabled(off_1019EFD50, OS_LOG_TYPE_DEBUG))
  {
    sub_101367998(a1, v4);
  }

  if (![*(a1 + 32) state])
  {
    [*(a1 + 32) setState:1];
    if ((*(a1 + 40) & 1) == 0)
    {
      [*(a1 + 32) p_beginDynamicDrawing];
    }
  }
}

void sub_1003D92DC(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D931C(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D935C(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D96DC(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9A74(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9DB0(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9DF0(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003D9E30(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003DA070(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003DA0B0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DA0F4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DA4D4(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003DA514(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DA558(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DA7B0(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003DAD24(id a1)
{
  v1 = sub_1004BD804("CRLFreehandGRCat");
  v2 = off_1019EFD50;
  off_1019EFD50 = v1;
}

void sub_1003DB924(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DB968(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

uint64_t sub_1003DB9AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003DB9C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 geometryInRoot];
    v4 = v3;
    if (v3)
    {
      [v3 fullTransform];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    v11 = [CRLCanvasInfoGeometry geometryFromFullTransform:&v14];
  }

  else
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136818C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013681A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101368240();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101368268(v6, v5);
    }

    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]_block_invoke");
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:53 isFatal:0 description:"Expected a layout so that we can calculate the geometries correctly"];

    v9 = [CRLCanvasInfoGeometry alloc];
    v10 = *(a1 + 32);
    if (v10)
    {
      [v10 transformInRoot];
      v10 = *(a1 + 32);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    v4 = [v10 geometry];
    [v4 size];
    v11 = [(CRLCanvasInfoGeometry *)v9 initWithTransform:&v14 size:?];
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1003DBBA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DBBE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DBC2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DBC70(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DBCB4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DBCF8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DBE9C(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DBFD8(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DC404(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DC448(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DC48C(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DC4CC(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DC658(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DC838(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DCB2C(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DCB6C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DCBB0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DCD14(void *a1, const char *a2)
{
  v3 = a1;
  if (qword_101AD5CA0 != -1)
  {
    sub_1013685CC();
  }

  v4 = off_1019EFD58;
  if (os_log_type_enabled(off_1019EFD58, OS_LOG_TYPE_INFO))
  {
    LODWORD(v10.receiver) = 138412290;
    *(&v10.receiver + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "universal reset called for %@", &v10, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CRLCanvasControllingGRDidResetNotification" object:v3];

  Class = object_getClass(v3);
  v7 = NSStringFromClass(Class);
  if ([v7 hasPrefix:@"__TSDResetNotifying"])
  {
    v10.receiver = v3;
    v8 = object_getClass(v3);
    v10.super_class = class_getSuperclass(v8);
    v9 = objc_msgSendSuper(&v10, a2);
  }

  else
  {
    [v3 reset];
  }
}

void sub_1003DCE64(id a1)
{
  v1 = sub_1004BD804("CRLTrackerManipulatorCat");
  v2 = off_1019EFD58;
  off_1019EFD58 = v1;
}

void sub_1003DD310(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DD354(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DD398(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DD3DC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DD660(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DD6A4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003DE250(id a1)
{
  v1 = sub_1004BD804("CRLDefaultCat");
  v2 = off_1019EDA60;
  off_1019EDA60 = v1;
}

void sub_1003DEF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003DEF68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained crlaxEnsureChildrenAreLoaded];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _crlaxSetHasEnqueuedBlockToLoadChildren:0];
}

BOOL sub_1003DF818(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 accessibilityFrame];
    v3 = CGRectGetMaxY(v5) >= 0.0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void sub_1003E0358(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E039C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E0828(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E086C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E0CB8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E0CFC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E1224(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E1268(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E12AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E12F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E1334(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E1CB0(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E1CF0(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E1D30(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E2FAC(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E3250(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E3294(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E36AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E36F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E3734(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E3D88(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E3DC8(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E3FE0(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E41E0(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E4220(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E4370(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E4488(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"player.currentItem.canPlayFastReverse", 0}];
  v2 = qword_101A34DE0;
  qword_101A34DE0 = v1;
}

void sub_1003E47C0(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E4844(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"player.currentItem.canPlayFastForward", 0}];
  v2 = qword_101A34DF0;
  qword_101A34DF0 = v1;
}

void sub_1003E4B78(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E52AC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E52F0(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E587C(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E58BC(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5900(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5944(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5988(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5D60(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5DA4(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5DE8(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5E2C(id a1)
{
  v1 = sub_1004BD804("CRLAssertCat");
  v2 = off_1019EDA68;
  off_1019EDA68 = v1;
}

void sub_1003E5E70(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E680C(uint64_t a1)
{
  Main = CFRunLoopGetMain();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E68C4;
  v5[3] = &unk_10183AE28;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, v5);
  CFRunLoopWakeUp(Main);
}

void sub_1003E68C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) player];
  v4 = [v3 currentItem];
  v5 = [v4 asset];

  if (v2 == v5)
  {
    if ([*(a1 + 32) statusOfValueForKey:@"playable" error:0] == 2 && objc_msgSend(*(a1 + 32), "crl_isPlayable"))
    {
      [*(a1 + 40) willChangeValueForKey:@"canPlay"];
      *(*(a1 + 40) + 192) = 1;
      [*(a1 + 40) didChangeValueForKey:@"canPlay"];
    }

    v6 = *(a1 + 40);
    [v6 rate];

    [v6 p_updatePlayerItemsAndApplyRate:?];
  }
}

void sub_1003E69B8(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E69F8(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

id sub_1003E6A38(uint64_t a1)
{
  result = [*(a1 + 32) rate];
  v4 = *(a1 + 32);
  if (v4[201] == 1 && (v4[218] & 1) == 0 && v3 == -2.0)
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_10136976C();
    }

    v5 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *v16 = 134218240;
      *&v16[4] = v6;
      *&v16[12] = 2048;
      *&v16[14] = 0xC000000000000000;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Marking as fast reversing because player rate changed to %f.", v16, 0x16u);
    }

    [*(a1 + 32) willChangeValueForKey:@"fastReversing"];
    *(*(a1 + 32) + 218) = 1;
    result = [*(a1 + 32) didChangeValueForKey:@"fastReversing"];
    v7 = *(a1 + 32);
    if (*(v7 + 200) == 1 && (*(v7 + 217) & 1) == 0)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_101369780();
      }

      v8 = off_1019EFDC0;
      if (!os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v9 = *(a1 + 32);
      *v16 = 134218240;
      *&v16[4] = v9;
      *&v16[12] = 2048;
      *&v16[14] = 0xC000000000000000;
      v10 = "CRLAVPlayerController %p: Also marking as playing because player rate changed to %f.";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, v16, 0x16u);
LABEL_35:
      [*(a1 + 32) willChangeValueForKey:{@"playing", *v16, *&v16[16]}];
      *(*(a1 + 32) + 217) = 1;
      result = [*(a1 + 32) didChangeValueForKey:@"playing"];
    }
  }

  else if (v4[202] == 1 && (v4[219] & 1) == 0 && v3 == 2.0)
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_1013697A8();
    }

    v11 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *v16 = 134218240;
      *&v16[4] = v12;
      *&v16[12] = 2048;
      *&v16[14] = 0x4000000000000000;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Marking as fast forwarding because player rate changed to %f.", v16, 0x16u);
    }

    [*(a1 + 32) willChangeValueForKey:@"fastForwarding"];
    *(*(a1 + 32) + 219) = 1;
    result = [*(a1 + 32) didChangeValueForKey:@"fastForwarding"];
    v13 = *(a1 + 32);
    if (*(v13 + 200) == 1 && (*(v13 + 217) & 1) == 0)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_1013697BC();
      }

      v8 = off_1019EFDC0;
      if (!os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v14 = *(a1 + 32);
      *v16 = 134218240;
      *&v16[4] = v14;
      *&v16[12] = 2048;
      *&v16[14] = 0x4000000000000000;
      v10 = "CRLAVPlayerController %p: Also marking as playing because player rate changed to %f.";
      goto LABEL_34;
    }
  }

  else if (v4[200] == 1 && (v4[217] & 1) == 0 && v3 == 1.0)
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_1013697E4();
    }

    v8 = off_1019EFDC0;
    if (!os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    v15 = *(a1 + 32);
    *v16 = 134218240;
    *&v16[4] = v15;
    *&v16[12] = 2048;
    *&v16[14] = 0x3FF0000000000000;
    v10 = "CRLAVPlayerController %p: Marking as playing because player rate changed to %f.";
    goto LABEL_34;
  }

  *(*(a1 + 32) + 200) = 0;
  *(*(a1 + 32) + 201) = 0;
  *(*(a1 + 32) + 202) = 0;
  return result;
}

void sub_1003E6DF4(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E6E34(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E6E74(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E6EB4(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E6EF4(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E6F34(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

id sub_1003E6F74(uint64_t a1)
{
  result = [*(a1 + 32) rate];
  if (v3 == 0.0)
  {
    *(*(a1 + 32) + 200) = [*(a1 + 32) isPlaying];
    *(*(a1 + 32) + 201) = [*(a1 + 32) isFastReversing];
    result = [*(a1 + 32) isFastForwarding];
    *(*(a1 + 32) + 202) = result;
    v4 = *(a1 + 32);
    if (v4[200] == 1)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_1013697F8();
      }

      v5 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v11 = 134217984;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Marking as not playing because player rate changed to 0.", &v11, 0xCu);
      }

      [*(a1 + 32) willChangeValueForKey:@"playing"];
      *(*(a1 + 32) + 217) = 0;
      result = [*(a1 + 32) didChangeValueForKey:@"playing"];
      v4 = *(a1 + 32);
    }

    if (v4[201] == 1)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_10136980C();
      }

      v7 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v11 = 134217984;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Marking as not fast reversing because player rate changed to 0.", &v11, 0xCu);
      }

      [*(a1 + 32) willChangeValueForKey:@"fastReversing"];
      *(*(a1 + 32) + 218) = 0;
      result = [*(a1 + 32) didChangeValueForKey:@"fastReversing"];
      v4 = *(a1 + 32);
    }

    if (v4[202] == 1)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_101369834();
      }

      v9 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 134217984;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Marking as not fast forwarding because player rate changed to 0.", &v11, 0xCu);
      }

      [*(a1 + 32) willChangeValueForKey:@"fastForwarding"];
      *(*(a1 + 32) + 219) = 0;
      return [*(a1 + 32) didChangeValueForKey:@"fastForwarding"];
    }
  }

  return result;
}

void sub_1003E71E0(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E7220(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E7260(id a1)
{
  v1 = sub_1004BD804("CRLMoviePlaybackCat");
  v2 = off_1019EFDC0;
  off_1019EFDC0 = v1;
}

void sub_1003E758C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}