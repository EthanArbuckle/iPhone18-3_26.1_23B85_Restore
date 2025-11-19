@interface ChromeContextOperation
- (ChromeContextOperation)initWithChromeViewController:(id)a3 fallbackCoordinationBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_completeOperation;
- (void)addCompletionBlock:(id)a3;
- (void)addContextCoordinationBlock:(id)a3;
- (void)dealloc;
- (void)setExecuting:(BOOL)a3;
- (void)setFallbackCoordinationBlock:(id)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation ChromeContextOperation

- (void)start
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v3 = sub_100018D38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v83 = self;
    v84 = 2112;
    v85 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] [%@] starting", buf, 0x16u);
  }

  if (!WeakRetained)
  {
    v4 = sub_100018D38();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v83 = self;
      v84 = 2112;
      v85 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] [%@] will not process coordination blocks, no chrome", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (![(ChromeContextOperation *)self isCancelled])
  {
    if ([(ChromeContextOperation *)self isExecuting])
    {
      v4 = sub_100018D38();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 134349314;
        v83 = self;
        v84 = 2112;
        v85 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] [%@] will not process coordination blocks, already locked", buf, 0x16u);
      }

      goto LABEL_14;
    }

    v68 = 1;
    v5 = [WeakRetained contexts];
    v6 = [v5 copy];

    do
    {
      v7 = [(NSMutableArray *)self->_coordinationBlocks copy];
      [(NSMutableArray *)self->_coordinationBlocks removeAllObjects];
      v8 = sub_100018D38();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v7 count];
        *buf = 134349570;
        v83 = self;
        v84 = 2112;
        v85 = WeakRetained;
        v86 = 2048;
        v87[0] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}p] [%@] will process %lu coordination blocks", buf, 0x20u);
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v64 objects:v81 count:16];
      if (v11)
      {
        v12 = *v65;
        do
        {
          v13 = 0;
          v14 = v6;
          do
          {
            if (*v65 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = (*(*(*(&v64 + 1) + 8 * v13) + 16))();
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = v14;
            }

            v6 = v17;

            v13 = v13 + 1;
            v14 = v6;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v64 objects:v81 count:16];
        }

        while (v11);
      }
    }

    while ([(NSMutableArray *)self->_coordinationBlocks count]);
    v18 = sub_100018D38();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v83 = self;
      v84 = 2112;
      v85 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}p] [%@] finished processing coordination blocks", buf, 0x16u);
    }

    [(ChromeContextOperation *)self setExecuting:1];
    v53 = [(NSMutableArray *)self->_completionBlocks copy];
    coordinationBlocks = self->_coordinationBlocks;
    self->_coordinationBlocks = 0;

    completionBlocks = self->_completionBlocks;
    self->_completionBlocks = 0;

    if (![v6 count] && self->_fallbackBlock)
    {
      v21 = sub_100018D38();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 134349314;
        v83 = self;
        v84 = 2112;
        v85 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[%{public}p] [%@] no contexts from coordination blocks, using fallback block", buf, 0x16u);
      }

      v22 = (*(self->_fallbackBlock + 2))();

      v6 = v22;
    }

    fallbackBlock = self->_fallbackBlock;
    self->_fallbackBlock = 0;

    if (![v6 count])
    {
      v44 = sub_10006D178();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v83 = "[ChromeContextOperation start]";
        v84 = 2080;
        v85 = "ChromeContextCoordinationScheduler.m";
        v86 = 1024;
        LODWORD(v87[0]) = 154;
        WORD2(v87[0]) = 2080;
        *(v87 + 6) = "contexts.count > 0";
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v45 = sub_10006D178();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v83 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if (![v6 count])
    {
      v28 = sub_100018D38();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349314;
        v83 = self;
        v84 = 2112;
        v85 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "[%{public}p] [%@] no contexts after coordination", buf, 0x16u);
      }

      [(ChromeContextOperation *)self _completeOperation];
      goto LABEL_74;
    }

    objc_initWeak(&location, self);
    v24 = sub_10000B11C();
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ContextOperation", "", buf, 2u);
    }

    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100083D3C;
    v57[3] = &unk_10163BC60;
    objc_copyWeak(&v61, &location);
    v50 = WeakRetained;
    v58 = v50;
    v59 = v53;
    v52 = v6;
    v60 = v52;
    v62 = v68;
    v51 = objc_retainBlock(v57);
    v25 = [v50 contexts];
    v26 = [v52 isEqualToArray:v25];

    log = sub_100018D38();
    v27 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if (v26)
    {
      if (v27)
      {
        *buf = 134349314;
        v83 = self;
        v84 = 2112;
        v85 = WeakRetained;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}p] [%@] contexts after coordination identical to existing contexts, just stop here", buf, 0x16u);
      }

      (v51[2])();
      goto LABEL_73;
    }

    if (v27)
    {
      v47 = [v52 count];
      v29 = v52;
      if (v29)
      {
        v48 = v29;
        if ([v29 count])
        {
          v55 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v48 count]);
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v30 = v48;
          v31 = [v30 countByEnumeratingWithState:&v69 objects:buf count:16];
          obj = v30;
          if (!v31)
          {
            goto LABEL_67;
          }

          v32 = *v70;
          while (1)
          {
            v33 = 0;
            do
            {
              if (*v70 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v69 + 1) + 8 * v33);
              if (v34)
              {
                v35 = objc_opt_class();
                v36 = NSStringFromClass(v35);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_60;
                }

                v37 = [v34 performSelector:"accessibilityIdentifier"];
                v38 = v37;
                if (v37 && ([v37 isEqualToString:v36] & 1) == 0)
                {
                  v39 = [NSString stringWithFormat:@"%@<%p, %@>", v36, v34, v38];
                }

                else
                {

LABEL_60:
                  v39 = [NSString stringWithFormat:@"%@<%p>", v36, v34];
                }

                goto LABEL_63;
              }

              v39 = @"<nil>";
LABEL_63:

              [v55 addObject:v39];
              v33 = v33 + 1;
            }

            while (v31 != v33);
            v30 = obj;
            v40 = [obj countByEnumeratingWithState:&v69 objects:buf count:16];
            v31 = v40;
            if (!v40)
            {
LABEL_67:

              v41 = [obj componentsJoinedByString:{@", "}];
              v42 = [NSString stringWithFormat:@"<%p> [%@]", obj, v41];

              goto LABEL_70;
            }
          }
        }

        v42 = [NSString stringWithFormat:@"<%p> (empty)", v48];
