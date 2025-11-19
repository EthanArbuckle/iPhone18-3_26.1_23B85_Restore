@interface ARInFrameAnchorVisualizer
- (ARInFrameAnchorVisualizer)init;
- (void)drawOriginAndAnchorsOnFrame:(id)a3;
@end

@implementation ARInFrameAnchorVisualizer

- (ARInFrameAnchorVisualizer)init
{
  v8.receiver = self;
  v8.super_class = ARInFrameAnchorVisualizer;
  v2 = [(ARInFrameAnchorVisualizer *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    inputFormatToBGRAConverter = v2->_inputFormatToBGRAConverter;
    v2->_inputFormatToBGRAConverter = v3;

    v5 = objc_opt_new();
    bgraToInputFormatConverter = v2->_bgraToInputFormatConverter;
    v2->_bgraToInputFormatConverter = v5;
  }

  return v2;
}

- (void)drawOriginAndAnchorsOnFrame:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [v4 capturedImage];
  v6 = [(PixelBufferConverter *)self->_inputFormatToBGRAConverter convertPixelBuffer:v5 toFormat:1111970369];
  v7 = v6;
  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __57__ARInFrameAnchorVisualizer_drawOriginAndAnchorsOnFrame___block_invoke;
    v17 = &__block_descriptor_40_e5_v8__0l;
    v18 = v6;
    v8 = CreateDrawDatasFromFrame(v4);
    v9 = [v4 camera];
    DrawOntoPixelBufferBGRA(v7, v8, v9);

    v10 = [(PixelBufferConverter *)self->_bgraToInputFormatConverter convertPixelBuffer:v7 toFormat:CVPixelBufferGetPixelFormatType(v5)];
    if (v10)
    {
      v12 = __57__ARInFrameAnchorVisualizer_drawOriginAndAnchorsOnFrame___block_invoke_2;
      v13 = &__block_descriptor_40_e5_v8__0l;
      v14 = v10;
      [v4 setCapturedImage:{MEMORY[0x1E69E9820], 3221225472}];
      v12(&v11);
    }

    v16(v15);
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end