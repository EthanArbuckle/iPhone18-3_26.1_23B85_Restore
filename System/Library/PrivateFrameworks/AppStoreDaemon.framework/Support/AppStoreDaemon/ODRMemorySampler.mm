@interface ODRMemorySampler
- (id)currentStatsString;
- (id)takeSample;
@end

@implementation ODRMemorySampler

- (id)takeSample
{
  v11 = 0u;
  v12 = 0u;
  *task_info_out = 0u;
  task_info_outCnt = 48;
  v3 = task_info(mach_task_self_, 0x14u, task_info_out, &task_info_outCnt);
  if (v3)
  {
    v4 = v3;
    sub_10031FD5C(self);
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = mach_error_string(v4);
      *buf = 136446210;
      v14 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ODRMemorySampler failed to take sample with error %{public}s.  Sampler stopped.", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [NSNumber numberWithUnsignedInteger:*&task_info_out[2]];
  }

  return v6;
}

- (id)currentStatsString
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bytesFormatter = selfCopy->_bytesFormatter;
  if (!bytesFormatter)
  {
    v4 = objc_alloc_init(NSByteCountFormatter);
    v5 = selfCopy->_bytesFormatter;
    selfCopy->_bytesFormatter = v4;

    bytesFormatter = selfCopy->_bytesFormatter;
  }

  v6 = sub_10031FE48(selfCopy);
  v7 = -[NSByteCountFormatter stringFromByteCount:](bytesFormatter, "stringFromByteCount:", [v6 integerValue]);
  v8 = selfCopy->_bytesFormatter;
  v9 = sub_10031FEC8(selfCopy);
  v10 = -[NSByteCountFormatter stringFromByteCount:](v8, "stringFromByteCount:", [v9 integerValue]);
  v11 = selfCopy->_bytesFormatter;
  v12 = sub_10031FDC8(selfCopy);
  [v12 floatValue];
  v14 = [(NSByteCountFormatter *)v11 stringFromByteCount:v13];
  v15 = [NSString stringWithFormat:@"Min:%@, Max:%@, Avg:%@", v7, v10, v14];

  objc_sync_exit(selfCopy);

  return v15;
}

@end