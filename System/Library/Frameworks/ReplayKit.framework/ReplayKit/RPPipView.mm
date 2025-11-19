@interface RPPipView
- (void)addPreviewLayer:(id)a3;
- (void)layoutSubviews;
@end

@implementation RPPipView

- (void)layoutSubviews
{
  [(RPPipView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(RPPipView *)self previewLayer];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)addPreviewLayer:(id)a3
{
  v4 = a3;
  v5 = [(RPPipView *)self layer];
  [v5 setMasksToBounds:1];

  [(RPPipView *)self setPreviewLayer:v4];
  v6 = [(RPPipView *)self layer];
  [v6 addSublayer:v4];
}

@end