@interface MSStickerDragPreviewContainerView
@end

@implementation MSStickerDragPreviewContainerView

void __68___MSStickerDragPreviewContainerView_meshTransformWithContentScale___block_invoke(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32) + -1.0;
  v5[0] = 0.0 - v1;
  v5[1] = 0.0;
  v6 = xmmword_1CAE1BE80;
  v5[2] = 0.0 - v1;
  v7 = v1 + 1.0;
  v8 = 0;
  v9 = v1 + 1.0;
  v10 = xmmword_1CAE1BE80;
  v11 = 0.0 - v1;
  v12 = 0x3FB999999999999ALL;
  v14 = xmmword_1CAE1BE90;
  v13 = 0.0 - v1;
  v15 = v1 + 1.0;
  v16 = 0x3FB999999999999ALL;
  v17 = v1 + 1.0;
  v18 = xmmword_1CAE1BE90;
  v19 = 0.0 - v1;
  v20 = 0x3FC999999999999ALL;
  v22 = xmmword_1CAE1BEA0;
  v21 = 0.0 - v1;
  v23 = v1 + 1.0;
  v24 = 0x3FC999999999999ALL;
  v25 = v1 + 1.0;
  v26 = xmmword_1CAE1BEA0;
  v27 = 0.0 - v1;
  v28 = 0x3FD3333333333333;
  v29 = 0.0 - v1;
  v30 = 0x3FD3333333333333;
  v31 = 0x405E000000000000;
  v32 = v1 + 1.0;
  v33 = 0x3FD3333333333333;
  v34 = v1 + 1.0;
  v35 = xmmword_1CAE1BEB0;
  v36 = 0.0 - v1;
  v37 = 0x3FD999999999999ALL;
  v38 = 0.0 - v1;
  v39 = 0x3FD999999999999ALL;
  v40 = 0x405E000000000000;
  v41 = v1 + 1.0;
  v42 = 0x3FD999999999999ALL;
  v43 = v1 + 1.0;
  v44 = xmmword_1CAE1BEC0;
  v45 = 0.0 - v1;
  v46 = 0x3FE0000000000000;
  v47 = 0.0 - v1;
  v48 = 0x3FE0000000000000;
  v49 = 0x405E000000000000;
  v50 = v1 + 1.0;
  v51 = 0x3FE0000000000000;
  v52 = v1 + 1.0;
  v53 = xmmword_1CAE1BED0;
  v54 = 0.0 - v1;
  v55 = 0x3FE3333333333333;
  v56 = 0.0 - v1;
  v57 = 0x3FE3333333333333;
  v58 = 0;
  v59 = v1 + 1.0;
  v60 = 0x3FE3333333333333;
  v61 = v1 + 1.0;
  v62 = xmmword_1CAE1BEE0;
  v63 = 0.0 - v1;
  v64 = 0x3FE6666666666666;
  v65 = 0.0 - v1;
  v66 = 0x3FE6666666666666;
  v67 = 0;
  v68 = v1 + 1.0;
  v69 = 0x3FE6666666666666;
  v70 = v1 + 1.0;
  v71 = xmmword_1CAE1BEF0;
  v72 = 0.0 - v1;
  v73 = 0x3FE999999999999ALL;
  v74 = 0.0 - v1;
  v75 = 0x3FE999999999999ALL;
  v76 = 0;
  v77 = v1 + 1.0;
  v78 = 0x3FE999999999999ALL;
  v79 = v1 + 1.0;
  v80 = xmmword_1CAE1BF00;
  v81 = 0.0 - v1;
  v82 = 0x3FECCCCCCCCCCCCDLL;
  v83 = 0.0 - v1;
  v84 = 0x3FECCCCCCCCCCCCDLL;
  v85 = 0;
  v86 = v1 + 1.0;
  v87 = 0x3FECCCCCCCCCCCCDLL;
  v88 = v1 + 1.0;
  v89 = xmmword_1CAE1BF10;
  v90 = 0.0 - v1;
  v91 = 0x3FF0000000000000;
  v92 = 0.0 - v1;
  v93 = 0x3FF0000000000000;
  v94 = 0;
  v95 = v1 + 1.0;
  v96 = 0x3FF0000000000000;
  v97 = v1 + 1.0;
  v98 = xmmword_1CAE1BF20;
  memcpy(__dst, &unk_1CAE1BF58, sizeof(__dst));
  v2 = [MEMORY[0x1E69793D8] meshTransformWithVertexCount:22 vertices:v5 faceCount:10 faces:__dst depthNormalization:*MEMORY[0x1E6979700]];
  v3 = meshTransformWithContentScale____mesh;
  meshTransformWithContentScale____mesh = v2;
}

