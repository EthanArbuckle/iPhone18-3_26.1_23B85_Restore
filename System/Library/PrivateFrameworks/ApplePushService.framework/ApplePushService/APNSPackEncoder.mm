@interface APNSPackEncoder
- (APNSPackEncoder)initWithMaxTableSize:(unint64_t)size;
- (APNSPackEncoderDelegate)delegate;
- (id)copyMessage;
- (id)errorMessage;
- (id)keyTable;
- (id)metrics;
- (id)valueTable;
- (void)addBinaryPropertyListWithAttributeId:(unsigned __int8)id data:(id)data isIndexable:(BOOL)indexable;
- (void)addDataWithAttributeId:(unsigned __int8)id data:(id)data isIndexable:(BOOL)indexable;
- (void)addStringWithAttributId:(unsigned __int8)id string:(id)string isIndexable:(BOOL)indexable;
- (void)dealloc;
@end

@implementation APNSPackEncoder

- (id)copyMessage
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  if (sub_10000DD04(self->_builder, &__p))
  {
    v3 = objc_alloc_init(NSMutableData);
    v4 = __p;
    if (v13 != __p)
    {
      v5 = 0;
      do
      {
        [v3 appendBytes:&v4[v5++] length:1];
        v4 = __p;
      }

      while (v13 - __p > v5);
    }

    builder = self->_builder;
    if (builder)
    {
      v7 = builder[2];
      if (v7)
      {
        builder[3] = v7;
        operator delete(v7);
      }

      operator delete();
    }

    self->_builder = 0;
  }

  else
  {
    v8 = self->_builder;
    if (v8)
    {
      v9 = v8[2];
      if (v9)
      {
        v8[3] = v9;
        operator delete(v9);
      }

      operator delete();
    }

    self->_builder = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained APNSPackEncoder:self receivedError:{-[APNSPackEncoder errorCode](self, "errorCode")}];

    v3 = 0;
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v3;
}

- (APNSPackEncoder)initWithMaxTableSize:(unint64_t)size
{
  v6.receiver = self;
  v6.super_class = APNSPackEncoder;
  v4 = [(APNSPackEncoder *)&v6 init];
  if (v4)
  {
    if (size)
    {
      v4->_maxTableSize = size;
      operator new();
    }

    v4->_maxTableSize = 4096;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  encoder = self->_encoder;
  if (encoder)
  {
    if (*(encoder + 519) < 0)
    {
      operator delete(encoder[62]);
    }

    sub_10002CDEC(encoder + 28);
    sub_10002CDEC(encoder);
    operator delete();
  }

  v3.receiver = self;
  v3.super_class = APNSPackEncoder;
  [(APNSPackEncoder *)&v3 dealloc];
}

- (void)addDataWithAttributeId:(unsigned __int8)id data:(id)data isIndexable:(BOOL)indexable
{
  indexableCopy = indexable;
  dataCopy = data;
  sub_10000BD08(self->_builder, id, [dataCopy bytes], objc_msgSend(dataCopy, "length"), indexableCopy);
}

- (void)addStringWithAttributId:(unsigned __int8)id string:(id)string isIndexable:(BOOL)indexable
{
  indexableCopy = indexable;
  stringCopy = string;
  sub_1000135F8(__p, [stringCopy UTF8String]);
  sub_100013520(self->_builder, id, __p, indexableCopy);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)addBinaryPropertyListWithAttributeId:(unsigned __int8)id data:(id)data isIndexable:(BOOL)indexable
{
  dataCopy = data;
  sub_100017B6C(self->_builder, id, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
}

- (id)errorMessage
{
  v2 = sub_10002F358(self->_encoder);
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
  v2 = nullsub_7(self->_encoder, a2);

  return sub_100074660(v2);
}

- (id)valueTable
{
  v2 = sub_10002F3A4(self->_encoder);

  return sub_10007480C(v2);
}

- (id)metrics
{
  v2 = [[APNSPackMetrics alloc] initWithEncoder:self];

  return v2;
}

- (APNSPackEncoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end