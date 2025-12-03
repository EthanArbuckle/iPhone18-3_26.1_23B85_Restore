@interface CRLBufferedReadChannel
- (CRLBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size blockInfos:(id)infos streamReadChannelBlock:(id)block;
- (id)_currentDataIntersectionWithOffset:(int64_t)offset length:(unint64_t)length isReadDone:(BOOL *)done;
- (void)_close;
- (void)_closeStreamReadChannel;
- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)offset length:(unint64_t)length;
- (void)close;
- (void)dealloc;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)setStreamReadChannelSourceHandler:(id)handler;
@end

@implementation CRLBufferedReadChannel

- (CRLBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size blockInfos:(id)infos streamReadChannelBlock:(id)block
{
  channelCopy = channel;
  infosCopy = infos;
  blockCopy = block;
  v32.receiver = self;
  v32.super_class = CRLBufferedReadChannel;
  v14 = [(CRLBufferedReadChannel *)&v32 init];
  if (v14)
  {
    if (channelCopy)
    {
      if (blockCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101325CD0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101325CF8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101325D8C();
      }

      v22 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v22);
      }

      v23 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
      v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
      [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:68 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceReadChannel"];

      if (blockCopy)
      {
LABEL_4:
        if (size)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325DB4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325DDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325E70();
    }

    v25 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v25);
    }

    v26 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:69 isFatal:0 description:"invalid nil value for '%{public}s'", "streamReadChannelBlock"];

    if (size)
    {
LABEL_5:
      if (channelCopy && blockCopy)
      {
        v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v16 = dispatch_queue_create("CRLBufferedReadChannel.Read", v15);
        v17 = *(v14 + 1);
        *(v14 + 1) = v16;

        dispatch_queue_set_specific(*(v14 + 1), off_1019EDE30, off_1019EDE30, 0);
        objc_storeStrong(v14 + 2, channel);
        *(v14 + 3) = size;
        *(v14 + 4) = 0x7FFFFFFFFFFFFFFFLL;
        v18 = [infosCopy copy];
        v19 = *(v14 + 7);
        *(v14 + 7) = v18;

        v20 = objc_retainBlock(blockCopy);
        v21 = *(v14 + 8);
        *(v14 + 8) = v20;

        *(v14 + 12) = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_36;
      }

LABEL_35:

      v14 = 0;
      goto LABEL_36;
    }

LABEL_26:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101325E98();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101325EC0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101325F54();
    }

    v28 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v28);
    }

    v29 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
    v30 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v29 file:v30 lineNumber:70 isFatal:0 description:"Buffer size too small: %zu", 0];

    goto LABEL_35;
  }

LABEL_36:

  return v14;
}

- (void)dealloc
{
  [(CRLBufferedReadChannel *)self _close];
  v3.receiver = self;
  v3.super_class = CRLBufferedReadChannel;
  [(CRLBufferedReadChannel *)&v3 dealloc];
}

- (void)close
{
  v3 = off_1019EDE30;
  if (dispatch_get_specific(off_1019EDE30) == v3 || (v4 = objc_opt_class(), +[NSThread currentThread](NSThread, "currentThread"), v5 = objc_claimAutoreleasedReturnValue(), [v5 threadDictionary], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"CRLBufferedReadChannelInvokingHandler"), v7 = objc_claimAutoreleasedReturnValue(), sub_100014370(v4, v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v7, v6, v5, v9))
  {

    [(CRLBufferedReadChannel *)self _close];
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018C9E0;
    block[3] = &unk_10183AB38;
    block[4] = self;
    dispatch_sync(readQueue, block);
  }
}

- (void)_close
{
  [(CRLBufferedReadChannel *)self _closeStreamReadChannel];
  [(CRLReadChannel *)self->_sourceReadChannel close];
  sourceReadChannel = self->_sourceReadChannel;
  self->_sourceReadChannel = 0;

  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;
}

- (void)_closeStreamReadChannel
{
  [(CRLStreamReadChannel *)self->_streamReadChannel close];
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = 0;
}

- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)offset length:(unint64_t)length
{
  offsetCopy = offset;
  streamOutputOffset = self->_streamOutputOffset;
  if (streamOutputOffset <= offset)
  {
    streamOutputOutstandingLength = self->_streamOutputOutstandingLength;
    v9 = streamOutputOutstandingLength + streamOutputOffset;
    if (streamOutputOutstandingLength == -1 || v9 > offset)
    {
      return;
    }
  }

  [(CRLBufferedReadChannel *)self _closeStreamReadChannel];
  *&self->_sourceOffset = xmmword_101462C30;
  *&self->_streamOutputOffset = xmmword_101462C30;
  self->_streamOutputLength = 0;
  v11 = [(NSArray *)self->_blockInfos count];
  if (!v11)
  {
    v17 = 0;
    goto LABEL_37;
  }

  v12 = v11;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = self->_blockInfos;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (!v13)
  {
    v17 = 0;
    goto LABEL_36;
  }

  v14 = v13;
  decodedLength = 0;
  v16 = 0;
  v17 = 0;
  v40 = *v43;
  lengthCopy = length;
  v38 = offsetCopy;
  do
  {
    v18 = 0;
    do
    {
      if (*v43 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v42 + 1) + 8 * v18);
      v16 += [v19 decodedLength];
      if (decodedLength)
      {
        [v17 addObject:v19];
        self->_sourceLength += [v19 encodedLength];
        decodedLength = &decodedLength[[v19 decodedLength]];
        decodedLength2 = [v19 decodedLength] + self->_streamOutputOutstandingLength;
      }

      else
      {
        if (v16 <= offsetCopy)
        {
          self->_sourceOffset += [v19 encodedLength];
          decodedLength = 0;
          self->_streamOutputOffset += [v19 decodedLength];
          goto LABEL_27;
        }

        if (v17)
        {
          v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_101325F7C();
          }

          v22 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v47 = v21;
            v48 = 2082;
            v49 = "[CRLBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]";
            v50 = 2082;
            v51 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m";
            v52 = 1024;
            v53 = 147;
            v54 = 2082;
            v55 = "blockInfos";
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", buf, 0x2Cu);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101325FA4();
          }

          v23 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            log = v23;
            v27 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            v47 = v21;
            v48 = 2114;
            v49 = v27;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v24 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]"];
          v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
          [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:147 isFatal:0 description:"expected nil value for '%{public}s'", "blockInfos"];

          length = lengthCopy;
        }

        v26 = [[NSMutableArray alloc] initWithCapacity:v12];

        [v26 addObject:v19];
        self->_sourceLength = [v19 encodedLength];
        decodedLength = [v19 decodedLength];
        decodedLength2 = [v19 decodedLength];
        v17 = v26;
        offsetCopy = v38;
      }

      self->_streamOutputOutstandingLength = decodedLength2;
      if (decodedLength > length)
      {
        goto LABEL_36;
      }

LABEL_27:
      if (!--v12)
      {
        self->_sourceLength = -1;
        self->_streamOutputOutstandingLength = -1;
      }

      v18 = v18 + 1;
    }

    while (v14 != v18);
    v28 = [(NSArray *)obj countByEnumeratingWithState:&v42 objects:v56 count:16];
    v14 = v28;
  }

  while (v28);
LABEL_36:

LABEL_37:
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  self->_isStreamOutputDone = 0;
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;

  streamReadChannelBlock = self->_streamReadChannelBlock;
  v32 = [[CRLBufferedReadChannelHelper alloc] initWithBufferedReadChannel:self];
  v33 = streamReadChannelBlock[2](streamReadChannelBlock, v32, v17);
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = v33;

  v35 = self->_streamReadChannel;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10018D028;
  v41[3] = &unk_1018432E8;
  v41[4] = self;
  [(CRLStreamReadChannel *)v35 readWithHandler:v41];
}

- (void)setStreamReadChannelSourceHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = v4;
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  readQueue = self->_readQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10018D398;
  v11[3] = &unk_101843310;
  offsetCopy = offset;
  lengthCopy = length;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(readQueue, v11);
}

- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v9 = (offset & (offset >> 63)) + length;
  v10 = offset & ~(offset >> 63);
  [(CRLBufferedReadChannel *)self _resetStreamReadChannelIfNeededForOffset:v10 length:v9];
  v31 = 0;
  v11 = [(CRLBufferedReadChannel *)self _currentDataIntersectionWithOffset:v10 length:v9 isReadDone:&v31];
  v12 = v11;
  if (v11)
  {
    size = dispatch_data_get_size(v11);
    v10 += size;
    v9 -= size;
  }

  else if (v31 != 1)
  {
    goto LABEL_6;
  }

  v14 = +[NSThread currentThread];
  threadDictionary = [v14 threadDictionary];
  [threadDictionary setObject:&__kCFBooleanTrue forKeyedSubscript:@"CRLBufferedReadChannelInvokingHandler"];

  (*(handlerCopy + 2))(handlerCopy, v31, v12, 0);
  v16 = +[NSThread currentThread];
  threadDictionary2 = [v16 threadDictionary];
  [threadDictionary2 setObject:&__kCFBooleanFalse forKeyedSubscript:@"CRLBufferedReadChannelInvokingHandler"];

  if (v31)
  {
    dispatch_resume(self->_readQueue);
    goto LABEL_12;
  }

LABEL_6:
  [(CRLBufferedReadChannel *)self _resetStreamReadChannelIfNeededForOffset:v10 length:v9];
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  streamOutputOutstandingLength = self->_streamOutputOutstandingLength;
  streamOutputLength = self->_streamOutputLength;
  self->_streamOutputOffset += streamOutputLength;
  if (streamOutputOutstandingLength != -1)
  {
    self->_streamOutputOutstandingLength = streamOutputOutstandingLength - streamOutputLength;
  }

  self->_streamOutputLength = 0;
  sourceReadChannel = self->_sourceReadChannel;
  sourceOffset = self->_sourceOffset;
  if (self->_sourceLength >= self->_sourceReadBufferSize)
  {
    sourceReadBufferSize = self->_sourceReadBufferSize;
  }

  else
  {
    sourceReadBufferSize = self->_sourceLength;
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10018D758;
  v24[3] = &unk_101843438;
  v24[4] = self;
  v25 = handlerCopy;
  v26 = v30;
  v27 = sourceReadBufferSize;
  v28 = v10;
  v29 = v9;
  [(CRLReadChannel *)sourceReadChannel readFromOffset:sourceOffset length:sourceReadBufferSize handler:v24];

  _Block_object_dispose(v30, 8);
LABEL_12:
}

- (id)_currentDataIntersectionWithOffset:(int64_t)offset length:(unint64_t)length isReadDone:(BOOL *)done
{
  if (__CFADD__(offset, length))
  {
    v8 = -1;
  }

  else
  {
    v8 = offset + length;
  }

  streamOutputOffset = self->_streamOutputOffset;
  streamOutputLength = self->_streamOutputLength;
  if (streamOutputLength >= ~streamOutputOffset)
  {
    v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101326438();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_streamOutputOffset;
      v22 = self->_streamOutputLength;
      *buf = 67110402;
      v24 = v11;
      v25 = 2082;
      v26 = "[CRLBufferedReadChannel _currentDataIntersectionWithOffset:length:isReadDone:]";
      v27 = 2082;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m";
      v29 = 1024;
      v30 = 336;
      v31 = 2048;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Overflow in the output stream: data offset %lli data length %zu", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132644C();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLBufferedReadChannel _currentDataIntersectionWithOffset:length:isReadDone:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/IO/CRLBufferedReadChannel.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:336 isFatal:0 description:"Overflow in the output stream: data offset %lli data length %zu", self->_streamOutputOffset, self->_streamOutputLength];

    streamOutputOffset = self->_streamOutputOffset;
    streamOutputLength = self->_streamOutputLength;
  }

  if (streamOutputOffset <= offset)
  {
    offsetCopy = offset;
  }

  else
  {
    offsetCopy = streamOutputOffset;
  }

  v17 = streamOutputLength + streamOutputOffset;
  if (v8 >= streamOutputLength + streamOutputOffset)
  {
    v18 = streamOutputLength + streamOutputOffset;
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= offsetCopy)
  {
    subrange = 0;
    if (!done)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  subrange = dispatch_data_create_subrange(self->_currentStreamOutputData, offsetCopy - streamOutputOffset, v18 - offsetCopy);
  if (done)
  {
LABEL_24:
    *done = v8 <= v17 || self->_isStreamOutputDone;
  }

LABEL_25:

  return subrange;
}

@end