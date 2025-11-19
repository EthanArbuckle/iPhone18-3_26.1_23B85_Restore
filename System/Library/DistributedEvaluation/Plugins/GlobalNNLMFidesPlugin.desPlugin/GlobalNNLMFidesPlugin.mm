void sub_1214(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1254(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && xpc_activity_should_defer(v3))
  {
    v5 = qword_8510;
    if (os_log_type_enabled(qword_8510, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "GlobalNNLM: eligibilityHandler deferred", v6, 2u);
    }

    [WeakRetained _invalidate];
  }
}

uint64_t sub_12F8(uint64_t a1)
{
  v2 = objc_alloc_init(SpeechModelTrainingClient);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return _objc_release_x1();
}

void sub_1340(id a1, NSError *a2)
{
  v2 = qword_8510;
  if (os_log_type_enabled(qword_8510, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Finished training Global NNLM.", v3, 2u);
  }
}

void *sub_1528(void *result)
{
  v1 = result[4];
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    v3 = qword_8510;
    if (os_log_type_enabled(qword_8510, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "GlobalNNLM: Invalidating", v4, 2u);
      v1 = v2[4];
    }

    *(v1 + 24) = 1;
    return [*(v2[4] + 16) invalidate];
  }

  return result;
}
 }

    v17 = [v4 recipe];
    v18 = [v17 attachments];
    v19 = [v18 firstObject];

    v20 = qword_8510;
    if (os_log_type_enabled(qword_8510, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v19;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Attachment file=%@", buf, 0xCu);
    }
  }

  v21 = qword_8510;
  if (os_log_type_enabled(qword_8510, OS_LOG_TYPE_INFO))
  {
    v22 = v21;
    v23 = [v4 recipe];
    v24 = [v23 recipeUserInfo];
    v25 = [v24 count];
    *buf = 134217984;
    v55 = v25;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "Fides recipe parameters size: %ld", buf, 0xCu);
  }

  v26 = dispatch_queue_create("com.apple.siri.speech-global-nnlm", 0);
  queue = self->_queue;
  self->_queue = v26;

  v28 = [v4 activity];

  if (v28)
  {
    objc_initWeak(buf, self);
    v29 = [v4 activity];
    v45 = _NSConcreteStackBlock;
    v46 = 3221225472;
    v47 = sub_1254;
    v48 = &unk_41A0;
    objc_copyWeak(&v49, buf);
    xpc_activity_add_eligibility_changed_handler();

    v30 = [v4 activity];
    should_defer = xpc_activity_should_defer(v30);

    if (should_defer)
    {
      v32 = qword_8510;
      if (os_log_type_enabled(qword_8510, OS_LOG_TYPE_INFO))
      {
        *v44 = 0;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "GlobalNNLM: Deferred", v44, 2u);
      }

      v52 = NSLocalizedDescriptionKey;
      v53 = @"Deferred";
      v33 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v34 = [NSError errorWithDomain:@"GlobalNNLMFidesPluginError" code:101 userInfo:v33];

      [v4 completeWithError:v34 completionHandler:0];
      objc_destroyWeak(&v49);
      objc_destroyWeak(buf);
      goto LABEL_28;
    }

    objc_destroyWeak(&v49);
    objc_destroyWeak(buf);
  }

  v35 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
  v43 = 0;
  v36 = [v4 deferWithDeadline:v35 error:&v43];
  v37 = v43;

  if (v37 || !v36)
  {
    [v4 completeWithError:v37 completionHandler:0];
  }

  else
  {
    v38 = self->_queue;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_12F8;
    v42[3] = &unk_4150;
    v42[4] = self;
    dispatch_sync(v38, v42);
    if ([(GlobalNNLMFidesPlugin *)self _invalidated])
    {
      v39 = qword_8510;
      if (os_log_type_enabled(qword_8510, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "GlobalNNLM: Deferred", buf, 2u);
      }

      v50 = NSLocalizedDescriptionKey;
      v51 = @"Deferred";
      v40 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v41 = [NSError errorWithDomain:@"GlobalNNLMFidesPluginError" code:101 userInfo:v40];

      [v4 completeWithError:v41 completionHandler:0];
    }

    else
    {
      [(SpeechModelTrainingClient *)self->_smtClient trainGlobalNNLMwithFidesSessionURL:v36 completion:&stru_41E0];
    }
  }

LABEL_28:
}

- (BOOL)_invalidated
{
  queue = self->_queue;
  if (!queue)
  {
    __assert_rtn("[GlobalNNLMFidesPlugin _invalidated]", "GlobalNNLMFidesPlugin.m", 54, "_queue");
  }

  dispatch_assert_queue_not_V2(queue);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_147C;
  v7[3] = &unk_4178;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)_invalidate
{
  queue = self->_queue;
  if (!queue)
  {
    __assert_rtn("[GlobalNNLMFidesPlugin _invalidate]", "GlobalNNLMFidesPlugin.m", 42, "_queue");
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1528;
  block[3] = &unk_4150;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_8510 = os_log_create("com.apple.speech.fides", "GlobalNNLMFidesPlugin");

    _objc_release_x1();
  }
}

@end