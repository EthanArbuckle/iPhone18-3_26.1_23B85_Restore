@interface SLRequestBodyInputStream
- (BOOL)_setCFClientFlags:(unint64_t)a3 callback:(void *)a4 context:(id *)a5;
- (NSStreamDelegate)delegate;
- (SLRequestBodyInputStream)initWithMultiParts:(id)a3 multiPartBoundary:(id)a4;
- (id)nextStream;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (void)_scheduleInCFRunLoop:(__CFRunLoop *)a3 forMode:(__CFString *)a4;
- (void)_streamEventTrigger;
- (void)close;
- (void)dealloc;
- (void)open;
- (void)removeFromRunLoop:(id)a3 forMode:(id)a4;
- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4;
@end

@implementation SLRequestBodyInputStream

- (SLRequestBodyInputStream)initWithMultiParts:(id)a3 multiPartBoundary:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = SLRequestBodyInputStream;
  v9 = [(SLRequestBodyInputStream *)&v38 init];
  if (v9)
  {
    v10 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[SLRequestMultiPartInputStream alloc] initWithMultiPart:*(*(&v34 + 1) + 8 * i)];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v13);
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"--%@--\r\n", v8];
    v18 = [v17 dataUsingEncoding:4];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v10;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v9->_dataLength += [*(*(&v30 + 1) + 8 * j) length];
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v21);
    }

    if ([v19 count])
    {
      v9->_dataLength += [v18 length];
      v24 = [MEMORY[0x1E695DF48] inputStreamWithData:v18];
      [v19 addObject:v24];
      objc_storeStrong(&v9->_inputStreams, v10);
      v25 = [(NSArray *)v9->_inputStreams objectAtIndex:0];
      currentStream = v9->_currentStream;
      v9->_currentStream = v25;
    }

    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v9->_inputStreams, "count")}];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9->_dataLength];
    _SLLog(v4, 7, @"SLRequestBodyInputStream %@ initWithMultiParts:multiPartBoundary: _inputStreams.count %@ _dataLength %@");
  }

  return v9;
}

- (void)dealloc
{
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
    CFRelease(self->_rls);
  }

  release = self->_clientContext.release;
  if (release)
  {
    release(self->_clientContext.info, a2);
  }

  v5.receiver = self;
  v5.super_class = SLRequestBodyInputStream;
  [(SLRequestBodyInputStream *)&v5 dealloc];
}

- (id)nextStream
{
  v3 = self->_currentIndex + 1;
  self->_currentIndex = v3;
  if (v3 == [(NSArray *)self->_inputStreams count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_inputStreams objectAtIndex:self->_currentIndex];
  }

  return v4;
}

- (void)_streamEventTrigger
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SLRequestBodyInputStream.m" lineNumber:140 description:@"sanity check for stream data"];
}

- (void)_scheduleInCFRunLoop:(__CFRunLoop *)a3 forMode:(__CFString *)a4
{
  rls = self->_rls;
  if (!rls)
  {
    v9.version = 0;
    memset(&v9.retain, 0, 56);
    v9.info = self;
    v9.perform = _streamEventTrigger;
    rls = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &v9);
    self->_rls = rls;
    if (!rls)
    {
      [(SLRequestBodyInputStream *)a2 _scheduleInCFRunLoop:&self->_rls forMode:&v10];
      rls = v10;
    }
  }

  CFRunLoopAddSource(a3, rls, a4);
}

- (BOOL)_setCFClientFlags:(unint64_t)a3 callback:(void *)a4 context:(id *)a5
{
  p_clientContext = &self->_clientContext;
  if (a5)
  {
    v8 = *&a5->var0;
    v9 = *&a5->var2;
    self->_clientContext.copyDescription = a5->var4;
    *&p_clientContext->version = v8;
    *&self->_clientContext.retain = v9;
    retain = self->_clientContext.retain;
    if (retain)
    {
      retain(self->_clientContext.info, a2, a3);
    }
  }

  else
  {
    release = self->_clientContext.release;
    if (release)
    {
      release(self->_clientContext.info, a2, a3);
    }

    p_clientContext->copyDescription = 0;
    *&p_clientContext->version = 0u;
    *&p_clientContext->retain = 0u;
  }

  self->_clientCallback = a4;
  return 1;
}

- (void)scheduleInRunLoop:(id)a3 forMode:(id)a4
{
  v6 = a4;
  -[SLRequestBodyInputStream _scheduleInCFRunLoop:forMode:](self, "_scheduleInCFRunLoop:forMode:", [a3 getCFRunLoop], v6);
}

- (void)removeFromRunLoop:(id)a3 forMode:(id)a4
{
  v6 = a4;
  -[SLRequestBodyInputStream _unscheduleFromCFRunLoop:forMode:](self, "_unscheduleFromCFRunLoop:forMode:", [a3 getCFRunLoop], v6);
}

- (void)open
{
  _SLLog(v2, 7, @"SLRequestBodyInputStream %@ open");
  [(SLRequestBodyInputStream *)self _scheduleCallback];
  self->_streamStatus = 2;
}

- (void)close
{
  _SLLog(v2, 7, @"SLRequestBodyInputStream %@ close");
  rls = self->_rls;
  if (rls)
  {
    CFRunLoopSourceInvalidate(rls);
  }

  self->_streamStatus = 6;
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v18 = v16 = a3;
  v15 = self;
  _SLLog(v4, 7, @"SLRequestBodyInputStream %@ read: %p maxLength: %@");

  v8 = 0;
  if (a4)
  {
    while (self->_dataOffset + v8 < self->_dataLength)
    {
      if (![(SLRequestMultiPartInputStream *)self->_currentStream hasBytesAvailable:v15])
      {
        _SLLog(v4, 6, @"SLRequestBodyInputStream %@ Current stream has no bytes, switching");
        [(SLRequestMultiPartInputStream *)self->_currentStream close];
        v9 = [(SLRequestBodyInputStream *)self nextStream];
        currentStream = self->_currentStream;
        self->_currentStream = v9;

        v11 = self->_currentStream;
        if (!v11)
        {
          _SLLog(v4, 3, @"Bad state, current stream is nil");
          break;
        }

        [(SLRequestMultiPartInputStream *)v11 open];
      }

      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      _SLLog(v4, 6, @"SLRequestBodyInputStream %@ read:maxLength: Will source bytes at offset %@");

      v8 += [(SLRequestMultiPartInputStream *)self->_currentStream read:&a3[v8] maxLength:a4 - v8, self, v17];
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v18 = v16 = v12;
      v15 = self;
      _SLLog(v4, 6, @"SLRequestBodyInputStream %@ read:maxLength: Total %@ bytes written to buffer, maxLen %@");

      if (v8 >= a4)
      {
        break;
      }
    }
  }

  self->_dataOffset += v8;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dataLength];
  _SLLog(v4, 6, @"SLRequestBodyInputStream %@ read:maxLength: Total %@ bytes streamed, total length is %@");

  [(SLRequestBodyInputStream *)self _scheduleCallback:self];
  return v8;
}

- (NSStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_scheduleInCFRunLoop:(void *)a3 forMode:(void *)a4 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SLRequestBodyInputStream.m" lineNumber:176 description:@"should be able to make run loop source"];

  *a4 = *a3;
}

@end