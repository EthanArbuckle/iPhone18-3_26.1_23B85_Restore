@interface MKExploreGuidesReusableView
+ (id)reuseIdentifier;
- (void)_configureWithExploreGuides:(id)a3 exploreGuidesResponse:(id)a4 tapHandler:(id)a5;
@end

@implementation MKExploreGuidesReusableView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_configureWithExploreGuides:(id)a3 exploreGuidesResponse:(id)a4 tapHandler:(id)a5
{
  v45[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MKExploreGuidesReusableView *)self exploreGuidesView];

  if (v11)
  {
    v12 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    v13 = [v12 exploreGuide];
    v14 = [v13 isEqual:v8];

    if ((v14 & 1) == 0)
    {
      v15 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
      [v15 updateExploreGuide:v8];
    }
  }

  else
  {
    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(MKExploreGuidesReusableView *)self setBackgroundColor:v16];

    v17 = [MKExploreGuidesView alloc];
    v43 = v9;
    v44 = v8;
    v42 = v10;
    if (v9)
    {
      v18 = [(MKExploreGuidesView *)v17 initWithExploreGuidesResponse:v9];
    }

    else
    {
      v18 = [(MKExploreGuidesView *)v17 initWithExploreGuides:v8 tapHandler:v10];
    }

    v19 = v18;
    [(MKExploreGuidesReusableView *)self setExploreGuidesView:v18];

    v20 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    [(MKExploreGuidesReusableView *)self addSubview:v21];

    v33 = MEMORY[0x1E696ACD8];
    v41 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    v40 = [v41 leadingAnchor];
    v39 = [(MKExploreGuidesReusableView *)self leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v45[0] = v38;
    v37 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    v36 = [v37 topAnchor];
    v35 = [(MKExploreGuidesReusableView *)self topAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v45[1] = v34;
    v32 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    v22 = [v32 bottomAnchor];
    v23 = [(MKExploreGuidesReusableView *)self bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v45[2] = v24;
    v25 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    v26 = [v25 trailingAnchor];
    v27 = [(MKExploreGuidesReusableView *)self trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v45[3] = v28;
    v29 = [(MKExploreGuidesReusableView *)self heightAnchor];
    +[MKExploreGuidesView defaultHeight];
    v30 = [v29 constraintGreaterThanOrEqualToConstant:?];
    v45[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
    [v33 activateConstraints:v31];

    v9 = v43;
    v8 = v44;
    v10 = v42;
  }
}

@end