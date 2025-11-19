@interface TUIElementRegistry
- (BOOL)supportFeature:(id)a3;
- (Class)elementClassForName:(id)a3;
- (TUIElementRegistry)init;
- (void)registerFeature:(id)a3;
@end

@implementation TUIElementRegistry

- (TUIElementRegistry)init
{
  kdebug_trace();
  v9.receiver = self;
  v9.super_class = TUIElementRegistry;
  v3 = [(TUIElementRegistry *)&v9 init];
  if (v3)
  {
    v4 = objc_opt_new();
    elements = v3->_elements;
    v3->_elements = v4;

    v6 = objc_opt_new();
    features = v3->_features;
    v3->_features = v6;

    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"template"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"let"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"vbox"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hbox"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"vspacer"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hspacer"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"image"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"image/plain"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"grid"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"ratings"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"segmented-control"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"segmented-control/segment"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"styled-box"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"gradient"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hscroll"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"chart"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"control"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"button"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"button/state"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"button/states"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"button/state/custom"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"bind"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"include"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"define"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"instantiate"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"style"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"condition"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"if"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"switch"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"case"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"progress"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"textfield"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"textarea"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"search-bar"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"dynamic-state"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"vscroll"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"nav-bar-item"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"trigger"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hflow"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"animation"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"animation/from"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"animation/to"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"animation/keyframe"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"animation/set"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"animation-group"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"animation-group/phase"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"view-state"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"now-playing"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"time-remaining"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"expandable"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"yield"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"supported"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"layout-options"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"layout-options/option"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"toggle"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"mica"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"action"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"action/data"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"ax-actions"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"ax-actions/action"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"state"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"states"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"symbol-image"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"symbol-image/plain"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"visual-effect"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"video"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/plain"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/attributed"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"__text_fragment"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/str"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/span"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/b"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/strong"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/i"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/em"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/a"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/drop-cap"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/line-styling"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"text/par-styling"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"configuration"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"configuration/section"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"configuration/data"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"configuration/font"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"widget/section"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"widget/data"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"widget/font"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"menu"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"menu/item"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"globals/use"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"component"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"render"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"component/bind"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"component/dynamic-state"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"component/view-state"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"smart-grid"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"smart-grid/section"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"smart-grid/content"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"smart-grid/adornments"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"smart-grid/section/adornments"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"group"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"column"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"rule"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"shelf"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"struct"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"struct/struct"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"struct/prop"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"aspect-box"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"unrestricted-box"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hover-region"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hover-visible"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"page-control"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"focus-item"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hosted-view"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hosted-anchor"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"nav-bar-item/hosted-anchor"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"hfade"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"link-entity"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"link-entity/action"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"media-backdrop"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"extend-background"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"__globals_use"];
    [(TUIElementRegistry *)v3 registerElementClass:objc_opt_class() withName:@"fill"];
    [(TUIElementRegistry *)v3 registerFeature:@"blend-mode::gaussianBlur"];
    [(TUIElementRegistry *)v3 registerFeature:@"uikit::uipFloatingTabBar"];
    if (_UISolariumEnabled())
    {
      [(TUIElementRegistry *)v3 registerFeature:@"preferRoundedUI"];
    }

    [(TUIElementRegistry *)v3 registerFeature:@"env::viewSizeWithinSafeArea"];
    [(TUIElementRegistry *)v3 registerFeature:@"opacity::continuous"];
    [(TUIElementRegistry *)v3 registerFeature:@"env::statusBarHeight"];
  }

  kdebug_trace();
  return v3;
}

- (Class)elementClassForName:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)registerFeature:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_features addObject:?];
  }
}

- (BOOL)supportFeature:(id)a3
{
  if (a3)
  {
    return [(NSMutableSet *)self->_features containsObject:?];
  }

  else
  {
    return 0;
  }
}

@end