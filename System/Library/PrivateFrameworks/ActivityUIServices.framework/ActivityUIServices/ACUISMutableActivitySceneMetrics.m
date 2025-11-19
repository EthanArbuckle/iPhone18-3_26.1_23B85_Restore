@interface ACUISMutableActivitySceneMetrics
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ACUISMutableActivitySceneMetrics

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACUISActivitySceneMetrics alloc];
  [(ACUISMutableActivitySceneMetrics *)self size];
  v6 = v5;
  v8 = v7;
  [(ACUISMutableActivitySceneMetrics *)self cornerRadius];
  v10 = v9;
  v11 = [(ACUISMutableActivitySceneMetrics *)self edgeInsets];
  v12 = [(ACUISActivitySceneMetrics *)v4 initWithSize:v11 cornerRadius:v6 edgeInsets:v8, v10];

  return v12;
}

- (CGSize)size
{
  width = self->size.width;
  height = self->size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end