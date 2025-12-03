@interface APSOutgoingQueue
- (void)_queueChanged;
- (void)_recalculatePowerAssertion;
- (void)_recalculateTimer;
- (void)_timerFired:(id)fired;
- (void)clearEnqueuedSendsOnInterface:(id)interface;
- (void)enqueueSendBlock:(id)block completionBlock:(id)completionBlock;
- (void)handleConnectionClosedOnInterface:(id)interface;
- (void)handleConnectionOpened;
- (void)handleResponseForPendingItem:(id)item error:(id)error onInterface:(id)interface;
@end

@implementation APSOutgoingQueue

- (void)_queueChanged
{
  if (![(NSMutableArray *)self->_queue count])
  {
    queue = self->_queue;
    self->_queue = 0;
  }

  v4 = objc_alloc_init(NSMutableIndexSet);
  v5 = [(NSMutableArray *)self->_queue copy];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10001ABEC;
  v10 = &unk_1001887F8;
  selfCopy = self;
  v12 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:&v7];
  [(NSMutableArray *)self->_queue removeObjectsAtIndexes:v6, v7, v8, v9, v10, selfCopy];
  [(APSOutgoingQueue *)self _recalculateTimer];
  [(APSOutgoingQueue *)self _recalculatePowerAssertion];
}

- (void)_recalculateTimer
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_queue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (([v9 hasTimedOut] & 1) == 0)
        {
          [v9 timeout];
          v11 = v10;
          timestamp = [v9 timestamp];
          v13 = [timestamp dateByAddingTimeInterval:v11];

          if (!v6 || [v13 compare:v6] == -1)
          {
            v14 = v13;

            v6 = v14;
          }
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);

    if (v6)
    {
      timer = self->_timer;
      v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (timer)
      {
        if (v16)
        {
          *buf = 138412546;
          selfCopy3 = self;
          v26 = 2112;
          v27 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Setting outgoing message timer fire date %@", buf, 0x16u);
        }

        [(NSTimer *)self->_timer setFireDate:v6];
      }

      else
      {
        if (v16)
        {
          *buf = 138412546;
          selfCopy3 = self;
          v26 = 2112;
          v27 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Creating outgoing message timer with fire date %@", buf, 0x16u);
        }

        v17 = [[NSTimer alloc] initWithFireDate:v6 interval:self target:"_timerFired:" selector:0 userInfo:0 repeats:0.0];
        v18 = self->_timer;
        self->_timer = v17;

        v19 = +[NSRunLoop currentRunLoop];
        [v19 addTimer:self->_timer forMode:NSDefaultRunLoopMode];
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  if (!self->_timer)
  {
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Invalidating outgoing message timer", buf, 0xCu);
  }

  [(NSTimer *)self->_timer invalidate];
  v6 = self->_timer;
  self->_timer = 0;
LABEL_26:
}

- (void)_recalculatePowerAssertion
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_queue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      [*(*(&v12 + 1) + 8 * v7) timeout];
      if (v8 < 120.0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (self->_powerAssertion)
    {
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Creating power assertion", buf, 0xCu);
    }

    aPSBundleIdentifier = [NSString stringWithFormat:@"%@-outgoingqueue", APSBundleIdentifier];
    v10 = [[APSPowerAssertion alloc] initWithName:aPSBundleIdentifier category:214];
    powerAssertion = self->_powerAssertion;
    self->_powerAssertion = v10;
  }

  else
  {
LABEL_9:

    if (!self->_powerAssertion)
    {
      return;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Releasing power assertion", buf, 0xCu);
    }

    aPSBundleIdentifier = self->_powerAssertion;
    self->_powerAssertion = 0;
  }
}

- (void)enqueueSendBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if ([(NSMutableArray *)self->_queue count]> 0x63)
  {
    if (completionBlockCopy)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10010C3EC(self);
      }

      v14 = APSError();
      completionBlockCopy[2](completionBlockCopy, 0, v14);
    }
  }

  else if (blockCopy)
  {
    v8 = [APSOutgoingItem alloc];
    v9 = +[NSDate distantFuture];
    [v9 timeIntervalSinceNow];
    v10 = [(APSOutgoingItem *)v8 initWithSendBlock:blockCopy completionBlock:completionBlockCopy timeout:?];

    queue = self->_queue;
    if (!queue)
    {
      v12 = objc_alloc_init(NSMutableArray);
      v13 = self->_queue;
      self->_queue = v12;

      queue = self->_queue;
    }

    [(NSMutableArray *)queue addObject:v10];
    [(APSOutgoingQueue *)self _queueChanged];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10010C46C(self);
  }
}

