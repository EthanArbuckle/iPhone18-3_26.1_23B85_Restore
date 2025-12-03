@interface _TUIFeedCaptureSection
- (_TUIFeedCaptureSection)initWithEntry:(id)entry bindings:(id)bindings template:(id)template;
- (id)dictionaryRepresentation;
- (void)captureDynamicState:(id)state forKind:(id)kind instance:(id)instance parameters:(id)parameters;
- (void)captureImageResource:(id)resource forKind:(id)kind naturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options;
- (void)captureIntrinsicImageResource:(id)resource forKind:(id)kind instance:(id)instance options:(id)options;
@end

@implementation _TUIFeedCaptureSection

- (_TUIFeedCaptureSection)initWithEntry:(id)entry bindings:(id)bindings template:(id)template
{
  entryCopy = entry;
  bindingsCopy = bindings;
  templateCopy = template;
  v19.receiver = self;
  v19.super_class = _TUIFeedCaptureSection;
  v12 = [(_TUIFeedCaptureSection *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entry, entry);
    objc_storeStrong(&v13->_bindings, bindings);
    objc_storeStrong(&v13->_aTemplate, template);
    v14 = objc_opt_new();
    dynamicStates = v13->_dynamicStates;
    v13->_dynamicStates = v14;

    v16 = objc_opt_new();
    imageResources = v13->_imageResources;
    v13->_imageResources = v16;
  }

  return v13;
}

- (void)captureDynamicState:(id)state forKind:(id)kind instance:(id)instance parameters:(id)parameters
{
  parametersCopy = parameters;
  instanceCopy = instance;
  kindCopy = kind;
  stateCopy = state;
  v14 = [[_TUIFeedCaptureDynamicState alloc] initWithValue:stateCopy kind:kindCopy instance:instanceCopy parameters:parametersCopy];

  [(NSMutableArray *)self->_dynamicStates addObject:v14];
}

- (void)captureImageResource:(id)resource forKind:(id)kind naturalSize:(CGSize)size contentsScale:(double)scale instance:(id)instance options:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  instanceCopy = instance;
  kindCopy = kind;
  resourceCopy = resource;
  scale = [[_TUIFeedCaptureImageResource alloc] initWithResource:resourceCopy kind:kindCopy naturalSize:instanceCopy contentsScale:optionsCopy instance:width options:height, scale];

  [(NSMutableArray *)self->_imageResources addObject:scale];
}

- (void)captureIntrinsicImageResource:(id)resource forKind:(id)kind instance:(id)instance options:(id)options
{
  optionsCopy = options;
  instanceCopy = instance;
  kindCopy = kind;
  resourceCopy = resource;
  v14 = [[_TUIFeedCaptureImageResource alloc] initWithResource:resourceCopy kind:kindCopy instance:instanceCopy options:optionsCopy];

  [(NSMutableArray *)self->_imageResources addObject:v14];
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  data = [(TUIBindings *)self->_bindings data];
  v6 = sub_75584(data, v4, 0);
  [v3 setObject:v6 forKeyedSubscript:@"bindings"];

  if ([v4 count])
  {
    allObjects = [v4 allObjects];
    v8 = [allObjects sortedArrayUsingSelector:"compare:"];
    [v3 setObject:v8 forKeyedSubscript:@"bindingsDynamicKeyPaths"];
  }

  package = [(TUITemplate *)self->_aTemplate package];
  v10 = [package url];
  uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
  v11URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

  package2 = [(TUITemplate *)self->_aTemplate package];
  v14 = [package2 url];

  v15 = [(TUITemplate *)self->_aTemplate url];
  v16 = sub_756A4(v14, v11URLByDeletingLastPathComponent);
  [v3 setObject:v16 forKeyedSubscript:@"package"];

  v17 = sub_756A4(v15, v11URLByDeletingLastPathComponent);
  [v3 setObject:v17 forKeyedSubscript:@"template"];

  stackNames = [(TUIFeedEntry *)self->_entry stackNames];
  allObjects2 = [stackNames allObjects];
  [v3 setObject:allObjects2 forKeyedSubscript:@"stackNames"];

  return v3;
}

@end