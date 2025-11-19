@interface UIView(AmbientUI)
- (void)amui_applyRedModeFilterAnimated:()AmbientUI withCoordinatedAnimationBlock:completion:;
- (void)amui_clearRedModeFilterAnimated:()AmbientUI withCoordinatedAnimationBlock:completion:;
@end

@implementation UIView(AmbientUI)

- (void)amui_applyRedModeFilterAnimated:()AmbientUI withCoordinatedAnimationBlock:completion:
{
  v28 = a4;
  v7 = a5;
  v26 = a1;
  v8 = [a1 layer];
  v9 = [v8 valueForKeyPath:@"filters.colorMatrix"];
  v10 = MEMORY[0x277CDA440];
  if (v9 && ([MEMORY[0x277CBEB68] null], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqual:", v9), v11, !v12))
  {
    v15 = v10;
    v13 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
    [v13 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA4E0]];
    memset(v33, 0, 60);
    *&v33[60] = xmmword_23F3E8450;
    v34 = 0;
    v14 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v33];
    v15 = v10;
    [v13 setValue:v14 forKey:*v10];
  }

  v16 = [v8 valueForKeyPath:@"filters.vibrantColorMatrix"];
  if (v16 && ([MEMORY[0x277CBEB68] null], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqual:", v16), v17, !v18))
  {
    v19 = 0;
  }

  else
  {
    v19 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA640]];
    *v33 = 0uLL;
    *&v33[16] = 1065353216;
    memset(&v33[20], 0, 56);
    v34 = 1065353216;
    v20 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v33];
    [v19 setValue:v20 forKey:*v15];
  }

  v21 = v7;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = v22;
  if (v13)
  {
    [v22 addObject:v13];
  }

  if (v19)
  {
    [v23 addObject:v19];
  }

  if ([v23 count])
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __94__UIView_AmbientUI__amui_applyRedModeFilterAnimated_withCoordinatedAnimationBlock_completion___block_invoke;
    v29[3] = &unk_278C7A4E0;
    v30 = v8;
    v31 = v23;
    v32 = v28;
    v24 = MEMORY[0x245CAD9D0](v29);
    v25 = v24;
    if (a3)
    {
      [MEMORY[0x277D75D18] transitionWithView:v26 duration:5242882 options:v24 animations:v21 completion:1.2];
    }

    else
    {
      (*(v24 + 16))(v24);
      if (v21)
      {
        v21[2](v21, 1);
      }
    }
  }
}

- (void)amui_clearRedModeFilterAnimated:()AmbientUI withCoordinatedAnimationBlock:completion:
{
  v8 = a4;
  v9 = a5;
  v10 = [a1 layer];
  v11 = [v10 valueForKeyPath:@"filters.colorMatrix"];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB68] null];
    v13 = [v12 isEqual:v11] ^ 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v10 valueForKeyPath:@"filters.vibrantColorMatrix"];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEB68] null];
    v16 = [v15 isEqual:v14] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__UIView_AmbientUI__amui_clearRedModeFilterAnimated_withCoordinatedAnimationBlock_completion___block_invoke;
  v23[3] = &unk_278C7A508;
  v28 = v13;
  v17 = v10;
  v24 = v17;
  v18 = v11;
  v25 = v18;
  v29 = v16;
  v19 = v14;
  v26 = v19;
  v20 = v8;
  v27 = v20;
  v21 = MEMORY[0x245CAD9D0](v23);
  v22 = v21;
  if (a3)
  {
    [MEMORY[0x277D75D18] transitionWithView:a1 duration:5242882 options:v21 animations:v9 completion:1.2];
  }

  else
  {
    (*(v21 + 16))(v21);
    if (v9)
    {
      v9[2](v9, 1);
    }
  }
}

@end