@interface AVTCategorySegmentedControl
- (AVTCategorySegmentedControl)initWithItems:(id)items;
@end

@implementation AVTCategorySegmentedControl

- (AVTCategorySegmentedControl)initWithItems:(id)items
{
  v27[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVTCategorySegmentedControl;
  v3 = [(AVTCategorySegmentedControl *)&v20 initWithItems:items];
  v4 = v3;
  if (v3)
  {
    [(AVTCategorySegmentedControl *)v3 setSelectedSegmentIndex:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [(AVTCategorySegmentedControl *)v4 setBackgroundImage:v5 forState:0 barMetrics:0];

    v6 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [(AVTCategorySegmentedControl *)v4 setBackgroundImage:v6 forState:1 barMetrics:0];

    v7 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
    [(AVTCategorySegmentedControl *)v4 setDividerImage:v7 forLeftSegmentState:0 rightSegmentState:0 barMetrics:0];

    v25 = *MEMORY[0x1E69DB648];
    v8 = v25;
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
    v27[0] = v9;
    v26 = *MEMORY[0x1E69DB650];
    v10 = v26;
    v11 = +[AVTUIColorRepository attributeTitleTextColor];
    v27[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v25 count:2];
    [(AVTCategorySegmentedControl *)v4 setTitleTextAttributes:v12 forState:0];

    v23[0] = v8;
    v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    v23[1] = v10;
    v24[0] = v13;
    v14 = +[AVTUIColorRepository attributeTitleTextColor];
    v24[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    [(AVTCategorySegmentedControl *)v4 setTitleTextAttributes:v15 forState:4];

    v21[0] = v8;
    v16 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    v21[1] = v10;
    v22[0] = v16;
    v17 = +[AVTUIColorRepository attributeTitleTextColor];
    v22[1] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    [(AVTCategorySegmentedControl *)v4 setTitleTextAttributes:v18 forState:1];
  }

  return v4;
}

@end