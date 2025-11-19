@interface CNSharedProfileAnimationGenerator
+ (id)log;
- (id)springAnimationWithKeyPath:(id)a3 fromValue:(double)a4 toValue:(double)a5 stiffness:(double)a6 damping:(double)a7 mass:(double)a8;
- (void)applyBlurFilterToLayer:(id)a3 inputRadius:(double)a4;
- (void)performCoinFlipAnimationForAnimatingAvatarView:(id)a3 pendingNickname:(id)a4 contact:(id)a5 completionHandler:(id)a6;
- (void)performCoinFlipAnimationForAnimatingAvatarView:(id)a3 toAvatarImage:(id)a4 completionHandler:(id)a5;
- (void)performCoinFlipAnimationForAnimatingAvatarView:(id)a3 toContact:(id)a4 rightToLeft:(BOOL)a5 avatarSize:(CGSize)a6 completionHandler:(id)a7;
- (void)performPeekABooAnimationForAnimatingAvatarView:(id)a3 pendingNickname:(id)a4 contact:(id)a5 completionHandler:(id)a6;
@end

@implementation CNSharedProfileAnimationGenerator

+ (id)log
{
  if (log_cn_once_token_1_55498 != -1)
  {
    dispatch_once(&log_cn_once_token_1_55498, &__block_literal_global_55499);
  }

  v3 = log_cn_once_object_1_55500;

  return v3;
}

uint64_t __40__CNSharedProfileAnimationGenerator_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNSharedProfileAnimationGenerator");
  v1 = log_cn_once_object_1_55500;
  log_cn_once_object_1_55500 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)applyBlurFilterToLayer:(id)a3 inputRadius:(double)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6979378];
  v6 = *MEMORY[0x1E6979928];
  v7 = a3;
  v8 = [v5 filterWithType:v6];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v7 setFilters:v9];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v8 setValue:v10 forKey:@"inputRadius"];
}

- (id)springAnimationWithKeyPath:(id)a3 fromValue:(double)a4 toValue:(double)a5 stiffness:(double)a6 damping:(double)a7 mass:(double)a8
{
  v13 = [MEMORY[0x1E69794A8] animationWithKeyPath:a3];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  [v13 setFromValue:v14];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  [v13 setToValue:v15];

  [v13 setStiffness:a6];
  [v13 setDamping:a7];
  [v13 setMass:a8];
  [v13 setInitialVelocity:0.0];
  [v13 settlingDuration];
  [v13 setDuration:?];

  return v13;
}

- (void)performPeekABooAnimationForAnimatingAvatarView:(id)a3 pendingNickname:(id)a4 contact:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 sourceAvatarLayer];
  v15 = [v13 destinationAvatarImageView];
  v16 = [v13 destinationAvatarImageView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v21 = [v13 destinationAvatarImageView];

  v22 = [v21 traitCollection];
  v23 = [v22 layoutDirection];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __126__CNSharedProfileAnimationGenerator_performPeekABooAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke;
  v28[3] = &unk_1E74E5E80;
  v24 = v23 == 1;
  v29 = v15;
  v30 = v14;
  v31 = self;
  v32 = v10;
  v25 = v10;
  v26 = v14;
  v27 = v15;
  [CNSharedProfileAvatarImageGenerator sharedAvatarImageForNickname:v12 contact:v11 size:v24 isRTL:v28 completionHandler:v18, v20];
}

