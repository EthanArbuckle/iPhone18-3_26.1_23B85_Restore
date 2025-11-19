@interface LZMADecoder
- (void)dealloc;
@end

@implementation LZMADecoder

- (void)dealloc
{
  lzma_end();
  transaction = self->_transaction;
  self->_transaction = 0;

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "(LZMADecoder) Decoder deallocated: %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = LZMADecoder;
  [(LZMADecoder *)&v5 dealloc];
}

@end