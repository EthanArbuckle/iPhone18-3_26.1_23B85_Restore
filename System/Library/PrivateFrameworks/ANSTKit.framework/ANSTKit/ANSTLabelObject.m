@interface ANSTLabelObject
+ (id)new;
- (ANSTLabelObject)init;
- (ANSTLabelObject)initWithObjectID:(unint64_t)a3 category:(id)a4 boundingBox:(CGRect)a5 confidence:(float)a6;
@end

@implementation ANSTLabelObject

- (ANSTLabelObject)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(a1, a2, a2);
  __break(1u);
  return result;
}

- (ANSTLabelObject)initWithObjectID:(unint64_t)a3 category:(id)a4 boundingBox:(CGRect)a5 confidence:(float)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = ANSTLabelObject;
  v15 = [(ANSTObject *)&v18 initWithObjectID:a3 groupID:0 category:@"Label" boundingBox:(a6 * 1000.0) confidence:x distance:y, width, height, 0.0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, a4);
  }

  return v16;
}

@end