void __126__CNSharedProfileAnimationGenerator_performPeekABooAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__CNSharedProfileAnimationGenerator_performPeekABooAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke_2;
  block[3] = &unk_1E74E5E58;
  v9 = *(a1 + 32);
  v10 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __126__CNSharedProfileAnimationGenerator_performPeekABooAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke_2(uint64_t a1)
{
  v61[4] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setImage:*(a1 + 40)];
  [*(a1 + 48) setDoubleSided:0];
  v2 = [*(a1 + 32) layer];
  [v2 setDoubleSided:0];

  [*(a1 + 56) applyBlurFilterToLayer:*(a1 + 48) inputRadius:0.0];
  v3 = *(a1 + 56);
  v4 = [*(a1 + 32) layer];
  [v3 applyBlurFilterToLayer:v4 inputRadius:13.0];

  v5 = objc_alloc_init(MEMORY[0x1E6979308]);
  v6 = [*(a1 + 56) peekABooIntermediateSpringAnimationWithKeyPath:@"transform.rotation.y" fromValue:0.0 toValue:3.14159265];
  v61[0] = v6;
  v7 = [*(a1 + 56) peekABooIntermediateSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputHardEdges" fromValue:0.0 toValue:1.0];
  v61[1] = v7;
  v8 = [*(a1 + 56) peekABooIntermediateSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputNormalizeEdges" fromValue:0.0 toValue:1.0];
  v61[2] = v8;
  v9 = [*(a1 + 56) peekABooIntermediateSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:0.0 toValue:13.0];
  v61[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
  [v5 setAnimations:v10];

  [v5 setBeginTime:CACurrentMediaTime()];
  [v5 setDuration:1.0];
  v11 = *MEMORY[0x1E69797E8];
  [v5 setFillMode:*MEMORY[0x1E69797E8]];
  [v5 setRemovedOnCompletion:0];
  v12 = objc_alloc_init(MEMORY[0x1E6979308]);
  v13 = [*(a1 + 56) peekABooFinalSpringAnimationWithKeyPath:@"transform.rotation.y" fromValue:3.14159265 toValue:0.0];
  v60[0] = v13;
  v14 = [*(a1 + 56) peekABooFinalSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:13.0 toValue:0.0];
  v60[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  [v12 setAnimations:v15];

  [v5 beginTime];
  v17 = v16;
  [v5 duration];
  [v12 setBeginTime:v17 + v18];
  v19 = [v12 animations];
  v20 = [v19 firstObject];
  [v20 duration];
  [v12 setDuration:?];

  [v12 setFillMode:v11];
  [v12 setRemovedOnCompletion:0];
  v21 = objc_alloc_init(MEMORY[0x1E6979308]);
  v22 = [*(a1 + 56) peekABooIntermediateSpringAnimationWithKeyPath:@"transform.rotation.y" fromValue:3.14159265 toValue:0.0];
  v59 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  [v21 setAnimations:v23];

  [v21 setBeginTime:CACurrentMediaTime()];
  [v21 setDuration:1.0];
  [v21 setFillMode:v11];
  [v21 setRemovedOnCompletion:0];
  v24 = objc_alloc_init(MEMORY[0x1E6979308]);
  v25 = [*(a1 + 56) peekABooIntermediateSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:13.0 toValue:0.0];
  v58 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  [v24 setAnimations:v26];

  [v21 beginTime];
  [v24 setBeginTime:v27 + 0.2];
  v28 = [v24 animations];
  v29 = [v28 firstObject];
  [v29 duration];
  [v24 setDuration:?];

  [v24 setFillMode:v11];
  [v24 setRemovedOnCompletion:0];
  v30 = objc_alloc_init(MEMORY[0x1E6979308]);
  v31 = [*(a1 + 56) peekABooFinalSpringAnimationWithKeyPath:@"transform.rotation.y" fromValue:0.0 toValue:3.14159265];
  v57 = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  [v30 setAnimations:v32];

  [v21 beginTime];
  v34 = v33;
  [v21 duration];
  [v30 setBeginTime:v34 + v35];
  v36 = [v30 animations];
  v37 = [v36 firstObject];
  [v37 duration];
  [v30 setDuration:?];

  [v30 setFillMode:v11];
  [v30 setRemovedOnCompletion:0];
  v38 = objc_alloc_init(MEMORY[0x1E6979308]);
  v39 = [*(a1 + 56) peekABooFinalSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:0.0 toValue:13.0];
  v56 = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
  [v38 setAnimations:v40];

  [v30 beginTime];
  [v38 setBeginTime:v41 + 0.2];
  v42 = [v38 animations];
  v43 = [v42 firstObject];
  [v43 duration];
  [v38 setDuration:?];

  [v38 setFillMode:v11];
  [v38 setRemovedOnCompletion:0];
  CATransform3DMakeRotation(&v55, 3.14159265, 0.0, 1.0, 0.0);
  v44 = *(a1 + 32);
  v54 = v55;
  [v44 setTransform3D:&v54];
  v45 = MEMORY[0x1E6979518];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __126__CNSharedProfileAnimationGenerator_performPeekABooAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke_3;
  v50[3] = &unk_1E74E6650;
  v51 = *(a1 + 48);
  v52 = *(a1 + 32);
  v53 = *(a1 + 64);
  [v45 setCompletionBlock:v50];
  [*(a1 + 48) addAnimation:v5 forKey:0];
  [*(a1 + 48) addAnimation:v12 forKey:0];
  v46 = [*(a1 + 32) layer];
  [v46 addAnimation:v21 forKey:0];

  v47 = [*(a1 + 32) layer];
  [v47 addAnimation:v24 forKey:0];

  v48 = [*(a1 + 32) layer];
  [v48 addAnimation:v30 forKey:0];

  v49 = [*(a1 + 32) layer];
  [v49 addAnimation:v38 forKey:0];
}

uint64_t __126__CNSharedProfileAnimationGenerator_performPeekABooAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E695E0F0];
  [*(a1 + 32) setFilters:MEMORY[0x1E695E0F0]];
  v3 = [*(a1 + 40) layer];
  [v3 setFilters:v2];

  [*(a1 + 32) removeAllAnimations];
  v4 = [*(a1 + 40) layer];
  [v4 removeAllAnimations];

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)performCoinFlipAnimationForAnimatingAvatarView:(id)a3 toAvatarImage:(id)a4 completionHandler:(id)a5
{
  v61[4] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v49 = a5;
  v9 = a3;
  v10 = [v9 sourceAvatarLayer];
  v11 = [v9 destinationAvatarImageView];

  [v11 setImage:v8];
  v12 = [objc_opt_class() log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v48 = [v11 layer];
    LODWORD(buf.m11) = 134349312;
    *(&buf.m11 + 4) = v8;
    WORD2(buf.m12) = 2050;
    *(&buf.m12 + 6) = v48;
    _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "Setting contents (%{public}p) for coin flip animation on destination avatar layer: %{public}p", &buf, 0x16u);
  }

  v51 = v8;

  v13 = [v10 mask];

  if (!v13)
  {
    v14 = [MEMORY[0x1E69794A0] layer];
    v15 = MEMORY[0x1E69DC728];
    [v11 bounds];
    v17 = v16;
    [v11 bounds];
    v18 = [v15 bezierPathWithOvalInRect:{0.0, 0.0, v17}];
    [v14 setPath:{objc_msgSend(v18, "CGPath")}];

    [v10 setMask:v14];
    v19 = [objc_opt_class() log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.m11) = 134349312;
      *(&buf.m11 + 4) = v14;
      WORD2(buf.m12) = 2050;
      *(&buf.m12 + 6) = v10;
      _os_log_debug_impl(&dword_199A75000, v19, OS_LOG_TYPE_DEBUG, "Setting source avatar layer mask (%{public}p) for coin flip animation on layer: %{public}p", &buf, 0x16u);
    }
  }

  [v10 setDoubleSided:{0, v49}];
  v20 = [v11 layer];
  [v20 setDoubleSided:0];

  [(CNSharedProfileAnimationGenerator *)self applyBlurFilterToLayer:v10 inputRadius:0.0];
  v21 = [v11 layer];
  [(CNSharedProfileAnimationGenerator *)self applyBlurFilterToLayer:v21 inputRadius:13.0];

  v22 = objc_alloc_init(MEMORY[0x1E6979308]);
  v23 = [(CNSharedProfileAnimationGenerator *)self coinFlipSpringAnimationWithKeyPath:@"transform.rotation.y" fromValue:0.0 toValue:3.14159265];
  v61[0] = v23;
  v24 = [(CNSharedProfileAnimationGenerator *)self coinFlipSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputHardEdges" fromValue:0.0 toValue:1.0];
  v61[1] = v24;
  v25 = [(CNSharedProfileAnimationGenerator *)self coinFlipSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputNormalizeEdges" fromValue:0.0 toValue:1.0];
  v61[2] = v25;
  v26 = [(CNSharedProfileAnimationGenerator *)self coinFlipSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:0.0 toValue:13.0];
  v61[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
  [v22 setAnimations:v27];

  [v22 setBeginTime:CACurrentMediaTime()];
  v28 = [v22 animations];
  v29 = [v28 firstObject];
  [v29 duration];
  [v22 setDuration:?];

  v30 = *MEMORY[0x1E69797E8];
  [v22 setFillMode:*MEMORY[0x1E69797E8]];
  [v22 setRemovedOnCompletion:0];
  v31 = objc_alloc_init(MEMORY[0x1E6979308]);
  v32 = [(CNSharedProfileAnimationGenerator *)self coinFlipSpringAnimationWithKeyPath:@"transform.rotation.y" fromValue:3.14159265 toValue:0.0];
  v60 = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  [v31 setAnimations:v33];

  [v31 setBeginTime:CACurrentMediaTime()];
  v34 = [v31 animations];
  v35 = [v34 firstObject];
  [v35 duration];
  [v31 setDuration:?];

  [v31 setFillMode:v30];
  [v31 setRemovedOnCompletion:0];
  v36 = objc_alloc_init(MEMORY[0x1E6979308]);
  v37 = [(CNSharedProfileAnimationGenerator *)self coinFlipSpringAnimationWithKeyPath:@"filters.gaussianBlur.inputRadius" fromValue:13.0 toValue:0.0];
  v59 = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  [v36 setAnimations:v38];

  [v36 setBeginTime:CACurrentMediaTime() + 0.2];
  v39 = [v36 animations];
  v40 = [v39 firstObject];
  [v40 duration];
  [v36 setDuration:?];

  [v36 setFillMode:v30];
  [v36 setRemovedOnCompletion:0];
  CATransform3DMakeRotation(&v57, 3.14159265, 0.0, 1.0, 0.0);
  buf = v57;
  [v11 setTransform3D:&buf];
  v41 = MEMORY[0x1E6979518];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __116__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_toAvatarImage_completionHandler___block_invoke;
  v52[3] = &unk_1E74E5E08;
  v53 = v10;
  v54 = v51;
  v55 = v11;
  v56 = v50;
  v42 = v50;
  v43 = v11;
  v44 = v51;
  v45 = v10;
  [v41 setCompletionBlock:v52];
  [v45 addAnimation:v22 forKey:0];
  v46 = [v43 layer];
  [v46 addAnimation:v31 forKey:0];

  v47 = [v43 layer];
  [v47 addAnimation:v36 forKey:0];
}

uint64_t __116__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_toAvatarImage_completionHandler___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) setContents:{objc_msgSend(*(a1 + 40), "CGImage")}];
  v2 = *(a1 + 48);
  v3 = *(MEMORY[0x1E69792E8] + 80);
  v11[4] = *(MEMORY[0x1E69792E8] + 64);
  v11[5] = v3;
  v4 = *(MEMORY[0x1E69792E8] + 112);
  v11[6] = *(MEMORY[0x1E69792E8] + 96);
  v11[7] = v4;
  v5 = *(MEMORY[0x1E69792E8] + 16);
  v11[0] = *MEMORY[0x1E69792E8];
  v11[1] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 48);
  v11[2] = *(MEMORY[0x1E69792E8] + 32);
  v11[3] = v6;
  [v2 setTransform3D:v11];
  v7 = MEMORY[0x1E695E0F0];
  [*(a1 + 32) setFilters:MEMORY[0x1E695E0F0]];
  v8 = [*(a1 + 48) layer];
  [v8 setFilters:v7];

  [*(a1 + 32) setMask:0];
  [*(a1 + 32) removeAllAnimations];
  v9 = [*(a1 + 48) layer];
  [v9 removeAllAnimations];

  [MEMORY[0x1E6979518] commit];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)performCoinFlipAnimationForAnimatingAvatarView:(id)a3 pendingNickname:(id)a4 contact:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [v10 destinationAvatarImageView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v19 = [v10 destinationAvatarImageView];
  v20 = [v19 traitCollection];
  v21 = [v20 layoutDirection];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __126__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke;
  v25[3] = &unk_1E74E5E30;
  v22 = v21 == 1;
  v25[4] = self;
  v26 = v10;
  v27 = v11;
  v23 = v11;
  v24 = v10;
  [CNSharedProfileAvatarImageGenerator sharedAvatarImageForNickname:v13 contact:v12 size:v22 isRTL:v25 completionHandler:v16, v18];
}

