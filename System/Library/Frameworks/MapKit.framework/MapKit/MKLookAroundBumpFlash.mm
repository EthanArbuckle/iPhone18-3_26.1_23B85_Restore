@interface MKLookAroundBumpFlash
- (void)flash;
@end

@implementation MKLookAroundBumpFlash

- (void)flash
{
  v28[3] = *MEMORY[0x1E69E9840];
  layer = [(MKLookAroundBumpFlash *)self layer];
  [layer bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  layer2 = [MEMORY[0x1E6979398] layer];
  [layer2 setBounds:{v4, v6, v8, v10}];
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  [layer2 setPosition:{MidX, CGRectGetMidY(v30)}];
  v13 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"LookAroundBumpFlash"];
  [layer2 setContents:{objc_msgSend(v13, "CGImage")}];
  [layer2 setContentsGravity:*MEMORY[0x1E6979DF0]];
  [layer2 setOpacity:0.0];
  animation = [MEMORY[0x1E6979308] animation];
  [animation setDuration:1.5];
  LODWORD(v15) = 0.5;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v17 = makeAnimation(@"opacity", &unk_1F1610C80, v16, 0.0, 0.07);
  v28[0] = v17;
  LODWORD(v18) = 0.5;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v20 = makeAnimation(@"opacity", v19, &unk_1F1610C80, 0.07, 0.5);
  v28[1] = v20;
  v21 = makeAnimation(@"transform.scale.xy", &unk_1F1610C90, &unk_1F1610CA0, 0.0, 0.6);
  v28[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  [animation setAnimations:v22];

  [layer2 addAnimation:animation forKey:0];
  [layer addSublayer:layer2];
  [animation duration];
  v24 = dispatch_time(0, (v23 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MKLookAroundBumpFlash_flash__block_invoke;
  block[3] = &unk_1E76CDB38;
  v27 = layer2;
  v25 = layer2;
  dispatch_after(v24, MEMORY[0x1E69E96A0], block);
}

@end