@interface PHAmbientButtonPart
+ (id)partWithView:(id)view type:(int64_t)type;
- (PHAmbientButtonPart)initWithView:(id)view type:(int64_t)type;
@end

@implementation PHAmbientButtonPart

- (PHAmbientButtonPart)initWithView:(id)view type:(int64_t)type
{
  objc_storeStrong(&self->_view, view);
  self->_type = type;
  return self;
}

+ (id)partWithView:(id)view type:(int64_t)type
{
  viewCopy = view;
  v6 = [[PHAmbientButtonPart alloc] initWithView:viewCopy type:type];

  return v6;
}

@end