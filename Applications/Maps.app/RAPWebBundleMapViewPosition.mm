@interface RAPWebBundleMapViewPosition
- (RAPWebBundleMapViewPosition)initWithDictionary:(id)dictionary;
@end

@implementation RAPWebBundleMapViewPosition

- (RAPWebBundleMapViewPosition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = RAPWebBundleMapViewPosition;
  v5 = [(RAPWebBundleMapViewPosition *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    mapId = v5->_mapId;
    v5->_mapId = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"height"];
    [v8 floatValue];
    v5->_height = v9;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"opacity"];
    [v10 floatValue];
    v5->_opacity = v11;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"y"];
    [v12 floatValue];
    v5->_yPosition = v13;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"x"];
    [v14 floatValue];
    v5->_xPosition = v15;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"widthPadding"];
    [v16 floatValue];
    v5->_widthPadding = v17;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"widthPercent"];
    [v18 floatValue];
    v5->_widthPercent = v19;
  }

  return v5;
}

@end