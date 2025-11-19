void sub_104C(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 eventCount])
  {
    v3 = [v2 properties];
    v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

    v5 = [[NSNumber alloc] initWithLongLong:{objc_msgSend(v2, "eventCount")}];
    [v4 setObject:v5 forKeyedSubscript:@"eventcounter"];

    v6 = _IOHIDLogCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "IOHIDTelemetrySessionFilter dispatch com.apple.hid.device.usage event: %@\n", buf, 0xCu);
    }

    v8 = v4;
    v7 = v4;
    AnalyticsSendEventLazy();
    [v2 setEventCount:0];
  }
}

void sub_1300(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v11 = objc_opt_new();
  v6 = [v5 properties];
  v7 = [v6 objectForKeyedSubscript:@"serviceid"];
  [v11 setObject:v7 forKeyedSubscript:@"ServiceID"];

  v8 = [NSNumber alloc];
  v9 = [v5 eventCount];

  v10 = [v8 initWithLongLong:v9];
  [v11 setObject:v10 forKeyedSubscript:@"Count"];

  [v4 addObject:v11];
}

void sub_14E8(uint64_t a1)
{
  v1 = CFDictionaryGetValue(*(*(a1 + 32) + 24), *(a1 + 40));
  if (v1)
  {
    v2 = v1;
    [v1 setEventCount:{objc_msgSend(v1, "eventCount") + 1}];
    v1 = v2;
  }
}

void sub_167C(uint64_t a1)
{
  v2 = [[HIDEventServiceTelemetry alloc] initWithService:*(a1 + 32)];
  CFDictionaryAddValue(*(*(a1 + 40) + 24), *(a1 + 32), v2);
}

void sub_16E0(uint64_t a1)
{
  CFDictionaryApplyFunction(*(*(a1 + 32) + 24), sub_104C, 0);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  CFDictionaryRemoveValue(v3, v2);
}

void sub_17F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "IOHIDTelemetrySessionFilter::initWithSession: %@\n", &v2, 0xCu);
}

iceCounts, sub_1300, v5);
    [v4 setObject:v5 forKeyedSubscript:@"ServiceCounts"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filterEvent:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 integerValueForField:4] && IOHIDEventGetPolicy() == 3)
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_14E8;
    v10[3] = &unk_41E0;
    v10[4] = self;
    v11 = v7;
    dispatch_async(queue, v10);
  }

  return v6;
}

- (void)serviceNotification:(id)a3 added:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 propertyForKey:@"Built-In"];
  v8 = v7;
  if (v6 && ([v7 BOOLValue] & 1) == 0)
  {
    queue = self->_queue;
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_167C;
      block[3] = &unk_41E0;
      v14 = v6;
      v15 = self;
      dispatch_async(queue, block);
      v10 = v14;
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_16E0;
      v11[3] = &unk_41E0;
      v11[4] = self;
      v12 = v6;
      dispatch_async(queue, v11);
      v10 = v12;
    }
  }
}

- (void)activate
{
  timer = self->_timer;
  v3 = dispatch_time(0x8000000000000000, 43200000000000);

  dispatch_source_set_timer(timer, v3, 0x274A48A78000uLL, 0);
}

@end