void __126__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __126__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_pendingNickname_contact_completionHandler___block_invoke_2;
  v6[3] = &unk_1E74E5E08;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)performCoinFlipAnimationForAnimatingAvatarView:(id)a3 toContact:(id)a4 rightToLeft:(BOOL)a5 avatarSize:(CGSize)a6 completionHandler:(id)a7
{
  height = a6.height;
  width = a6.width;
  v10 = a5;
  v28[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = v15;
  if (v14)
  {
    v17 = [CNAvatarImageRenderer alloc];
    v18 = +[CNAvatarImageRendererSettings defaultSettings];
    v19 = [(CNAvatarImageRenderer *)v17 initWithSettings:v18];

    v20 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v20 scale];
    v22 = [CNAvatarImageRenderingScope scopeWithPointSize:v10 scale:0 rightToLeft:width style:height, v21];

    v28[0] = v14;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __135__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_toContact_rightToLeft_avatarSize_completionHandler___block_invoke;
    v25[3] = &unk_1E74E5E30;
    v25[4] = self;
    v26 = v13;
    v27 = v16;
    v24 = [(CNAvatarImageRenderer *)v19 renderAvatarsForContacts:v23 scope:v22 imageHandler:v25];
  }

  else if (v15)
  {
    (*(v15 + 2))(v15);
  }
}

void __135__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_toContact_rightToLeft_avatarSize_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __135__CNSharedProfileAnimationGenerator_performCoinFlipAnimationForAnimatingAvatarView_toContact_rightToLeft_avatarSize_completionHandler___block_invoke_2;
  v6[3] = &unk_1E74E5E08;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end