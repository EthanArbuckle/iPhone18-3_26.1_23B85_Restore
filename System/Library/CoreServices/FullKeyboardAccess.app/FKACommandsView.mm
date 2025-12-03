@interface FKACommandsView
- (FKACommandsView)initWithCommandLists:(id)lists;
@end

@implementation FKACommandsView

- (FKACommandsView)initWithCommandLists:(id)lists
{
  listsCopy = lists;
  v28.receiver = self;
  v28.super_class = FKACommandsView;
  v6 = [(FKACommandsView *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commandLists, lists);
    v8 = +[NSMutableArray array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = listsCopy;
    v9 = listsCopy;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = [FKACommandListView alloc];
          platterBlurEffect = [(FKACommandsView *)v7 platterBlurEffect];
          v17 = [(FKACommandListView *)v15 initWithCommandList:v14 blurEffect:platterBlurEffect];

          [v8 addObject:v17];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v18 = [[UIStackView alloc] initWithArrangedSubviews:v8];
    [v18 setAxis:1];
    [v18 setSpacing:0.0];
    [v18 setDistribution:3];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(FKACommandsView *)v7 contentView];
    [contentView addSubview:v18];

    contentView2 = [(FKACommandsView *)v7 contentView];
    v21 = [NSLayoutConstraint ax_constraintsToMakeView:v18 sameDimensionsAsView:contentView2];
    [NSLayoutConstraint activateConstraints:v21];

    listsCopy = v23;
  }

  return v7;
}

@end