@interface _TUIFeedCaptureSection
- (_TUIFeedCaptureSection)initWithEntry:(id)a3 bindings:(id)a4 template:(id)a5;
- (id)dictionaryRepresentation;
- (void)captureDynamicState:(id)a3 forKind:(id)a4 instance:(id)a5 parameters:(id)a6;
- (void)captureImageResource:(id)a3 forKind:(id)a4 naturalSize:(CGSize)a5 contentsScale:(double)a6 instance:(id)a7 options:(id)a8;
- (void)captureIntrinsicImageResource:(id)a3 forKind:(id)a4 instance:(id)a5 options:(id)a6;
@end

@implementation _TUIFeedCaptureSection

- (_TUIFeedCaptureSection)initWithEntry:(id)a3 bindings:(id)a4 template:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _TUIFeedCaptureSection;
  v12 = [(_TUIFeedCaptureSection *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entry, a3);
    objc_storeStrong(&v13->_bindings, a4);
    objc_storeStrong(&v13->_aTemplate, a5);
    v14 = objc_opt_new();
    dynamicStates = v13->_dynamicStates;
    v13->_dynamicStates = v14;

    v16 = objc_opt_new();
    imageResources = v13->_imageResources;
    v13->_imageResources = v16;
  }

  return v13;
}

- (void)captureDynamicState:(id)a3 forKind:(id)a4 instance:(id)a5 parameters:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[_TUIFeedCaptureDynamicState alloc] initWithValue:v13 kind:v12 instance:v11 parameters:v10];

  [(NSMutableArray *)self->_dynamicStates addObject:v14];
}

- (void)captureImageResource:(id)a3 forKind:(id)a4 naturalSize:(CGSize)a5 contentsScale:(double)a6 instance:(id)a7 options:(id)a8
{
  height = a5.height;
  width = a5.width;
  v15 = a8;
  v16 = a7;
  v17 = a4;
  v18 = a3;
  v19 = [[_TUIFeedCaptureImageResource alloc] initWithResource:v18 kind:v17 naturalSize:v16 contentsScale:v15 instance:width options:height, a6];

  [(NSMutableArray *)self->_imageResources addObject:v19];
}

- (void)captureIntrinsicImageResource:(id)a3 forKind:(id)a4 instance:(id)a5 options:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[_TUIFeedCaptureImageResource alloc] initWithResource:v13 kind:v12 instance:v11 options:v10];

  [(NSMutableArray *)self->_imageResources addObject:v14];
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(TUIBindings *)self->_bindings data];
  v6 = sub_75584(v5, v4, 0);
  [v3 setObject:v6 forKeyedSubscript:@"bindings"];

  if ([v4 count])
  {
    v7 = [v4 allObjects];
    v8 = [v7 sortedArrayUsingSelector:"compare:"];
    [v3 setObject:v8 forKeyedSubscript:@"bindingsDynamicKeyPaths"];
  }

  v9 = [(TUITemplate *)self->_aTemplate package];
  v10 = [v9 url];
  v11 = [v10 URLByDeletingLastPathComponent];
  v12 = [v11 URLByDeletingLastPathComponent];

  v13 = [(TUITemplate *)self->_aTemplate package];
  v14 = [v13 url];

  v15 = [(TUITemplate *)self->_aTemplate url];
  v16 = sub_756A4(v14, v12);
  [v3 setObject:v16 forKeyedSubscript:@"package"];

  v17 = sub_756A4(v15, v12);
  [v3 setObject:v17 forKeyedSubscript:@"template"];

  v18 = [(TUIFeedEntry *)self->_entry stackNames];
  v19 = [v18 allObjects];
  [v3 setObject:v19 forKeyedSubscript:@"stackNames"];

  return v3;
}

@end