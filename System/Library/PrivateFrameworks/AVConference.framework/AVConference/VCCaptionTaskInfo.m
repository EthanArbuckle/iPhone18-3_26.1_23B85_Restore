@interface VCCaptionTaskInfo
- (VCCaptionTaskInfo)initWithTask:(id)a3 token:(int64_t)a4 utteranceNumber:(unsigned int)a5;
- (id)description;
- (void)dealloc;
@end

@implementation VCCaptionTaskInfo

- (VCCaptionTaskInfo)initWithTask:(id)a3 token:(int64_t)a4 utteranceNumber:(unsigned int)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCCaptionTaskInfo;
  v8 = [(VCCaptionTaskInfo *)&v10 init];
  if (v8)
  {
    v8->_task = a3;
    v8->_token = a4;
    v8->_updateNumber = 0;
    v8->_utteranceNumber = a5;
    v8->_hostTime = NAN;
  }

  return v8;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCaptionTaskInfo;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ token=%ld updateNumber=%u utteranceNumber=%u hostTime=%f", -[VCCaptionTaskInfo description](&v3, sel_description), self->_token, self->_updateNumber, self->_utteranceNumber, *&self->_hostTime];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionTaskInfo;
  [(VCCaptionTaskInfo *)&v3 dealloc];
}

@end