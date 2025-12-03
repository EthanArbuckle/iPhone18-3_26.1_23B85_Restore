@interface AVTHUDView
- (AVTHUDView)initWithFrame:(CGRect)frame;
- (id)_label;
- (void)_loadSubviews;
- (void)_tapAction:(id)action;
- (void)_updateLatencyBar:(id *)bar;
- (void)_updateLatencyGraph:(id *)graph;
- (void)layoutSubviews;
- (void)updateWithData:(id *)data;
@end

@implementation AVTHUDView

- (AVTHUDView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = AVTHUDView;
  v3 = [(AVTHUDView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTHUDView *)v3 setBackgroundColor:clearColor];

    [(AVTHUDView *)v3 _loadSubviews];
  }

  return v3;
}

- (void)updateWithData:(id *)data
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Total latency: %.2f ms", data->var0 * 1000.0];
  [(UILabel *)self->_totalLatencyLabel setText:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ARKit latency: %.2f ms", data->var1 * 1000.0];
  [(UILabel *)self->_arKitLatencyLabel setText:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sync latency: %.2f ms", data->var2 * 1000.0];
  [(UILabel *)self->_updateSyncLatencyLabel setText:v7];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MTL latency: %.2f ms", data->var3 * 1000.0];
  [(UILabel *)self->_metalLatencyLabel setText:v8];

  var6 = data->var6;
  var6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Audio time: %f ms", var6];
  [(UILabel *)self->_audioTimeLabel setText:var6];

  v11 = @"3x Buffer";
  if (data->var8)
  {
    v11 = @"2x Buffer";
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FPS: %d | %@", data->var5, v11];
  [(UILabel *)self->_fpsLabel setText:v12];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Time between ARFrame: %.2f ms", data->var4 * 1000.0];
  [(UILabel *)self->_timeBetweenARFrameLabel setText:v13];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frame dropped/s: %d", data->var7];
  [(UILabel *)self->_droppedFrameLabel setText:v14];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Shader compilation: %d", data->var9];
  [(UILabel *)self->_shaderCompilationLabel setText:v15];

  if (data->var9)
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
    [(UILabel *)self->_shaderCompilationLabel setTextColor:redColor];
  }

  *&self->_lastFrameData.totalLatency = *&data->var0;
  v18 = *&data->var4;
  v17 = *&data->var6;
  v19 = *&data->var2;
  *&self->_lastFrameData.onlineShaderCompilationCount = *&data->var9;
  *&self->_lastFrameData.timeBetweenARFrame = v18;
  *&self->_lastFrameData.audioTime = v17;
  *&self->_lastFrameData.updateSyncLatency = v19;

  [(AVTHUDView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AVTHUDView;
  [(AVTHUDView *)&v5 layoutSubviews];
  [(AVTHUDView *)self bounds];
  v4 = v3 + -10.0;
  [(UILabel *)self->_totalLatencyLabel setFrame:5.0, 5.0, v3 + -10.0, 15.0];
  [(UILabel *)self->_arKitLatencyLabel setFrame:5.0, 25.0, v4, 15.0];
  [(UILabel *)self->_updateSyncLatencyLabel setFrame:5.0, 45.0, v4, 15.0];
  [(UILabel *)self->_metalLatencyLabel setFrame:5.0, 65.0, v4, 15.0];
  [(UILabel *)self->_audioTimeLabel setFrame:5.0, 85.0, v4, 15.0];
  [(UILabel *)self->_fpsLabel setFrame:5.0, 105.0, v4, 15.0];
  [(UILabel *)self->_timeBetweenARFrameLabel setFrame:5.0, 125.0, v4, 15.0];
  [(UILabel *)self->_droppedFrameLabel setFrame:5.0, 145.0, v4, 15.0];
  [(UILabel *)self->_shaderCompilationLabel setFrame:5.0, 165.0, v4, 15.0];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVTHUDView *)self _updateLatencyBar:&self->_lastFrameData];
  [(AVTHUDView *)self _updateLatencyGraph:&self->_lastFrameData];
  [MEMORY[0x1E6979518] commit];
}

- (void)_updateLatencyBar:(id *)bar
{
  var0 = bar->var0;
  v6 = bar->var0 <= 0.0;
  [(CALayer *)self->_arKitLatencyBar setHidden:v6];
  [(CALayer *)self->_updateLatencyBar setHidden:v6];
  [(CALayer *)self->_metalLatencyBar setHidden:v6];
  if (var0 > 0.0)
  {
    [(AVTHUDView *)self bounds];
    v8 = v7 / 3.0 + -10.0;
    v9 = 0.1;
    if (bar->var0 <= 0.1)
    {
      v9 = bar->var0;
    }

    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    v10 = v9;
    v11 = v8 * (v10 / bar->var0);
    [(UILabel *)self->_shaderCompilationLabel frame];
    v13 = v12 + 15.0 + 5.0;
    v14 = bar->var1 / bar->var0;
    v15 = bar->var2 / bar->var0;
    v16 = bar->var3 / bar->var0;
    [(AVTHUDView *)self bounds];
    v18 = v17 - (v11 + 5.0);
    v19 = (v14 * v11);
    [(CALayer *)self->_arKitLatencyBar setFrame:v18, v13, v19, 5.0];
    v20 = v18 + v19;
    [(CALayer *)self->_updateLatencyBar setFrame:v20, v13, (v15 * v11), 5.0];
    metalLatencyBar = self->_metalLatencyBar;

    [(CALayer *)metalLatencyBar setFrame:v20 + (v15 * v11), v13, (v16 * v11), 5.0];
  }
}

- (void)_updateLatencyGraph:(id *)graph
{
  v45 = *MEMORY[0x1E69E9840];
  [(AVTHUDView *)self bounds];
  v6 = v5 / 3.0 + -10.0;
  v7 = v6 * 0.25;
  v8 = fmaxf(ceilf(v7), 1.0);
  totalLatencyGraphLayers = self->_totalLatencyGraphLayers;
  v10 = v8;
  if (!totalLatencyGraphLayers)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    v12 = self->_totalLatencyGraphLayers;
    self->_totalLatencyGraphLayers = v11;

    totalLatencyGraphLayers = self->_totalLatencyGraphLayers;
  }

  if ([(NSMutableArray *)totalLatencyGraphLayers count]>= v8)
  {
    layer = [(NSMutableArray *)self->_totalLatencyGraphLayers objectAtIndexedSubscript:0];
    if ([(NSMutableArray *)self->_totalLatencyGraphLayers count]>= 2)
    {
      v15 = 1;
      do
      {
        v16 = [(NSMutableArray *)self->_totalLatencyGraphLayers objectAtIndexedSubscript:v15];
        [(NSMutableArray *)self->_totalLatencyGraphLayers setObject:v16 atIndexedSubscript:v15 - 1];

        ++v15;
      }

      while ([(NSMutableArray *)self->_totalLatencyGraphLayers count]> v15);
    }

    [(NSMutableArray *)self->_totalLatencyGraphLayers setObject:layer atIndexedSubscript:[(NSMutableArray *)self->_totalLatencyGraphLayers count]- 1];
  }

  else
  {
    layer = [MEMORY[0x1E6979398] layer];
    [layer setOpaque:1];
    [(NSMutableArray *)self->_totalLatencyGraphLayers addObject:layer];
    layer2 = [(AVTHUDView *)self layer];
    [layer2 addSublayer:layer];
  }

  selectedGraphIndex = self->_selectedGraphIndex;
  if (selectedGraphIndex == 3)
  {
    p_var3 = &graph->var3;
  }

  else if (selectedGraphIndex == 2)
  {
    p_var3 = &graph->var2;
  }

  else
  {
    p_var3 = graph;
    if (selectedGraphIndex == 1)
    {
      p_var3 = &graph->var1;
    }
  }

  var0 = graph->var0;
  v20 = 0.0;
  if (graph->var0 > 0.0)
  {
    v21 = p_var3->var0;
    if (p_var3->var0 > 0.1)
    {
      v21 = 0.1;
    }

    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    v22 = v21;
    var0 = v22 / 0.1 * 15.0;
    *&var0 = var0;
    v20 = *&var0;
  }

  if (selectedGraphIndex <= 1)
  {
    if (selectedGraphIndex == 1)
    {
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_29;
    }

LABEL_27:
    systemRedColor = [MEMORY[0x1E69DC888] labelColor];
    goto LABEL_29;
  }

  if (selectedGraphIndex != 2)
  {
    if (selectedGraphIndex == 3)
    {
      systemRedColor = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  systemRedColor = [MEMORY[0x1E69DC888] systemGreenColor];
LABEL_29:
  v24 = systemRedColor;
  [layer setBackgroundColor:{objc_msgSend(systemRedColor, "CGColor")}];

  [layer setFrame:{0.0, 0.0, 3.0, v20}];
  [(AVTHUDView *)self bounds];
  v26 = v25;
  v27 = [(NSMutableArray *)self->_totalLatencyGraphLayers count];
  [(CALayer *)self->_metalLatencyBar frame];
  v29 = v28;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v30 = self->_totalLatencyGraphLayers;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = v29 + 5.0 + 5.0;
    v34 = v26 - (v6 + 5.0 + 1.0) + (v10 - v27) * 4.0;
    v35 = *v41;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v30);
        }

        v37 = *(*(&v40 + 1) + 8 * i);
        [v37 frame];
        [v37 setFrame:{v34, v33 + 15.0 - v38}];
        v34 = v34 + 4.0;
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v32);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_label
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setUserInteractionEnabled:1];
  v5 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
  [v4 setFont:v5];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  [v4 setTextAlignment:2];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v4 setTextColor:labelColor];

  v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tapAction_];
  [v4 addGestureRecognizer:v8];

  return v4;
}

