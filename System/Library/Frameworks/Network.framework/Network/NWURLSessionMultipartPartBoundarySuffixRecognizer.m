@interface NWURLSessionMultipartPartBoundarySuffixRecognizer
- (NWURLSessionMultipartPartBoundarySuffixRecognizer)init;
- (void)dealloc;
@end

@implementation NWURLSessionMultipartPartBoundarySuffixRecognizer

- (void)dealloc
{
  if (self)
  {
    buffer = self->_buffer;
    if (buffer)
    {
      free(buffer);
      self->_buffer = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NWURLSessionMultipartPartBoundarySuffixRecognizer;
  [(NWURLSessionMultipartPartBoundarySuffixRecognizer *)&v4 dealloc];
}

- (NWURLSessionMultipartPartBoundarySuffixRecognizer)init
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NWURLSessionMultipartPartBoundarySuffixRecognizer;
  result = [(NWURLSessionMultipartPartBoundarySuffixRecognizer *)&v7 init];
  if (result)
  {
    result->_nextState = 4;
    v3 = result;
    result->_bytesConsumed = 0;
    v4 = malloc_type_malloc(2uLL, 0x363B6EDEuLL);
    if (!v4)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      v8 = 136446210;
      v9 = "[NWURLSessionMultipartPartBoundarySuffixRecognizer init]";
      v6 = _os_log_send_and_compose_impl();

      result = __nwlog_should_abort(v6);
      if (result)
      {
        __break(1u);
        return result;
      }

      free(v6);
      v4 = 0;
    }

    result = v3;
    v3->_buffer = v4;
    v3->_count = 0;
  }

  return result;
}

@end