@interface NWCandidate
- (BOOL)isEligible;
- (id)description;
- (id)initCandidate:(id)candidate forManager:(id)manager evaluator:(id)evaluator;
- (id)redactedDescription;
- (void)dealloc;
- (void)handleNewPath:(id)path;
- (void)startEvaluator;
@end

@implementation NWCandidate

- (void)dealloc
{
  evaluator = self->evaluator;
  if (evaluator)
  {
    nw_path_evaluator_cancel(evaluator);
  }

  v4.receiver = self;
  v4.super_class = NWCandidate;
  [(NWCandidate *)&v4 dealloc];
}

- (id)redactedDescription
{
  if (nwlog_get_sensitive_redacted::onceToken != -1)
  {
    selfCopy = self;
    dispatch_once(&nwlog_get_sensitive_redacted::onceToken, &__block_literal_global_83);
    self = selfCopy;
  }

  if (nwlog_get_sensitive_redacted::sensitiveRedacted)
  {
    selfCopy2 = self;
    redactedDescription = [(OS_nw_interface_option_details *)self->details redactedDescription];
    redactedDescription2 = [(OS_nw_path *)selfCopy2->current_path redactedDescription];
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[CND %@ path:%@]", redactedDescription, redactedDescription2);

    v6 = v5;
  }

  else
  {
    v6 = [(NWCandidate *)self description];
  }

  return v6;
}

- (id)description
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[CND %@ path:%@]", self->details, self->current_path);

  return v2;
}

- (void)startEvaluator
{
  if (self->evaluator)
  {
    if ((*(self + 40) & 4) == 0)
    {
      *(self + 40) |= 4u;
      objc_initWeak(&location, self);
      evaluator = self->evaluator;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __29__NWCandidate_startEvaluator__block_invoke;
      v4[3] = &unk_1E6A3D2D8;
      objc_copyWeak(&v5, &location);
      nw_path_evaluator_set_update_handler(evaluator, 0, v4);
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }
  }
}

void __29__NWCandidate_startEvaluator__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleNewPath:v5];
  }
}

- (void)handleNewPath:(id)path
{
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->manager);
  if (WeakRetained)
  {
    objc_storeStrong(&self->current_path, path);
    if ([(NWCandidate *)self isEligible])
    {
      if ((*(self + 40) & 8) == 0)
      {
        nw_candidate_manager_inject(WeakRetained, self);
      }
    }

    else if ((*(self + 40) & 8) != 0)
    {
      nw_candidate_manager_remove(WeakRetained, self);
    }
  }
}

- (BOOL)isEligible
{
  WeakRetained = objc_loadWeakRetained(&self->manager);
  if (!WeakRetained || (*(self + 40) & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    current_path = self->current_path;
    if (current_path)
    {
      v5 = WeakRetained;
      v6 = current_path;
      status = _nw_path_get_status(v6);

      v8 = status != 2;
      WeakRetained = v5;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)initCandidate:(id)candidate forManager:(id)manager evaluator:(id)evaluator
{
  v34 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  managerCopy = manager;
  evaluatorCopy = evaluator;
  v29.receiver = self;
  v29.super_class = NWCandidate;
  v12 = [(NWCandidate *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->manager, managerCopy);
    objc_storeStrong(&v13->details, candidate);
    objc_storeStrong(&v13->evaluator, evaluator);
    if (evaluatorCopy)
    {
      v14 = evaluatorCopy;
      os_unfair_lock_lock(evaluatorCopy + 24);
      v15 = v14[6];
      os_unfair_lock_unlock(evaluatorCopy + 24);
    }

    else
    {
      v15 = 0;
    }

    current_path = v13->current_path;
    v13->current_path = v15;

    v17 = v13;
    goto LABEL_6;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v31 = "[NWCandidate initCandidate:forManager:evaluator:]";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (__nwlog_fault(v20, &type, &v27))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v31 = "[NWCandidate initCandidate:forManager:evaluator:]";
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v21, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v31 = "[NWCandidate initCandidate:forManager:evaluator:]";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v25)
      {
        *buf = 136446210;
        v31 = "[NWCandidate initCandidate:forManager:evaluator:]";
        _os_log_impl(&dword_181A37000, v21, v24, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v31 = "[NWCandidate initCandidate:forManager:evaluator:]";
        _os_log_impl(&dword_181A37000, v21, v26, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v20)
  {
    free(v20);
  }

LABEL_6:

  return v13;
}

@end