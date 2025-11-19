@interface VCMediaRecorderManagerStreamTokenClientList
- (VCMediaRecorderManagerStreamTokenClientList)initWithStreamToken:(int64_t)a3 mediaRecorder:(id)a4;
- (id)newContext;
- (void)dealloc;
@end

@implementation VCMediaRecorderManagerStreamTokenClientList

- (VCMediaRecorderManagerStreamTokenClientList)initWithStreamToken:(int64_t)a3 mediaRecorder:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCMediaRecorderManagerStreamTokenClientList;
  v6 = [(VCMediaRecorderManagerStreamTokenClientList *)&v8 init];
  if (v6)
  {
    v6->_clientContextList = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6->_streamToken = a3;
    v6->_mediaRecorder = a4;
  }

  return v6;
}

- (id)newContext
{
  v3 = [[VCMomentsClientContext alloc] initWithStreamToken:self->_streamToken];
  [(NSMutableArray *)self->_clientContextList addObject:v3];
  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaRecorderManagerStreamTokenClientList;
  [(VCMediaRecorderManagerStreamTokenClientList *)&v3 dealloc];
}

@end