@interface AVCoreImageFilterVideoCompositionInstruction
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- (AVCoreImageFilterVideoCompositionInstruction)init;
- (AVCoreImageFilterVideoCompositionInstruction)initWithTimeRange:(id *)a3 sourceTrackIDs:(id)a4 handler:(id)a5;
- (CGAffineTransform)sourceTrackPreferredTransform;
- (void)dealloc;
- (void)setSourceTrackPreferredTransform:(CGAffineTransform *)a3;
@end

@implementation AVCoreImageFilterVideoCompositionInstruction

- (AVCoreImageFilterVideoCompositionInstruction)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D920];
  v6 = NSStringFromSelector(sel_initWithTimeRange_sourceTrackIDs_handler_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available.  Use %@ instead", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVCoreImageFilterVideoCompositionInstruction)initWithTimeRange:(id *)a3 sourceTrackIDs:(id)a4 handler:(id)a5
{
  v15.receiver = self;
  v15.super_class = AVCoreImageFilterVideoCompositionInstruction;
  v8 = [(AVCoreImageFilterVideoCompositionInstruction *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E695EFD0];
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    *(v8 + 72) = *MEMORY[0x1E695EFD0];
    *(v8 + 88) = v11;
    *(v8 + 104) = *(v10 + 32);
    v13 = *&a3->var0.var0;
    v12 = *&a3->var0.var3;
    *(v8 + 40) = *&a3->var1.var1;
    *(v8 + 8) = v13;
    *(v8 + 24) = v12;
    *(v8 + 8) = [a5 copy];
    v9->_requiredSourceTrackIDs = [a4 copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCoreImageFilterVideoCompositionInstruction;
  [(AVCoreImageFilterVideoCompositionInstruction *)&v3 dealloc];
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  v3 = *&self->var1.var0;
  *&retstr->var0.var0 = *&self->var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self->var1.var3;
  return self;
}

- (CGAffineTransform)sourceTrackPreferredTransform
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

- (void)setSourceTrackPreferredTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_sourceTrackPreferredTransform.tx = *&a3->tx;
  *&self->_sourceTrackPreferredTransform.c = v4;
  *&self->_sourceTrackPreferredTransform.a = v3;
}

@end