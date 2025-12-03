@interface BCSDissolveEffectView
- (UIImageView)contentView;
- (id)_averageColorAtCornerForImage:(id)image;
- (id)_imageForCellWithColor:(id)color size:(CGSize)size;
- (void)startAnimation;
- (void)startAnimationWithDuration:(double)duration appImageBlock:(id)block completion:(id)completion;
- (void)stopAnimation;
@end

@implementation BCSDissolveEffectView

- (id)_averageColorAtCornerForImage:(id)image
{
  imageCopy = image;
  [imageCopy extent];
  v5 = v4;
  [imageCopy extent];
  CGAffineTransformScale(&v15, &v14, v5, v6);
  v17.origin.y = 0.98;
  v17.origin.x = 0.01;
  v17.size.width = 0.01;
  v17.size.height = 0.01;
  v18 = CGRectApplyAffineTransform(v17, &v15);
  v7 = [imageCopy imageByCroppingToRect:{v18.origin.x, v18.origin.y, v18.size.width, v18.size.height}];
  v8 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:0];
  [v7 extent];
  v10 = v9;
  [v7 extent];
  v11 = [v8 createCGImage:imageCopy fromRect:{0.0, 0.0, v10}];
  v12 = [MEMORY[0x277D755B8] imageWithCGImage:v11 scale:0 orientation:2.0];
  CGImageRelease(v11);

  return v12;
}

- (id)_imageForCellWithColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v10.width = width;
  v10.height = height;
  UIGraphicsBeginImageContextWithOptions(v10, 0, 0.0);
  [colorCopy set];
  v11.origin.x = *MEMORY[0x277CBF348];
  v11.origin.y = *(MEMORY[0x277CBF348] + 8);
  v11.size.width = width;
  v11.size.height = height;
  UIRectFill(v11);
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsPopContext();

  return v7;
}

- (void)startAnimation
{
  v44[1] = *MEMORY[0x277D85DE8];
  [(BCSDissolveEffectView *)self bounds];
  v46 = CGRectInset(v45, 10.0, 10.0);
  x = v46.origin.x;
  y = v46.origin.y;
  width = v46.size.width;
  height = v46.size.height;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v8 = [(BCSDissolveEffectView *)self _imageForCellWithColor:whiteColor size:2.0, 2.0];
  cGImage = [v8 CGImage];

  contentView = [(BCSDissolveEffectView *)self contentView];
  image = [contentView image];
  cIImage = [image CIImage];
  v13 = [(BCSDissolveEffectView *)self _averageColorAtCornerForImage:cIImage];
  cGImage2 = [v13 CGImage];

  v14 = *MEMORY[0x277CDA1F0];
  v15 = [MEMORY[0x277CD9E78] behaviorWithType:*MEMORY[0x277CDA1F0]];
  [v15 setValue:@"scale" forKey:@"keyPath"];
  [v15 setValue:&unk_2853A1338 forKey:@"values"];
  [v15 setValue:&unk_2853A1350 forKey:@"locations"];
  array = [MEMORY[0x277CBEB18] array];
  emitterCell = [MEMORY[0x277CD9E80] emitterCell];
  [emitterCell setName:@"white"];
  v44[0] = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  [emitterCell setEmitterBehaviors:v17];

  LODWORD(v18) = 30.0;
  [emitterCell setBirthRate:v18];
  LODWORD(v19) = 1.0;
  [emitterCell setLifetime:v19];
  [emitterCell setContents:cGImage];
  [emitterCell setBeginTime:CACurrentMediaTime()];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v21 = whiteColor2;
  [emitterCell setColor:{objc_msgSend(whiteColor2, "CGColor")}];

  [array addObject:emitterCell];
  layer = [MEMORY[0x277CD9E88] layer];
  [layer setEmitterCells:array];
  [layer setEmitterMode:@"sequential"];
  [layer setEmitterPosition:{x + width * 0.5, y + height * 0.5}];
  [layer setEmitterShape:@"cuboid"];
  [layer setEmitterSize:{width, height}];
  [layer setFrame:{0.0, 0.0, width, height}];
  [layer setRenderMode:@"unordered"];
  [layer setSeed:arc4random()];
  v23 = [MEMORY[0x277CD9E78] behaviorWithType:v14];
  [v23 setValue:@"scale" forKey:@"keyPath"];
  [v23 setValue:&unk_2853A1368 forKey:@"values"];
  [v23 setValue:&unk_2853A1380 forKey:@"locations"];
  emitterCell2 = [MEMORY[0x277CD9E80] emitterCell];
  [emitterCell2 setName:@"black"];
  v43 = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  [emitterCell2 setEmitterBehaviors:v25];

  LODWORD(v26) = 12.0;
  [emitterCell2 setBirthRate:v26];
  LODWORD(v27) = 3.0;
  [emitterCell2 setLifetime:v27];
  [emitterCell2 setContents:cGImage2];
  [emitterCell2 setBeginTime:CACurrentMediaTime()];
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v48 = CGRectInset(v47, 2.0, 2.0);
  v28 = v48.origin.x;
  v29 = v48.origin.y;
  v30 = v48.size.width;
  v31 = v48.size.height;
  layer2 = [MEMORY[0x277CD9E88] layer];
  v42 = emitterCell2;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  [layer2 setEmitterCells:v33];

  [layer2 setEmitterMode:@"sequential"];
  [layer2 setEmitterPosition:{v28 + v30 * 0.5, v29 + v31 * 0.5}];
  [layer2 setEmitterShape:@"rectangle"];
  [layer2 setEmitterSize:{v30, v31}];
  [layer2 setFrame:{0.0, 0.0, v30, v31}];
  [layer2 setRenderMode:@"unordered"];
  [layer2 setSeed:arc4random()];
  objc_storeStrong(&self->_expandingLayer, layer2);
  objc_storeStrong(&self->_dissolveLayer, layer);
  LODWORD(v34) = 2.0;
  [(CAEmitterLayer *)self->_dissolveLayer setBirthRate:v34];
  LODWORD(v35) = 1053609165;
  [(CAEmitterLayer *)self->_expandingLayer setLifetime:v35];
  LODWORD(v36) = 1053609165;
  [(CAEmitterLayer *)self->_dissolveLayer setLifetime:v36];
  layer3 = [(BCSDissolveEffectView *)self layer];
  [layer3 insertSublayer:layer2 atIndex:0];

  layer4 = [(BCSDissolveEffectView *)self layer];
  [layer4 addSublayer:layer];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)stopAnimation
{
  [(CAEmitterLayer *)self->_expandingLayer removeFromSuperlayer];
  expandingLayer = self->_expandingLayer;
  self->_expandingLayer = 0;

  [(CAEmitterLayer *)self->_dissolveLayer removeFromSuperlayer];
  dissolveLayer = self->_dissolveLayer;
  self->_dissolveLayer = 0;

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(BCSDissolveEffectView *)self setBackgroundColor:?];
}

