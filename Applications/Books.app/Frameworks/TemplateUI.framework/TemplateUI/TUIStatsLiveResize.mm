@interface TUIStatsLiveResize
- (id).cxx_construct;
- (void)_dump;
- (void)beginFrame;
- (void)collectStatsFromLayoutController:(id)controller;
- (void)endLiveResize;
@end

@implementation TUIStatsLiveResize

- (void)endLiveResize
{
  self->_summary._endMachTime = mach_absolute_time();

  [(TUIStatsLiveResize *)self _dump];
}

- (void)_dump
{
  v3 = NSTemporaryDirectory();
  v4 = [NSURL fileURLWithPath:v3 isDirectory:1];
  v5 = [v4 URLByAppendingPathComponent:@"LiveResizeStats"];
  v6 = [v5 URLByAppendingPathExtension:@"json"];
  selfCopy = self;

  v19 = +[NSFileManager defaultManager];
  v7 = 1;
  for (i = v6; ; i = v15)
  {
    path = [i path];
    v10 = [v19 fileExistsAtPath:path];

    if (!v10)
    {
      break;
    }

    v11 = NSTemporaryDirectory();
    v12 = [NSURL fileURLWithPath:v11 isDirectory:1];
    v13 = [NSString stringWithFormat:@"%@-%lu", @"LiveResizeStats", v7];
    v14 = [v12 URLByAppendingPathComponent:v13];
    v15 = [v14 URLByAppendingPathExtension:@"json"];

    ++v7;
  }

  v16 = sub_145554(&selfCopy->_summary._components.__table_.__bucket_list_.__ptr_);
  v17 = [NSJSONSerialization dataWithJSONObject:v16 options:1 error:0];
  [v17 writeToURL:i atomically:0];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = i;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "live-resize-stats dumped to: %@", buf, 0xCu);
  }
}

- (void)beginFrame
{
  end = self->_summary._frames.__end_;
  cap = self->_summary._frames.__cap_;
  if (end >= cap)
  {
    begin = self->_summary._frames.__begin_;
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 5);
    v8 = v7 + 1;
    if (v7 + 1 > 0x199999999999999)
    {
      sub_4050();
    }

    v9 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 5);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xCCCCCCCCCCCCCCLL)
    {
      v10 = 0x199999999999999;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_14EEE4(&self->_summary._frames, v10);
    }

    v11 = 160 * v7;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *v11 = 0u;
    *(v11 + 16) = 0u;
    v5 = (160 * v7 + 160);
    v12 = self->_summary._frames.__begin_;
    v13 = (self->_summary._frames.__end_ - v12);
    v14 = (160 * v7 - v13);
    memcpy((v11 - v13), v12, v13);
    v15 = self->_summary._frames.__begin_;
    self->_summary._frames.__begin_ = v14;
    self->_summary._frames.__end_ = v5;
    self->_summary._frames.__cap_ = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *(end + 8) = 0u;
    *(end + 9) = 0u;
    *(end + 6) = 0u;
    *(end + 7) = 0u;
    *(end + 4) = 0u;
    *(end + 5) = 0u;
    *(end + 2) = 0u;
    *(end + 3) = 0u;
    v5 = (end + 160);
    *end = 0u;
    *(end + 1) = 0u;
  }

  self->_summary._frames.__end_ = v5;
  *(self->_summary._frames.__end_ - 2) = mach_absolute_time();
}

- (void)collectStatsFromLayoutController:(id)controller
{
  controllerCopy = controller;
  instantiateContext = [controllerCopy instantiateContext];
  _context = [instantiateContext _context];

  v6 = _context[96];
  if (v6)
  {
    sub_145F18(v6, &self->_summary._components.__table_.__bucket_list_.__ptr_);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  return self;
}

@end