LABEL_70:
        v29 = v48;
      }

      else
      {
        v42 = @"<nil>";
      }

      v43 = v29;

      *v73 = 134349826;
      v74 = self;
      v75 = 2112;
      v76 = WeakRetained;
      v77 = 2048;
      v78 = v47;
      v79 = 2114;
      v80 = v42;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "[%{public}p] [%@] will set %lu contexts on chrome (%{public}@)", v73, 0x2Au);
    }

    [v50 _setContexts:v52 animated:v68 completion:v51];
LABEL_73:

    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
LABEL_74:

    goto LABEL_75;
  }

  v4 = sub_100018D38();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349314;
    v83 = self;
    v84 = 2112;
    v85 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[%{public}p] [%@] will not process coordination blocks, cancelled", buf, 0x16u);
  }

LABEL_14:

  [(ChromeContextOperation *)self setFinished:1];
LABEL_75:
}

- (void)_completeOperation
{
  v3 = sub_100018D38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v5 = 134349314;
    v6 = self;
    v7 = 2112;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] [%@] setComplete", &v5, 0x16u);
  }

  [(ChromeContextOperation *)self willChangeValueForKey:@"isFinished"];
  [(ChromeContextOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = 0;
  self->_finished = 1;
  [(ChromeContextOperation *)self didChangeValueForKey:@"isExecuting"];
  [(ChromeContextOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)dealloc
{
  v3 = sub_100018D38();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    *buf = 134349314;
    v7 = self;
    v8 = 2112;
    v9 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] [%@] deallocating", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = ChromeContextOperation;
  [(ChromeContextOperation *)&v5 dealloc];
}

- (void)setFinished:(BOOL)a3
{
  if (self->_finished != a3)
  {
    v3 = a3;
    v5 = sub_100018D38();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
      v7 = 134349570;
      v8 = self;
      v9 = 2112;
      v10 = WeakRetained;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] [%@] setFinished:%d", &v7, 0x1Cu);
    }

    [(ChromeContextOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = v3;
    [(ChromeContextOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)setExecuting:(BOOL)a3
{
  if (self->_executing != a3)
  {
    v3 = a3;
    v5 = sub_100018D38();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
      v7 = 134349570;
      v8 = self;
      v9 = 2112;
      v10 = WeakRetained;
      v11 = 1024;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}p] [%@] setExecuting:%d", &v7, 0x1Cu);
    }

    [(ChromeContextOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = v3;
    [(ChromeContextOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)addCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(ChromeContextOperation *)self isExecuting])
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
      v11 = [NSString stringWithFormat:@"[%p][%@] you should not try to add completion blocks to a locked coordination operation", self, WeakRetained];
      *buf = 136316162;
      v15 = "[ChromeContextOperation addCompletionBlock:]";
      v16 = 2080;
      v17 = "ChromeContextCoordinationScheduler.m";
      v18 = 1024;
      v19 = 203;
      v20 = 2080;
      v21 = "!self.isExecuting";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (v4 && ![(ChromeContextOperation *)self isExecuting])
  {
    v5 = sub_100018D38();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_loadWeakRetained(&self->_chromeViewController);
      *buf = 134349314;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] will add completion block", buf, 0x16u);
    }

    completionBlocks = self->_completionBlocks;
    v8 = [v4 copy];
    [(NSMutableArray *)completionBlocks addObject:v8];
  }
}

- (void)setFallbackCoordinationBlock:(id)a3
{
  v4 = a3;
  v5 = sub_100018D38();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
    v9 = 134349314;
    v10 = self;
    v11 = 2112;
    v12 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] will add fallback coordination block", &v9, 0x16u);
  }

  v7 = [v4 copy];
  fallbackBlock = self->_fallbackBlock;
  self->_fallbackBlock = v7;
}

