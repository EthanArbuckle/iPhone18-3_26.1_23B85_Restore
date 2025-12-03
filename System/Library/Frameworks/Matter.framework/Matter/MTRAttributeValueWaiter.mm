@interface MTRAttributeValueWaiter
- (BOOL)_attributeValue:(id)value reportedForPath:(id)path byDevice:(id)device;
- (BOOL)allValuesSatisfied;
- (MTRAttributeValueWaiter)initWithDevice:(id)device values:(id)values queue:(id)queue completion:(id)completion;
- (id)description;
- (void)_notifyCancellation;
- (void)_notifyWithError:(id)error;
- (void)_startTimerWithTimeout:(double)timeout;
- (void)cancel;
- (void)dealloc;
@end

@implementation MTRAttributeValueWaiter

- (MTRAttributeValueWaiter)initWithDevice:(id)device values:(id)values queue:(id)queue completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceCopy2 = device;
  valuesCopy = values;
  obj = queue;
  queueCopy = queue;
  completionCopy = completion;
  v36.receiver = self;
  v36.super_class = MTRAttributeValueWaiter;
  v10 = [(MTRAttributeValueWaiter *)&v36 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(valuesCopy, "count")}];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = valuesCopy;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = *v33;
      do
      {
        v15 = 0;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v32 + 1) + 8 * v15);
          v17 = [MTRAwaitedAttributeState alloc];
          v18 = [v12 objectForKeyedSubscript:{v16, deviceCopy, obj, deviceCopy2, queueCopy}];
          v19 = sub_23921BA0C(&v17->super.isa, v18);

          [v11 setObject:v19 forKeyedSubscript:v16];
          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
    }

    objc_storeStrong(&v10->_valueExpectations, v11);
    objc_storeStrong(&v10->_queue, obj);
    v20 = MEMORY[0x23EE78590](completionCopy);
    completion = v10->_completion;
    v10->_completion = v20;

    objc_storeStrong(&v10->_device, deviceCopy);
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v10->_UUID;
    v10->_UUID = uUID;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)dealloc
{
  [(MTRAttributeValueWaiter *)self cancel];
  v3.receiver = self;
  v3.super_class = MTRAttributeValueWaiter;
  [(MTRAttributeValueWaiter *)&v3 dealloc];
}

- (void)_notifyCancellation
{
  v3 = sub_23921C1E4(MTRError, 0x5700000074, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/MTRAttributeValueWaiter.mm");
  [(MTRAttributeValueWaiter *)self _notifyWithError:?];
}

- (BOOL)allValuesSatisfied
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (self)
  {
    self = self->_valueExpectations;
  }

  allValues = [(MTRAttributeValueWaiter *)self allValues];
  v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (!v6 || (*(v6 + 8) & 1) == 0)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_14:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUID = [(MTRAttributeValueWaiter *)self UUID];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, uUID];

  return v7;
}

- (void)cancel
{
  selfCopy = self;
  if (self)
  {
    self = self->_device;
  }

  [(MTRAttributeValueWaiter *)self _forgetAttributeWaiter:selfCopy];

  [(MTRAttributeValueWaiter *)selfCopy _notifyCancellation];
}

- (BOOL)_attributeValue:(id)value reportedForPath:(id)path byDevice:(id)device
{
  valueCopy = value;
  pathCopy = path;
  deviceCopy = device;
  if (self)
  {
    valueExpectations = self->_valueExpectations;
  }

  else
  {
    valueExpectations = 0;
  }

  v12 = valueExpectations;
  v13 = [(NSDictionary *)v12 objectForKeyedSubscript:pathCopy];

  if (v13)
  {
    v14 = *(v13 + 16);
    v15 = [deviceCopy _attributeDataValue:valueCopy satisfiesValueExpectation:v14];
    *(v13 + 8) = v15;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_notifyWithError:(id)error
{
  v45 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  if (self && self->_completion)
  {
    v6 = self->_completion;
    v7 = self->_queue;
    objc_setProperty_nonatomic_copy(self, v8, 0, 40);
    sub_23952CD74(self, 0);
    if (self->_expirationTimer)
    {
      dispatch_source_cancel(self->_expirationTimer);
      sub_23952CD90(self, 0);
    }

    os_unfair_lock_unlock(&self->_lock);
    if (errorCopy)
    {
      domain = [errorCopy domain];
      v10 = domain;
      if (domain == @"MTRErrorDomain")
      {
        code = [errorCopy code];

        if (code == 9)
        {
          v18 = sub_2393D9044(0);
          if (sub_23921C1B0(v18))
          {
            sub_23921C188();
            sub_23921C1A0();
            _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
          }

          if (!sub_2393D5398(2u))
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      else
      {
      }

      domain2 = [errorCopy domain];
      v25 = domain2;
      if (domain2 != @"MTRErrorDomain")
      {

        goto LABEL_27;
      }

      code2 = [errorCopy code];

      if (code2 != 16)
      {
LABEL_27:
        v33 = sub_2393D9044(0);
        if (sub_23921C1B0(v33))
        {
          sub_23921C188();
          v43 = 2112;
          v44 = errorCopy;
          sub_23921C1A0();
          _os_log_impl(v34, v35, v36, v37, v38, 0x20u);
        }

        if (!sub_2393D5398(2u))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v27 = sub_2393D9044(0);
      if (sub_23921C1B0(v27))
      {
        sub_23921C188();
        sub_23921C1A0();
        _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
      }

      if (!sub_2393D5398(2u))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v11 = sub_2393D9044(0);
      if (sub_23921C1B0(v11))
      {
        sub_23921C188();
        sub_23921C1A0();
        _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
      }

      if (!sub_2393D5398(2u))
      {
        goto LABEL_31;
      }
    }

LABEL_30:
    sub_2393D5320(0, 2);
LABEL_31:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23921BF8C;
    block[3] = &unk_278A71698;
    v42 = v6;
    v41 = errorCopy;
    v39 = v6;
    dispatch_async(v7, block);

    goto LABEL_4;
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_4:

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startTimerWithTimeout:(double)timeout
{
  selfCopy = self;
  if (self)
  {
    self = self->_device;
  }

  queue = [(MTRAttributeValueWaiter *)self queue];
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);

  v7 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  objc_initWeak(&location, selfCopy);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_23921BFA0;
  handler[3] = &unk_278A73D80;
  v10 = v6;
  v8 = v6;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v8, handler);
  os_unfair_lock_lock(&selfCopy->_lock);
  sub_23952CD90(selfCopy, v8);
  os_unfair_lock_unlock(&selfCopy->_lock);
  dispatch_resume(v8);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

@end