@interface RAPWebBundleMapViewPosition
- (RAPWebBundleMapViewPosition)initWithDictionary:(id)a3;
@end

@implementation RAPWebBundleMapViewPosition

- (RAPWebBundleMapViewPosition)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RAPWebBundleMapViewPosition;
  v5 = [(RAPWebBundleMapViewPosition *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"id"];
    mapId = v5->_mapId;
    v5->_mapId = v6;

    v8 = [v4 objectForKeyedSubscript:@"height"];
    [v8 floatValue];
    v5->_height = v9;

    v10 = [v4 objectForKeyedSubscript:@"opacity"];
    [v10 floatValue];
    v5->_opacity = v11;

    v12 = [v4 objectForKeyedSubscript:@"y"];
    [v12 floatValue];
    v5->_yPosition = v13;

    v14 = [v4 objectForKeyedSubscript:@"x"];
    [v14 floatValue];
    v5->_xPosition = v15;

    v16 = [v4 objectForKeyedSubscript:@"widthPadding"];
    [v16 floatValue];
    v5->_widthPadding = v17;

    v18 = [v4 objectForKeyedSubscript:@"widthPercent"];
    [v18 floatValue];
    v5->_widthPercent = v19;
  }

  return v5;
}

@end