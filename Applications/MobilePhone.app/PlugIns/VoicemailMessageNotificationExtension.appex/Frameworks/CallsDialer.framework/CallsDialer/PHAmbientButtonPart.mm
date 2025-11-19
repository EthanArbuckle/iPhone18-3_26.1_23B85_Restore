@interface PHAmbientButtonPart
+ (id)partWithView:(id)a3 type:(int64_t)a4;
- (PHAmbientButtonPart)initWithView:(id)a3 type:(int64_t)a4;
@end

@implementation PHAmbientButtonPart

- (PHAmbientButtonPart)initWithView:(id)a3 type:(int64_t)a4
{
  objc_storeStrong(&self->_view, a3);
  self->_type = a4;
  return self;
}

+ (id)partWithView:(id)a3 type:(int64_t)a4
{
  v5 = a3;
  v6 = [[PHAmbientButtonPart alloc] initWithView:v5 type:a4];

  return v6;
}

@end