- (void)startAnimationWithDuration:(double)duration appImageBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  [(BCSDissolveEffectView *)self setClipsToBounds:1];
  [(BCSDissolveEffectView *)self startAnimation];
  window = [(BCSDissolveEffectView *)self window];
  [window setUserInteractionEnabled:0];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke;
  v18[3] = &unk_278D01D58;
  v18[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_2;
  v17[3] = &unk_278D024E8;
  v17[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v18 animations:v17 completion:duration];
  v11 = dispatch_time(0, (duration * 0.75 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_3;
  block[3] = &unk_278D02560;
  block[4] = self;
  v15 = blockCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = blockCopy;
  dispatch_after(v11, MEMORY[0x277D85CD0], block);
}

uint64_t __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 432));
  [WeakRetained removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 stopAnimation];
}

void __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755E8]);
  v3 = (*(*(a1 + 40) + 16))();
  v4 = [v2 initWithImage:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 424);
  *(v5 + 424) = v4;

  [*(a1 + 32) bounds];
  CGRectGetMidX(v22);
  [*(a1 + 32) bounds];
  CGRectGetMidY(v23);
  _bcs_roundPointToPixels();
  [*(*(a1 + 32) + 424) setPosition:?];
  [*(a1 + 32) addSubview:*(*(a1 + 32) + 424)];
  CGAffineTransformMakeScale(&v21, 0.0, 0.0);
  v7 = *(*(a1 + 32) + 424);
  v20 = v21;
  [v7 setTransform:&v20];
  memset(&v20, 0, sizeof(v20));
  [*(a1 + 32) bounds];
  Width = CGRectGetWidth(v24);
  [*(*(a1 + 32) + 424) bounds];
  v9 = Width / CGRectGetWidth(v25);
  [*(a1 + 32) bounds];
  Height = CGRectGetHeight(v26);
  [*(*(a1 + 32) + 424) bounds];
  v11 = CGRectGetHeight(v27);
  CGAffineTransformMakeScale(&v20, v9, Height / v11);
  v18 = v20;
  CGAffineTransformScale(&v19, &v18, 0.5, 0.5);
  v20 = v19;
  v12 = MEMORY[0x277D75D18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_4;
  v16[3] = &unk_278D02510;
  v16[4] = *(a1 + 32);
  v17 = v19;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_5;
  v14[3] = &unk_278D02538;
  v13 = *(a1 + 48);
  v14[4] = *(a1 + 32);
  v15 = v13;
  [v12 animateWithDuration:0 delay:v16 usingSpringWithDamping:v14 initialSpringVelocity:0.3 options:0.0 animations:0.73 completion:0.0];
}

uint64_t __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 424);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void __77__BCSDissolveEffectView_startAnimationWithDuration_appImageBlock_completion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) window];
  [v2 setUserInteractionEnabled:1];
}

- (UIImageView)contentView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentView);

  return WeakRetained;
}

@end