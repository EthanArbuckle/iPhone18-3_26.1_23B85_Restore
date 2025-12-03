@interface APNSPackDecoder
- (APNSPackDecoder)initWithMaxTableSize:(unint64_t)size;
- (APNSPackDecoderDelegate)delegate;
- (BOOL)decodeMessage:(id)message parser:(id)parser parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed;
- (id)errorMessage;
- (id)keyTable;
- (id)metrics;
- (id)valueTable;
- (void)dealloc;
@end

@implementation APNSPackDecoder

- (APNSPackDecoder)initWithMaxTableSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = APNSPackDecoder;
  if ([(APNSPackDecoder *)&v5 init])
  {
    if (size)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    if (*(decoder + 215) < 0)
    {
      operator delete(decoder[24]);
    }

    sub_100026DA8(decoder + 9);
    sub_100026DA8(decoder);
    operator delete();
  }

  v3.receiver = self;
  v3.super_class = APNSPackDecoder;
  [(APNSPackDecoder *)&v3 dealloc];
}

- (BOOL)decodeMessage:(id)message parser:(id)parser parameters:(id *)parameters isInvalid:(BOOL *)invalid lengthParsed:(unint64_t *)parsed
{
  messageCopy = message;
  parserCopy = parser;
  if (![messageCopy length])
  {
    goto LABEL_13;
  }

  bytes = [messageCopy bytes];
  v25 = 0;
  v26 = 0;
  v15 = bytes + 1;
  if (!sub_1000283B4(self->_decoder, (bytes + 1), [messageCopy length] - 1, &v26, &v25))
  {
LABEL_10:
    *invalid = 1;
    if ([(APNSPackDecoder *)self hasError])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained APNSPackDecoder:self ReceivedError:{-[APNSPackDecoder errorCode](self, "errorCode")}];
      v21 = 0;
      goto LABEL_12;
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  WeakRetained = +[NSMutableDictionary dictionary];
  sub_1000754A8(v24, parserCopy, WeakRetained);
  sub_100074E2C(v24, *bytes);
  v17 = v25;
  v18 = v26;
  v19 = [messageCopy length];
  v20 = v17 + v18 + 1;
  v21 = v20 <= v19;
  if (v20 > v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ we don't have entire frame data yet when parsing", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (!sub_1000286B4(self->_decoder, v24, &v15[v25], v26))
  {
    sub_100075734(v24);

    goto LABEL_10;
  }

  v22 = WeakRetained;
  *parameters = WeakRetained;
  *parsed = v25 + v26 + 1;
LABEL_8:
  sub_100075734(v24);
LABEL_12:

LABEL_14:
  return v21;
}

- (id)errorMessage
{
  v2 = sub_10002AA8C(self->_decoder);
  if (*(v2 + 23) >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = *v2;
  }

  return [NSString stringWithUTF8String:v3];
}

- (id)keyTable
{
  v2 = nullsub_7(self->_decoder, a2);

  return sub_100074F24(v2);
}

- (id)valueTable
{
  v2 = sub_10002AB2C(self->_decoder);

  return sub_1000750D0(v2);
}

- (id)metrics
{
  v2 = [[APNSPackMetrics alloc] initWithDecoder:self];

  return v2;
}

- (APNSPackDecoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end