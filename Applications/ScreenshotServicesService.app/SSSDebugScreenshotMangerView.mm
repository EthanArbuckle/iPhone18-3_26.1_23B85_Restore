@interface SSSDebugScreenshotMangerView
- (CGSize)intrinsicContentSize;
- (SSSDebugScreenshotMangerView)initWithFrame:(CGRect)frame;
- (id)_labelAttributedString;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation SSSDebugScreenshotMangerView

- (SSSDebugScreenshotMangerView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SSSDebugScreenshotMangerView;
  v3 = [(SSSDebugScreenshotMangerView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = +[UIColor darkGrayColor];
  v5 = [v4 colorWithAlphaComponent:0.5];
  [(SSSDebugScreenshotMangerView *)v3 setBackgroundColor:v5];

  v6 = objc_alloc_init(UILabel);
  debugLabel = v3->_debugLabel;
  v3->_debugLabel = v6;

  [(UILabel *)v3->_debugLabel setNumberOfLines:0];
  v8 = v3->_debugLabel;
  [objc_opt_class() _fontSize];
  v9 = [UIFont systemFontOfSize:?];
  [(UILabel *)v8 setFont:v9];

  [(SSSDebugScreenshotMangerView *)v3 addSubview:v3->_debugLabel];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:v3 selector:"setNeedsLayout" name:@"SSSScreenshotManagerTrackingChanged" object:0];

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSSDebugScreenshotMangerView;
  [(SSSDebugScreenshotMangerView *)&v4 dealloc];
}

- (CGSize)intrinsicContentSize
{
  v2 = 250.0;
  v3 = 250.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_labelAttributedString
{
  v2 = objc_alloc_init(NSMutableAttributedString);
  v3 = +[SSSScreenshotManager sharedScreenshotManager];
  environmentDescriptionIdentifiersBeingRemoved = [v3 environmentDescriptionIdentifiersBeingRemoved];

  v4 = +[SSSScreenshotManager sharedScreenshotManager];
  environmentDescriptionIdentifiersBeingSaved = [v4 environmentDescriptionIdentifiersBeingSaved];

  v5 = +[SSSScreenshotManager sharedScreenshotManager];
  environmentDescriptionIdentifiersUIIsInterestedIn = [v5 environmentDescriptionIdentifiersUIIsInterestedIn];

  v6 = +[SSSScreenshotManager sharedScreenshotManager];
  environmentDescriptionIdentifiersInActiveDragSession = [v6 environmentDescriptionIdentifiersInActiveDragSession];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = +[SSSScreenshotManager sharedScreenshotManager];
  environmentDescriptionIdentifiersBeingTracked = [v8 environmentDescriptionIdentifiersBeingTracked];

  obj = environmentDescriptionIdentifiersBeingTracked;
  v10 = [environmentDescriptionIdentifiersBeingTracked countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [[NSMutableAttributedString alloc] initWithString:v14];
        v16 = +[NSMutableDictionary dictionary];
        if ([environmentDescriptionIdentifiersBeingRemoved containsObject:v14])
        {
          v17 = +[UIColor redColor];
          [v16 setValue:v17 forKey:NSForegroundColorAttributeName];
        }

        if ([environmentDescriptionIdentifiersBeingSaved containsObject:v14])
        {
          v18 = +[UIColor greenColor];
          [v16 setValue:v18 forKey:NSUnderlineColorAttributeName];

          [v16 setValue:&off_1000BE5D0 forKey:NSUnderlineStyleAttributeName];
        }

        if ([environmentDescriptionIdentifiersUIIsInterestedIn containsObject:v14])
        {
          v19 = +[UIColor blueColor];
          [v16 setValue:v19 forKey:NSBackgroundColorAttributeName];
        }

        if ([environmentDescriptionIdentifiersInActiveDragSession containsObject:v14])
        {
          [v16 setValue:&off_1000BE5D0 forKey:NSObliquenessAttributeName];
        }

        [v15 addAttributes:v16 range:{0, objc_msgSend(v14, "length")}];
        [v2 appendAttributedString:v15];
        v20 = [[NSAttributedString alloc] initWithString:@"\n"];
        [v2 appendAttributedString:v20];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  return v2;
}

- (void)layoutSubviews
{
  debugLabel = self->_debugLabel;
  [(SSSDebugScreenshotMangerView *)self bounds];
  [(UILabel *)debugLabel setFrame:?];
  v4 = self->_debugLabel;
  _labelAttributedString = [(SSSDebugScreenshotMangerView *)self _labelAttributedString];
  [(UILabel *)v4 setAttributedText:_labelAttributedString];
}

@end