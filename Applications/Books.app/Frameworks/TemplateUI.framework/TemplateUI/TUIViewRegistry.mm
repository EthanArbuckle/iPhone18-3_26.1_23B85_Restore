@interface TUIViewRegistry
- (BOOL)useHostedViewFactoryForType:(id)a3;
- (TUIViewRegistry)init;
- (id)hostedViewFactoryForType:(id)a3;
- (id)newSubviewWithReuseIdentifier:(id)a3;
- (void)registerClass:(Class)a3 forSubviewWithReuseIdentifier:(id)a4;
- (void)registerHostedViewFactory:(id)a3 forType:(id)a4;
@end

@implementation TUIViewRegistry

- (TUIViewRegistry)init
{
  v6.receiver = self;
  v6.super_class = TUIViewRegistry;
  v2 = [(TUIViewRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = +[_TtC10TemplateUI26TUIBackgroundExtensionView reuseIdentifier];
    [(TUIViewRegistry *)v2 registerClass:v3 forSubviewWithReuseIdentifier:v4];

    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierBarChartView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierContainerView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierControlView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierEmbeddedCollectionView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierImpressionOverlayView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIIdentifierLayerContainerView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierNowPlayingView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierProgressView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierRatingsView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierSearchBarView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierSegmentedControlView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierSpinnerView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierStyledView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierStatsIndicatorView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierTextFieldView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierTextView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierToggleView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierTrackTimeRemainingView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierVideoView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierHoverVisibleView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierPageControlView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierFocusContainerView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierHostingView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierHostingAnchorView"];
    [(TUIViewRegistry *)v2 registerClass:objc_opt_class() forSubviewWithReuseIdentifier:@"TUIReuseIdentifierOverlayFadeView"];
  }

  return v2;
}

- (void)registerClass:(Class)a3 forSubviewWithReuseIdentifier:(id)a4
{
  v6 = a4;
  v9 = v6;
  if (!self->_subviewClassDict)
  {
    v7 = objc_opt_new();
    subviewClassDict = self->_subviewClassDict;
    self->_subviewClassDict = v7;

    v6 = v9;
  }

  if (v6)
  {
    [(NSMutableDictionary *)self->_subviewClassDict setObject:a3 forKeyedSubscript:v9];
    v6 = v9;
  }
}

- (id)newSubviewWithReuseIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_subviewClassDict objectForKeyedSubscript:v4];

    if (v5)
    {
      v5 = [[v5 alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [v5 setReuseIdentifier:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)registerHostedViewFactory:(id)a3 forType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_hostedViewFactoryDict)
  {
    v8 = objc_opt_new();
    hostedViewFactoryDict = self->_hostedViewFactoryDict;
    self->_hostedViewFactoryDict = v8;
  }

  if (v7)
  {
    [(NSMutableDictionary *)self->_hostedViewFactoryDict setObject:v6 forKeyedSubscript:v7];
    v10 = [(NSMutableDictionary *)self->_hostedViewFactoryDict allKeys];
    v11 = [NSSet setWithArray:v10];
    hostedViewFactoryTypes = self->_hostedViewFactoryTypes;
    self->_hostedViewFactoryTypes = v11;

    v13 = objc_opt_new();
    v14 = self->_hostedViewFactoryDict;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_4F0DC;
    v18[3] = &unk_25F1C0;
    v19 = v13;
    v15 = v13;
    [(NSMutableDictionary *)v14 enumerateKeysAndObjectsUsingBlock:v18];
    v16 = [v15 copy];
    hostedViewFactoryTypesWithGeometryReuseSupport = self->_hostedViewFactoryTypesWithGeometryReuseSupport;
    self->_hostedViewFactoryTypesWithGeometryReuseSupport = v16;
  }
}

- (BOOL)useHostedViewFactoryForType:(id)a3
{
  if (a3)
  {
    return [(NSSet *)self->_hostedViewFactoryTypes containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (id)hostedViewFactoryForType:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_hostedViewFactoryDict objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end