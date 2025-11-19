@interface _TUIGuideInstance
- (NSString)description;
- (_TUIGuideInstance)initWithSpec:(id)a3;
@end

@implementation _TUIGuideInstance

- (_TUIGuideInstance)initWithSpec:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUIGuideInstance;
  v6 = [(_TUIGuideInstance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spec, a3);
    v7->_offset = NAN;
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p spec=%@ offset=%f>", v4, self, self->_spec, *&self->_offset];

  return v5;
}

@end