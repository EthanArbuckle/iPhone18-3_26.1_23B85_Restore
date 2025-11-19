@interface _HKCompressionEngine
+ (id)processDataWithFunction:(int64_t)a3 algorithm:(int64_t)a4 content:(id)a5 progressBlock:(id)a6;
- (BOOL)_initializeStream;
- (BOOL)_processIncomingData:(const void *)a3 length:(unint64_t)a4 flags:(int)a5;
- (_HKCompressionEngine)initWithFunction:(int64_t)a3 algorithm:(int64_t)a4 destination:(id)a5;
- (_HKStreamingDestination)destination;
- (unint64_t)_deliverDestinationContent;
- (void)_decodeEngineFunction:(int64_t)a3 algorithm:(int64_t)a4;
- (void)_gatherReadSinkContent:(id)a3;
- (void)_initializeStream;
- (void)dealloc;
- (void)sourceContentFinished;
- (void)writeSourceContent:(id)a3;
@end

@implementation _HKCompressionEngine

+ (id)processDataWithFunction:(int64_t)a3 algorithm:(int64_t)a4 content:(id)a5 progressBlock:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [[_HKCompressionEngine alloc] initWithFunction:a3 algorithm:a4 destination:0];
  v12 = [v9 length];
  v13 = [v9 bytes];
  if (v12)
  {
    v14 = v13;
    v15 = 0;
    while (1)
    {
      v16 = v12 - v15 >= 0x10000 ? 0x10000 : v12 - v15;
      if (![(_HKCompressionEngine *)v11 _processIncomingData:v14 + v15 length:v16 flags:0])
      {
        break;
      }

      v15 += v16;
      if (v10)
      {
        v10[2](v10, v15);
      }

      if (v15 >= v12)
      {
        goto LABEL_10;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_10:
    [(_HKCompressionEngine *)v11 sourceContentFinished];
    v17 = [(_HKCompressionEngine *)v11 sinkContent];
  }

  return v17;
}

- (_HKCompressionEngine)initWithFunction:(int64_t)a3 algorithm:(int64_t)a4 destination:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = _HKCompressionEngine;
  v9 = [(_HKCompressionEngine *)&v15 init];
  v10 = v9;
  if (v9)
  {
    sinkContent = v9->_sinkContent;
    v9->_sinkContent = 0;

    [(_HKCompressionEngine *)v10 _decodeEngineFunction:a3 algorithm:a4];
    objc_storeWeak(&v10->_destination, v8);
    v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:0x10000];
    destinationBuffer = v10->_destinationBuffer;
    v10->_destinationBuffer = v12;

    if (![(_HKCompressionEngine *)v10 _initializeStream])
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)writeSourceContent:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 bytes];
  v8 = [v6 length];

  [(_HKCompressionEngine *)self _processIncomingData:v7 length:v8 flags:0];
}

- (void)sourceContentFinished
{
  [(_HKCompressionEngine *)self _processIncomingData:0 length:0 flags:1];
  WeakRetained = objc_loadWeakRetained(&self->_destination);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_destination);
    [v4 sinkContentFinished];
  }
}

- (void)dealloc
{
  compression_stream_destroy(self->_stream);
  free(self->_stream);
  self->_stream = 0;
  v3.receiver = self;
  v3.super_class = _HKCompressionEngine;
  [(_HKCompressionEngine *)&v3 dealloc];
}

- (void)_decodeEngineFunction:(int64_t)a3 algorithm:(int64_t)a4
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  self->_operation = v4;
LABEL_6:
  if (a4 <= 3)
  {
    self->_algorithm = dword_191DCD1B0[a4];
  }
}

- (void)_gatherReadSinkContent:(id)a3
{
  v4 = a3;
  sinkContent = self->_sinkContent;
  v8 = v4;
  if (!sinkContent)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:0x10000];
    v7 = self->_sinkContent;
    self->_sinkContent = v6;

    v4 = v8;
    sinkContent = self->_sinkContent;
  }

  [(NSMutableData *)sinkContent appendData:v4];
}

- (unint64_t)_deliverDestinationContent
{
  var1 = self->_stream->var1;
  v3 = 0x10000 - var1;
  if (var1 != 0x10000)
  {
    [(NSMutableData *)self->_destinationBuffer setLength:0x10000 - var1];
    WeakRetained = objc_loadWeakRetained(&self->_destination);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_destination);
      [v6 receiveSinkContent:self->_destinationBuffer];
    }

    else
    {
      [(_HKCompressionEngine *)self _gatherReadSinkContent:self->_destinationBuffer];
    }

    [(NSMutableData *)self->_destinationBuffer setLength:0x10000];
    self->_stream->var0 = [(NSMutableData *)self->_destinationBuffer mutableBytes];
    self->_stream->var1 = 0x10000;
  }

  return v3;
}

- (BOOL)_initializeStream
{
  if (self->_stream)
  {
    [(_HKCompressionEngine *)a2 _initializeStream];
  }

  v3 = malloc_type_malloc(0x28uLL, 0x10D00405C4BD7A1uLL);
  self->_stream = v3;
  v3->var0 = "";
  stream = self->_stream;
  stream->var1 = 0;
  stream->var2 = "";
  v5 = self->_stream;
  v5->src_size = 0;
  return compression_stream_init(v5, self->_operation, self->_algorithm) == COMPRESSION_STATUS_OK;
}

- (BOOL)_processIncomingData:(const void *)a3 length:(unint64_t)a4 flags:(int)a5
{
  self->_stream->var0 = [(NSMutableData *)self->_destinationBuffer mutableBytes];
  stream = self->_stream;
  stream->var1 = 0x10000;
  stream->var2 = a3;
  self->_stream->var3 = a4;
  if (!a4 && (a5 & 1) == 0)
  {
    return 1;
  }

  while (1)
  {
    while (1)
    {
      v10 = compression_stream_process(self->_stream, a5);
      if (v10)
      {
        break;
      }

      if (!(self->_stream->var3 | [(_HKCompressionEngine *)self _deliverDestinationContent]))
      {
        return 1;
      }
    }

    if (v10 == COMPRESSION_STATUS_ERROR)
    {
      break;
    }

    if (v10 == COMPRESSION_STATUS_END)
    {
      [(_HKCompressionEngine *)self _deliverDestinationContent];
      return 1;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_destination);

  if (WeakRetained)
  {
    v13 = objc_loadWeakRetained(&self->_destination);
    [v13 receiveSinkContent:0];
  }

  return 0;
}

- (_HKStreamingDestination)destination
{
  WeakRetained = objc_loadWeakRetained(&self->_destination);

  return WeakRetained;
}

- (void)_initializeStream
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_HKCompressionEngine.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"_stream == nil"}];
}

@end