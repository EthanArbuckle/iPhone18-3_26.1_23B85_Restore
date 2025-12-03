@interface ACUISActivitySceneMetrics
- (ACUISActivitySceneMetrics)initWithSceneMetrics:(id)metrics;
- (ACUISActivitySceneMetrics)initWithSize:(CGSize)size cornerRadius:(double)radius edgeInsets:(id)insets;
- (CGSize)size;
- (id)_ActivitySceneMetrics;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation ACUISActivitySceneMetrics

- (ACUISActivitySceneMetrics)initWithSize:(CGSize)size cornerRadius:(double)radius edgeInsets:(id)insets
{
  height = size.height;
  width = size.width;
  insetsCopy = insets;
  v14.receiver = self;
  v14.super_class = ACUISActivitySceneMetrics;
  v11 = [(ACUISActivitySceneMetrics *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_size.width = width;
    v11->_size.height = height;
    v11->_cornerRadius = radius;
    objc_storeStrong(&v11->_edgeInsets, insets);
  }

  return v12;
}

- (ACUISActivitySceneMetrics)initWithSceneMetrics:(id)metrics
{
  metricsCopy = metrics;
  v14.receiver = self;
  v14.super_class = ACUISActivitySceneMetrics;
  v5 = [(ACUISActivitySceneMetrics *)&v14 init];
  if (v5)
  {
    [metricsCopy size];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [metricsCopy cornerRadius];
    v5->_cornerRadius = v8;
    v9 = [ACUISEdgeInsets alloc];
    edgeInsets = [metricsCopy edgeInsets];
    v11 = [(ACUISEdgeInsets *)v9 _initWithEdgeInsets:edgeInsets];
    edgeInsets = v5->_edgeInsets;
    v5->_edgeInsets = v11;
  }

  return v5;
}

- (id)_ActivitySceneMetrics
{
  v3 = [_TtC18ActivityUIServices20ActivitySceneMetrics alloc];
  [(ACUISActivitySceneMetrics *)self size];
  v5 = v4;
  v7 = v6;
  [(ACUISActivitySceneMetrics *)self cornerRadius];
  v9 = v8;
  edgeInsets = [(ACUISActivitySceneMetrics *)self edgeInsets];
  _edgeInsets = [edgeInsets _edgeInsets];
  v12 = [(ActivitySceneMetrics *)v3 initWithSize:_edgeInsets cornerRadius:v5 edgeInsets:v7, v9];

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [ACUISMutableActivitySceneMetrics alloc];
  [(ACUISActivitySceneMetrics *)self size];
  v6 = v5;
  v8 = v7;
  [(ACUISActivitySceneMetrics *)self cornerRadius];
  v10 = v9;
  edgeInsets = [(ACUISActivitySceneMetrics *)self edgeInsets];
  v12 = [(ACUISActivitySceneMetrics *)v4 initWithSize:edgeInsets cornerRadius:v6 edgeInsets:v8, v10];

  return v12;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end