- (void)_loadSubviews
{
  _label = [(AVTHUDView *)self _label];
  totalLatencyLabel = self->_totalLatencyLabel;
  self->_totalLatencyLabel = _label;

  _label2 = [(AVTHUDView *)self _label];
  arKitLatencyLabel = self->_arKitLatencyLabel;
  self->_arKitLatencyLabel = _label2;

  redColor = [MEMORY[0x1E69DC888] redColor];
  [(UILabel *)self->_arKitLatencyLabel setTextColor:redColor];

  _label3 = [(AVTHUDView *)self _label];
  updateSyncLatencyLabel = self->_updateSyncLatencyLabel;
  self->_updateSyncLatencyLabel = _label3;

  greenColor = [MEMORY[0x1E69DC888] greenColor];
  [(UILabel *)self->_updateSyncLatencyLabel setTextColor:greenColor];

  _label4 = [(AVTHUDView *)self _label];
  metalLatencyLabel = self->_metalLatencyLabel;
  self->_metalLatencyLabel = _label4;

  blueColor = [MEMORY[0x1E69DC888] blueColor];
  [(UILabel *)self->_metalLatencyLabel setTextColor:blueColor];

  _label5 = [(AVTHUDView *)self _label];
  audioTimeLabel = self->_audioTimeLabel;
  self->_audioTimeLabel = _label5;

  [(UILabel *)self->_audioTimeLabel setGestureRecognizers:0];
  [(UILabel *)self->_audioTimeLabel setUserInteractionEnabled:0];
  _label6 = [(AVTHUDView *)self _label];
  fpsLabel = self->_fpsLabel;
  self->_fpsLabel = _label6;

  [(UILabel *)self->_fpsLabel setGestureRecognizers:0];
  [(UILabel *)self->_fpsLabel setUserInteractionEnabled:0];
  _label7 = [(AVTHUDView *)self _label];
  timeBetweenARFrameLabel = self->_timeBetweenARFrameLabel;
  self->_timeBetweenARFrameLabel = _label7;

  [(UILabel *)self->_timeBetweenARFrameLabel setGestureRecognizers:0];
  [(UILabel *)self->_timeBetweenARFrameLabel setUserInteractionEnabled:0];
  _label8 = [(AVTHUDView *)self _label];
  droppedFrameLabel = self->_droppedFrameLabel;
  self->_droppedFrameLabel = _label8;

  [(UILabel *)self->_droppedFrameLabel setGestureRecognizers:0];
  [(UILabel *)self->_droppedFrameLabel setUserInteractionEnabled:0];
  _label9 = [(AVTHUDView *)self _label];
  shaderCompilationLabel = self->_shaderCompilationLabel;
  self->_shaderCompilationLabel = _label9;

  [(UILabel *)self->_shaderCompilationLabel setGestureRecognizers:0];
  [(UILabel *)self->_shaderCompilationLabel setUserInteractionEnabled:0];
  [(AVTHUDView *)self addSubview:self->_totalLatencyLabel];
  [(AVTHUDView *)self addSubview:self->_arKitLatencyLabel];
  [(AVTHUDView *)self addSubview:self->_updateSyncLatencyLabel];
  [(AVTHUDView *)self addSubview:self->_metalLatencyLabel];
  [(AVTHUDView *)self addSubview:self->_fpsLabel];
  [(AVTHUDView *)self addSubview:self->_audioTimeLabel];
  [(AVTHUDView *)self addSubview:self->_timeBetweenARFrameLabel];
  [(AVTHUDView *)self addSubview:self->_droppedFrameLabel];
  [(AVTHUDView *)self addSubview:self->_shaderCompilationLabel];
  layer = [MEMORY[0x1E6979398] layer];
  arKitLatencyBar = self->_arKitLatencyBar;
  self->_arKitLatencyBar = layer;

  redColor2 = [MEMORY[0x1E69DC888] redColor];
  -[CALayer setBackgroundColor:](self->_arKitLatencyBar, "setBackgroundColor:", [redColor2 CGColor]);

  [(CALayer *)self->_arKitLatencyBar setOpaque:1];
  layer2 = [MEMORY[0x1E6979398] layer];
  updateLatencyBar = self->_updateLatencyBar;
  self->_updateLatencyBar = layer2;

  greenColor2 = [MEMORY[0x1E69DC888] greenColor];
  -[CALayer setBackgroundColor:](self->_updateLatencyBar, "setBackgroundColor:", [greenColor2 CGColor]);

  [(CALayer *)self->_updateLatencyBar setOpaque:1];
  layer3 = [MEMORY[0x1E6979398] layer];
  metalLatencyBar = self->_metalLatencyBar;
  self->_metalLatencyBar = layer3;

  blueColor2 = [MEMORY[0x1E69DC888] blueColor];
  -[CALayer setBackgroundColor:](self->_metalLatencyBar, "setBackgroundColor:", [blueColor2 CGColor]);

  [(CALayer *)self->_metalLatencyBar setOpaque:1];
  layer4 = [(AVTHUDView *)self layer];
  [layer4 addSublayer:self->_arKitLatencyBar];

  layer5 = [(AVTHUDView *)self layer];
  [layer5 addSublayer:self->_updateLatencyBar];

  layer6 = [(AVTHUDView *)self layer];
  [layer6 addSublayer:self->_metalLatencyBar];
}

- (void)_tapAction:(id)action
{
  actionCopy = action;
  view = [actionCopy view];
  totalLatencyLabel = self->_totalLatencyLabel;

  if (view == totalLatencyLabel)
  {
    self->_selectedGraphIndex = 0;
  }

  view2 = [actionCopy view];
  arKitLatencyLabel = self->_arKitLatencyLabel;

  if (view2 == arKitLatencyLabel)
  {
    self->_selectedGraphIndex = 1;
  }

  view3 = [actionCopy view];
  updateSyncLatencyLabel = self->_updateSyncLatencyLabel;

  if (view3 == updateSyncLatencyLabel)
  {
    self->_selectedGraphIndex = 2;
  }

  view4 = [actionCopy view];
  metalLatencyLabel = self->_metalLatencyLabel;

  if (view4 == metalLatencyLabel)
  {
    self->_selectedGraphIndex = 3;
  }
}

@end