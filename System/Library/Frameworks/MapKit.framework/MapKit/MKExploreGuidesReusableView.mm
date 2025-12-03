@interface MKExploreGuidesReusableView
+ (id)reuseIdentifier;
- (void)_configureWithExploreGuides:(id)guides exploreGuidesResponse:(id)response tapHandler:(id)handler;
@end

@implementation MKExploreGuidesReusableView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_configureWithExploreGuides:(id)guides exploreGuidesResponse:(id)response tapHandler:(id)handler
{
  v45[5] = *MEMORY[0x1E69E9840];
  guidesCopy = guides;
  responseCopy = response;
  handlerCopy = handler;
  exploreGuidesView = [(MKExploreGuidesReusableView *)self exploreGuidesView];

  if (exploreGuidesView)
  {
    exploreGuidesView2 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    exploreGuide = [exploreGuidesView2 exploreGuide];
    v14 = [exploreGuide isEqual:guidesCopy];

    if ((v14 & 1) == 0)
    {
      exploreGuidesView3 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
      [exploreGuidesView3 updateExploreGuide:guidesCopy];
    }
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MKExploreGuidesReusableView *)self setBackgroundColor:clearColor];

    v17 = [MKExploreGuidesView alloc];
    v43 = responseCopy;
    v44 = guidesCopy;
    v42 = handlerCopy;
    if (responseCopy)
    {
      v18 = [(MKExploreGuidesView *)v17 initWithExploreGuidesResponse:responseCopy];
    }

    else
    {
      v18 = [(MKExploreGuidesView *)v17 initWithExploreGuides:guidesCopy tapHandler:handlerCopy];
    }

    v19 = v18;
    [(MKExploreGuidesReusableView *)self setExploreGuidesView:v18];

    exploreGuidesView4 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    [exploreGuidesView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    exploreGuidesView5 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    [(MKExploreGuidesReusableView *)self addSubview:exploreGuidesView5];

    v33 = MEMORY[0x1E696ACD8];
    exploreGuidesView6 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    leadingAnchor = [exploreGuidesView6 leadingAnchor];
    leadingAnchor2 = [(MKExploreGuidesReusableView *)self leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[0] = v38;
    exploreGuidesView7 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    topAnchor = [exploreGuidesView7 topAnchor];
    topAnchor2 = [(MKExploreGuidesReusableView *)self topAnchor];
    v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[1] = v34;
    exploreGuidesView8 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    bottomAnchor = [exploreGuidesView8 bottomAnchor];
    bottomAnchor2 = [(MKExploreGuidesReusableView *)self bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[2] = v24;
    exploreGuidesView9 = [(MKExploreGuidesReusableView *)self exploreGuidesView];
    trailingAnchor = [exploreGuidesView9 trailingAnchor];
    trailingAnchor2 = [(MKExploreGuidesReusableView *)self trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[3] = v28;
    heightAnchor = [(MKExploreGuidesReusableView *)self heightAnchor];
    +[MKExploreGuidesView defaultHeight];
    v30 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
    v45[4] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:5];
    [v33 activateConstraints:v31];

    responseCopy = v43;
    guidesCopy = v44;
    handlerCopy = v42;
  }
}

@end