- (void)handleResponseForPendingItem:(id)item error:(id)error onInterface:(id)interface
{
  itemCopy = item;
  errorCopy = error;
  interfaceCopy = interface;
  v11 = [(NSMutableArray *)self->_queue count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      v14 = [(NSMutableArray *)self->_queue objectAtIndex:v13];
      sendInterface = [v14 sendInterface];
      v16 = [sendInterface isEqualToString:interfaceCopy];

      if (v16)
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    selfCopy2 = self;
    v23 = 2048;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: handleResponseForPendingItem - firstSentIndex = %lu", &v21, 0x16u);
  }

  if (v13 == 0x7FFFFFFFFFFFFFFFLL || ![(NSMutableArray *)self->_queue count])
  {
    v17 = 0;
  }

  else
  {
    v17 = [(NSMutableArray *)self->_queue objectAtIndex:v13];
  }

  if ([v17 sent])
  {
    completionBlock = [v17 completionBlock];
    v19 = completionBlock;
    if (completionBlock)
    {
      (*(completionBlock + 16))(completionBlock, itemCopy, errorCopy);
    }

    [(NSMutableArray *)self->_queue removeObjectAtIndex:v13];
    [(APSOutgoingQueue *)self _queueChanged];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    v20 = [(NSMutableArray *)self->_queue count];
    v21 = 138413058;
    selfCopy2 = self;
    v23 = 2112;
    v24 = itemCopy;
    v25 = 2112;
    v26 = errorCopy;
    v27 = 2048;
    v28 = v20;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%@: Received response %@ %@ when there were no pending items (queue size %lu)", &v21, 0x2Au);
  }
}

- (void)handleConnectionOpened
{
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastReceivedAckOrReconnect = v3;

  [(APSOutgoingQueue *)self _queueChanged];
}

- (void)handleConnectionClosedOnInterface:(id)interface
{
  interfaceCopy = interface;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(NSMutableArray *)self->_queue count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i < v7; ++i)
    {
      v9 = [(NSMutableArray *)self->_queue objectAtIndex:i];
      sendInterface = [v9 sendInterface];
      v11 = [sendInterface isEqualToString:interfaceCopy];

      if (v11)
      {
        [v9 setSent:0];
        [v9 setSendInterface:0];
        [v5 addObject:v9];
        [(NSMutableArray *)self->_queue removeObjectAtIndex:i--];
        --v7;
      }
    }
  }

  currentItem = [(APSOutgoingQueue *)self currentItem];

  if (currentItem)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      currentItem2 = [(APSOutgoingQueue *)self currentItem];
      v17 = 138412546;
      selfCopy2 = self;
      v19 = 2112;
      v20 = currentItem2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Deleting potentially offending message from queue %@", &v17, 0x16u);
    }

    queue = self->_queue;
    currentItem3 = [(APSOutgoingQueue *)self currentItem];
    [(NSMutableArray *)queue removeObject:currentItem3];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 count];
    v17 = 138412546;
    selfCopy2 = self;
    v19 = 2048;
    v20 = v16;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Moving %lu unsent items to the end of queue", &v17, 0x16u);
  }

  [(NSMutableArray *)self->_queue addObjectsFromArray:v5];
  [(APSOutgoingQueue *)self _queueChanged];
}

- (void)clearEnqueuedSendsOnInterface:(id)interface
{
  interfaceCopy = interface;
  v5 = [(NSMutableArray *)self->_queue count];
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = [(NSMutableArray *)self->_queue objectAtIndex:i];
      sendInterface = [v9 sendInterface];
      v11 = [sendInterface isEqualToString:interfaceCopy];

      if (v11)
      {
        [v9 setSent:0];
        [v9 setSendInterface:0];
        [(NSMutableArray *)self->_queue removeObjectAtIndex:i--];
        --v6;
        ++v7;
      }
    }
  }

  currentItem = [(APSOutgoingQueue *)self currentItem];

  if (currentItem)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      currentItem2 = [(APSOutgoingQueue *)self currentItem];
      v16 = 138412546;
      selfCopy2 = self;
      v18 = 2112;
      v19 = currentItem2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Deleting potentially offending message from queue %@", &v16, 0x16u);
    }

    queue = self->_queue;
    currentItem3 = [(APSOutgoingQueue *)self currentItem];
    [(NSMutableArray *)queue removeObject:currentItem3];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    selfCopy2 = self;
    v18 = 2048;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Removing %lu unsent items from the of queue", &v16, 0x16u);
  }

  [(APSOutgoingQueue *)self _queueChanged];
}

- (void)_timerFired:(id)fired
{
  firedCopy = fired;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Outgoing item queue timer fired", buf, 0xCu);
  }

  timer = self->_timer;
  self->_timer = 0;

  v5 = [NSArray arrayWithArray:self->_queue];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if (([v10 hasTimedOut] & 1) == 0)
        {
          timestamp = [v10 timestamp];
          [timestamp timeIntervalSinceNow];
          v13 = v12;
          [v10 timeout];
          v15 = v13 + v14;

          if (v15 < 0.0)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              selfCopy3 = self;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Outgoing item timed out", buf, 0xCu);
            }

            [v10 setHasTimedOut:1];
            [v10 sent];
            v16 = APSError();
            completionBlock = [v10 completionBlock];
            v18 = completionBlock;
            if (completionBlock)
            {
              (*(completionBlock + 16))(completionBlock, 0, v16);
            }

            if (([v10 sent] & 1) == 0)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                selfCopy3 = self;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Removing unsent timed out item from queue", buf, 0xCu);
              }

              [(NSMutableArray *)self->_queue removeObject:v10];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(APSOutgoingQueue *)self _queueChanged];
}

@end