uint64_t __108___MSStickerDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __108___MSStickerDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  return [*(a1 + 32) setAlpha:0.999];
}

uint64_t __108___MSStickerDragPreviewContainerView_reversePeelAnimationToPoint_forPlacement_shouldShrink_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79___MSStickerDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) center];
  [*(a1 + 32) setOriginalCenter:?];
  [*(a1 + 32) bounds];
  v3 = v2 * 1.1 + v2 * 1.1;
  v4 = objc_opt_class();
  LODWORD(v5) = 1050253722;
  v6 = [v4 springAnimationWithKeyPath:@"position" speed:v5];
  v7 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, v3}];
  [v6 setByValue:v7];

  [v6 setBeginTime:CACurrentMediaTime() + -0.31];
  v8 = objc_opt_class();
  LODWORD(v9) = 1050253722;
  v10 = [v8 springAnimationWithKeyPath:@"position" speed:v9];
  v11 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, -v3}];
  [v10 setByValue:v11];

  [v10 setBeginTime:CACurrentMediaTime() + -0.31];
  v12 = objc_opt_class();
  LODWORD(v13) = 1053609165;
  v14 = [v12 springAnimationWithKeyPath:@"position" speed:v13];
  v15 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 135.0}];
  [v14 setByValue:v15];

  [v14 setBeginTime:CACurrentMediaTime() + -0.12];
  v16 = objc_opt_class();
  LODWORD(v17) = 1061997773;
  v18 = [v16 springAnimationWithKeyPath:@"position" speed:v17];
  v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 130.0}];
  [v18 setByValue:v19];

  [v18 setBeginTime:CACurrentMediaTime() + 0.1];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.310000002];
  v20 = [*(a1 + 32) meshLayer];
  [v20 addAnimation:v6 forKey:@"meshAnimation"];

  v21 = [*(a1 + 32) peelLayer];
  [v21 addAnimation:v10 forKey:@"peelAnimation"];

  v22 = [*(a1 + 32) shineLayer];
  [v22 addAnimation:v14 forKey:@"shineAnimation"];

  v23 = [*(a1 + 32) shadowLayer];
  [v23 addAnimation:v18 forKey:@"shadowAnimation"];

  [MEMORY[0x1E6979518] commit];
  v24 = dispatch_time(0, 910000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79___MSStickerDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke_2;
  block[3] = &unk_1E83A2CC0;
  v26 = *(a1 + 40);
  dispatch_after(v24, MEMORY[0x1E69E96A0], block);
}

uint64_t __79___MSStickerDragPreviewContainerView__animateLiftAlongsideAnimator_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 originalCenter];

  return [v1 reversePeelAnimationToPoint:0 forPlacement:0 shouldShrink:&__block_literal_global_8 completionBlock:?];
}

uint64_t __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __91___MSStickerDragPreviewContainerView__animateLiftCancellationAlongsideAnimator_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __79___MSStickerDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = ms_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1CADE6000, v2, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> _animateDropAlongsideAnimator animator callback.", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  [v4 center];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79___MSStickerDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke_83;
  v6[3] = &unk_1E83A2C20;
  v6[4] = *(a1 + 32);
  return [v4 reversePeelAnimationToPoint:1 forPlacement:0 shouldShrink:v6 completionBlock:?];
}

uint64_t __79___MSStickerDragPreviewContainerView__animateDropAlongsideAnimator_completion___block_invoke_83(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = ms_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1CADE6000, v2, OS_LOG_TYPE_DEFAULT, "<_MSStickerDragPreviewContainerView: %p> _animateDropAlongsideAnimator reversePeelAnimationToPoint callback", &v5, 0xCu);
  }

  return [*(a1 + 32) setDropAnimationIsComplete:1];
}

@end