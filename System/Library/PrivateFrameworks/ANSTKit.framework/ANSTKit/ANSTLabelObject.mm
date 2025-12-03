@interface ANSTLabelObject
+ (id)new;
- (ANSTLabelObject)init;
- (ANSTLabelObject)initWithObjectID:(unint64_t)d category:(id)category boundingBox:(CGRect)box confidence:(float)confidence;
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
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (ANSTLabelObject)initWithObjectID:(unint64_t)d category:(id)category boundingBox:(CGRect)box confidence:(float)confidence
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  categoryCopy = category;
  v18.receiver = self;
  v18.super_class = ANSTLabelObject;
  v15 = [(ANSTObject *)&v18 initWithObjectID:d groupID:0 category:@"Label" boundingBox:(confidence * 1000.0) confidence:x distance:y, width, height, 0.0];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_label, category);
  }

  return v16;
}

@end