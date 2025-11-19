@interface CRLiOSInsertPageViewControllerTitlesPageControl
- (CRLiOSInsertPageViewControllerTitlesPageControl)initWithTitles:(id)a3;
- (UIButton)selectedButton;
- (UIStackView)p_stackView;
- (id)p_buttonAtIndex:(unint64_t)a3;
- (unint64_t)p_buttonCount;
- (unint64_t)p_indexOfButton:(id)a3;
- (void)p_didTapButton:(id)a3;
- (void)setSelectedTitleIndex:(unint64_t)a3;
@end

@implementation CRLiOSInsertPageViewControllerTitlesPageControl

- (CRLiOSInsertPageViewControllerTitlesPageControl)initWithTitles:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = CRLiOSInsertPageViewControllerTitlesPageControl;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)&v34 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v8)
  {
    v9 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setAxis:0];
    [v9 setLayoutMarginsRelativeArrangement:1];
    v10 = sub_1004A48FC();
    v11 = 0.0;
    if (v10)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 8.0;
    }

    if (v10)
    {
      v11 = 8.0;
    }

    [v9 setLayoutMargins:{8.0, v11, 8.0, v12}];
    [(CRLiOSInsertPageViewControllerTitlesPageControl *)v8 addSubview:v9];
    v13 = [v9 topAnchor];
    v14 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v8 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [v9 leadingAnchor];
    v17 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v8 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [v9 bottomAnchor];
    v20 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v8 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v9 trailingAnchor];
    v23 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)v8 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    objc_storeWeak(&v8->_stackView, v9);
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_1002047F0;
    v31 = &unk_101848CF0;
    v32 = v8;
    v33 = v9;
    v25 = v9;
    [v4 enumerateObjectsUsingBlock:&v28];
    v26 = objc_alloc_init(UILargeContentViewerInteraction);
    [v25 addInteraction:{v26, v28, v29, v30, v31}];
  }

  return v8;
}

- (void)setSelectedTitleIndex:(unint64_t)a3
{
  v5 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self p_buttonCount];
  if (v5 <= a3)
  {
    v8 = v5;
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013337B8();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v14 = v10;
      *buf = 67110658;
      v16 = v9;
      v17 = 2082;
      v18 = "[CRLiOSInsertPageViewControllerTitlesPageControl setSelectedTitleIndex:]";
      v19 = 2082;
      v20 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSInsertPageViewController.m";
      v21 = 1024;
      v22 = 185;
      v23 = 2112;
      v24 = objc_opt_class();
      v25 = 2048;
      v26 = a3;
      v27 = 2048;
      v28 = v8;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d %@: Attempted to set a selected title index of %lu but there are only %lu buttons.", buf, 0x40u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013337CC();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLiOSInsertPageViewControllerTitlesPageControl setSelectedTitleIndex:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSInsertPageViewController.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:185 isFatal:0 description:"%@: Attempted to set a selected title index of %lu but there are only %lu buttons.", objc_opt_class(), a3, v8];
  }

  else
  {
    v6 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self selectedButton];
    [v6 setSelected:0];
    v7 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self p_buttonAtIndex:a3];
    [v7 setSelected:1];
  }

  self->_selectedTitleIndex = a3;
}

- (UIButton)selectedButton
{
  v3 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self selectedTitleIndex];

  return [(CRLiOSInsertPageViewControllerTitlesPageControl *)self p_buttonAtIndex:v3];
}

- (id)p_buttonAtIndex:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self p_stackView];
  v7 = [v6 arrangedSubviews];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = sub_100013F00(v5, v8);

  return v9;
}

- (unint64_t)p_indexOfButton:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self p_stackView];
  v6 = [v5 arrangedSubviews];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

- (unint64_t)p_buttonCount
{
  v2 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self p_stackView];
  v3 = [v2 arrangedSubviews];
  v4 = [v3 count];

  return v4;
}

- (void)p_didTapButton:(id)a3
{
  v4 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self p_indexOfButton:a3];
  v5 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self selectedTitleIndex];
  [(CRLiOSInsertPageViewControllerTitlesPageControl *)self setSelectedTitleIndex:v4];
  if (v5 != v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self allTargets];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * v10);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v12 = [(CRLiOSInsertPageViewControllerTitlesPageControl *)self actionsForTarget:v11 forControlEvent:4096, 0];
          v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v18;
            do
            {
              v16 = 0;
              do
              {
                if (*v18 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [(CRLiOSInsertPageViewControllerTitlesPageControl *)self sendAction:NSSelectorFromString(*(*(&v17 + 1) + 8 * v16)) to:v11 forEvent:0];
                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v14);
          }

          v10 = v10 + 1;
        }

        while (v10 != v8);
        v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }
  }
}

- (UIStackView)p_stackView
{
  WeakRetained = objc_loadWeakRetained(&self->_stackView);

  return WeakRetained;
}

@end