- (void)addContextCoordinationBlock:(id)a3
{
  v4 = a3;
  if ([(ChromeContextOperation *)self isExecuting])
  {
    v9 = sub_10006D178();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
      v11 = [NSString stringWithFormat:@"[%p][%@] you should not try to add coordination blocks to a locked coordination operation", self, WeakRetained];
      *buf = 136316162;
      v15 = "[ChromeContextOperation addContextCoordinationBlock:]";
      v16 = 2080;
      v17 = "ChromeContextCoordinationScheduler.m";
      v18 = 1024;
      v19 = 186;
      v20 = 2080;
      v21 = "!self.isExecuting";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v12 = sub_10006D178();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if (v4 && ![(ChromeContextOperation *)self isExecuting])
  {
    v5 = sub_100018D38();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_loadWeakRetained(&self->_chromeViewController);
      *buf = 134349314;
      v15 = self;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%{public}p] [%@] will add coordination block", buf, 0x16u);
    }

    coordinationBlocks = self->_coordinationBlocks;
    v8 = [v4 copy];
    [(NSMutableArray *)coordinationBlocks addObject:v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [objc_opt_class() allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);
  v7 = [v5 initWithChromeViewController:WeakRetained fallbackCoordinationBlock:self->_fallbackBlock];

  v8 = [[NSMutableArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->_coordinationBlocks, 1];
  v9 = v7[1];
  v7[1] = v8;

  v10 = [[NSMutableArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->_completionBlocks, 1];
  v11 = v7[2];
  v7[2] = v10;

  *(v7 + 40) = self->_executing;
  *(v7 + 41) = self->_finished;
  return v7;
}

- (ChromeContextOperation)initWithChromeViewController:(id)a3 fallbackCoordinationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v17 = sub_10006D178();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[ChromeContextOperation initWithChromeViewController:fallbackCoordinationBlock:]";
      v23 = 2080;
      v24 = "ChromeContextCoordinationScheduler.m";
      v25 = 1024;
      v26 = 57;
      v27 = 2080;
      v28 = "chromeViewController";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Invalid parameter not satisfying: %s", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v18 = sub_10006D178();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v20.receiver = self;
  v20.super_class = ChromeContextOperation;
  v8 = [(ChromeContextOperation *)&v20 init];
  if (v8)
  {
    v9 = sub_100018D38();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134349314;
      v22 = v8;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] [%@] initializing", buf, 0x16u);
    }

    objc_storeWeak(&v8->_chromeViewController, v6);
    v10 = [[NSMutableArray alloc] initWithCapacity:2];
    coordinationBlocks = v8->_coordinationBlocks;
    v8->_coordinationBlocks = v10;

    v12 = [[NSMutableArray alloc] initWithCapacity:2];
    completionBlocks = v8->_completionBlocks;
    v8->_completionBlocks = v12;

    v14 = [v7 copy];
    fallbackBlock = v8->_fallbackBlock;
    v8->_fallbackBlock = v14;
  }

  return v8;
}

@end