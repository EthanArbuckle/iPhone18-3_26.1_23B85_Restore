@interface WKRBSAssertionDelegate
- (uint64_t)assertion:(id *)assertion didInvalidateWithError:;
- (uint64_t)assertion:(uint64_t)assertion didInvalidateWithError:;
- (uint64_t)assertionWillInvalidate:(id *)invalidate;
- (uint64_t)assertionWillInvalidate:(uint64_t)invalidate;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertion:(uint64_t)assertion didInvalidateWithError:;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)assertionWillInvalidate:(uint64_t)invalidate;
- (void)dealloc;
@end

@implementation WKRBSAssertionDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WKRBSAssertionDelegate;
  [(WKRBSAssertionDelegate *)&v3 dealloc];
}

- (void)assertionWillInvalidate:(id)invalidate
{
  buf[3] = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641030;
  v5 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = self;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WKRBSAssertionDelegate: assertionWillInvalidate", buf, 0xCu);
  }

  WTF::RunLoop::mainSingleton(v5);
  location = 0;
  objc_initWeak(&location, self);
  v6 = WTF::fastMalloc(0x10);
  *v6 = &unk_1F1100C48;
  *(v6 + 8) = 0;
  objc_moveWeak((v6 + 8), &location);
  buf[0] = v6;
  WTF::RunLoop::dispatch();
  v7 = buf[0];
  buf[0] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  objc_destroyWeak(&location);
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641030;
  v7 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 134218242;
    *&buf[4] = self;
    v12 = 2114;
    errorCopy = error;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p - WKRBSAssertionDelegate: assertion was invalidated, error: %{public}@", buf, 0x16u);
  }

  WTF::RunLoop::mainSingleton(v7);
  location = 0;
  objc_initWeak(&location, self);
  v8 = WTF::fastMalloc(0x10);
  *v8 = &unk_1F1100C70;
  *(v8 + 8) = 0;
  objc_moveWeak((v8 + 8), &location);
  *buf = v8;
  WTF::RunLoop::dispatch();
  v9 = *buf;
  *buf = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  objc_destroyWeak(&location);
}

- (uint64_t)assertionWillInvalidate:(uint64_t)invalidate
{
  *invalidate = &unk_1F1100C48;
  objc_destroyWeak((invalidate + 8));
  return invalidate;
}

- (uint64_t)assertionWillInvalidate:(id *)invalidate
{
  *invalidate = &unk_1F1100C48;
  objc_destroyWeak(invalidate + 1);

  return WTF::fastFree(invalidate, v2);
}

- (void)assertionWillInvalidate:(uint64_t)invalidate
{
  WeakRetained = objc_loadWeakRetained((invalidate + 8));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if ([WeakRetained prepareForInvalidationCallback])
    {
      (*([v2 prepareForInvalidationCallback] + 16))();
    }
  }
}

- (uint64_t)assertion:(uint64_t)assertion didInvalidateWithError:
{
  *assertion = &unk_1F1100C70;
  objc_destroyWeak((assertion + 8));
  return assertion;
}

- (uint64_t)assertion:(id *)assertion didInvalidateWithError:
{
  *assertion = &unk_1F1100C70;
  objc_destroyWeak(assertion + 1);

  return WTF::fastFree(assertion, v2);
}

- (void)assertion:(uint64_t)assertion didInvalidateWithError:
{
  WeakRetained = objc_loadWeakRetained((assertion + 8));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if ([WeakRetained invalidationCallback])
    {
      (*([v2 invalidationCallback] + 16))();
    }
  }
}

@end