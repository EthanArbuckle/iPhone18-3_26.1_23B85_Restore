@interface _TUIGuideEdge
- (_TUIGuideNode)to;
- (id)description;
@end

@implementation _TUIGuideEdge

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = TUILengthDescription(*&self->_length.value, *&self->_length.max);
  v6 = [NSString stringWithFormat:@"<%@ %p length=%@>", v4, self, v5];

  return v6;
}

- (_TUIGuideNode)to
{
  WeakRetained = objc_loadWeakRetained(&self->_to);

  return WeakRetained;
}

@end