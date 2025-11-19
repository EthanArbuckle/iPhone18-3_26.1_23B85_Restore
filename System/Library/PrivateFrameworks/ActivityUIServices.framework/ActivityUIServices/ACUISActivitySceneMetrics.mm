@interface ACUISActivitySceneMetrics
- (ACUISActivitySceneMetrics)initWithSceneMetrics:(id)a3;
- (ACUISActivitySceneMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 edgeInsets:(id)a5;
- (CGSize)size;
- (id)_ActivitySceneMetrics;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation ACUISActivitySceneMetrics

- (ACUISActivitySceneMetrics)initWithSize:(CGSize)a3 cornerRadius:(double)a4 edgeInsets:(id)a5
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ACUISActivitySceneMetrics;
  v11 = [(ACUISActivitySceneMetrics *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_size.width = width;
    v11->_size.height = height;
    v11->_cornerRadius = a4;
    objc_storeStrong(&v11->_edgeInsets, a5);
  }

  return v12;
}

- (ACUISActivitySceneMetrics)initWithSceneMetrics:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ACUISActivitySceneMetrics;
  v5 = [(ACUISActivitySceneMetrics *)&v14 init];
  if (v5)
  {
    [v4 size];
    v5->_size.width = v6;
    v5->_size.height = v7;
    [v4 cornerRadius];
    v5->_cornerRadius = v8;
    v9 = [ACUISEdgeInsets alloc];
    v10 = [v4 edgeInsets];
    v11 = [(ACUISEdgeInsets *)v9 _initWithEdgeInsets:v10];
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
  v10 = [(ACUISActivitySceneMetrics *)self edgeInsets];
  v11 = [v10 _edgeInsets];
  v12 = [(ActivitySceneMetrics *)v3 initWithSize:v11 cornerRadius:v5 edgeInsets:v7, v9];

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [ACUISMutableActivitySceneMetrics alloc];
  [(ACUISActivitySceneMetrics *)self size];
  v6 = v5;
  v8 = v7;
  [(ACUISActivitySceneMetrics *)self cornerRadius];
  v10 = v9;
  v11 = [(ACUISActivitySceneMetrics *)self edgeInsets];
  v12 = [(ACUISActivitySceneMetrics *)v4 initWithSize:v11 cornerRadius:v6 edgeInsets:v8, v10];

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