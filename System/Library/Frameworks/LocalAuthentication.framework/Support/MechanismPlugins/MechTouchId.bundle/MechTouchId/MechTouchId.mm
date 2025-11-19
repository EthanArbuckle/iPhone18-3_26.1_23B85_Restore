void sub_13E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1400(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _matchOperation:*(a1 + 32) matchedWithResult:*(a1 + 40)];
}

void sub_1E54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) finishedWithReason:*(a1 + 48)];
}

void sub_2134(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) stateChanged:*(a1 + 48)];
}

void sub_254C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operation:*(a1 + 32) presenceStateChanged:*(a1 + 48)];
}

void *sub_3058(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3])
  {
    result = [result isRunning];
    if (result)
    {
      result = *(a1 + 32);
      if (*(a1 + 40) == result[6])
      {

        return [result _finishFingerDetectPhase];
      }
    }
  }

  return result;
}

void sub_3518(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 identity];
  v6[0] = 67109378;
  v6[1] = [v5 userID];
  v7 = 2114;
  v8 = a2;
  _os_log_fault_impl(&dword_0, a3, OS_LOG_TYPE_FAULT, "failed to get hash for matched user %u: %{public}@", v6, 0x12u);
}